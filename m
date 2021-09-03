Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBZGOZKEQMGQEVAWAKTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 745F5400801
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 00:53:24 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id r11-20020a5d4e4b000000b001575c5ed4b4sf170966wrt.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 15:53:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630709604; cv=pass;
        d=google.com; s=arc-20160816;
        b=EGoTWbckDCWLjqSSSt5Ej/viy0gbMV/4GATMGv22DQPfV82JhKspeKe23w0DZMVB3Q
         U6i5KnP9gvWJ4YpJZSGWZM3+gI82HxG9xVoJEaCSnfRN7HSSPWE9CZPrs92upuJD8EcE
         xcJFnjqg/kTdARc1QZMQUuiSoTLfcvUgfZY9LMw687EImTE3NmHkrQHiVlzLlo1veBaa
         curQG90cf0ejJvKuh/fW+8WI2wCzAKa2bSXN4F7gxEiHtXAWAiGOs64R17GFIxXeI8XV
         VXZIAH/3TJt89OFdIgIUXCQD8eRLhgMG/Ng3WGHhKIlFgZ+4WIcaG+Zst4GRnuHhe+Ag
         dTjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lSJGRjZhAKjzRtmfNsiAI9RffydlQTF0m5Iab2nqtuU=;
        b=oOLSD+niPefobcgRH+IvPr5OLpSVAa7kYJNZW4FoPK/BOC0NmqxZxR54FwzNvdoxbN
         7HDL9URycMczjkUrqkcGwMgQ6tj7UDemhPk7RXW68p74z04ZltsEuBEmu11BGZLxxFz+
         RV+P9KKEyrWKpO6rTYS6OQS/HguFySTC+Rdy2NrzNhrInR2vgRLlwlU0Ns2oaY8J7Pse
         fKYMDjSIyF0SN+4snDzdaPpS5RhsnlqpZuVY060vcO5nvYLhY0pNTFrWZCdpR8PlXcm8
         A9lr80uGK+4baHEuFEl0g0nJBz8Pk/dKOGMk1+mheYmfAU4oqReyY4QkUrjGdhs77fRk
         haVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ztib0QRd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSJGRjZhAKjzRtmfNsiAI9RffydlQTF0m5Iab2nqtuU=;
        b=sD/2m42v1pGa1+RlHwlSOvgZmxdGkSvC5aSR/hf/7U5qNTGeiNKWnKozYNv5MdyVz5
         8QFap8Q5ZHo5bBKaChgmDYEPiYnWIU5UOAXaoavKxQt5ur2dvAptMePNYelCXPPg3zMs
         +Zmh1Va+2C7tFIJG/+0mqY+oYR5inQ/v+NiL1E90IHsNk3zVQnEUaXj+uMOxchm3G51E
         P3Ij6jx+mv+hxfQ5Of26IyI+TmE1tBlmtLuU2fc0e6RGMixzu6yxf0bzEhF5UUFAPleB
         y75Qup8KHa8Yl8kDgdZxwcqCOz5yXM0BzSP2AYEU44qmwcZeI7W7j0Woq5m+ldqvqggy
         SXnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSJGRjZhAKjzRtmfNsiAI9RffydlQTF0m5Iab2nqtuU=;
        b=QqcrePf8mub2oSltaeQauIY33zX4Fo7l3FgwLIs46ebDvlQ2DLkcYxMLPuxj8eSwXF
         dSpYzfWH0VjzZByLaNn2heuspfOzU7GQvUHA7aRndm27HfYqdNgzbDTVxS84bBp3roOE
         CQT+ocHfNTuK7bJJe1sD2dkGIOgQ/TwMquxRzQRT08yLYyQ9BX/Y0E9hJ8mK5AmFgnSC
         mlyELCvyZXPZHekjJBl4IRgP6kpX5H+mmzfKvhJNzeWwJ5OporjClOUjysFjBgjffdUO
         WRyECI+MlYTMnV9Ndw0Rxk/GewHQR8UcMA3vSKsOPF6GZn8uzl0WA7pseTSB4l7CdvKN
         yOaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ramb2XHCN5yFD8hPRWi0Bk6qaLmEdEtcjo58KVyJq/V+dcewO
	ivxPTQ4VEmfuR1E22sMmr3Y=
X-Google-Smtp-Source: ABdhPJyuBh6zSqGO7znFlMwqtGBV11WfP4aL4HqEpQpdE5z58nilNOc+JX0WP3mnbbvErs56vG+lGw==
X-Received: by 2002:a1c:2145:: with SMTP id h66mr793391wmh.129.1630709604254;
        Fri, 03 Sep 2021 15:53:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c3:: with SMTP id g3ls346054wmk.0.gmail; Fri, 03 Sep
 2021 15:53:23 -0700 (PDT)
X-Received: by 2002:a7b:c3d9:: with SMTP id t25mr879435wmj.14.1630709603312;
        Fri, 03 Sep 2021 15:53:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630709603; cv=none;
        d=google.com; s=arc-20160816;
        b=PdNP4O6xg3PFRYVHbLnEPO6tlLThF4avADbbx5w4ztS7JMvceQXBwRrZtKuWxNVy/+
         Z+3E1+Ku+fYwxvCXtj/bLOnckbvyquT0qy7ABVvETaDJg4TnehF2W1YPbAjOx6C39myS
         jqlbHpLgSEpy6Fbv54gHwFykRtI3SHmnrOC/WuXXl0y+50aBhabPvCz5lAXq3DLXSNGL
         MicmEc0yv1N58xELOKtTZuK0hqPt9Ve61fxTBWCZb6UNFbQUKLUa7dtxyDlo3mKAhUp9
         lbfaAoqa7rU7og2Ezp81hzg+wFg9cnsSyGfp2JV/5gMwXs9w5aQPefewozwtFZYPvcgB
         RVAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s1UusdViFFBuetq7EEGyT5944Rjn0sdVUBMj3i15uGo=;
        b=OmEFXFOMZozmwTfpcsVNoWjjTxb+O7gNeHil5qTzvdB/8BDMBrqv/mH+SDCpyuao+J
         R5hP1Z9YYXgY/vTBcOWxbD5iTxuYGTNROd2KM3BGunPGRFGWuNXb7y4hNAWrFIJ6UQOX
         M/9XsjEeU3JgNNnx6DPo67zz89Eackz2Lz2Ok7doSnj/3rzVFamV2uM+zegoAWP4SD9L
         X2U7st5IfFQFZph+T9gn8bkXeP2A01howG8lmKN6GAmniYqfqXIA6lmV/SabRRtQcTmO
         JWAUCL+Y3Szo2PDqPNSdW3TLdMLU8+LnpDpBx+b/Hz6BsSqppz0myNMQzOSmWvqU+W5D
         qzhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ztib0QRd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id c4si21380wmq.0.2021.09.03.15.53.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 15:53:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id y34so1214489lfa.8
        for <clang-built-linux@googlegroups.com>; Fri, 03 Sep 2021 15:53:23 -0700 (PDT)
X-Received: by 2002:a05:6512:2611:: with SMTP id bt17mr895863lfb.141.1630709602508;
        Fri, 03 Sep 2021 15:53:22 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id j20sm71284lfr.248.2021.09.03.15.53.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 15:53:21 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id bq28so1218881lfb.7
        for <clang-built-linux@googlegroups.com>; Fri, 03 Sep 2021 15:53:21 -0700 (PDT)
X-Received: by 2002:a05:6512:3d28:: with SMTP id d40mr840792lfv.474.1630709601452;
 Fri, 03 Sep 2021 15:53:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
In-Reply-To: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Fri, 3 Sep 2021 15:53:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
Message-ID: <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=Ztib0QRd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Sep 2, 2021 at 4:31 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I fixed the warnings observed in the previous PR.

Ok, let's try it again.

>  - Add <linux/stdarg.h> to the kernel source instead of borrowing
>    <stdarg.h> from the compiler.

So I certainly agree with the reasoning, but this worries me a bit.

stdarg is truly intimately an internal compiler file, in ways that
stddef (to pick another example) isn't.

Yeah, yeah, offsetof() is "kind of compiler internal", and we end up
using __compiler_offsetof(), but in the absence of that we *can* just
do it by hand. So offsetof() really is one of those things where we
can just do our own version if some compiler is being difficult.

But va_start and friends absolutely *must* match the exact compiler version.

It does look like both gcc and clang have just standardized on using
__builtin_xyz for all the different stdarg things, and so I approve of
what that <linux/stdarg.h> ended up looking like.

But at the same time, it does make me go "ok, this is a big new
assumption that we've consciously avoided for a long time".

Nick is already on the cc here for other reasons, but let's add the
clang-built list and Nathan explicitly. Because this basically
codifies that

    typedef __builtin_va_list va_list;
    #define va_start(v, l)  __builtin_va_start(v, l)
    #define va_end(v)       __builtin_va_end(v)
    #define va_arg(v, T)    __builtin_va_arg(v, T)
    #define va_copy(d, s)   __builtin_va_copy(d, s)

being the way all the supported compilers work.

Did people talk to any gcc maintainers too? We don't have the same
kind of "gcc kernel people" list or contacts. The above builtins have
been the case for a long long time for gcc, so I don't think it's
wrong or likely to change, but I think it would be a good thing to
just make compiler people aware of how we're now relying on that
explicitly.

(Side note: Linux using the compiler <stdarg.h> goes so far back that
it very much predates all those nice builtins. I still have memories
of <stdarg.h> being a collection of nasty per-architecture messes back
in the bad old days. So I'm actually happy we can do this now, but
there most definitely was a time when we really really had to use the
compiler-provided stdarg.h).

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgoX0pVqNMMOcrhq%3DnuOfoZB_3qihyHB3y1S8qo%3DMDs6w%40mail.gmail.com.
