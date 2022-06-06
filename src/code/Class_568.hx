package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_568 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Powder Snow";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 40;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_18;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        super.do_Attack(param1);
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 10) {
            if (param1.check_Effects(Class_796) == null && !param1.myProfile.is_Type(Class_13.const_18)) {
                _loc3_ = new Class_796(param1, 0);
                param1.add_Effect(_loc3_);
            }
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_733(var_2, new Do_Powder_Snow());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return 22;
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }
}

