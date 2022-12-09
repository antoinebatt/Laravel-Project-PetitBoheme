<?php

namespace Database\Seeders;

use App\Models\Product;
use Faker\Factory;
use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        for($i = 0; $i < 30; $i++) {
            Product::create([
                'title' => $faker->sentence(15),
                'slug' => $faker->slug,
                'subtitle' => $faker->sentence(10),
                'description' => $faker->text,
                'price' => $faker->numberBetween(15, 300) * 100,
                'image' => $faker->imageUrl(600, 400, 'cats', true, 'Faker')
            ]);

        }
    }
}
