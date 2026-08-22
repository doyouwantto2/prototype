from simulation.contexts.context import Context

class Assessment(Context):
    def __init__(self, id: int, dispute_id: int) -> None:
        super().__init__(id)
    
    def vote(self, score: float) -> float:
        return 0.0
