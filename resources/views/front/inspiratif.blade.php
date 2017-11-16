@extends('front/templates/index')
@section('bread')
<section class="page-top">
    <div class="container">
        <div class="col-md-4 col-sm-4">
            <h1>{{$title}}</h1>
        </div>
    </div>
</section>
@endsection
@section('content')
<div class="col-md-9">
    <div class="blog-posts post-page">
        <article>
            <div class="post-image">
                <div class="flexslider" data-plugin-options='{"directionNav":true}'>
                    <ul class="slides">
                        <li>
                            <img src="{{asset('upload/inspiratif/'.$inspiratiflist->gambar)}}" />
                        </li>
                    </ul>
                </div>
            </div>
            <div class="post-content">
                <h2>{{$inspiratiflist->nama_alumni}}</h2>
                <span><i class="fa fa-calendar"></i> {{date('d F Y',strtotime($inspiratiflist->tanggal))}} </span>
                <span><i class="fa fa-user"></i> By
                    <a href="#">
                        {{$inspiratiflist->author}}
                    </a> </span>
                <p>
                    {!!$inspiratiflist->isi!!}
                </p>
            </div>
        </article>
    </div>
</div>
@stop