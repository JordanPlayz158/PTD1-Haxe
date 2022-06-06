package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.geom.Point;

class Class_287 extends Class_16 {


    @:allow(code) var var_38:GfxMovieClip;

    @:allow(code) var var_14:Poke;

    @:allow(code) var var_4:Int = 15;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    var var_388:Vector<GfxMovieClip>;

    var var_564:Int = 5;

    var var_512:Int = 0;

    var var_253:Point;

    var var_284:Point;

    var var_433:Int = 0;

    var var_321:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int, param4:Int) {
        this.var_321 = param4;
        this.var_14 = param2;
        this.var_433 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.var_388 = new Vector<GfxMovieClip>();
        var _loc1_ = 0;
        while (_loc1_ < this.var_564) {
            this.var_38 = new Hit_Inferno();
            this.var_388.push(this.var_38);
            var_1.addChild(this.var_38);
            this.var_38.visible = false;
            _loc1_++;
        }
        this.var_284 = new Point();
        this.method_122();
        this.var_253 = new Point();
        this.var_38.x = this.var_253.x;
        this.var_38.y = this.var_253.y;
        this.var_38.visible = true;
        ++this.var_512;
    }

    function method_122() {
        this.var_284.x = this.var_14.x - 0;
        this.var_284.y = this.var_14.y - 0;
    }

    @:allow(code) override function run() {
        this.var_38 = this.var_388[this.var_512++];
        this.var_38.gotoAndPlay(1);
        var_1.addChild(this.var_38);
        if (this.var_512 == this.var_564) {
            this.var_512 = 0;
        }
        this.var_38.visible = true;
        if (this.var_253.y == this.var_284.y && this.var_253.x == this.var_284.x) {
            this.remove_Me();
            return;
        }
        this.method_122();
        if (Math.abs(this.var_253.y - this.var_284.y) < this.var_4) {
            this.var_253.y = this.var_284.y;
        }
        if (Math.abs(this.var_253.x - this.var_284.x) < this.var_4) {
            this.var_253.x = this.var_284.x;
        }
        if (this.var_253.y > this.var_284.y) {
            this.var_9 = -this.var_4;
        }
        else if (this.var_253.y < this.var_284.y) {
            this.var_9 = this.var_4;
        }
        else {
            this.var_9 = 0;
        }
        if (this.var_253.x > this.var_284.x) {
            this.var_10 = -this.var_4;
        }
        else if (this.var_253.x < this.var_284.x) {
            this.var_10 = this.var_4;
        }
        else {
            this.var_10 = 0;
        }
        this.var_253.y += this.var_9;
        this.var_253.x += this.var_10;
        this.var_38.y = this.var_253.y;
        this.var_38.x = this.var_253.x;
        var_15 += method_6();
    }

    @:allow(code) override function remove_Me() {
        var _loc2_:ASAny = null;
        var _loc1_ = 0;
        while (_loc1_ < this.var_564) {
            this.var_38 = this.var_388[_loc1_];
            var_1.removeChild(this.var_38);
            _loc1_++;
        }
        this.var_38 = null;
        this.var_388 = null;
        var_1.remove_Effect(this);
        if (this.var_14.check_Effects(Class_201) == null && !this.var_14.myProfile.is_Type(Class_13.const_6)) {
            _loc2_ = new Class_201(this.var_14, this.var_321);
            _loc2_.var_12 = var_12;
            this.var_14.add_Effect(_loc2_);
        }
        this.var_14.take_Damage(this.var_433, new Class_197(this.var_14, new Gfx_Hit()), var_12);
        var_1 = null;
    }
}

