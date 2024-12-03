from PIL import Image

def downscale_image(image_path, output_size):
    # Open the image
    image = Image.open("src/" + image_path).convert("RGB")
    
    # Resize (downscale) the image
    downscaled_image = image.resize(output_size)
    downscaled_image.save("out/downscaled/" + image_path);
    
    return downscaled_image

def save_rgb_values(image, output_prefix="pixel_data", binary_line_length=256):
    # Initialize lists to store R, G, B values
    red_values = []
    green_values = []
    blue_values = []

    # Extract RGB values
    width, height = image.size
    for y in range(height):
        for x in range(width):
            r, g, b = image.getpixel((x, y))
            r = str(int(round(r / 255)))
            g = str(int(round(g / 255)))
            b = str(int(round(b / 255)))
            red_values.append(r)
            green_values.append(g)
            blue_values.append(b)

    # Function to write values to a file in the required format
    def write_hex_values(values, filename):
        binary_line = ""
        with open(filename, "w") as file:
            for i in range(len(values)):
                # Accumulate each binary value (1 bit per color value)
                binary_line += values[i]

                # Once 256 bits (64 pixels * 4 bits) have been collected, mirror and convert to hex
                if len(binary_line) == binary_line_length:
                    # Mirror the entire 256-bit binary line
                    mirrored_binary_line = binary_line[::-1]
                    
                    # Convert the mirrored binary line to hex, 4 bits (1 hex digit) at a time
                    hex_line = "".join(f"{int(mirrored_binary_line[j:j+4], 2):X}" for j in range(0, binary_line_length, 4))

                    # Write the hex line to the file
                    file.write(hex_line + "\n")
                    
                    # Reset binary line for the next batch
                    binary_line = ""

            # Write any remaining bits if they exist, mirror, and pad to 256 bits
            if binary_line:
                # Pad the binary line to 256 bits if necessary
                padded_binary_line = binary_line.ljust(binary_line_length, '0')
                mirrored_binary_line = padded_binary_line[::-1]
                
                # Convert to hex and write to the file
                hex_line = "".join(f"{int(mirrored_binary_line[j:j+4], 2):X}" for j in range(0, binary_line_length, 4))
                file.write(hex_line + "\n")

    # Save each color component to separate text files with formatted mirrored hex lines
    write_hex_values(red_values, f"out/init/{output_prefix}_red.txt")
    write_hex_values(green_values, f"out/init/{output_prefix}_green.txt")
    write_hex_values(blue_values, f"out/init/{output_prefix}_blue.txt")

# Example usage:
image_path = "Sprite.png"  # Replace with your image path
output_size = (128, 32)       # Replace with desired resolution (width, height)
downscaled_image = downscale_image(image_path, output_size)
save_rgb_values(downscaled_image)