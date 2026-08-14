from agents.agent import Agent

class ClaimantAgent:
    def __init__(self, agent: Agent, asset_id: int, gained_bond: float = 0) -> None:
        self.agent = agent
        self.asset_id = asset_id
        self.gained_bond = gained_bond

