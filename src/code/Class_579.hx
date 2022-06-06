package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_579 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Psyshock";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 80;
    }

    @:allow(code) override function get_Accurary():Int {
        return 100;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:Class_853 = new Class_866(cast(var_2.my_Parent, Class_875), param1, var_2, this);
        _loc2_.x = var_2.x;
        _loc2_.y = var_2.y;
        var_2.send_Msg(["add_path_effect", _loc2_]);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_14;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return 22;
    }
}

