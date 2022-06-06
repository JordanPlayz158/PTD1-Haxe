package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.media.SoundChannel;
import flash.media.SoundTransform;

class Class_22 {

    public static inline final const_11 = 0;

    public static inline final const_17 = 1;


    public function new(param1:Int) {
        var _loc2_:ASAny = null;
        var _loc4_:ASAny = null;
        if (param1 == const_11) {
            _loc2_ = new Lower_Stat_Sound();
        }
        else if (param1 == const_17) {
            _loc2_ = new Increase_Stat_Sound();
        }
        if (!_loc2_) {
            trace("ERROR SOUND_STAT_CHANGE->CONSTRUCTOR(INT):VOID NEED TO SEND A VALID SOUND ID");
            return;
        }
        var _loc3_:SoundChannel = _loc2_.play();
        if (_loc3_ != null) {
            _loc4_ = new SoundTransform(0);
            _loc3_.soundTransform = _loc4_;
        }
    }
}

