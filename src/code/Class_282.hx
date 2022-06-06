package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.geom.Point;

class Class_282 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_18:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 15;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_29:Bool = false;

    var var_535:Int = 0;

    @:allow(code) var var_379:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_8 = param2;
        this.var_20 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.gfx = Class_21.method_9(this.var_8.myProfile.num, this.var_8.myProfile.shiny);
        this.gfx.gotoAndPlay(this.var_8.dir);
        this.var_8.gfx.alpha = 0.2;
        var_1.addChild(this.gfx);
        var _loc1_ = new Point(this.var_8.x, this.var_8.y);
        _loc1_.x -= 0;
        _loc1_.y -= 0;
        this.gfx.x = _loc1_.x;
        this.gfx.y = _loc1_.y;
        var _loc2_ = Math.random() * 100 + 1;
        if (_loc2_ <= 12.5) {
            this.var_535 = 5;
        }
        else if (_loc2_ <= 25) {
            this.var_535 = 4;
        }
        else if (_loc2_ <= 62.5) {
            this.var_535 = 3;
        }
        else {
            this.var_535 = 2;
        }
        trace("double slap got " + this.var_535);
    }

    @:allow(code) override function run() {
        if (this.gfx.y == 0 && this.gfx.x == 0 && !this.var_29) {
            this.var_29 = true;
            this.var_18 = new Hit_Double_Slap();
            this.var_18.gotoAndStop(1);
            var_1.addChild(this.var_18);
        }
        else {
            if (this.var_18 != null && this.var_18.currentLabel == "end_" + this.var_535) {
                this.remove_Me();
                return;
            }
            if (Math.abs(this.gfx.y) < this.var_4) {
                this.gfx.y = 0;
            }
            if (Math.abs(this.gfx.x) < this.var_4) {
                this.gfx.x = 0;
            }
            if (Math.abs(this.gfx.y) > Math.abs(this.gfx.x)) {
                if (this.gfx.y > 0) {
                    this.gfx.gotoAndPlay("back");
                }
                else {
                    this.gfx.gotoAndPlay("front");
                }
            }
            else if (Math.abs(this.gfx.y) < Math.abs(this.gfx.x)) {
                if (this.gfx.x > 0) {
                    this.gfx.gotoAndPlay("left");
                }
                else {
                    this.gfx.gotoAndPlay("right");
                }
            }
            if (this.gfx.y > 0) {
                this.var_9 = -this.var_4;
            }
            else if (this.gfx.y < 0) {
                this.var_9 = this.var_4;
            }
            else {
                this.var_9 = 0;
            }
            if (this.gfx.x > 0) {
                this.var_10 = -this.var_4;
            }
            else if (this.gfx.x < 0) {
                this.var_10 = this.var_4;
            }
            else {
                this.var_10 = 0;
            }
            this.gfx.y += this.var_9;
            this.gfx.x += this.var_10;
            if (this.var_18 != null) {
                this.var_18.nextFrame();
                if (this.var_18.currentLabel == "end_1" || this.var_18.currentLabel == "end_2" || this.var_18.currentLabel == "end_3" || this.var_18.currentLabel == "end_4") {
                    ++this.var_379;
                    var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12, false);
                }
            }
        }
    }

    @:allow(code) override function remove_Me() {
        this.var_8.gfx.alpha = 1;
        var_1.removeChild(this.gfx);
        if (this.var_18 != null) {
            var_1.removeChild(this.var_18);
            this.var_18 = null;
        }
        this.gfx = null;
        var_1.remove_Effect(this);
        ++this.var_379;
        trace("double slap hit last " + this.var_379);
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        var_1 = null;
    }
}

