Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4O47OCAMGQE2GVLBTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCBD38133F
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:41:06 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id g26-20020a0caada0000b02901b93eb92373sf502504qvb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:41:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621028465; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGbUZoVnU3bFrPAJgbCpZxaiqsOP8eO2egsBRiooRzFALmxsFHFoBxMMVaw66fdvit
         mVjqlpj3Bfvl8ViIL1EWmqiAgTcLeHcKDIUcxDLc7GxpeexYCLLrsyxYtzk30zyBJnZS
         OqrTEUKZtzFwtUeDPWGd4stKgEqh2chur1Sg1kuDaW3xhT2Bo6kg1uCUBcKG1/pQVboS
         6kE/NaNTUZ/QCBxN8sbdgUKGW4lKS/v/L71WF64ZQlDCuH/szTe7RZNxDxelgT8hTTsy
         l3rIp3mZSWhiqr2oyZfiNHldg/J39d5/Kl+KkG74EnfnRcmoZN0gwDMHMS6pyI0TmtGB
         ftZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=EtMSQ0Br82961IEbNNVy0aVZ8pLVcvHI5PiCD+s1xJ0=;
        b=p/ggI0Pfq9f/oL1pW01lP0fiW8GYwXKibpvVejlEIfgtGWM2rFix1McvtvXdxCplVN
         Dx+cNZE25812w0A/c67dTZ7G3tpGu69/AW3rjKwExOqhgZeRk/1ukPwk3wQ4SBAQYRXv
         5Y/JrDAFnKJ7EgOXu1BhdJo9qlaf/7ZeuHuekcgBX4kicIUA0kEBsTDw1WMPQHNM/xfV
         l/pBd/qkTkGrr2iQkvCNNf6bvso6Vkw2DgqUlIue3f4UeevUb6RAefoxGjLAYHRtzsrB
         7oivmSE+tFUiz1OQ6FVbteS8k3BsYljDLcjNbCZdNzL2z9AOVgODzmpEbBH57uduR/Of
         1mHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="MwLVGK/a";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EtMSQ0Br82961IEbNNVy0aVZ8pLVcvHI5PiCD+s1xJ0=;
        b=msEmKk2HZUDtTemx70s6YgimuI+6gHrLmDWBHXf3M32z4yzGrnBeL6djkfTK2RrcdF
         sJpym4+Mbl2eeulSk2NIE6SJ2krrUl0bZt5EAunzVCHKSP1bwfPAgi/BImPv2UjMTqB1
         s5zJA3Pv64ovbFa0AhlK4b2m41lljQ/kR9+tixUmoLfXZlBDvpxoXr2ZZzWk85TvK8gn
         YRCtzzgJA5j3cOQqaDscB8ouZ/6RJzou6Fb8hniWj89idcgXgpsO/qIfT6yn0XFP7Tf1
         HJMwdRfRhFz18iE988g1G7+EDoh5dk8ILpVV19vEqAYJeKX5jRp1Tel0Jf6381XI6mCd
         Joig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EtMSQ0Br82961IEbNNVy0aVZ8pLVcvHI5PiCD+s1xJ0=;
        b=r+fdpCMcX14NCirdFmDE7oCXs8QTtekDAr7ri1X+bL2Ls2gitRt8dp+F6QDirlJXe4
         Oeb2SoSDOOK3qoq8GHKuukcI/NZ8nDXbpB7Dzb+lD/PWmFWOJAv0GTB2sDQgCqWWNu1a
         mhrlCxlXsCyBvmEXFxpYLtPsHEyZe6Qo4dV6+Bfot6OVckjrB7FHNqsD/GBxaS1Dmf1c
         lpRVjhGdSChFBw1cZe36h3kA9WqB61AOR+tvuEQJdWJpF/A6wdljyD6vQtjlCB20OS/d
         S8yGq5FsF1eF3p2L8i6EUNfWUmFAUfPiDMEdw0abi5ZLOBvCbNXXU7mc+Uboyw+sGMwt
         JZ1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FGEHg2qeJlKPfPc8MPoe1X9mXfR5M2C5XDGCwGPhDaCxxpGq5
	D9CfHf3hhmAyPguxG3ht8SI=
X-Google-Smtp-Source: ABdhPJw9xb5TEUvjGBs+zXy3hTh/RGg9V+n0ez7peeRezlIGBDpbjzdFAs8bqIIoU0AyKwTSneiLWw==
X-Received: by 2002:ac8:7f41:: with SMTP id g1mr46531149qtk.72.1621028465848;
        Fri, 14 May 2021 14:41:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:be8d:: with SMTP id n13ls3291893qvi.4.gmail; Fri, 14 May
 2021 14:41:05 -0700 (PDT)
X-Received: by 2002:a0c:9e68:: with SMTP id z40mr13390233qve.17.1621028465428;
        Fri, 14 May 2021 14:41:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621028465; cv=none;
        d=google.com; s=arc-20160816;
        b=kjyPOmCl050gNSU3WzfiDpkyR8ql1RIk2apkQrdkJed0CB95IbuBBGawKhoa3uE4zR
         1QYCvBszkZtk+YcgMDCi9sEdqHmoHijXj0CyvJEHwxokle/HaQ128/+AfgmaOiaRtgUs
         /1ZWI7f8c6Ivj9dn6FYC/aKcHRDKSJpN9PGhbFD2shdSVjaadXOlC8g6x/SxebgRACqn
         favE+tR2VKd1910kjK9mB4F1TLNyCAXkYu0Fdw9L6SnIOuazEw1dHwESx+KsQ16cY83Z
         e2Hr42OGYy616/Erbax5RIMrH5z+YSYtKYyT/mrr+XMxmUfMchLfRzg5cYE4uG81+7n8
         u7iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=otnOA7NzzwDCtVpkO83MvM9Y7K4RzjZhbxLqzjMrMDU=;
        b=Be20/YhwoIheqMOYV6IFdUitRWyBAZc3ZVjcaWkVN3vVtLA9rql+VCfNhmF+KJ+aGc
         tOmHAj0ormjwZLavW/YanhbxPZ80V7jpOHvgkG3ryVd2W8EFXFT0F4GCx++iFDvTi0Tq
         4DKbW1RvyEBTRgmqZHdoIX0uHfg9O0Nv+AoJIbB0ENZpFUVoHRhgxo/W8L+Kgma5bVEv
         cWtNSGJ56qvYazTnLqMPSU016bUoAV/OCWj/XfTcBTP4tQY5ybEUymeNCjWMgj5rIWaW
         PtUsRt4T/OQy2X5401ugTzcns7VPyU0Rzit/yLJp55Ii7kcKkLUuzMPNhxRKayLBY1h+
         7Cvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="MwLVGK/a";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si748124qkc.1.2021.05.14.14.41.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 14:41:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF3DA613C5;
	Fri, 14 May 2021 21:41:03 +0000 (UTC)
Subject: Re: [PATCH v2] riscv: Use -mno-relax when using lld linker
To: Khem Raj <raj.khem@gmail.com>, linux-riscv@lists.infradead.org,
 clang-built-linux@googlegroups.com
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20210514213741.447088-1-raj.khem@gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <49185379-b54e-9b6f-4984-8743e7940ce0@kernel.org>
Date: Fri, 14 May 2021 14:41:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514213741.447088-1-raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="MwLVGK/a";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/14/2021 2:37 PM, Khem Raj wrote:
> lld does not implement the RISCV relaxation optimizations like GNU ld
> therefore disable it when building with lld, Also pass it to
> assembler when using external GNU assembler ( LLVM_IAS != 1 ), this
> ensures that relevant assembler option is also enabled along. if these
> options are not used then we see following relocations in objects
> 
> 0000000000000000 R_RISCV_ALIGN     *ABS*+0x0000000000000002
> 
> These are then rejected by lld
> ld.lld: error: capability.c:(.fixup+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax but the .o is already compiled with -mno-relax
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> v2: Use CONFIG_LD_IS_LLD instead of LLVM check
> 
>   arch/riscv/Makefile | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 3eb9590a0775..4be020695428 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -38,6 +38,15 @@ else
>   	KBUILD_LDFLAGS += -melf32lriscv
>   endif
>   
> +ifeq ($(CONFIG_LD_IS_LLD),y)
> +	KBUILD_CFLAGS += -mno-relax
> +	KBUILD_AFLAGS += -mno-relax
> +ifneq ($(LLVM_IAS),1)
> +	KBUILD_CFLAGS += -Wa,-mno-relax
> +	KBUILD_AFLAGS += -Wa,-mno-relax
> +endif
> +endif
> +
>   # ISA string setting
>   riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
>   riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/49185379-b54e-9b6f-4984-8743e7940ce0%40kernel.org.
