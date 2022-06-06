package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_665 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Blizzard";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 120;
    }

    @:allow(code) override function get_Accurary():Int {
        var _loc1_ = 70;
        var _loc2_ = cast(var_2.my_Parent, Class_875);
        if (_loc2_.method_23(Class_855) != null) {
            _loc1_ = 10000;
        }
        return _loc1_;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (param1 == var_2) {
            return;
        }
        var _loc2_ = method_3(param1);
        var _loc3_:Class_16 = new Class_750(var_2, param1, _loc2_, this);
        _loc3_.var_12 = var_12;
        var_2.add_Effect(_loc3_);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_18;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return 24;
    }
}

