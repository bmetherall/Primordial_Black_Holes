from pysph.sph.equation import Equation

class BlackHole(Equation):
    def __init__(self, dest, sources, plum=0.05):
        self.plum = plum
        super(BlackHole, self).__init__(dest, sources)

    def initialize(self, d_idx, d_au, d_av, d_aw):
        d_au[d_idx] = 0.0
        d_av[d_idx] = 0.0
        d_aw[d_idx] = 0.0

    def loop(self, d_x, d_y, d_z, d_idx, d_au, d_av, d_aw, t):
        d_au[d_idx] += d_x[d_idx] / pow((d_x[d_idx]*d_x[d_idx] + d_y[d_idx]*d_y[d_idx] + d_z[d_idx]*d_z[d_idx] + self.plum*self.plum + (d_z[d_idx] - t)*(d_z[d_idx] - t)),3.0/2.0)
        d_av[d_idx] += d_y[d_idx] / pow((d_x[d_idx]*d_x[d_idx] + d_y[d_idx]*d_y[d_idx] + d_z[d_idx]*d_z[d_idx] + self.plum*self.plum+ (d_z[d_idx] - t)*(d_z[d_idx] - t)),3.0/2.0)
        d_aw[d_idx] += 0


