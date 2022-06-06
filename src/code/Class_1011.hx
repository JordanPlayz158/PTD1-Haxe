package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_1011 extends Class_877 {


    @:allow(code) var var_49:GfxMovieClip;

    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        SoundMixer.stopAll();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.method_182();
        if (ASCompat.stringAsBool(this.var_3.currentProfile.myAvatarGender)) {
            this.var_21 = this.var_3.currentProfile.myAvatarGender;
            this.var_22 = this.var_3.currentProfile.myAvatarStyle;
        }
        gfx.addEventListener(Event.FRAME_CONSTRUCTED, this.method_8);
    }

    function method_182() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Victory_Gym_Song();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) function method_8(param1:Event) {
        var _loc2_ = this.var_21 + "_" + this.var_22;
        if (false && gfx.yourAvatar.currentLabel != _loc2_) {
            gfx.yourAvatar.gotoAndStop(_loc2_);
        }
        else if (false && gfx.yourAvatarWalk.currentLabel != _loc2_) {
            gfx.yourAvatarWalk.gotoAndPlay(_loc2_);
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (param1.target == null || !Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_.name == "butt_end" || _loc2_.name == "butt_skip" || _loc2_.name == "butt_close") {
            this.remove_Me();
            return true;
        }
        if (_loc2_.name == "butt_next") {
            gfx.play();
            return true;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Ending_19();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.end_Level();
    }
}

