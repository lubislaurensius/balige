@extends('front/templates/index')
@section('content')
<div class='col-md-12'>
    <article>
        <div class='row'>
            <div class="col-md-12">
                <div class="post-image">
                    <div class="flexslider" data-plugin-options='{"directionNav":fakse}'>
                        <ul class="slides">
                            <li>
                                <img src="{{asset('upload/slider/head.jpg')}}" />
                                <label class="title">Lorem Ipsum</label>
                                <p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </li>
                            <li>
                                <img src="{{asset('upload/slider/head2.jpg')}}" />
                                <label class="title">Lorem</label>
                                <p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </li>
                            <li>
                                <img src="{{asset('upload/slider/head3.jpg')}}" />
                                <label class="title">Lorem Ipsum</label>
                                <p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </li>
                            <li>
                                <img src="{{asset('upload/slider/head4.jpg')}}" />
                                <label class="title">Lorem Ipsum</label>
                                <p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="post-content">
                    <h2>
                        Ikatan Alumni SMAN 2 Balige se-Jabodetabek
                      </h2>
                    <p>
                        Kami Menyambut baik terbitnya Website Alumni SMAN 2 Balige. Dengan fasilitas ini alumni dapat mengakses berbagai informasi seputar alumni. 
                    </p>
                </div>
            </div>
        </div>
    </article>
</div>
<hr />
<div class="row">
    <div class="col-md-9">
        <hr>
        @foreach($berita as $news)
        <div class="blog-posts">
            <article>
                <div class="row">
                    <div class="col-md-5">
                        <div class="post-image">
                            <div class="flexslider" data-plugin-options='{"directionNav":true}'>
                                <ul class="slides">
                                    <li>
                                        <img src="{{asset('upload/berita/'.$news->gambar)}}" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="post-content">
                            <h2>
                                <a href="{{url('berita',$news->id_berita)}}">
                                    {{$news->judul_berita}}
                                </a></h2>
                            <p>
                                {!!substr($news->isi,0,230)!!}..
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="post-meta">
                            <span><i class="fa fa-calendar"></i> {{date('d F Y',strtotime($news->tanggal))}}</span>
                            <span><i class="fa fa-user"></i> By
                                <a href="#">
                                    {{$news->author}}
                                </a> </span>
                            <a class="btn btn-xs btn-main-color pull-right" href="{{url('berita',$news->id_berita)}}">
                                Read more...
                            </a>
                        </div>
                    </div>
                </div>
            </article>
        </div>
        @endforeach
        <a href="{{url('berita')}}" class="btn btn-blue btn-block">
            Lihat Semua Berita <i class="fa fa-arrow-circle-right"></i>
        </a>
    </div>
    @stop