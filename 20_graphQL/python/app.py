from ariadne import QueryType, make_executable_schema, load_schema_from_path
from ariadne.asgi import GraphQL
from mutations import mutation

type_defs = load_schema_from_path("schema.graphql")

query = QueryType()


# @query.field("hello")
# def resolve_hello(*_):
#     return "Hello world!"


schema = make_executable_schema(type_defs, query, mutation)
app = GraphQL(schema, debug=True)