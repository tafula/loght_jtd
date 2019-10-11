### Plot of (L'/L)(1, chi\_D)

----
## Description
It is shown in the paper that ht(j(tau\_D)) - 3log(|D|) = (L'/L)(1,chi\_D) + O(1) as D diverges to -oo, where chi\_D is the quadratic Dirichlet character associated to Q(sqrt(D)) [i.e., the unique real primitive Dirichlet character mod |D| with chi\_D(-1) = -1, representable by the Kronecker symbol (D | -)]. Under GRH, it is known that (L'/L)(1,chi\_D) = O(loglog(|D|)); I was interested, however, on small values of (L'/L)(1,chi\_D) [possibly lower bounds for D ranging though certain residue classes], so I made a generator to list these values.

### Fixed files
* *listlpl.py*: Generator of lists (Ds.txt and lpl1chiD.txt simultaneously, described below).

* *figlpl.py*: Generator of the image (described below)

* *params.txt:* Tells generators the upper limit for generated lists, as well as residue classes to be colored differently [default: *negative fundamental discriminants* up to -10^6; *precision* up to 10^{-10}; *residue classes*: 1 (mod 4), 8 (mod 16) and 12 (mod 16); *colors*: indigo blue, cardinal red, silver gray.]

----
### Generated files
#### Images
* *figARG.png:* Graph of (L/L')(1, chi\_D) for D negative fundamental discriminants with |D| <= 10^6, with different residue classes colored differently (according to argument "ARG" (= 1,2,3), explained below).


#### Lists
* *Ds.txt:* Negative fundamental discriminants for D > -10^6

* *lpl1chiD.txt:* List of the values of (L/L')(1, chi\_D) for D > -10^6

----
## How to run
The script figlpl.py admits an argument, as in 

* $ python2 figlpl.py ARG

for ARG = 1, 2, 3 (default: 1). The argument tells it how many different colors to use in the graph (1 color: plots all values equally; 2 colors: separates D == 1 (mod 4), D == 0 (mod 4); 3 colors: separates D == 1(4), 8(16), 12(16)).

### Linux
 1. Run gen.sh (can be halted and resumed at any point)
 
### Not-linux
 1. Run listlpl.py (can be halted and resumed at any point)
 2. Run figlpl.py
 
In both cases, lists and images are stored in same folder.

----
## Dependencies

All the Python scripts were written for Python 2.7. Apart from standard Python libraries, [mpmath](http://mpmath.org/), [Matplotlib](https://matplotlib.org/), and [cypari2](https://pypi.org/project/cypari2/) are necessary to run the scripts.

----
## Time estimate
For a laptop with the specs

* *Processor:* Intel(R) Core(TM) i3-5005U CPU @ 2.00GHz,
* *Memory:* 4GiB, clock 1600MHz (0.6ns),
* *HDD:* WDC WD5000LPCX-6 500GB,

running *listlpl.py* until 10^6 takes approximately 16 hours.
