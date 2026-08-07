```mermaid
erDiagram
    user ||--o{ topic : create
    user ||--o{ comment : create
    topic ||--o{ comment : contain
    user ||--o{ dispute : open
    topic |o--|| dispute : triggers
    dispute ||--o{ vote : have
    user ||--o{ vote : have

    user {
        int id PK
        string name
        string email
        string password
        int reputation
        string status
        string wallet_address
        date created_at
    }

    topic {
        int id PK
        string title
        string description
        date created_at
        string status
        int user_id FK
    }

    comment {
        int id PK
        string content
        date created_at
        int user_id FK
        int topic_id FK
    }

    dispute {
        int id PK
        string name
        string status
        int topic_id FK
        int participant_id FK
    }

    vote {
        int id PK
        float value
        date created_at
        int user_id FK
        int dispute_id FK
    }
```
