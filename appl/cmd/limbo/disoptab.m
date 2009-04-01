movetab:= array [Mend]of
{
	Mas => array[Tend] of
	{
		Tadt =>		IMOVM,
		Tadtpick =>	IMOVM,
		Tarray =>	IMOVP,
		Tbig =>		IMOVL,
		Tbyte =>	IMOVB,
		Tchan =>	IMOVP,
		Treal =>	IMOVF,
		Tint =>		IMOVW,
		Tlist =>	IMOVP,
		Tmodule =>	IMOVP,
		Tref =>		IMOVP,
		Tstring =>	IMOVP,
		Ttuple =>	IMOVM,
		Texception => IMOVM,
		Tfix =>	IMOVW,
		Tpoly =>	IMOVP,

		Tany =>		IMOVP,

		* =>		0
	},
	Mcons => array[Tend] of
	{
		Tadt =>		ICONSM,
		Tadtpick =>	0,
		Tarray =>	ICONSP,
		Tbig =>		ICONSL,
		Tbyte =>	ICONSB,
		Tchan =>	ICONSP,
		Treal =>	ICONSF,
		Tint =>		ICONSW,
		Tlist =>	ICONSP,
		Tmodule =>	ICONSP,
		Tref =>		ICONSP,
		Tstring =>	ICONSP,
		Ttuple =>	ICONSM,
		Texception => ICONSM,
		Tfix =>	ICONSW,
		Tpoly =>	ICONSP,

		Tany =>		ICONSP,

		* =>		0
	},
	Mhd => array[Tend] of
	{
		Tadt =>		IHEADM,
		Tadtpick =>	0,
		Tarray =>	IHEADP,
		Tbig =>		IHEADL,
		Tbyte =>	IHEADB,
		Tchan =>	IHEADP,
		Treal =>	IHEADF,
		Tint =>		IHEADW,
		Tlist =>	IHEADP,
		Tmodule =>	IHEADP,
		Tref =>		IHEADP,
		Tstring =>	IHEADP,
		Ttuple =>	IHEADM,
		Texception => IHEADM,
		Tfix =>	IHEADW,
		Tpoly =>	IHEADP,

		Tany =>		IHEADP,

		* =>		0
	},
	Mtl  => array[Tend] of
	{
		Tlist =>	ITAIL,

		* =>		0
	},
};

chantab := array[Tend] of
{
	Tadt =>		INEWCM,
	Tadtpick =>	0,
	Tarray =>	INEWCP,
	Tbig =>		INEWCL,
	Tbyte =>	INEWCB,
	Tchan =>	INEWCP,
	Treal =>	INEWCF,
	Tint =>		INEWCW,
	Tlist =>	INEWCP,
	Tmodule =>	INEWCP,
	Tref =>		INEWCP,
	Tstring =>	INEWCP,
	Ttuple =>	INEWCM,
	Texception => INEWCM,
	Tfix =>	INEWCW,
	Tpoly =>	INEWCP,

	Tany =>		INEWCP,

	* =>	0
};

opind := array[Tend] of
{
	Tbyte =>	1,
	Tint =>		2,
	Tbig =>		3,
	Treal =>	4,
	Tstring =>	5,
	Tfix => 6,

	* =>		0
};

disoptab := array[Oend+1] of
{
	# opcode			default	byte	word	big	real	string	fixed
	Oadd =>		array[7] of	{0,	IADDB,	IADDW,	IADDL,	IADDF,	IADDC,	IADDW,},
	Oaddas =>	array[7] of	{0,	IADDB,	IADDW,	IADDL,	IADDF,	IADDC,	IADDW,},
	Oand =>		array[7] of	{0,	IANDB,	IANDW,	IANDL,	0,	0,	0,},
	Oandas =>	array[7] of	{0,	IANDB,	IANDW,	IANDL,	0, 	0,	0,},
	Odec =>		array[7] of	{0,	ISUBB,	ISUBW,	ISUBL,	ISUBF,	0,	ISUBW,},
	Odiv =>		array[7] of	{0,	IDIVB,	IDIVW,	IDIVL,	IDIVF,	0,	IDIVX,},
	Odivas =>	array[7] of	{0,	IDIVB,	IDIVW,	IDIVL,	IDIVF,	0,	IDIVX,},
	Oeq =>		array[7] of	{IBEQW,	IBEQB,	IBEQW,	IBEQL,	IBEQF,	IBEQC,	IBEQW,},
	Oexp =>	array[7] of	{0,	0,	IEXPW,	IEXPL,	IEXPF,	0,	0,},
	Oexpas =>	array[7] of	{0,	0,	IEXPW,	IEXPL,	IEXPF,	0,	0,},
	Ogeq =>		array[7] of	{0,	IBGEB,	IBGEW,	IBGEL,	IBGEF,	IBGEC,	IBGEW,},
	Ogt =>		array[7] of	{0,	IBGTB,	IBGTW,	IBGTL,	IBGTF,	IBGTC,	IBGTW,},
	Oinc =>		array[7] of	{0,	IADDB,	IADDW,	IADDL,	IADDF,	0,	IADDW,},
	Oinds =>	array[7] of	{0,	0,	IINDC,	0,	0,	0,	0,},
	Oindx =>	array[7] of	{0,	0,	IINDX,	0,	0,	0,	0,},
	Olen =>		array[7] of	{ILENA,	0,	0,	0,	0,	ILENC,	0,},
	Oleq =>		array[7] of	{0,	IBLEB,	IBLEW,	IBLEL,	IBLEF,	IBLEC,	IBLEW,},
	Olsh =>		array[7] of	{0,	ISHLB,	ISHLW,	ISHLL,	0,	0,	0,},
	Olshas =>	array[7] of	{0,	ISHLB,	ISHLW,	ISHLL,	0,	0,	0,},
	Olt =>		array[7] of	{0,	IBLTB,	IBLTW,	IBLTL,	IBLTF,	IBLTC,	IBLTW,},
	Omod =>		array[7] of	{0,	IMODB,	IMODW,	IMODL,	0,	0,	0,},
	Omodas =>	array[7] of	{0,	IMODB,	IMODW,	IMODL,	0,	0,	0,},
	Omul =>		array[7] of	{0,	IMULB,	IMULW,	IMULL,	IMULF,	0,	IMULX,},
	Omulas =>	array[7] of	{0,	IMULB,	IMULW,	IMULL,	IMULF,	0,	IMULX,},
	Oneg =>		array[7] of	{0,	0,	0,	0,	INEGF,	0,	0, },
	Oneq =>		array[7] of	{IBNEW,	IBNEB,	IBNEW,	IBNEL,	IBNEF,	IBNEC,	IBNEW,},
	Oor =>		array[7] of	{0,	IORB,	IORW,	IORL,	0,	0,	0,},
	Ooras =>	array[7] of	{0,	IORB,	IORW,	IORL,	0,	0,	0,},
	Orsh =>		array[7] of	{0,	ISHRB,	ISHRW,	ISHRL,	0,	0,	0,},
	Orshas =>	array[7] of	{0,	ISHRB,	ISHRW,	ISHRL,	0,	0,	0,},
	Oslice =>	array[7] of	{ISLICEA,0,	0,	0,	0,	ISLICEC,	0,},
	Osub =>		array[7] of	{0,	ISUBB,	ISUBW,	ISUBL,	ISUBF,	0,	ISUBW,},
	Osubas =>	array[7] of	{0,	ISUBB,	ISUBW,	ISUBL,	ISUBF,	0,	ISUBW,},
	Oxor =>		array[7] of	{0,	IXORB,	IXORW,	IXORL,	0,	0,	0,},
	Oxoras =>	array[7] of	{0,	IXORB,	IXORW,	IXORL,	0,	0,	0,},
};

isbyteinst := array [256] of
{
	IMULB	=> 1,
	ISUBB	=> 1,
	IADDB	=> 1,
	IDIVB	=> 1,
	IORB	=> 1,
	IXORB	=> 1,
	ISHLB	=> 1,
	ISHRB	=> 1,
	IMODB	=> 1,
	IANDB	=> 1,
	IBEQB	=> 1,
	IBNEB	=> 1,
	IBLTB	=> 1,
	IBLEB	=> 1,
	IBGTB	=> 1,
	IBGEB	=> 1,

	*	=> 0,
};

instname := array[256] of
{
	"nop",
	"alt",
	"nbalt",
	"goto",
	"call",
	"frame",
	"spawn",
	"runt",
	"load",
	"mcall",
	"mspawn",
	"mframe",
	"ret",
	"jmp",
	"case",
	"exit",
	"new",
	"newa",
	"newcb",
	"newcw",
	"newcf",
	"newcp",
	"newcm",
	"newcmp",
	"send",
	"recv",
	"consb",
	"consw",
	"consp",
	"consf",
	"consm",
	"consmp",
	"headb",
	"headw",
	"headp",
	"headf",
	"headm",
	"headmp",
	"tail",
	"lea",
	"indx",
	"movp",
	"movm",
	"movmp",
	"movb",
	"movw",
	"movf",
	"cvtbw",
	"cvtwb",
	"cvtfw",
	"cvtwf",
	"cvtca",
	"cvtac",
	"cvtwc",
	"cvtcw",
	"cvtfc",
	"cvtcf",
	"addb",
	"addw",
	"addf",
	"subb",
	"subw",
	"subf",
	"mulb",
	"mulw",
	"mulf",
	"divb",
	"divw",
	"divf",
	"modw",
	"modb",
	"andb",
	"andw",
	"orb",
	"orw",
	"xorb",
	"xorw",
	"shlb",
	"shlw",
	"shrb",
	"shrw",
	"insc",
	"indc",
	"addc",
	"lenc",
	"lena",
	"lenl",
	"beqb",
	"bneb",
	"bltb",
	"bleb",
	"bgtb",
	"bgeb",
	"beqw",
	"bnew",
	"bltw",
	"blew",
	"bgtw",
	"bgew",
	"beqf",
	"bnef",
	"bltf",
	"blef",
	"bgtf",
	"bgef",
	"beqc",
	"bnec",
	"bltc",
	"blec",
	"bgtc",
	"bgec",
	"slicea",
	"slicela",
	"slicec",
	"indw",
	"indf",
	"indb",
	"negf",
	"movl",
	"addl",
	"subl",
	"divl",
	"modl",
	"mull",
	"andl",
	"orl",
	"xorl",
	"shll",
	"shrl",
	"bnel",
	"bltl",
	"blel",
	"bgtl",
	"bgel",
	"beql",
	"cvtlf",
	"cvtfl",
	"cvtlw",
	"cvtwl",
	"cvtlc",
	"cvtcl",
	"headl",
	"consl",
	"newcl",
	"casec",
	"indl",
	"movpc",
	"tcmp",
	"mnewz",
	"cvtrf",
	"cvtfr",
	"cvtws",
	"cvtsw",
	"lsrw",
	"lsrl",
	"eclr",
	"newz",
	"newaz",
	"raise",
	"casel",
	"mulx",
	"divx",
	"cvtxx",
	"mulx0",
	"divx0",
	"cvtxx0",
	"mulx1",
	"divx1",
	"cvtxx1",
	"cvtfx",
	"cvtxf",
	"expw",
	"expl",
	"expf",
	"self",
};