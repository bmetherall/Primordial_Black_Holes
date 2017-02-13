from pysph.sph.equation import Equation

class BlackHole(Equation):
    def __init__(self, dest, sources, soft=0.05, t_hit=5.0, M=20.0):
        self.soft = soft # softening length to not divide by zero
        self.t_hit = t_hit # time when the black hole crosses the origin
        self.M = M # mass of black hole
        super(BlackHole, self).__init__(dest, sources)

    def initialize(self, d_idx, d_au, d_av, d_aw):
        d_au[d_idx] = 0.0
        d_av[d_idx] = 0.0
        d_aw[d_idx] = 0.0

    # calculate the force due to the black hole
    def loop(self, d_x, d_y, d_z, d_idx, d_au, d_av, d_aw, t):
        d_au[d_idx] += -self.M*d_x[d_idx] / pow((d_x[d_idx]*d_x[d_idx] + d_z[d_idx]*d_z[d_idx] + self.soft*self.soft + (d_y[d_idx] - t + self.t_hit)*(d_y[d_idx] - t + self.t_hit)),3.0/2.0)
        d_av[d_idx] += -self.M*(2*d_y[d_idx] - t + self.t_hit) / pow((d_x[d_idx]*d_x[d_idx] + d_z[d_idx]*d_z[d_idx] + self.soft*self.soft + (d_y[d_idx] - t + self.t_hit)*(d_y[d_idx] - t + self.t_hit)),3.0/2.0)
        d_aw[d_idx] += 0

