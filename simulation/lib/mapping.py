import math

def bond_to_behaviour_point(bond: int) -> float:
    return 1.0 * bond

def sigmoid_symmetric(x: float, k: float = 0.0001) -> float:
    return 1500 * math.tanh(k * x)

