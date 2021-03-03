Return-Path: <clang-built-linux+bncBDE6RCFOWIARBF6L72AQMGQEBN5FRZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id A77BF32B8CE
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 16:04:55 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id 74sf336652ljj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 07:04:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614783895; cv=pass;
        d=google.com; s=arc-20160816;
        b=N3bZZYxQuoIWEQrmljh5t0K7j2xJ1It7NVM8HvexZD+iD+kX1pjIyrsjD00BiJl8ne
         GKkVaj/hIe8ruZF2uZe4Fr6FwBVkj5dXzeBE0VDdrtAAhwRxehImhscSsZqcL21rYCKG
         UHLJwu68uWBKzPPGmtpi7ZgO5IOJwOstIvhfRqR53o24knNqgV2UbcOdxU8mrwdyZdmZ
         BVSw+tptOAq1hZ3NQeSSL6CSrv6Tvtexg89/qbOXPzAgkUElSfNn181mI34KZ6XBdc5i
         sOWo8v9wXSvYL6QwZmmHmUN7f5BIvwrkFSVvx2WkIJZqssgZ/5cpSFQwbnt7zuHkQY9s
         y1GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=dQlcwuzms3uPo694oB0P6cOfc2EbN9FBI9sc+mYS35I=;
        b=Wy7fm1zCOXqHGjiroVYqyumNfg+3vIOyM16pLPNvfLvoQqFIfOkecc0/2YRAHx5qac
         Xv9kCGPAfdeJC1MBig0TeXFa9TJ6u/fDT36Z4B4xlqCoOKsLEbJDib+vIkUXcKA1BSZe
         2l70O9LjkR/Ek+zlLD5X6CBa0FY7cRMMUMOQtwfNaUx62hJEPO6dv1VVhy6CG3nxUfmA
         ZR/VgrgbNLSW0tfeIeLKx+ugN4+PhBkxh3gy6whmPOTIFsjKG7DKt7HdcV1KN0elZA7f
         XmjtDZbCPJ48Q74UFJMYLrXWLjcEnNkLJ4VYgJiNYwZi3E0vmTmgMT3dkFkdHHXry+JA
         BJxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TXjhTZG7;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dQlcwuzms3uPo694oB0P6cOfc2EbN9FBI9sc+mYS35I=;
        b=mXcoyaeJMrYudcsoLsQC6xz9DGT6jbwUH6WDVebL3ZRzx2qeQC2npxw1QsnFjrZBeN
         Z8uM7cm9mJ9zyRfPa5TD9XKm0AyCLgvPGzl9zf8co2WXUii8yGC0m3pfzcGYkoO7CS7E
         CaE1HenR2Vuws7OEw9+LcsLNde5JdiHyDbN/RAYYlJdUdem+/HakIsVlnOwGlhzIw03+
         EPqexg47HHiim28gDUJgxXl6+EJKlOe8v56h0S/bhOTlN+bnZIAeyMADhqKxIJ6AbxPJ
         GS+PR+5ixdY3L6RgQhmPLUcl4SysMzdkHqtl4QGVHAW/jcKH5Uymk4OT+XRSOG2bXAEF
         7LBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dQlcwuzms3uPo694oB0P6cOfc2EbN9FBI9sc+mYS35I=;
        b=olOkND892Pjezs+noZ+Q5C+g6wxl4qfRAlFbjuuzbtbVKQZoZ0w3UryIXh59h//P+M
         LK2Jgp8IC94f8xv38ZQ4LIjwCShi5gLbKkGuzUTjjfIxAaErjE3S9eT2GSrupTdXgDf8
         agAknGDVMN+v1LjBya0AmNGDjng5nVhrzulQaWvCVPqBBuvrMpGa4W3qfEgEAfBC3swL
         cS46gGNt3jo3YT8Nv7iPOAZS8MmZy1pk8WYrGodhx4Bo+cIzSmigB9tcvlLd8QChghwi
         pF9zUiNydRomPZFHoZAbrbV3ccmxTWnbzhxoK9FpPzNccFGe/KFBdSSArYDiqJYOe+44
         9BCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hWFaWzkLRpAj0B1837yOZRKxvJtET0Or1aUFJ6GOjP3isC0kD
	GP3qiDkuB6UMBVX1RWhymTY=
X-Google-Smtp-Source: ABdhPJyDf7yZOEvHUY2CZweUN/Yv/Zxu4rq+Fp8ZWSK9AqcVnEkId7Wk56ebWfW77Gb/y02BewoZ8A==
X-Received: by 2002:a05:6512:10cd:: with SMTP id k13mr9843277lfg.651.1614783895251;
        Wed, 03 Mar 2021 07:04:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ac46:: with SMTP id r6ls1431762lfc.2.gmail; Wed, 03 Mar
 2021 07:04:54 -0800 (PST)
X-Received: by 2002:ac2:454d:: with SMTP id j13mr6249517lfm.129.1614783894090;
        Wed, 03 Mar 2021 07:04:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614783894; cv=none;
        d=google.com; s=arc-20160816;
        b=VJ4OW91N0Xox5k+lZYBr1x8AR1eXmtmVh1XzcXcGYfWZeymuu3/BSmroZDvTE3zYSy
         nDrPjcO1Aluoi9WOFD6A8fVK0FCemw++KL/YprBFKxVBYWxASAQBUQ86+JKZJUrjyVdQ
         QS1LlR0+jXFay33kHL4Mkz8HjW2Hz9pE4FGJi430gZhC5l4lE+kjgAvlJYMHtPGU6qyX
         ACgBdOoPkRIr3DY8dUf2yKU8/lHRFRrGqxhIH/NskLtpTn0uK2d6Xgki4xCfI2vcT5ln
         IccBFFozDDde+P2C2nEAVvM4X/e+1IDd3FMsd7Oc+GbKWOXAD7KdU1ZMLsAUjJXQvpur
         pDXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RAU+oF5abLpOatKR6GoNs0xhW7zYpMa0vIglwnJvvdg=;
        b=L9YKWdbfTWZoGNeZXTmcXD7gmHAKOydzRUlrJK3F4Pu09FUH2RpUcwsVoPIyUzVvAj
         Bg34VN3Ba2OZfkhuGc0PnS7OgBRAZNDixYXnE3Ha+PxECcHt2+HLy1YBT+DJHh4JE31j
         br+pMJIPOTd3Kqs4gqz2zzbKfPzfrLbqCHynVKldv9HiOXQLAg85Kn0m0K2yqrYMDrvq
         J0vJFP9fV0TWFUIOksPVwfsP8p6L2Wkh88r6nzOxhbSV0x2Bg3D/pRxjGvdjLVDhTcyd
         u7+3QeWfKcdjFPqQJ7mf/R21oEf7sRlzygPGxkvZUM+ap/gkpwY6jgJzOGGs3b0s5ozS
         j6pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TXjhTZG7;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id q26si1211255ljj.4.2021.03.03.07.04.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 07:04:53 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id k9so17684421lfo.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 07:04:53 -0800 (PST)
X-Received: by 2002:ac2:4d95:: with SMTP id g21mr16105295lfe.29.1614783893687;
 Wed, 03 Mar 2021 07:04:53 -0800 (PST)
MIME-Version: 1.0
References: <20210223023125.2265845-1-jiancai@google.com> <20210223023542.2287529-1-jiancai@google.com>
In-Reply-To: <20210223023542.2287529-1-jiancai@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Mar 2021 16:04:42 +0100
Message-ID: <CACRpkdYC3iDD23SESM0j2=f56kr6ByKeedDQvkGwXbUC0br0fw@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: Implement SLS mitigation
To: Jian Cai <jiancai@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com, llozano@google.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	David Laight <David.Laight@aculab.com>, Will Deacon <will@kernel.org>, 
	Russell King <rmk+kernel@armlinux.org.uk>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=TXjhTZG7;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Tue, Feb 23, 2021 at 3:36 AM Jian Cai <jiancai@google.com> wrote:

> This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> -mharden-sls=all, which mitigates the straight-line speculation
> vulnerability, speculative execution of the instruction following some
> unconditional jumps. Notice -mharden-sls= has other options as below,
> and this config turns on the strongest option.
>
> all: enable all mitigations against Straight Line Speculation that are implemented.
> none: disable all mitigations against Straight Line Speculation.
> retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> blr: enable the mitigation against Straight Line Speculation for BLR instructions.

I heard about compiler protection for this, so nice to see it happening!

Would you happen to know if there is any plan to do the same for GCC?
I know you folks at Google like LLVM, but if you know let us know.

> +config HARDEN_SLS_ALL
> +       bool "enable SLS vulnerability hardening"

I would go in and also edit arch/arm/mm/Kconfig under:
config HARDEN_BRANCH_PREDICTOR add
select HARDEN_SLS_ALL

Because if the user wants hardening for branch prediction
in general then the user certainly wants this as well, if
available. The help text for that option literally says:

 "This config option will take CPU-specific actions to harden
   the branch predictor against aliasing attacks and may rely on
   specific instruction sequences or control bits being set by
   the system firmware."

Notice this only turns on for CPUs with CPU_SPECTRE
defined which makes sense. Also it is default y which fulfils
Will's request that it be turned on by default where
applicable. Notably it will not be turned on for pre-v7 silicon
which would be unhelpful as they don't suffer from
these bugs.

Reading Kristofs compiler patch here:
https://reviews.llvm.org/rG195f44278c4361a4a32377a98a1e3a15203d3647

I take it that for affected CPUs we should also patch all assembly
in the kernel containing a RET, BR or BLR with
DSB SYS followed by ISB?

I suppose we would also need to look for any mov PC, <>
code...

I guess we can invent a "SB" macro to mimic what Aarch64 is
doing so the code is easy to read. (Thinking aloud.)

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdYC3iDD23SESM0j2%3Df56kr6ByKeedDQvkGwXbUC0br0fw%40mail.gmail.com.
