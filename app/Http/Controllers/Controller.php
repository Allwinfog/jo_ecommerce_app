<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\reply;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    public $comments;
    public $replies;

    public function __construct()
    {
        $this->comments = Comment::orderBy('id', 'desc')->get();
        $this->replies = reply::all();
    }

    use AuthorizesRequests, ValidatesRequests;
}
