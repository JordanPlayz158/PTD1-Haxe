package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_536 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Punishment";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_ = 0;
        var _loc2_ = this.get_Move_Power();
        var _loc4_ = var_2.check_Effects(Class_805);
        var _loc5_ = var_2.check_Effects(Class_801);
        var _loc6_ = var_2.check_Effects(Class_808);
        var _loc7_ = var_2.check_Effects(Class_803);
        if (_loc4_ != null) {
            _loc3_++;
        }
        if (_loc5_ != null) {
            _loc3_++;
        }
        if (_loc6_ != null) {
            _loc3_++;
        }
        if (_loc7_ != null) {
            _loc3_++;
        }
        _loc2_ += 20 * _loc3_;
        var _loc8_ = method_3(param1, _loc2_);
        var _loc9_:Class_16;
        (_loc9_ = new Class_290(param1, var_2, _loc8_)).var_12 = var_12;
        param1.add_Effect(_loc9_);
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_27;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

