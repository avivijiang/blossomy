<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Font"%>
<%@page import="java.awt.Graphics"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.util.Random"%>
<%@page import="java.awt.Color"%>
<%@ page language="java" contentType="image/JPEG; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//��ȡ�����ɫ
	Color getRandColor(int fc,int bc){
	Random random = new Random();
	if(fc>255) fc=255;
	if(bc>255) bc=255;
	int r = fc + random.nextInt(bc - fc);
	int g = fc + random.nextInt(bc - fc);
	int b = fc + random.nextInt(bc - fc);
	return new Color(r,g,b);
	}
%>
<%
	//����ҳ�治���� 
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");   
    response.setDateHeader("Expires", 0);
    //���ڴ��д���ͼ��
    int width = 60;
    int height = 20;
    BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
    //��ȡͼ��������
    Graphics g = image.getGraphics();
    //�����
    Random random = new Random();
    //�趨����
    g.setColor(getRandColor(200, 250));
    g.fillRect(0, 0, width, height);
    //�趨����
    g.setFont(new Font("Times New Roman",Font.PLAIN,18));
   //�������������
   g.setColor(getRandColor(160, 200));   
   for (int i = 0; i < 100; i++) {   
        int x = random.nextInt(width);   
        int y = random.nextInt(height);   
        int xl = random.nextInt(12);   
        int yl = random.nextInt(12);   
        g.drawLine(x, y, x + xl, y + yl);   
   } 
   //�������4λ��֤��
   String[] codes = {"2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","J","K","L","M","N","P","Q","R","S","T","U","V","W","X","Y","Z"};
   String code = "";
   for(int i=0;i<4;i++){
	   String str = codes[random.nextInt(codes.length)];
	   code += str;
	   // ����֤����ʾ��ͼ����
	   g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));
       //���ú�����������ɫ��ͬ����������Ϊ����̫�ӽ�������ֻ��ֱ������   
	   g.drawString(str, 13 * i + 6, 16);   
   }
	// ����֤�����SESSION   
   session.setAttribute("code", code);
   // ͼ����Ч   
   g.dispose();   
   // ���ͼ��ҳ��   
   ImageIO.write(image, "JPEG", response.getOutputStream());
   //�����������,����ʱ�Ų������java.lang.IllegalStateException: getOutputStream() has already been called ..........���쳣
   response.getOutputStream().flush();  
   response.getOutputStream().close();  
   response.flushBuffer();  
   out.clear();  
   out = pageContext.pushBody(); 
%>