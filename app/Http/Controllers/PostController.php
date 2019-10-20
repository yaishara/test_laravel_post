<?php

namespace App\Http\Controllers;

use App\Post;
use File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
         $search = $request->search;
        $query = Post::query();
        if($search){
            $query =$query->Where('name','like','%'.$search.'%')->orWhere('description','like','%'.$search.'%');
        }
        $posts = $query->paginate(5);
        return view('admin.post.index',compact('posts'));
        // $posts = DB::table('posts')->paginate(5);

        // return view('admin.post.index', ['posts' => $posts]);
       

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view('admin.post.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
         $validator = Validator::make($request->all(), [
            'name' => 'required',
            'status' => 'required',
            'description' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect(route('post.create'))
                ->withErrors($validator)
                ->withInput();
        }

        $post=Post::create($request->all());
         $file = $request->file('image');
        if (!empty($file)) {
            $destinationPath = 'uploads/posts/';
            $filename = $file->getClientOriginalName();
            $file->move($destinationPath, $filename);
            $post->image = $filename;
            $post->save();
        }
        return redirect(route('post.create'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        return view('admin.post.edit',compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'description' => 'required',
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput()
                ->withErrors($validator)
                ->withInput();
        }


        $post->name=$request->name;
        $post->status=$request->status;
        $post->description=$request->description;


        $file = $request->file('image');
        if (!empty($file)) {
            $destinationPath = 'uploads/posts/';
            File::delete($destinationPath.$post->image);//delete current image from storage
            $filename = $file->getClientOriginalName();
            $file->move($destinationPath, $filename);
            $post->image = $filename;
        }


        $post->save();
        return redirect(route('post.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        return $post;       
         // return 'true';
    }
}
