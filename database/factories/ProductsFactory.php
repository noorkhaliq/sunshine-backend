<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->words(6, true),
            'sub_title' => $this->faker->words(6, true),
            'slug' => Str::slug($this->faker->words(3, true)),
            'description' => $this->faker->sentences(40, true),

        ];
    }
}
