let responseData=pm.response.json();
pm.environment.set("token", responseData["data"]["attribute"]["access_token"])
