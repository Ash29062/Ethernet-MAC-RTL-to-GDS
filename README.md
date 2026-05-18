# Ethernet MAC RTL-to-GDSII

An RTL-to-GDSII implementation of the OpenCores/FreeCores Ethernet MAC using an open-source ASIC flow, with exploration across baseline and custom physical-design runs, timing tuning, and Sky130 PDK variants.

## Overview

This repository documents the physical implementation of the Ethernet MAC 10/100 Mbps core derived from the FreeCores/OpenCores `ethmac` RTL, targeting IEEE 802.3 Ethernet MAC functionality and taking the design from RTL through synthesis, floorplanning, placement, clock-tree synthesis, routing, and sign-off analysis.

The project was developed as part of a VLSI CAD course and focuses on understanding physical-design bottlenecks, parameter tuning, and reproducible open-source ASIC flows rather than rewriting the MAC RTL from scratch.

## Repository structure

- `src/` — source RTL and related design inputs used for the flow; the RTL base is the same `ethmac` design from FreeCores/OpenCores, with project-specific flow integration around it.
- `final/` — final-stage flow material, including the PyNotebook workflow used for the most straightforward synthesis and implementation runs described in the project reports.
- `Doc/` — project documentation and report material.
- `metadata/` — auxiliary run metadata, configuration outputs, and supporting artifacts for tracking experiments.

## Design background

The original Ethernet MAC core implements Layer-2 framing for 10/100 Mbps Ethernet and includes major blocks such as TX MAC, RX MAC, MAC control, MIIM management, and a WISHBONE-style host interface.

This project studies that design in a full RTL-to-GDSII context, using open physical-design tooling to evaluate timing, area, power, congestion, and module-level bottlenecks across different implementation strategies.

## Toolchain

The implementation flow in the project reports uses open-source ASIC tooling including Yosys for RTL synthesis, OpenROAD-based physical-design stages, Magic for DRC, Netgen for LVS, and KLayout for final layout inspection.

The working flow also makes use of **LibreLane** through `nix-shell`, which provides a convenient environment for running the design flow and notebooks on Linux systems.

## Why this workflow

This repository is intentionally notebook-driven because it is easier to use than a long chain of TCL scripts. Each step is laid out in order, so you can see what changes, what runs next, and where a failure happens without digging through multiple scripts.

That makes the framework especially practical for quick synthesis, iterative tuning, and review by teammates or evaluators who may not want to inspect the entire TCL flow manually.

## Quick start

The easiest way to run a quick synthesis is through the PyNotebook in the `final/` folder, which lays out the flow in a straightforward step-by-step format and executes the full sequence used in the project work.

Compared with manually driving long TCL flows, this notebook-first framework is much simpler to follow because every stage is visible, ordered, and rerunnable in one place, making it easier to understand, debug, and reproduce.

Typical workflow:

1. Install Nix and enter the LibreLane environment with `nix-shell` from the project root.
2. Start Jupyter from inside the shell environment so all flow dependencies are available in the notebook kernel.
3. Open the notebook in the `final/` directory, or connect to the running Jupyter server from VS Code using the server URL generated in the terminal.
4. Execute the notebook cells in order to reproduce synthesis and downstream implementation stages described in the reports.

## Jupyter and VS Code

Because the flow is set up around a Nix-shell environment, a practical way to use it is to launch Jupyter inside `nix-shell` and then attach VS Code to that notebook server using the Jupyter server URL.

This keeps the notebook kernel aligned with the LibreLane environment and avoids the path or dependency mismatches that often happen when VS Code launches a separate Python environment.

## Outputs

The repository includes HTML exports that serve as notebook snapshots, making it possible to inspect final synthesis and implementation outputs even without rerunning the notebook immediately.

These HTML files are useful as static records of the notebook outputs, logs, and final state from completed runs.

Large final GDSII files are not uploaded to the repository because of their size, but the project flow is already set up to regenerate them without much effort from the existing notebook and configuration flow.

## Results snapshot

The project reports compare a baseline control flow against custom Sky130A and Sky130B runs, with the final comparison reporting 68.82 MHz for the control run, 72.97 MHz for custom Sky130A, and 83.17 MHz for custom Sky130B.

The same comparison reports area values of 1.0643 mm², 0.9607 mm², and 1.0224 mm² respectively, along with power figures of 75.6 mW, 89.0 mW, and 110 mW.

Module-level exploration identified the WISHBONE block as a key bottleneck, while other hardened daughter modules achieved substantially higher standalone frequencies in the project experiments.

## Licensing

The RTL base used here comes from the FreeCores/OpenCores `ethmac` project, which is listed on OpenCores as **LGPL** licensed.

Because this repository uses that RTL as its design basis, the safest applicable approach is to preserve upstream copyright notices in all derived or redistributed RTL files and license the reused RTL portions under the GNU Lesser General Public License terms inherited from the upstream project.

For original repository additions such as notebooks, flow scripts, documentation, and generated metadata, a separate top-level notice can clarify that those project-specific materials are provided by this repository author, while the Ethernet MAC RTL remains subject to the upstream LGPL licensing terms.

A practical repository setup is:

- Keep upstream license headers intact in all reused RTL files.
- Add `LICENSE` containing the LGPL text, or otherwise clearly point to the upstream LGPL license used by the inherited `ethmac` RTL.
- Add a short note in this README stating that `src/` includes RTL derived from the OpenCores/FreeCores Ethernet MAC project and is therefore governed by the upstream license.
- Optionally add a `NOTICE` file crediting the original project and separating third-party RTL from original notebooks and documentation.

## Credits

Core RTL source and original MAC architecture credit belongs to the OpenCores/FreeCores Ethernet MAC 10/100 Mbps project.

Project implementation work, flow experimentation, and reporting build on open-source EDA infrastructure including LibreLane, Yosys, OpenROAD, Magic, Netgen, and KLayout.

Academic project guidance is credited in the reports to Dr. Ramesh Kini.

## Suggested citation / acknowledgement text

If this repository is reused or referenced, use wording similar to the following:

> This project builds on the OpenCores/FreeCores Ethernet MAC (`ethmac`) RTL and applies an open-source RTL-to-GDSII flow for physical implementation and analysis. Original Ethernet MAC RTL credit remains with the upstream OpenCores/FreeCores project.

## Notes

- Final GDS snapshots may be absent from the repository due to file size, but they can be regenerated from the notebook-driven flow with the provided environment and design inputs.
- The notebook-driven flow in `final/` is the recommended path for understanding and reproducing the implementation sequence because it exposes the run stages clearly.
- HTML notebook exports are included as convenient static views of completed runs and synthesis snapshots.

## Authors

- [Ashmit R Sambrani](https://github.com/Ash29062)
- [Ashmita Das](https://github.com/dustydez)

## Contributors

<a href="https://github.com/Ash29062">
  <img src="https://github.com/Ash29062.png?size=80" width="80" height="80" alt="Ashmit R Sambrani" />
</a>

<a href="https://github.com/dustydez">
  <img src="https://github.com/<their-github-username>.png?size=80" width="80" height="80" alt="Ashmita Das" />
</a>
