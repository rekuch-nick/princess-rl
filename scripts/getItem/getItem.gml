function getItem(n){
	
	
	
	if(n == "Sword"){
		return {
			nam: n,
			img: imgSword,
			slot: 0,
			bonus: 0,
			col: c_grey,
			stat: -1,
			statScale: 1,
			statTxt: "DMG +0",
			prop: "",
			propScale: 1,
		};
	}
	
	
	if(n == "Old Sword"){
		return {
			nam: n,
			img: imgCommonSword,
			slot: 0,
			bonus: 0,
			col: c_grey,
			stat: -1,
			statScale: 1,
			statTxt: "DMG +0",
			prop: "",
			propScale: 1,
		};
	}
	
	if(n == "Old Armor"){
		return {
			nam: n,
			img: imgCommonArmor,
			slot: 1,
			bonus: 0,
			col: c_grey,
			stat: ww.nDEF,
			statScale: 1,
			statTxt: "DEF +0",
			prop: "",
			propScale: 1,
		};
	}
	
	if(n == "Old Ring"){
		return {
			nam: n,
			img: imgCommonRing,
			slot: 2,
			bonus: 0,
			col: c_grey,
			stat: -1,
			statScale: 1,
			statTxt: "",
			prop: "",
			propScale: 1,
		};
	}






	return noone;
}