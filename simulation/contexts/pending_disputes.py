from simulation.contexts.context import Context

class PendingDispute(Context):
    def __init__(self, id: int, status: str) -> None:
        super().__init__(id)
        self.status = status

    def juror_join(self, juror_id: int):
        pass
