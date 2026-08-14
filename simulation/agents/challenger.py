from agents.agent import Agent

class ChallengerAgent:
    def __init__(self, agent: Agent, dispute_id: int, asset_id: int, gained_reputation: float = 0, gained_bond: float = 0) -> None:
        self.agent = agent
        self.dispute_id = dispute_id
        self.asset_id = asset_id
        self.gained_reputation = gained_reputation
        self.gained_bond = gained_bond

