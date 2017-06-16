<?php

use Illuminate\Database\Seeder;

class PropertySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Property::firstOrCreate([
        'price' => 5000,
        'room' => 1,
        'area' => 50,
        'area_units' => 5,
        'deal_id' => 3,
    ]);

        Property::firstOrCreate([
        'price' => 10000,
        'room' => 3,
        'area' => 100,
        'area_units' => 10,
        'deal_id' => 4,
    ]);
    }
}
