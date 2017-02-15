from pysph.sph.equation import Equation

class BlackHole2D(Equation):
    def __init__(self, dest, sources, soft=0.05, t_hit=5.0, M=1.0):
        self.soft = soft # softening length to not divide by zero
        self.t_hit = t_hit # time when the black hole crosses the origin
        self.M = M # mass of black hole
        super(BlackHole2D, self).__init__(dest, sources)

    def initialize(self, d_idx, d_au, d_av):
        d_au[d_idx] = 0.0
        d_av[d_idx] = 0.0

    # calculate the force due to the black hole
    def loop(self, d_x, d_y, d_idx, d_au, d_av, t):
        d_au[d_idx] += -self.M * d_x[d_idx] / pow((d_x[d_idx]**2 + self.soft**2 + (d_y[d_idx] - t + self.t_hit)**2),3.0/2.0)
        d_av[d_idx] += -self.M * (d_y[d_idx] - t + self.t_hit) / pow((d_x[d_idx]**2 + self.soft**2 + (d_y[d_idx] - t + self.t_hit)**2),3.0/2.0)


class BlackHole3D(Equation):
    def __init__(self, dest, sources, soft=0.05, t_hit=5.0, M=1.0):
        self.soft = soft # softening length to not divide by zero
        self.t_hit = t_hit # time when the black hole crosses the origin
        self.M = M # mass of black hole
        super(BlackHole3D, self).__init__(dest, sources)

    def initialize(self, d_idx, d_au, d_av, d_aw):
        d_au[d_idx] = 0.0
        d_av[d_idx] = 0.0
        d_aw[d_idx] = 0.0

    # calculate the force due to the black hole
    def loop(self, d_x, d_y, d_z, d_idx, d_au, d_av, d_aw, t):
        d_au[d_idx] += -self.M * d_x[d_idx] / pow((d_x[d_idx]**2 + d_z[d_idx]**2 + self.soft**2 + (d_y[d_idx] - t + self.t_hit)**2),3.0/2.0)
        d_av[d_idx] += -self.M * (2*d_y[d_idx] - t + self.t_hit) / pow((d_x[d_idx]**2 + d_z[d_idx]**2 + self.soft**2 + (d_y[d_idx] - t + self.t_hit)**2),3.0/2.0)
        d_aw[d_idx] += -self.M * d_z[d_idx] / pow((d_x[d_idx]**2 + d_z[d_idx]**2 + self.soft**2 + (d_y[d_idx] - t + self.t_hit)**2),3.0/2.0)







