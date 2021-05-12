Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBWUY56CAMGQEKTCVR2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7102A37BCAB
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 14:38:51 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id u9-20020a05620a4549b02902e956c2a3c8sf17128293qkp.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 05:38:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620823130; cv=pass;
        d=google.com; s=arc-20160816;
        b=1BNnE3r8/yXW4gxQzXAtV8oFAUjmpiPvNDf3szUjx5/DsiccKJXTOTs/6RcBt2s7Vt
         J2hWSfXjRIdfrYcJhJSxGdvsu2v4mQ4P6/gM/kF1rHregURbP/0IkXmnoXSDD1m8ND6M
         r/26OP6AOSYMO5OcxeuzSny6fzMqm/o0TChTkNRgi6/xM7ThBiI4vZyFnqOKeFs5DHbt
         Bo52XAymtFOE1vSWZ4G037P7ywAQux4M8EdATs++NeIB0gRzL0FRCx3QwSA9EA/EJj5M
         QqjNqK4Lzqe9D/GJcev3zXMdh+EwByqBv2BlTZ1opZf5RomtQI0DDSl4S7BhRkboVkHu
         J/YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ShjeCFIWzv5LMBqCjQPNcS0CezbnvRzlE2ibaU/rooY=;
        b=XYfehZUixGGaTKppICMY4iNf8iMAscjrhMG6xY6qqraJjz1b0t7JE1qtDrgc4KCMgu
         4h81/WHnjgsPsfoHfzhq3ntxRzYr+p/93B3zlJgZ+rSdE0iEuKLs4lEb6T0wt5Alcsel
         PsD9HF5JIArcNFlS3SvkJeUqKgBZadQLUJlYZPsieNS1qQPMAJdr/l1V04VanoxKzdWn
         a/bvP2yu2xze/1sssfew3Okz5zgUCpgIMfllXTWssT+F7zLUS06a0M/oX2s6eB/idfqo
         HEsZBbQ3FZPxi/z3YXR2c8Lrznm46RAmvdtfcBT93yphbV/MZllWRCp2pAsRFw4fpP3O
         S/nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GO9eYXLX;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ShjeCFIWzv5LMBqCjQPNcS0CezbnvRzlE2ibaU/rooY=;
        b=YOjk/uDVQ/sxrXqjRQWlE+2RZxHfRnYZ8zoLz8zrw39xXCt9TsORHQohh5TOIxO5jT
         lo6gP8DbXcmGbWRqpOoBZnet2pMUzFpiiLcbrLaVz0x3n427JXDJ+InAz9jGslI4CwkY
         QdRwMVADB2B/2Y6b4DtSxa4jBAeUYuU4wscYaudJYxaNHR2e71KhdADt6z2pRQPcNihp
         LG0pJRtxR+vS4G9ZV+dbHSDhIMHG1DJmrbLEeZECN+Tndh2+A1vhxKwuiZt5nh8B7v7B
         b3W8t6Bz+Xj8BsZ4+o5V9zi3JG2EfmyE2UqFIslNXLqra3mI8otlLXPq4Uhm2TYO1gRo
         HLIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ShjeCFIWzv5LMBqCjQPNcS0CezbnvRzlE2ibaU/rooY=;
        b=msX17vfliUxCl32unb2wvEzGronloWV6Yjjxp9lirSHIh1cJEYGRXIaldJi+zdKKJh
         WH5PePybgeMULeHSw6ZZKWHBpQEpl7iLfDO9ltHtgihBZJv8XWvFh6jHzzHfy9A/kaGf
         PHTz7RXoXGYDi6pAvU1c4PJXvtnZwwoEKXcG6OQjTPhVn4firQz5Ub2vKkbEuY0XeU8x
         bt7tsO0gXti28RSIii7SL83iAuTnCfwOZsdBfqy+4eKFYSngNbbqXkFj0o9xD5z5iNY+
         zocLOZK9TaIsylPW4DQnhkR312qHRF9L0EiiRBK3zLGosEiIgIQr8f22i/OffnnW18HC
         DDJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ex9fjDlx7eEerYDHd8zTgCYvgzLJcyf7Ur3xWwdWv8tKSFw/v
	FY//elIWZH4ajO/8D5i7liU=
X-Google-Smtp-Source: ABdhPJwzxJNed8nLA7p3A2Q7TioHIjgrwGTrF16mVoyjNPIen0v+P7fjJi7SSYkjJDpqfOj5mq8I0g==
X-Received: by 2002:a0c:dc08:: with SMTP id s8mr35133602qvk.12.1620823130285;
        Wed, 12 May 2021 05:38:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7681:: with SMTP id r123ls1716504qkc.6.gmail; Wed, 12
 May 2021 05:38:49 -0700 (PDT)
X-Received: by 2002:a05:620a:1f9:: with SMTP id x25mr33643699qkn.370.1620823129801;
        Wed, 12 May 2021 05:38:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620823129; cv=none;
        d=google.com; s=arc-20160816;
        b=UmfkTrnNu7UrwhRNw4GLRPxOc+aRgta/S3LLOpk7MxI/C94p7I2ehWkcAAsd0D13V9
         kTPd/VA7toU7TpZRVxTAdK7NH37hKvoFg00DZruyvu5xX1f4i6xfiOfvHGLhmvtU0v3Z
         GwJM3nYyk01k+7Ij8alWuumhrkehceCex5m19QNJWzRQzCRrAUjU+wcGpLfoukh4Zg1b
         ZVKBRczUWCVNquWlTsRk0ZWcJUAUnmBWeWjIujXFu8sx2Vs/nVhH+0DojTFz9e1Wg9Lh
         cop14O8wC77bHFhKt7gqhWMDmh7HiBLqIwrUjGDJFm5Z5J5KVs4Dl8gsGo6MiN2311YA
         9frA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f9bT0p2YKF3I/Im99Hh6HstNNq8mCv9QCTkmew6R+ew=;
        b=yxsCuIRd6POEhT08zma7jNHB2OPNGhUKIqgFV0gJj9atPr11NjWAk0FHdOB6ruJZM7
         NkjrG3JVkJQE3V32yRFnDNFD5+qjqoxwtIl/4HlcmdC3O/Qc18gXtY5T/7qv571/SRxY
         95GfJ3T9UFK4rJq++QzG+DebQ+2bVvi+OjHoXOX/yEam2b3kDNHrSFT38xCBAM3SyhBy
         dBQTg+NdvFkq8iLr3rFEJuaPLzEoCuBDB8yMd1YkoHM35r9cP3U5/GgiXSJcApuL/q9Z
         Sm90OFxVwhsWRd/65eM/5IDvtR9VkleewwdfOLZG4jN6aJVv0WAm4IL66YKpLHvCEpKu
         RjpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GO9eYXLX;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c64si1917990qke.6.2021.05.12.05.38.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 05:38:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7CBAD613EB
	for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 12:38:48 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id u11so983175oiv.1
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 05:38:48 -0700 (PDT)
X-Received: by 2002:aca:e142:: with SMTP id y63mr26156865oig.33.1620823127705;
 Wed, 12 May 2021 05:38:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210512081211.200025-1-arnd@kernel.org>
In-Reply-To: <20210512081211.200025-1-arnd@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 12 May 2021 14:38:36 +0200
X-Gmail-Original-Message-ID: <CAMj1kXECGjpxx5ouWuvnKUigzMGu=GcE8_ab2rrxt98yU1jUnw@mail.gmail.com>
Message-ID: <CAMj1kXECGjpxx5ouWuvnKUigzMGu=GcE8_ab2rrxt98yU1jUnw@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix gcc-10 thumb2-kernel regression
To: Arnd Bergmann <arnd@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	"# 3.4.x" <stable@vger.kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>, 
	Marek Vasut <marek.vasut@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Nicolas Pitre <nico@fluxnic.net>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Mike Rapoport <rppt@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GO9eYXLX;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, 12 May 2021 at 10:13, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> When building the kernel wtih gcc-10 or higher using the
> CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y flag, the compiler picks a slightly
> different set of registers for the inline assembly in cpu_init() that
> subsequently results in a corrupt kernel stack as well as remaining in
> FIQ mode. If a banked register is used for the last argument, the wrong
> version of that register gets loaded into CPSR_c.  When building in Arm
> mode, the arguments are passed as immediate values and the bug cannot
> happen.
>
> This got introduced when Daniel reworked the FIQ handling and was
> technically always broken, but happened to work with both clang and gcc
> before gcc-10 as long as they picked one of the lower registers.
> This is probably an indication that still very few people build the
> kernel in Thumb2 mode.
>
> Marek pointed out the problem on IRC, Arnd narrowed it down to this
> inline assembly and Russell pinpointed the exact bug.
>
> Change the constraints to force the final mode switch to use a non-banked
> register for the argument to ensure that the correct constant gets loaded.
> Another alternative would be to always use registers for the constant
> arguments to avoid the #ifdef that has now become more complex.
>
> Cc: <stable@vger.kernel.org> # v3.18+
> Cc: Daniel Thompson <daniel.thompson@linaro.org>
> Reported-by: Marek Vasut <marek.vasut@gmail.com>
> Fixes: c0e7f7ee717e ("ARM: 8150/3: fiq: Replace default FIQ handler")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Nice bug!

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  arch/arm/kernel/setup.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
> index 1a5edf562e85..73ca7797b92f 100644
> --- a/arch/arm/kernel/setup.c
> +++ b/arch/arm/kernel/setup.c
> @@ -545,9 +545,11 @@ void notrace cpu_init(void)
>          * In Thumb-2, msr with an immediate value is not allowed.
>          */
>  #ifdef CONFIG_THUMB2_KERNEL
> -#define PLC    "r"
> +#define PLC_l  "l"
> +#define PLC_r  "r"
>  #else
> -#define PLC    "I"
> +#define PLC_l  "I"
> +#define PLC_r  "I"
>  #endif
>
>         /*
> @@ -569,15 +571,15 @@ void notrace cpu_init(void)
>         "msr    cpsr_c, %9"
>             :
>             : "r" (stk),
> -             PLC (PSR_F_BIT | PSR_I_BIT | IRQ_MODE),
> +             PLC_r (PSR_F_BIT | PSR_I_BIT | IRQ_MODE),
>               "I" (offsetof(struct stack, irq[0])),
> -             PLC (PSR_F_BIT | PSR_I_BIT | ABT_MODE),
> +             PLC_r (PSR_F_BIT | PSR_I_BIT | ABT_MODE),
>               "I" (offsetof(struct stack, abt[0])),
> -             PLC (PSR_F_BIT | PSR_I_BIT | UND_MODE),
> +             PLC_r (PSR_F_BIT | PSR_I_BIT | UND_MODE),
>               "I" (offsetof(struct stack, und[0])),
> -             PLC (PSR_F_BIT | PSR_I_BIT | FIQ_MODE),
> +             PLC_r (PSR_F_BIT | PSR_I_BIT | FIQ_MODE),
>               "I" (offsetof(struct stack, fiq[0])),
> -             PLC (PSR_F_BIT | PSR_I_BIT | SVC_MODE)
> +             PLC_l (PSR_F_BIT | PSR_I_BIT | SVC_MODE)
>             : "r14");
>  #endif
>  }
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXECGjpxx5ouWuvnKUigzMGu%3DGcE8_ab2rrxt98yU1jUnw%40mail.gmail.com.
