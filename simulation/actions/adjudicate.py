from actions.action import Action;

class AdjudicateAction(Action):
    def __init__(self, id: int, dispute_id: int, gained_reputation: float, rewarded: float, decision: str) -> None:
        super().__init__(id)
        self.dispute_id = dispute_id
        self.gained_reputation = gained_reputation
        self.decision = decision
        self.rewarded = rewarded

