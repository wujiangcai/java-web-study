let songs =[]
//获取元素对象
const cover = document.getElementById("cover");
const singer =document.getElementById("singer");
const name =document.getElementById("name");
const lyric =document.getElementById("lyric")
const path =document.getElementById("path")


const prevBtn=document.getElementById("prev-btn");
const radBtn =document.getElementById("random-btn")
const nextBtn =document.getElementById("next-btn")
const audio=document.getElementById("path")

//设置起始下标
let  currentItem =0;
//初始化数据
function load(){
    $.ajax({
        url:"/music/list",
        type:"get",
        dataType: "json",
        success: json =>{
            songs =json.data.list;
            console.log(songs);
            //默认显示第一首歌
            const  item =songs[0];
            cover.src ="images/"+item.cover;
            name.textContent = item.name;
            singer.textContent = item.singer;
            lyric.textContent = item.lyric;
            path.src="mp3/"+item.path
        }
        }
    )
}
function showSong(index){
    const item = songs[index];
    cover.src="images/"+ item.cover;
    name.textContent = item.name;
    singer.textContent = item.singer;
    lyric.textContent = item.lyric;
    path.src="mp3/"+item.path;
    cover.classList.remove('rotating');

}
//下一首歌
nextBtn.addEventListener("click",function (){
    currentItem++;
    if (currentItem>songs.length-1){
        currentItem=0;
    }
showSong(currentItem)
});

prevBtn.addEventListener("click",function (){
    currentItem--;
    if (currentItem<0){
        currentItem=songs.length-1;
    }
    showSong(currentItem)
});


// 上一首歌曲
radBtn.addEventListener("click",function (){
    currentItem=Math.floor(Math.random()*songs.length)
    console.log(currentItem)
    showSong(currentItem);
});

// 点击播放时启动旋转
audio.onplay = () => {
    toggleRotate(true);

}

audio.onpause = () => {
    toggleRotate(false);
}

// 歌曲结束停止旋转
audio.onended = () => {
    toggleRotate(false);
}

function toggleRotate(isRotate) {
    if(isRotate) {
        cover.classList.add('rotating');
    } else {
        cover.classList.remove('rotating');
    }
}
