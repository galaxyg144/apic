# apic

apic is so epic!!!

apic is A terminal-based HTTP client for GET, POST, PUT, PATCH, DELETE, HEAD requests with headers, JSON bodies, query parameters, file uploads, timeout support, and more.

## Commands / How to Use

```bash
usage: apic [-h] [-g] [-p] [-pu] [-pa] [-d] [-hE] [-H HEADER]
            [-B BODY] [-F FILE] [-q QUERY] [-o OUTPUT] [-v] [-t T]
            [--version]
            url

apic - Terminal API Client

positional arguments:
  url                   Target URL

options:
  -h, --help            show this help message and exit
  -g                    GET request
  -p                    POST request
  -pu                   PUT request
  -pa                   PATCH request
  -d                    DELETE request
  -hE, --head           HEAD request
  -H HEADER, --header HEADER
                        Custom headers: -H 'Authorization: TOKEN'
  -B BODY, --body BODY  Request body (JSON or raw)
  -F FILE, --file FILE  File uploads: -F 'field=@file'
  -q QUERY, --query QUERY
                        Query params: key=value&key2=value2
  -o OUTPUT, --output OUTPUT
                        Save response to file
  -v, --verbose         Verbose output
  -t T                  Request timeout in seconds
  --version             Show program version and exit
```
GET request with query params:
```
apic https://api.example.com/items -g -q "page=2&limit=5"
```


POST request with JSON body and headers:
```
apic https://api.example.com/login -p -B '{"username":"user","password":"pass"}' -H "Authorization: Bearer TOKEN"
```

Upload a file with PUT:
```
apic https://api.example.com/upload -pu -F "file=@myfile.png"
```


Save response to a file:
```
apic https://api.example.com/data -g -o response.json
```

## Installation (Ubuntu/Debian)

- Download the .deb package from GitHub Releases:
```
wget https://github.com/galaxyg144/apic/releases/latest/download/apic.deb
```

- Install it:
### Debian/Ubuntu
```
sudo dpkg -i apic.deb
sudo apt-get install -f
```

- Run apic from anywhere:
```
apic https://example.com -g
```
### Arch Linux
  - i dont know tbh i dont use arch just build from source

### Build From Source
  - Clone the repository (duh)
  - Run `./build.sh`
## Notes

- Make sure python3 and python3-requests are installed.

- Flags can be combined as needed (-p -B '{"key":"value"}' -H "Auth: TOKEN").