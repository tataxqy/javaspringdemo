package com.product.util;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Properties;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;

public class Common {

	
	// 获得主键 保证主键唯一
	public static String getUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}
	
	/**
	 * 判断是否为允许的上传文件类型,true表示允许
	 * 
	 * @param fileName
	 *            文件名
	 * @return
	 */
	public static boolean checkFile(String fileName) {
		// 设置允许上传文件类型
		String suffixList = "txt,xls,xlsx";
		// 获取文件后缀
		String suffix = fileName.substring(fileName.lastIndexOf(".") + 1,
				fileName.length());
		if (suffixList.contains(suffix.trim().toLowerCase())) {
			return true;
		}
		return false;
	}

	/**
	 * 获取系统时间按照指定格式输出
	 * 
	 * @return
	 */
	public static String getSysTime() {
		SimpleDateFormat sDateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String date = sDateFormat.format(new java.util.Date());
		return date;
	}

	/**
	 * 获取访问者IP
	 * 
	 * 在一般情况下使用Request.getRemoteAddr()即可，但是经过nginx等反向代理软件后，这个方法会失效。
	 * 
	 * 本方法先从Header中获取X-Real-IP，如果不存在再从X-Forwarded-For获得第一个IP(用,分割)，
	 * 如果还不存在则调用Request .getRemoteAddr()。
	 * 
	 * @param request
	 * @return
	 */
	public static String getIpAddr(HttpServletRequest request){
		String ip = request.getHeader("X-Real-IP");
		if (!StringUtils.isEmpty(ip) && !"unknown".equalsIgnoreCase(ip)) {
			return ip;
		}
		ip = request.getHeader("X-Forwarded-For");
		if (!StringUtils.isEmpty(ip) && !"unknown".equalsIgnoreCase(ip)) {
			// 多次反向代理后会有多个IP值，第一个为真实IP。
			int index = ip.indexOf(',');
			if (index != -1) {
				return ip.substring(0, index);
			} else {
				return ip;
			}
		} else {
			return request.getRemoteAddr();
		}
	}
	
     
    public String loadProperty() {  
    	
        return "/usr/product/";  //改为linux的目录结构
    }  
}
