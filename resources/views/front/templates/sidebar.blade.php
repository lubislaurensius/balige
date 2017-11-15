<div class="col-md-3">
    <aside class="sidebar">
        <div class="tabs">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a data-toggle="tab" href="#popularPosts"> Pengumuman</a>
                </li>
                <li>
                    <a data-toggle="tab" href="#recentPosts">
                        Agenda Alumni
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="popularPosts" class="tab-pane active">
                    <ul class="post-list">
                        @foreach($pengumuman as $umum)
                        <li>
                            <div class="post-info">
                                <a href="{{url('pengumuman',$umum->id_pengumuman)}}">
                                    {{$umum->judul_pengumuman}}
                                </a>
                                <div class="post-meta">
                                    {{date('d F Y',strtotime($umum->tanggal))}};
                                </div>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                    <a href="{{url('pengumuman')}}" class="btn btn-blue btn-block">
                        Lihat Semua Pengumuman <i class="fa fa-arrow-circle-right"></i>
                    </a>
                </div>
                <div id="recentPosts" class="tab-pane">
                    <ul class="post-list">
                        @foreach($agenda as $ag)
                        <li>
                            <div class="post-info">
                                <a href="{{url('agenda',$ag->id_agenda)}}">
                                    {{$ag->tema_agenda}}
                                </a>
                                <div class="post-meta">
                                    {{$ag->isi}}
                                    <BR>
                                    {{date('d F Y',strtotime($ag->tgl_posting))}};
                                </div>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                    <a href="{{url('agenda')}}" class="btn btn-blue btn-block">
                        Lihat Semua Agenda <i class="fa fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
        </div>
        <hr>
    </aside>
    <aside class="sidebar">
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v2.11&appId=387196591714893';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <div class="fb-comments" data-href="http://localhost:1515/" data-width="18" data-numposts="100"></div>
    </aside>
</div>