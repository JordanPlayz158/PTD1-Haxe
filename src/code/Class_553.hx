package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_553 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "False Swipe";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        var _loc3_ = method_3(param1, _loc2_);
        var _loc4_ = param1.life;
        if (_loc3_ > _loc4_) {
            _loc3_ = _loc4_ - 1;
            if (_loc3_ <= 0) {
                return;
            }
        }
        var _loc5_:Class_16;
        (_loc5_ = new Class_301(param1, var_2, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc5_);
    }

    @:allow(code) override function get_Move_Power():Int {
        return 40;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

