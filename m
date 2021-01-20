Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTHQUKAAMGQE7OON2IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D272FDCCF
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 00:10:05 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id l1sf7376700oib.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 15:10:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611184204; cv=pass;
        d=google.com; s=arc-20160816;
        b=lAP383puo3pGTyDC3d9plEevPqyYHHxiK3p/lOC9YD1zHKmVUbY/jQxoVqmCbL52zd
         5ISCYPlgZWcm8A2JRaftXC4Nta0mS13U4vUlJpV44QOpsyTtmeRC+3LiU3ACaPrA5oo+
         04TD90q/olbcxyHtUSPJdoNiyxiN6ndofSH1Ao+bbH6ksBOm/0x4pFmKu7V4IusCZ4ZR
         TKXAKUGvqUWrKdGNgzaSAzmNrn37+nz0IDePQaARiWvy/s0MQ/zbB9XOizsveiDcJgtL
         hp+QV59QX+yUTd0Uv9ZL5aNzOYpf9ix8lQgUcqH2SS7q3B8NSvQa2i/MU8PpjWRWmI60
         fpGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PNEm8+yLYoyLB6x6Q/BxkiSkj22coYvs5b2J7QxQI2s=;
        b=dadqjoVcKPITb9g/HqogzX6SN2hgVTY08eK/skdKoMIqozeP8COgiTm7htKMo4HNq+
         fAV8xfQVodyreQAmGXYCwWsao5C7RAcCU5RiilGKaSpDjL0ibwtYRz8wYS+tSaTJcl9i
         ano5OAjnoyvuPa2Bsku7eQDKB6yZu9hxObKNK7+vEhv1Ei0MpQxHQIoDRPR9L17Upkax
         WKWhbjtcXHCX8I2zQk2Q/8t+UusDq69orGdO4/X6Apid7iSro5ai3KSRlRRv6WkW82aS
         e+dbfc8hVbqOeo9HvTLU5WD3KAPgoVohG8tntL9ucaO5+PRCUF9PsbB6PPJEjMRTsBCF
         i8oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D35sbY5I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNEm8+yLYoyLB6x6Q/BxkiSkj22coYvs5b2J7QxQI2s=;
        b=EfPnIhz5Frp/zdrjQ71M/YJgI+5B0WWYxwuMrTB+9Rs7oykFV4jIdkVYvRGEsnbNJP
         StHX7Gvr3Ej6yyzZwdOTYM2Lr7ADoFPY9e3kwsHV8P3CzaaTGiQQf4EYIgRhnwiBJEED
         ymQGu8IGIyoB2g8GO6YwFzTFPvh/e5WlHy9Y/afMC0naKslf+ewCF7JG6ru59P+XiHXt
         zpQ9I2Qa704pvtiVeoMmkB07jqI5s67WvgRNEp2sIyD8au2sW0EviIgl2KTvZlnL6MlD
         f2BwuNk90kqjWxQyKDhC7DxkiPJaDzjYFikbF8x3bwRq/htFyKS/y9fQ8/BApIfgLGI+
         GsaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNEm8+yLYoyLB6x6Q/BxkiSkj22coYvs5b2J7QxQI2s=;
        b=WczrdVM0TNy1QLpxOSAtrYGPZITx5Pffz0Om81DSw/TpdUd3bUZ/Bugwuk3usarVYF
         y20v3ctXV7QqdZI/hPTw0GEd4WLcOVbq3b8jSu7vTrJv5c+1X+INfdUAPfN792RdhDjv
         269ZzGd/u4UUVpQ1PHNu78eZal5fGZfBoiZVNY51e0WOEYwS48HRA5ISUG7dRgxChCFf
         psH0ArqxpOnXZIMnFFXp05AlpNnJSZI0duFQCGlAFxfM/ougnroApkdqEboyRQzQaepx
         NhB2lY3FX4mTpFbbyZpsbIAuytETljgzPa2IlrS3nDjN/eE0em/SKv10HO1rsg35ymrK
         /8bA==
X-Gm-Message-State: AOAM531V9nsGq9ghdWirML5V+9M6OxpVolXtR9/7AqwkuhkPLuTnjNEu
	/j+2CJvmninR02H/gXKV+kk=
X-Google-Smtp-Source: ABdhPJwVORhtCb7N2tRUhG6G4SiahXx4LsJVRsijGfUS+ckf8OcBmdsb7y6mbghkD0l9jsvXdLbdzQ==
X-Received: by 2002:a4a:bf14:: with SMTP id r20mr7623971oop.2.1611184204573;
        Wed, 20 Jan 2021 15:10:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1391:: with SMTP id d17ls27720otq.2.gmail; Wed, 20
 Jan 2021 15:10:04 -0800 (PST)
X-Received: by 2002:a05:6830:1308:: with SMTP id p8mr8339011otq.330.1611184204162;
        Wed, 20 Jan 2021 15:10:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611184204; cv=none;
        d=google.com; s=arc-20160816;
        b=auF9RHhFJ7JzJ+TiL+e3tv3uHxw5p0sIrQ9saSg3gwaBPFTUN7ZgpH8Uh961Q9g/D7
         ofgNAUpeZGDwClPF6sc0lS+DZYjOxcJlgYLs8kWGH0amawbgo4YGwX2U+LK7dkYPr8wX
         LsLZ+3/ZhyqbTXk/9Vebmdt/kH2GryOo0r/90IU36Z2XE5669aJ1WNWGb/qNafBCY+Vg
         HYTa1x7K3wiPN2vGBqSnTmjuNCdq7nNrLYiMtuqfuP4W+sepV34FdBY0/xlxXuAJUkr+
         vn0TNF52smFreyF3asWiW7sTDb++oJUHJWbGLomH8hFyFnsThyp4IYLHQ22QskFcTojc
         n3gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zhYUIY/pxxk2hZgz6LMzQ8D+neAYmmcm1aEWExzAYmQ=;
        b=TXw2qP1DreWW4bCPcHtfXbOuZEa8UEgdH0WsOFjJCFDbK0xMyOU0bFekxXHbzeM7VZ
         24eLOiufYI3rD1JbaiVmSm43WKze4r0g70wKEdrfooEYzI/VUhbvQmJ6S0ZUsRvEunoU
         FKVMRp5R5l3kS2H4HvygmYTJu0VZUOkXAK5WvLGXPsB+VH4x2a/vIvnQcHfpYLISt7HK
         DBzNc9U4J9jSaPkTQbHKyY64jlkvlrOeJakic+JBBJBE8OkvktwJKYgZs4X7IcTZ0ycZ
         ZSS47l1xHcS3Cyp1eiaOrUIGBqft+tEihiV5L4n/iMHvQhx+IP/oFDknLnnN4nLNizAl
         6xzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D35sbY5I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id r27si315464oth.2.2021.01.20.15.10.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 15:10:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id z21so16304384pgj.4
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 15:10:04 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr11653031pgr.263.1611184203611;
 Wed, 20 Jan 2021 15:10:03 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com> <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
 <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
In-Reply-To: <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Jan 2021 15:09:53 -0800
Message-ID: <CAKwvOdnVwkxQTQ-LkdZi4pFWTMg6d0Lddddp=j4pCEh-JT-34Q@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora Kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D35sbY5I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d
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

On Tue, Jan 19, 2021 at 1:35 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Jan 19, 2021 at 10:18 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > > index b99dd8e1c93f..f9f3601cc2d1 100644
> > > --- a/arch/arm/lib/xor-neon.c
> > > +++ b/arch/arm/lib/xor-neon.c
> > > @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
> > >  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
> > >  #endif
> > >
> > > +/*
> > > + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> > > + * compiler does not produce vectorized code due to its cost model.
> > > + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> > > + */
> > > +#ifdef CONFIG_CC_IS_CLANG
> > > +#warning Clang does not vectorize code in this file.
> > > +#endif
> >
> > Arnd, remind me again why it's a bug that the compiler's cost model
> > says it's faster to not produce a vectorized version of these loops?
> > I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8
>
> The point is that without vectorizing the code, there is no point in building
> both the default xor code and a "neon" version that has to save/restore
> the neon registers but doesn't actually use them.

Doesn't that already happen today with GCC when the pointer arguments
are overlapping?  The loop is "versioned" and may not actually use the
NEON registers at all at runtime for such arguments.
https://godbolt.org/z/q48q8v  See also:
https://bugs.llvm.org/show_bug.cgi?id=40976#c11.  Or am I missing
something?

So I'm thinking if we extend out this pattern to the rest of the
functions, we can actually avoid calls to
kernel_neon_begin()/kernel_neon_end() for cases in which pointers
would be too close to use the vectorized loop version; meaning for GCC
this would be an optimization (don't save neon registers when you're
not going to use them).  I would probably consider moving
include/asm-generic/xor.h somewhere under arch/arm/
perhaps...err...something for the other users of <asm-generic/xor.h>.

diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
index aefddec79286..abd748d317e8 100644
--- a/arch/arm/include/asm/xor.h
+++ b/arch/arm/include/asm/xor.h
@@ -148,12 +148,12 @@ extern struct xor_block_template const
xor_block_neon_inner;
 static void
 xor_neon_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
 {
-       if (in_interrupt()) {
-               xor_arm4regs_2(bytes, p1, p2);
-       } else {
+       if (!in_interrupt() && abs((uintptr_t)p1, (uintptr_t)p2) >= 8) {
                kernel_neon_begin();
                xor_block_neon_inner.do_2(bytes, p1, p2);
                kernel_neon_end();
+       } else {
+               xor_arm4regs_2(bytes, p1, p2);
        }
 }
diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
index b99dd8e1c93f..0e8e474c0523 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -14,22 +14,6 @@ MODULE_LICENSE("GPL");
 #error You should compile this file with '-march=armv7-a
-mfloat-abi=softfp -mfpu=neon'
 #endif

-/*
- * Pull in the reference implementations while instructing GCC (through
- * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
- * NEON instructions.
- */
-#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
-#pragma GCC optimize "tree-vectorize"
-#else
-/*
- * While older versions of GCC do not generate incorrect code, they fail to
- * recognize the parallel nature of these functions, and emit plain ARM code,
- * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
- */
-#warning This code requires at least version 4.6 of GCC
-#endif
-
 #pragma GCC diagnostic ignored "-Wunused-variable"
 #include <asm-generic/xor.h>
diff --git a/include/asm-generic/xor.h b/include/asm-generic/xor.h
index b62a2a56a4d4..69df62095c33 100644
--- a/include/asm-generic/xor.h
+++ b/include/asm-generic/xor.h
@@ -8,7 +8,7 @@
 #include <linux/prefetch.h>

 static void
-xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
+xor_8regs_2(unsigned long bytes, unsigned long * __restrict p1,
unsigned long * __restrict p2)
 {
        long lines = bytes / (sizeof (long)) / 8;


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnVwkxQTQ-LkdZi4pFWTMg6d0Lddddp%3Dj4pCEh-JT-34Q%40mail.gmail.com.
