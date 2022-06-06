package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.media.Sound;
import flash.media.SoundTransform;

class Class_6 {


    public var name:String;

    public var var_27:Int = 0;

    public var var_35:Int = 0;

    public var num:Int = 0;

    public var var_40:Int = 0;

    public var level:Int = 0;

    public var move1:Int = 0;

    public var move2:Int = 0;

    public var move3:Int = 0;

    public var move4:Int = 0;

    public var var_13:Int = 0;

    public var Class_17:Int = 0;

    public var moveSelected:Int = 0;

    public var var_26:Int = 0;

    public var var_16:Int = 0;

    public var var_30:Int = 0;

    public var var_23:Int = 0;

    public var var_28:Int = 0;

    public var var_24:Int = 0;

    public var mod_Attack:Float = 1;

    public var mod_Defense:Float = 1;

    public var mod_Special_Attack:Float = 1;

    public var mod_Special_Defense:Float = 1;

    public var mod_Speed:Float = 1;

    public var mod_Accuracy:Float = 1;

    public var var_655:Float = 1;

    public var mod_Evasion:Float = 1;

    public var crit_Chance:Float = 6;

    public var speed:Int = 0;

    public var types:Vector<Int>;

    public var var_39:Bool = true;

    public var var_48:Bool = true;

    public var shiny:Int = 0;

    public var var_77:Bool = false;

    public var transformed:Bool = false;

    public var dropCandy:Bool = false;

    public var tnum:Int = 0;

    public var tmove1:Int = 0;

    public var tmove2:Int = 0;

    public var tmove3:Int = 0;

    public var tmove4:Int = 0;

    public var tnumMoves:Int = 0;

    public var tmoveSelected:Int = 0;

    public var tshiny:Int = 0;

    public var var_728:Int = 0;

    public var exploded:Bool = false;

    public var var_298:Int = -1;

    public var var_666:Int = 0;

    public var var_301:String;

    public var var_107:Bool = false;

    public var var_283:Int = 1;

    public var myTag:String = "n";

    public var var_175:Int = 0;

    public var var_179:Int = 0;

    public var var_343:Int = 0;

    public var var_469:Int = 0;

    public var whichStone:Int = 0;

    public var var_486:Int = 0;

    public var pos:Int = 0;

    public var var_19:String;

    public var val:Class_11;

    public var saveInfo:Class_15;

    public var myAI:Class_14;

    public var var_490:Bool = false;

    public function new() {
        this.saveInfo = new Class_15();
    }

    @:allow(code) function level_Up() {
        var _loc3_:ASAny = null;
        ++this.level;
        ++this.var_469;
        this.val.method_356();
        this.saveInfo.var_642 = true;
        this.saveInfo.var_625 = true;
        this.var_40 = 0;
        var _loc1_:Sound = new LevelUpSound();
        var _loc2_ = _loc1_.play(0, 1);
        if (_loc2_ != null) {
            _loc3_ = new SoundTransform(Class_1.var_194);
            _loc2_.soundTransform = _loc3_;
        }
    }

    @:allow(code) function method_220():Bool {
        if (!ASCompat.stringAsBool(this.var_19)) {
            return true;
        }
        var _loc1_ = this.num - this.var_343;
        var _loc2_ = "" + _loc1_;
        var _loc3_ = "";
        var _loc4_ = 0;
        while (_loc4_ < _loc2_.length) {
            _loc3_ += this.method_273(_loc2_.charAt(_loc4_));
            _loc4_++;
        }
        if (_loc3_ == this.var_19) {
            return true;
        }
        return false;
    }

    @:allow(code) function method_273(param1:String):String {
        if (param1 == "0") {
            return "j";
        }
        if (param1 == "1") {
            return "e";
        }
        if (param1 == "2") {
            return "k";
        }
        if (param1 == "3") {
            return "x";
        }
        if (param1 == "4") {
            return "m";
        }
        if (param1 == "5") {
            return "i";
        }
        if (param1 == "6") {
            return "w";
        }
        if (param1 == "7") {
            return "v";
        }
        if (param1 == "8") {
            return "b";
        }
        if (param1 == "9") {
            return "p";
        }
        return "u";
    }

    public function is_Type(param1:Int):Bool {
        var _loc2_ = 0;
        var _loc3_ = 0;
        while (_loc3_ < this.types.length) {
            _loc2_ = this.types[_loc3_];
            if (_loc2_ == param1) {
                return true;
            }
            _loc3_++;
        }
        return false;
    }

    @:allow(code) function method_93():Float {
        var _loc1_:ASAny = this.var_40 / Class_19.method_177(this.level);
        if (_loc1_ >= 1) {
            _loc1_ = 1;
        }
        return _loc1_;
    }

    @:allow(code) function method_114():Bool {
        if (this.level >= Class_875.const_228) {
            return false;
        }
        if (this.method_93() >= 1) {
            return true;
        }
        return false;
    }

    @:allow(code) function evolve() {
        if (this.var_301 == this.name) {
            this.var_301 = null;
        }
        if (this.num == Class_13.const_32) {
            if (this.whichStone == Class_13.const_182) {
                this.num = Class_13.const_72;
                this.var_343 = 3;
                this.val.method_69(3);
            }
            else if (this.whichStone == Class_13.const_176) {
                ++this.num;
                ++this.var_343;
                this.val.method_69();
            }
            else if (this.whichStone == Class_13.const_175) {
                this.num = Class_13.const_41;
                this.var_343 = 2;
                this.val.method_69(2);
            }
        }
        else {
            ++this.num;
            ++this.var_343;
            this.val.method_69();
        }
        this.saveInfo.var_645 = true;
        this.saveInfo.var_680 = true;
        Class_13.method_2(this);
    }

    @:allow(code) function add_Attack(param1:Int):Bool {
        this.saveInfo.var_635 = true;
        if (this.move1 == 0) {
            this.move1 = param1;
            return true;
        }
        if (this.move2 == 0) {
            this.move2 = param1;
            this.var_13 = 2;
            return true;
        }
        if (this.move3 == 0) {
            this.move3 = param1;
            this.var_13 = 3;
            return true;
        }
        if (this.move4 == 0) {
            this.move4 = param1;
            this.var_13 = 4;
            return true;
        }
        return false;
    }

    public function method_154() {
        this.mod_Attack = 1;
        this.mod_Defense = 1;
        this.mod_Special_Attack = 1;
        this.mod_Special_Defense = 1;
        this.mod_Speed = 1;
        this.mod_Accuracy = 1;
        this.mod_Evasion = 1;
        this.var_655 = 1;
        this.crit_Chance = 6;
    }
}

