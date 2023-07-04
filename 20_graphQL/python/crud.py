# as you know here i use Database[PostgreSQL] to connect to the database
# Install psycopg2 & databases[postgresql] & asyncpg

async def get_blogs(
    skip: Optional[int] = 0, limit: Optional[int] = 100
) -> Optional[Dict]:
    query = blog.select(offset=skip, limit=limit)
    result = await database.fetch_all(query=query)
    return [dict(blog) for blog in result] if result else None

async def get_blog(blog_id: int) -> Optional[Dict]:
    query = blog.select().where(blog.c.id == int(blog_id))
    result = await database.fetch_one(query=query)
    return dict(result) if result else None