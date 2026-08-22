from simulation.contexts.context import Context

class Claim(Context):
    def __init__(self, id: int, status: str, ipfs: str, bond: int) -> None:
        super().__init__(id)
        self.status = status
        self.ipfs = ipfs
        self.bond = bond

    def trigger_dispute(self, challenger_id: int):
        pass

    def jury_decision(self) -> str:
        return "";

