from typing import List, Optional
from actions.action import Action
from actions.publish import PublishAction
from actions.dispute import DisputeAction
from actions.vote import VoteAction
from actions.adjudicate import AdjudicateAction
from strategies.reputation import ReputationOriented
from strategies.balance import BalanceOriented
from strategies.neutral import NeutralOriented
from strategies.collusion import CollusionOriented

class Agent:
    def __init__(self, id: int, objective: str, reputation: float = 0, balance: float = 0, events: Optional[List[Action]] = None):
        self.id = id
        self.reputation = reputation
        self.objective = objective
        self.balance = balance
        self.events = events if events is not None else []

    def record_publish(self, id: int, status: str, ipfs: str, bond: int):
        act = PublishAction(id, status, ipfs, bond) 

    def record_dispute(self, id, asset_id: int, counter_bond: int, status: str):
        act = DisputeAction(id, asset_id, counter_bond, status)

    def record_vote(self, id: int, dispute_id: int, gained_reputation: float, score: float):
        act = VoteAction(id, dispute_id, gained_reputation, score)

    def record_adjudicate(self, id: int, dispute_id: int, gained_reputation: float, rewarded: float, decision: str):
        act = AdjudicateAction(id, dispute_id, gained_reputation, rewarded, decision)

    def exec(self, context):
        if self.objective == "Reputation":
            ReputationOriented(self, context)
        if self.objective == "Balance":
            BalanceOriented(self, context)
        if self.objective == "Neutral":
            NeutralOriented(self, context)
        if self.objective == "Collusion":
            CollusionOriented(self, context)
