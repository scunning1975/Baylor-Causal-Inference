/*** Table 2b Corrected Dataset***/

clear
#delimit;
set mem 500m;
cap log close;
log using Table2b.log, replace;

use NRCData-Corrected.dta, clear;

set more off;


#delimit;
set more off;

drop if year<1977;
drop if year>2000;
drop ppn;
drop ppb;
drop ppw;


/* Dummy model - Murder */

areg  lratmur 
shallf
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Murder */

areg  lratmur 
shlltrda 
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Murder */

areg  lratmur 
shallf shlltrda
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Dummy model - rape*/

areg  lratrap 
shallf
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - rape*/

areg  lratrap 
shlltrda 
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - rape*/

areg  lratrap
shallf shlltrda
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;



/* Dummy model - Assault */

areg  lrataga 
shallf
aovio 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
density
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Assault*/

areg  lrataga 
shlltrda 
aovio 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
density
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Assault*/

areg  lrataga 
shallf shlltrda 
aovio 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
density
[aweight=popc], absorb(fipsid) robust;


/* Dummy model - robbery */

areg  lratrob 
shallf
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Spline model - robbery */

areg  lratrob 
shlltrda 
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Hybrid model - robbery */

areg  lratrob
shallf shlltrda
aovio
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;



/* Dummy model - Auto */

areg  lrataut 
shallf
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Spline model - Auto */

areg  lrataut 
shlltrda 
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Hybrid model - Auto */

areg  lrataut
shallf shlltrda
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;




/* Dummy model - burglary */

areg  lratbur 
shallf
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Spline model - burglary */

areg  lratbur 
shlltrda 
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Hybrid model - burglary */

areg  lratbur
shallf shlltrda
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;



/* Dummy model - larceny */

areg  lratlar 
shallf
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Spline model - larceny */

areg  lratlar 
shlltrda 
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;


/* Hybrid model - larceny */

areg  lratlar
shallf shlltrda
aopro 
rpcpi rpcui rpcim rpcrpo popc
ppb* ppw* ppn*
density yr*
[aweight=popc], absorb(fipsid) robust;

log close;



