# distutils: libraries = gmp flint
# distutils: depends = mag.h

from sage.libs.arb.types cimport *
from sage.libs.flint.types cimport fmpz_t, fmpq_t

# mag.h
cdef extern from "arb_wrap.h":
    void mag_init(mag_t x)
    void mag_clear(mag_t x)
    void mag_init_set(mag_t x, const mag_t y)
    void mag_swap(mag_t x, mag_t y)
    void mag_set(mag_t x, const mag_t y)
    void mag_zero(mag_t x)
    void mag_one(mag_t x)
    void mag_inf(mag_t x)
    bint mag_is_special(const mag_t x)
    bint mag_is_zero(const mag_t x)
    bint mag_is_inf(const mag_t x)
    bint mag_is_finite(const mag_t x)
    bint mag_equal(const mag_t x, const mag_t y)
    bint mag_cmp(const mag_t x, const mag_t y)
    bint mag_cmp_2exp_si(const mag_t x, long y)
    void mag_min(mag_t z, const mag_t x, const mag_t y)
    void mag_max(mag_t z, const mag_t x, const mag_t y)
    void mag_print(const mag_t x)
    # void mag_randtest(mag_t x, flint_rand_t state, long expbits)
    # void mag_randtest_special(mag_t x, flint_rand_t state, long expbits)
    void mag_set_d(mag_t y, double x)
    void mag_set_ui(mag_t y, unsigned long x)
    void mag_set_fmpz(mag_t y, const fmpz_t x)
    void mag_set_d_2exp_fmpz(mag_t z, double x, const fmpz_t y)
    void mag_set_fmpz_2exp_fmpz(mag_t z, const fmpz_t x, const fmpz_t y)
    void mag_set_ui_2exp_si(mag_t z, unsigned long x, long y)
    void mag_get_fmpq(fmpq_t y, const mag_t x)
    void mag_set_ui_lower(mag_t z, unsigned long x)
    void mag_set_fmpz_lower(mag_t z, const fmpz_t x)
    void mag_set_fmpz_2exp_fmpz_lower(mag_t z, const fmpz_t x, const fmpz_t y)
    void mag_mul_2exp_si(mag_t z, const mag_t x, long y)
    void mag_mul_2exp_fmpz(mag_t z, const mag_t x, const fmpz_t y)
    void mag_mul(mag_t z, const mag_t x, const mag_t y)
    void mag_mul_ui(mag_t z, const mag_t x, unsigned long y)
    void mag_mul_fmpz(mag_t z, const mag_t x, const fmpz_t y)
    void mag_add(mag_t z, const mag_t x, const mag_t y)
    void mag_addmul(mag_t z, const mag_t x, const mag_t y)
    void mag_add_2exp_fmpz(mag_t z, const mag_t x, const fmpz_t e)
    void mag_div(mag_t z, const mag_t x, const mag_t y)
    void mag_div_ui(mag_t z, const mag_t x, unsigned long y)
    void mag_div_fmpz(mag_t z, const mag_t x, const fmpz_t y)
    void mag_mul_lower(mag_t z, const mag_t x, const mag_t y)
    void mag_mul_ui_lower(mag_t z, const mag_t x, unsigned long y)
    void mag_mul_fmpz_lower(mag_t z, const mag_t x, const fmpz_t y)
    void mag_add_lower(mag_t z, const mag_t x, const mag_t y)
    void mag_sub_lower(mag_t z, const mag_t x, const mag_t y)
    void mag_fast_init_set(mag_t x, const mag_t y)
    void mag_fast_zero(mag_t x)
    bint mag_fast_is_zero(const mag_t x)
    void mag_fast_mul(mag_t z, const mag_t x, const mag_t y)
    void mag_fast_addmul(mag_t z, const mag_t x, const mag_t y)
    void mag_fast_add_2exp_si(mag_t z, const mag_t x, long e)
    void mag_fast_mul_2exp_si(mag_t z, const mag_t x, long e)
    void mag_pow_ui(mag_t z, const mag_t x, unsigned long e)
    void mag_pow_fmpz(mag_t z, const mag_t x, const fmpz_t e)
    void mag_pow_ui_lower(mag_t z, const mag_t x, unsigned long e)
    void mag_sqrt(mag_t z, const mag_t x)
    void mag_rsqrt(mag_t z, const mag_t x)
    void mag_hypot(mag_t z, const mag_t x, const mag_t y)
    void mag_log1p(mag_t z, const mag_t x)
    void mag_log_ui(mag_t z, unsigned long n)
    void mag_exp(mag_t z, const mag_t x)
    void mag_expm1(mag_t z, const mag_t x)
    void mag_exp_tail(mag_t z, const mag_t x, unsigned long N)
    void mag_binpow_uiui(mag_t z, unsigned long m, unsigned long n)
    void mag_fac_ui(mag_t z, unsigned long n)
    void mag_rfac_ui(mag_t z, unsigned long n)
    void mag_bernoulli_div_fac_ui(mag_t z, unsigned long n)
    void mag_polylog_tail(mag_t u, const mag_t z, long s, unsigned long d, unsigned long N)
