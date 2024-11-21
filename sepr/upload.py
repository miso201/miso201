import requests

def upload_image_to_gofile(img_filename):
    url = 'https://store1.gofile.io/uploadFile'
    try:
        with open(img_filename, 'rb') as img_file:
            files = {'file': img_file}
            response = requests.post(url, files=files)
            response.raise_for_status()  # Throws error for HTTP issues
            result = response.json()

            if result['status'] == 'ok':
                download_page = result['data']['downloadPage']
                with open('show.bat', 'a') as bat_file:
                    bat_file.write(f'\necho Avica Remote ID : {download_page}')
                print(f"Image uploaded successfully! Download link: {download_page}")
                return download_page
            else:
                print("Upload error:", result.get('status'))
                return None
    except Exception as e:
        print(f"Failed to upload image: {e}")
        return None

# Provide the correct path to your screenshot image
image_path = 'screenshot.png'  # Path to the screenshot captured earlier
download_link = upload_image_to_gofile(image_path)

if download_link:
    print(f"Access your screenshot at: {download_link}")
else:
    print("Failed to upload image.")
