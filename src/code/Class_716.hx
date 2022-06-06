package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_716 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Endeavor";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        var _loc3_ = 0 / 0 * 100;
        if (_loc3_ >= 71) {
            _loc2_ = 20;
        }
        else if (_loc3_ >= 36) {
            _loc2_ = 40;
        }
        else if (_loc3_ >= 21) {
            _loc2_ = 80;
        }
        else if (_loc3_ >= 11) {
            _loc2_ = 100;
        }
        else if (_loc3_ >= 5) {
            _loc2_ = 150;
        }
        else {
            _loc2_ = 200;
        }
        var _loc4_ = method_3(param1, _loc2_);
        var _loc5_:Class_16 = new Class_255(param1, var_2, _loc4_);
        param1.add_Effect(_loc5_);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }
}

