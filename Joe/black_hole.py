
from pysph.sph.equation import Equation, Group

class BlackHole2D(Equation):
    def __init__(self, dest, sources, soft=0.01, v_bh=0.0, x_bhi = 0.0, y_bhi = 1.0, M = 1.0):
        self.soft = soft # softening length to not divide by zero
        self.v_bh = v_bh # velocity of BH
        self.M = M # mass of black hole
        self.y_bhi = y_bhi # initial location of BH
        self.x_bhi = x_bhi
        super(BlackHole2D, self).__init__(dest, sources)

    def initialize(self, d_idx, d_au, d_av):
        d_au[d_idx] = 0.0
        d_av[d_idx] = 0.0

    # calculate the force due to the black hole
    def loop(self, d_x, d_y, d_idx, d_au, d_av, d_m, t):
        d_au[d_idx] += -self.M * d_m[d_idx] * (d_x[d_idx] - self.x_bhi) / pow(((d_x[d_idx] - self.x_bhi)**2 + self.soft**2 + (d_y[d_idx] - self.y_bhi + self.v_bh * t)**2), 1.5)
        d_av[d_idx] += -self.M * d_m[d_idx] * (d_y[d_idx] - self.y_bhi + self.v_bh * t) / pow(((d_x[d_idx] - self.x_bhi)**2 + self.soft**2 + (d_y[d_idx] - self.y_bhi + self.v_bh * t)**2), 1.5)



