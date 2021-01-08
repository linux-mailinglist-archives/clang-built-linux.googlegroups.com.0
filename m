Return-Path: <clang-built-linux+bncBAABBUPV4L7QKGQEA2HDDKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C72EF881
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 21:04:34 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id p185sf10165529qkc.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 12:04:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610136273; cv=pass;
        d=google.com; s=arc-20160816;
        b=H40a+JGQKDzX09KamfVmOlbxYacJzvDEAt+zja8b+WSQ/7XeywFWSOFsNI7GXvyuvk
         7xFPpLB5re5ndvSl4Xq7usfRpSkk9I9NN6wCCU9vP8d82u7bVsbDv9p6HPZXukLIvtGi
         CrzTbG8WBbHPirtWi1oEwoN+qcnR92g3svKVieL66UT574R7UwlFS55ePKrm1ImQqKep
         S1OmeinTMw3+oF688RitJTQBNBgObNj6yjMa4/pVzVrCuP14lLcUNMBPJBP3g6eD2Dg7
         cou3Di8Mf3SoJWvoj3Skahnc9rcVuRWQam+sh4l0kJtCia4/PiEHrzcj2Df0qnHWpBKP
         D35g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=d/7EKaIgvT7Cy6TaN32KDaPV+BatHKM03PR4d+jcFUs=;
        b=loplAA/+WfDsp0/JMCC2vl7goeajTcluZ62XrTtr4J3u5BOkjdNxXFgzwyRDkoiVd8
         vlH5mrL8KKbUYlBusulaxoWWg6Q1mHspN8WQSSfn2GjB9GeYXSaiV78BnyIGOP3LAam+
         UWK25Nzhk5PQ+9u9W5n4ua1qJJlkynG7QE7iAO74GI3/83qFsSs9h8Rr+f/DmzxkhW7n
         lnczL2RZDODI/U5Ex89vtfTk2OiqxL3z5MteemX0InFCXTGGPJxsylfT+Z77n2StA5Q/
         bNNGNklNnSqvV/zrvgrz1rGN+7pNCtgK+//9wRVOZbLK4+FCqiJGc/5U8Fx/va3IJr3S
         TQGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u416Jfem;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/7EKaIgvT7Cy6TaN32KDaPV+BatHKM03PR4d+jcFUs=;
        b=QJE8HTnsk7PLswG7o5eGVH07WHCjUn33N+V7op7HmDTU2h8xzv8HVFwnYin++O3inm
         NKLumj47D+FzCdRRt/N5y9g/bjYvvs4Rkl8sK/Kinheu3eqpqBl8gGzD3XuZW+GWJKCe
         AuT6MzixmXf7do1MXTynJtzcCk1/N3b2i8HvPdskF5u1Dw3CrWJVTJYyYR6YoI97u4y6
         lyKi8T3w+WIQTJsIQUCa8xvVkHzCzdKlFL6LF9Otuko9Sj0GE7DhJzoEfP9HkqhQ7p/O
         k+JP0fdqesnm+4+RuJnx77zRsoI3iaURQ8F68Owvse6jdmM46Ap/ocERcPDqPTJC6PVZ
         JP2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/7EKaIgvT7Cy6TaN32KDaPV+BatHKM03PR4d+jcFUs=;
        b=t2sH0Ie4TNfN8P0U7tDxIY55sDxyT5vDiKEmzy4p66CbNj/j2duSoQVkgRg+dihaCE
         uW/rfQShBv/GI9l+H7WszfoTrRMe0/bgT0NcsvunMiuZx9clYEdeCcu0Aegaw04WfQsD
         0nMqBmeV6Dg0IJZBSLNsXGhKXN+2A/8w6F/i7xIEH2BIUZNrbRqI66mSOmOSHaTdbpo7
         YVyeCaCpf3CNxRHi/NByeB93VvKyChE+LHWlHyH6aCuI2uIfynPtlV80j6r9Q3eDKUuY
         M5l/L25xQfxudoAqy0VCig/pgAYhfaCqru5LnSvciWghkU8rSL2zAQT8umpD1+uHDb8p
         OqTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JbG6oV8oOAtuvdxoze3k5/9bQTHZh6GumkjQz5LZmBEeBHi1V
	29cP1Fi1QhbpK+h5VuZPu1E=
X-Google-Smtp-Source: ABdhPJzxYWZHZFTQ3eBma8/eOri4qS3N4w/KR/v3XMCmaAxp+aTBmk4fod3AEHyBRAWFf+mUnrJkuw==
X-Received: by 2002:ad4:5904:: with SMTP id ez4mr5325958qvb.30.1610136273667;
        Fri, 08 Jan 2021 12:04:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5603:: with SMTP id k3ls6235027qkb.2.gmail; Fri, 08 Jan
 2021 12:04:33 -0800 (PST)
X-Received: by 2002:a37:4d8e:: with SMTP id a136mr5452226qkb.317.1610136273139;
        Fri, 08 Jan 2021 12:04:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610136273; cv=none;
        d=google.com; s=arc-20160816;
        b=YLMGSr0BQFjL2l8ftPxiY8aryioRpWI0JojCCVr2OC3DZRjeGhopwD2CLFbUMxbYa9
         5hjqB1Ze3zZOm+br44WQ0DTLFlFKFA2r9qRWm8Fnje+M40JfMdsSAUwHnVLvNdhGSv5y
         nASGO5zxrLXyFCxCBsa8f9b+750AF5745BQMI1PPClUPQufgf/IFizif5fRYH2MzUo7w
         cKybhnwwzIpJQm92n7LBjj4mAXeLe97ydCCAKmws3lmBn4iJi2XAw0WDUXDGCJ+/+kI8
         F/jcIz3FXT3Ln7xarqO66lXVnLSHg45w2PNJxbzTBqSgYNmaqJTCmAJLl+r15MkQzIrO
         CWGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5IjR0Eu+aCc5p+Atfro56rAjvUcrDoRQ1RApWxwPhVU=;
        b=GXrk53qQk+HEy3bmnfdTwzkESwtfrV3vSlMyWwBeRgtf26lFlhQq4U8ZEXdjYD0bjb
         v/8xL7WdtDwmXVSWEmJ+MLkBj81hm7i22EC6UgWh+QifUMoHglXPnHDjJE7OEHdAO3KF
         42yOG+Ah9/XiGaZj2II8Mqo7PIGXEaNUPYk5IzhxMxDygVPI+nBQOOIzKYJGboVReHwv
         +D7TEy/5N0Kn4ylRc5dwim4KTPuzM7QzqOlevChq0sZzzwAsw048DwgyY1mznX4XlVZz
         l9bIwOT2oeLF8JCZyNY1HXpsIGJ5TRRInH4z1BBzx32aW/bwwRDxDuRjltm0697ugrdM
         sTlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u416Jfem;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y56si1223397qtb.4.2021.01.08.12.04.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 12:04:33 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E639F23AAC
	for <clang-built-linux@googlegroups.com>; Fri,  8 Jan 2021 20:04:31 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id s75so12705188oih.1
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 12:04:31 -0800 (PST)
X-Received: by 2002:aca:fd91:: with SMTP id b139mr3239039oii.67.1610136271246;
 Fri, 08 Jan 2021 12:04:31 -0800 (PST)
MIME-Version: 1.0
References: <20210108092024.4034860-1-arnd@kernel.org> <20210108093258.GB4031@willie-the-truck>
 <CAK8P3a27y_EM6s3SwH1e6FR7bqeT3PEoLbxSWPyZ=4BzqAjceg@mail.gmail.com> <20210108185047.GB5457@willie-the-truck>
In-Reply-To: <20210108185047.GB5457@willie-the-truck>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 8 Jan 2021 21:04:14 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2CfL5CsLcqtb8mOjUmZyRu_RPLj-qHOV3yfwmHHcO+5Q@mail.gmail.com>
Message-ID: <CAK8P3a2CfL5CsLcqtb8mOjUmZyRu_RPLj-qHOV3yfwmHHcO+5Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
To: Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Mark Rutland <mark.rutland@arm.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=u416Jfem;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Jan 8, 2021 at 7:50 PM Will Deacon <will@kernel.org> wrote:
> On Fri, Jan 08, 2021 at 11:26:53AM +0100, Arnd Bergmann wrote:
> >
> > a) fully inline it as the __always_inline attribute does
> > b) not inline it at all, treating it as a regular static function
> > c) create a specialized version with different calling conventions
> >
> > In this case, clang goes with option c when it notices that all
> > callers pass the same constant pointer. This means we have a
> > synthetic
> >
> > static noinline long arch_atomic64_or(long i)
> > {
> >         return __lse_ll_sc_body(atomic64_fetch_or, i, &numa_nodes_parsed);
> > }
> >
> > which is a few bytes shorter than option b as it saves a load in the
> > caller. This function definition however violates the kernel's rules
> > for section references, as the synthetic version is not marked __init.
>
> Ah, I was hoping the compiler would've sorted that out, but then again, how
> would it know? But doesn't this mean that whenever we get one caller passing
> something like an __initdata pointer to a function, then that function needs
> to be __always_inline for everybody? It feels like a slippery slope
> considering the incentive to go back and replace it with 'inline' if the
> caller goes away is very small.

It showed up after UBSAN was enabled, which changed in the inlining rules.
I think we've had similar cases in the past, and worked around them in the
same way. IIRC there were two or three such instances this time, and only
in functions that are supposed to be only a handful of instructions long.

One thing I did not try though was to look at the object file to find
out why it has done this. Here is the generated assembler code for reference:

        .p2align        2                               // -- Begin
function arch_atomic64_or
        .type   arch_atomic64_or,@function
arch_atomic64_or:                       // @arch_atomic64_or
// %bb.0:
        hint    #25
        stp     x29, x30, [sp, #-48]!           // 16-byte Folded Spill
        stp     x20, x19, [sp, #32]             // 16-byte Folded Spill
        mov     x19, x1
        mov     x20, x0
        str     x21, [sp, #16]                  // 8-byte Folded Spill
        mov     x29, sp
        //APP
        1:      b               .Ltmp2
                .pushsection    __jump_table, "aw"
                .align          3
                .long           1b - ., .Ltmp2 - .
                .quad           arm64_const_caps_ready+1 - .
                .popsection

        //NO_APP
// %bb.1:
        mov     w21, wzr
.LBB19_2:
        adrp    x0, system_uses_lse_atomics.______f
        eor     w1, w21, #0x1
        add     x0, x0, :lo12:system_uses_lse_atomics.______f
        mov     w2, #1
        mov     w3, wzr
        bl      ftrace_likely_update
        tbnz    w21, #0, .LBB19_7
// %bb.3:
        //APP
        1:      b               .Ltmp3
                .pushsection    __jump_table, "aw"
                .align          3
                .long           1b - ., .Ltmp3 - .
                .quad           cpu_hwcap_keys+81 - .
                .popsection

        //NO_APP
// %bb.4:
        mov     w21, #1
.LBB19_5:
        adrp    x0, system_uses_lse_atomics.______f.20
        add     x0, x0, :lo12:system_uses_lse_atomics.______f.20
        mov     w2, #1
        mov     w1, w21
        mov     w3, wzr
        bl      ftrace_likely_update
        cbz     w21, .LBB19_7
// %bb.6:
        //APP
        .arch_extension lse
        stset   x20, [x19]

        //NO_APP
        b       .LBB19_8
.LBB19_7:
        //APP
        // atomic64_or
        b       3f
        .subsection     1
3:
        prfm    pstl1strm, [x19]
1:      ldxr    x8, [x19]
        orr     x8, x8, x20
        stxr    w9, x8, [x19]
        cbnz    w9, 1b
        b       4f
        .previous
4:

        //NO_APP
.LBB19_8:
        ldp     x20, x19, [sp, #32]             // 16-byte Folded Reload
        ldr     x21, [sp, #16]                  // 8-byte Folded Reload
        ldp     x29, x30, [sp], #48             // 16-byte Folded Reload
        hint    #29
        ret
.Ltmp2:                                 // Block address taken
.LBB19_9:
        mov     w21, #1
        b       .LBB19_2
.Ltmp3:                                 // Block address taken
.LBB19_10:
        mov     w21, wzr
        b       .LBB19_5
.Lfunc_end19:
        .size   arch_atomic64_or, .Lfunc_end19-arch_atomic64_or
                                        // -- End function
        .section        .init.text,"ax",@progbits
        .p2align        2                               // -- Begin
function early_cpu_to_node


Admittedly, now that I look at the output, I tend to agree with the
compiler that it should not be inlined and my approach was wrong!

And indeed, CONFIG_UBSAN does not even change the contents of
the function, but it does reduce the amount of inlining overall, so
without UBSAN it does not happen.

This patch actually avoids the out-of-line version as well
and also produces simpler code, leaving the effect of static_branch
working, though still suffering from the ftrace_likely_update()
update.

diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 5d10051c3e62..2b83b66d8767 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -19,7 +19,7 @@
 extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
 extern struct static_key_false arm64_const_caps_ready;

-static inline bool system_uses_lse_atomics(void)
+static __always_inline bool system_uses_lse_atomics(void)
 {
        return (static_branch_likely(&arm64_const_caps_ready)) &&
                static_branch_likely(&cpu_hwcap_keys[ARM64_HAS_LSE_ATOMICS]);

> Didn't we used to #define inline as __always_inline to avoid this situation?

Yes, that was the case in the past, except on x86, which had
CONFIG_OPTIMIZE_INLINING as an option. These two commits
subsequently changed the behavior to let the compiler make the
decision instead:

889b3c1245de ("compiler: remove CONFIG_OPTIMIZE_INLINING entirely")
ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING forcibly")

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2CfL5CsLcqtb8mOjUmZyRu_RPLj-qHOV3yfwmHHcO%2B5Q%40mail.gmail.com.
