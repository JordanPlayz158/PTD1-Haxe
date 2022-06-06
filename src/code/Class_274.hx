package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.geom.Point;

class Class_274 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_63:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 15;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_29:Bool = false;

    var var_321:Int = 0;

    @:allow(code) var var_55:Attack;

    public function new(param1:Poke, param2:Poke, param3:Int, param4:Int, param5:Attack) {
        this.var_321 = param4;
        this.var_8 = param2;
        this.var_20 = param3;
        this.var_55 = param5;
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
    }

    @:allow(code) override function run() {
        if (this.gfx.y == 0 && this.gfx.x == 0 && !this.var_29) {
            this.var_29 = true;
            this.var_63 = new Hit_Blaze_Kick();
            var_1.addChild(this.var_63);
        }
        else if (this.var_63 != null && this.var_63.currentLabel == "end") {
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
        if (this.var_63 != null) {
            var_1.removeChild(this.var_63);
            this.var_63 = null;
        }
        this.gfx = null;
        var_1.remove_Effect(this);
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        Attack.do_Burn(var_1, 10, this.var_8, this.var_55, this.var_321, var_12, true);
        var_1 = null;
    }
}

