<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();

		// $this->call('UserTableSeeder');
		// 
		$this->call('UserTableSeeder');
		$this->call('TblAgendaTableSeeder');
		$this->call('TblBeritaTableSeeder');
		$this->call('TblMenuTableSeeder');
		$this->call('TblPengumumanTableSeeder');
		$this->call('TblPersebaranAlumniTableSeeder');
		$this->call('TblProvinsiTableSeeder');
	}

}
