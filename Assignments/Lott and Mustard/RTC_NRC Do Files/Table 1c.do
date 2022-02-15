/*** Table 1c ***/

clear
#delimit;
use UpdatedCountyCrimeData-2010.dta, clear;

set more off;

drop ppwm09;
drop ppwf09;
drop ppbm09;
drop ppbf09;
drop ppnm09;
drop ppnf09;
drop if year>2000;


/* Dummy model - Murder */

areg  lratmur 
shalll
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Murder */

areg  lratmur 
aftr 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Murder */

areg  lratmur 
shalll aftr
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Rape*/

areg  lratrap 
shalll
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Rape*/

areg  lratrap 
aftr 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Rape*/

areg  lratrap
shalll aftr
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Assault */

areg  lrataga 
shalll
yr*
density
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Assault*/

areg  lrataga 
aftr 
yr*
density
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Assault*/

areg  lrataga 
shalll aftr 
yr*
density
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Robbery */

areg  lratrob 
shalll
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Robbery */

areg  lratrob 
aftr 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Robbery */

areg  lratrob
shalll aftr
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Auto */

areg  lrataut 
shalll
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Auto */

areg  lrataut 
aftr 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Auto */

areg  lrataut
shalll aftr
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Burglary */

areg  lratbur 
shalll
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Burglary */

areg  lratbur 
aftr 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Burglary */

areg  lratbur
shalll aftr
yr*
[aweight=popc], absorb(fipsid) robust;

/* Dummy model - Larceny */

areg  lratlar 
shalll
yr*
[aweight=popc], absorb(fipsid) robust;

/* Spline model - Larceny */

areg  lratlar 
aftr 
yr*
[aweight=popc], absorb(fipsid) robust;

/* Hybrid model - Larceny */

areg  lratlar
shalll aftr
yr*
[aweight=popc], absorb(fipsid) robust;




