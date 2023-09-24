//package top.wujiangcai.music;
//
//import jakarta.servlet.ServletConfig;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//@WebServlet("/music/*")
//public class MusicServlet extends HttpServlet {
//
//    @Override
//    public void init(ServletConfig config) throws ServletException {
//        System.out.println("init");
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        this.doPost(req, resp);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String username=req.getParameter("username");
//        System.out.println(username);
//        String method =req.getMethod();
//        System.out.println(method);
////        获取虚拟目录
////        String contextPath= req.getContextPath();
////        System.out.println(contextPath);
////        获取servlet路径
//        String servletPath=req.getServletPath();
//        System.out.println(servletPath);
////        获取URI
//        String reqURI= req.getRequestURI();
//        System.out.println(reqURI);
//    }
//
//    @Override
//    public void destroy() {
//
//        System.out.println("destroy");
//    }
//}
