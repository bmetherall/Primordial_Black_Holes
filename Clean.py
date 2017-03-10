from pysph.solver.utils import *
import numpy as np

def CleanData(fin,fout):
	data = load(fin)

	fluid = data['arrays']['fluid']
	x = fluid.get_property_arrays()['x']
	y = fluid.get_property_arrays()['y']

	np.savetxt(fout,zip(x,y))
	
for i in range((542799-450300)/100):
	CleanData('./BlackHoleMarch3/blackhole_' + str(i*100 + 450300) + '.npz','./Clean/d' + str(i) + '.dat')
	print i

#CleanData('./BlackHoleMarch3/blackhole_450300.npz','./Clean/test.dat')
