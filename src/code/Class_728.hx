package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_728 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Brick Break";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc2_ = method_3(param1);
        if (_loc2_ > 0) {
            _loc4_ = param1.check_Effects(Class_812);
            _loc5_ = param1.check_Effects(Class_821);
            if (_loc4_) {
                _loc4_.remove_Me();
            }
            if (_loc5_) {
                _loc5_.remove_Me();
            }
        }
        var _loc3_:Class_16 = new Class_387(param1, var_2, _loc2_);
        _loc3_.var_12 = var_12;
        param1.add_Effect(_loc3_);
    }

    @:allow(code) override function get_Move_Power():Int {
        return 75;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_13;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

