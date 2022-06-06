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

class Class_285 extends Class_16 {


    static inline final name_1 = Std.int(1800.0);

    @:allow(code) var var_17:GfxMovieClip;

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
        this.var_17 = Class_21.method_9(this.var_8.myProfile.num, this.var_8.myProfile.shiny);
        this.var_17.gotoAndPlay(this.var_8.dir);
        this.var_8.gfx.alpha = 0.2;
        var_1.addChild(this.var_17);
        var _loc1_ = new Point(this.var_8.x, this.var_8.y);
        _loc1_.x -= 0;
        _loc1_.y -= 0;
        this.var_17.x = _loc1_.x;
        this.var_17.y = _loc1_.y;
        var _loc2_ = new Color();
        _loc2_.setTint(13421772, 0.9);
        this.var_17.transform.colorTransform = _loc2_;
    }

    @:allow(code) override function run() {
        if (this.var_17.y == 0 && this.var_17.x == 0 && !this.var_29) {
            this.var_29 = true;
            this.remove_Me();
        }
        else {
            if (Math.abs(this.var_17.y) < this.var_4) {
                this.var_17.y = 0;
            }
            if (Math.abs(this.var_17.x) < this.var_4) {
                this.var_17.x = 0;
            }
            if (Math.abs(this.var_17.y) > Math.abs(this.var_17.x)) {
                if (this.var_17.y > 0) {
                    this.var_17.gotoAndPlay("front");
                }
                else {
                    this.var_17.gotoAndPlay("back");
                }
            }
            else if (Math.abs(this.var_17.y) < Math.abs(this.var_17.x)) {
                if (this.var_17.x > 0) {
                    this.var_17.gotoAndPlay("right");
                }
                else {
                    this.var_17.gotoAndPlay("left");
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
    }

    @:allow(code) override function remove_Me() {
        var _loc1_ = 0;
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        this.var_8.gfx.alpha = 1;
        var_1.removeChild(this.var_17);
        this.var_17 = null;
        var_1.remove_Effect(this);
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        if (var_1.check_Effects(Class_807) == null) {
            _loc1_ = Std.int(Math.random() * 100 + 1);
            if (_loc1_ <= 10) {
                _loc2_ = var_1.check_Effects(Class_808);
                if (_loc2_) {
                    _loc3_ = new Class_22(Class_22.const_11);
                    _loc2_.remove_Me();
                }
                else {
                    var_1.add_Effect(new Class_807(var_1, Class_285.name_1));
                }
            }
        }
        var_1 = null;
    }
}

