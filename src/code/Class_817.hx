package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_817 extends Class_732 {


    var var_668:Vector<Int>;

    var var_14:Poke;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_14 = param2;
        super(param1, null, param3);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_668 = var_1.myProfile.types;
        var _loc1_ = new Vector<Int>();
        var _loc2_ = Std.int(Math.random() * 4 + 1);
        var _loc3_:Int = (this.var_14.myProfile : ASAny)["move" + this.var_14.myProfile.moveSelected];
        if (_loc3_ == 0) {
            _loc3_ = this.var_14.myProfile.move1;
        }
        var _loc4_:Attack;
        var _loc5_ = (_loc4_ = Class_9.method_21(_loc3_, null)).get_Move_Type();
        var _loc6_ = 16777215;
        if (_loc5_ == Class_13.const_8) {
            _loc6_ = 52275;
        }
        else if (_loc5_ == Class_13.const_13) {
            _loc6_ = 7866376;
        }
        else if (_loc5_ == Class_13.const_6) {
            _loc6_ = 16737792;
        }
        else if (_loc5_ == Class_13.const_5) {
            _loc6_ = 39423;
        }
        else if (_loc5_ == Class_13.const_9) {
            _loc6_ = 13408716;
        }
        else if (_loc5_ == Class_13.const_15) {
            _loc6_ = 12099640;
        }
        else if (_loc5_ == Class_13.const_10) {
            _loc6_ = 16764006;
        }
        else if (_loc5_ == Class_13.const_24) {
            _loc6_ = 6684825;
        }
        else if (_loc5_ == Class_13.const_7) {
            _loc6_ = 10066329;
        }
        else if (_loc5_ == Class_13.const_14) {
            _loc6_ = 16711935;
        }
        else if (_loc5_ == Class_13.const_27) {
            _loc6_ = 5450025;
        }
        else if (_loc5_ == Class_13.const_26) {
            _loc6_ = 3355647;
        }
        else if (_loc5_ == Class_13.const_2) {
            _loc6_ = 10040166;
        }
        else if (_loc5_ == Class_13.const_18) {
            _loc6_ = 6750207;
        }
        else if (_loc5_ == Class_13.const_20) {
            _loc6_ = 16776960;
        }
        else if (_loc5_ == Class_13.const_22) {
            _loc6_ = 10066227;
        }
        var_1.add_Effect(new Class_205(var_1, _loc6_, 0.7, 0));
        _loc1_.push(_loc5_);
        var_1.myProfile.types = _loc1_;
    }

    @:allow(code) override function remove_Me() {
        var_1.myProfile.types = this.var_668;
        super.remove_Me();
    }
}

