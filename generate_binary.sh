SIZE_MB=1

words=(hunger harness hobby hunger honey harvest hammer hanger hag hazel hawt hawk hazy head heap heal heap heat heavy heave heed heel heels heft hefty heigh heap heel heed heft heigh helium help hen hemp herb hero herring hey hick hide high hill hint hip hire hitch hobo hobnob hock hocus holler hole hollow holier holy honey hoot hope horn horror horse host hostel hostess hot hospital hotel house hovel howled howl hue hug huge humid hum humble humbug humerus humorous hunt hunt hunty humor hungry havoc haw)

filename="${words[$((RANDOM % ${#words[@]}))]}-$(date +%s).bin"

size=$((SIZE_MB * 1024 * 1024))

dd if=/dev/urandom of="$filename" bs=1 count=$size 2>/dev/null

echo "Created $filename ($size bytes)"
