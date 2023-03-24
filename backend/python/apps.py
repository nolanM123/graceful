import graceful
import session
import admin
import ailments
import questions
import criteria
import products


app = graceful.Graceful()

app.route("post", "/authenticate")(session.authenticate)
app.route("post", "/session")(session.session)
app.route("post", "/recovery")(session.recovery)
app.route("post", "/reset")(session.reset)

app.route("get", "/admin")(admin.get_admin)
app.route("post", "/admin")(admin.add_admin)
app.route("put", "/admin")(admin.update_admin)
app.route("delete", "/admin")(admin.delete_admin)

app.route("get", "/ailments")(ailments.get_ailments)
app.route("post", "/ailments")(ailments.add_ailments)
app.route("put", "/ailments")(ailments.update_ailments)
app.route("delete", "/ailments")(ailments.delete_ailments)

app.route("get", "/questions")(questions.get_questions)
app.route("post", "/questions")(questions.add_questions)
app.route("put", "/questions")(questions.update_questions)
app.route("delete", "/questions")(questions.delete_questions)

app.route("get", "/criteria")(criteria.get_criteria)
app.route("post", "/criteria")(criteria.add_criteria)
app.route("put", "/criteria")(criteria.update_criteria)
app.route("delete", "/criteria")(criteria.delete_criteria)

app.route("get", "/products")(products.get_products)
app.route("post", "/products")(products.add_products)
app.route("put", "/products")(products.update_products)
app.route("delete", "/products")(products.delete_products)


@app.route("get", "/frontend/{:filepath}")
def static(request):
    try:
        with open(request.url, "rb") as file:
            return file.read()
    
    except FileNotFoundError:
        raise graceful.HTTPException("404", "Not Found")


@app.route("get", "/{filename}")
def views(filename):
    try:
        with open(f"frontend/views/{filename or 'index'}.html", "rb") as file:
            return file.read()
    
    except FileNotFoundError:
        raise graceful.HTTPException("404", "Not Found")


app.run()
