while true; do
    date +"%Y-%m-%d %H:%M:%S"
    docker stats 79e4e234711e --no-stream --format "{{.Name}} {{.MemUsage}}"
done >> container_mem.log