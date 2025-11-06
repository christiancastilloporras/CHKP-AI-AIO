# Check Point AI - MCP and WAF AIO deployment

This project is to allow you to launch the AIO in docker to play with AI agents with check Point MCP

## Installation

You must have Docker Container Runtime and Docker Compose plugin installed, to launch it.

The compose file uses multiple profiles to launch the container depending on your needs.

1 .- Git clone the project, this will download the compose files and folders with some demo workflows

2 .- Rename the "env_example" file in the root directory to ".env" and fill wit your tokens 

NOTE: the compose deploy Ollama container you must use profile "cpu" (for anyone) or profile "gpu-nvidia" is you have Nvidia cards
3A .- if you want to deploy and use the demo workflows
```bash
docker compose --profile cpu --profile import up -d
```
3B .- if you have Nvidia card available
```bash
docker compose --profile gpu-nvidia --profile import up -d
```
3C .- in case you want to deploy a fresh install without demo workflows of N8N
```bash
docker compose --profile cpu --profile new up -d
```
## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.
