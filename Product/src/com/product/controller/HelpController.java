package com.product.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.product.po.Help;
import com.product.po.Product;
import com.product.po.User;
import com.product.service.HelpService;
import com.product.util.Common;
import com.product.util.VerificationCode;
import com.product.vo.DataPage;
import com.product.vo.HelpVo;

@Controller
@RequestMapping("/help")
public class HelpController {
	@Autowired
    private HelpService helpService;
    
	@RequestMapping("/add")
	public String add(Map<String, Object> mav,HttpSession session,@RequestParam("file") MultipartFile file,
			HelpVo helpVo,String checkcode) throws IllegalStateException, IOException{
		User user = (User) session.getAttribute("user");
		if(user==null){
			return "LoginPage";
		}
		String checkcode1 = (String) session.getAttribute("checkcode");
		if(!(checkcode.toLowerCase()).equals(checkcode1)){
			//文件不存在
			mav.put("message", "验证码错误");
			return "msg";
		}
			if(file!=null){
					if(helpVo.getHelp()!=null){
						String installFileName = Common.getUUID();
					    // 截取文件的扩展名(如.jpg)
					    String installFileOriName = file.getOriginalFilename();
					    String installFileExtName = installFileOriName.substring(installFileOriName.lastIndexOf("."));

					    //获取文件保存的路径
						String path = new Common().loadProperty();//linux  要修改
					   
					    File pathDir = new File(path);
						if(!pathDir.exists()){
							pathDir.mkdirs();
						}
						
						
					    // 保存安装文件
						file.transferTo(new File(path + installFileName + installFileExtName));
						helpVo.getHelp().setPath("/"+installFileName + installFileExtName);
						helpVo.getHelp().setUserId(user.getUser_id());
						helpVo.getHelp().setType(0);
						helpService.add(helpVo);
						
						return "index";
					}else{
						//没有输入求助信息
						mav.put("message", "没有输入求助信息");
						return "msg";
						
					}
			
			}else{
				//文件不存在
				mav.put("message", "没有输入图片信息");
				return "msg";
			}
		   
			
			
	}
	
	
	@RequestMapping("/identifyingCode")
	public void authImage(HttpSession session, HttpServletResponse response) {
	    // 禁止图像缓存，一旦缓存就不刷新乐
	    response.setHeader("Prama", "no-cache");
	    response.setHeader("Coche-Control", "no-cache");
	    response.setDateHeader("Expires", 0);
	    response.setContentType("image/jpeg");

	    try {
	        // 将图像输出到Servelt输出流中
	        javax.servlet.ServletOutputStream sos = response.getOutputStream();

	        ByteArrayOutputStream bos = new ByteArrayOutputStream();
	        VerificationCode verificationCode = new VerificationCode();

	        BufferedImage bufferedImage = verificationCode.getVerificationImage(100, 30, 22, session, 4);
	        ImageIO.write(bufferedImage, "jpeg", bos);

	        byte[] buf = bos.toByteArray();
	        response.setContentLength(buf.length);

	        // it can be use like this：bos.writeTo(sos);
	        sos.write(buf);
	        bos.close();
	        sos.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	
	@RequestMapping("/download")
    public String downloadFile(@RequestParam("fileName") String fileName,
            HttpServletRequest request, HttpServletResponse response) {
        if (fileName != null) {
			String realPath = new Common().loadProperty();
			
            File file = new File(realPath, fileName);
            if (file.exists()) {
                response.addHeader("Content-Disposition",
                        "attachment;fileName=" + fileName);// 设置文件名
                response.setHeader("Content-Length", String.valueOf(file.length()));
                byte[] buffer = new byte[1024*512];
                FileInputStream fis = null;
                BufferedInputStream bis = null;
                try {
                    fis = new FileInputStream(file);
                    bis = new BufferedInputStream(fis);
                    OutputStream os = response.getOutputStream();
                    int i = bis.read(buffer);
                    while (i != -1) {
                        os.write(buffer, 0, i);
                        i = bis.read(buffer);
                    }
                } catch (Exception e) {
                    // TODO: handle exception
                    e.printStackTrace();
                } finally {
                    if (bis != null) {
                        try {
                            bis.close();
                        } catch (IOException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                    }
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return null;
    }
	
	@RequestMapping("/findHelp")
	public String findHelp(Map<String, Object> mav,HelpVo helpVo){
	    if(helpVo.getHelp()==null){
	    	helpVo.setHelp(new Help());
	    }
		
		helpVo.getHelp().setType(0);
		DataPage<Help> data = helpService.findPage(helpVo);
		
		mav.put("data", data);
		return "ProductsPage";
	}
	
	
	@RequestMapping("/findHelpMy")
	public String findHelpMy(Map<String, Object> mav,HttpSession session,HelpVo helpVo){
		User user = (User) session.getAttribute("user");
		if(user==null){
			return "LoginPage";
		}
		
		
		
	    if(helpVo.getHelp()==null){
	    	helpVo.setHelp(new Help());
	    }
		
		helpVo.getHelp().setUserId(user.getUser_id());
		DataPage<Help> data = helpService.findPage(helpVo);
		
		mav.put("data", data);
		return "mypage";
	}
	
	
	@RequestMapping("/findHelpOrder")
	public String findHelpOrder(Map<String, Object> mav,HttpSession session,HelpVo helpVo){
		User user = (User) session.getAttribute("user");
		if(user==null){
			return "LoginPage";
		}
		
		
		
	    if(helpVo.getHelp()==null){
	    	helpVo.setHelp(new Help());
	    }
		
		helpVo.getHelp().setUserId(user.getUser_id());
		DataPage<Help> data = helpService.findPageByOrder(helpVo);
		
		mav.put("data", data);
		return "myorder";
	}
	
    
}
