package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.geom.Point;

class Class_244 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_14:Poke;

    @:allow(code) var var_4:Int = 20;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    var var_388:Vector<GfxMovieClip>;

    var var_564:Int = 7;

    var var_512:Int = 0;

    var var_284:Point;

    var var_433:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_14 = param2;
        this.var_433 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.var_388 = new Vector<GfxMovieClip>();
        this.var_284 = new Point();
        this.method_122();
    }

    function method_122() {
        this.var_284.x = this.var_14.x - 0;
        this.var_284.y = this.var_14.y - 0;
    }

    @:allow(code) override function run() {
        var _loc1_ = false;
        var _loc2_ = false;
        if (this.var_512 < this.var_564) {
            this.gfx = new Hit_Spit_Up();
            this.var_388.push(this.gfx);
            var_1.addChild(this.gfx);
            ++this.var_512;
        }
        if (this.var_388.length == 0) {
            this.remove_Me();
            return;
        }
        if (!this.var_14.var_64) {
            trace("target died so removing bubbles");
            this.remove_Me();
            return;
        }
        var _loc3_ = 0;
        while (_loc3_ < this.var_388.length) {
            this.gfx = this.var_388[_loc3_];
            _loc1_ = false;
            _loc2_ = false;
            if (Math.abs(this.gfx.y - this.var_284.y) < this.var_4) {
                _loc2_ = true;
                this.gfx.y = this.var_284.y;
            }
            if (Math.abs(this.gfx.x - this.var_284.x) < this.var_4) {
                _loc1_ = true;
                this.gfx.x = this.var_284.x;
            }
            if (this.gfx.y == this.var_284.y && this.gfx.x == this.var_284.x || _loc1_ && _loc2_) {
                var_1.removeChild(this.gfx);
                this.var_388.splice(_loc3_, 1);
                _loc3_--;
            }
            else {
                if (this.gfx.y > this.var_284.y) {
                    this.var_9 = -this.var_4;
                }
                else if (this.gfx.y < this.var_284.y) {
                    this.var_9 = this.var_4;
                }
                else {
                    this.var_9 = 0;
                }
                if (this.gfx.x > this.var_284.x) {
                    this.var_10 = -this.var_4;
                }
                else if (this.gfx.x < this.var_284.x) {
                    this.var_10 = this.var_4;
                }
                else {
                    this.var_10 = 0;
                }
                this.gfx.y += this.var_9;
                this.gfx.x += this.var_10;
            }
            _loc3_++;
        }
        this.method_122();
    }

    @:allow(code) override function remove_Me() {
        var _loc1_ = 0;
        while (_loc1_ < this.var_388.length) {
            this.gfx = this.var_388[_loc1_];
            var_1.removeChild(this.gfx);
            _loc1_++;
        }
        this.gfx = null;
        this.var_388 = null;
        var_1.remove_Effect(this);
        this.var_14.take_Damage(this.var_433, new Class_197(this.var_14, new Gfx_Hit()), var_12);
        var_1 = null;
        this.var_14 = null;
    }
}

