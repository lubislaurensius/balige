@extends('backend/templates/index')
@section('content')
<div class="main-content" ng-controller="foto">
    <!-- end: SPANEL CONFIGURATION MODAL FORM -->
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                {!! Breadcrumbs::render('sekolah'); !!}
                <div class="page-header">
                    <h1>
                        Home<br />
                        <small>Halaman Administrator Alumni SMAN 2 Balige</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <div class="core-box">
                    <div class="heading">
                        <i class="clip-user-4 circle-icon circle-green"></i>
                        <h2>Data Alumni</h2>
                    </div>
                    <div class="content">
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                    </div>
                    <!-- route admin.siswa.index belum terdefinisi, diubah sementara -->
                    <a class="view-more" href="{{route('admin.angkatan.index')}}">
                        View More <i class="clip-arrow-right-2"></i>
                    </a>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="core-box">
                    <div class="heading">
                        <i class="clip-user-4 circle-icon circle-green"></i>
                        <h2>Alumni Inspiratif</h2>
                    </div>
                    <div class="content">
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                    </div>
                    <!-- route admin.siswa.index belum terdefinisi, diubah sementara -->
                    <a class="view-more" href="{{route('admin.inspiratif.index')}}">
                        View More <i class="clip-arrow-right-2"></i>
                    </a>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="core-box">
                    <div class="heading">
                        <i class="clip-clip circle-icon circle-teal"></i>
                        <h2>Administrator</h2>
                    </div>
                    <div class="content">
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                    </div>
                    <a class="view-more" href="{{route('admin.pegawai.index')}}">
                        View More <i class="clip-arrow-right-2"></i>
                    </a>
                </div>
            </div>
            {{-- <div class="col-sm-4">
                <div class="core-box">
                    <div class="heading">
                        <i class="clip-database circle-icon circle-bricky"></i>
                        <h2>Manajemen Alumni</h2>
                    </div>
                    <div class="content">
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                    </div>
                    <a class="view-more" href="#">
                        View More <i class="clip-arrow-right-2"></i>
                    </a>
                </div>
            </div>
        </div> --}}
    </div>
</div>
@stop