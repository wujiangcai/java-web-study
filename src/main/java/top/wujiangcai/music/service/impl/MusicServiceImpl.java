package top.wujiangcai.music.service.impl;

import top.wujiangcai.music.entity.Song;
import top.wujiangcai.music.mapper.SongMapper;
import top.wujiangcai.music.service.MusicService;
import top.wujiangcai.music.utils.MyBatisUtils;

import java.util.List;

public class MusicServiceImpl implements MusicService {

    @Override
    public List<Song> selectAll() {
        return (List<Song>) MyBatisUtils.executeQuery(sqlSession -> {
            SongMapper mapper =sqlSession.getMapper(SongMapper.class);
            return  mapper.selectAll();
        });
    }
}
