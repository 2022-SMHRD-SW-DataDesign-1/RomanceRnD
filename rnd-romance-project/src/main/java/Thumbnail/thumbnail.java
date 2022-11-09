package Thumbnail;
import java.io.File;
import org.jcodec.common.io.*;

public class thumbnail {
 
    public static void main(String[] args) throws Exception {
    	
        
    }

	public static String makeThumbnail(String video_path, String video_file) throws Exception {
		System.out.println("thumnail 들어옴!!!"+video_path+video_file);
		Mp4Test mp4Test = new Mp4Test();
		String src = video_path+'\\'+ video_file;
		
		System.out.println("src: "+src);
		
        File source = new File(src);
        long startTime = System.currentTimeMillis();
        mp4Test.getThumbnail(source);
        long endTime = System.currentTimeMillis();
        System.out.println((endTime-startTime) + "(ms)");
        return src;
	}
} 
