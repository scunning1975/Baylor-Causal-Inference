/*** Table 13 Without State Trends ***/

clear
#delimit;
use UpdatedStateLevelData-2010.dta, clear;

set more off;

drop trnd;
drop ppb;
drop ppbf*;
drop ppwf*;
drop ppn*;
drop ppbm4049;
drop ppbm5064;
drop ppbm65o;
drop ppwm4049;
drop ppwm5064;
drop ppwm65o;

/* Dummy model - Assault */
areg  lgaga 
shalll
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate density
ppb* ppw*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Trend model - Assault */
areg  lgaga 
aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate density
ppb* ppw*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;

/* Hybrid model - Assault */
areg  lgaga 
shalll aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate density
ppb* ppw*
yr*  
[aweight=popstate], absorb(stnumber) cluster(fipsstat) robust;
