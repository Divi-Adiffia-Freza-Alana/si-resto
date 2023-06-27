<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kandang;
use App\Models\Satwa;
use App\Models\Keeper;

class DashboardController extends Controller
{
    public function index(){
        $countsatwa = Satwa::all()->count();
        $countkandang = Kandang::all()->count();
        $countkeeper = Keeper::all()->count();

        return view('dashboard',["satwa"=>$countsatwa,"kandang"=>$countkandang,"keeper"=>$countkeeper]);

    }

    //
}
