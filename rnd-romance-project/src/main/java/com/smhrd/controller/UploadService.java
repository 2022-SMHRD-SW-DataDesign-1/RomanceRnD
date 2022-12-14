package com.smhrd.controller;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.command.Command;
import com.smhrd.model.categoryDAO;
import com.smhrd.model.categoryDTO;
import com.smhrd.model.memberDTO;
import com.smhrd.model.videoDAO;
import com.smhrd.model.videoDTO;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

public class UploadService extends HttpServlet implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("[UploadService]");
		HttpSession session = request.getSession();
		memberDTO info = (memberDTO) session.getAttribute("info");
		
		String savePath = request.getServletContext().getRealPath("file");
		System.out.println(savePath);
		
		int maxSize = 1000 * 1024 * 1024;

		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);
		} catch (IOException e) {
			e.printStackTrace();
		}
		String member_id = info.getMember_id();
		String video_file = multi.getFilesystemName("video_file");
		BigDecimal video_price = new BigDecimal(multi.getParameter("video_price"));
		String video_desc = multi.getParameter("video_desc");
		
		
		
		String video_path = savePath;
		
		video_file = video_file.replaceAll("\\s", "");
		
		try {
			video_file = URLEncoder.encode(video_file , "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		videoDTO dto = new videoDTO(member_id, video_file, video_price, video_desc, video_path);
		
		String[] videoOrImageList = video_file.split("\\.");
		String videoOrImageCheck = (videoOrImageList[(videoOrImageList.length)-1]).toLowerCase();
		
		String lastThumbnail_new_name = "";
		if (videoOrImageCheck.equals("mp4")) {
			// ?????? ??? ????????? ????????? ??????
			videoDTO lastThumbnail = new videoDAO().selectLastThumbnail();
			int videoSeq = ((BigDecimal)lastThumbnail.getVideo_seq()).intValue();
			System.out.println("lastThumbnail: "+lastThumbnail);
			String lastThumbnail_name = lastThumbnail.getVideo_thumbnail().substring(0,9);
			int lastThumbnail_str = Integer.parseInt(lastThumbnail.getVideo_thumbnail().substring(9,lastThumbnail.getVideo_thumbnail().length()));
			
			lastThumbnail_new_name = lastThumbnail_name + (lastThumbnail_str+1);
		}
		
		// ????????? ?????????			

		int row = new videoDAO().upload(dto);
		if (row > 0) {
			System.out.println("????????? ??????!");
			
			String member_cat = multi.getParameter("member_cat");
			System.out.println("member_cat"+member_cat);
			String member_cat_id = member_id;
			System.out.println("member_cat_id:"+ member_cat_id);
			
			categoryDTO catDTO = new categoryDTO(member_cat , member_cat_id);
			int row2 = new categoryDAO().updateCat(catDTO);
				if (row2 > 0) {
					System.out.println("???????????? ???????????? ??????!");
				}else {
					System.out.println("???????????? ???????????? ??????!");
				}
			
		} else {
			System.out.println("????????? ??????!");
		}
		
		if (videoOrImageCheck.equals("mp4")) {
//		????????? ??????
			String result = "";
			try {
				result = Thumbnail.thumbnail.makeThumbnail(video_path, video_file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if (result != null) {
				System.out.println("????????? ?????? ??????!");
			} else {
				System.out.println("????????? ?????? ??????!");
			}
		}
		
		
//		????????? ????????? ??????
		if (videoOrImageCheck.equals("mp4")) {
			int rowThumbnail = new videoDAO().updateThumbnail(lastThumbnail_new_name);
			
			if (rowThumbnail > 0) {
				System.out.println("Thumnail_update ??????!");
			} else {
				System.out.println("Thumnail_update ??????!");
			}
		}
		
		return "myprofile.jsp";
	}

}
