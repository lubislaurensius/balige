@extends('backend/templates/index')
@section('js')
<script src='{{asset('assets/js/controller/admin-angkatan.js')}}'></script>
@stop
@section('content')
<div class="main-content" ng-controller="angkatan">
    <!-- end: SPANEL CONFIGURATION MODAL FORM -->
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-header">
                    <h1>
                        {{$title}} <br />
                        <small>Menambahkan Lulusan di situs website SMAN 2 Balige</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <!-- end: PAGE HEADER -->
        <!-- start: PAGE CONTENT -->
        <div class="row">
            <div class="col-md-12">
                <!-- start: BASIC TABLE PANEL -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                    </div>
                    <div class="panel-body">
                        <alert ng-repeat="alert in alerts" type="<%alert.type%>" close="closeAlert($index)"><%alert.msg%></alert>
                        <a class="btn btn-green add-row" href="{{route('admin.angkatan.create')}}">
                            Tambah Angkatan <i class="fa fa-plus"></i>
                        </a>
                        <div class="pull-right col-sm-5">
                            <input class="form-control col-md-12" ng-model="query"  placeholder="Search">
                        </div>
                        <table id="sample-table-1" class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Tahun Kelulusan</th>
                                    <th class="hidden-xs center">Aksi Data</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="status in data| filter:paginate">
                                    <td><% status['tahun_lulus'] %></td>
                                    <td class="center">
                                        <div class="visible-md visible-lg hidden-sm hidden-xs">
                                            <a data-original-title="Siswa" data-placement="top" class="btn btn-xs btn-success tooltips" href="{{url('admin/angkatan')}}/<% status['id']%>/alumni"><i class="fa fa-user"></i> List Alumni</a>
                                            <a data-original-title="Edit" data-placement="top" class="btn btn-xs btn-teal tooltips" href="{{url('admin/angkatan')}}/<% status['id']%>/edit"><i class="fa fa-edit"></i></a>
                                            <a data-original-title="Remove" data-placement="top" class="btn btn-xs btn-bricky tooltips" href="#" ng-click="delete(status['id'])"><i class="fa fa-times fa fa-white"></i></a>
                                        </div>
                                        <div class="visible-xs visible-sm hidden-md hidden-lg">
                                            <div class="btn-group">
                                                <a href="#" data-toggle="dropdown" class="btn btn-primary dropdown-toggle btn-sm">
                                                    <i class="fa fa-cog"></i> <span class="caret"></span>
                                                </a>
                                                <ul class="dropdown-menu pull-right" role="menu">
                                                    <li role="presentation">
                                                        <a href="{{url('admin/angkatan')}}/<% status['id']%>/alumni" tabindex="-1" role="menuitem">
                                                            <i class="fa fa-user"></i> List Alumni
                                                        </a>
                                                    </li>
                                                    <li role="presentation">
                                                        <a href="{{url('admin/angkatan')}}/<% status['id']%>/alumni" tabindex="-1" role="menuitem">
                                                            <i class="fa fa-edit"></i> Edit
                                                        </a>
                                                    </li>
                                                    <li role="presentation">
                                                        <a href="#" tabindex="-1" role="menuitem" ng-click="delete(status['id'])">
                                                            <i class="fa fa-times"></i> Remove 
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <pagination total-items="totalItems" ng-model="currentPage"
                                    max-size="10" boundary-links="true"
                                    items-per-page="numPerPage" class="pagination-sm">
                        </pagination>
                    </div>
                </div>
            </div>
        </div>
        <!-- end: BASIC TABLE PANEL -->
    </div>
    @stop