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

class Class_242 extends Class_16 {


    @:allow(code) var var_17:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 30;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    @:allow(code) var var_20:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_8 = param2;
        this.var_20 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
    }

    @:allow(code) override function run() {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        if (var_15 == 6) {
            this.remove_Me();
            return;
        }
        if (var_15 == 3) {
            this.var_8.gfx.alpha = 0.2;
            this.var_17 = Class_21.method_9(this.var_8.myProfile.num, this.var_8.myProfile.shiny);
            this.var_17.gotoAndPlay(this.var_8.dir);
            var_1.addChild(this.var_17);
            _loc2_ = new Point(this.var_8.x, this.var_8.y);
            _loc2_.x -= 0;
            _loc2_.y -= 0;
            this.var_17.x = _loc2_.x;
            this.var_17.y = _loc2_.y;
            _loc3_ = new Color();
            _loc3_.setTint(16777215, 0.7);
            this.var_17.transform.colorTransform = _loc3_;
        }
        else if (var_15 > 3) {
            if (Math.abs(this.var_17.y) < this.var_4) {
                this.var_17.y = 0;
            }
            if (Math.abs(this.var_17.x) < this.var_4) {
                this.var_17.x = 0;
            }
            if (Math.abs(this.var_17.y) > Math.abs(this.var_17.x)) {
                if (this.var_17.y > 0) {
                    this.var_17.gotoAndPlay("back");
                }
                else {
                    this.var_17.gotoAndPlay("front");
                }
            }
            else if (Math.abs(this.var_17.y) < Math.abs(this.var_17.x)) {
                if (this.var_17.x > 0) {
                    this.var_17.gotoAndPlay("left");
                }
                else {
                    this.var_17.gotoAndPlay("right");
                }
            }
            if (this.var_17.y > 0) {
                this.var_9 = -this.var_4;
            }
            else if (this.var_17.y < 0) {
                this.var_9 = this.var_4;
            }
            else {
                this.var_9 = 0;
            }
            if (this.var_17.x > 0) {
                this.var_10 = -this.var_4;
            }
            else if (this.var_17.x < 0) {
                this.var_10 = this.var_4;
            }
            else {
                this.var_10 = 0;
            }
            this.var_17.y += this.var_9;
            this.var_17.x += this.var_10;
        }
        this.var_8.gfx.x += speed;
        speed = -speed;
        var_15 += method_6();
    }

    @:allow(code) override function remove_Me() {
        this.var_8.gfx.x = 0;
        this.var_8.gfx.alpha = 1;
        if (this.var_17 != null) {
            var_1.removeChild(this.var_17);
            this.var_17 = null;
        }
        var_1.remove_Effect(this);
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        var_1 = null;
    }
}

