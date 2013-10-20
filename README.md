GAFFLipids2Gromacs
==================

The Gromacs compatible topology was generated from files obtained from the [Lipidbook](http://lipidbook.bioch.ox.ac.uk/package/show/id/150.html).

1. Load the AMBER files in `tleap` and save the parameters using the commands below.

        > loadamberparams gaff.dat
        Loading parameters: amber12/dat/leap/parm/gaff.dat
        Reading title:
        AMBER General Force Field for organic molecules (Version 1.5, January 2013)
        > source GAFFlipid.dat
        ----- Source: ./GAFFlipid.dat
        ----- Source of ./GAFFlipid.dat done
        > loadamberparams GAFFlipid.frcmod
        Loading parameters: ./GAFFlipid.frcmod
        Reading force field modification type file (frcmod)
        Reading title:
        GAFFlipid: Generalized Amber Force Field for lipid simulations with modified Lennard Jones parameters 15/2/2012
        > loadoff PPC.lib
        Loading library: ./PPC.lib
        > check PPC
        Checking 'PPC'....
        Warning: Close contact of 1.495598 angstroms between .R<PPC 1>.A<C18 129> and .R<PPC 1>.A<H36 134>
        Checking parameters for unit 'PPC'.
        Checking for bond parameters.
        Checking for angle parameters.
        check:  Warnings: 1
        Unit is OK.
        > saveamberparm PPC PPC.prmtop PPC.inpcrd
        > quit

2. Convert the parameters to Gromacs format using [acpype](https://code.google.com/p/acpype). 

        $ acpype.py -d -p PPC.prmtop -x PPC.inpcrd -r

3. Rename PPC.top to POPC.itp and change the PPC string inside it with POPC (if you want).

Single point energy
===================

Below are the calculated energies of the POPC.pdb structure, without any cut-off on the non-bonded interactions.

Gromacs
-------

The values were obtained using the parameters defined POPC.mdp file.

       Energies (kJ/mol)
               Bond          Angle    Proper Dih.  Improper Dih.          LJ-14
        9.09988e+01    2.61156e+02    6.77193e+01    1.88813e+00    6.54664e+01
         Coulomb-14        LJ (SR)   Coulomb (SR)      Potential    Kinetic En.
       -1.50356e+02   -3.73533e+01   -1.79221e+02    1.20299e+02    6.83835e+00
       Total Energy    Temperature Pressure (bar)
        1.27137e+02    4.12260e+00    0.00000e+00

