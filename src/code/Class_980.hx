package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.display.DisplayObject;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_980 extends Class_877 {


    @:allow(code) var var_303:Class_1104;

    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_170:Int = 0;

    @:allow(code) var var_120:Int = 0;

    public function new(param1:Class_875, param2:Class_1104) {
        this.var_303 = param2;
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        var _loc3_:ASAny = null;
        super.init();
        this.var_170 = this.var_303.myProfile.num;
        this.method_70();
        var _loc1_:Sound = new EvolveMusic();
        var _loc2_ = _loc1_.play(0, 2);
        if (_loc2_ != null) {
            _loc3_ = new SoundTransform(Class_1.var_25);
            _loc2_.soundTransform = _loc3_;
        }
        gfx.actual.whoEvolve.text = this.var_303.myProfile.name + " is evolving!";
        this.var_3.method_62();
    }

    function method_70() {
        var _loc1_ = "";
        if (this.var_303.myProfile.shiny == 2) {
            _loc1_ = "ss";
        }
        else if (this.var_303.myProfile.shiny == 1) {
            _loc1_ = "s";
        }
        gfx.actual.gfx_Poke.gotoAndStop(_loc1_ + this.var_170);
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        if (gfx == null) {
            return false;
        }
        if (false) {
            if (gfx.actual.currentLabel == "almost_done_evolving") {
                SoundMixer.stopAll();
                _loc2_ = new EvolveDoneMusic();
                _loc3_ = _loc2_.play(0, 2);
                _loc4_ = new SoundTransform(Class_1.var_25);
                _loc3_.soundTransform = _loc4_;
                gfx.actual.whoEvolve2.text = this.var_303.myProfile.name + " evolved into ";
                this.var_303.evolve();
                gfx.actual.whoEvolve2.text += this.var_303.myProfile.name + "!";
                this.var_170 = this.var_303.myProfile.num;
                this.method_70();
            }
            else if (gfx.actual.currentLabel == "transforming") {
                if (this.var_120 == 3) {
                    if (this.var_303.myProfile.num == Class_13.const_32) {
                        if (this.var_303.myProfile.whichStone == Class_13.const_182) {
                            this.var_170 = Class_13.const_72;
                        }
                        else if (this.var_303.myProfile.whichStone == Class_13.const_176) {
                            this.var_170 = Class_13.const_90;
                        }
                        else if (this.var_303.myProfile.whichStone == Class_13.const_175) {
                            this.var_170 = Class_13.const_41;
                        }
                    }
                    else {
                        ++this.var_170;
                    }
                    this.method_70();
                }
                else if (this.var_120 == 6) {
                    this.var_120 = 0;
                    if (this.var_170 == Class_13.const_41 || this.var_170 == Class_13.const_90 || this.var_170 == Class_13.const_72) {
                        this.var_170 = Class_13.const_32;
                    }
                    else {
                        --this.var_170;
                    }
                    this.method_70();
                }
                ++this.var_120;
            }
        }
        return false;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (gfx == null) {
            return false;
        }
        if (false) {
            if (gfx.actual.currentLabel == "done_evolving") {
                this.remove_Me();
            }
            else if (param1.target != null && Std.is(param1.target, DisplayObject)) {
                if (cast(param1.target, DisplayObject).name == "stop_evolving_butt") {
                    this.remove_Me();
                }
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Focus_Evolve();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        SoundMixer.stopAll();
        this.var_3.method_35();
        this.var_3.reset_Poke();
        this.var_3.method_20();
        this.var_3.method_12();
        this.var_3.method_141(this.var_303);
    }
}

