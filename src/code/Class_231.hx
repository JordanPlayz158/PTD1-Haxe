package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.geom.Point;

class Class_231 extends Class_16 {


    @:allow(code) var var_38:GfxMovieClip;

    @:allow(code) var var_14:Poke;

    @:allow(code) var var_284:Point;

    @:allow(code) var var_433:Int = 0;

    @:allow(code) var var_671:Bool = false;

    @:allow(code) var var_55:Class_194;

    @:allow(code) var var_679:Float = Math.NaN;

    public function new(param1:Poke, param2:Poke, param3:Int, param4:GfxMovieClip, param5:Class_194, param6:Bool = false) {
        this.var_38 = param4;
        this.var_14 = param2;
        this.var_433 = param3;
        this.var_671 = param6;
        this.var_55 = param5;
        super(param1);
    }

    @:allow(code) override function init() {
        var_1.addChild(this.var_38);
        this.var_38.gotoAndStop(1);
        this.var_284 = new Point();
        this.method_122();
        this.method_7();
    }

    @:allow(code) function method_7() {
        var _loc1_ = Math.atan2(this.var_284.y, this.var_284.x);
        _loc1_ = _loc1_ * 180 / 0;
        this.var_38.rotation = _loc1_;
    }

    @:allow(code) function method_122() {
        this.var_284.x = this.var_14.x - 0;
        this.var_284.y = this.var_14.y - 0;
    }

    @:allow(code) function do_On_Hit(param1:Poke) {
    }

    @:allow(code) override function run() {
        var _loc1_ = 0;
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        this.var_38.nextFrame();
        if (this.var_671) {
            this.method_122();
            this.method_7();
        }
        if (var_15 == 1) {
            this.var_679 = var_12;
        }
        if (var_15 == 4 || var_15 == 10) {
            _loc1_ = Std.int(this.var_433 / 2);
            var_12 = this.var_679;
            this.var_14.take_Damage(_loc1_, new Class_197(this.var_14, new Gfx_Hit()), var_12);
            if (Std.is(var_1 == null, Class_1104)) {
                _loc2_ = this.method_208();
            }
            else {
                _loc2_ = cast(var_1.my_Parent, Class_875).var_79;
            }
            this.do_On_Hit(this.var_14);
            _loc4_ = 0;
            while (_loc4_ < _loc2_.length) {
                _loc3_ = _loc2_[_loc4_];
                if (_loc3_ != this.var_14) {
                    _loc1_ = Std.int(this.var_55.method_3(_loc3_) / 2);
                    var_12 = this.var_55.var_12;
                    if (_loc3_.gfx.hitTestObject(this.var_38)) {
                        if (Std.is(var_1, Class_1104)) {
                            _loc3_.method_18(cast(var_1, Class_1104));
                        }
                        _loc3_.take_Damage(_loc1_, new Class_197(_loc3_, new Gfx_Hit()), var_12, false);
                        this.do_On_Hit(_loc3_);
                    }
                }
                _loc4_++;
            }
        }
        else if (var_15 == 14) {
            this.remove_Me();
        }
        var_15 += method_6();
    }

    function method_208():Vector<Poke> {
        var _loc2_:ASAny = null;
        var _loc1_ = new Vector<Poke>();
        var _loc3_ = cast(var_1.my_Parent, Class_875).towerList;
        var _loc4_ = 0;
        while (_loc4_ < _loc3_.length) {
            _loc2_ = _loc3_[_loc4_];
            _loc1_.push(_loc2_);
            _loc4_++;
        }
        return _loc1_;
    }

    @:allow(code) override function remove_Me() {
        var_1.removeChild(this.var_38);
        this.var_38 = null;
        var_1.remove_Effect(this);
        var_1 = null;
    }
}

