#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(5*sizeof(Trans **));

	/* proctype 3: controller */

	trans[3] = (Trans **) emalloc(201*sizeof(Trans *));

	trans[3][198]	= settr(231,0,197,1,0,".(goto)", 0, 2, 0);
	T = trans[3][197] = settr(230,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(230,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(230,0,22,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(230,0,50,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(230,0,78,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(230,0,99,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(230,0,120,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(230,0,148,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(230,0,176,0,0,"DO", 0, 2, 0);
	trans[3][1]	= settr(34,0,20,3,3,"elevator_buttons?go_0", 1, 504, 0);
	T = trans[3][20] = settr(53,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(53,0,2,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(53,0,7,0,0,"IF", 0, 2, 0);
	trans[3][2]	= settr(35,0,3,4,0,"((at==0))", 1, 2, 0);
	trans[3][3]	= settr(36,0,4,5,5,"commands!open", 1, 5, 0);
	trans[3][4]	= settr(37,0,5,6,6,"closed = 0", 1, 2, 0);
	trans[3][5]	= settr(38,0,6,7,7,"commands!close", 1, 5, 0);
	trans[3][6]	= settr(39,0,197,8,8,"closed = 1", 1, 2, 0);
	trans[3][21]	= settr(54,0,197,1,0,".(goto)", 0, 2, 0);
	trans[3][7]	= settr(40,0,13,2,0,"else", 0, 2, 0);
	trans[3][14]	= settr(47,0,13,1,0,".(goto)", 0, 2, 0);
	T = trans[3][13] = settr(46,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(46,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(46,0,11,0,0,"DO", 0, 2, 0);
	trans[3][8]	= settr(41,0,9,9,0,"((at>0))", 1, 2, 0);
	trans[3][9]	= settr(42,0,10,10,10,"commands!down", 1, 5, 0);
	trans[3][10]	= settr(43,0,13,11,11,"at = (at-1)", 1, 2, 0);
	trans[3][11]	= settr(44,0,16,2,0,"else", 0, 2, 0);
	trans[3][12]	= settr(45,0,16,1,0,"goto :b4", 0, 2, 0);
	trans[3][15]	= settr(48,0,16,1,0,"break", 0, 2, 0);
	trans[3][16]	= settr(49,0,17,12,12,"commands!open", 1, 5, 0);
	trans[3][17]	= settr(50,0,18,13,13,"closed = 0", 1, 2, 0);
	trans[3][18]	= settr(51,0,19,14,14,"commands!close", 1, 5, 0);
	trans[3][19]	= settr(52,0,197,15,15,"closed = 1", 1, 2, 0);
	trans[3][22]	= settr(55,0,48,16,16,"elevator_buttons?go_1", 1, 504, 0);
	T = trans[3][48] = settr(81,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(81,0,23,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(81,0,28,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(81,0,35,0,0,"IF", 0, 2, 0);
	trans[3][23]	= settr(56,0,24,17,0,"((at==1))", 1, 2, 0);
	trans[3][24]	= settr(57,0,25,18,18,"commands!open", 1, 5, 0);
	trans[3][25]	= settr(58,0,26,19,19,"closed = 0", 1, 2, 0);
	trans[3][26]	= settr(59,0,27,20,20,"commands!close", 1, 5, 0);
	trans[3][27]	= settr(60,0,197,21,21,"closed = 1", 1, 2, 0);
	trans[3][49]	= settr(82,0,197,1,0,".(goto)", 0, 2, 0);
	trans[3][28]	= settr(61,0,29,22,0,"((at==0))", 1, 2, 0);
	trans[3][29]	= settr(62,0,30,23,23,"commands!up", 1, 5, 0);
	trans[3][30]	= settr(63,0,31,24,24,"at = (at+1)", 1, 2, 0);
	trans[3][31]	= settr(64,0,32,25,25,"commands!open", 1, 5, 0);
	trans[3][32]	= settr(65,0,33,26,26,"closed = 0", 1, 2, 0);
	trans[3][33]	= settr(66,0,34,27,27,"commands!close", 1, 5, 0);
	trans[3][34]	= settr(67,0,197,28,28,"closed = 1", 1, 2, 0);
	trans[3][35]	= settr(68,0,41,2,0,"else", 0, 2, 0);
	trans[3][42]	= settr(75,0,41,1,0,".(goto)", 0, 2, 0);
	T = trans[3][41] = settr(74,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(74,0,36,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(74,0,39,0,0,"DO", 0, 2, 0);
	trans[3][36]	= settr(69,0,37,29,0,"((at>1))", 1, 2, 0);
	trans[3][37]	= settr(70,0,38,30,30,"commands!down", 1, 5, 0);
	trans[3][38]	= settr(71,0,41,31,31,"at = (at-1)", 1, 2, 0);
	trans[3][39]	= settr(72,0,44,2,0,"else", 0, 2, 0);
	trans[3][40]	= settr(73,0,44,1,0,"goto :b5", 0, 2, 0);
	trans[3][43]	= settr(76,0,44,1,0,"break", 0, 2, 0);
	trans[3][44]	= settr(77,0,45,32,32,"commands!open", 1, 5, 0);
	trans[3][45]	= settr(78,0,46,33,33,"closed = 0", 1, 2, 0);
	trans[3][46]	= settr(79,0,47,34,34,"commands!close", 1, 5, 0);
	trans[3][47]	= settr(80,0,197,35,35,"closed = 1", 1, 2, 0);
	trans[3][50]	= settr(83,0,76,36,36,"elevator_buttons?go_2", 1, 504, 0);
	T = trans[3][76] = settr(109,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(109,0,51,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(109,0,56,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(109,0,69,0,0,"IF", 0, 2, 0);
	trans[3][51]	= settr(84,0,52,37,0,"((at==2))", 1, 2, 0);
	trans[3][52]	= settr(85,0,53,38,38,"commands!open", 1, 5, 0);
	trans[3][53]	= settr(86,0,54,39,39,"closed = 0", 1, 2, 0);
	trans[3][54]	= settr(87,0,55,40,40,"commands!close", 1, 5, 0);
	trans[3][55]	= settr(88,0,197,41,41,"closed = 1", 1, 2, 0);
	trans[3][77]	= settr(110,0,197,1,0,".(goto)", 0, 2, 0);
	trans[3][56]	= settr(89,0,62,42,0,"((at<2))", 1, 2, 0);
	trans[3][63]	= settr(96,0,62,1,0,".(goto)", 0, 2, 0);
	T = trans[3][62] = settr(95,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(95,0,57,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(95,0,60,0,0,"DO", 0, 2, 0);
	trans[3][57]	= settr(90,0,58,43,0,"((at<2))", 1, 2, 0);
	trans[3][58]	= settr(91,0,59,44,44,"commands!up", 1, 5, 0);
	trans[3][59]	= settr(92,0,62,45,45,"at = (at+1)", 1, 2, 0);
	trans[3][60]	= settr(93,0,65,2,0,"else", 0, 2, 0);
	trans[3][61]	= settr(94,0,65,1,0,"goto :b6", 0, 2, 0);
	trans[3][64]	= settr(97,0,65,1,0,"break", 0, 2, 0);
	trans[3][65]	= settr(98,0,66,46,46,"commands!open", 1, 5, 0);
	trans[3][66]	= settr(99,0,67,47,47,"closed = 0", 1, 2, 0);
	trans[3][67]	= settr(100,0,68,48,48,"commands!close", 1, 5, 0);
	trans[3][68]	= settr(101,0,197,49,49,"closed = 1", 1, 2, 0);
	trans[3][69]	= settr(102,0,70,50,0,"((at==3))", 1, 2, 0);
	trans[3][70]	= settr(103,0,71,51,51,"commands!down", 1, 5, 0);
	trans[3][71]	= settr(104,0,72,52,52,"at = (at-1)", 1, 2, 0);
	trans[3][72]	= settr(105,0,73,53,53,"commands!open", 1, 5, 0);
	trans[3][73]	= settr(106,0,74,54,54,"closed = 0", 1, 2, 0);
	trans[3][74]	= settr(107,0,75,55,55,"commands!close", 1, 5, 0);
	trans[3][75]	= settr(108,0,197,56,56,"closed = 1", 1, 2, 0);
	trans[3][78]	= settr(111,0,97,57,57,"elevator_buttons?go_3", 1, 504, 0);
	T = trans[3][97] = settr(130,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(130,0,79,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(130,0,84,0,0,"IF", 0, 2, 0);
	trans[3][79]	= settr(112,0,80,58,0,"((at==3))", 1, 2, 0);
	trans[3][80]	= settr(113,0,81,59,59,"commands!open", 1, 5, 0);
	trans[3][81]	= settr(114,0,82,60,60,"closed = 0", 1, 2, 0);
	trans[3][82]	= settr(115,0,83,61,61,"commands!close", 1, 5, 0);
	trans[3][83]	= settr(116,0,197,62,62,"closed = 1", 1, 2, 0);
	trans[3][98]	= settr(131,0,197,1,0,".(goto)", 0, 2, 0);
	trans[3][84]	= settr(117,0,90,2,0,"else", 0, 2, 0);
	trans[3][91]	= settr(124,0,90,1,0,".(goto)", 0, 2, 0);
	T = trans[3][90] = settr(123,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(123,0,85,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(123,0,88,0,0,"DO", 0, 2, 0);
	trans[3][85]	= settr(118,0,86,63,0,"((at<3))", 1, 2, 0);
	trans[3][86]	= settr(119,0,87,64,64,"commands!up", 1, 5, 0);
	trans[3][87]	= settr(120,0,90,65,65,"at = (at+1)", 1, 2, 0);
	trans[3][88]	= settr(121,0,93,2,0,"else", 0, 2, 0);
	trans[3][89]	= settr(122,0,93,1,0,"goto :b7", 0, 2, 0);
	trans[3][92]	= settr(125,0,93,1,0,"break", 0, 2, 0);
	trans[3][93]	= settr(126,0,94,66,66,"commands!open", 1, 5, 0);
	trans[3][94]	= settr(127,0,95,67,67,"closed = 0", 1, 2, 0);
	trans[3][95]	= settr(128,0,96,68,68,"commands!close", 1, 5, 0);
	trans[3][96]	= settr(129,0,197,69,69,"closed = 1", 1, 2, 0);
	trans[3][99]	= settr(132,0,118,70,70,"floor_buttons?call_0", 1, 503, 0);
	T = trans[3][118] = settr(151,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(151,0,100,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(151,0,105,0,0,"IF", 0, 2, 0);
	trans[3][100]	= settr(133,0,101,71,0,"((at==0))", 1, 2, 0);
	trans[3][101]	= settr(134,0,102,72,72,"commands!open", 1, 5, 0);
	trans[3][102]	= settr(135,0,103,73,73,"closed = 0", 1, 2, 0);
	trans[3][103]	= settr(136,0,104,74,74,"commands!close", 1, 5, 0);
	trans[3][104]	= settr(137,0,197,75,75,"closed = 1", 1, 2, 0);
	trans[3][119]	= settr(152,0,197,1,0,".(goto)", 0, 2, 0);
	trans[3][105]	= settr(138,0,111,2,0,"else", 0, 2, 0);
	trans[3][112]	= settr(145,0,111,1,0,".(goto)", 0, 2, 0);
	T = trans[3][111] = settr(144,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(144,0,106,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(144,0,109,0,0,"DO", 0, 2, 0);
	trans[3][106]	= settr(139,0,107,76,0,"((at>0))", 1, 2, 0);
	trans[3][107]	= settr(140,0,108,77,77,"commands!down", 1, 5, 0);
	trans[3][108]	= settr(141,0,111,78,78,"at = (at-1)", 1, 2, 0);
	trans[3][109]	= settr(142,0,114,2,0,"else", 0, 2, 0);
	trans[3][110]	= settr(143,0,114,1,0,"goto :b8", 0, 2, 0);
	trans[3][113]	= settr(146,0,114,1,0,"break", 0, 2, 0);
	trans[3][114]	= settr(147,0,115,79,79,"commands!open", 1, 5, 0);
	trans[3][115]	= settr(148,0,116,80,80,"closed = 0", 1, 2, 0);
	trans[3][116]	= settr(149,0,117,81,81,"commands!close", 1, 5, 0);
	trans[3][117]	= settr(150,0,197,82,82,"closed = 1", 1, 2, 0);
	trans[3][120]	= settr(153,0,146,83,83,"floor_buttons?call_1", 1, 503, 0);
	T = trans[3][146] = settr(179,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(179,0,121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(179,0,126,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(179,0,133,0,0,"IF", 0, 2, 0);
	trans[3][121]	= settr(154,0,122,84,0,"((at==1))", 1, 2, 0);
	trans[3][122]	= settr(155,0,123,85,85,"commands!open", 1, 5, 0);
	trans[3][123]	= settr(156,0,124,86,86,"closed = 0", 1, 2, 0);
	trans[3][124]	= settr(157,0,125,87,87,"commands!close", 1, 5, 0);
	trans[3][125]	= settr(158,0,197,88,88,"closed = 1", 1, 2, 0);
	trans[3][147]	= settr(180,0,197,1,0,".(goto)", 0, 2, 0);
	trans[3][126]	= settr(159,0,127,89,0,"((at==0))", 1, 2, 0);
	trans[3][127]	= settr(160,0,128,90,90,"commands!up", 1, 5, 0);
	trans[3][128]	= settr(161,0,129,91,91,"at = (at+1)", 1, 2, 0);
	trans[3][129]	= settr(162,0,130,92,92,"commands!open", 1, 5, 0);
	trans[3][130]	= settr(163,0,131,93,93,"closed = 0", 1, 2, 0);
	trans[3][131]	= settr(164,0,132,94,94,"commands!close", 1, 5, 0);
	trans[3][132]	= settr(165,0,197,95,95,"closed = 1", 1, 2, 0);
	trans[3][133]	= settr(166,0,139,2,0,"else", 0, 2, 0);
	trans[3][140]	= settr(173,0,139,1,0,".(goto)", 0, 2, 0);
	T = trans[3][139] = settr(172,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,134,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(172,0,137,0,0,"DO", 0, 2, 0);
	trans[3][134]	= settr(167,0,135,96,0,"((at>1))", 1, 2, 0);
	trans[3][135]	= settr(168,0,136,97,97,"commands!down", 1, 5, 0);
	trans[3][136]	= settr(169,0,139,98,98,"at = (at-1)", 1, 2, 0);
	trans[3][137]	= settr(170,0,142,2,0,"else", 0, 2, 0);
	trans[3][138]	= settr(171,0,142,1,0,"goto :b9", 0, 2, 0);
	trans[3][141]	= settr(174,0,142,1,0,"break", 0, 2, 0);
	trans[3][142]	= settr(175,0,143,99,99,"commands!open", 1, 5, 0);
	trans[3][143]	= settr(176,0,144,100,100,"closed = 0", 1, 2, 0);
	trans[3][144]	= settr(177,0,145,101,101,"commands!close", 1, 5, 0);
	trans[3][145]	= settr(178,0,197,102,102,"closed = 1", 1, 2, 0);
	trans[3][148]	= settr(181,0,174,103,103,"floor_buttons?call_2", 1, 503, 0);
	T = trans[3][174] = settr(207,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(207,0,149,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(207,0,154,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(207,0,167,0,0,"IF", 0, 2, 0);
	trans[3][149]	= settr(182,0,150,104,0,"((at==2))", 1, 2, 0);
	trans[3][150]	= settr(183,0,151,105,105,"commands!open", 1, 5, 0);
	trans[3][151]	= settr(184,0,152,106,106,"closed = 0", 1, 2, 0);
	trans[3][152]	= settr(185,0,153,107,107,"commands!close", 1, 5, 0);
	trans[3][153]	= settr(186,0,197,108,108,"closed = 1", 1, 2, 0);
	trans[3][175]	= settr(208,0,197,1,0,".(goto)", 0, 2, 0);
	trans[3][154]	= settr(187,0,160,109,0,"((at<2))", 1, 2, 0);
	trans[3][161]	= settr(194,0,160,1,0,".(goto)", 0, 2, 0);
	T = trans[3][160] = settr(193,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(193,0,155,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(193,0,158,0,0,"DO", 0, 2, 0);
	trans[3][155]	= settr(188,0,156,110,0,"((at<2))", 1, 2, 0);
	trans[3][156]	= settr(189,0,157,111,111,"commands!up", 1, 5, 0);
	trans[3][157]	= settr(190,0,160,112,112,"at = (at+1)", 1, 2, 0);
	trans[3][158]	= settr(191,0,163,2,0,"else", 0, 2, 0);
	trans[3][159]	= settr(192,0,163,1,0,"goto :b10", 0, 2, 0);
	trans[3][162]	= settr(195,0,163,1,0,"break", 0, 2, 0);
	trans[3][163]	= settr(196,0,164,113,113,"commands!open", 1, 5, 0);
	trans[3][164]	= settr(197,0,165,114,114,"closed = 0", 1, 2, 0);
	trans[3][165]	= settr(198,0,166,115,115,"commands!close", 1, 5, 0);
	trans[3][166]	= settr(199,0,197,116,116,"closed = 1", 1, 2, 0);
	trans[3][167]	= settr(200,0,168,117,0,"((at==3))", 1, 2, 0);
	trans[3][168]	= settr(201,0,169,118,118,"commands!down", 1, 5, 0);
	trans[3][169]	= settr(202,0,170,119,119,"at = (at-1)", 1, 2, 0);
	trans[3][170]	= settr(203,0,171,120,120,"commands!open", 1, 5, 0);
	trans[3][171]	= settr(204,0,172,121,121,"closed = 0", 1, 2, 0);
	trans[3][172]	= settr(205,0,173,122,122,"commands!close", 1, 5, 0);
	trans[3][173]	= settr(206,0,197,123,123,"closed = 1", 1, 2, 0);
	trans[3][176]	= settr(209,0,195,124,124,"floor_buttons?call_3", 1, 503, 0);
	T = trans[3][195] = settr(228,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(228,0,177,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(228,0,182,0,0,"IF", 0, 2, 0);
	trans[3][177]	= settr(210,0,178,125,0,"((at==3))", 1, 2, 0);
	trans[3][178]	= settr(211,0,179,126,126,"commands!open", 1, 5, 0);
	trans[3][179]	= settr(212,0,180,127,127,"closed = 0", 1, 2, 0);
	trans[3][180]	= settr(213,0,181,128,128,"commands!close", 1, 5, 0);
	trans[3][181]	= settr(214,0,197,129,129,"closed = 1", 1, 2, 0);
	trans[3][196]	= settr(229,0,197,1,0,".(goto)", 0, 2, 0);
	trans[3][182]	= settr(215,0,188,2,0,"else", 0, 2, 0);
	trans[3][189]	= settr(222,0,188,1,0,".(goto)", 0, 2, 0);
	T = trans[3][188] = settr(221,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(221,0,183,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(221,0,186,0,0,"DO", 0, 2, 0);
	trans[3][183]	= settr(216,0,184,130,0,"((at<3))", 1, 2, 0);
	trans[3][184]	= settr(217,0,185,131,131,"commands!up", 1, 5, 0);
	trans[3][185]	= settr(218,0,188,132,132,"at = (at+1)", 1, 2, 0);
	trans[3][186]	= settr(219,0,191,2,0,"else", 0, 2, 0);
	trans[3][187]	= settr(220,0,191,1,0,"goto :b11", 0, 2, 0);
	trans[3][190]	= settr(223,0,191,1,0,"break", 0, 2, 0);
	trans[3][191]	= settr(224,0,192,133,133,"commands!open", 1, 5, 0);
	trans[3][192]	= settr(225,0,193,134,134,"closed = 0", 1, 2, 0);
	trans[3][193]	= settr(226,0,194,135,135,"commands!close", 1, 5, 0);
	trans[3][194]	= settr(227,0,197,136,136,"closed = 1", 1, 2, 0);
	trans[3][199]	= settr(232,0,200,1,0,"break", 0, 2, 0);
	trans[3][200]	= settr(233,0,0,137,137,"-end-", 0, 3500, 0);

	/* proctype 2: elevator_button_input */

	trans[2] = (Trans **) emalloc(9*sizeof(Trans *));

	trans[2][6]	= settr(31,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[2][5] = settr(30,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(30,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(30,0,2,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(30,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(30,0,4,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(26,0,5,138,138,"elevator_buttons!go_0", 1, 4, 0);
	trans[2][2]	= settr(27,0,5,139,139,"elevator_buttons!go_1", 1, 4, 0);
	trans[2][3]	= settr(28,0,5,140,140,"elevator_buttons!go_2", 1, 4, 0);
	trans[2][4]	= settr(29,0,5,141,141,"elevator_buttons!go_3", 1, 4, 0);
	trans[2][7]	= settr(32,0,8,1,0,"break", 0, 2, 0);
	trans[2][8]	= settr(33,0,0,142,142,"-end-", 0, 3500, 0);

	/* proctype 1: floor_button_input */

	trans[1] = (Trans **) emalloc(9*sizeof(Trans *));

	trans[1][6]	= settr(23,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[1][5] = settr(22,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(22,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(22,0,2,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(22,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(22,0,4,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(18,0,5,143,143,"floor_buttons!call_0", 1, 3, 0);
	trans[1][2]	= settr(19,0,5,144,144,"floor_buttons!call_1", 1, 3, 0);
	trans[1][3]	= settr(20,0,5,145,145,"floor_buttons!call_2", 1, 3, 0);
	trans[1][4]	= settr(21,0,5,146,146,"floor_buttons!call_3", 1, 3, 0);
	trans[1][7]	= settr(24,0,8,1,0,"break", 0, 2, 0);
	trans[1][8]	= settr(25,0,0,147,147,"-end-", 0, 3500, 0);

	/* proctype 0: elevator */

	trans[0] = (Trans **) emalloc(19*sizeof(Trans *));

	trans[0][16]	= settr(15,0,15,1,0,".(goto)", 0, 2, 0);
	T = trans[0][15] = settr(14,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(14,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(14,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(14,0,10,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(14,0,14,0,0,"DO", 0, 2, 0);
	T = trans[ 0][3] = settr(2,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2,2,1,0,0,"ATOMIC", 1, 505, 0);
	trans[0][1]	= settr(0,0,15,148,148,"commands?open", 1, 505, 0); /* m: 2 -> 15,0 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"printf('Elevator: opened doors.\\n')",0,0,0);
	T = trans[ 0][6] = settr(5,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(5,2,4,0,0,"ATOMIC", 1, 505, 0);
	trans[0][4]	= settr(3,0,15,149,149,"commands?close", 1, 505, 0); /* m: 5 -> 15,0 */
	reached0[5] = 1;
	trans[0][5]	= settr(0,0,0,0,0,"printf('Elevator: closed doors.\\n')",0,0,0);
	T = trans[ 0][10] = settr(9,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(9,2,7,0,0,"ATOMIC", 1, 505, 0);
	trans[0][7]	= settr(6,0,15,150,150,"commands?up", 1, 505, 0); /* m: 8 -> 15,0 */
	reached0[8] = 1;
	trans[0][8]	= settr(0,0,0,0,0,"assert((closed==1))",0,0,0);
	trans[0][9]	= settr(0,0,0,0,0,"printf('Elevator: moved up one floor.\\n')",0,0,0);
	T = trans[ 0][14] = settr(13,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(13,2,11,0,0,"ATOMIC", 1, 505, 0);
	trans[0][11]	= settr(10,0,15,151,151,"commands?down", 1, 505, 0); /* m: 12 -> 15,0 */
	reached0[12] = 1;
	trans[0][12]	= settr(0,0,0,0,0,"assert((closed==1))",0,0,0);
	trans[0][13]	= settr(0,0,0,0,0,"printf('Elevator: moved down one floor.\\n')",0,0,0);
	trans[0][17]	= settr(16,0,18,1,0,"break", 0, 2, 0);
	trans[0][18]	= settr(17,0,0,152,152,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
