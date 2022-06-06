package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_575 extends Class_194 {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Close Combat";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc6_:ASAny = null;
        var _loc7_:ASAny = null;
        var _loc2_ = method_3(param1);
        var _loc3_:Class_16 = new Class_311(param1, var_2, _loc2_);
        _loc3_.var_12 = var_12;
        param1.add_Effect(_loc3_);
        var _loc4_:Class_16;
        if ((_loc4_ = var_2.check_Effects(Class_808)) != null) {
            _loc4_.remove_Me();
        }
        else if (!(_loc6_ = var_2.check_Effects(Class_807))) {
            var_2.add_Effect(new Class_807(var_2, Class_575.name_1));
        }
        var _loc5_:Class_16;
        if ((_loc5_ = var_2.check_Effects(Class_803)) != null) {
            _loc5_.remove_Me();
        }
        else if (!(_loc7_ = var_2.check_Effects(Class_810))) {
            var_2.add_Effect(new Class_810(var_2, Class_575.name_1));
        }
    }

    @:allow(code) override function get_Move_Power():Int {
        return 120;
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

