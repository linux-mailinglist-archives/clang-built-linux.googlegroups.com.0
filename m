Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSN4677QKGQEBWCPO6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CA42F374C
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 18:37:14 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id c7sf4189183iob.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 09:37:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610473033; cv=pass;
        d=google.com; s=arc-20160816;
        b=nad7PXcOLi5o3u6007jhrcEnMkQOo8ToSS4gSOvmDXy4b0yW9zcZRYQ9t5RBl9nNu/
         BjASoN1vjojsrv4oChIctbWVkusSsNpWp82TQCDYodkdgjnWepepvCf9i3TBYIOMySje
         wf6+JKndlXePvUu+AuA9Eu9XlPT3EDpt6iChA63OX7wKZTMUqpshdGXArcns/ccFFIa8
         CVpR/wV56lfE5nZHUXJ5ZnTaobfhMZRj7TZTc+iAK64XvvSZ6IVsCtX9f0Q8xsPih98j
         ONMcaSnFtDIU23N1qsOb/LF5a9zPXC3u/xjC6SjjRf5qvbP1aDk/tLhHvrup2ApsusHQ
         ayEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mGjSZr3wPRY42Jr0gHWyg0ZLyAfhuVj3zetFKMuh6nQ=;
        b=p7nT871Jh1GPrHr+GH8YIcWxCsymzZ1MSsOm4ef1lbbuEVc57GbJdSblDtSDy0OQCx
         MhY3kyIFqi9zztRDkDDuJB1npOy/DlviPEb/LRD62+JsIRQhKxioK0FA1XVPvpjJxYAm
         cymPhA5/UlPOHk60WkWRooiHJlTZgdlHwphIGOirfZC6ulCeNjd3lhTjqJq9cRAmXYbQ
         +JeUufu7w7MbDiDkZ4zLVNOb9Ah+vxi4TNB4zIO2lgndLSsf5EH3Z9D86g2V4/ZzqRSH
         K0xUK6SXQRYXo+4baOr0eb58Wz2baERLIWoskEsvfTmc95w41O0pAN4wGb3KVODdiuiN
         bJLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a2RPjzDN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mGjSZr3wPRY42Jr0gHWyg0ZLyAfhuVj3zetFKMuh6nQ=;
        b=LF3FLSu93x/QFrDyh346kvdxAMPagSj9vzVcLFCaezfn9lS2BPM0r1VOY40f8fH2CD
         0COlmRMHCrrkIfP55LQj433l8+cBqfiUBSpheulRVZcC1Lp/tJHd+m5axzeTQwi4IvX0
         xrSpLnOY40cqWJYwkqBqfbaTgiLMws+1Bu+FaOGxebOlABQOEyegJguoYnWxZQosqfR1
         odDhMxu5gSIgd0HahHIWStMbaX7voG0IOJZN8yg5P6lkAum/2nhqlDXHqBTe26xg64ge
         sJ/RX+Or06YhJx0WzWS6TXZ1MFLx01VqzHMXSrzYbFOh8GSAkxg2O/KYpo5wVf7B8rAr
         JeXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mGjSZr3wPRY42Jr0gHWyg0ZLyAfhuVj3zetFKMuh6nQ=;
        b=oSmUU48AyPwdwiIGj3lSJWps6kGo5AR2s044TRsn6hlg7Bczw1UOg+p56cSP5HPw7F
         Gc5ZQslw9NsPl8mN8VvUon6aKg4PcftUYRFRkl0KbBdg3VsWSh5Vr6Aj8w0a5yNqjNDv
         gwPgwJO6ehDzfjbjP6pI4NPbKbp9zD4EWe4aRVIAQLQeTxX3a4uG4Iwomv1wOXg0Iq98
         tEycOXepGdAsOiOg17g0G1jDLaL54RvdivzrGBRcvn79Q7gWQ7/oEYQiKYSsu18sG3BN
         JzZXc99VxI2JW0WT6qiDT8/NUSb/56IvZPMvb1xr6A/YTfP/Bs7mpFvB2Aj4SjLTg330
         Po4Q==
X-Gm-Message-State: AOAM533Ay6t4YsoWwSONPzPuPkYLQj8mxpjUVZeyZxR1R9YS6XD07Cqm
	TrE2Xd5cKKtRoC5PtgUEyJI=
X-Google-Smtp-Source: ABdhPJyGGaaOYJ6nCC3BSt2CCH+DE8mSj9oCJisrrtn/3FPHylA1l4e2WzAbFMVbqapiYYa7P+exdA==
X-Received: by 2002:a92:1f9b:: with SMTP id f27mr65188ilf.190.1610473033820;
        Tue, 12 Jan 2021 09:37:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ed0:: with SMTP id a16ls712229ioe.5.gmail; Tue, 12 Jan
 2021 09:37:13 -0800 (PST)
X-Received: by 2002:a6b:8f94:: with SMTP id r142mr4033370iod.115.1610473033397;
        Tue, 12 Jan 2021 09:37:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610473033; cv=none;
        d=google.com; s=arc-20160816;
        b=nWRSRpbcdlL6HyFPEJLUdRXCRmRyDf1GAY5LAnd2in21L3+tC5srjW5/Nm+58xoJR0
         CgQXgUTYaeq4yWkANTWqB6alINrzZtprA0bJvNNcnwAleSht/i6AVrhhik2N63/7a2vN
         yDJ2Mf/bCZm9EqALCCsbKZq/pm30cREqznzXbr6WFxD7BBegmM/r9kBHTBul8j0HaEXP
         J1NbCL2aRGHzw5Ihkxo/x6GIMlYyeRN0xLdHa4OyaxbT1NIqgUJ5SNnFVzhvPc8yN1b4
         /a8zvgxh5UNpktiM96tcawrfEe+bPrkUQH9UZgwmO9vta+ElL6LjjG3MZd4ndpAKEjU2
         KHRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RmYwXjpSpSGJIaBI6nXMPcfre/G2OFN7SFzhgu7QxWw=;
        b=m1yva6XS7HWmVruI15cLsbioKpJ6jxiGMGdpXwRXl5dYW1BDc6UriuFwWVb5ae9Ay5
         tbDrFgqgudEjho7MCRmJzjpN5cESRTkWfVEtzEOyyte/fzm03F84M4/OND8sCOgWIk/F
         vxS4NFa2HleZbTrSptgJL22B5A5oFbOCqthFX/cPRnXi5iW4BZgO8y7r/2X4HEiUDwB1
         GgYmz4uscKYTM6NU1j18OKO6fzGuxjJ1cl8AEd41uIJpHoCPKw60B0EfxD+0Btjl0fVv
         JOQD8PN/D9HStuN4HTiGxNyQYu816U5bxZhxkGc7oiiiR4i1GNH8FWOs6DuW4VL2aln2
         VqfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a2RPjzDN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id y16si407779iln.0.2021.01.12.09.37.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 09:37:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id s15so1760730plr.9
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 09:37:13 -0800 (PST)
X-Received: by 2002:a17:90a:cb0b:: with SMTP id z11mr170236pjt.101.1610473032865;
 Tue, 12 Jan 2021 09:37:12 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210112051428.4175583-1-morbo@google.com>
In-Reply-To: <20210112051428.4175583-1-morbo@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 Jan 2021 09:37:01 -0800
Message-ID: <CAKwvOdk+NqhzC_4wFbQMJmLMQWoDSjQiRJyCGe5dsWkqK_NJJQ@mail.gmail.com>
Subject: Re: [PATCH v2] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=a2RPjzDN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635
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

On Mon, Jan 11, 2021 at 9:14 PM Bill Wendling <morbo@google.com> wrote:
>
> From: Sami Tolvanen <samitolvanen@google.com>
>
> Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> profile, the kernel is instrumented with PGO counters, a representative
> workload is run, and the raw profile data is collected from
> /sys/kernel/debug/pgo/profraw.
>
> The raw profile data must be processed by clang's "llvm-profdata" tool
> before it can be used during recompilation:
>
>   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
>   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
>
> Multiple raw profiles may be merged during this step.
>
> The data can now be used by the compiler:
>
>   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
>
> This initial submission is restricted to x86, as that's the platform we

Please drop all changes to arch/* that are not to arch/x86/ then; we
can cross that bridge when we get to each arch. For example, there's
no point disabling PGO for architectures LLVM doesn't even have a
backend for.

> know works. This restriction can be lifted once other platforms have
> been verified to work with PGO.
>
> Note that this method of profiling the kernel is clang-native and isn't
> compatible with clang's gcov support in kernel/gcov.

Then the Kconfig option should depend on !GCOV so that they are
mutually exclusive and can't be selected together accidentally; such
as by bots doing randconfig tests.

<large snip>

> +static inline int inst_prof_popcount(unsigned long long value)
> +{
> +       value = value - ((value >> 1) & 0x5555555555555555ULL);
> +       value = (value & 0x3333333333333333ULL) +
> +               ((value >> 2) & 0x3333333333333333ULL);
> +       value = (value + (value >> 4)) & 0x0F0F0F0F0F0F0F0FULL;
> +
> +       return (int)((unsigned long long)(value * 0x0101010101010101ULL) >> 56);
> +}

The kernel has a portable popcnt implementation called hweight64 if
you #include <asm-generic/bitops/hweight.h>; does that work here?
https://en.wikipedia.org/wiki/Hamming_weight
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2BNqhzC_4wFbQMJmLMQWoDSjQiRJyCGe5dsWkqK_NJJQ%40mail.gmail.com.
