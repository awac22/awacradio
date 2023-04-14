<?php

use App\Setting;
use Illuminate\Database\Seeder;

class patch36 extends Seeder
{
     /**
      * Run the database seeds.
      *
      * @return void
      */
     public function run()
     {
          Setting::create([
               'key' => 'searchMethod',
               'value' => 'mysql'
          ]);

          Setting::create([
               'key' => 'algoliaAppID',
               'value' => ''
          ]);
          Setting::create([
               'key' => 'algoliaSecret',
               'value' => ''
          ]);

          Setting::create([
               'key' => 'WasabiKey',
               'value' => ''
          ]);
          Setting::create([
               'key' => 'WasabiSecret',
               'value' => ''
          ]);
          Setting::create([
               'key' => 'WasabiRegion',
               'value' => 21
          ]);
          Setting::create([
               'key' => 'WasabiBucket',
               'value' => 1
          ]);
     }
}
