/*** Table 7b ***/

clear
#delimit;
use UpdatedCountyCrimeData-2010.dta, clear;

set more off;

drop ppbf*;
drop ppwf*;
drop ppn*;
drop ppbm4049;
drop ppbm5064;
drop ppbm65o;
drop ppwm4049;
drop ppwm5064;
drop ppwm65o;
drop ppbm09;
drop ppwm09;
drop trnd;
drop if year<1977;
drop if year>2006;

/* Dummy model - murder */
areg  lratmur 
shalll
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Trend model - Murder */
areg  lratmur 
aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Murder */
areg  lratmur 
shalll aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Rape */
areg  lratrap 
shalll
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw* 
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Trend model - Rape */
areg  lratrap 
aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Rape */
areg  lratrap 
shalll aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw* 
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Assault */
areg  lrataga 
shalll
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Trend model - Assault */
areg  lrataga 
aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Assault */
areg  lrataga 
shalll aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Robbery */
areg  lratrob 
shalll
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Trend model - Robbery */
areg  lratrob 
aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Robbery */
areg  lratrob 
shalll aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Auto */
areg  lrataut 
shalll
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Trend model - Auto */
areg  lrataut 
aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Auto */
areg  lrataut 
shalll aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Burglary */
areg  lratbur 
shalll
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Trend model - Burglary */
areg  lratbur 
aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Burglary */
areg  lratbur 
shalll aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Dummy model - Larceny */
areg  lratlar 
shalll
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Trend model - Larceny */
areg  lratlar 
aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;

/* Hybrid model - Larceny */
areg  lratlar 
shalll aftr
prison_1 lpolicerate2 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* trnd*
density
[aweight=popc], absorb(fipsid) cluster(fipsstat) robust;


