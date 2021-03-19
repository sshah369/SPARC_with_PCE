#!/bin/bash

# mpirun -np 6 gdb -batch -ex=r -ex=bt -ex=q --args ./sparc -name BaTiO3
#LIBPCE_DEBUG_LEVEL=5 mpirun -np 1 gdb -batch -ex=r -ex=bt -ex=q --args ./sparc -name BaTiO3
#LIBPCE_DEBUG_LEVEL=5 mpirun -np 1 valgrind --track-origins=yes ./sparc -name BaTiO3
#LIBPCE_DEBUG_LEVEL=25 mpirun -hostfile hostfile --np 16 gdb -batch -ex=r -ex=bt -ex=q --args ./sparc -name BaTiO3 | tee serial_no_them.txt
LIBPCE_DEBUG_LEVEL=25 mpirun -hostfile hostfile --np 4 gdb -batch -ex=r -ex=bt -ex=q --args ./sparc -name BaTiO3 | tee nl_ser.txt
