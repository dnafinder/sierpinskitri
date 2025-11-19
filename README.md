[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=dnafinder/sierpinskitri)

🔺 sierpinski.m — MATLAB Sierpinski Triangle Generator

sierpinski.m is a compact and fully vectorized MATLAB function that generates and plots the Sierpinski triangle using a recursive affine-iteration scheme. It is lightweight, self-contained, and ideal for demonstrations, fractal visualization, and teaching purposes.

✨ Features

🔁 Plot any recursion level REC (from 1 upward)

⚡ Efficient vectorized MATLAB implementation

🧩 No toolboxes required

📘 Fully documented with MATLAB help section + inline English comments

🎯 Default recursion depth: REC = 6

📦 Repository

GitHub: https://github.com/dnafinder/sierpinskitri

🛠 Requirements

MATLAB R2016b or newer (required for implicit expansion).

📥 Installation

Clone the repository with:

git clone https://github.com/dnafinder/sierpinskitri.git

Then add the folder to MATLAB’s path:

addpath('path_to_sierpinskitri_folder');
savepath;

🚀 Usage

Basic usage:
sierpinski(6);

Other examples:
sierpinski(3);
sierpinski(7);
sierpinski(); (uses default recursion level)

🧠 Function signature

sierpinski(rec)

Input:

rec — positive integer recursion depth, controls the number of sub-triangles (3^rec)

Output:

A plotted Sierpinski triangle (no variables returned)

📚 Citation

If you use this function for research, teaching material, or publications, please cite:

Cardillo G. (2017). sierpinski.m – A compact MATLAB implementation for plotting the Sierpinski triangle.
GitHub: https://github.com/dnafinder/sierpinskitri

🔑 License

This repository follows the license contained in the root directory.
Please check the LICENSE file for details.

👤 Author

Giuseppe Cardillo
Email: giuseppe.cardillo.75@gmail.com
