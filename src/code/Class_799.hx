package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_799 extends Class_732 {


    public function new(param1:Poke, param2:Int) {
        super(param1, new Do_Drop_Candy(), param2);
    }

    @:allow(code) override function init() {
        super.init();
        var_1.myProfile.dropCandy = true;
    }

    @:allow(code) override function remove_Me() {
        var_1.myProfile.dropCandy = false;
        super.remove_Me();
    }
}

