<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\SocialResources;
use App\Models\Settings;
use Illuminate\Http\Request;

class SocialController extends Controller
{
    public function settings()
    {
        $social = Settings::all();
        return ['status' => true, 'data' => SocialResources::collection($social)];

    }
}
