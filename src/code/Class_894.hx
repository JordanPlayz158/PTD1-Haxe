package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.MouseEvent;
import flash.net.SharedObject;
import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import xyz.jordanplayz158.ptd1.SamURLVariables;

class Class_894 extends _Obj implements Class_3 {

    public static inline final const_25 = "http://www.sndgames.com/php/newAchieve.php";


    @:allow(code) var gfx_BG:GfxMovieClip;

    var var_127:Class_877;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_41:URLLoader;

    @:allow(code) var var_304:Class_6;

    @:allow(code) var var_37:Class_6;

    var var_240:SharedObject;

    var var_378:Array<ASAny>;

    var email:String;

    var pass:String;

    var onlineProfile:ASObject;

    var var_307:Int = 0;

    var PokeList:Array<ASAny>;

    var var_292:ASObject;

    public function new(param1:Class_878, param2:_Obj) {
        super(param2);
        this.currentProfile = param1;
        this.init();
    }

    public function add_Popup(param1:Class_877) {
        this.var_127 = param1;
        addChild(this.var_127);
    }

    public function method_24(param1:Class_877) {
        if (this.var_127 == param1) {
            removeChild(param1);
            this.var_127 = null;
        }
    }

    @:allow(code) function init() {
        this.gfx_BG = new Gfx_Screen_Pokedex();
        this.gfx_BG.back_butt.buttonMode = true;
        addChild(this.gfx_BG);
        this.email = this.currentProfile.var_553;
        this.pass = this.currentProfile.var_585;
        if (this.currentProfile.clevelCompleted < 3) {
            this.gfx_BG.gotoAndStop("must_beat");
            return;
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        if (this.gfx_BG.back_butt.contains(_loc2_)) {
            this.back_Pressed();
            return true;
        }
        if (this.gfx_BG.reward_one_butt && this.gfx_BG.reward_one_butt.contains(_loc2_)) {
            this.method_411();
            return true;
        }
        if (this.gfx_BG.reward_two_butt && this.gfx_BG.reward_two_butt.contains(_loc2_)) {
            this.method_354();
            return true;
        }
        if (this.gfx_BG.reward_three_butt && this.gfx_BG.reward_three_butt.contains(_loc2_)) {
            this.method_362();
            return true;
        }
        if (this.gfx_BG.reward_four_butt && this.gfx_BG.reward_four_butt.contains(_loc2_)) {
            this.method_224();
            return true;
        }
        if (this.gfx_BG.reward_five_butt && this.gfx_BG.reward_five_butt.contains(_loc2_)) {
            this.method_408();
            return true;
        }
        if (this.gfx_BG.reward_six_butt && this.gfx_BG.reward_six_butt.contains(_loc2_)) {
            this.method_349();
            return true;
        }
        if (this.gfx_BG.reward_seven_butt && this.gfx_BG.reward_seven_butt.contains(_loc2_)) {
            this.method_373();
            return true;
        }
        if (this.gfx_BG.reward_eight_butt && this.gfx_BG.reward_eight_butt.contains(_loc2_)) {
            this.method_298();
            return true;
        }
        if (this.gfx_BG.reward_nine_butt && this.gfx_BG.reward_nine_butt.contains(_loc2_)) {
            this.method_389();
            return true;
        }
        if (this.gfx_BG.reward_ten_butt && this.gfx_BG.reward_ten_butt.contains(_loc2_)) {
            this.method_310();
            return true;
        }
        if (this.gfx_BG.reward_eleven_butt && this.gfx_BG.reward_eleven_butt.contains(_loc2_)) {
            this.method_244();
            return true;
        }
        if (this.gfx_BG.reward_12_butt && this.gfx_BG.reward_12_butt.contains(_loc2_)) {
            this.method_306();
            return true;
        }
        if (this.gfx_BG.reward_13_butt && this.gfx_BG.reward_13_butt.contains(_loc2_)) {
            this.method_342();
            return true;
        }
        if (this.gfx_BG.reward_14_butt && this.gfx_BG.reward_14_butt.contains(_loc2_)) {
            this.method_357();
            return true;
        }
        if (this.gfx_BG.collection_butt && this.gfx_BG.collection_butt.contains(_loc2_)) {
            this.method_232();
            return true;
        }
        if (this.gfx_BG.achievement_butt && this.gfx_BG.achievement_butt.contains(_loc2_)) {
            this.method_207();
            return true;
        }
        if (this.gfx_BG.butt_left && this.gfx_BG.butt_left.contains(_loc2_)) {
            --this.var_307;
            this.method_89();
            return true;
        }
        if (this.gfx_BG.left_arrow_butt && this.gfx_BG.left_arrow_butt.contains(_loc2_)) {
            if (this.gfx_BG.currentLabel == "my_achievements_2") {
                this.gfx_BG.gotoAndStop("my_achievements");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_3") {
                this.gfx_BG.gotoAndStop("my_achievements_2");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_4") {
                this.gfx_BG.gotoAndStop("my_achievements_3");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_5") {
                this.gfx_BG.gotoAndStop("my_achievements_4");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_6") {
                this.gfx_BG.gotoAndStop("my_achievements_5");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_7") {
                this.gfx_BG.gotoAndStop("my_achievements_6");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_8") {
                this.gfx_BG.gotoAndStop("my_achievements_7");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_9") {
                this.gfx_BG.gotoAndStop("my_achievements_8");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_10") {
                this.gfx_BG.gotoAndStop("my_achievements_9");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_11") {
                this.gfx_BG.gotoAndStop("my_achievements_10");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_12") {
                this.gfx_BG.gotoAndStop("my_achievements_11");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_13") {
                this.gfx_BG.gotoAndStop("my_achievements_12");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_14") {
                this.gfx_BG.gotoAndStop("my_achievements_13");
            }
            this.method_98();
            return true;
        }
        if (this.gfx_BG.right_arrow_butt && this.gfx_BG.right_arrow_butt.contains(_loc2_)) {
            if (this.gfx_BG.currentLabel == "my_achievements_2") {
                this.gfx_BG.gotoAndStop("my_achievements_3");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements") {
                this.gfx_BG.gotoAndStop("my_achievements_2");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_3") {
                this.gfx_BG.gotoAndStop("my_achievements_4");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_4") {
                this.gfx_BG.gotoAndStop("my_achievements_5");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_5") {
                this.gfx_BG.gotoAndStop("my_achievements_6");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_6") {
                this.gfx_BG.gotoAndStop("my_achievements_7");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_7") {
                this.gfx_BG.gotoAndStop("my_achievements_8");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_8") {
                this.gfx_BG.gotoAndStop("my_achievements_9");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_9") {
                this.gfx_BG.gotoAndStop("my_achievements_10");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_10") {
                this.gfx_BG.gotoAndStop("my_achievements_11");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_11") {
                this.gfx_BG.gotoAndStop("my_achievements_12");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_12") {
                this.gfx_BG.gotoAndStop("my_achievements_13");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_13") {
                this.gfx_BG.gotoAndStop("my_achievements_14");
            }
            else if (this.gfx_BG.currentLabel == "my_achievements_14") {
                this.gfx_BG.gotoAndStop("my_achievements");
            }
            this.method_98();
            return true;
        }
        if (this.gfx_BG.butt_right && this.gfx_BG.butt_right.contains(_loc2_)) {
            ++this.var_307;
            this.method_89();
            return true;
        }
        return false;
    }

    @:allow(code) function method_411() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_One";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_354() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Two";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_362() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Three";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_224() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Four";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_408() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Five";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_349() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Six";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_373() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Seven";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_298() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Eight";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_389() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Nine";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_310() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_Ten";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_244() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_11";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_306() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_12";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_342() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_13";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_357() {
        this.gfx_BG.gotoAndStop("reward_get");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "get_Reward_14";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_232() {
        this.gfx_BG.gotoAndStop("my_collection");
        this.var_307 = 1;
        this.PokeList = this.method_410();
        this.method_89();
    }

    @:allow(code) function method_207() {
        this.gfx_BG.gotoAndStop("loading_info");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        var _loc3_ = new SamURLVariables();
        _loc3_.Action = "checkAccount";
        _loc3_.Email = this.email;
        _loc3_.Pass = this.pass;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.VARIABLES;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_17(param1:Event) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        var target:URLLoader = param1.target;
        var _loc2_:ASObject = target.data;
        this.var_292 = _loc2_;
        this.var_41 = null;
        if (_loc2_.Result == "Failure") {
            if (_loc2_.Reason == "DatabaseConnection") {
                this.gfx_BG.gotoAndStop("database_error");
            }
            else if (_loc2_.Reason == "NotFound") {
                this.gfx_BG.gotoAndStop("must_save");
            }
            else if (_loc2_.Reason == "NoReward") {
                this.gfx_BG.gotoAndStop("reward_no");
            }
        }
        else if (_loc2_.Result == "Success") {
            if (_loc2_.Reason == "GetAchive") {
                this.method_98();
            }
            else if (_loc2_.Reason == "getPrize2") {
                this.gfx_BG.gotoAndStop("reward_two");
                this.method_391();
            }
            else if (_loc2_.Reason == "getPrize1") {
                this.gfx_BG.gotoAndStop("reward_one");
                this.method_261();
            }
            else if (_loc2_.Reason == "getPrize3") {
                this.gfx_BG.gotoAndStop("reward_three");
                this.method_395();
            }
            else if (_loc2_.Reason == "getPrize4") {
                this.gfx_BG.gotoAndStop("reward_four");
            }
            else if (_loc2_.Reason == "getPrize5") {
                this.gfx_BG.gotoAndStop("reward_five");
            }
            else if (_loc2_.Reason == "getPrize6") {
                this.gfx_BG.gotoAndStop("reward_six");
                this.method_197();
            }
            else if (_loc2_.Reason == "getPrize7") {
                this.gfx_BG.gotoAndStop("reward_seven");
            }
            else if (_loc2_.Reason == "getPrize8") {
                this.gfx_BG.gotoAndStop("reward_eight");
            }
            else if (_loc2_.Reason == "getPrize9") {
                this.gfx_BG.gotoAndStop("reward_nine");
            }
            else if (_loc2_.Reason == "getPrize10") {
                this.gfx_BG.gotoAndStop("reward_ten");
            }
            else if (_loc2_.Reason == "getPrize11") {
                this.gfx_BG.gotoAndStop("reward_eleven");
            }
            else if (_loc2_.Reason == "getPrize12") {
                this.gfx_BG.gotoAndStop("reward_12");
            }
            else if (_loc2_.Reason == "getPrize13") {
                this.gfx_BG.gotoAndStop("reward_13");
            }
            else if (_loc2_.Reason == "getPrize14") {
                this.gfx_BG.gotoAndStop("reward_14");
            }
        }
    }

    @:allow(code) function method_16(param1:IOErrorEvent) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41 = null;
        this.gfx_BG.gotoAndStop("connection_error");
    }

    @:allow(code) function method_197() {
        if (this.currentProfile.haveThisExtraInfo("106")) {
            this.method_305();
        }
        else {
            this.method_382();
        }
    }

    @:allow(code) function method_305() {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_88;
        Class_13.method_2(_loc1_);
        _loc1_.level = 1;
        _loc1_.move1 = Class_9.var_256;
        _loc1_.var_13 = 1;
        _loc1_.moveSelected = 1;
        _loc1_.shiny = 1;
        _loc1_.var_35 = ++this.currentProfile.latestID;
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.var_40 = 0;
        _loc1_.val = new Class_11();
        _loc1_.val.reset(_loc1_);
        _loc1_.saveInfo.var_212 = true;
        _loc1_.saveInfo.var_154 = 153;
        if (_loc1_.name != "Hitmonlee") {
            return;
        }
        this.currentProfile.PokeList.push(_loc1_);
    }

    @:allow(code) function method_382() {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_81;
        Class_13.method_2(_loc1_);
        _loc1_.level = 1;
        _loc1_.move1 = Class_9.var_431;
        _loc1_.var_13 = 1;
        _loc1_.moveSelected = 1;
        _loc1_.shiny = 1;
        _loc1_.var_35 = ++this.currentProfile.latestID;
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.var_40 = 0;
        _loc1_.val = new Class_11();
        _loc1_.val.reset(_loc1_);
        _loc1_.saveInfo.var_212 = true;
        _loc1_.saveInfo.var_154 = 153;
        if (_loc1_.name != "Hitmonchan") {
            return;
        }
        this.currentProfile.PokeList.push(_loc1_);
    }

    @:allow(code) function method_391() {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_68;
        Class_13.method_2(_loc1_);
        _loc1_.level = 1;
        _loc1_.move1 = Class_9.var_45;
        _loc1_.move2 = Class_9.var_80;
        _loc1_.var_13 = 2;
        _loc1_.moveSelected = 1;
        _loc1_.shiny = 1;
        _loc1_.var_35 = ++this.currentProfile.latestID;
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.var_40 = 0;
        _loc1_.val = new Class_11();
        _loc1_.val.reset(_loc1_);
        _loc1_.saveInfo.var_212 = true;
        _loc1_.saveInfo.var_154 = 5;
        if (_loc1_.name != "Staryu") {
            return;
        }
        this.currentProfile.PokeList.push(_loc1_);
    }

    @:allow(code) function method_261() {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_16;
        Class_13.method_2(_loc1_);
        _loc1_.level = 1;
        _loc1_.move1 = Class_9.var_113;
        _loc1_.move2 = Class_9.var_45;
        _loc1_.move3 = Class_9.var_80;
        _loc1_.move4 = Class_9.var_424;
        _loc1_.var_13 = 4;
        _loc1_.moveSelected = 1;
        _loc1_.shiny = 1;
        _loc1_.var_35 = ++this.currentProfile.latestID;
        _loc1_.var_40 = 0;
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.val = new Class_11();
        _loc1_.saveInfo.var_212 = true;
        _loc1_.saveInfo.var_154 = 4;
        _loc1_.val.reset(_loc1_);
        if (_loc1_.name != "Onix") {
            return;
        }
        this.currentProfile.PokeList.push(_loc1_);
    }

    @:allow(code) function method_395() {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_50;
        Class_13.method_2(_loc1_);
        _loc1_.level = 1;
        _loc1_.move1 = Class_9.var_104;
        _loc1_.var_13 = 1;
        _loc1_.moveSelected = 1;
        _loc1_.shiny = 1;
        _loc1_.var_35 = ++this.currentProfile.latestID;
        _loc1_.var_40 = 0;
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.val = new Class_11();
        _loc1_.saveInfo.var_212 = true;
        _loc1_.saveInfo.var_154 = 3;
        _loc1_.val.reset(_loc1_);
        if (_loc1_.name != "Tentacool") {
            return;
        }
        this.currentProfile.PokeList.push(_loc1_);
    }

    @:allow(code) function method_98() {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        if (this.gfx_BG.currentLabel != "my_achievements" && this.gfx_BG.currentLabel != "my_achievements_2" && this.gfx_BG.currentLabel != "my_achievements_3" && this.gfx_BG.currentLabel != "my_achievements_4" && this.gfx_BG.currentLabel != "my_achievements_5" && this.gfx_BG.currentLabel != "my_achievements_6" && this.gfx_BG.currentLabel != "my_achievements_7" && this.gfx_BG.currentLabel != "my_achievements_8" && this.gfx_BG.currentLabel != "my_achievements_9" && this.gfx_BG.currentLabel != "my_achievements_10" && this.gfx_BG.currentLabel != "my_achievements_11" && this.gfx_BG.currentLabel != "my_achievements_12" && this.gfx_BG.currentLabel != "my_achievements_13" && this.gfx_BG.currentLabel != "my_achievements_14") {
            this.gfx_BG.gotoAndStop("my_achievements");
        }
        if (this.gfx_BG.currentLabel == "my_achievements") {
            _loc1_ = this.var_292.Ach1;
            _loc2_ = 0;
            while (_loc2_ < _loc1_.length) {
                if (_loc1_.charAt(_loc2_) == "0") {
                    (this.gfx_BG : ASAny)["check_" + (_loc2_ + 1)].gotoAndStop(2);
                }
                else {
                    (this.gfx_BG : ASAny)["check_" + (_loc2_ + 1)].gotoAndStop(1);
                }
                _loc2_++;
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_2") {
            _loc1_ = this.var_292.Ach2;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_3") {
            _loc1_ = this.var_292.Ach3;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_4") {
            _loc1_ = this.var_292.Ach4;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_5") {
            _loc1_ = this.var_292.Ach5;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_6") {
            _loc1_ = this.var_292.Ach6;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_7") {
            _loc1_ = this.var_292.Ach7;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_8") {
            _loc1_ = this.var_292.Ach8;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_9") {
            _loc1_ = this.var_292.Ach9;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_10") {
            _loc1_ = this.var_292.Ach10;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_11") {
            _loc1_ = this.var_292.Ach11;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_12") {
            _loc1_ = this.var_292.Ach12;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_13") {
            _loc1_ = this.var_292.Ach13;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
        else if (this.gfx_BG.currentLabel == "my_achievements_14") {
            _loc1_ = this.var_292.Ach14;
            if (_loc1_ == "0") {
                this.gfx_BG.check_1.gotoAndStop(2);
            }
            else if (_loc1_ == "1") {
                this.gfx_BG.check_1.gotoAndStop(1);
            }
        }
    }

    @:allow(code) function method_410():Array<ASAny> {
        var _loc5_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc7_:ASAny = null;
        var _loc2_:ASAny = [];
        var _loc3_ = 0;
        while (_loc3_ < 151) {
            _loc2_[_loc3_] = ["0", "0", "0"];
            _loc3_++;
        }
        _loc3_ = 0;
        while (_loc3_ < 151) {
            _loc5_ = this.currentProfile.var_454.charAt(_loc3_);
            _loc6_ = this.currentProfile.var_495.charAt(_loc3_);
            _loc7_ = this.currentProfile.var_457.charAt(_loc3_);
            _loc2_[_loc3_][0] = _loc5_;
            _loc2_[_loc3_][1] = _loc6_;
            _loc2_[_loc3_][2] = _loc7_;
            _loc3_++;
        }
        return this.method_184(_loc2_);
    }

    @:allow(code) function method_184(param1:Array<ASAny>):Array<ASAny> {
        this.method_15(param1, [Class_13.const_69, Class_13.const_95, Class_13.const_60]);
        this.method_15(param1, [Class_13.const_57, Class_13.const_36, Class_13.const_46]);
        this.method_15(param1, [Class_13.const_66, Class_13.const_112, Class_13.const_75]);
        this.method_15(param1, [Class_13.const_65, Class_13.const_35, Class_13.const_39]);
        this.method_15(param1, [Class_13.const_123, Class_13.const_33, Class_13.const_43]);
        this.method_15(param1, [Class_13.const_37, Class_13.const_104, Class_13.const_28]);
        this.method_15(param1, [Class_13.const_135, Class_13.const_29]);
        this.method_15(param1, [Class_13.const_96, Class_13.const_47]);
        this.method_15(param1, [Class_13.const_97, Class_13.const_34]);
        this.method_15(param1, [Class_13.const_53, Class_13.const_30]);
        this.method_15(param1, [Class_13.const_89, Class_13.const_31]);
        this.method_15(param1, [Class_13.const_156, Class_13.const_132, Class_13.const_45]);
        this.method_15(param1, [Class_13.const_139, Class_13.const_145, Class_13.const_48]);
        this.method_15(param1, [Class_13.const_136, Class_13.const_78]);
        this.method_15(param1, [Class_13.const_128, Class_13.const_71]);
        this.method_15(param1, [Class_13.const_114, Class_13.const_77]);
        this.method_15(param1, [Class_13.const_70, Class_13.const_19]);
        this.method_15(param1, [Class_13.const_54, Class_13.const_102, Class_13.const_40]);
        this.method_15(param1, [Class_13.const_101, Class_13.const_105]);
        this.method_15(param1, [Class_13.const_58, Class_13.const_83]);
        this.method_15(param1, [Class_13.const_131, Class_13.const_130]);
        this.method_15(param1, [Class_13.const_38, Class_13.const_99]);
        this.method_15(param1, [Class_13.const_76, Class_13.const_42]);
        this.method_15(param1, [Class_13.const_169, Class_13.const_115]);
        this.method_15(param1, [Class_13.const_80, Class_13.const_62]);
        this.method_15(param1, [Class_13.const_119, Class_13.const_82, Class_13.const_86]);
        this.method_15(param1, [Class_13.const_49, Class_13.const_56, Class_13.const_109]);
        this.method_15(param1, [Class_13.const_79, Class_13.const_126, Class_13.const_21]);
        this.method_15(param1, [Class_13.const_106, Class_13.const_124, Class_13.const_44]);
        this.method_15(param1, [Class_13.const_125, Class_13.const_50]);
        this.method_15(param1, [Class_13.const_51, Class_13.const_116, Class_13.const_12]);
        this.method_15(param1, [Class_13.const_162, Class_13.const_84]);
        this.method_15(param1, [Class_13.const_113, Class_13.const_64]);
        this.method_15(param1, [Class_13.const_74, Class_13.const_98]);
        this.method_15(param1, [Class_13.const_173, Class_13.const_67]);
        this.method_15(param1, [Class_13.const_152, Class_13.const_122]);
        this.method_15(param1, [Class_13.const_143, Class_13.const_154]);
        this.method_15(param1, [Class_13.const_63, Class_13.const_137]);
        this.method_15(param1, [Class_13.const_166, Class_13.const_153]);
        this.method_15(param1, [Class_13.const_150, Class_13.const_159]);
        this.method_15(param1, [Class_13.const_133, Class_13.const_129, Class_13.const_85]);
        this.method_15(param1, [Class_13.const_55, Class_13.const_107]);
        this.method_15(param1, [Class_13.const_141, Class_13.const_61]);
        this.method_15(param1, [Class_13.const_73, Class_13.const_23]);
        this.method_15(param1, [Class_13.const_100, Class_13.const_94]);
        this.method_15(param1, [Class_13.const_120, Class_13.const_93]);
        this.method_15(param1, [Class_13.const_155, Class_13.const_87]);
        this.method_15(param1, [Class_13.const_111, Class_13.const_68]);
        this.method_15(param1, [Class_13.const_103, Class_13.const_91]);
        this.method_15(param1, [Class_13.const_90, Class_13.const_32]);
        this.method_15(param1, [Class_13.const_41, Class_13.const_32]);
        this.method_15(param1, [Class_13.const_72, Class_13.const_32]);
        this.method_15(param1, [Class_13.const_168, Class_13.const_59]);
        this.method_15(param1, [Class_13.const_161, Class_13.const_138]);
        this.method_15(param1, [Class_13.const_164, Class_13.const_140]);
        this.method_15(param1, [Class_13.const_147, Class_13.const_108, Class_13.const_134]);
        return param1;
    }

    @:allow(code) function method_15(param1:Array<ASAny>, param2:Array<ASAny>):Array<ASAny> {
        var _loc3_ = 0;
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc7_:ASAny = null;
        var _loc8_ = 0;
        while (_loc8_ < param2.length) {
            _loc3_ = param2[_loc8_] - 1;
            _loc4_ = param1[_loc3_];
            if (_loc8_ == 0) {
                _loc5_ = _loc4_[0];
                _loc6_ = _loc4_[1];
                _loc7_ = _loc4_[2];
            }
            else {
                if (_loc4_[0] == "1") {
                    _loc5_ = _loc4_[0];
                }
                else {
                    _loc4_[0] = _loc5_;
                }
                if (_loc4_[1] == "1") {
                    _loc6_ = _loc4_[1];
                }
                else {
                    _loc4_[1] = _loc6_;
                }
                if (_loc4_[2] == "1") {
                    _loc7_ = _loc4_[2];
                }
                else {
                    _loc4_[2] = _loc7_;
                }
            }
            _loc8_++;
        }
        return param1;
    }

    @:allow(code) function method_89() {
        var _loc1_:ASAny = null;
        var _loc6_ = 0;
        var _loc3_ = 40 * (this.var_307 - 1) + 1;
        var _loc4_ = 40 * this.var_307;
        this.gfx_BG.arrow_left.visible = false;
        this.gfx_BG.arrow_right.visible = false;
        this.gfx_BG.butt_left.visible = false;
        this.gfx_BG.butt_right.visible = false;
        if (this.var_307 == 1) {
            this.gfx_BG.arrow_right.visible = true;
            this.gfx_BG.butt_right.visible = true;
        }
        else if (this.var_307 == 4) {
            this.gfx_BG.arrow_left.visible = true;
            this.gfx_BG.butt_left.visible = true;
        }
        else {
            this.gfx_BG.arrow_left.visible = true;
            this.gfx_BG.arrow_right.visible = true;
            this.gfx_BG.butt_left.visible = true;
            this.gfx_BG.butt_right.visible = true;
        }
        var _loc5_ = new Class_6();
        var _loc7_ = _loc3_;
        while (_loc7_ <= _loc4_) {
            _loc6_ = _loc7_ - 40 * (this.var_307 - 1);
            _loc1_ = (this.gfx_BG : ASAny)["Poke_" + _loc6_];
            _loc1_.Poke_name.visible = false;
            _loc1_.Pokeball.visible = false;
            _loc1_.Pokeball_shiny.visible = false;
            _loc1_.Pokeball_shadow.visible = false;
            if (_loc7_ > 151) {
                _loc1_.visible = false;
            }
            else {
                _loc1_.visible = true;
                if (this.PokeList[_loc7_ - 1][0] == "1" || this.PokeList[_loc7_ - 1][1] == "1" || this.PokeList[_loc7_ - 1][2] == "1") {
                    _loc5_.num = _loc7_;
                    Class_13.method_2(_loc5_);
                    _loc1_.Poke_name.text = _loc5_.name;
                    _loc1_.Poke_name.visible = true;
                    if (this.PokeList[_loc7_ - 1][0] == "1") {
                        _loc1_.Pokeball.visible = true;
                    }
                    if (this.PokeList[_loc7_ - 1][1] == "1") {
                        _loc1_.Pokeball_shiny.visible = true;
                    }
                    if (this.PokeList[_loc7_ - 1][2] == "1") {
                        _loc1_.Pokeball_shadow.visible = true;
                    }
                }
            }
            _loc7_++;
        }
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_892(this.currentProfile, my_Parent, true);
        send_Msg(["change_Screen", _loc1_]);
    }
}

