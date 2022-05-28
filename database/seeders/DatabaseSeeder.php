<?php

namespace Database\Seeders;

use App\Models\Pages;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();
        \App\Models\Gallery::factory(10)->create();
        \App\Models\Products::factory(10)->create();

        Pages::create([
            'title' => 'About Us',
            'slug' => 'about-us',
            'description' => 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptu',
            'type' => 'page'
        ]);
        Pages::create([
            'title' => 'Lorem Ipsum using',
            'slug' => 'blog',
            'description' => 'Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise',
            'type' => 'section'
        ]);
        Pages::create([
            'title' => 'Fruit And',
            'sub_title' => 'Vegetables',
            'description' => 'Now started',
            'slug' => 'header',
            'type' => 'section'
        ]);

        Pages::create([
            'title' => 'Terms And Condition',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet imperdiet justo, nec tempus lorem. Integer urna sapien, vulputate ac maximus eget, mollis id neque. Ut eu convallis arcu. Donec risus tortor, bibendum a lectus at, egestas posuere mi. In vel auctor risus, ut consequat orci. Nullam aliquet turpis eget suscipit tempor. Ut at orci nunc. Donec eu ante dapibus, scelerisque ligula vel, accumsan magna. Duis dignissim volutpat ex at gravida. Duis fermentum enim est, eu tempus turpis dapibus id. Aliquam condimentum sodales nisi tempus tempus. Vivamus fringilla ligula felis, ut efficitur neque facilisis congue. Cras pellentesque volutpat auctor. Quisque velit lacus, suscipit sit amet erat eu, lacinia blandit nunc. Aliquam ut eros iaculis, pellentesque tortor et, viverra nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In augue massa, rutrum elementum lorem sed, tempus maximus lectus. Aenean tincidunt aliquam nibh blandit dapibus. Quisque fermentum enim blandit ante elementum fermentum. Nulla in malesuada nisl. Morbi ut auctor nisi, vitae congue purus. Phasellus eleifend, purus eget volutpat aliquam, ipsum enim porttitor ante, et vestibulum nibh sem ut nunc. In fermentum turpis orci, a ultricies dui ullamcorper nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean dictum mauris at luctus suscipit. Aenean ullamcorper orci in enim sagittis, et maximus quam venenatis. Proin bibendum dolor diam, vitae faucibus nunc pulvinar at. Mauris nunc erat, fringilla vitae nulla nec, lacinia vestibulum sem. Nulla nec nisl at risus aliquam venenatis eu lacinia lacus. Ut auctor nisi sit amet orci interdum, a finibus dolor fringilla. Maecenas sed lacus nisl. Ut blandit lorem urna, vel scelerisque tortor faucibus eget. Etiam nisi metus, placerat vel enim a, maximus semper libero.',
            'slug' => 'terms-and-condition',
            'type' => 'page'
        ]);

        Pages::create([
            'title' => 'Privacy Policy',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet imperdiet justo, nec tempus lorem. Integer urna sapien, vulputate ac maximus eget, mollis id neque. Ut eu convallis arcu. Donec risus tortor, bibendum a lectus at, egestas posuere mi. In vel auctor risus, ut consequat orci. Nullam aliquet turpis eget suscipit tempor. Ut at orci nunc. Donec eu ante dapibus, scelerisque ligula vel, accumsan magna. Duis dignissim volutpat ex at gravida. Duis fermentum enim est, eu tempus turpis dapibus id. Aliquam condimentum sodales nisi tempus tempus. Vivamus fringilla ligula felis, ut efficitur neque facilisis congue. Cras pellentesque volutpat auctor. Quisque velit lacus, suscipit sit amet erat eu, lacinia blandit nunc. Aliquam ut eros iaculis, pellentesque tortor et, viverra nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In augue massa, rutrum elementum lorem sed, tempus maximus lectus. Aenean tincidunt aliquam nibh blandit dapibus. Quisque fermentum enim blandit ante elementum fermentum. Nulla in malesuada nisl. Morbi ut auctor nisi, vitae congue purus. Phasellus eleifend, purus eget volutpat aliquam, ipsum enim porttitor ante, et vestibulum nibh sem ut nunc. In fermentum turpis orci, a ultricies dui ullamcorper nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean dictum mauris at luctus suscipit. Aenean ullamcorper orci in enim sagittis, et maximus quam venenatis. Proin bibendum dolor diam, vitae faucibus nunc pulvinar at. Mauris nunc erat, fringilla vitae nulla nec, lacinia vestibulum sem. Nulla nec nisl at risus aliquam venenatis eu lacinia lacus. Ut auctor nisi sit amet orci interdum, a finibus dolor fringilla. Maecenas sed lacus nisl. Ut blandit lorem urna, vel scelerisque tortor faucibus eget. Etiam nisi metus, placerat vel enim a, maximus semper libero.',
            'slug' => 'privacy-policy',
            'type' => 'page'
        ]);
    }
}
