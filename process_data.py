import json
from datetime import datetime

def main(req):
    # Read JSON data from request
    data = req.get_json()

    # Simulate processing
    processed_data = {
        "data": data,
        "processed_at": datetime.utcnow().isoformat()
    }

    # Simulate storing data (for assignment)
    print("Processed Data:", json.dumps(processed_data))

    return {
        "status": "success",
        "message": "Data processed successfully"
    }
