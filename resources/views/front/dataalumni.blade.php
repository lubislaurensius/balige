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
@section('js')
<script src='{{asset('assets/js/angular.min.js')}}'></script>
<script src='{{asset('assets/js/ui-bootstrap-tpls-0.12.0.min.js')}}'></script>
<script src='{{asset('assets/js/angular-block-ui.min.js')}}'></script>
<script src='{{asset('assets/js/siswa.js')}}'></script>
@endsection
@section('js')
<script src='{{asset('assets/js/controller/admin-alumni.js')}}'></script>
@stop
@section('content')
<div class="col-md-9" ng-app="siswa">
    <div ng-controller="kelas">
        <div class='row'>
            <div class="form-group">
                <form class="form-horizontal" role="form" name="agendaForm" ng-submit="submit()" enctype="multipart/form-data">
                    <label class="col-sm-2 control-label" for="form-field-1"> Angkatan </label>
                    <div class="col-sm-5">
                        <select name="id_kelas" class="form-control" ng-model="data.id_kelas">
                            <option value="">Pilih Angkatan</option>
                            <option ng-repeat="unit in kelas" value="<%unit.id%>"><% unit.label %></option>
                        </select>
                    </div>
                    <div class="col-sm-5">
                        <button class="btn btn-blue" type="submit">Submit</button>
                    </div>
                </form>
            </div> 
        </div>
        <div class='row' ng-show='show'>
            <br/>
			<div class="table-responsive">
				<table id="sample-table-1" class="table table-bordered table-hover table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>Nama</th>
							<th>Alamat</th>
							<th>Pekerjaan</th>
							<th>Tempat/Tanggal lahir</th>
							<th><center>Action</center></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="alumni in telo">
							<td><%$index+1%>
							</td>
							<td><%alumni['nama']%>
							</td>
							<td><%alumni['alamat']%>
							</td>
							<td><%alumni['pekerjaan']%>
							</td>
							<td><%alumni['tempat_lahir']%> / <%alumni['tanggal_lahir']%> 
							</td>
							<td><center><button class="btn btn-success btn-xs" ng-click="initView(alumni['id'])">Detail</button></center>
							</td>                        
						</tr>
					</tbody>
				</table>
			</div>
        </div>
		<div class="modal fade" tabindex="-1" role="dialog" id="detail_alumni">
		    <div class="modal-dialog" role="document">
		        <div class="modal-content">
			        <div class="panel panel-info">
			            <div class="panel-heading">
			            	<h3 class="panel-title"><%detail['nama']%></h3>
			            </div>
			            <div class="panel-body">
			            	<div class="row">
			                	<div class="col-md-3 col-lg-3 " align="center"> 
			                		<img alt="User Pic" src="http://www.cdn.innesvienna.net//Content/user-default.png" class="img-circle img-responsive"> 
			                	</div>
			                	<div class=" col-md-9 col-lg-9 "> 
			                  		<table class="table table-user-information">
			                    		<tbody>
			                      			<tr>
			                        			<td>Tempat Lahir:</td>
			                        			<td><%detail['tempat_lahir']%></td>
			                      			</tr>
					                      	<tr>
					                        	<td>Tanggal Lahir:</td>
					                        	<td><%detail['tanggal_lahir']%></td>
					                      	</tr>
					                      	<tr>
					                        	<td>Agama</td>
					                        	<td><%detail['agama']%></td>
					                      	</tr>
				                            <tr>
				                        		<td>Alamat</td>
				                        		<td><%detail['alamat']%></td>
				                      		</tr>
				                        	<tr>
				                        		<td>Pekerjaan</td>
				                        		<td><%detail['pekerjaan']%></td>
				                      		</tr>
					                        <tr>
					                            <tr>
					                        		<td>Status</td>
					                        		<td><%detail['status']%></td>
					                      		</tr>
					                        	<tr>
					                        		<td>Hobby</td>
					                        		<td><%detail['hobby']%></td>
					                      		</tr>
					                      		<tr>
					                        		<td>Instansi</td>
					                        		<td><%detail['instansi']%></td>
					                      		</tr>
					                      		<tr>
					                        		<td>Nama Pasangan</td>
					                        		<td><%detail['nama_pasangan']%></td>
					                      		</tr>
					                        		<td>Jumlah Anak</td>
					                        		<td><%detail['jumlah_anak']%></td>
					                      		</tr>
					                      		<tr>
					                        		<td>Email</td>
					                        		<td><a href="mailto:info@support.com"><%detail['nama']%></a></td>
					                      		</tr>
					                      		<td>Kontak detail_alumni</td>
					                        	<td><%detail['kontak_alumni']%></td>
					                        </tr>			                     
					                    </tbody>
			                  		</table>
			                	</div>
			              	</div>
			            </div>	            
		                    <div class="modal-footer">
		                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		                    </div>
			       	</div>
		        </div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->        
    </div>
</div>


@stop
