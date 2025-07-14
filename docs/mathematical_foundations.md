# Mathematical and Physical Foundations

This document details the governing analytical equations, thermodynamic models, fluid mechanics, and acoustic modal derivations implemented within the Ullage propulsion test executive and Rhai automation suite.

---

## 1. Thermodynamic Equation of State: Peng-Robinson (PR-EOS)

To capture the non-ideal behavior of cryogenic propellants near their critical points (LOX at 154.6 K, 5.04 MPa; Methane at 190.6 K, 4.60 MPa), Ullage implements the Peng-Robinson cubic equation of state across both the Rust host and the Rhai `fluid::thermo` modules.

### Governing Formulation
The pressure $P$ as a function of molar volume $v$ and temperature $T$ is given by:

$$P = \frac{R T}{v - b} - \frac{a(T)}{v(v + b) + b(v - b)}$$

where:
- $R = 8.314462\text{ J}/(\text{mol}\cdot\text{K})$ is the universal gas constant.
- $b$ is the hard-sphere repulsive co-volume:
  $$b = 0.07779607 \cdot \frac{R T_c}{P_c}$$
- $a(T)$ is the temperature-dependent attractive parameter:
  $$a(T) = 0.45723553 \cdot \frac{R^2 T_c^2}{P_c} \cdot \alpha(T_r, \omega)$$
- The dimensionless alpha function $\alpha(T_r, \omega)$ is parametrized by the reduced temperature $T_r = T / T_c$ and acentric factor $\omega$:
  $$\alpha(T_r, \omega) = \left[ 1 + m(\omega) \cdot (1 - \sqrt{T_r}) \right]^2$$
  $$m(\omega) = 0.37464 + 1.54226 \cdot \omega - 0.26992 \cdot \omega^2$$

### Cubic Polynomial in Compressibility Factor
Transforming the equation into dimensionless compressibility factor $Z = P v / (R T)$ yields the canonical cubic:

$$Z^3 - (1 - B) Z^2 + (A - 3B^2 - 2B) Z - (A B - B^2 - B^3) = 0$$

where dimensionless coefficients $A$ and $B$ are:
$$A = \frac{a(T) P}{(R T)^2}, \quad B = \frac{b P}{R T}$$

For single-phase liquid or subcooled cryogens, the smallest real root $Z_{liq}$ is extracted via Cardano's analytical method. For superheated vapor or pressurant helium, the largest real root $Z_{vap}$ is utilized.

### Departure Enthalpy and Fugacity
The fugacity coefficient $\phi$ for high-pressure gas dome calculations is derived analytically:

$$\ln \phi = (Z - 1) - \ln(Z - B) - \frac{A}{2\sqrt{2} B} \ln \left( \frac{Z + (1 + \sqrt{2})B}{Z + (1 - \sqrt{2})B} \right)$$

---

## 2. Two-Phase Cryogenic Heat Transfer & Chilldown Boiling Curves

Cryogenic feed line chilldown transitions through three distinct boiling regimes as the hot metal wall (initially at 300 K) cools to the liquid saturation temperature (LOX at 90 K, CH4 at 111 K).

```
  Log Heat Flux (q)
        ^
        |                        Critical Heat Flux (CHF)
        |                                [Peak q_chf]
        |                                    /\
        |                                   /  \    Transition Boiling
        |                                  /    \   (Unstable film)
        |       Nucleate Boiling          /      \
        |         (High h)               /        \
        |                               /          \  Minimum Heat Flux (MHF)
        |                              /            \ [Leidenfrost Point]
        |                             /              \_____
        |                            /                     \   Film Boiling
        |                           /                       \  (Vapor blanket)
        |       Natural            /                         \
        |       Convection        /                           \
        |                        /                             \
        +-----------------------+-------------------------------+------------> Wall Superheat
       0                      Delta T_onb                     Delta T_mhf    (T_wall - T_sat)
```

### 1. Film Boiling Regime (Bromley-Breen Formulation)
When the wall superheat $\Delta T_{sat} = T_{wall} - T_{sat}$ exceeds the Leidenfrost point, a continuous insulating vapor blanket envelopes the tube wall:

$$h_{film} = 0.62 \left[ \frac{k_v^3 \rho_v (\rho_l - \rho_v) g \left( h_{lv} + 0.4 C_{p,v} \Delta T_{sat} \right)}{\mu_v D \Delta T_{sat}} \right]^{1/4}$$

### 2. Minimum Heat Flux (Leidenfrost Point / Berenson)
The collapse of the protective vapor film occurs at the Minimum Heat Flux ($q_{min}$):

$$q_{min} = 0.09 \cdot \rho_v h_{lv} \left[ \frac{g \sigma (\rho_l - \rho_v)}{(\rho_l + \rho_v)^2} \right]^{1/4}$$

The corresponding wall superheat at film collapse is:
$$\Delta T_{mhf} = 0.127 \frac{\rho_v h_{lv}}{k_v} \left[ \frac{g (\rho_l - \rho_v)}{\rho_l + \rho_v} \right]^{2/3} \left[ \frac{\sigma}{g (\rho_l - \rho_v)} \right]^{1/2} \left[ \frac{\mu_v}{g (\rho_l - \rho_v)} \right]^{1/3}$$

### 3. Critical Heat Flux (Zuber Limit)
During rapid quench, peak nucleate heat transfer is bounded by vapor bubble column hydrodynamic instability:

$$q_{CHF} = 0.131 \cdot h_{lv} \sqrt{\rho_v} \left[ \sigma g (\rho_l - \rho_v) \right]^{1/4}$$

### 4. Nucleate Boiling Regime (Rohsenow Correlation)
Once nucleate boiling is established, the wall heat flux follows:

$$q_{nb} = \mu_l h_{lv} \left[ \frac{g (\rho_l - \rho_v)}{\sigma} \right]^{1/2} \left[ \frac{C_{p,l} \Delta T_{sat}}{C_{sf} h_{lv} Pr_l^{1.7}} \right]^3$$

where $C_{sf}$ is the empirical surface-fluid coefficient ($C_{sf} = 0.013$ for oxygen on electropolished stainless steel 316L).

---

## 3. High-Pressure Injector Dynamics & Atomization

### Total Momentum Ratio (TMR)
Ullage throttles propellant using a central movable pintle. The atomization spray angle and spatial mass distribution depend on the Total Momentum Ratio (TMR) between the radial fuel sheet and axial oxidizer annular jet:

$$TMR = \frac{\dot{m}_{rad} \cdot v_{rad}}{\dot{m}_{ax} \cdot v_{ax}} = \frac{\rho_{fuel} A_{fuel} v_{rad}^2}{\rho_{ox} A_{ox} v_{ax}^2}$$

The resulting spray cone half-angle $\theta_{cone}$ is computed as:
$$\tan \theta_{cone} = C_{tmr} \cdot \sqrt{TMR}$$

### Droplet Size Distribution (Sauter Mean Diameter)
Primary atomization shear yields a droplet size spectrum characterized by the Sauter Mean Diameter $D_{32}$:

$$D_{32} = 0.48 \cdot d_{orifice} \left( \frac{\sigma}{\rho_g \Delta v^2 d_{orifice}} \right)^{0.4} \left( 1 + \frac{\dot{m}_{rad}}{\dot{m}_{ax}} \right)^{0.2} + 0.15 \left( \frac{\mu_l^2}{\rho_l \sigma d_{orifice}} \right)^{0.1}$$

---

## 4. Bartz Convective Throat Heat Flux

The maximum thermal flux into the regenerative cooling jacket occurs at the nozzle throat ($A/A_t = 1.0$). Ullage uses the modified Bartz empirical formulation:

$$h_g = \left[ \frac{0.026}{D_t^{0.2}} \left( \frac{\mu^{0.2} C_p}{Pr^{0.6}} \right)_0 \left( \frac{P_c}{c^*} \right)^{0.8} \left( \frac{D_t}{r_c} \right)^{0.1} \right] \left( \frac{A_t}{A} \right)^{0.9} \sigma_{Bartz}$$

where the boundary layer temperature correction factor $\sigma_{Bartz}$ is:
$$\sigma_{Bartz} = \left[ \frac{1}{2} \frac{T_{wall}}{T_0} \left( 1 + \frac{\gamma - 1}{2} M^2 \right) + \frac{1}{2} \right]^{-0.68} \left( 1 + \frac{\gamma - 1}{2} M^2 \right)^{-0.12}$$

---

## 5. Acoustic Resonant Cavity Modes (Combustion Instability)

High-frequency combustion instability occurs when acoustic cavity resonances couple with chamber heat release fluctuations (Rayleigh Criterion):

$$\int_{cycle} p'(t) \cdot q'(t) \, dt > 0$$

For a cylindrical combustion chamber of inner radius $R_c$ and length $L_c$, the natural acoustic frequencies are solutions to the Helmholtz wave equation with rigid-wall boundary conditions ($\nabla p \cdot \mathbf{n} = 0$):

$$f_{m,n,q} = \frac{a_s}{2} \sqrt{ \left( \frac{\alpha_{m,n}}{\pi R_c} \right)^2 + \left( \frac{q}{L_c} \right)^2 }$$

where:
- $a_s = \sqrt{\gamma R_{gas} T_c}$ is the local acoustic speed of sound in the burned gas (typically 1,100 to 1,350 m/s for LOX/CH4).
- $m$ is the tangential mode number (number of nodal diameters).
- $n$ is the radial mode number (number of nodal cylinders).
- $q$ is the longitudinal mode number (number of nodal planes along chamber axis).
- $\alpha_{m,n}$ is the $n$-th non-trivial zero of the derivative of the Bessel function of the first kind: $J_m'(\alpha_{m,n}) = 0$.

### Characteristic Modal Solutions
1. **First Longitudinal (1L)**: $m=0, n=0, q=1$:
   $$f_{1L} = \frac{a_s}{2 L_c}$$
2. **First Tangential (1T)**: $m=1, n=0, q=0$ ($\alpha_{1,0} \approx 1.84118$):
   $$f_{1T} = \frac{1.84118 \cdot a_s}{2 \pi R_c} \approx \frac{0.5861 \cdot a_s}{2 R_c}$$
3. **Second Tangential (2T)**: $m=2, n=0, q=0$ ($\alpha_{2,0} \approx 3.05424$):
   $$f_{2T} = \frac{3.05424 \cdot a_s}{2 \pi R_c} \approx \frac{0.9722 \cdot a_s}{2 R_c}$$
4. **First Radial (1R)**: $m=0, n=1, q=0$ ($\alpha_{0,1} \approx 3.83171$):
   $$f_{1R} = \frac{3.83171 \cdot a_s}{2 \pi R_c} \approx \frac{1.2197 \cdot a_s}{2 R_c}$$

The DSP subsystem continuously monitors the power spectral density (PSD) at these modal frequencies using a 2048-point Radix-2 FFT. If the instantaneous roughness metric $R = \sqrt{\sum P_k} / P_{mean}$ exceeds 0.05 (5% peak-to-peak chamber oscillation), an immediate pre-abort warning is raised.

---

## 6. Turbopump Inducer Cavitation & Hydraulic Head

### Net Positive Suction Head (NPSH)
The available suction head at the turbopump inducer inlet flange is:

$$NPSH_A = \frac{P_{in} - P_{vapor}(T)}{\rho g} + \frac{v_{in}^2}{2g}$$

### Inducer Suction Specific Speed ($S_s$)
To characterize cavitation inception margin:

$$S_s = \frac{N \sqrt{Q}}{(g \cdot NPSH_R)^{3/4}}$$

where $N$ is rotational velocity in rad/s, $Q$ is volumetric flow in m³/s, and $NPSH_R$ is the 3% head-drop cavitation limit. Ullage aborts test stand operations if $NPSH_A / NPSH_R < 1.25$ during turbopump chilldown and spin-up.
