

import Fluent

struct CreateUserTableMigration: AsyncMigration{
    
    func prepare(on database: Database) async throws {
       try await database.schema("user")
            .id()
            .field("user_name", .string)
            .create()
    }
    
    
    func revert(on database: Database) async throws {
        try await database.schema("user")
            .delete()
    }
}

