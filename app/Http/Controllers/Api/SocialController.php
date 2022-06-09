<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\SocialResources;
use App\Models\Settings;

class SocialController extends Controller
{
    public function index()
    {
        $social = Settings::all();

        return ['status' => true, 'data' => SocialResources::collection($social)];
    }
}
