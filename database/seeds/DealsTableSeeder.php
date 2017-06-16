<?php

use Illuminate\Database\Seeder;
use App\Deal;
class DealsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Deal::firstOrCreate([
           'category' => 'vehicels',
           'sub_category' => 'car',
           'title' => 'suzuki mehran 2015',
           'description' => 'car is in good condition for more detail call me',
           'duration' => '1day',
           'rent_amount' => 3000,
           'pic1' => 'sample1.png',
           'pic2' => 'sample2.png',
           'pic3' => 'sample3.png',
           'phone_no' => '123456789',
           'email' => 'user@gmail.com',
           'user_id' => 1,
       ]);

        Deal::firstOrCreate([
            'category' => 'vehicels',
            'sub_category' => 'bus',
            'title' => 'crolla',
            'description' => 'bus is in good condition for more detail call me',
            'duration' => '1day',
            'rent_amount' => 5000,
            'pic1' => 'sample1.png',
            'pic2' => 'sample2.png',
            'pic3' => 'sample3.png',
            'phone_no' => '000748487',
            'email' => 'user@gmail.com',
            'user_id' => 1,
        ]);


        Deal::firstOrCreate([
            'category' => 'real state',
            'sub_category' => 'house',
            'title' => 'house in iqbal town',
            'description' => 'house have 3 living rooms, 1 bathroom, 1 kitchen and a lawn',
            'duration' => '1month',
            'rent_amount' => 10000,
            'pic1' => 'sample1.png',
            'pic2' => 'sample2.png',
            'pic3' => 'sample3.png',
            'phone_no' => '0333333787',
            'email' => 'user@gmail.com',
            'user_id' => 1,
        ]);

        Deal::firstOrCreate([
            'category' => 'real state',
            'sub_category' => 'building',
            'title' => '4 flour building in canal view',
            'description' => '4 flour each flour is well furnished',
            'duration' => '1year',
            'rent_amount' => 50000,
            'pic1' => 'sample1.png',
            'pic2' => 'sample2.png',
            'pic3' => 'sample3.png',
            'phone_no' => '736436278',
            'email' => 'user@gmail.com',
            'user_id' => 1,
        ]);

        Deal::firstOrCreate([
            'category' => 'real state',
            'sub_category' => 'hotel',
            'title' => 'mughal fork',
            'description' => 'hotel contail well furnished rooms',
            'duration' => '1day',
            'rent_amount' => 5000,
            'pic1' => 'sample1.png',
            'pic2' => 'sample2.png',
            'pic3' => 'sample3.png',
            'phone_no' => '878547285',
            'email' => 'user@gmail.com',
            'user_id' => 1,
        ]);
    }
}
