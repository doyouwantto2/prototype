from contexts.context import Context
from agents.agent import Agent

class Strategy:
    def __init__(self, agent: Agent, context: Context) -> None:
        self.context = context
        self.agent = agent
