<?php

use Illuminate\Database\Seeder;
use App\User;

class UserTableSeeder extends Seeder {

	public function run()
	{
		// User::truncate();
		User::create([
			'username' => 'admin',
			'email' => 'admin@example.com',
			'status' => 'admin',
			'password' => Hash::make( 'balige123' ),

		]);

	}

}
