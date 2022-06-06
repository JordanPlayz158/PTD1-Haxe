package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_1090 extends Class_877 {


    @:allow(code) var var_49:GfxMovieClip;

    @:allow(code) var var_3:Class_875;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    function method_182() {
        var _loc3_:ASAny = null;
        var _loc1_:Sound = new Victory_Gym_Song();
        var _loc2_ = _loc1_.play(0, 10);
        if (_loc2_ != null) {
            _loc3_ = new SoundTransform(Class_1.var_25);
            _loc2_.soundTransform = _loc3_;
        }
    }

    @:allow(code) override function init() {
        super.init();
        SoundMixer.stopAll();
        if (this.var_3 != null) {
            this.var_3.gfx_UI.visible = false;
            this.method_182();
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (param1.target == null || !Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_.name == "butt_end" || _loc2_.name == "butt_skip") {
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Level_12_5_Intro();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.gfx_UI.visible = true;
        SoundMixer.stopAll();
        this.var_3.start_Level();
    }
}

