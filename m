Return-Path: <clang-built-linux+bncBDE6RCFOWIARB6EPR6FAMGQEGMI3CNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6C440ED77
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Sep 2021 00:40:57 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id k42-20020a0565123daa00b003f7c2459d19sf5155089lfv.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 15:40:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631832057; cv=pass;
        d=google.com; s=arc-20160816;
        b=lk4+M0ViwMo8Dytnjw0DaRtaTVbJZn/dbsg5t5LNbXavf1orLoVlsn1PLoV0GGs+Qq
         2jKWKJUQ/RLb4POzjj7ISEkYw1PJsKbAeJDvkckojrfMFLi81Rvyrch5L/qrJPllEocM
         dukedlp1XMazfxW6SU49Xj3toP3lOIhaNvpLk6oedkDE35OepHKp2IJjBBbZSYbvG1I8
         JFgHQJ5yXGxX2X8KU5mhZoeY9kx+L7voRGewjPRmtdRpWzsPcF4jq3OwYMi8HPrBPpBy
         T3g/SDNWBCNI1SHxCmZogyZNGEjAxKQz5+n0HAOTlEara6D9C6rtFfDL8KDfUZvxCgzz
         P1NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ikX8KFSOf/yyNFuMQbZ1zsu8H2E8TpMvjL8sIx99HZ8=;
        b=Sxs7j0Dw2UTtK1FGCa0eDI7oJ983Xe/OFFihdoCGEOvN3h96m3pSDnMzOEkPaZ/J1D
         rBElTZBf7KToMgxp8cK+1u1kP1plSnhWJjIvw8anJQ55BvcbK0Z1ylUlMBxK+2o6xn+q
         94t3GEJIVBf+sVQmRi4bYgcCqPDaYUecB84Z8d48qFV4XchP0h/y4Y8bJcsmvG+DXm8J
         xH5SN9S6r/QIC22adjprbS8lltkM/mSVF5diRVYVv0XHMofD40rSMQOYY0saR8wJF92E
         spj72WF6HntB7MOAyb6o77b8oMLxAbtq2a/Z2q8QzWhOZqEc4Zea0UK2lR8cAMbr/2qz
         YCgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KexSko9o;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ikX8KFSOf/yyNFuMQbZ1zsu8H2E8TpMvjL8sIx99HZ8=;
        b=YpbvNjAUCt739fkOvBBrocjBWeHzCHtkn9EaIK3o2SuCNSiKokPjJfogJ/uaX3Slua
         MRkAWxtjN085erL9rb7aJOmtQ+22xoh6V1I5n2SJFgHUHvz9PVVQmRrRtaId5aabOxT9
         xCObuQhDExUNiEX3wdnVWMKAJ3SEm+gIV15B4QbTMVm31B6aMNwoXrHhDTWDvr+pIMmt
         IzIXZDNMdpt6Za3NdnmlLdD+DWyj1YnOv8jH/v50QhiOJ+YV1McoJ4UO8LVDY7JXkKM9
         8i5SvrBGRWXqyZYVBlRLMNzjaKQSL1VZ3dpYTnremCL1u+WgyvXX9LL2U+B/R7c9kjB5
         Z43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ikX8KFSOf/yyNFuMQbZ1zsu8H2E8TpMvjL8sIx99HZ8=;
        b=CUwDtA1Nhrzpo6xPmtOBFVjB9rE99MINoIQ5Lh1BEUnhX6cQPwb8HmEf3hk1qxr8R9
         N3XappqkrGp29i4HmVPirVEfxjbuVe/rQqj5BeUtKDm/kzuowVnoBwQHG9dPQRExCJlr
         cE7VsW3MNe7D1rpYFZcmjXICBRe541+RyURsXoXdqjNzCI/ZIG+8O6geQas+mBpDggvf
         GNLIECr1vLLkgchLIOLzlh2HJEPB57gBVjLrcrNB9YkJLVDQ3KLDQ3oK6MfRVa4DWxUi
         c6hBET57kxPqGGmizilJI+yTcJYuKwyJvdlqMYzlPWgbjdNVvGBcrXwgFe+vbUOKg+Xr
         AWAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FFfyhwgzurFFtPQXWfuUWz5DDGvhIe6z+9XbBMXbfkVpwXOkN
	1yPcApA95BqoOKn2vVi9NDk=
X-Google-Smtp-Source: ABdhPJz191WewDUpQdnQ/TbRuLmIScEDUk7IIpVV5kOFS5EyaU4xtJ9n7+Tn3fLeEtUCoQpqG5jPjw==
X-Received: by 2002:a05:6512:2287:: with SMTP id f7mr1158958lfu.294.1631832056897;
        Thu, 16 Sep 2021 15:40:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2119:: with SMTP id a25ls1085327ljq.9.gmail; Thu,
 16 Sep 2021 15:40:55 -0700 (PDT)
X-Received: by 2002:a05:651c:a0f:: with SMTP id k15mr6451594ljq.231.1631832055864;
        Thu, 16 Sep 2021 15:40:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631832055; cv=none;
        d=google.com; s=arc-20160816;
        b=qF4U3x4oXI8kFf0t13skGGe1PTz2FZgGuhYw37jRcysMSm+RDiYAqCwHYX3sAs7OYF
         KHLn50f++ZN5KpoQHO4JlV9qEGLFUZ/n86T4iGD3QD8dvEGBBefa2bVg+j/7b05km7o3
         G7St3qwTE+tguCv6AjultEq8se6E06XgTneLpBIYPNVdO2GtyFFrBoAJOEi+1ZxjHoOc
         YjlLQXlvV0/tNH9LdEGsaS7LEnchtN4eGcgCCnL4RAF7KDwnpV6FUGw+WLOuJ75UFQsT
         Tw07uhtMfexfcG7rCpejhVmojZ8iIxMxEu/XRpI23Q8cgJidO0zkT0xoyC/RRDNYOb7V
         eNHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=T3YLfr1u9APyPAn/xTQmLc+SC/g630ZJTt80Yi4gRR0=;
        b=ybim3CnXRZoFZHbEWP7nLb8jL5qELmudzdzG7+ZqbUqsfLTNlj1dVYgyAeo28IO58R
         TIW7xtW1VyIUu1UXw+McGQiu1nCoeCIsK4tx6W3+AvuJZJZUvUdM0qe+pubqMhYyT0pz
         9epw06BoXoSrZaeLETdQsIExHewlKZsTIQ+MmgaHipMzhQkZ4N7SBg8ctv+UCrK4ajq5
         qmK+rCAeSeKp2wYbZlVt65p/rSy1Bpk9S5WnDUCtdTbvXMcszHI65EXkIl3bpGsU3TMq
         XTV3vzLEbD3j/y8ou59K0sWCNDbye/qNy6XZUr3aWo+SxNqGQtCzDr/nykLnjKzsz9rZ
         bifQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KexSko9o;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id z21si538879ljn.1.2021.09.16.15.40.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 15:40:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id i25so24928978lfg.6
        for <clang-built-linux@googlegroups.com>; Thu, 16 Sep 2021 15:40:55 -0700 (PDT)
X-Received: by 2002:a05:6512:e89:: with SMTP id bi9mr5610868lfb.95.1631832055603;
 Thu, 16 Sep 2021 15:40:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210830213846.2609349-1-ndesaulniers@google.com>
In-Reply-To: <20210830213846.2609349-1-ndesaulniers@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Sep 2021 00:40:44 +0200
Message-ID: <CACRpkdap==EPZpAggMmd0XN1J-DwK=OQu3oGn-V=zPOaq5XnHw@mail.gmail.com>
Subject: Re: [PATCH] ARM: select HAVE_FUTEX_CMPXCHG
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, llvm@lists.linux.dev, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Andrew Morton <akpm@linux-foundation.org>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, YiFei Zhu <yifeifz2@illinois.edu>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Mike Rapoport <rppt@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=KexSko9o;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, Aug 30, 2021 at 11:38 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:

> tglx notes:
>   This function [futex_detect_cmpxchg] is only needed when an
>   architecture has to runtime discover whether the CPU supports it or
>   not.  ARM has unconditional support for this, so the obvious thing to
>   do is the below.
>
> Fixes linkage failure from Clang randconfigs:
> kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit: R_ARM_JUMP24 against `.init.text'
> and boot failures for CONFIG_THUMB2_KERNEL.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/325
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Reported-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

LGTM
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please put this into Russell's patch tracker!

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdap%3D%3DEPZpAggMmd0XN1J-DwK%3DOQu3oGn-V%3DzPOaq5XnHw%40mail.gmail.com.
