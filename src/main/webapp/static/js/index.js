/*
* @Author: snow
* @Date:   2017-07-31 11:39:09
* @Last Modified by:   Administrator
* @Last Modified time: 2017-08-25 21:04:04
*/

$(function() {
    // 搜索
    $('#hd_img').on('mouseenter',function() {
        $('#hd_search').animate({width:'240px'},400,function() {
            $('#hd_search').css({'padding-right':'42px'});
        });
        $('#hd_search').css({'opacity':'0.7'});
    });
    $('#hd_img').click(function() {
    	window.open("search");    
    });
    $('.hd_right').on('mouseleave',function() {
        if($('#hd_search').val() == '') {
            $('#hd_search').css({'padding-right':'0'});
            $('#hd_search').animate({width:'0px'},400,function() {
                $('#hd_search').css({'opacity':'0'}).blur();
            });
        }
    });
    $('#hd_search').on('focus',function() {
        $(this).css('border','1px solid #2a8dd4');
    }).on('blur',function() {
        $(this).css('border','0');
    });
    $(document).on('click',function() {
        $('#hd_search').css({'padding-right':'0'});
        $('#hd_search').animate({width:'0px'},400,function() {
            $('#hd_search').css({'opacity':'0'}).blur();
        });
    });
    $('.hd_right').on('click',function(event) {
        event.stopPropagation();
    });
	$(".chosen-select").chosen(); 
   //banner
    var sx = 0;
    var speed = 800;
    var timer1 = null;
    var  imglegnth= $('.banner-imgwrap li').length;
    for(var i = 0;i < imglegnth;i++) {
        $('.banner-arrwrap').append("<li></li>");
    }
    $('.banner-arrwrap li').eq(0).addClass('present');
    $('.banner-arrwrap').css('width',imglegnth*35+'px');
    setTimeout(function(){
        $('.banner').css('height',$(".banner-imgwrap img").height()+'px');
        $('.header').css('height',$(".banner-imgwrap img").height()+'px');
    },0)
    $(window).on('resize',function(){
        var ih = $(".banner-imgwrap img").filter(function(){
            return $(this).height()!=0;
        }).height();
        $('.banner').css('height',ih+'px');
        $('.header').css('height',ih+'px');
    })
    // 点击底部小圆点
    $('.banner ol li').click(function(e) {
        $(this).addClass('present').siblings().removeClass()
        var index=$(this).index();
        $('.banner ul li').eq(index).animate({opacity:'1'},500)
        .siblings('li').animate({opacity:'0'},500);
        sx=index;
    });
    //自动播放模块
    timer1=setInterval(autoplay,5000)
    function autoplay(){
        sx++
        if(sx>(imglegnth-1)){sx=0}
        $('.banner ol li').eq(sx).addClass('present').siblings().removeClass();
        $('.banner ul li').eq(sx).animate({opacity:'1'},500)
        .siblings('li').animate({opacity:'0'},500);
    }
    //鼠标移上停止定时器模块
    $('.banner').hover(function(e) {
        clearInterval(timer1)
    },function(e){
        clearInterval(timer1)
        timer1=setInterval(autoplay,2000)
    });
    // 最新数据选项卡切换
    // $('.ygsjd_tab').eq(0).show().siblings('.ygsjd_tab').hide();
    // $('.ygsjd_btn').on('click',function() {
    //     $(this).addClass('btn_active').siblings().removeClass('btn_active');
    //     var that = $(this).index();
    //     $('.ygsjd_tab').eq(that).show().siblings('.ygsjd_tab').hide();
    //  })

    // 点击小视屏
    $('.mark').on('click',function() {
        $('#vt_video').slideDown(600);
        $('#vtr_url').attr("src","static/video/"+videoDetail[$(this).attr("id")].url);
        $('#vtr_title').html(videoDetail[$(this).attr("id")].title);
        $('#vtr_content').html(videoDetail[$(this).attr("id")].content);
        // $('#vt_video').animate({height:"370px"},500);
    })
    // 点击小视屏
    $('.video-item').on('click',function() {
    	$('#vtr_url').attr("src","static/video/"+videoDetail[$(this).attr("id")].url);
    	$('#vtr_title').html(videoDetail[$(this).attr("id")].title);
    	$('#vtr_content').html(videoDetail[$(this).attr("id")].content);
    })
    $('#video_close').on('click',function() {
        $('#vt_video').slideUp(600);
        // $('#vt_video').animate({height:"0px"},500);
    })

    // 导航切换
    $('.nav_box').hover(function() {
        $(this).find('.nav_select').stop().slideDown(300);
        $('.banner-arrwrap').css('z-index','5');
        $('.banner-layer').css('z-index','5');
    },function(){
        $(this).find('.nav_select').stop().slideUp(100);
        $('.banner-arrwrap').css('z-index','800');
        $('.banner-layer').css('z-index','800');
    });

    // 鼠标放上字体变大
    // $('#adv_right').hover(function() {
    //     $(this).animate({fontSize:'25px'},300)
    // })

    // 鼠标经过划出遮罩
    $(".vts_item").hover(function(){
      $(this).find('.mark').stop().slideDown();
    },function(){
      $(this).find('.mark').stop().slideUp();
    });

    // 轮播图上文字
    $('.banner-layer').hover(function() {
        $(this).stop().animate({bottom:'0'},600);
    },function(){
      $(this).stop().animate({bottom:'-178px'},600);
    });

    // 新闻更多上文字
    $('.more').hover(function() {
        $(this).find('img').attr('src','static/images/vt_2017082502.png');
        $(this).find('span').css('color','#003e74');
    },function(){
        $(this).find('img').attr('src','static/images/vt_2017082503.png');
        $(this).find('span').css('color','#999');
    });

     // 字数截取
     $('.xzl').each(function(){
        var box = $(this),
            bsl = box.html().length,
            bwl = box.data('length');
        var nwl = bwl;
        while(nwl-box.html().substring(0,nwl).replace(/[^0-9,a-z,A-Z]/ig,"").length/2<bwl){
            nwl+=box.html().substring(0,bwl).replace(/[^0-9,a-z,A-Z]/ig,"").length/2;
        }
        if(bsl>nwl){
            box.html(box.html().substring(0,nwl)+'...')
        }
    })

    // 首页图片部分
    $('.link-list').hover(function() {
        $(this).find('.link-toggle').fadeIn();
    },function() {
        $(this).find('.link-toggle').fadeOut();
    })
})