package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;

import flash.geom.Point;

class Class_223 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_18:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 15;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_29:Bool = false;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_8 = param2;
        this.var_20 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.gfx = Class_21.method_9(this.var_8.myProfile.num, this.var_8.myProfile.shiny);
        this.gfx.gotoAndPlay(this.var_8.dir);
        var _loc1_ = new Color();
        _loc1_.setTint(16737792, 0.5);
        this.gfx.transform.colorTransform = _loc1_;
        this.var_8.gfx.alpha = 0.2;
        this.var_18 = new Do_Flame_Wheel();
        this.gfx.addChild(this.var_18);
        var_1.addChild(this.gfx);
        var _loc2_ = new Point(this.var_8.x, this.var_8.y);
        _loc2_.x -= 0;
        _loc2_.y -= 0;
        this.gfx.x = _loc2_.x;
        this.gfx.y = _loc2_.y;
    }

    @:allow(code) override function run() {
        if (this.gfx.y == 0 && this.gfx.x == 0 && !this.var_29) {
            this.var_29 = true;
            this.remove_Me();
        }
        else {
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
        }
    }

    @:allow(code) override function remove_Me() {
        this.var_8.gfx.alpha = 1;
        var_1.removeChild(this.gfx);
        this.gfx = null;
        var_1.remove_Effect(this);
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        var_1 = null;
    }
}

