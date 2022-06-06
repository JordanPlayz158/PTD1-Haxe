package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_515 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Discharge";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 80;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc2_ = method_3(param1);
        if (param1.check_Effects(Class_824) != null) {
            _loc2_ = Std.int(_loc2_ * 0.5);
        }
        method_13(param1, _loc2_, this.get_Target_Hit_Animation(param1));
        if (param1.check_Effects(Class_809) != null) {
            return;
        }
        var _loc3_ = Std.int(Math.random() * 100 + 1);
        if (_loc3_ <= 30 && !param1.myProfile.is_Type(Class_13.const_10)) {
            if (_loc4_ = param1.check_Effects(Class_806)) {
                _loc5_ = new Class_22(Class_22.const_11);
                _loc4_.remove_Me();
                return;
            }
            param1.add_Effect(new Class_202(param1));
        }
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_20;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        var _loc1_:GfxMovieClip = new Do_Discharge();
        return new Class_197(var_2, _loc1_);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        param1.add_Effect(new Class_197(param1, new Hit_Thunderbolt()));
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }

    @:allow(code) override function get_coolDown():Int {
        return 22;
    }
}

