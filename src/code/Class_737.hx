package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_737 extends Class_197 {


    @:allow(code) var abilityName:String;

    public function new(param1:Poke, param2:String) {
        this.abilityName = param2;
        super(param1, new Do_Ability());
    }

    @:allow(code) override function init() {
        super.init();
        gfx.actual.abilityName.text = this.abilityName;
    }
}

