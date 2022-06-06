package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_425 extends Class_194 {


    @:allow(code) var var_716:Int = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Flame Charge";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 50;
    }

    @:allow(code) override function is_Physical():Bool {
        return true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = var_2.check_Effects(Class_796);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
        }
        var _loc3_ = method_3(param1);
        if (param1.check_Effects(Class_826) != null || var_2.check_Effects(Class_788) != null) {
            _loc3_ = Std.int(_loc3_ * 0.5);
        }
        if (var_2.check_Effects(Class_789) != null) {
            _loc3_ = Std.int(_loc3_ * 1.5);
        }
        var _loc4_:Class_16;
        (_loc4_ = new Class_223(param1, var_2, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc4_);
        Attack.increase_Speed(var_2, this.var_716);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_6;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

