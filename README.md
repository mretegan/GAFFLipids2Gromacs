GAFFLipids2Gromacs
==================

The Gromacs compatible topology was generated from files obtained from the [Lipidbook](http://lipidbook.bioch.ox.ac.uk/package/show/id/142.html).

name: AMBER-GAFF-POPC-cd709-v1.zip 

sha1: 20fd22c7455bb54200428a2c19a5def545e422ad

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
