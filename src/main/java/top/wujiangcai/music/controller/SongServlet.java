package top.wujiangcai.music.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import top.wujiangcai.music.entity.Song;
import top.wujiangcai.music.service.MusicService;
import top.wujiangcai.music.service.impl.MusicServiceImpl;
import top.wujiangcai.music.utils.ResponseUtils;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author dfysa
 * @data 20/9/2023 上午11:00
 * @description
 */

@WebServlet("/music/*")
@Slf4j
public class SongServlet extends HttpServlet {
    private final MusicService musicService= new MusicServiceImpl() ;

    public SongServlet() {


        log.info("init");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        用song类型的list数组获得数据库的音乐数据，
//        List<Song> songs= musicService.selectAll();
//        resp.setContentType("text/plain;charset=UTF-8");
//
//        PrintWriter writer = resp.getWriter();
//        writer.print(songs);
//        writer.flush();
//        writer.close();

        String requestURI =req.getRequestURI();
        log.info(requestURI);
        int position =requestURI.lastIndexOf("/");

        // /music/list

        String method =requestURI.substring(position+1);
        log.info(method);
        switch(method){
            case "list" -> {
                selectList(req,resp);
            }

            case "add"->{
                add(req,resp);
            }
        }
    }


    protected void selectList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        ResponseUtils responseUtils;
        List<Song> songs= musicService.selectAll();
        responseUtils=new ResponseUtils().put("list",songs);
        resp.setContentType("application/json;charset=UTF-8");
        resp.getWriter().println(responseUtils.toJsonString());
    }

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log.info("新增歌曲");
    }





    @Override
    public void destroy() {
        log.info("destroy");
    }
}
