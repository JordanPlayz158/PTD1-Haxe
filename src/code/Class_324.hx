package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.geom.Point;

class Class_324 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 20;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    @:allow(code) var var_433:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_8 = param2;
        this.var_433 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.gfx = new Do_Leech_Seed();
        var_1.addChild(this.gfx);
        var _loc1_ = new Point(this.var_8.x, this.var_8.y);
        _loc1_.x -= 0;
        _loc1_.y -= 0;
        this.gfx.x = _loc1_.x;
        this.gfx.y = _loc1_.y;
    }

    @:allow(code) override function run() {
        if (this.gfx.y == 0 && this.gfx.x == 0) {
            this.remove_Me();
            return;
        }
        if (Math.abs(this.gfx.y) < this.var_4) {
            this.gfx.y = 0;
        }
        if (Math.abs(this.gfx.x) < this.var_4) {
            this.gfx.x = 0;
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
        var_15 += method_6();
    }

    @:allow(code) override function remove_Me() {
        var_1.removeChild(this.gfx);
        this.gfx = null;
        var_1.remove_Effect(this);
        var _loc1_:Class_16 = new Class_325(var_1, this.var_8, this.var_433);
        _loc1_.var_12 = var_12;
        var_1.add_Effect(_loc1_);
        var_1 = null;
    }
}

