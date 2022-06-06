package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_836 extends Class_732 {


    var var_427:Poke;

    var var_722:Int = 0;

    var var_719:Int = 0;

    var var_721:Int = 0;

    var var_720:Int = 0;

    var var_724:Int = 0;

    var var_13:Int = 0;

    var moveSelected:Int = 0;

    var shiny:Bool = false;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_427 = param1;
        super(param2, null, param3);
    }

    @:allow(code) override function init() {
        super.init();
        var_1.myProfile.transformed = true;
        var_1.myProfile.tnum = this.var_427.myProfile.num;
        var_1.myProfile.tmove1 = this.var_427.myProfile.move1;
        var_1.myProfile.tmove2 = this.var_427.myProfile.move2;
        var_1.myProfile.tmove3 = this.var_427.myProfile.move3;
        var_1.myProfile.tmove4 = this.var_427.myProfile.move4;
        var_1.myProfile.tnumMoves = this.var_427.myProfile.var_13;
        var_1.myProfile.tshiny = this.var_427.myProfile.shiny;
        var_1.myProfile.tmoveSelected = 1;
        Class_13.method_2(var_1.myProfile, true);
        var_1.set_Speed();
        var_1.init();
        var_1.reset_Attack();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        var_1.myProfile.transformed = false;
        Class_13.method_2(var_1.myProfile);
        var_1.set_Speed();
        var_1.init();
        var_1.reset_Attack();
    }
}

