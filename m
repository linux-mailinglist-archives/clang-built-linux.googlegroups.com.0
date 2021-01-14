Return-Path: <clang-built-linux+bncBD45FSE2XIORBZE7QGAAMGQEDNF4KDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B13542F62A9
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 15:06:29 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id n108sf1683691ota.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 06:06:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610633188; cv=pass;
        d=google.com; s=arc-20160816;
        b=hT69kXr4mCgyldqIzrWQ/VmwNI+6pB7nTkvbXxW2Hz1VhWpb50mt+RzExUZ2S2JTP2
         Qw3r+5KIRksi8Tvptc6xpiq0pnJ5xH8zS1cRbCXlWwz5VuBlNo4x6Z2ZBM+znyU+iu8L
         DBZzaRAwiyOpIOBgkdqtRMKmfDXIDUYU3+gQ/5T4yx2OKWPrx1c9LhwZYZmkm/V1x+eh
         cNVtAto07GuwV+eHabb3bwbpdPLVYRdwovNoHngLUrAv5nnIaMstOs/45SXGDR3fRDje
         j8sWVpFQwbhd1oBjQL1+onYFICNcaC3MJVsGea7d1yPUb87A6HHBO4IT+iJGaAtDmZGR
         AOHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=85Ef5PIoxC5x2TJ1g0Ni9d69MrgCTVA8g++dtZyyAxE=;
        b=TKVOhpDE2SBQAPLUpuYxz2ZnjTWasoP1BHGN2+hOQt812JWh5VBDPDGuC+rw3MaqCl
         FT8Dd2QxIzIz0ax7F+kRboQQ0kl21kYm/hmDYUMWrBNwiWNy7wOc0jetYNmKDRr06C8h
         NROMdYPa8PHWg8T/v73Hu7Ru4mOGrRGvCKTVmUV9fzGHogCUKn/QRmsF6VETbsb5fiJt
         iCeW5CoGAR/8+kHJ/YSZ7GPdbY0a9KupSj97khwoCPQIW7phwS+hx9vk3VgFoVvl9x9x
         KIo6M4RqKeqWgilCn+ACYh5ioaU3QyMchIc+L4FVgHwDElXTkrsLmToFTtOy5wllgCLy
         PRYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ravwqlsb;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=85Ef5PIoxC5x2TJ1g0Ni9d69MrgCTVA8g++dtZyyAxE=;
        b=nhVV8WmmBpb7aR25j0He+5zapLNpyDwLvWXvTKYsm+4A5dleqaWDaPuhO2pIrWFX1B
         t6uF8uHqA0kv71fi2Ib3y1afO6r5y7ce2idJwrND5J9VYNGBVTHq8JXMxZSdP6i7mZ0e
         3+vonnXMpxXkxXYLIiwkXCajgZWTd7KOpzwvG2HksQ3uKXVRcVnnXVRie4J/GL0Ecv5l
         3iXL7/QA57Uix2l6cnAYK5wZuG135cJZdZcoRIckdnYJOk8U7C6ZxfpXL87JdzZwCVdk
         ePw9XIC8tje7Lzs6ntes7uCl7jCjte2Y2HCzVnlkpXCPyxVkntbzo3+TETxbvZMQ2NPS
         xo9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=85Ef5PIoxC5x2TJ1g0Ni9d69MrgCTVA8g++dtZyyAxE=;
        b=W66ay0Y3Ol5O4aclNAuoqX+wd+6kp96CVENjHB9EriXPBJ83p0FvOZBj+L6KKqo3Gx
         Ut/e4lUAxEdIpnJ1gdx+tGrBHJteY7H9wQTiTTxGgpuvuHZRQn6pz8Y8PYnEvNcRgstO
         YeRmbIeLIUgXT47obuWFXpZ1KoM0cC6H+WLV4pwt2jPnAZmmwsA6sAZo8jtBiH49NKU5
         X9k8VFD19L0kd9w4gG+5ZNmWwBdr9EKJVcjIWmeCKeViI7YMjUBe8H9kRVJyADuJmUtb
         V7ovwOKxHQulXEGu//oGMKnhwmOaK+ozSQS+b3XdmYhSQXawmm01sWieUJE3AH3OlgR3
         0lXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311qbTyNQSkxr22bUwUd8kVApwCWIGITz/wWdYIsKSkkKp4odx9
	phdo86FUA7YF053rNF+Qvik=
X-Google-Smtp-Source: ABdhPJxf6eWJi1kWj9B8Tc9Pnd3PHQWpLUy15KWfYhhIls/Fx5GLzgkbNiqEjI41V8QGx8tcXT6ogg==
X-Received: by 2002:a9d:2065:: with SMTP id n92mr4647682ota.150.1610633188431;
        Thu, 14 Jan 2021 06:06:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7a8e:: with SMTP id l14ls1404804otn.1.gmail; Thu, 14 Jan
 2021 06:06:28 -0800 (PST)
X-Received: by 2002:a9d:4e84:: with SMTP id v4mr4819916otk.45.1610633188046;
        Thu, 14 Jan 2021 06:06:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610633188; cv=none;
        d=google.com; s=arc-20160816;
        b=DwbpqjpoXqDcQX40CYQ9r+RxX8gKZSiWwu1etLqasZe8lR9f7b+xUvpj4j+wCN5Umh
         sXgDJ6ww9zd0QqySKCXojjlxtVSLpNAw9vlPjBR9EanAtSP3pikVlVW/wrYhdvJTCbfU
         34OqhE7DUv6oALidzJjuIFgk33SweFpKKgqJAF2JWjFUsSnvgMpuqxQbeF3aLWl1g71U
         3rbaN4gydQgMn1yRd35xSJ2DuA2G4lo3gElGARLixaRIzg3KRlgBSCPWDMIufUPjWJXo
         J+EhSDENAW6KDjs8goBwGb47EAiygntYhL8MTvanm/UZFOpNv8waD+ySAs3id9lbjycW
         JIdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Zg69v+N41HJslXcCsgajnBPm44Msy6dmTJp7fQ/PT4c=;
        b=WrbJTYujcZNq2JcR+i2u96AzYA+Eb5a5KZcOAQXEHKTVwenTLQHMJzZvdQd4fMv2/W
         SOQmRSGmYNBWw9mgy8UeAq1JfCF974F6vjbENv3ZuJE9tfLOt8TT+uwFCbvOHvbslTfp
         R8hGV4KIF+4D7fudDbtp4AJYqiPzUtt9VvuRHzwkK8fPP4Aohi2Y1b8pUTzuWIZ6Gx4U
         7yx373W5IEqh5i55/D5T1PXzl08vOx3B+0XGEdQL4vgDZRoMTWxXyBNt6+BdnGkNHRuK
         6obPdkXWHHBEgdH0ECLQwytv2gLpFPHCtN+/nrgBms/X1xgziUIFevpZR6qzKv6Qhnqx
         Slyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ravwqlsb;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u2si390299otg.1.2021.01.14.06.06.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 06:06:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B5BF23A69;
	Thu, 14 Jan 2021 14:06:25 +0000 (UTC)
Date: Thu, 14 Jan 2021 15:06:22 +0100
From: Jessica Yu <jeyu@kernel.org>
To: Fangrui Song <maskray@google.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Marco Elver <melver@google.com>
Subject: Re: [PATCH] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
Message-ID: <20210114140621.GA15904@linux-8ccs>
References: <20210114054831.343327-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210114054831.343327-1-maskray@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.28-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ravwqlsb;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

+++ Fangrui Song [13/01/21 21:48 -0800]:
>clang-12 -fno-pic (since
>https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
>can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
>on x86.  The two forms should have identical behaviors on x86-64 but the
>former causes GNU as<2.37 to produce an unreferenced undefined symbol
>_GLOBAL_OFFSET_TABLE_.
>
>(On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
>linker behavior is identical as far as Linux kernel is concerned.)
>
>Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
>scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
>problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
>external function calls on x86.
>
>Note: ld -z defs and dynamic loaders do not error for unreferenced
>undefined symbols so the module loader is reading too much.  If we ever
>need to ignore more symbols, the code should be refactored to ignore
>unreferenced symbols.
>
>Reported-by: Marco Elver <melver@google.com>
>Link: https://github.com/ClangBuiltLinux/linux/issues/1250
>Signed-off-by: Fangrui Song <maskray@google.com>
>---
> kernel/module.c | 10 ++++++++--
> 1 file changed, 8 insertions(+), 2 deletions(-)
>
>diff --git a/kernel/module.c b/kernel/module.c
>index 4bf30e4b3eaa..2e2deea99289 100644
>--- a/kernel/module.c
>+++ b/kernel/module.c
>@@ -2395,8 +2395,14 @@ static int simplify_symbols(struct module *mod, const struct load_info *info)
> 				break;
> 			}
>
>-			/* Ok if weak.  */
>-			if (!ksym && ELF_ST_BIND(sym[i].st_info) == STB_WEAK)
>+			/* Ok if weak. Also allow _GLOBAL_OFFSET_TABLE_:
>+			 * GNU as before 2.37 produces an unreferenced _GLOBAL_OFFSET_TABLE_
>+			 * for call foo@PLT on x86-64.  If the code ever needs to ignore
>+			 * more symbols, refactor the code to only warn if referenced by
>+			 * a relocation.
>+			 */
>+			if (!ksym && (ELF_ST_BIND(sym[i].st_info) == STB_WEAK ||
>+				      !strcmp(name, "_GLOBAL_OFFSET_TABLE_")))
> 				break;

Hi Fangrui,

Thanks for the patch. I am puzzled why we don't already mirror modpost
here, that particular line of code in modpost to ignore _GLOBAL_OFFSET_TABLE_
has been there long before my time. Let's properly mirror modpost
then, and create a similar helper function ignore_undef_symbol() (and
stick the _GLOBAL_OFFSET_TABLE_ check in there) to account for future
cases like this.

Thanks,

Jessica

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114140621.GA15904%40linux-8ccs.
