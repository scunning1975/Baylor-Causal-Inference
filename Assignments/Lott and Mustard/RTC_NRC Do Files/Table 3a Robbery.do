/*** Table 3a Robbery ***/

clear
#delimit;
use UpdatedCountyCrimeData-2010.dta, clear;

set more off;
set virtual on;


drop ppwm09;
drop ppwf09;
drop ppbm09;
drop ppbf09;
drop ppnm09;
drop ppnf09;
drop shalll aftr;

local j = 0;
local k = 0;

forval i = 1/1000 {;
	gen x`i' = runiform();
	sort fipsstat;
	egen z`i' = max(x`i'), by (fipsstat);
	gen year`i' = year if z`i'==x`i';
	sort fipsstat;
	egen ran_yr`i' = total(year`i'), by(fipsstat);
	drop x`i' z`i' year`i';
	gen shalll`i'=0;
	replace shalll`i'=1 if year<ran_yr`i';
	replace shalll`i'=0 if fipsstat==1;
	replace shalll`i'=0 if fipsstat==6;
	replace shalll`i'=0 if fipsstat==9;
	replace shalll`i'=0 if fipsstat==10;
	replace shalll`i'=0 if fipsstat==11;
	replace shalll`i'=0 if fipsstat==15;
	replace shalll`i'=0 if fipsstat==17;
	replace shalll`i'=0 if fipsstat==19;
	replace shalll`i'=0 if fipsstat==24;
	replace shalll`i'=0 if fipsstat==25;
	replace shalll`i'=0 if fipsstat==34;
	replace shalll`i'=0 if fipsstat==36;
	replace shalll`i'=0 if fipsstat==44;
	replace shalll`i'=0 if fipsstat==50;
	replace shalll`i'=0 if fipsstat==55;
	replace shalll`i'=1 if fipsstat==33;
	replace shalll`i'=1 if fipsstat==53;
	gen aftr`i'=0;	
	replace aftr`i'=year-ran_yr`i' if year>ran_yr`i';
	replace aftr`i'=0 if fipsstat==1;
	replace aftr`i'=0 if fipsstat==6;
	replace aftr`i'=0 if fipsstat==9;
	replace aftr`i'=0 if fipsstat==10;
	replace aftr`i'=0 if fipsstat==11;
	replace aftr`i'=0 if fipsstat==15;
	replace aftr`i'=0 if fipsstat==17;
	replace aftr`i'=0 if fipsstat==19;
	replace aftr`i'=0 if fipsstat==24;
	replace aftr`i'=0 if fipsstat==25;
	replace aftr`i'=0 if fipsstat==34;
	replace aftr`i'=0 if fipsstat==36;
	replace aftr`i'=0 if fipsstat==44;
	replace aftr`i'=0 if fipsstat==50;
	replace aftr`i'=0 if fipsstat==55;
	replace aftr`i'=0 if fipsstat==33;
	replace aftr`i'=0 if fipsstat==53;
	areg lratrob shalll`i' aftr`i' aovio rpcpi rpcui rpcim rpcrpo popc ppb* ppw* ppn* 
	density yr*
	[aweight=popc], absorb(fipsid) robust;
	mat def Z=e(b);
	scalar bb=Z[1,1];
	scalar cc=Z[1,2];
	mat def AA=e(V);
	scalar dd=AA[1,1];
	scalar ee=AA[2,2];
	scalar ss=abs(bb/sqrt(dd));
	scalar tt=abs(cc/sqrt(ee));
	if ss>=1.95996{;
		local j=`j'+1;
		};
	if tt>1.95996{;
		local k=`k'+1;
		};
	drop shalll`i';
	drop aftr`i';
	drop ran_yr`i';
	};
	

disp `j';
disp `k';

