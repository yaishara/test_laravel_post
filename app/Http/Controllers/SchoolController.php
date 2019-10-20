<?php

namespace App\Http\Controllers;

use App\School;
use App\SchoolPhoto;
use Illuminate\Http\Request;
use App\Post;

class SchoolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         $posts = Post::pluck('status', 'id');

         $selectedID = 2;
            // return $posts;
        return view('admin.school.create', compact('selectedID', 'posts'));
         // return view('admin.school.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

         $school = School::create($request->all());

        foreach ($request->photos as $photo) {

            $destinationPath = 'uploads/schoolphotos/';
            $filename = $photo->getClientOriginalName();
            $photo->move($destinationPath, $filename);
            $post = new SchoolPhoto();
            $post->filename = $filename;
            $post->school_id = $school->id;
            $post->save();
        }
        // return 'Upload successful!';
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\school  $school
     * @return \Illuminate\Http\Response
     */
    public function show(school $school)
    {
        $poto = $school->photos;
        return view('admin.post.index',compact('poto'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\school  $school
     * @return \Illuminate\Http\Response
     */
    public function edit(School $school)
    {
        return $school->photos;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\school  $school
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, school $school)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\school  $school
     * @return \Illuminate\Http\Response
     */
    public function destroy(school $school)
    {
        //
    }
}
