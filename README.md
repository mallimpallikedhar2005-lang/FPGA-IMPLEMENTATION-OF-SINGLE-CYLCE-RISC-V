# FPGA-IMPLEMENTATION-OF-SINGLE-CYLCE-RISC-V
🚀 FPGA Implementation of Single Cycle RISC-V Processor
![WhatsApp Image 2026-03-20 at 18 18 50](https://github.com/user-attachments/assets/1437a0bc-a2f7-4d9e-9d4a-0ce740b7bb81)

📌 Overview

Designed and implemented a 32-bit Single Cycle RISC-V Processor using Verilog HDL and deployed it on DE10-Lite (MAX 10 FPGA). The processor executes one instruction per clock cycle and demonstrates real-time hardware output.

---

⚙️ Features

- Supports R, I, S, B instruction formats
- Modular Verilog design (ALU, Control Unit, Register File, etc.)
- Manual clock execution using push button
- Real-time visualization on FPGA

---

🖥️ FPGA I/O Mapping

- "KEY[0]" → Reset
- "KEY[1]" → Manual Clock
- "LEDR[9:0]" → Program Counter (PC)
- "HEX0–HEX3" → ALU Result

---<img width="1920" height="1080" alt="Screenshot (30)" src="https://github.com/user-attachments/assets/9381719b-b5ce-422c-881f-02f679445ca9" />
<img width="1920" height="1080" alt="Screenshot (31)" src="https://github.com/user-attachments/assets/04011fc5-dd76-4339-be39-fca8c78ead2f" />


🔁 Working

Each button press generates one clock pulse:

- PC increments (PC + 4)
- Instruction executes
- ALU result updates on HEX display

---

▶️ Run Instructions

1. Select device: 10M50DAF484C7G
2. Assign pins (Pin Planner / .qsf)
3. Compile and program FPGA
4. Use buttons to step through instructions

---

🎯 Outcome

Gained hands-on experience in:

- RISC-V architecture
- Verilog design
- FPGA implementation & debugging

---

👤 Author

Kedhar

