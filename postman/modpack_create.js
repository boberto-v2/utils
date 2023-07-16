let responseData=pm.response.json();
pm.environment.set("upload_id", responseData["relationships"]["object"]["attribute"]["id"])
pm.environment.set("event_id", responseData["relationships"]["event"]["attribute"]["id"])
pm.environment.set("modpack_id", responseData["resource"]["attribute"]["id"])
