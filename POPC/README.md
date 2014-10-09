GAFFLipids2Gromacs
==================

The Gromacs compatible topology was generated from files obtained from the [Lipidbook](http://lipidbook.bioch.ox.ac.uk/package/show/id/150.html). Run the `run.sh` script to produce all the required outputs.

Comparison of the energy terms obtained using Amber14 and Gromacs 4.6.5 

| term              | Gromacs (kj/mol) | Gromacs (kcal/mol) | Amber    |
| ----------------- | ----------------:| ------------------:| --------:|
| bond              |  9.0998E+01      |  21.7491           |  21.7492 |
| angle             |  2.5153E+02      |  60.1176           |  60.1177 |
| dihedral proper   |  6.7719E+01      |  16.1853           |  16.6366 |
| dihedral improper |  1.8882E+00      |   0.4513           |
| lj                | -3.7353E+01      |  -8.9277           |  -8.9276 |
| lj-14             |  6.5466E+01      |  15.6468           |  15.6470 |
| coulomb           | -1.7922E+02      | -42.8348           | -42.8330 |
| coulomb-14        | -1.5036E+02      | -35.9359           | -35.9362 |
