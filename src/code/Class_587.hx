package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_587 extends Class_194 {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Skull Bash";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 100;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc6_:ASAny = null;
        var _loc2_ = this.get_Move_Power();
        var _loc3_ = method_3(param1, _loc2_);
        var _loc4_:Class_16;
        (_loc4_ = new Class_769(param1, var_2, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc4_);
        if (var_2.check_Effects(Class_808) != null) {
            return;
        }
        var _loc5_:Class_16;
        if ((_loc5_ = var_2.check_Effects(Class_807)) != null) {
            _loc6_ = new Class_22(Class_22.const_17);
            _loc5_.remove_Me();
            return;
        }
        var_2.add_Effect(new Class_808(var_2, Class_587.name_1));
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

