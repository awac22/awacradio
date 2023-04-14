<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media as MM;

class GenreArtist extends Model implements HasMedia
{
    use InteractsWithMedia;
    
    protected $table="genre_artist";
    
    public $timestamps = true;
    
    protected $fillable = ['artist_id', 'genre_id'];
}
