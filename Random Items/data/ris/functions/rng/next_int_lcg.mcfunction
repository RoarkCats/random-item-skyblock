###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function ris:rng/lcg

scoreboard players operation #temp ris.rng = out ris.rng
scoreboard players operation out ris.rng %= #range ris.rng
scoreboard players operation #temp ris.rng -= out ris.rng
scoreboard players operation #temp ris.rng += #m1 ris.rng
execute if score #temp ris.rng matches ..-1 run function ris:rng/next_int_lcg