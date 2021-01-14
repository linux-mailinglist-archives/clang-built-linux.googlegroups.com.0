Return-Path: <clang-built-linux+bncBDYJPJO25UGBB64HQKAAMGQE6RVV64A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 960B92F680D
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 18:48:44 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id m1sf5192670qvp.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:48:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610646523; cv=pass;
        d=google.com; s=arc-20160816;
        b=F8So2VMP1zZDm2J76u4p9VabzzfmNgz+Lb40ptjK/0N0mQI7dInH3p77u0xxVzfRnV
         Bb3UbvTvmPFnAArR50/N6+lf0GiDhtUSDEFcKgMitL/+Snfajm/d1dzwnKm4KbUEyv9r
         lJe5cUxz6IbFOzc5D3r5tU3Z34mLt+VsyIBvBfhug024bMLctq80q/bR728GhyOavDgZ
         xdv32fBgrpL7zAvYxQegAHNDZmkVXX5BH+ydbXNIrphDzPfu+3936wIVYMJO963sEkm1
         0IzsEtRmb4MvhuoFFFIVCVlLWlPlpKl+BsYR+VueH1+R+ryR1GOo7NALrRH9UjxKr9LZ
         TYvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QqXkpLprhWfsophcogfSAUV4wfEtNXSy+BRQLARic5U=;
        b=zk98e/wgMf6Dqq0fyYgmvubDyvGY/ev30oypYaFjjWM5exzyy52O+Y0xH+4A+gLJRS
         7/dwVlbXSh0PnIECfk/o42l14EJNlxEM5d37ub+aqorhasndOASeP6mSs2i6++5/SgOi
         8++AIghmsQZbchOJVkK/2/4PK5YDnqFg1gCo+qWqC+u/XJNFgM70DcoyT9Y0rnsxqO0N
         W6khcudTHx00ObBcV7U8hUDxpfgFnThBmOeibD6+x8J+Rel6HErnREinybuIRlVXWdNS
         S7zZJpmL7xNwOEA3EVO27ZWLMImrPXiUqTm3Gg1c/bLlRfffS+xGIRR1p7Bvfmsu6NBN
         dF/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bQbHRL+A;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QqXkpLprhWfsophcogfSAUV4wfEtNXSy+BRQLARic5U=;
        b=r1iWco1p84fA/rRNnAwSmPlFVdsmS0GWlLAQtLeP4oGERYA3wIQlXzov1nbUcFpIpD
         7k5L46Egm0VkTnam0R4/fI1+Q9rqkuJbHuttfRgjm+sdXnGUTjissBqF5GxATDyGjVIc
         2DjYByVTGaiQcwCv+5F/wrisby88P/8eFLWwVXxwoCuflcMBd1Wi2ey4ULuCgzWzTTvC
         Jl6kyKEWL5KoM53RW5Mop4bfMM4NEClrtIUg/72+hleR380k3j2ujsing4GvIyCPS98a
         sYp60LSJ0ASAq6+f5ukYYzZB+97uI6UNN2rlM+tlGU/uJ22+UfHvL6lqN0PJDFh0eW/S
         W2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QqXkpLprhWfsophcogfSAUV4wfEtNXSy+BRQLARic5U=;
        b=Njz4DKke2ekDPf7c9sDDIOggQrl0tTiIVHFUbMd2V2efP1gAuQM1o/eax1KUJSYclo
         CaThRqp2VficLtXVg+hXW8y+MHFcvFZt8qe95XPcewI/cHZC1upt1SNIHWxNutedKWPj
         D4OOexhUSZ3cOXFToGHQ5S+muVkbzxlRht/ZRf94a7n7ofictOxf9/LWjat8P9wlUAol
         S7IVl+hGihYreL3vKuerpqYNdOKaqxARTLXZqdQd6FxArpI5DuU/+wgXdJfSjCK8vXV5
         YnpLdB0IQitHtYLjrtgeRAc0l10YjAyDpQKUWIl/WZN0VPY629sNXitA71Y5YDxo64xV
         QNXw==
X-Gm-Message-State: AOAM533yTryDSkJuHboS0ttKiA23vjKQaG4MurAzsEz0pp5l/nbmHxE6
	kQLu5+7ZqFKKGGSHtYk7fiw=
X-Google-Smtp-Source: ABdhPJxs6nbjOZdXpKsP9Ki4BUbfxccKpjr1akaHPAhGZz6sunmj0eIAIc+0PmTqao2BFU7LZ51lrg==
X-Received: by 2002:ac8:66c7:: with SMTP id m7mr8254856qtp.69.1610646523583;
        Thu, 14 Jan 2021 09:48:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea19:: with SMTP id f25ls3131411qkg.7.gmail; Thu, 14 Jan
 2021 09:48:43 -0800 (PST)
X-Received: by 2002:a37:9f4c:: with SMTP id i73mr8336360qke.82.1610646523266;
        Thu, 14 Jan 2021 09:48:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610646523; cv=none;
        d=google.com; s=arc-20160816;
        b=lvAuBy3IJnxOCNLzVrsiEg1071tfs2m8n4bg4lzaYnicnUxBUKuiVeEiJotcXwp/Xw
         UsEAkS8SUts+zlwC0YJxfjen+o+fVkivUGEQ3hXg1bs5wRrg3N/ewQG+NnwaKAwg63na
         QgiPplSxi/e+mzY5PUxDZqZ1cr/5HLO+HGFgJkSDsbyaMGNpWR7KZFuAL5HjA1PYjAKQ
         4Ch64ykLwKJMyJFWkEB623IbuGuVtMtBBQU5P8ugiv5/jydQ4svjD84aQBsO85zayhAG
         IKGDEW+f+/Z/UMilWMlt5MhnIh0usmcQVmwmu/+s8GK25HrTYkS3kFSt3RatXv8izYeP
         K88Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1o9uWR5TsphyYxa9rKGSc/bmltnz4js3z2K7w6fMWLk=;
        b=rl+CbCXs6Ndx4YC2KhpRQEtvJiPxWjH882NRToECs7dA/3fLlWFvSYPGlNLsgsuHAs
         ADH9z8oeCXyEk2Cvajn35kMrxEPnG+X4lGwAPcYagVAeM/dkDPPhWUD1ogqqBkKN29mj
         nXMH+h75pcQZIPwU8sD6nLOabvhi7B6mNvJR4cHhdKIZ2p91o1ez5CTgK077GKu1niI6
         FviWf58uG5iWNSfQBj1dOyTJZjIHxmOYE0Di11iWjKiOCrByRKiL00VPQCMP9jplvmaT
         bEV9GTLrvD8knO7py3pBC7jkCxb9MClkMRG2nhrT1aacLm4ocRyf4/6BBjwN3gCzQf2u
         0Gxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bQbHRL+A;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id p55si585839qtc.2.2021.01.14.09.48.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 09:48:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id n25so4279550pgb.0
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 09:48:43 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr8646560pgm.10.1610646522288;
 Thu, 14 Jan 2021 09:48:42 -0800 (PST)
MIME-Version: 1.0
References: <20210114173416.738455-1-natechancellor@gmail.com>
In-Reply-To: <20210114173416.738455-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 09:48:31 -0800
Message-ID: <CAKwvOdmiWhtr6qkKDFnVXqLZhyFU4bfhjTyQ6BKiLYup+qasMQ@mail.gmail.com>
Subject: Re: [PATCH] MIPS: Compare __SYNC_loongson3_war against 0
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, LKML <linux-kernel@vger.kernel.org>, 
	linux-mips@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bQbHRL+A;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 14, 2021 at 9:34 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building with clang when CONFIG_CPU_LOONGSON3_WORKAROUNDS is
> enabled:
>
>  In file included from lib/errseq.c:4:
>  In file included from ./include/linux/atomic.h:7:
>  ./arch/mips/include/asm/atomic.h:52:1: warning: converting the result of
>  '<<' to a boolean always evaluates to true
>  [-Wtautological-constant-compare]
>  ATOMIC_OPS(atomic64, s64)
>  ^
>  ./arch/mips/include/asm/atomic.h:40:9: note: expanded from macro
>  'ATOMIC_OPS'
>          return cmpxchg(&v->counter, o, n);
>                 ^
>  ./arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro
>  'cmpxchg'
>          if (!__SYNC_loongson3_war)
>               ^
>  ./arch/mips/include/asm/sync.h:147:34: note: expanded from macro
>  '__SYNC_loongson3_war'
>  # define __SYNC_loongson3_war   (1 << 31)
>                                     ^
>
> While it is not wrong that the result of this shift is always true in a
> boolean context, it is not a problem here. Regardless, the warning is
> really noisy so rather than making the shift a boolean implicitly, use
> it in an equality comparison so the shift is used as an integer value.
>
> Fixes: 4d1dbfe6cbec ("MIPS: atomic: Emit Loongson3 sync workarounds within asm")
> Fixes: a91f2a1dba44 ("MIPS: cmpxchg: Omit redundant barriers for Loongson3")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/mips/include/asm/atomic.h  | 2 +-
>  arch/mips/include/asm/cmpxchg.h | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/mips/include/asm/atomic.h b/arch/mips/include/asm/atomic.h
> index f904084fcb1f..27ad76791539 100644
> --- a/arch/mips/include/asm/atomic.h
> +++ b/arch/mips/include/asm/atomic.h
> @@ -248,7 +248,7 @@ static __inline__ int pfx##_sub_if_positive(type i, pfx##_t * v)    \
>          * bltz that can branch to code outside of the LL/SC loop. As   \
>          * such, we don't need to emit another barrier here.            \
>          */                                                             \
> -       if (!__SYNC_loongson3_war)                                      \
> +       if (__SYNC_loongson3_war == 0)                                  \
>                 smp_mb__after_atomic();                                 \
>                                                                         \
>         return result;                                                  \
> diff --git a/arch/mips/include/asm/cmpxchg.h b/arch/mips/include/asm/cmpxchg.h
> index 5b0b3a6777ea..ed8f3f3c4304 100644
> --- a/arch/mips/include/asm/cmpxchg.h
> +++ b/arch/mips/include/asm/cmpxchg.h
> @@ -99,7 +99,7 @@ unsigned long __xchg(volatile void *ptr, unsigned long x, int size)
>          * contains a completion barrier prior to the LL, so we don't   \
>          * need to emit an extra one here.                              \
>          */                                                             \
> -       if (!__SYNC_loongson3_war)                                      \
> +       if (__SYNC_loongson3_war == 0)                                  \
>                 smp_mb__before_llsc();                                  \
>                                                                         \
>         __res = (__typeof__(*(ptr)))                                    \
> @@ -191,7 +191,7 @@ unsigned long __cmpxchg(volatile void *ptr, unsigned long old,
>          * contains a completion barrier prior to the LL, so we don't   \
>          * need to emit an extra one here.                              \
>          */                                                             \
> -       if (!__SYNC_loongson3_war)                                      \
> +       if (__SYNC_loongson3_war == 0)                                  \
>                 smp_mb__before_llsc();                                  \
>                                                                         \
>         __res = cmpxchg_local((ptr), (old), (new));                     \
> @@ -201,7 +201,7 @@ unsigned long __cmpxchg(volatile void *ptr, unsigned long old,
>          * contains a completion barrier after the SC, so we don't      \
>          * need to emit an extra one here.                              \
>          */                                                             \
> -       if (!__SYNC_loongson3_war)                                      \
> +       if (__SYNC_loongson3_war == 0)                                  \
>                 smp_llsc_mb();                                          \
>                                                                         \
>         __res;                                                          \
>
> base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837

^ is this "base-commit" something you manually added, or can git
format generate that?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmiWhtr6qkKDFnVXqLZhyFU4bfhjTyQ6BKiLYup%2BqasMQ%40mail.gmail.com.
