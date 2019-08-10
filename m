Return-Path: <clang-built-linux+bncBDE6RCFOWIARBFXZXHVAKGQECMYM5JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D37889CF
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 10:13:11 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id a5sf61580510edx.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 01:13:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565424791; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDKnWaqWVEIvl0ovSV/7Nxxk7fyC4GL6KKVMorGFjGXFjbilutrrwQ00MhaRDEHefc
         P7i5LfPLssW+7W9t0oQYz7eznlwTdnz4EbegJToUsADAy6WIk1fdMRXhFatDgVL4f02p
         rHYCpJQB9JprYXyMYawDf/lZAjFUMFaov5CuPqm4CUH1oNSVYMmEJpYoPWjE6gjTZW2X
         JYBpry+87zWYjrtF4fFHkyWvJ4uCHtHmZ//ZDSMip6/Y1hOVCsBfA5XR6j0RP+NaPbdB
         nh7f2W6YL5osSNpsdMjoDp8ULHLfzseVOZQXVHvHJHTXz1uAUUoDSl6IkfK084yp88/K
         Jmnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0qnGuVUDR9YzXVSBCh35P7Cq+n+gFlIDsEEMT11jUSg=;
        b=VwQVcKscl7Ht3iwW5ioZJCEGBfsnUQvMZRSrsptE57ynBAMAtkpNw9hULgNW69MxPK
         /mOlSJg8GQlfeIeCfWtJsELrrNZ8knwgjia/mF8hTy/iIJ82O/xUX9ICa13bhvhMkVNj
         BTgLD7+I/7l2ni3dI+O/iTebeD0ghynfAlkbrcXivn+D8J1jN0ah3dfodvbhukfR9MGk
         qsTsYrNb4ZEbs4LoEIDNhxJAG+SIHfJVE58BPCk+q7RzFrLJ4VHgJBb8d4VLjs7WSXmp
         aZ5r6LFK0QsvNpbzp/JgxSGAHBGCZEr3l5Ylhyv3CqqX2jQcjj5xC9IosAX9T53KbjPF
         AI7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VnJxbftI;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0qnGuVUDR9YzXVSBCh35P7Cq+n+gFlIDsEEMT11jUSg=;
        b=b0G+coyfleXnApVyKXGjbK4OuyOUCweq3R8bVTcNsOivfw+xC8Vb0Xgo+fuLgydqY5
         jik1U41g8fhDWavHz1eHYqZ4PHRLa26pZ+By6VLqZPGRYjopVfxKNDjLf15bcv+95+gQ
         KgtEa7TInAS87/CCBqe+TMKa9bobVTd7tAfIVE/xLyCjaHSU2wqioDjQCv5E/VF8VsHl
         ZAg5eqKliZkS329lpefgofjiYNHMNLzdITd2l870jHX/Ca7aYcJ+N6LRo9GUnqyaFK9t
         Pp+KJI2G1nv2VSzumt3SXNskREOXKD3KqXaNQm7KTFQWjT8aOTkVw/1VkGcfqAeggk3W
         UK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0qnGuVUDR9YzXVSBCh35P7Cq+n+gFlIDsEEMT11jUSg=;
        b=E8FWj5wpkWRdVUWJ6AtmjNEPPGBIifstUSCnP+D9T61Kp3M24MJmX3UM8bjFLYsTKz
         w+KkSkX3+Z+czlmVhOjS3AwRaywTaN14Kch/pVFZIUiJkafFnj20tedlzkQdXFJvNFfP
         Q2B/mHxxqy5u15AESE+BIOPJZHMrlGxh2QkoKaYvEdxowi8/NNsW6+INnmsO6ADArASp
         fS9T2zezFNrVVTigAY6yrTjnWfbIKXtqnwmZt3X7izYysMzc8Hb3QJ4gzjVyfDgPW7tz
         s4mMZ08DTQt6zw6nb8QSRgYy/e7IwDuEJ6nm1DQem8RmvuqDgavShLica6APFpndYPea
         d3PQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWbhDa37h7yK5UriS3EwBEHB6gyIpuHYjaiCUZb/pQIZ46ZoH6+
	7EV3UuL5msE/70YLpzIm4Q8=
X-Google-Smtp-Source: APXvYqyxXYX/9MFfTFpmXE5gYz/r/Yywor2O08RorH/nRjmU8KzvnG47FoNCsddlk8vjM+8cIckNqQ==
X-Received: by 2002:a50:8981:: with SMTP id g1mr12942542edg.53.1565424790935;
        Sat, 10 Aug 2019 01:13:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:e406:: with SMTP id d6ls964063edm.9.gmail; Sat, 10 Aug
 2019 01:13:10 -0700 (PDT)
X-Received: by 2002:a05:6402:1351:: with SMTP id y17mr25645401edw.18.1565424790561;
        Sat, 10 Aug 2019 01:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565424790; cv=none;
        d=google.com; s=arc-20160816;
        b=lAnyipYEXSNkAubio1Q3y+37H1DQ+UaYtnRFsQYUIKtRPfE9GBv617KzTx8vGsk/rc
         tkOwb5O2S3JzVohwiCZ15mR499E3gpQzkFKB9gACYVnYEdq6I9DnlWViFfEPdTpBi3Fl
         LsgkDBqj6fxFmxqaMCTNMz+lI8aBrqSvNa3hHbDdYFyPWTd9fKbv0e6VNsTbAs5ehp/D
         JvfC5/R5bVOk7lI80w3aSgHKcpoGEwbGgePWshgdDQSC7K5483krfE0YAGu+/SRLMWdU
         NjakcbXx5J5X0reANKCzSAD7OeIkD0wPe/9tRh/Vbse1JNkYOoPjOnFUA62HzzI6Qf8V
         zVsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oqsU2heLXHHBs96Q5jI1j5tMoKsUDIBVmfyGumKZ6LM=;
        b=XDJ7VgMfrc14OyAIDWvSkHiZmu+ASJEfm5jNe9KDM1Lz90Ujq7/uOGWY/pHxvufUEQ
         m5vWPUQG151Kfk81kdk+y5Sqn/M4UtyDYdyV3yDCoL7/VYqU3iFkJDC2QhxDU4Tollwg
         xVT2TVfT/hNwuHBLcHCjrodwj+5SKVmy/4scO92ouiAbYXAIbRXI9xoej11kHhGgIT2s
         r71Y/FvOIliV5tHeWuXht1MzqApZz46UMo12oR+YFiXANvmeyqr8NQbs7CTOjHA43ji2
         njphSmelIPCEMvz1VlqSRZQwVdHZM8Vwy8Y7Y39lUd/IiV1ventvd4UWYL08hiZf9Alg
         9img==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VnJxbftI;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id k51si4039426edd.0.2019.08.10.01.13.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 01:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id k18so94092397ljc.11
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 01:13:10 -0700 (PDT)
X-Received: by 2002:a2e:8756:: with SMTP id q22mr13818205ljj.108.1565424790000;
 Sat, 10 Aug 2019 01:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190807003037.48457-1-natechancellor@gmail.com>
In-Reply-To: <20190807003037.48457-1-natechancellor@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 10 Aug 2019 10:12:57 +0200
Message-ID: <CACRpkdbDgOQXfxgM4dEyzBRhtske3=V+858B7J8jGExnJE5fJQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: aspeed: g6: Remove const specifier from
 aspeed_g6_sig_expr_set's ctx parameter
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>, 
	linux-aspeed <linux-aspeed@lists.ozlabs.org>, OpenBMC Maillist <openbmc@lists.ozlabs.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=VnJxbftI;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Wed, Aug 7, 2019 at 2:32 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:

> clang errors:
>
> drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: incompatible
> pointer types initializing 'int (*)(struct aspeed_pinmux_data *, const
> struct aspeed_sig_expr *, bool)' with an expression of type 'int (const
> struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, bool)'
> [-Werror,-Wincompatible-pointer-types]
>         .set = aspeed_g6_sig_expr_set,
>                ^~~~~~~~~~~~~~~~~~~~~~
> 1 error generated.
>
> Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> changed the set function pointer declaration and the g6 one wasn't
> updated (I assume because it wasn't merged yet).
>
> Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
> Link: https://github.com/ClangBuiltLinux/linux/issues/632
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Patch applied with Andrew's ACK.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdbDgOQXfxgM4dEyzBRhtske3%3DV%2B858B7J8jGExnJE5fJQ%40mail.gmail.com.
