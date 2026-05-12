# EAA AirVenture Oshkosh — MSFS 2024 Scenery

A community scenery addon for **Microsoft Flight Simulator 2024** that enhances **KOSH (Wittman Regional Airport)** in Oshkosh, Wisconsin for the annual EAA AirVenture fly-in.

**Creator:** tabletop ANDROID  
**Package:** `tabletopandroid-airport-kosh-oshkosh`  
**Version:** 0.1.0  
**Minimum MSFS 2024 version:** 1.7.27

---

## Overview

[EAA AirVenture Oshkosh](https://www.eaa.org/airventure) is the world's largest airshow, held annually at Wittman Regional Airport (KOSH) in Oshkosh, Wisconsin. This addon improves the ground layout and parking to better reflect the real-world event configuration, including the color-coded public and permit parking lots used during AirVenture week.

**Airport:** Wittman Regional Airport  
**ICAO:** KOSH  
**Location:** Oshkosh, Wisconsin, USA  
**Coordinates:** 43.9931° N, 88.5548° W  
**Elevation:** 236 ft MSL

---

## Features

- Enhanced airport layout for KOSH matching the AirVenture event configuration
- Accurately mapped **color-coded parking lots** based on official EAA operations maps:
  - Purple Lot
  - Pink Lot
  - Yellow Lot
  - Gray Lot
  - Brown Lot
  - S Lot (Permit Only)
- Organized parking groups: **Public Lots** and **Permit Only Lots**
- Control tower placement
- Optimized for MSFS 2024 (minimum compatibility version 7.26.0.214)

---

## Installation

### Community Folder (Recommended)

1. Download the latest release package.
2. Copy the `tabletopandroid-airport-kosh-oshkosh` folder into your MSFS 2024 **Community** folder.

**Typical Community folder paths:**

| Store | Path |
|-------|------|
| Microsoft Store / Xbox | `%LocalAppData%\Packages\Microsoft.Limitless_8wekyb3d8bbwe\LocalCache\Packages\Community` |
| Steam | `%AppData%\Microsoft Flight Simulator 2024\Packages\Community` |

3. Launch MSFS 2024. The scenery will load automatically.

### Building from Source

This project uses the **MSFS 2024 SDK**.

1. Clone this repository.
2. Open `kosh-airventure-msfs2024.xml` in the MSFS 2024 SDK Package Builder (or build via command line using `fspackagetool`).
3. The compiled package will be output to the `Packages\` folder (excluded from version control).
4. Copy `Packages\tabletopandroid-airport-kosh-oshkosh` to your Community folder.

> **Note:** The `Packages/` directory is listed in `.gitignore` and contains only compiled build artifacts — do not commit it.

---

## Requirements

- Microsoft Flight Simulator 2024 (version 1.7.27 or later)
- No additional third-party dependencies

---

## Reference Materials

The `_references/` folder contains official EAA AirVenture 2025 documents used during development for accurate layout mapping:

| File | Description |
|------|-------------|
| `AV_Operations_25_Print_VisitorsMap-DoubleSided.pdf` | Official visitor map |
| `AV_Operations_2025_Print_MaterialsOrder-CampSchollerMap_85_11.pdf` | Camp Scholler map |
| `AV_FourCorners_25_YWC_Print_YWCMap-YouthActivities_17x11_Final-DigitalUse_Full.pdf` | Youth/Wings/Camping activities map |
| `AirVenture_25_RestrictedAreaHandout_5x8-5_V1.pdf` | Restricted area information |
| `SpecEvt_EAA_Air_Vent_Ingoing_Traffic_2025.pdf` | Inbound traffic flow |
| `SpecEvt_EAA_Air_Vent_Outgoing_Traffic_2025.pdf` | Outbound traffic flow |
| `SEC_2022_AirVenture_EmergencyRathCommunicationPost_v2.pdf` | Emergency communication post reference |

---

## Project Structure

```
kosh-airventure-msfs2024/
├── PackageSources/
│   └── Scenery/airport-kosh-oshkosh/scenery/
│       └── KOSH.xml              # Primary scenery definition
├── PackageDefinitions/
│   └── tabletopandroid-airport-kosh-oshkosh.xml  # Package manifest
├── PackagesMetadata/             # Airport location metadata
├── _references/                  # Official EAA maps and documents
├── Packages/                     # Compiled output (git-ignored)
└── kosh-airventure-msfs2024.xml  # SDK project file
```

---

## Contributing

Contributions are welcome. If you spot an inaccuracy in the parking layout or airport configuration, please open an issue or submit a pull request.

When contributing:
- Base all layout changes on verifiable official sources (EAA maps, aerial imagery, NOTAMs).
- Test changes in-sim before submitting.
- Do not commit the `Packages/` build output.

---

## License

This project is licensed under the [MIT License](LICENSE.md).

EAA AirVenture reference documents in `_references/` are the property of the Experimental Aircraft Association (EAA) and are included solely for development reference.
