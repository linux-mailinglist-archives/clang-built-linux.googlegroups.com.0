Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBDWRUH3AKGQEFZFIOJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E92C1DF363
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 02:04:32 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id y6sf8361477iol.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 17:04:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590192271; cv=pass;
        d=google.com; s=arc-20160816;
        b=C11rq/h7oBvqC9mhqC4cziam13C9gjLps4un0bizYKy9wfXTjPAgF3c/xOoTPuG09v
         fePFP157MNb9sp0aXnDBMIVaTGoh420lfqM+0HV9N1a5rAma8IzNfpwIWhcSJyHpS/od
         wTy/iLQAsK2Cj8LlfXvLdpfPufQbKQ4dwO+SPWA/RFRF/3cegHwzv034J2tsiPZhiP1b
         iPlFB4qx/y4RtgvEMxdOyAFdcvvOMDAl42/HfBgUB00/JNrkZSkaY0wmgy7DNSOwBOJ/
         iP8yRn15Q10IlrltqQukmWVzfXImcZ9u00r4UlMN8RJx3Cl4pvE8dKVKd2fZdSlWbX43
         0UWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LkI5IPbfVsp4F2REdNUeRzjQmQQ1rOzTDZB+mm7BBMM=;
        b=Zh4JlyBKcGfq/ABgtrvgdSijIg+IFK72yEMvH2pz2YYpFWYkatmacAS5Xp2436Hc4G
         Xpz2Fk+OjdR8bCVKIXd0hP/sI4Swp/4Jwxi249iLHohne1KtFd1y4jYncaqaetW4RWNE
         za0UD3t6i9ojfJfxJJo7uInNisBi+Mg4q8srcG2OP0T32UudSHWNRnEKTVDrTr8RK2WN
         wzCTPqY52dLhfhUuedf4wpLK9HtOcvkqEUcwJfy2Rg1JbEmsMnhgoFhYDEdz4sk01YOv
         p6uK4h8WyofbKBPfF6r9FDfrtjY/uI7zeY4U58J+UN3lwnjLW15j6cXV7nULvymUxRhM
         XfmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=bnZAzu4N;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LkI5IPbfVsp4F2REdNUeRzjQmQQ1rOzTDZB+mm7BBMM=;
        b=NIrAFmGs4GpqFXloN7Rm3gFF3J3qk0Cm1ri5No8iu+oH509LGoGgKi/DsOEle0MIS9
         7fxheun62ZoiZ39+5BDOY2hXb12zkxZMrIoCUEtvILuPQLc7pP6aUviyETZRmNKPncyr
         NwbYX8ZkRrDIZxH8Oid2uQbEQb8I8L247M91tBXB8+i9dwk5SHWOLX6o9UbgNfpJ2shM
         e7WGKCs5smoh7/sEDC6FPoN6tR+hDk9fQQKPhemYQ6BfsOyFVvaISfrgoPa00tje+yKz
         6kIoqqpBxsTDp7HMklxvxxRGKC5cF1+k32CcWHzAxyfshe+zdov3trM4GhZJ2dv2DOx/
         BVXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LkI5IPbfVsp4F2REdNUeRzjQmQQ1rOzTDZB+mm7BBMM=;
        b=pD8vamFPrsGERFrLT83HkRrfjZU1tBn92GXZeeo8tSEqAXbqs4dXahVDT5zajqWc+o
         PgQ5Pzd+siKVwvdzDPK/aaYSUstRdJbXRsuTLOjiBNgZ5s26LCkNR/UE8+B2t6zkXaeK
         Zpvaqv3lVvKM1mq2SUWELayAI8BQsB7rNVrZHQit25lMKTrAY33wWpH8ipE0/5QW7Fz9
         2A6MamIACidebgbpKUYtEFBnmBtb7AZhLUfhxIearOuFCvfiWUgUDhUQhnQn4zva3wYw
         upH0GX2FRjh0JZoiRpecLx/m2bWY+JmPnjuE3rlJ75L1bGxBXQTCAhb0XRdneumeP7FY
         XYIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AXIfKOrClyns/11xqQUHKcworjPAnRDR+blEohrNlroLXNuAP
	Bf/jvxgwi4QLHnFPsOc5ibA=
X-Google-Smtp-Source: ABdhPJzFKdKBwzd0Mazf/5bTPR3RPsGUf3YH5cvktLG+fPonts8ywjJ39/uCCQ72n0j4cqr8Vs63Rg==
X-Received: by 2002:a02:6509:: with SMTP id u9mr10684226jab.17.1590192271061;
        Fri, 22 May 2020 17:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb8d:: with SMTP id x13ls804777ilk.2.gmail; Fri, 22 May
 2020 17:04:30 -0700 (PDT)
X-Received: by 2002:a92:2411:: with SMTP id k17mr168413ilk.138.1590192270631;
        Fri, 22 May 2020 17:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590192270; cv=none;
        d=google.com; s=arc-20160816;
        b=YUScyV/7ImXY6T/W+5iyr/NxVKnRPbLMpqVJyysplCJ/oWKRMTdRlCqeMwFbF4D5QJ
         3B8ueU9X+IT2HoQyZ4vHN7jfDqwC9yp09croxiOPifo3oYaTTqrADN2pLDmcf0lKrQHv
         0iVAFyhtFMLOGpZMDZUlnEMqoAeMqvlsT03GMkiseRmugPgml0lnQCvPO9acEO1Xijad
         xnyzVwX304UJV5EuCyvDePXKxk3f1LQ+wvi7KPSijUivZeUTsofcpbhZ6pAhE6G3O/PN
         UVE0z+fUtcvdyTcF13hfcrikEeFC9n1zo+b/Su4T7ynPw6QVJiEeq1JcKgohWqVqBdQM
         NMEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I4oTDZ0SG8/GIH3rBRxYfT2nbMLHgnXLkHQH9l1K6YU=;
        b=iaLjBVjF8Mq82l9MRE4+o7psRlQGfsQjfd8PUeyC9va9WeAlbwXpx2zKdKaVzkbUFL
         0wLW7Mw9g+XpQZsuV5GxBkF7NmXQd/pw0yAzSpg41RgZJulS+3lxoUc3+FdQKFAiwHvm
         1AKhuEgQrhsmBdOty1VWw5hhvQGM2WPnRJIDgKNDDXBYU2MVPec+90mFpz1FlCJPZHC4
         bHQk9xGo7KlyyZus5WDUhlSP9jUlfF7jUnF09/6Fkn1cwW5H56lAovkZAVOPG+dkvaim
         dG2Xc+TefqY6Kq2o1v5UfoIYHOoFtGRkczd5yDVMBhfECTCfK7a4TI6cctTyO9xR+lvo
         3WMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=bnZAzu4N;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id n16si809501iog.4.2020.05.22.17.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2020 17:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id v79so2402054qkb.10
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 17:04:30 -0700 (PDT)
X-Received: by 2002:a37:bc7:: with SMTP id 190mr17264764qkl.286.1590192269906;
        Fri, 22 May 2020 17:04:29 -0700 (PDT)
Received: from Qians-MacBook-Air.local (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id k20sm8395865qkk.30.2020.05.22.17.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2020 17:04:29 -0700 (PDT)
Date: Fri, 22 May 2020 20:04:27 -0400
From: Qian Cai <cai@lca.pw>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Linux PM <linux-pm@vger.kernel.org>, Len Brown <len.brown@intel.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Chen Yu <yu.c.chen@intel.com>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/9] intel_idle: Relocate definitions of cpuidle callbacks
Message-ID: <20200523000427.GF1337@Qians-MacBook-Air.local>
References: <2960689.qre192dJKD@kreacher>
 <2912140.PDVJEUYNKe@kreacher>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2912140.PDVJEUYNKe@kreacher>
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=bnZAzu4N;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

On Thu, Feb 13, 2020 at 11:00:26PM +0100, Rafael J. Wysocki wrote:
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
> 
> Move the definitions of intel_idle() and intel_idle_s2idle() before
> the definitions of cpuidle_state structures referring to them to
> avoid having to use additional declarations of them (and drop those
> declarations).
> 
> No functional impact.
> 
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---
>  drivers/idle/intel_idle.c | 154 ++++++++++++++++++++++------------------------
>  1 file changed, 75 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/idle/intel_idle.c b/drivers/idle/intel_idle.c
> index 5adc058c705d..e0332d567735 100644
> --- a/drivers/idle/intel_idle.c
> +++ b/drivers/idle/intel_idle.c
[]
> +/**
> + * intel_idle - Ask the processor to enter the given idle state.
> + * @dev: cpuidle device of the target CPU.
> + * @drv: cpuidle driver (assumed to point to intel_idle_driver).
> + * @index: Target idle state index.
> + *
> + * Use the MWAIT instruction to notify the processor that the CPU represented by
> + * @dev is idle and it can try to enter the idle state corresponding to @index.
> + *
> + * If the local APIC timer is not known to be reliable in the target idle state,
> + * enable one-shot tick broadcasting for the target CPU before executing MWAIT.
> + *
> + * Optionally call leave_mm() for the target CPU upfront to avoid wakeups due to
> + * flushing user TLBs.
> + *
> + * Must be called under local_irq_disable().
> + */
> +static __cpuidle int intel_idle(struct cpuidle_device *dev,
> +				struct cpuidle_driver *drv, int index)
> +{
> +	struct cpuidle_state *state = &drv->states[index];
> +	unsigned long eax = flg2MWAIT(state->flags);
> +	unsigned long ecx = 1; /* break on interrupt flag */
> +	bool uninitialized_var(tick);

This will generate an UBSAN warning because Clang could poison all
uninitialized stack variables to 0xAA due to CONFIG_INIT_STACK_ALL=y, so one
issue is that,

bool uninitialized_var(x);

would always broken on Clang like this,

[   92.140611] UBSAN: invalid-load in drivers/idle/intel_idle.c:135:7
[   92.143111] load of value 170 is not a valid value for type 'bool' (aka '_Bool')
[   92.145657] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.7.0-rc6-next-20200522+ #3
[   92.147424] Hardware name: HP ProLiant BL660c Gen9, BIOS I38 10/17/2018
[   92.149869] Call Trace:
[   92.149869]  dump_stack+0x10b/0x17f
[   92.149869]  __ubsan_handle_load_invalid_value+0xd2/0x110
[   92.149869]  intel_idle+0x54/0xf0
[   92.156202]  cpuidle_enter_state+0x120/0x4f0
[   92.156202]  cpuidle_enter+0x5b/0xa0
[   92.156202]  call_cpuidle+0x25/0x50
[   92.156202]  do_idle+0x1eb/0x2c0
[   92.156202]  cpu_startup_entry+0x25/0x30
[   92.156202]  rest_init+0x26f/0x280
[   92.156202]  arch_call_rest_init+0x17/0x1e
[   92.156202]  start_kernel+0x598/0x633
[   92.156202]  x86_64_start_reservations+0x24/0x26
[   92.156202]  x86_64_start_kernel+0x116/0x1c1
[   92.156202]  secondary_startup_64+0xb6/0xc0

However, I am wondering if it is correct to let "tick" uninitialized to begin
with. If this condition is true,

!static_cpu_has(X86_FEATURE_ARAT) && lapic_timer_always_reliable

Then, we could in the final branch to use the uninitialized value.

if (!static_cpu_has(X86_FEATURE_ARAT) && tick)

Isn't that possible?

> +	int cpu = smp_processor_id();
> +
> +	/*
> +	 * leave_mm() to avoid costly and often unnecessary wakeups
> +	 * for flushing the user TLB's associated with the active mm.
> +	 */
> +	if (state->flags & CPUIDLE_FLAG_TLB_FLUSHED)
> +		leave_mm(cpu);
> +
> +	if (!static_cpu_has(X86_FEATURE_ARAT) && !lapic_timer_always_reliable) {
> +		/*
> +		 * Switch over to one-shot tick broadcast if the target C-state
> +		 * is deeper than C1.
> +		 */
> +		if ((eax >> MWAIT_SUBSTATE_SIZE) & MWAIT_CSTATE_MASK) {
> +			tick = true;
> +			tick_broadcast_enter();
> +		} else {
> +			tick = false;
> +		}
> +	}
> +
> +	mwait_idle_with_hints(eax, ecx);
> +
> +	if (!static_cpu_has(X86_FEATURE_ARAT) && tick)
> +		tick_broadcast_exit();
> +
> +	return index;
> +}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200523000427.GF1337%40Qians-MacBook-Air.local.
