<?php

use Illuminate\Database\Seeder;

class VehicleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Vehicle::firstOrCreate([
            'brand' => 'suzuki',
            'fuel' => 'diesel',
            'year' => 2015,
            'km_driven' => 10000,
            'deal_id' => 1,
        ]);

        Vehicle::firstOrCreate([
            'brand' => 'chrolla',
            'fuel' => 'petrol',
            'year' => 2016,
            'km_driven' => 50000,
            'deal_id' => 2,
        ]);
    }
}
