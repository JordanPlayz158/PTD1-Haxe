package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.net.*;
import xyz.jordanplayz158.ptd1.SamURLVariables;

class Class_878 extends _Obj {
	public static inline final const_3 = 1;

	public static inline final const_4 = 2;

	public static inline final const_184:Float = 750;

	@:allow(code) var money:Int = 50;

	@:allow(code) var latestID:Int = 0;

	public var partyList:Vector<Class_6>;

	public var PokeList:Vector<Class_6>;

	public var fightList:Vector<Class_6>;

	@:allow(code) var levelUnlocked:Int = 0;

	@:allow(code) var var_123:Int = 0;

	@:allow(code) var var_172:Int = 0;

	@:allow(code) var var_7:String;

	public var currentVersion:Int = 0;

	public var badges:Int = 0;

	public var inventory:Array<ASAny>;

	@:allow(code) var clevelCompleted:Int = 0;

	@:allow(code) var NPCTrade:String = "0";

	@:allow(code) var clevel1CodeUsed:String = "0";

	@:allow(code) var var_148:ASObject;

	public var var_553:String;

	public var var_585:String;

	public var myAvatarGender:String;

	public var myAvatarStyle:Int = 0;

	public var haveFlash:Int = 0;

	public var extraInfo:Array<ASAny>;

	public var reset:Bool = false;

	public var var_454:String;

	public var var_495:String;

	public var var_457:String;

	public var releaseList:Array<ASAny>;

	public var var_641:Bool = false;

	public var var_714:String;

	public function new(param1:_Obj, param2:ASObject, param3:Int = 1) {
		super(param1);
		this.var_148 = param2;
		this.var_172 = param3;
		this.init();
	}

	@:allow(code) function haveThisExtraInfo(param1:String):Bool {
		var _loc2_:ASAny = null;
		var _loc3_ = 0;
		while (_loc3_ < this.extraInfo.length) {
			_loc2_ = this.extraInfo[_loc3_];
			if (_loc2_ == param1) {
				return true;
			}
			_loc3_++;
		}
		return false;
	}

	@:allow(code) function method_198():String {
		var _loc2_ = false;
		var _loc3_:ASAny = null;
		var _loc1_:ASAny = "";
		if (this.extraInfo == null) {
			return _loc1_;
		}
		var _loc4_ = 0;
		while (_loc4_ < this.extraInfo.length) {
			_loc3_ = this.extraInfo[_loc4_];
			if (!(!_loc3_ || _loc3_ == "0" || _loc3_ == "")) {
				if (_loc2_) {
					_loc1_ += "|";
				}
				_loc2_ = true;
				_loc1_ += this.extraInfo[_loc4_];
			}
			_loc4_++;
		}
		return _loc1_;
	}

	@:allow(code) function method_372(param1:String) {
		this.extraInfo = (cast param1.split("|"));
	}

	@:allow(code) function method_146():Bool {
		var _loc1_:ASAny = null;
		var _loc2_ = 0;
		var _loc3_ = 0;
		var _loc4_ = 0;
		while (_loc4_ < this.PokeList.length) {
			_loc1_ = this.PokeList[_loc4_];
			if (!_loc1_.method_220()) {
				return true;
			}
			_loc2_ = _loc1_.var_175 + _loc1_.var_343;
			_loc3_ = _loc1_.var_179 + _loc1_.var_469;
			if (_loc1_.num != _loc2_) {
				return true;
			}
			if (_loc1_.level != _loc3_) {
				return true;
			}
			if (_loc1_.val) {
				if (!_loc1_.val.method_313(_loc1_.num, _loc1_.level, _loc1_.shiny)) {
					return true;
				}
			}
			_loc4_++;
		}
		return false;
	}

	@:allow(code) function method_192(param1:SamURLVariables) {
		var _loc2_:ASAny = null;
		var _loc3_ = 0;
		while (_loc3_ < this.PokeList.length) {
			_loc2_ = this.PokeList[_loc3_];
			if (_loc2_.var_486 == 0) {
				_loc2_.var_486 = (param1 : ASAny)["newPokePos_" + _loc2_.pos];
			}
			_loc3_++;
		}
	}

	@:allow(code) function save_Profile():String {
		var _loc8_ = 0;
		var _loc10_:ASAny = null;
		var _loc15_:ASAny = null;
		var _loc18_ = 0;
		var _loc1_ = new Class_18();
		var _loc2_:Array<ASAny> = (cast this.var_454.split(""));
		var _loc3_:Array<ASAny> = (cast this.var_495.split(""));
		var _loc4_:Array<ASAny> = (cast this.var_457.split(""));
		var _loc5_:ASAny = "currentSave=" + this.var_148.CurrentSave;
		var _loc6_ = Std.int(Math.random() * 90000 + 333);
		var _loc7_ = _loc1_.method_137(this.var_148.CurrentSave, _loc6_);
		if (this.var_641) {
			_loc5_ += "&newGame=yes";
		}
		_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ += "&whichProfile="
			+ this.var_172)
			+ ("&badges=" + this.badges))
			+ ("&myTID=" + _loc6_))
			+ ("&challenge=" + this.clevelCompleted))
			+ ("&a_story=" + this.levelUnlocked))
			+ ("&a_story_a=" + this.var_123))
			+ ("&c_story=" + this.haveFlash))
			+ ("&c_story_a=" + this.method_198()))
			+ ("&NPCTrade=" + this.NPCTrade))
			+ "&ShinyHunt=0")
			+ ("&Money=" + this.money))
			+ ("&Nickname=" + this.var_7))
			+ ("&myVID=" + _loc7_))
			+ ("&Version=" + this.currentVersion);
		var _loc9_ = "None";
		if (this.myAvatarStyle != 0) {
			if (this.myAvatarGender == "boy") {
				_loc9_ = "b_" + this.myAvatarStyle;
			} else if (this.myAvatarGender == "girl") {
				_loc9_ = "g_" + this.myAvatarStyle;
			}
		}
		_loc5_ += "&Avatar=" + _loc9_;
		var _loc16_ = 0;
		var loc10Num:Int = _loc10_.num;
		while (_loc16_ < this.PokeList.length) {
			if ((_loc10_ = this.PokeList[_loc16_]).shiny == 2) {
				if (loc10Num <= 151) {
					_loc4_[loc10Num - 1] = 1;
				}
			} else if (_loc10_.shiny == 1) {
				if (loc10Num <= 151) {
					_loc3_[loc10Num - 1] = 1;
				}
			} else if (loc10Num <= 151) {
				_loc2_[loc10Num - 1] = 1;
			}
			_loc15_ = "";
			_loc8_++;
			_loc10_.pos = _loc16_ + 1;
			if (_loc10_.saveInfo.var_212) {
				_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ += "&Poke"
					+ _loc8_ + "_reason=cap")
					+ ("&Poke" + _loc8_ + "_num=" + _loc10_.num))
					+ ("&Poke" + _loc8_ + "_nickname=" + _loc10_.var_301))
					+ ("&Poke" + _loc8_ + "_exp=" + _loc10_.var_40))
					+ ("&Poke" + _loc8_ + "_lvl=" + _loc10_.level))
					+ ("&Poke" + _loc8_ + "_m1=" + _loc10_.move1))
					+ ("&Poke" + _loc8_ + "_m2=" + _loc10_.move2))
					+ ("&Poke" + _loc8_ + "_m3=" + _loc10_.move3))
					+ ("&Poke" + _loc8_ + "_m4=" + _loc10_.move4))
					+ ("&Poke" + _loc8_ + "_ability=" + _loc10_.Class_17))
					+ ("&Poke" + _loc8_ + "_mSel=" + _loc10_.moveSelected))
					+ ("&Poke" + _loc8_ + "_targetType=" + _loc10_.var_283))
					+ ("&Poke" + _loc8_ + "_tag=" + _loc10_.myTag))
					+ ("&Poke" + _loc8_ + "_item=0"))
					+ ("&Poke" + _loc8_ + "_owner=" + _loc10_.var_666))
					+ ("&Poke" + _loc8_ + "_myID=" + _loc10_.var_486))
					+ ("&Poke" + _loc8_ + "_pos=" + _loc10_.pos))
					+ ("&Poke" + _loc8_ + "_extra=" + _loc10_.saveInfo.var_154);
			} else if (_loc10_.saveInfo.var_528) {
				_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ += "&Poke"
					+ _loc8_ + "_reason=trade")
					+ ("&Poke" + _loc8_ + "_num=" + _loc10_.num))
					+ ("&Poke" + _loc8_ + "_nickname=" + _loc10_.var_301))
					+ ("&Poke" + _loc8_ + "_exp=" + _loc10_.var_40))
					+ ("&Poke" + _loc8_ + "_lvl=" + _loc10_.level))
					+ ("&Poke" + _loc8_ + "_m1=" + _loc10_.move1))
					+ ("&Poke" + _loc8_ + "_m2=" + _loc10_.move2))
					+ ("&Poke" + _loc8_ + "_m3=" + _loc10_.move3))
					+ ("&Poke" + _loc8_ + "_m4=" + _loc10_.move4))
					+ ("&Poke" + _loc8_ + "_ability=" + _loc10_.Class_17))
					+ ("&Poke" + _loc8_ + "_mSel=" + _loc10_.moveSelected))
					+ ("&Poke" + _loc8_ + "_targetType=" + _loc10_.var_283))
					+ ("&Poke" + _loc8_ + "_tag=" + _loc10_.myTag))
					+ ("&Poke" + _loc8_ + "_item=0"))
					+ ("&Poke" + _loc8_ + "_owner=" + _loc10_.var_666))
					+ ("&Poke" + _loc8_ + "_myID=" + _loc10_.var_486))
					+ ("&Poke" + _loc8_ + "_pos=" + _loc10_.pos);
			} else {
				if (_loc10_.saveInfo.var_645) {
					_loc15_ = "evolve";
					_loc5_ = (_loc5_ += "&Poke" + _loc8_ + "_num=" + _loc10_.num) + ("&Poke" + _loc8_ + "_nickname=" + _loc10_.var_301);
				}
				if (_loc10_.saveInfo.var_625) {
					if (_loc15_ != "") {
						_loc15_ += "|";
					}
					_loc15_ += "exp";
					_loc5_ += "&Poke" + _loc8_ + "_exp=" + _loc10_.var_40;
				}
				if (_loc10_.saveInfo.var_401) {
					if (_loc15_ != "") {
						_loc15_ += "|";
					}
					_loc15_ += "pos";
					_loc5_ += "&Poke" + _loc8_ + "_pos=" + _loc10_.pos;
				}
				if (_loc10_.saveInfo.var_642) {
					if (_loc15_ != "") {
						_loc15_ += "|";
					}
					_loc15_ += "lvl";
					_loc5_ += "&Poke" + _loc8_ + "_lvl=" + _loc10_.level;
				}
				if (_loc10_.saveInfo.var_635) {
					if (_loc15_ != "") {
						_loc15_ += "|";
					}
					_loc15_ += "moves";
					_loc5_ = (_loc5_ = (_loc5_ = (_loc5_ += "&Poke" + _loc8_ + "_m1=" + _loc10_.move1) + ("&Poke" + _loc8_ + "_m2=" + _loc10_.move2))
						+ ("&Poke" + _loc8_ + "_m3=" + _loc10_.move3))
						+ ("&Poke" + _loc8_ + "_m4=" + _loc10_.move4);
				}
				if (_loc10_.saveInfo.needTag) {
					if (_loc15_ != "") {
						_loc15_ += "|";
					}
					_loc15_ += "tag";
					_loc5_ += "&Poke" + _loc8_ + "_tag=" + _loc10_.myTag;
				}
				if (_loc10_.saveInfo.var_646) {
					if (_loc15_ != "") {
						_loc15_ += "|";
					}
					_loc15_ += "target";
					_loc5_ += "&Poke" + _loc8_ + "_targetType=" + _loc10_.var_283;
				}
				if (_loc10_.saveInfo.needMoveSelected) {
					if (_loc15_ != "") {
						_loc15_ += "|";
					}
					_loc15_ += "mSel";
					_loc5_ += "&Poke" + _loc8_ + "_mSel=" + _loc10_.moveSelected;
				}
				if (_loc15_ == "") {
					_loc8_--;
				} else {
					_loc5_ = (_loc5_ += "&Poke" + _loc8_ + "_reason=" + _loc15_) + ("&Poke" + _loc8_ + "_myID=" + _loc10_.var_486);
				}
			}
			_loc16_++;
		}
		_loc5_ += "&HMP=" + _loc8_;
		var _loc17_:ASAny = "";
		if (this.releaseList != null) {
			_loc16_ = 0;
			while (_loc16_ < this.releaseList.length) {
				if (_loc17_ != "") {
					_loc17_ += "|";
				}
				_loc17_ += "" + this.releaseList[_loc16_];
				_loc16_++;
			}
		}
		if (_loc17_ != "") {
			_loc5_ += "&releasePoke=" + _loc17_;
		}
		var _loc19_ = this.inventory.length;
		_loc5_ += "&HMI=" + _loc19_;
		_loc16_ = 1;
		while (_loc16_ <= _loc19_) {
			_loc5_ += "&item" + _loc16_ + "_num=" + this.inventory[_loc16_ - 1];
			_loc18_ += this.inventory[_loc16_ - 1];
			_loc16_++;
		}
		this.var_454 = "";
		_loc16_ = 0;
		while (_loc16_ < _loc2_.length) {
			this.var_454 += _loc2_[_loc16_];
			_loc16_++;
		}
		this.var_495 = "";
		_loc16_ = 0;
		while (_loc16_ < _loc3_.length) {
			this.var_495 += _loc3_[_loc16_];
			_loc16_++;
		}
		var _loc20_ = 0;
		while (_loc20_ < _loc4_.length) {
			if (_loc4_[_loc20_] != "1") {
				if (_loc4_[_loc20_] != "0") {
					_loc4_[_loc20_] = "0";
				}
			}
			_loc20_++;
		}
		this.var_457 = "";
		_loc16_ = 0;
		while (_loc16_ < _loc4_.length) {
			this.var_457 += _loc4_[_loc16_];
			_loc16_++;
		}
		return (_loc5_ = (_loc5_ += "&dex1=" + this.var_454) + ("&dex1Shiny=" + this.var_495)) + ("&dex1Shadow=" + this.var_457);
	}

	@:allow(code) function method_406() {
		var _loc1_:ASAny = null;
		var _loc2_ = 0;
		while (_loc2_ < this.PokeList.length) {
			_loc1_ = this.PokeList[_loc2_];
			_loc1_.saveInfo.reset();
			_loc2_++;
		}
	}

	@:allow(code) function init() {
		this.method_86();
		this.reset_Fight_List();
		this.method_279();
	}

	@:allow(code) function reset_Fight_List() {
		this.fightList = new Vector<Class_6>();
	}

	@:allow(code) function method_189() {
		var _loc1_:ASAny = null;
		var _loc2_ = 0;
		while (_loc2_ < this.partyList.length) {
			_loc1_ = this.partyList[_loc2_];
			if (_loc1_) {
				_loc1_.var_298 = -1;
			}
			_loc2_++;
		}
	}

	@:allow(code) function method_86() {
		this.partyList = new Vector<Class_6>();
		var _loc1_ = 0;
		while (_loc1_ < 6) {
			this.partyList.push(null);
			_loc1_++;
		}
	}

	@:allow(code) function method_425(param1:String = null) {
		var _loc3_:ASAny = null;
		var _loc4_ = 0;
		var _loc2_:Array<ASAny> = (cast param1.split("|"));
		var _loc5_ = 0;
		while (_loc5_ < _loc2_.length) {
			_loc4_ = _loc2_[_loc5_];
			_loc3_ = this.method_249(_loc4_);
			if (_loc3_) {
				this.partyList[_loc5_] = _loc3_;
			}
			_loc5_++;
		}
	}

	@:allow(code) function method_249(param1:Int):Class_6 {
		var _loc2_:ASAny = null;
		var _loc3_ = 0;
		while (_loc3_ < this.PokeList.length) {
			_loc2_ = this.PokeList[_loc3_];
			if (_loc2_.var_35 == param1) {
				return _loc2_;
			}
			_loc3_++;
		}
		return null;
	}

	@:allow(code) function method_365(param1:String) {
		if (param1 == "None") {
			return;
		}
		var _loc2_:Array<ASAny> = (cast param1.split("_"));
		if (_loc2_[0] == "b") {
			this.myAvatarGender = "boy";
		} else if (_loc2_[0] == "g") {
			this.myAvatarGender = "girl";
		}
		if (ASCompat.stringAsBool(this.myAvatarGender)) {
			this.myAvatarStyle = ASCompat.toInt(_loc2_[1]);
		}
	}

	@:allow(code) function method_279() {
		var _loc1_:ASAny = null;
		var _loc2_ = 0;
		var _loc5_ = 0;
		var _loc6_:ASAny = null;
		var _loc7_:ASAny = null;
		var _loc8_ = 0;
		var _loc11_ = 0;
		var _loc12_:ASAny = null;
		this.PokeList = new Vector<Class_6>();
		var _loc3_:Int = this.var_148["p" + this.var_172 + "_numPoke"];
		if (_loc3_ != 0) {
			this.currentVersion = this.var_148["Version" + this.var_172];
			this.levelUnlocked = this.var_148["Advanced" + this.var_172];
			this.haveFlash = this.var_148["Classic" + this.var_172];
			this.method_372(this.var_148["Classic" + this.var_172 + "_a"]);
			this.var_123 = this.var_148["Advanced" + this.var_172 + "_a"];
			this.clevelCompleted = this.var_148["Challenge" + this.var_172];
			this.money = this.var_148["Money" + this.var_172];
			this.badges = this.var_148["Badges" + this.var_172];
			this.NPCTrade = this.var_148["NPCTrade" + this.var_172];
		}
		this.var_454 = this.var_148["dex1"];
		this.var_495 = this.var_148["dex1Shiny"];
		this.var_457 = this.var_148["dex1Shadow"];
		this.inventory = [];
		var _loc4_:Int;
		if ((_loc4_ = this.var_148["p" + this.var_172 + "_numItem"]) != 0) {
			_loc11_ = 1;
			while (_loc11_ <= _loc4_) {
				_loc5_ = this.var_148["p" + this.var_172 + "_item_" + _loc11_ + "_num"];
				this.inventory.push(_loc5_);
				_loc11_++;
			}
		}
		this.method_365(this.var_148["avatar" + this.var_172]);
		this.var_7 = this.var_148["Nickname" + this.var_172];
		this.var_714 = this.var_148["accNickname"];
		var _loc9_ = 1;
		while (_loc9_ <= _loc3_) {
			_loc1_ = new Class_6();
			_loc6_ = new Class_11();
			_loc1_.val = _loc6_;
			_loc7_ = "";
			_loc1_.var_35 = _loc9_;
			this.latestID = _loc1_.var_35;
			_loc1_.var_301 = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_nickname"];
			_loc1_.num = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_num"];
			_loc1_.level = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_lvl"];
			_loc1_.var_40 = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_exp"];
			_loc1_.var_666 = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_owner"];
			_loc1_.var_283 = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_targetType"];
			_loc1_.myTag = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_tag"];
			_loc1_.var_486 = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_myID"];
			_loc1_.pos = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_pos"];
			_loc1_.var_13 = 4;
			_loc1_.var_179 = _loc1_.level;
			_loc1_.var_175 = _loc1_.num;
			if ((_loc12_ = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_noWay"]) == "0") {
				_loc1_.shiny = 0;
			} else if (_loc12_ == "1") {
				_loc8_++;
				_loc1_.shiny = 1;
			} else if (_loc12_ == "2") {
				_loc1_.shiny = 2;
			}
			_loc6_.reset(_loc1_);
			_loc2_ = 1;
			while (_loc2_ <= 4) {
				_loc1_["move" + _loc2_] = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_m" + _loc2_];
				_loc2_++;
			}
			_loc1_.moveSelected = this.var_148["p" + this.var_172 + "_Poke_" + _loc9_ + "_mSel"];
			Class_13.method_2(_loc1_);
			this.PokeList.push(_loc1_);
			_loc9_++;
		}
		var _loc10_:Int;
		if ((_loc10_ = this.var_148["p" + this.var_172 + "_hs"]) != _loc8_) {
			this.reset = true;
		}
		this.method_264();
	}

	@:allow(code) function method_264() {
		var _loc2_:ASAny = null;
		var _loc5_ = 0;
		var _loc1_ = new Vector<Class_6>();
		var _loc3_ = this.PokeList.length;
		var _loc4_ = 1;
		while (_loc4_ <= _loc3_) {
			_loc5_ = 0;
			while (_loc5_ < this.PokeList.length) {
				_loc2_ = this.PokeList[_loc5_];
				if (_loc2_.pos == _loc4_) {
					this.PokeList.splice(_loc5_, 1);
					_loc1_.push(_loc2_);
					break;
				}
				_loc5_++;
			}
			_loc4_++;
		}
		if (_loc1_.length < _loc3_) {
			_loc5_ = 0;
			while (_loc5_ < this.PokeList.length) {
				_loc2_ = this.PokeList[_loc5_];
				_loc1_.push(_loc2_);
				_loc5_++;
			}
			_loc5_ = 0;
			while (_loc5_ < _loc1_.length) {
				_loc2_ = _loc1_[_loc5_];
				_loc2_.saveInfo.var_401 = true;
				_loc2_.pos = _loc5_ + 1;
				_loc5_++;
			}
		}
		this.PokeList = _loc1_;
	}
}
