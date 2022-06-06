package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_643 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Gyro Ball";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        var _loc3_ = param1.myProfile.speed * param1.myProfile.mod_Speed / (var_2.myProfile.speed * var_2.myProfile.mod_Speed);
        _loc2_ = Std.int(_loc2_ * _loc3_);
        if (_loc2_ > 150) {
            _loc2_ = 150;
        }
        var _loc4_ = method_3(param1, _loc2_);
        var _loc5_:Class_16;
        (_loc5_ = new Class_350(param1, var_2, _loc4_)).var_12 = var_12;
        param1.add_Effect(_loc5_);
    }

    @:allow(code) override function get_Move_Power():Int {
        return 25;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_7;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

