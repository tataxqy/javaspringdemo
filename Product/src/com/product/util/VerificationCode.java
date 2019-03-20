package com.product.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

public class VerificationCode {
	protected Logger log = Logger.getLogger("VerificationCode");
	
	public BufferedImage getVerificationImage(int width, int height, int fontSize, HttpSession session, int verifyCodeSize) {

	    // 生成由数字和字母随机组成的图片
	    BufferedImage buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
	    Graphics2D g = buffImg.createGraphics();

	    Random random = new Random();                        //生成一个随机数
	    g.setColor(Color.WHITE);                            //设置背景颜色
	    g.fillRect(0, 0, width, height);                    //填充一个矩形

	    Font font = new Font("宋体", Font.PLAIN, fontSize);
	    g.setFont(font);                                    //设置字体

	    g.setColor(Color.BLUE);
	    g.drawRect(0, 0, width - 1, height - 1);            //绘制边框

	    g.setColor(Color.BLACK);

	    int red = 0, green = 0, blue = 0;
	    
	    // 随机产生100条干扰线，使图像中的认证码不易被其它程序探测到
	    for (int i = 0; i < 25; i++) {
	        int x = random.nextInt(width);
	        int y = random.nextInt(height);
	        int x1 = random.nextInt(10);
	        int y1 = random.nextInt(10);
	        //随机生成颜色值，使生成的字符验证码颜色各不相同
	        red = random.nextInt(200);
	        green = random.nextInt(200);
	        blue = random.nextInt(20);

	        // 用随机产生的颜色将验证码绘制到图像中
	        g.setColor(new Color(red + 20, green + 20, blue + 200));
	        
	        g.drawLine(x, y, x + x1, y + y1);
	    }

	    StringBuffer randomCode = new StringBuffer();        //用于保存随机产生的验证码
	   

	    // 随机产生四位数的验证码
	    for (int i = 0; i < verifyCodeSize; i++) {
	        //得到单个验证码
	        String strRand = String.valueOf(this.getSignCode(random.nextInt()));
	        log.debug("s--"+strRand);
	        //随机生成颜色值，使生成的字符验证码颜色各不相同
	        red = random.nextInt(200);
	        green = random.nextInt(200);
	        blue = random.nextInt(20);

	        // 用随机产生的颜色将验证码绘制到图像中
	        g.setColor(new Color(red + 20, green + 20, blue + 200));
	        g.drawString(strRand, 15 * i + 20, 22);
	        log.debug("e--"+strRand);
	        // 将产生的四个随机字符组合在一起
	        randomCode.append(strRand);
	    }
	    log.debug(randomCode.toString().toLowerCase());
	    // 将四位数字的验证码保存到Session里面
	    session.setAttribute("checkcode", randomCode.toString().toLowerCase());

	    return buffImg;
	}

	/**
	 * 随机生成单个字符
	 *
	 * @param num 随机生成的一个整数
	 * @return 单个数字或字母
	 */
	public char getSignCode(int num) {
	    Random random = new Random();                    //生成一个随机数
	    int scope = 0;                                    //设定生成字符的范围，48为数字，65是大写字母
	    char code = ' ';                                //随机生成的单个数字或字母

	    if (num % 2 == 0) {                                //传递过来的参数是偶数，就生成一个数字
	        scope = 48;
	        code = (char) (scope + random.nextInt(10));    //从0到9中随机生成一个数字
	    } else {                                            //传递过来的参数是奇数，就生成一个字母
	        scope = 65;
	        code = (char) (scope + random.nextInt(26));    //随机生成一个大写字母
	    }

	    return code;
	}
}
