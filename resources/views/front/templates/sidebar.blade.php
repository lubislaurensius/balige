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
                                <a href="#">
                                    {{$ag->tema_agenda}}
                                </a>
                                <div class="post-meta">
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
</div>