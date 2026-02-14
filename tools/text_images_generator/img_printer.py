from dataclasses import dataclass
from PIL import Image, ImageDraw, ImageFont

@dataclass
class ImgPrinter:
    color: tuple[int, int, int]
    text_position: tuple[int, int]
    text_size: tuple[int, int]
    font: str

    def _create_font(self, text):
        nb_lines = text.count('\n') + 1
        max_font_size_vertical = (self.text_size[1] - (nb_lines + 1)) / nb_lines

        max_font_size_horizontal = 1
        font = ImageFont.truetype(self.font, size=max_font_size_horizontal)

        longest_line = ""
        longest_line_length = 0
        lines = text.split('\n')
        for line in lines:
            line_length = font.getbbox(line, )[2]
            if line_length > longest_line_length:
                longest_line_length = line_length
                longest_line = line


        while font.getbbox(longest_line)[2] < self.text_size[0]:
            # iterate until the text size is just larger than the criteria
            max_font_size_horizontal += 1
            font = ImageFont.truetype(self.font, size=max_font_size_horizontal)

        max_font_size_horizontal -= 1

        font_size = min(max_font_size_vertical, max_font_size_horizontal)

        return ImageFont.truetype(self.font, size=font_size)

    def create_image(self, base_image, text, filepath):
        image = Image.open(base_image).convert("RGBA")
        draw = ImageDraw.Draw(image)
        font = self._create_font(text)
        text_position = (self.text_position[0] + self.text_size[0] / 2, self.text_position[1] + self.text_size[1] / 2)
        draw.text(text_position, text, fill=self.color, font=font, anchor="mm")
        image.save(filepath)
        print(f"Image saved to {filepath}")