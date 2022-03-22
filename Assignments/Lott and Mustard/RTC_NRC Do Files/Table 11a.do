/*** Table 11a ***/

clear
#delimit;
use UpdatedStateLevelData-2010.dta, clear;

set more off;

set virtual on;

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

drop if year<1993;

/* Dummy model - Murder */
areg  lmur 
shalll
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Trend model - Murder */
areg  lmur 
aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Hybrid model - Murder */
areg  lmur 
shalll aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Dummy model - Rape */
areg  lrap 
shalll
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw* 
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Trend model - Rape */
areg  lrap 
aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Hybrid model - Rape */
areg  lrap 
shalll aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw* 
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Dummy model - Assault */
areg  laga 
shalll
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Trend model - Assault */
areg  laga 
aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Hybrid model - Assault */
areg  laga 
shalll aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Dummy model - Robbery */
areg  lrob 
shalll
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Trend model - Robbery */
areg  lrob 
aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Hybrid model - Robbery */
areg  lrob 
shalll aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Dummy model - Auto */
areg  laut 
shalll
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Trend model - Auto */
areg  laut 
aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Hybrid model - Auto*/
areg  laut 
shalll aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Dummy model - Burglary */
areg  lbur 
shalll
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Trend model - Burglary */
areg  lbur 
aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Hybrid model - Burglary */
areg  lbur 
shalll aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Dummy model - Larceny */
areg  llar 
shalll
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Trend model - Larceny */
areg  llar 
aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;

/* Hybrid model - Larceny */
areg  llar 
shalll aftr
prison_1 lpolicerate 
rpcpi rpcui rpcim rpcrpo unemp povrate
ppb* ppw*
yr* 
density
[aweight=popstate], absorb(fipsstat) cluster(fipsstat) robust;



