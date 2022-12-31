function getItem(n){
	
	
	if(n == "Mundane Sword"){
		return {
			nam: n,
			img: imgCommonSword,
			slot: 0,
			bonus: 0,
			col: c_grey,
			stat: -1,
			statScale: 1,
			statTxt: "No Bonus",
			prop: "No Proc",
			propScale: 1,
		};
	}
	
	if(n == "Mundane Armor"){
		return {
			nam: n,
			img: imgCommonArmor,
			slot: 1,
			bonus: 0,
			col: c_grey,
			stat: ww.nDEF,
			statScale: 1,
			statTxt: "DEF + 0",
			prop: "",
			propScale: 1,
		};
	}
	
	if(n == "Mundane Ring"){
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