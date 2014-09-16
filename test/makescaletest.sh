mpicc src/*.cc -std=c++11 -L/home/kinsey/software/boost_1_54_0/stage/lib -lboost_mpi -lboost_serialization -I/home/kinsey/software/boost_1_54_0 -c -openmp  -I/home/kinsey/software/H5Part-1.6.6/build/include -L/home/kinsey/software/H5Part-1.6.6/build/lib -lH5Part -lhdf5 -lz -vec-report2 -vec -tbb 
mpicc  scaling.cc libparty.o libparty_h5part.o hashtable.o hashtable_soa.o hashtable_aosoa.o calcdens_aosoa.o libparty_h5part_aosoa.o calcdens_soa.o libparty_h5part_soa.o -std=c++11 -L/home/kinsey/software/boost_1_54_0/stage/lib -lboost_mpi -lboost_serialization -I/home/kinsey/software/boost_1_54_0 -I./src -o nnscaletest -openmp  -I/home/kinsey/software/H5Part-1.6.6/build/include -L/home/kinsey/software/H5Part-1.6.6/build/lib -lH5Part -lhdf5 -lz -vec-report2 -vec -tbb -offload-option,mic,compiler,"-z defs"
mpicc  scalingomp.cc libparty.o libparty_h5part.o hashtable.o hashtable_soa.o hashtable_aosoa.o calcdens_aosoa.o libparty_h5part_aosoa.o calcdens_soa.o libparty_h5part_soa.o -std=c++11 -L/home/kinsey/software/boost_1_54_0/stage/lib -lboost_mpi -lboost_serialization -I/home/kinsey/software/boost_1_54_0 -I./src -o nnomptest -openmp  -I/home/kinsey/software/H5Part-1.6.6/build/include -L/home/kinsey/software/H5Part-1.6.6/build/lib -lH5Part -lhdf5 -lz -vec-report2 -vec -tbb -offload-option,mic,compiler,"-z defs"
#mpirun -n 2 ./mpitest