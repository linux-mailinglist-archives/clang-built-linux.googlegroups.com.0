Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7ME4GAQMGQELOLHRQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id CD54C325AFF
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 01:36:14 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id l15sf3875534otp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 16:36:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614299773; cv=pass;
        d=google.com; s=arc-20160816;
        b=EPP2yPzwA87zKwOf4slisGWuVgbEoAIjSqzokvTO0QkZpPaq7T3TIJ9vXpOzX2A8zT
         gEIJokLmiwsRSnkMEAC10eySiUope2OWW+UKHvSsZsPZJmmIVYrmo5bzPod+LIeByyV5
         RREFEKDvgxJL/qEwXccA3qKETPKA1JfW6s7d1Cm4lucwVIGnv/tD95HcrErrEa1fgAcS
         75p/Z9hZLh6XiA3S7HQMR1jm9YE9EGv50TJjM/WAZM6aJU+g9LKpnkPZ+MGVEX7k2fyx
         FgN8nxFETAatqPnEePZHsf5ZAJ2Ph4mh2oPWIUMbdqi8eh9hm6c9/RamrYEY4m5mcSTe
         duGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=//KRHl1Do7ckKXuDLktuCDLpjybsR2gxBTv2iGNgwns=;
        b=0aMEVowOdMvbYO53CI1eL33weD78M3j47hMGkZtZ5ovGILN/AAFk1PVs4uzy2di9o+
         k8mOSPjQB74L92fN09plwZVGXihqjR9g29yzMpca3XZ640+DJV1Bz5ZJOtIEuzDG61en
         gM8DBDZRSyO3yemsE+6wmLA+GMaiqQ1G29tnif7fE/ma+MlJ5CSYMhu4SWpFNijrHHGO
         mvTUXOhwZZaDzN6mTcSl8y63t1u9nmvpwsrt1ZAahHWeKQMTFlGXJhNRxVwz80JAN09B
         ByOoji5XHRxw0sF7hdDUqpNDPryYgrl0C40Ap/KYHQw6XEoBU/Pg+aoSmN/3/4vO8fK7
         bUPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sd2TROa1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=//KRHl1Do7ckKXuDLktuCDLpjybsR2gxBTv2iGNgwns=;
        b=dDVvxa6rr1xJ7peC0tEwNzAdD9qgePoYzGJsvKabKoz7HYXNEKy/qGY0/0V6YMt/He
         OOiNobocVT15eyHQkm3EIr2UzK/CLHeGabsP9CMG2T0YJlllxndHup4923W9tCiXY2h7
         ZXwF9yBQ+wc/Hh9104fGOg/ROdgW09Ak/OvSf3oXN+/Ef9+Pyv2BXTPoYs1uMVWMzu+a
         5y9nb8x5cAKKLpiZb5BareRgUHnciUuLm+9sRztZd/5M5puwbBlHDaiiUVBw14vm+r5+
         CvXoW1yExSttjT4NK8IDN+Cz0Xz8Ee2bxdtNEIXfphO/LYxD7iu0HCouf3ExkEpoowue
         L4ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//KRHl1Do7ckKXuDLktuCDLpjybsR2gxBTv2iGNgwns=;
        b=vBbl9ybQfsGZks+ps+s+CS0yO29d99bi3ztS7YDcilMMdgqW1+7SpiJXL2zeLuMsur
         iF5WyLuoafs+dXS6ckfQbDuIq368n44YJzkwM25j56eGGPj4V8E6vC4rV49wNKAnuKDX
         WZXcD/YtqeatMFkULWRSrxx5g97MruyIfIltgZ+NByU+aTVahaK9A+tw4i51yJnaOsIr
         MvyC8Er1YOCpvYM7VfBsFQv+4rc/9h5UBqd9N0TmcB9w4PUt6SHT099KOQEpvCN9SPin
         TSYflsLyeUxQnWuFlHmfFU2rI8ENK3sufguEbCalIiT5HemZMpTVAnivjiC8bbOEzKoz
         aYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//KRHl1Do7ckKXuDLktuCDLpjybsR2gxBTv2iGNgwns=;
        b=rzzD+EFBR2DNADy0puwmtXCzCL9bZAizSZIQYUHLgYU9rkxwDIC37pJ1vd/soHl5gq
         cRBDnVlDxXfkDZyxJ9e1E6zKN0O7sTG9qE+Z1WJDiG4yiT2Z8USwMZaCe9KSTMcoz95Z
         q95DYbA2nG3ji6wC/yAr/ccTeZARZZpLQO5AJPQsZ8/aqO8hg5U03r5FglXbZRy+H2o/
         WEM7E+epaRhyh3uftE0ioD47l3i1+mJ9JwZo7yLx0CXytuY6AkwP3TNwCHmSgunsW1gT
         TU4mAEnwYzoNhyH+cOccrVaCViYkLFpT1NsX/0xMn0Hp2FtYmlgtzdVKBt7Bg1ysJDDs
         itrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AQbWMQ9Tb4EB0h+FA8YZAGG7koT3K7CE4hdewu0+D4jFZ3jVE
	Ce3IFI/3jAT3Iyc1MG7mjXk=
X-Google-Smtp-Source: ABdhPJyx+orEAG39luYXiKUPgctC7B6YjesnxfzvluZuwTduy5iNeRGC/DIjwoFGEfjA+JXnS3czoQ==
X-Received: by 2002:a9d:644a:: with SMTP id m10mr280257otl.233.1614299773824;
        Thu, 25 Feb 2021 16:36:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c57:: with SMTP id g23ls729630otq.11.gmail; Thu, 25 Feb
 2021 16:36:13 -0800 (PST)
X-Received: by 2002:a05:6830:1451:: with SMTP id w17mr275879otp.342.1614299773474;
        Thu, 25 Feb 2021 16:36:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614299773; cv=none;
        d=google.com; s=arc-20160816;
        b=dVn3lCnOvynjgvNNb9svhnK6Wpia1oHPW+zItwcWa9Nfs0SVqOl7FSsiyPA65Y7cff
         y5fe8/SbIzqdf6+8YApKbqyIk7KRCjWD7KKc46QJoltyLZ8AROZRj8iYVlYsb9YkfyEP
         ZRN/begS0VuGECwsGq5p1/cZpuDIEbO0zqxzsi0WXrWwrAyn48j1qETgL7l26IQ4d03i
         Fau+jJubX2t0AwUipexkj2ZAmITfLplIFiW0RKqVAydQXEaFU3yrEwzI8HYVgfM/iF4d
         bvsCzTORouEaFeJiH7VO/ufi4V7ZFSYECF5RM/0jJoitv1AwPDnCVyicoCSGN66uL7qM
         8i2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zSQkfXYILeFIsnw9KPEpR0PnZSHnbzsSZbKt0dU2Xn4=;
        b=Q5hi6bL5gM2BKbLberd1jPolQdYIKwTCgZCY+WxmgHPJfS4NfmmrNFdZKPqK0ILLS1
         ZRvKY2A9HMsv+pnHgjfmc5tFnV807ThYBG2dZTAPVb0tsj7Md6s54WranoN/PZL6Gm1+
         l/bZJwuub+Q1Ng++g5NfY2vqe5CKQM+e7bQvDPTor7Ii7n6fRsR0J9Xhs0fj1kLWrQjU
         1SZMW87abXsQmy/23Q9aWHzbeDra3mtoOL6AUxpFOOhbC1fALUG3jc6vLdEdk1/pkB+M
         Z0vBW6QzRsIvTlnBQNIh4ku7zhwjY9NlO4K2nbFJTIsrqHI977rGtEUkprY51C4COKul
         wKwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sd2TROa1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id p23si385641otf.2.2021.02.25.16.36.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 16:36:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id n14so7956245iog.3
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 16:36:13 -0800 (PST)
X-Received: by 2002:a02:b890:: with SMTP id p16mr399359jam.138.1614299773124;
 Thu, 25 Feb 2021 16:36:13 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org>
In-Reply-To: <20210225112122.2198845-1-arnd@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Feb 2021 01:36:02 +0100
Message-ID: <CA+icZUUDnKBxkfgOVYDdpA29GnLUTT22mqRNyxQeYmay044ejg@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Arnd Bergmann <arnd@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Kristina Martsenko <kristina.martsenko@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Andrew Scull <ascull@google.com>, 
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Sd2TROa1;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 25, 2021 at 12:21 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> When looking at kernel size optimizations, I found that arm64
> does not currently support HAVE_LD_DEAD_CODE_DATA_ELIMINATION,
> which enables the --gc-sections flag to the linker.
>
> I see that for a defconfig build with llvm, there are some
> notable improvements from enabling this, in particular when
> combined with the recently added CONFIG_LTO_CLANG_THIN
> and CONFIG_TRIM_UNUSED_KSYMS:
>
>    text    data     bss     dec     hex filename
> 16570322 10998617 506468 28075407 1ac658f defconfig/vmlinux
> 16318793 10569913 506468 27395174 1a20466 trim_defconfig/vmlinux
> 16281234 10984848 504291 27770373 1a7be05 gc_defconfig/vmlinux
> 16029705 10556880 504355 27090940 19d5ffc gc+trim_defconfig/vmlinux
> 17040142 11102945 504196 28647283 1b51f73 thinlto_defconfig/vmlinux
> 16788613 10663201 504196 27956010 1aa932a thinlto+trim_defconfig/vmlinux
> 16347062 11043384 502499 27892945 1a99cd1 gc+thinlto_defconfig/vmlinux
> 15759453 10532792 502395 26794640 198da90 gc+thinlto+trim_defconfig/vmlinux
>

Thanks for the numbers.
Does CONFIG_TRIM_UNUSED_KSYMS=y have an impact to the build-time (and
disc-usage - negative way means longer/bigger)?
Do you have any build-time for the above numbers?

BTW, is CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y setable for x86 (64bit)?
( Did not look or check for it. )

- Sedat -

> I needed a small change to the linker script to get clean randconfig
> builds, but I have not done any meaningful boot testing on it to
> see if it works. If there are no regressions, I wonder whether this
> should be autmatically done for LTO builds, given that it improves
> both kernel size and compile speed.
>
> Link: https://lore.kernel.org/lkml/CAK8P3a05VZ9hSKRzVTxTn+1nf9E+gqebJWTj6N23nfm+ELHt9A@mail.gmail.com/
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm64/Kconfig              | 1 +
>  arch/arm64/kernel/vmlinux.lds.S | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b94a678afce4..75e13cc52928 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -2,6 +2,7 @@
>  config ARM64
>         def_bool y
>         select ACPI_CCA_REQUIRED if ACPI
> +       select HAVE_LD_DEAD_CODE_DATA_ELIMINATION
>         select ACPI_GENERIC_GSI if ACPI
>         select ACPI_GTDT if ACPI
>         select ACPI_IORT if ACPI
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index bad2b9eaab22..926cdb597a45 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -217,7 +217,7 @@ SECTIONS
>                 INIT_CALLS
>                 CON_INITCALL
>                 INIT_RAM_FS
> -               *(.init.altinstructions .init.bss .init.bss.*)  /* from the EFI stub */
> +               *(.init.altinstructions .init.data.* .init.bss .init.bss.*)     /* from the EFI stub */
>         }
>         .exit.data : {
>                 EXIT_DATA
> --
> 2.29.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225112122.2198845-1-arnd%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUDnKBxkfgOVYDdpA29GnLUTT22mqRNyxQeYmay044ejg%40mail.gmail.com.
