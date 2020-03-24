Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS6B4XZQKGQEEPL5OII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 54856190348
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 02:22:21 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id d124sf2512256pgc.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 18:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585012940; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfqFEst3hqi3AX6nPHg/ham/AcgPSc9qeIy9Cgj0JFinjKb/UbVx8vQkRzWb2izdwB
         Z6lJO2bSqeDstepOUFH0Yt3rBKngnUdOqRNPnONleM0QDRrO4WYxMwAI8m06C6B3Xqj0
         yHmBtLv1F/pEz7i1Y0PKKF6c0j/sngqkmcjlCV+kRoXP5DerIuDe29HcUyozaP0L3DTO
         K4JVo/xPewfZGt/elP0TB8J7+F8E858xcgwtkB1qPIduYzjwhIlNaiGpNwtM7cXcwVRH
         NyBXwHCFiuBvZTPRFPXfBT45nB2pA+9JDmV1oeWc6b2jh6JgYuZJg64owEikih35mZfH
         /caw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ssbao0TM3giuj6sFkuMAFSw6zJcQ7CGBqpBazi8eOcQ=;
        b=ISbCq2yg64JQkwlAwnewnmPZ+5UWtiMCTYsVftoqb6xRmSoy6XfeEVCCdzLBEw3At2
         qXoNJckYHIpsRBZf9WiSnDn3lB8NX+VaytqR9x7UWOdn2Wko5mVAqCoC0n55HyS6Vqyz
         bGKG1hLIK6xyKEC6eH9JmQncfo1PDU6wkelo7uPDheiWAiuHFftfAd+BV/CL1K4AlQh2
         PzKxSVKWn2MsBBuKjW/b4K2rF2OdArVQnBP+p8iGQmbBg24oKR0/n867A/wO7NC/+qOV
         S5D9X0wdJck8Jb3xuhUzCYRfqjHwBrS6D8euwusoeshVabK+yK0L+MwXc74VompMg+U8
         z73Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C3gnOA1K;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ssbao0TM3giuj6sFkuMAFSw6zJcQ7CGBqpBazi8eOcQ=;
        b=I/OgSYEd157VB1MPzDKAZFgHBdYGQVXn6kRy7GVJEi//velo4GgCR0cPP94h1Kj7fW
         3nxEGaH9i8p02ZOV/PKTErOjydU8151OVgTj1nyuqi+NPIxqgTAnzpXrz7pPFYIN0fmb
         aY3ToS0S3Cvj4LWz2p9Hfm5kyZGWhu0f65jCiDcrHj3E+VSX+wvdRgSXZHrwpjljzGeD
         vkBd3lgXzuFJNm5KfRzsC7fZarK8ZYmPixpk1GgBczxmwd8tjhjwMD02n2aWwwMueDIU
         Jhg3o0a/s9Td4LXXU65J3gnnrN4EVOjxAWmdkS4DmqCJdFDpRcuvLiGft17EAcYMAcde
         6NVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ssbao0TM3giuj6sFkuMAFSw6zJcQ7CGBqpBazi8eOcQ=;
        b=m1cuKGcNT8GrKBBqu75p7rywKUdipl2TEyKiEjjPN2vCucmx6lE875csZgbdo075yl
         BiOaY3cPBSX7U+Fabz8dY7QtFiH8fpAKVM9bG2pMC4qianrExJs8GZ4lZL6J9rV/5lc1
         YEgS7cyPEpJ6zHrOm8CKPDgPHWim4IAWunklQDAXOwR3XRjTiQRWyap8opUiTdfhqzf6
         hmF91phNwWMTqoL0ANmyc/5T8lrS+VRT83sEm9TZA7A3kA6mWyiu7Pj4Mmb1BWX2FeQL
         qSjkjPH5msFaHVGnlf08ltCaDEws9XmrDbbmXL6T+xFZmEBOW1ie4vVmglIbdC+Pv5EZ
         Ew3A==
X-Gm-Message-State: ANhLgQ2N3DF/EwuwIG3z7O9yOEfWFwX+LgLCr2qaJfyYRG7mw/s+pNY1
	JMisak7ioR986TAjQzBsmOM=
X-Google-Smtp-Source: ADFU+vsHgTSnV6ERXP3+bwzX/1EGhlFCjQhs086y2MMip0PWfI/UEJhag60oOuQ9Cqp9WJlO25u7mQ==
X-Received: by 2002:a17:902:463:: with SMTP id 90mr25586383ple.213.1585012939946;
        Mon, 23 Mar 2020 18:22:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34cb:: with SMTP id b194ls5466033pga.1.gmail; Mon, 23
 Mar 2020 18:22:19 -0700 (PDT)
X-Received: by 2002:aa7:9a1c:: with SMTP id w28mr27330669pfj.16.1585012939492;
        Mon, 23 Mar 2020 18:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585012939; cv=none;
        d=google.com; s=arc-20160816;
        b=LbCfz/Tfqz/Cjv7xiLSL10eUIkTkzwf1e8Rwjck2S5CyoR69cQx3dDdh5DP3X8P2v9
         wr539s9zbItkSb41FfRR1VU6Dja4qrDLkbvFbysk/xiKnh5uTvqT2QpnW7TsHGE0L9B2
         LBQMyNgEydhd5ZHvoe3D2RHKA53R55LZC2dXE0IaAKckKuAaVSNEk92JjrulEQHYgvPD
         YCbTFN5vHjB1OK5F/mosy63jAdY7KKzjYbdvxozJZI8dAR9MswYbQPYEQmg6TdxxVSmC
         sk4d5BX/usKNRnm2Vavj7kkOeTApqS7Sewy/XwKTzwjs2CdhtWkjZb5K+vQ7LVRmLg6t
         HKfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2bF4kWzVYozUGgvzITVBuWBVodBeRJJH7jEiGrv7K80=;
        b=fZdkkHrjZ1SbwLUecWYkh5ZKzRR4goKathcIDpYWnxb2r6MtPArKJ+bzJA/WJZUYFJ
         RpUWoHw3dXJ9Od0O6QynrQX9P6RPM563Q1NK2uTuiq+m543uk7q3b3rxK9ms3JCdPjq1
         xY6X9mq0Lqp1jUXXs19tTeuLhZON6WR7vzbIlxDedZZ7jsNfqE48UC+T96kpEAST6e10
         5YIizAv2Xxy3MKnyLuK43bqTP9Nbr1CO0aHEM2y3u2T6bRHcoJv5Z9NPbsPwjgVid2+h
         K77VS73kWGHT9l8fyRMVUZjR+bim2pnsn4UVO+otT60JeKHlBselL6ywXn50kfmP9ef+
         ws3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C3gnOA1K;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s63si20523pjb.0.2020.03.23.18.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 18:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id jz1so590979pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 18:22:19 -0700 (PDT)
X-Received: by 2002:a17:902:6bc8:: with SMTP id m8mr17986977plt.223.1585012938823;
 Mon, 23 Mar 2020 18:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com>
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 18:22:05 -0700
Message-ID: <CAKwvOd=p5jkqopHr2ka_9PM345d-hzoqT97Gq6z1ZsmJS1ZQvw@mail.gmail.com>
Subject: Re: [PATCH] x86: Alias memset to __builtin_memset.
To: Clement Courbet <courbet@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=C3gnOA1K;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Mon, Mar 23, 2020 at 4:43 AM 'Clement Courbet' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
>     Recent compilers know the meaning of builtins (`memset`,
>     `memcpy`, ...) and can replace calls by inline code when
>     deemed better. For example, `memset(p, 0, 4)` will be lowered
>     to a four-byte zero store.
>
>     When using -ffreestanding (this is the case e.g. building on
>     clang), these optimizations are disabled. This means that **all**
>     memsets, including those with small, constant sizes, will result
>     in an actual call to memset.

Isn't this only added for 32b x86 (if I'm reading arch/x86/Makefile
right)? Who's adding it for 64b?

arch/x86/Makefile has a comment:
 88         # temporary until string.h is fixed
 89         KBUILD_CFLAGS += -ffreestanding
Did you look into fixing that?

>
>     We have identified several spots where we have high CPU usage
>     because of this. For example, a single one of these memsets is
>     responsible for about 0.3% of our total CPU usage in the kernel.
>
>     Aliasing `memset` to `__builtin_memset` allows the compiler to
>     perform this optimization even when -ffreestanding is used.
>     There is no change when -ffreestanding is not used.
>
>     Below is a diff (clang) for `update_sg_lb_stats()`, which
>     includes the aforementionned hot memset:
>         memset(sgs, 0, sizeof(*sgs));
>
>     Diff:
>         movq %rsi, %rbx        ~~~>  movq $0x0, 0x40(%r8)
>         movq %rdi, %r15        ~~~>  movq $0x0, 0x38(%r8)
>         movl $0x48, %edx       ~~~>  movq $0x0, 0x30(%r8)
>         movq %r8, %rdi         ~~~>  movq $0x0, 0x28(%r8)
>         xorl %esi, %esi        ~~~>  movq $0x0, 0x20(%r8)
>         callq <memset>         ~~~>  movq $0x0, 0x18(%r8)
>                                ~~~>  movq $0x0, 0x10(%r8)
>                                ~~~>  movq $0x0, 0x8(%r8)
>                                ~~~>  movq $0x0, (%r8)
>
>     In terms of code size, this grows the clang-built kernel a
>     bit (+0.022%):
>     440285512 vmlinux.clang.after
>     440383608 vmlinux.clang.before

The before number looks bigger? Did it shrink in size, or was the
above mislabeled?

>
> Signed-off-by: Clement Courbet <courbet@google.com>
> ---
>  arch/x86/include/asm/string_64.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/x86/include/asm/string_64.h b/arch/x86/include/asm/string_64.h
> index 75314c3dbe47..7073c25aa4a3 100644
> --- a/arch/x86/include/asm/string_64.h
> +++ b/arch/x86/include/asm/string_64.h
> @@ -18,6 +18,15 @@ extern void *__memcpy(void *to, const void *from, size_t len);
>  void *memset(void *s, int c, size_t n);
>  void *__memset(void *s, int c, size_t n);
>
> +/* Recent compilers can generate much better code for known size and/or
> + * fill values, and will fallback on `memset` if they fail.
> + * We alias `memset` to `__builtin_memset` explicitly to inform the compiler to
> + * perform this optimization even when -ffreestanding is used.
> + */
> +#if (__GNUC__ >= 4)
> +#define memset(s, c, count) __builtin_memset(s, c, count)
> +#endif
> +
>  #define __HAVE_ARCH_MEMSET16
>  static inline void *memset16(uint16_t *s, uint16_t v, size_t n)
>  {
> @@ -74,6 +83,7 @@ int strcmp(const char *cs, const char *ct);
>  #undef memcpy
>  #define memcpy(dst, src, len) __memcpy(dst, src, len)
>  #define memmove(dst, src, len) __memmove(dst, src, len)
> +#undef memset
>  #define memset(s, c, n) __memset(s, c, n)
>
>  #ifndef __NO_FORTIFY
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dp5jkqopHr2ka_9PM345d-hzoqT97Gq6z1ZsmJS1ZQvw%40mail.gmail.com.
