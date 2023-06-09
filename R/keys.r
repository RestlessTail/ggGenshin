#' keys
#'
#' returns the available key names, as well as the full names in both Chinese and English
#'
#' @return a data frame
#' @export
#'
#' @examples
#' keys()
keys = function(){
	key.name = c("albedo",
				 "alhaitham",
				 "ayaka",
				 "bennett",
				 "collei",
				 "diona",
				 "dori",
				 "faruzan",
				 "ganyu",
				 "itto",
				 "jean",
				 "jin",
				 "kazuha",
				 "keqing",
				 "klee",
				 "kokomi",
				 "miko",
				 "nahida",
				 "nilou",
				 "noelle",
				 "razor",
				 "sayu",
				 "shenhe",
				 "shogun",
				 "sucrose",
				 "tao",
				 "tighnari",
				 "venti",
				 "xiangling",
				 "xiao",
				 "yoimiya",
				 "zhongli")
	en.fullname = c("Albedo",
					"Alhaitham",
					"Kamizato Ayaka",
					"Bennett",
					"Collei",
					"Diona",
					"Dori",
					"Faruzan",
					"Ganyu",
					"Arataki Itto",
					"Jean",
					"Yun Jin",
					"Kaedehara Kazuha",
					"Keqing",
					"Klee",
					"Sangonomiya Kokomi",
					"Yae Miko",
					"Nahida",
					"Nilou",
					"Noelle",
					"Razor",
					"Sayu",
					"Shenhe",
					"Raiden Shogun",
					"Sucrose",
					"Hu Tao",
					"Tighnari",
					"Venti",
					"Xiangling",
					"Xiao",
					"Yoimiya",
					"Zhongli")
	cn.fullname = c("\u963f\u8d1d\u591a",
					"\u827e\u5c14\u6d77\u68ee",
					"\u795e\u91cc\u7eeb\u534e",
					"\u73ed\u5c3c\u7279",
					"\u67ef\u83b1",
					"\u8fea\u5965\u5a1c",
					"\u591a\u8389",
					"\u73d0\u9732\u73ca",
					"\u7518\u96e8",
					"\u8352\u6cf7\u4e00\u6597",
					"\u7434",
					"\u4e91\u5807",
					"\u67ab\u539f\u4e07\u53f6",
					"\u523b\u6674",
					"\u53ef\u8389",
					"\u73ca\u745a\u5bab\u5fc3\u6d77",
					"\u516b\u91cd\u795e\u5b50",
					"\u7eb3\u897f\u59b2",
					"\u59ae\u9732",
					"\u8bfa\u827e\u5c14",
					"\u96f7\u6cfd",
					"\u65e9\u67da",
					"\u7533\u9e64",
					"\u96f7\u7535\u5c06\u519b",
					"\u7802\u7cd6",
					"\u80e1\u6843",
					"\u63d0\u7eb3\u91cc",
					"\u6e29\u8fea",
					"\u9999\u83f1",
					"\u9b48",
					"\u5bb5\u5bab",
					"\u949f\u79bb")
	return(data.frame(key.name, en.fullname, cn.fullname))
}
