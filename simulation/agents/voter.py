from agents.agent import Agent

class VoterAgent:
    def __init__(self, agent: Agent, dispute_id: int, voted_score: float = 0, gained_reputation: float = 0) -> None:
        self.agent = agent
        self.dispute_id = dispute_id
        self.gained_reputation = gained_reputation
        self.voted_score = voted_score


