from actions.action import Action;

class VoteAction(Action):
    def __init__(self, id: int, dispute_id: int, gained_reputation: float, score: float) -> None:
        super().__init__(id)
        self.dispute_id = dispute_id
        self.gained_reputation = gained_reputation
        self.score = score
