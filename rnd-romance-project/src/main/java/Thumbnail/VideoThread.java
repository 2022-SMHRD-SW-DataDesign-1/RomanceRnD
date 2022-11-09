package Thumbnail;
import java.awt.image.BufferedImage;
import java.io.File;
 
import javax.imageio.ImageIO;
 
import org.jcodec.api.FrameGrab;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.common.model.Picture;
import org.jcodec.scale.AWTUtil;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import org.jcodec.common.io.SeekableByteChannel;
import org.jcodec.common.io.*;
 
public class VideoThread extends Thread {
    private int threadNo;
    private int threadSize;
    private double plusSize;
    private File source;
    
    public VideoThread(File source, int threadSize, int threadNo, double plusSize) {
        this.source = source;
        this.threadSize = threadSize;
        this.threadNo = threadNo;
        this.plusSize = plusSize;
    }
 
    public void run() {
        FrameGrab grab;
        
        try {
            grab = FrameGrab.createFrameGrab(NIOUtils.readableChannel(source));
            
            for(int m = 0; m < 1; m++) {
                if(m % threadSize == threadNo) {
                    double startSec = m * plusSize;
                    System.out.println(threadNo + " " + startSec);
                    
                    int frameCount = 1;
                    grab.seekToSecondPrecise(startSec);
                    
                    for (int i=0; i < frameCount; i++) {
                        Picture picture = grab.getNativeFrame();
                         
                        //for JDK (jcodec-javase)
                        BufferedImage bufferedImage = AWTUtil.toBufferedImage(picture);
                        ImageIO.write(bufferedImage, "png", 
                                new File("C:\\Users\\smhrd\\Desktop\\Web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\rnd-romance-project\\file\\thumbnail"+m+".png"));   
                    }
                }
            }    
        } catch (Exception e1) {
            e1.printStackTrace();
        }            
    }
}
