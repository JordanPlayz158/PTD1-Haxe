package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_459 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Spit Up";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 100;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = 0;
        var _loc3_ = var_2.check_Effects(Class_738);
        if (_loc3_ != null) {
            _loc2_ = 100;
        }
        else {
            _loc3_ = var_2.check_Effects(Class_740);
            if (_loc3_ != null) {
                _loc2_ = 200;
            }
            else {
                _loc3_ = var_2.check_Effects(Class_739);
                if (_loc3_ != null) {
                    _loc2_ = 300;
                }
            }
        }
        if (_loc2_ == 0) {
            return;
        }
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        }
        var _loc4_ = method_3(param1, _loc2_);
        var _loc5_:Class_16;
        (_loc5_ = new Class_244(var_2, param1, _loc4_)).var_12 = var_12;
        var_2.add_Effect(_loc5_);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

