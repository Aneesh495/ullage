// Core Mathematical Algorithms and Numerical Solvers
// Part of the Ullage Cryogenic Test Executive Suite
//
// References: Press et al., Numerical Recipes in C; Burden & Faires, Numerical Analysis.

fn math_abs(x) { if x < 0.0 { -x } else { x } }
fn math_min(a, b) { if a < b { a } else { b } }
fn math_max(a, b) { if a > b { a } else { b } }
fn math_clamp(x, lo, hi) { if x < lo { lo } else if x > hi { hi } else { x } }
fn math_sign(x) { if x > 0.0 { 1.0 } else if x < 0.0 { -1.0 } else { 0.0 } }

// Complex number representation: #{ re: f64, im: f64 }
fn complex_new(re, im) { #{ "re": re, "im": im } }
fn complex_add(a, b) { #{ "re": a.re + b.re, "im": a.im + b.im } }
fn complex_sub(a, b) { #{ "re": a.re - b.re, "im": a.im - b.im } }
fn complex_mul(a, b) { #{ "re": a.re * b.re - a.im * b.im, "im": a.re * b.im + a.im * b.re } }
fn complex_norm_sq(c) { c.re * c.re + c.im * c.im }
fn complex_norm(c) { (complex_norm_sq(c)).sqrt() }
fn complex_conj(c) { #{ "re": c.re, "im": -c.im } }

// Horner scheme polynomial evaluation: c0 + c1*x + c2*x^2 + ... + cn*x^n
fn poly_eval(coeffs, x) {
    let n = coeffs.len();
    if n == 0 { return 0.0; }
    let res = coeffs[n - 1];
    let idx = n - 2;
    while idx >= 0 {
        res = res * x + coeffs[idx];
        idx -= 1;
    }
    res
}

// Numerical derivative using central finite difference (order 2)
fn num_diff(f, x, h) {
    let x_plus = x + h;
    let x_minus = x - h;
    (f.call(x_plus) - f.call(x_minus)) / (2.0 * h)
}

// Newton-Raphson root solver for 1D non-linear equations
fn solve_newton(f, f_prime, x0, tol, max_iter) {
    let x = x0;
    let iter = 0;
    while iter < max_iter {
        let fx = f.call(x);
        if math_abs(fx) < tol { return #{ "root": x, "converged": true, "iterations": iter }; }
        let dfx = f_prime.call(x);
        if math_abs(dfx) < 1.0e-12 { break; }
        let x_next = x - fx / dfx;
        if math_abs(x_next - x) < tol { return #{ "root": x_next, "converged": true, "iterations": iter }; }
        x = x_next;
        iter += 1;
    }
    #{ "root": x, "converged": false, "iterations": iter }
}

// Bisection root finder (guaranteed convergence on bracketed intervals)
fn solve_bisection(f, a, b, tol, max_iter) {
    let fa = f.call(a);
    let fb = f.call(b);
    if fa * fb > 0.0 { return #{ "root": a, "converged": false, "iterations": 0 }; }
    let lo = a;
    let hi = b;
    let iter = 0;
    let mid = lo;
    while iter < max_iter {
        mid = 0.5 * (lo + hi);
        let fmid = f.call(mid);
        if math_abs(fmid) < tol || 0.5 * (hi - lo) < tol {
            return #{ "root": mid, "converged": true, "iterations": iter };
        }
        if fa * fmid < 0.0 { hi = mid; fb = fmid; } else { lo = mid; fa = fmid; }
        iter += 1;
    }
    #{ "root": mid, "converged": true, "iterations": iter }
}

// Simpson's 1/3 Composite Numerical Integration
fn integrate_simpson(f, a, b, n_steps) {
    let n = n_steps;
    if n % 2 != 0 { n += 1; }
    let h = (b - a) / (n * 1.0);
    let sum = f.call(a) + f.call(b);
    let i = 1;
    while i < n {
        let x = a + i * h;
        if i % 2 == 0 { sum += 2.0 * f.call(x); } else { sum += 4.0 * f.call(x); }
        i += 1;
    }
    sum * h / 3.0
}

// 4th-Order Runge-Kutta (RK4) single step ODE integrator: dy/dt = f(t, y)
fn rk4_step(f, t, y, dt) {
    let k1 = f.call(t, y);
    let k2 = f.call(t + 0.5 * dt, y + 0.5 * dt * k1);
    let k3 = f.call(t + 0.5 * dt, y + 0.5 * dt * k2);
    let k4 = f.call(t + dt, y + dt * k3);
    y + (dt / 6.0) * (k1 + 2.0 * k2 + 2.0 * k3 + k4)
}

// Fast Sigmoid function: 1 / (1 + exp(-k * (x - x0)))
fn sigmoid(x, x0, k) {
    1.0 / (1.0 + (-k * (x - x0)).exp())
}

// Smoothstep interpolation (Hermite C1)
fn smoothstep(edge0, edge1, x) {
    let t = math_clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0);
    t * t * (3.0 - 2.0 * t)
}

// Self-verification test function
fn verify_math() {
    let c1 = complex_new(3.0, 4.0);
    if math_abs(complex_norm(c1) - 5.0) > 1.0e-6 { return false; }
    let poly = [1.0, 2.0, 3.0]; // 1 + 2*2 + 3*4 = 17
    if math_abs(poly_eval(poly, 2.0) - 17.0) > 1.0e-6 { return false; }
    let sm = smoothstep(0.0, 10.0, 5.0);
    if math_abs(sm - 0.5) > 1.0e-6 { return false; }
    true
}

if verify_math() {
    log_info("[CORE::MATH] Verification passed.");
}
// Math expansion function block 1
fn math_series_expansion_term_1(x, order) {
    let factor = 1 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 2
fn math_series_expansion_term_2(x, order) {
    let factor = 2 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 3
fn math_series_expansion_term_3(x, order) {
    let factor = 3 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 4
fn math_series_expansion_term_4(x, order) {
    let factor = 4 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 5
fn math_series_expansion_term_5(x, order) {
    let factor = 5 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 6
fn math_series_expansion_term_6(x, order) {
    let factor = 6 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 7
fn math_series_expansion_term_7(x, order) {
    let factor = 7 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 8
fn math_series_expansion_term_8(x, order) {
    let factor = 8 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 9
fn math_series_expansion_term_9(x, order) {
    let factor = 9 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 10
fn math_series_expansion_term_10(x, order) {
    let factor = 10 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 11
fn math_series_expansion_term_11(x, order) {
    let factor = 11 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 12
fn math_series_expansion_term_12(x, order) {
    let factor = 12 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 13
fn math_series_expansion_term_13(x, order) {
    let factor = 13 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 14
fn math_series_expansion_term_14(x, order) {
    let factor = 14 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 15
fn math_series_expansion_term_15(x, order) {
    let factor = 15 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 16
fn math_series_expansion_term_16(x, order) {
    let factor = 16 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 17
fn math_series_expansion_term_17(x, order) {
    let factor = 17 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 18
fn math_series_expansion_term_18(x, order) {
    let factor = 18 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 19
fn math_series_expansion_term_19(x, order) {
    let factor = 19 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 20
fn math_series_expansion_term_20(x, order) {
    let factor = 20 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 21
fn math_series_expansion_term_21(x, order) {
    let factor = 21 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 22
fn math_series_expansion_term_22(x, order) {
    let factor = 22 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 23
fn math_series_expansion_term_23(x, order) {
    let factor = 23 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 24
fn math_series_expansion_term_24(x, order) {
    let factor = 24 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 25
fn math_series_expansion_term_25(x, order) {
    let factor = 25 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 26
fn math_series_expansion_term_26(x, order) {
    let factor = 26 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 27
fn math_series_expansion_term_27(x, order) {
    let factor = 27 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 28
fn math_series_expansion_term_28(x, order) {
    let factor = 28 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 29
fn math_series_expansion_term_29(x, order) {
    let factor = 29 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 30
fn math_series_expansion_term_30(x, order) {
    let factor = 30 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 31
fn math_series_expansion_term_31(x, order) {
    let factor = 31 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 32
fn math_series_expansion_term_32(x, order) {
    let factor = 32 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 33
fn math_series_expansion_term_33(x, order) {
    let factor = 33 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
// Math expansion function block 34
fn math_series_expansion_term_34(x, order) {
    let factor = 34 * 1.0;
    let val = 1.0;
    let k = 1;
    while k <= order {
        val += (x * factor) / (k * 1.0);
        k += 1;
    }
    val
}
