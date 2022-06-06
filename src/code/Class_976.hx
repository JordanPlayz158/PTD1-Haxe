package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.transitions.Tween;
import fl.transitions.easing.Strong;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.media.SoundMixer;
import flash.media.SoundTransform;
import flash.utils.Timer;

class Class_976 extends Class_877 {


    @:allow(code) var var_49:GfxMovieClip;

    @:allow(code) var var_659:Tween;

    @:allow(code) var var_636:Tween;

    @:allow(code) var var_590:Timer;

    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_628:Bool = false;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.var_49 = new Movie_Scene_Win_1();
        this.var_3.gfx_BG.addChild(this.var_49);
        this.var_49.gotoAndStop(1);
        this.var_659 = new Tween(this.var_3.gfx_BG, "x", Strong.easeOut, this.var_3.gfx_BG.x, 100, 1, true);
        this.var_659.start();
        this.var_636 = new Tween(this.var_3.gfx_BG, "y", Strong.easeOut, this.var_3.gfx_BG.y, 10, 1, true);
        this.var_636.start();
        this.var_590 = new Timer(1000, 0);
        this.var_590.addEventListener(TimerEvent.TIMER, this.method_176);
        this.var_590.start();
        if (this.var_3.currentProfile.levelUnlocked == 0) {
            this.var_49.butt_skip.visible = false;
        }
    }

    @:allow(code) function method_176(param1:TimerEvent) {
        this.var_590.removeEventListener(TimerEvent.TIMER, this.method_176);
        this.var_590.stop();
        this.var_636 = null;
        this.var_659 = null;
        this.var_49.play();
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        if (_loc2_.name == "butt_next") {
            this.var_49.play();
            return true;
        }
        if (_loc2_.name == "butt_skip") {
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        if (this.var_49 == null) {
            return false;
        }
        if (this.var_49.currentLabel == "end") {
            this.remove_Me();
            return true;
        }
        if (this.var_49.currentLabel == "gary_shows") {
            SoundMixer.stopAll();
            _loc2_ = new Rival_Song();
            _loc3_ = _loc2_.play(0, 10);
            _loc4_ = new SoundTransform(Class_1.var_25);
            _loc3_.soundTransform = _loc4_;
        }
        else if (this.var_49.currentLabel == "blast_show") {
            _loc2_ = new Cry_009();
            _loc3_ = _loc2_.play(0, 1);
            _loc4_ = new SoundTransform(Class_1.var_194);
            _loc3_.soundTransform = _loc4_;
        }
        else if (this.var_49.currentLabel == "hits") {
            if (this.var_628) {
                this.var_628 = false;
                return true;
            }
            this.var_628 = true;
            _loc2_ = new RegularHitSound();
            _loc3_ = _loc2_.play(0, 1);
            _loc4_ = new SoundTransform(Class_1.var_194);
            _loc3_.soundTransform = _loc4_;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return null;
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        SoundMixer.stopAll();
        this.var_3.end_Level();
    }
}

