package top.wujiangcai.music.service;

import top.wujiangcai.music.entity.Song;

import java.util.List;

public interface MusicService {
    /**
     * 查询所有音乐
     *
     * @return List<Song>
     */

    List<Song> selectAll();

}
