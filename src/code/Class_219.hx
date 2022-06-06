package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.geom.Point;

class Class_219 extends Class_16 {


    @:allow(code) var var_43:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 30;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_471:Int = 0;

    @:allow(code) var var_122:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_8 = param2;
        this.var_20 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.var_43 = Class_21.method_9(this.var_8.myProfile.num, this.var_8.myProfile.shiny);
        this.var_43.gotoAndPlay(this.var_8.dir);
        this.var_8.gfx.alpha = 0.2;
        var_1.addChild(this.var_43);
        var _loc1_ = new Point(this.var_8.x, this.var_8.y);
        _loc1_.x -= 0;
        _loc1_.y -= 0;
        this.var_43.x = _loc1_.x;
        this.var_43.y = _loc1_.y;
        this.do_At_Beginning();
    }

    @:allow(code) override function run() {
        if (this.var_471 == 0) {
            if (this.var_122 <= 5) {
                this.var_43.y -= this.var_4;
                this.var_4 -= 5;
            }
            else {
                this.var_471 = 1;
                this.var_4 = 17;
            }
            ++this.var_122;
        }
        else {
            if (this.var_43.y == 0 && this.var_43.x == 0) {
                this.remove_Me();
                return;
            }
            if (Math.abs(this.var_43.y) < this.var_4) {
                this.var_43.y = 0;
            }
            if (Math.abs(this.var_43.x) < this.var_4) {
                this.var_43.x = 0;
            }
            if (Math.abs(this.var_43.y) > Math.abs(this.var_43.x)) {
                if (this.var_43.y > 0) {
                    this.var_43.gotoAndPlay("back");
                }
                else {
                    this.var_43.gotoAndPlay("front");
                }
            }
            else if (Math.abs(this.var_43.y) < Math.abs(this.var_43.x)) {
                if (this.var_43.x > 0) {
                    this.var_43.gotoAndPlay("left");
                }
                else {
                    this.var_43.gotoAndPlay("right");
                }
            }
            if (this.var_43.y > 0) {
                this.var_9 = -this.var_4;
            }
            else if (this.var_43.y < 0) {
                this.var_9 = this.var_4;
            }
            else {
                this.var_9 = 0;
            }
            if (this.var_43.x > 0) {
                this.var_10 = -this.var_4;
            }
            else if (this.var_43.x < 0) {
                this.var_10 = this.var_4;
            }
            else {
                this.var_10 = 0;
            }
            this.var_43.y += this.var_9;
            this.var_43.x += this.var_10;
            var_15 += method_6();
        }
    }

    @:allow(code) override function remove_Me() {
        this.var_8.gfx.alpha = 1;
        var_1.removeChild(this.var_43);
        this.var_43 = null;
        var_1.remove_Effect(this);
        this.do_At_End();
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        var_1 = null;
    }

    @:allow(code) function do_At_End() {
    }

    @:allow(code) function do_At_Beginning() {
    }
}

