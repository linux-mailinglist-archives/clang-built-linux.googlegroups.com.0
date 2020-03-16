Return-Path: <clang-built-linux+bncBDV37XP3XYDRBZNJXXZQKGQEDCJU3QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E27C186904
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:28:53 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id z16sf534340wmi.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 03:28:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584354533; cv=pass;
        d=google.com; s=arc-20160816;
        b=i5r8Hv9rKTgWgHHG7jA1xvzsz0MWdrFuStwRBlaFlNvVcvcTAoNc6n8V+OvQxL2NLa
         UgIXFTJewQnzjhoMjzs6yx4VL10NCboGgofkdn8jPtR8QXapP68ZeBJINwFLw/jaBzoe
         GM3CCfnupUv4LzyZwsBH18gPDQGoIr0vDZjuDLOMuQjoXl/C5yB/85liO7nAjujI3HNW
         LBlmNWQvRW9b8oN+m2NXBJKZXr1ZpKJb+8UzqrUlvq++WcE/R+0KTDT/AW8+8azDgpu+
         p+CNi8K6cG1eyG8GW/veEcC8Zr38vG6+A0DtRaQlu95JpfwpmRo6SlZ1DV4my4oF91RJ
         VQzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yM+Bg93/+6FnvhoebPxx4806Fqw7Hq4QJ1FvOrDHGuw=;
        b=T58TqcSCiJUoGT1b2qeRU5U1ejfSP3qaOZMwWpwCHJR2ZG8y5K/bpKfwKv7voNjb5X
         LC1b7eqXLfOUGmw1VwCBUz5+Amc/N248vEOxyWymwM6vP8uliQGlYeENPUizpd758vnj
         sQ91POyjPA+gXojB6dpAPuPBRegm37R0DpHnjvU6LbsdgawIU3O7ETGbxKkWbqkFyug3
         mUjRtfPWQcTVdt/AgsX4szHjY3sv2asKYJtv/b56oeZi68dQc0vCPEni6rHOsdwpeqMG
         TEyjvdEqewD0K6sJjDDG54peeOKKj3grFYMGBkPprSjH6lxj3N9ymMb3Zgc0TctMMqS0
         g/fQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yM+Bg93/+6FnvhoebPxx4806Fqw7Hq4QJ1FvOrDHGuw=;
        b=FTlrd5df/swKu1O5cTM7iBGMcPtcSPAVo30zqLbqOJ6+prxD6voVMxuWxhZ5M0NLV3
         mJQwGzXhwixifbjWzw087kqCtnFZm4Yr1X1cvA3AXNeyk25MQCVfEmdV676XZH66f8Fv
         0onxjJCBcYGUXZsgMFLrASk9g9ybXzRk3fo1PCALbOGKcJHXrFrQbTfAaV/AnwiQLXq+
         Jv18oPPESLEcQjqP68na/E2DyPafWefHSU4UKpXRnRmR0jvcQKXubqvp5O7fBJq+qdAZ
         uf8mY/3PCOiVkTrbMC9eKDf1Tl8Jl6YiK09NQv+s6Cxipjc57r8OUmnYo+kjD0HmFe5E
         fujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yM+Bg93/+6FnvhoebPxx4806Fqw7Hq4QJ1FvOrDHGuw=;
        b=qYMKqp/QAjleMnpKL3nmksqEHrNbccdxzacWBBXbiM1aQic8hlRm5OE0OPO3UXzEUn
         yXJWPE8Pg5s6bmMAFi7fq9EqbTIuvRyd7NyFzU0//ibLcmGLxebKvm6uIKGc0D34RxdC
         vFfapEtHGtokWQqYA3GhcW0ahTAe9vIyiptP18GknmXid0GuZe9WRqdBD6oABECwaiic
         fhmFIAjx0z0i2KvoenvaqtOY1HASUekgc4zxUh8IXaYw44ORb6th6m+LWCUMp5GJjD/I
         5hpqOHB8scqsoDJrqzEsnNKi8FqKIX2OVaAsVCyg2kUJ76nCdQRLA1vpFZBiyNq25TsZ
         gYXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2R7WWlkZ+12r5hDHusqbeRRIjkNCxiNPjMB2rgpsbeKh3H2E7E
	5FW/ZXUPuY6N9tSPgHWo50Y=
X-Google-Smtp-Source: ADFU+vvuM2usEOw8siZ9D88Y5sFuviFA42k+dp0LAFgnyiD65McB5PBsGS6pSin4Vdpc1+piyydbQQ==
X-Received: by 2002:a7b:c0d7:: with SMTP id s23mr18626218wmh.168.1584354533141;
        Mon, 16 Mar 2020 03:28:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls6408221wmc.0.gmail; Mon, 16 Mar
 2020 03:28:52 -0700 (PDT)
X-Received: by 2002:a05:600c:208:: with SMTP id 8mr28103403wmi.79.1584354532441;
        Mon, 16 Mar 2020 03:28:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584354532; cv=none;
        d=google.com; s=arc-20160816;
        b=kML6C/kDfRdv3dIQrecBIS5L6EFYLrc4RhKaRA0qXxhQAMbc0MIJFyfNNA/M38ied6
         tVWPMIRe2+YR9DcXZ4WYjSMLg5JxvjU4BTT5PZ0BOkt923OBJ6XanABicwz7bHJkSCNy
         dGFRhCUEIOEti15baHyfwIqFvnRERKa2jZ1JSvNOsR5ktx3BlmN03erKokirOs8oRGg4
         7o1bvTQ3yv5kU3J1p1b/wsBHl12ED565heGI8gmxdvC18hgTViDA8rEayfkT8t4uxG83
         8V80aG/JK5Yp3Qlnb73jwtmF8kr8XgsUzb+pOLnft2VxhnODlDcNz8Wz6pvLNZw+8TjD
         PyOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=fD9g7dXg+6TfkH1CPdhXh2SAtVseSRdpkIRWYLi2GzE=;
        b=QIc0t1cPGFKcpEBy0yWmPz9LYZWid/c5YAb6UGnOChY//4H/yYep+3XvRWnTNe2yZQ
         3UzqlLRhV2aCPNJSGccl2cWySawAhKpIC8tb+xkltDq4huuOo2TO0E4AquGjZmhnvCoh
         s2RI43sdevTIs1QjPPX+dQ0/i/dmipY9aXhqpXDI1BPLMl1OzJtaVPrk94MznRMWJ7FN
         1GLQ987/RVBRHAiri1Lk2Uf/44vb6/R4f39rrAzStqPb2LOW2EeTg4XQghlO5cmmlOpc
         xc8sPqdhtZb9w4GxfEBeUa0jhuw8ft7IhaaMP99OA7PzCH9vtSohHve26ebnE2MUfGyV
         6TkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n9si310990wmi.0.2020.03.16.03.28.52
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 03:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82B61FEC;
	Mon, 16 Mar 2020 03:28:51 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D1143F85E;
	Mon, 16 Mar 2020 03:28:48 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:28:46 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
Message-ID: <20200316102845.GB5746@lakrids.cambridge.arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-22-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi Vincenzo,

On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
> code. This allows to replace the second isb() in __arch_get_hw_counter()
> with a fake dependent stack read of the counter which improves the vdso
> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
> 100 iterations.
> 
> Before the patch:
> =================
> clock-gettime-monotonic: syscall: 771 nsec/call
> clock-gettime-monotonic:    libc: 130 nsec/call
> clock-gettime-monotonic:    vdso: 111 nsec/call
> ...
> clock-gettime-realtime: syscall: 762 nsec/call
> clock-gettime-realtime:    libc: 130 nsec/call
> clock-gettime-realtime:    vdso: 111 nsec/call
> 
> After the patch:
> ================
> clock-gettime-monotonic: syscall: 792 nsec/call
> clock-gettime-monotonic:    libc: 124 nsec/call
> clock-gettime-monotonic:    vdso: 106 nsec/call
> ...
> clock-gettime-realtime: syscall: 776 nsec/call
> clock-gettime-realtime:    libc: 124 nsec/call
> clock-gettime-realtime:    vdso: 106 nsec/call
> 
> [1] https://github.com/nathanlynch/vdsotest
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Mark Rutland <Mark.Rutland@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/arch_timer.h        | 29 ++++---------------
>  arch/arm64/include/asm/vdso/arch_timer.h   | 33 ++++++++++++++++++++++
>  arch/arm64/include/asm/vdso/gettimeofday.h |  7 +++--
>  3 files changed, 42 insertions(+), 27 deletions(-)
>  create mode 100644 arch/arm64/include/asm/vdso/arch_timer.h
> 
> diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
> index 7ae54d7d333a..7f22cd00ad45 100644
> --- a/arch/arm64/include/asm/arch_timer.h
> +++ b/arch/arm64/include/asm/arch_timer.h
> @@ -164,24 +164,7 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
>  	isb();
>  }
>  
> -/*
> - * Ensure that reads of the counter are treated the same as memory reads
> - * for the purposes of ordering by subsequent memory barriers.
> - *
> - * This insanity brought to you by speculative system register reads,
> - * out-of-order memory accesses, sequence locks and Thomas Gleixner.
> - *
> - * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
> - */
> -#define arch_counter_enforce_ordering(val) do {				\
> -	u64 tmp, _val = (val);						\
> -									\
> -	asm volatile(							\
> -	"	eor	%0, %1, %1\n"					\
> -	"	add	%0, sp, %0\n"					\
> -	"	ldr	xzr, [%0]"					\
> -	: "=r" (tmp) : "r" (_val));					\
> -} while (0)
> +#include <asm/vdso/arch_timer.h>
>  
>  static __always_inline u64 __arch_counter_get_cntpct_stable(void)
>  {
> @@ -189,7 +172,7 @@ static __always_inline u64 __arch_counter_get_cntpct_stable(void)
>  
>  	isb();
>  	cnt = arch_timer_reg_read_stable(cntpct_el0);
> -	arch_counter_enforce_ordering(cnt);
> +	cnt = arch_counter_enforce_ordering(cnt);
>  	return cnt;

Why have you changed the structure of arch_counter_enforce_ordering() to
return a value? The commit message has no rationale for that.

If there is a reason to change that, I'd prefer the driver change as one
patch, before moving the definition.

[...]

> +/*
> + * Ensure that reads of the counter are treated the same as memory reads
> + * for the purposes of ordering by subsequent memory barriers.
> + *
> + * This insanity brought to you by speculative system register reads,
> + * out-of-order memory accesses, sequence locks and Thomas Gleixner.
> + *
> + * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
> + *
> + */
> +static u64 arch_counter_enforce_ordering(u64 val)
> +{
> +	u64 tmp, _val = (val);
> +
> +	asm volatile(
> +	"	eor	%0, %1, %1\n"
> +	"	add	%0, sp, %0\n"
> +	"	ldr	xzr, [%0]"
> +	: "=r" (tmp) : "r" (_val));
> +
> +	return _val;
> +}

This change has no functional effect. Since `_val` is only passed in as
an input parameter, the compiler can assume the assembly has no effect
on it.

As above, what is the rationale for changing this?

> @@ -82,10 +83,10 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
>  	isb();
>  	asm volatile("mrs %0, cntvct_el0" : "=r" (res) :: "memory");
>  	/*
> -	 * This isb() is required to prevent that the seq lock is
> -	 * speculated.#
> +	 * arch_counter_enforce_ordering() is required to prevent that
> +	 * the seq lock is speculated.
>  	 */
> -	isb();
> +	res = arch_counter_enforce_ordering(res);

Can we delete the comment entirely? We don't bother in <asm/arch_timer.h>.

Even better, can we factor out __arch_counter_get_cntvct(), and use
that?

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316102845.GB5746%40lakrids.cambridge.arm.com.
