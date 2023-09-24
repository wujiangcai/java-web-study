package top.wujiangcai.music.mapper;

import top.wujiangcai.music.entity.Song;

import java.util.List;

public interface SongMapper {
    /**
     * 查询所有音乐
     *
     * @return List<Song>
     */

    List<Song> selectAll();


}
