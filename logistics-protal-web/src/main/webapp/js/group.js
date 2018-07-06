/**
 * Created by zhengchuanjiao on 2016/10/14.
 */

/**
 * 按拼音分组
 * param：传入的需要分组的json串，json串中需要分组的名字必须是“pinyin”
 * number：最大值分组
 * 返回的值：{A-G:{},H-L:{},M-z:{}}
 * */
function group(param,number){
    var _code = {"A":[],"B":[],"C":[],"D":[],"E":[],"F":[],"G":[],"H":[],"I":[],"J":[],"K":[],"L":[],"M":[],"N":[],"O":[],"P":[],"Q":[],"R":[],"S":[],"T":[],"U":[],"V":[],"W":[],"X":[],"Y":[],"Z":[]};
    var _code2 = {};

    $.each(param,function(i,par){
        for(var t in _code){
            if(par.pinyin.slice(0,1).toUpperCase() == t){
                _code[t].push(par);
            }
        }
    });
    var _group = [];
    var _title= "A-";
    var _flag = "";
    for(var r in _code){
        if((_group.length+_code[r].length) <= number){
            for(var i = 0; i<_code[r].length ; i++){
                _group.push(_code[r][i]);
            }
            _flag = r;
            if(_flag == "Z"){
                _title = _title + _flag;
                _code2[_title] = _group;
            }
        }else{
        	_title = _title + _flag; 
            _code2[_title] = _group;
            _group = [];
            for(var i = 0; i<_code[r].length ; i++){
                _group.push(_code[r][i]);
            }
            _title = r + "-";
            _flag = r;

        }

    }
    return _code2;
}

/**
 * 按拼音分组
 * param：传入的需要分组的json串，json串中需要分组的名字必须是“pinyin”
 * number：最大值分组
 * 返回的值{ABCDE:{A:[{},{}],B:[{},{}],C:[{},{}],D:[{},{}],E:[{},{}]},FG:{F:[{},{}],G:[{},{}]}}
 * */

function group2(param,number){
    var _code = {"A":[],"B":[],"C":[],"D":[],"E":[],"F":[],"G":[],"H":[],"I":[],"J":[],"K":[],"L":[],"M":[],"N":[],"O":[],"P":[],"Q":[],"R":[],"S":[],"T":[],"U":[],"V":[],"W":[],"X":[],"Y":[],"Z":[]};
    var _code2 = {};

    $.each(param,function(i,par){
        for(var t in _code){
            if(par.pinyin.slice(0,1).toUpperCase() == t){
                _code[t].push(par);
            }
        }
    });
    var _group = [];
    var _title= "";
    var _flag = "";
    var _length = 0;
    for(var r in _code){
        if((_length+_code[r].length) <= number){
            _group.push(r);
            _length =_length +  _code[r].length;
            _flag = r;
            _title = _title + _flag;
            if(_flag == "Z"){
                _code2[_title] = {};
                for(var i = 0;i<_group.length;i++){
                    if(_code[_group[i]].length !=0){
                        _code2[_title][_group[i]] = _code[_group[i]];
                    }
                }
            }
        }else{
            _code2[_title] = {};
            for(var i = 0;i<_group.length;i++){
                if(_code[_group[i]].length !=0){
                    _code2[_title][_group[i]] = _code[_group[i]];
                }
            }
            _group = [];
            _group.push(r);
            _length =  _code[r].length;
            _title = r;
        }
    }
    return _code2;
}