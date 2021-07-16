Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBINWYODQMGQE7RSHXXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 250AF3CB040
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 03:04:34 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id j27-20020a1709062a1bb0290539659e5bafsf1313912eje.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 18:04:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626397474; cv=pass;
        d=google.com; s=arc-20160816;
        b=rfd39Ki43qr9QhaH+uKnmzXKt9oa65rqgjx+cuHshIitYVnF1ZA2HR+3ERoqRY6mRy
         9/U5vlHPQDUexihI/uArfABZowlCXahP6quPkqx3bIagQ5foFJsspKY+FT6thA46y6MH
         WOtwZEcoc290dmWxqajKqIzDu+iZmCQMQ+idhsTkMs5ZqKAbs+unEx/nfTNUgxPyjmpy
         Dex4Y4MPRbM216B3EfCm/Au+iRWd4dWK9+Xzm37rLuJJblW4ai0YOzXRTffUcvs8Jtzt
         gZpmJ9tcC8MLoKqAv6+z419qkAH46Bgs52y/KjgyxHUDVsEOAaqHynOJ8sDov+As6RAE
         5z+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9C8o4NXu5rwAkkOoCT44aRDZvFw6Td8UYD4oAmusxQ8=;
        b=IfcPa667KJza2G97dnd1M62NHt6VALkz1of/zGKKS6npxS9Jnf6+QQlF6BRzPWGLgb
         aloQeAJSsk2GmJ1B+nRazcmrmcgDl6Sr9htUoHL2Nnx9BMPkmZmvlx6Kbii1o3PARVg6
         JWroY5+mxPjOJzF53hfSDG3PXv58BeSG0eD9i3zBufQVgLzzWYVg1h9594si8b2mpwSg
         mrvOs3A6XpB5zF17ei6GXgyFNB1DU9Z2duJqPGx3QpRWatDmBhBsyMvznDeXwqDojcaQ
         Y7BlLhS0aZaSKrhES8sD23kGbDDaT9PdbyEkMzMtw2puYiOBcBZd++lrxmY1Y6TQllUj
         /hVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=cQSH4075;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9C8o4NXu5rwAkkOoCT44aRDZvFw6Td8UYD4oAmusxQ8=;
        b=k0FwuSLbwrEHl/bVjbyDwFAJ6OXjecfIhoDdYKS8PjnXuewFZdpIXRf1iz2fS9prJg
         yYSCFk5sAVc7T3B+8aDGSkVU9jrodM9KKD1gLJ4lK48LLux1aRIXoxQFOehK6mbwxrke
         47Frp+gx2/V+pHrD2yZ/BkReQ6bwSJKXCJSxyQYvZj9gnWNt6OMeTANIDIshB7hRRVWy
         LfQMYHJgctLgOXbiIapd1SfFVB4uB23ZfAX5bE/gaBdQj843I2iQHbm3I/2RNrPSQeC6
         I5BpHfOdaaLXEy4YH0bbQlBYmONDyFzo9h6FNnjvJKufbz54M+u5wFR/ru14/ZDY9Ma/
         JWvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9C8o4NXu5rwAkkOoCT44aRDZvFw6Td8UYD4oAmusxQ8=;
        b=otmh00J/gvSAHQTmSBguYcbx+8XBoZ5wPApxv6FUOPRxDRQ2RtUQqWa0zMYDVTdpi8
         avjV1mrMdyF3RnpXmttZsWru+ZkSI4cuo03aRNge84+4Jv1AvZO2wK2G3W2aPu++JcvT
         u8uew6PlD7JW4kciYIQ+HgU+i7ErnH9va8uyRwoB3PTI1qUtJiQSVFZzux8I3PHAOtDa
         2uw9OpC3JUqoc8rwtESRGy0KpeFtqIJDPgedRBnf7WaRSPVml4h1cENcO6wcJLGkhFmV
         jCR0jqqIpo9WbTLVSu7/ormEBCcZ3mGSkwgRN7C9j9v29gDXx73FRmNA20+JZTrsH0+3
         yoGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531v/qEOKSHMvZuUdVIUhe7iwznziUQbMgMj8mOYLvbXNa0PIQQl
	NpHa2ChfQuYu9QCB3ahuj/U=
X-Google-Smtp-Source: ABdhPJw7qU4NbAtv7SReY4C8tzTJuI1Vhg6NUfOPvlyFr75BenBe/6hLXbAnwkM7Oayr2uD8scnvRQ==
X-Received: by 2002:a17:906:f11:: with SMTP id z17mr8796521eji.385.1626397473885;
        Thu, 15 Jul 2021 18:04:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8387:: with SMTP id p7ls3957662ejx.8.gmail; Thu, 15
 Jul 2021 18:04:32 -0700 (PDT)
X-Received: by 2002:a17:906:4a05:: with SMTP id w5mr8578809eju.2.1626397472819;
        Thu, 15 Jul 2021 18:04:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626397472; cv=none;
        d=google.com; s=arc-20160816;
        b=0NPIFQeqjbVtGSDLDwYYxV8mbXKsgSd5ngULtcBCjTzSga7DDz7Dv2XK35l4kiqr7D
         /zp0cMvWH6JWLqQeDXIvnuDrB2hnLTIxtYAUUFC0r8AtRol5jFUZ1pxq5oIr0QSFeoYs
         B5j0fvqnx//+/2G5KRiapcDTlauFuf2O2UaiuOY1B24i2zIisMry6ogVdzSzMqG4gmNf
         aBEEIrzD1cHSv6oS1JKGmaVNDA5ocxeXCHlUXTy0/Aq+KbJVbkFAfoRuWcKxaKyDREI6
         XessDi0Pnmv3FXXuZyVouV6zyBQcGifwta+A0VMS6y4480B7b7qNtRz3KxBK2Byl4V+C
         Ta2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4OHH9lYUaBVj6TC0lbiFZ8mDVTJDCbXfy64O8dU0tYU=;
        b=KlXMqOy8zkdDLQr31jXuIZmEcUCL/hKH4RWSoqHg2xOsOIlNRUenOUvsag6gOdaB81
         HpkXY2GnVNNxV7FVf+vIkh+1tbviur04P9/v75Toj99tSQNfyJmpGDdxHKU68I2wifI7
         fGFiTzejMJ5ngVwZYNkfpVphzYSV7XAwIfJPH942LpdqU95xSef76FUFQ9G3exz3i9Yd
         fHcTXHgP2hr6D1GPvIhUX2koYUvFgJ0PnYXVANhbQy4J0SV0LOEo1/IoQU2qPk3XGPgs
         +g6/6wVJ0uC40XMHqIn/bGS9+lDwiaUkhrO+ctYR9pyrgzjfxctG1BmamYzCcCXIDMS+
         hz7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=cQSH4075;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id 24si307981edv.0.2021.07.15.18.04.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 18:04:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id g8so7348366lfh.8
        for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 18:04:32 -0700 (PDT)
X-Received: by 2002:a19:5e02:: with SMTP id s2mr5536367lfb.265.1626397472135;
        Thu, 15 Jul 2021 18:04:32 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id z25sm525001lfh.283.2021.07.15.18.04.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 18:04:31 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id y42so13205938lfa.3
        for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 18:04:31 -0700 (PDT)
X-Received: by 2002:ac2:44ad:: with SMTP id c13mr5390249lfm.377.1626397471252;
 Thu, 15 Jul 2021 18:04:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210714200523.GA10606@embeddedor>
In-Reply-To: <20210714200523.GA10606@embeddedor>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 15 Jul 2021 18:04:15 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
Message-ID: <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=cQSH4075;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Wed, Jul 14, 2021 at 1:03 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git tags/Wimplicit-fallthrough-clang-5.14-rc2

Grr.

I merged this, but when I actually tested it on my clang build, it
turns out that the clang "-Wimplicit-fallthrough" flag is unbelievable
garbage.

I get

   warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]

and the stupid warning doesn't even say WHERE THE PROBLEM HAPPENS.

No file name, no line numbers. Just this pointless garbage warning.

Honestly, how does a compiler even do something that broken? Am I
supposed to use my sixth sense to guide me in finding the warning?

I like the concept of the fallthrough warning, but it looks like the
clang implementation of it is so unbelievably broken that it's getting
disabled again.

Yeah, I can

 (a) build the kernel without any parallelism

 (b) use ">&" to get both output and errors into the same file

 (c) see that it says

    CC      kernel/sched/core.o
  warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
  1 warning generated.

and now I see at least which _file_ it is that causes that warning.

I can then use my incredible powers of deduction (it's almost like a
sixth sense, but helped by the fact that there's only one single
"fallthrough" statement in that file) to figure out that it's
triggered by this code:

                case cpuset:
                        if (IS_ENABLED(CONFIG_CPUSETS)) {
                                cpuset_cpus_allowed_fallback(p);
                                state = possible;
                                break;
                        }
                        fallthrough;
                case possible:

and it all makes it clear that the clang warning is just incredibly
broken garbage not only in that lack of filename and line number, but
just in general.

Yeah, I'm a bit pissed off at this. This clang warning really is
WRONG. It's so wrong in so many ways that I don't know what to say.

Except "yeah, that broken option is getting reverted again, because
the clang people messed up completely".

It's sad to see that people wasted time and effort on trying to make
clang happy, when it turns out that clang just gets this so _totally_
wrong.

                     Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjQeeUiv%2BP_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA%40mail.gmail.com.
