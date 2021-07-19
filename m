Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXGY26DQMGQEUGLLBTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 035DC3CEE0D
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 23:19:25 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id x203-20020a19c7d40000b029039ae2a616basf966723lff.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 14:19:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626729564; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y5rngWkUJwLUVH0jvqPorOXnmsEpocbXaZr3/9S7NPM7Eo0gbxbx3niUH9AE4SszfS
         SH4995JvfEay1xsIZnPlXU60j02RgQQ9tYo3jcuEGXiDrtWZZ2d7GKky6tYej4DVE4cJ
         KmIVib7DZzmdz/loBsJKZ3CxpQfvIMrDruDIOQKc+tVfRbpCqq1vhx9mFwOX3y6ST3h4
         6Gz7enykMnFtQeUnc9kOwkb6hz5Jc6GUdw4edSf8BtD6OKQLG9xG9WfsKW/uB84LUGHG
         C7jDqYN7pmPD23QM8wydXeTAu2+I4kjFTQUp9bI8KFVr8Q3hD1ClYFYBJ5chdcafAvVG
         98Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E3jk4ba/1xZozCxsoIX5QBhzuPPE06S72toDGTyJcPU=;
        b=Fpqi8VYnVz9rc+jVfnip4G5k7DYc5R+WuWNY17Tp1YeC0jcAhxmUtgubR0PMSWi6kU
         Xjw4ZZnFhi+F7jh3hkACdY7NvRFNYl52VDxAKag5ZHUoFTkqhN5OnJn1e2xD0zQLVeEx
         5tXe21svXD4A0oqO0yq9ApUL82BdUGAitwRY05xPWDeZv5GY8RhMNfPo+M+Kel5RQerR
         2NpHbgKNlC9M5HgdyrF5YJRNdAjTd5eAUvgOGxFS9dvVdEHbpzL29wd+dqyQtKusJa30
         6dgKg9hztizl8/nJI3fZv6GdgRuh48XuNmTNVo/Bs8hpYWPL9kIUxMPq3zmMfAWhYK4d
         3Fpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pNrqSToW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3jk4ba/1xZozCxsoIX5QBhzuPPE06S72toDGTyJcPU=;
        b=PiRtmt1Xv/tB7BK56IW44y/F0uaIag1RRH6hA/X4Wqn4sgrGBT31Ya8rwRa1M0+/nC
         PuJfrTeR3m7jYzIMYjL1oo+JBMhHKdC+Y6NCxWe7Tu0ywzM1X0vZBAakJ6ue+REHXvTA
         2pzM3BnRcCKP81YqVpnJykrcPXQBbbYaCNVMX16JuTtiwC6aQjaVns7nJNp85TMbwJoP
         R0hSBMXsIYRznNBeii3Ch5XECgL6hq6EsG7bRHBDLbHfGr4QQqxM3BciewcYwmvbsvu5
         fWYxDg//bu5C10HLEK7dLWB0D05GmJw/zC8+5HUTO68FVSPUkpAnzEJ34Jm2vgrw2abE
         EZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3jk4ba/1xZozCxsoIX5QBhzuPPE06S72toDGTyJcPU=;
        b=VSjysGs/vR1Ayjo5krPPOvbaPz5u/MYdm6ZgNJRFtxAol+dwcakyoLNDDebwhJ+b4/
         zWbFCADk+hYHgGMnXPHjqA/EXdrjPCgB4AerA/pMNaEkAILAfdts5xg8kacJXP49mQED
         p9ONoG+RgWbtpGZpVYGz/ZvXLB91phyoShco+pAaIOyj9kxiGRrnIWFnGOVcy+z6Q0A5
         D3CknMcWL/JHJWaJWfeRh1PRvyk9mK443+fsqOyogFHk/ssdO/7c/Z8VxDMiZcLNjxiT
         DCoWpANC+OfsV6uKIQiINGs7/lbdahIhP1WiSbEvB8uXsk/beBiEKttiZJBCAXjM1JaC
         CMeQ==
X-Gm-Message-State: AOAM531uxZX4pB4ZAjAY042B8d3Xa+kwaRyAs7y0l+Alywt16NX9pvWJ
	1IEM50oDzW0oxOjHGaxzcOw=
X-Google-Smtp-Source: ABdhPJyAKntAnZklDKXeqYUIx1s9RO2Pb2YeYKEqR5Pd8SH9BUqKs/dZ8MoA9yQN63fCgeuZGREZDQ==
X-Received: by 2002:a2e:9d47:: with SMTP id y7mr23204986ljj.293.1626729564517;
        Mon, 19 Jul 2021 14:19:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a783:: with SMTP id c3ls4125225ljf.2.gmail; Mon, 19 Jul
 2021 14:19:23 -0700 (PDT)
X-Received: by 2002:a2e:3310:: with SMTP id d16mr24322403ljc.199.1626729563579;
        Mon, 19 Jul 2021 14:19:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626729563; cv=none;
        d=google.com; s=arc-20160816;
        b=eD4Gf1E6vnhe9VDArsYYBGZ1UN40PdFH1Xd7VIPyNTOl/KfWlCettZymTO/KlQDCCw
         a28FIsKbbYVQfgoCggGiK5zFIT7Km7kf7oY1iluNuwuzIxhLDG6uKo0AQQYnFm7J5vrE
         95+MmZc73pGoyq2RUULSUortS8UjkOYb3pRxH29gzWavBVx4k/4Or+4SI9FvHT7R7jD1
         +hDJs1ZDS1sQCB7Bo3JE2xaUfVr8Sa7W85Zx12sB2G/PR3WRpOMkm8JlVC3kKEbevGQr
         aqtQZUV8GX4xO53jWjGVdvFP9khSVLQbiIqvhcQZrXKEJQF1Kd6ca8Oh1a6zB2hmAHU0
         PzPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9qDrq4AbH3hwU6UfXhx8gnxQTtjJy9c/sgGGRSWzBFI=;
        b=TsrLXzB5NV/h0aGnMC4HmwsoqgjtadvNGNw7LBt4rkDYjmKgDwM4fl+NQdTgvWTCHL
         yR6LvR/Bh2INeufRIdhgVXNCDY4Sskfijfqxwh6OnqQvzJFhWx3OA0qvKfMmDuF/lQm+
         VCWXOAWEo+LsOoTAX35g6tTZL+ODUKG1/4OeclW9RslHpnX/8bfMaJAe9i5y+pvCjlZL
         BY3FTvnCadKVuka2bkxdDQAr1CuQalE7oBSGWtSwGQclbCXunZ03FuO4ujjkDTcnS0nU
         kLIS6/kWtkvmKLLybtDsyZp2IGQqzYSnmtHH+q39AcHuSx+UmBwFbQIBu1S2Zpvl2jnQ
         uoTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pNrqSToW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id 14si362379lfq.2.2021.07.19.14.19.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 14:19:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id f30so32596140lfj.1
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 14:19:23 -0700 (PDT)
X-Received: by 2002:a19:4916:: with SMTP id w22mr20368641lfa.374.1626729563130;
 Mon, 19 Jul 2021 14:19:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210719205314.1023455-1-twd2.me@gmail.com>
In-Reply-To: <20210719205314.1023455-1-twd2.me@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Jul 2021 14:19:13 -0700
Message-ID: <CAKwvOdmanKSL3hLM4HjyeZg+K7pAWCHDuKeBfU4YSGzEyH_CaA@mail.gmail.com>
Subject: Re: [PATCH 2/3] RISC-V: build: Disable LTO for the vDSO
To: Wende Tan <twd2.me@gmail.com>
Cc: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu, 
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pNrqSToW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
>
> Disable LTO for the vDSO as done for x86 [1] and arm64 [2].  This also
> disables CFI for it [3].
>
> [1] https://patchwork.kernel.org/project/linux-kbuild/patch/20201009161338.657380-28-samitolvanen@google.com/
> [2] https://patchwork.kernel.org/project/kernel-hardening/patch/20201211184633.3213045-15-samitolvanen@google.com/
> [3] https://lore.kernel.org/bpf/CABCJKucpFHC-9rvT7uNF+E-Jh20fz69zdO49_4p8G_Sb634qmw@mail.gmail.com/

It might be nicer to use the typical form for commits:
commit <12 char sha> ("<oneline>")
rather than a mix of patchwork and lore links.

Do you have a list of diagnostics produced when building this object
file with LTO enabled?

>
> Signed-off-by: Wende Tan <twd2.me@gmail.com>
> ---
>  arch/riscv/kernel/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 24d936c147cd..4535a77792be 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -30,7 +30,7 @@ obj-y += vdso.o vdso-syms.o
>  CPPFLAGS_vdso.lds += -P -C -U$(ARCH)
>
>  # Disable -pg to prevent insert call site
> -CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
> +CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_LTO)
>
>  # Disable profiling and instrumentation for VDSO code
>  GCOV_PROFILE := n
> --
> 2.25.1


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmanKSL3hLM4HjyeZg%2BK7pAWCHDuKeBfU4YSGzEyH_CaA%40mail.gmail.com.
