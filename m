Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEXA5KEAMGQEMO46EAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2BF3EDD23
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:36:03 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id o5-20020a2ebd850000b02901b783135369sf6279704ljq.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:36:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629138962; cv=pass;
        d=google.com; s=arc-20160816;
        b=b6wI0Mxzc5etLiRXuiHy/cxrfqY4a+iJEkAhwdWk4DXHpHeVUl1R/uMQPPIDG5ckQ2
         Ad0qpfCSZlzQkLChRsbeGjkFPlOFLB0TqdXmUpumIHUQuTGrdNhPB78NGJtFI8tFPK37
         mqo4I7nz22IgeY5j7UbQd//+xFmOE4Pn+LyZTVfneEGLdBWkXactCFgN+sf6i6YcYEp9
         25SVJ6FAzF0K0tN/aTMMKGmqRMPejRnYLo/jcWwiKnd0VoxezLTcxkDTnvit76/QCzDR
         R8eiUhLl4F90EjWTVp9UNUVqSct0k3pHWAmwThQ1W1G8JhHd3GYvHijCulxpagWhTRl/
         tEFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TmgBGEy0FEm36RT8glosmenopwjuf2zU0t9zos9dkFo=;
        b=xtPFRduXy2q70xPfpTXXsI2YtHK+EIrGnqtAjmz64TY80CEfSTN6YZpTFeFU2/TiML
         WjZcXXkcoVkeK9VUW++n/osjmOTr7tHdvle7uIEWR4spsu4+V7NmNIdSn23I8pffOm5z
         NvW0UxLlPtmyQKcvCc2BNaSJmWdwbpdp0YfhTzhE4C/DbG87hdJcjcaIu3kQKmrEZ6mT
         6+A/zN8xHi5IAXFm3d7oYmxpakbON1swifNhX7dhekAXF3qFRc8LbumiKClcsTHb61X9
         eY7HuTzW5dMdeme6aUrktSF9x86pwanZPhErPjLyOGVzZStGwbj0ykLxmgaybcMF7rUU
         zEOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oSXlDIiA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TmgBGEy0FEm36RT8glosmenopwjuf2zU0t9zos9dkFo=;
        b=ayPjG9H/aD5XYj+xgdST3JAonTxMYDZwoxItwh+KTlxR0oPPF85h8wHKrQMnxqLmZc
         VkFpPbEcE8O57vsLkrpbaPaBQkDCR7tHi4zDzhGV4b/wPjF+fpuKNF7Khmj6GX2FNpqH
         Rpzn1azIBV/Z5d8ovxdBsfvw8Y+u2mPhp/70xfDAzvP9af6z7aJc0yeUosugJlbntHwm
         sK8W1/9hUIbcM8ybl7POAQBJ+rX9ssEFqZ3iDZyAYv6oF/zdXe8F1mtCjmEBc7lUhxIi
         M/CxsrSxnR6v5vc78ioabvMhUVkgNHyN8LFJOs56YH5UoyYoCD3WDDnpHci6k4whTIfK
         mp/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TmgBGEy0FEm36RT8glosmenopwjuf2zU0t9zos9dkFo=;
        b=mekCOc0dF1NpUV+SGYX6cdcb0MsVJ2Ap87yearm7vR332qz6qNw4+rrKKvE0TiJvUC
         REI+0tjCf2nIrrbc9yj5JRBwMlGA8xCrf6oZtBdkBZSjEAw9z6SWyf/OEJAx0e7dal/U
         cuin8elhGpJgAt7Hro4ipjsVrH8zjEtmn533YzfEsvEcFPLBC1e3qceIwN6PfbdpwZiq
         DjMiK40bnQaLEo1jzHv2tbjg+iDFc0LRW/toP0XGYY3Yn5h1FzLL1vzkjxk7a1xd7hye
         qnXUV0Gv22Y7l0/BwJTlvuUnOBFuqyaK3nSpYTbZeVsYy+7evwXA9uCaiFsjZKw7Vi5F
         Co1w==
X-Gm-Message-State: AOAM530Lo1V0wKnBPbwEeETDDrd+OQuKI0aWfumtg2fEetDDdsaL5ItI
	1f+d44daBvgXNRot5Tz0+sc=
X-Google-Smtp-Source: ABdhPJyTm9fRgnq8xxIfiBrxZiyz3CodY4j6JNMexHoKyCx3qnYOcpm3L9hrUOKSBNg7IavUpWUzrA==
X-Received: by 2002:a05:6512:b1f:: with SMTP id w31mr12439696lfu.617.1629138962524;
        Mon, 16 Aug 2021 11:36:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls1566733ljf.7.gmail; Mon, 16 Aug
 2021 11:36:01 -0700 (PDT)
X-Received: by 2002:a05:651c:178e:: with SMTP id bn14mr36236ljb.202.1629138961407;
        Mon, 16 Aug 2021 11:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629138961; cv=none;
        d=google.com; s=arc-20160816;
        b=zuL9aAnM7QIHXO0tvpUs+qoLpvVJY153KZooGoNC5fvdeGR50MrKzt3Np4zdt9GABo
         LCyEsffeR9kAe5hmxR6RVK6l1OqVJvhq/XvA/v5KOqxbesasbe82eGtVseYpTzmH4tfa
         f2jWGr6Y5bKJVWk822hSL9q+3tWvFMLVmCWqBAZLW/HUnigRBAAtuBJXhlS93YSPghtw
         +N2ZQaCxPSwgmSur6Eq2d03Hl2Ai3I/EVs93KvmH3sShZaJCBaHHsBxTW0PHSrS86G5J
         wLCDFzFJr+wrhNSLYef5kghUM/CGg/Us1y1wq10PB+UKi2fj80FvBdsYgkes35BmHhQ7
         Hdnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hB23ERGkCrJ9OQnaruluv7ZnEnGMku+yMsIge6kF67c=;
        b=bk8PTRqR4Cyw9k0wxdCkSeyRiQThZeyZ61AybGXxJRyaNwxtROoz+HoxK4xYu+gQ87
         iA6Z4GlBoTijOV0bVn07pIY/opM2sBzfe+FvIo/E1xb/dQQIJTu7wmCg/whJYDRW+BLE
         OAXP4geF/d9Zhfzu00JI5C2oFmVD5cKcES1YtSxvAhV8s7LGBCj2LQPKqklufT5IAQV8
         MTxjVNt05pQGKf29S8xEu+Vke3C3RBzHrUXdmHdyObpR1fEbwSz67RCK6dJpKd6vT3IU
         KPRA8ziOw98Yrk3Vsw40jih2Xm9VN1KRDdcDminBFrFEL3wYtnhUcZuhos3u3RUYvVRQ
         X6MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oSXlDIiA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id v2si2815ljh.8.2021.08.16.11.36.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id z2so36412575lft.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:36:01 -0700 (PDT)
X-Received: by 2002:ac2:4e8c:: with SMTP id o12mr13094092lfr.374.1629138960831;
 Mon, 16 Aug 2021 11:36:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com> <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com>
In-Reply-To: <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 11:35:49 -0700
Message-ID: <CAKwvOdmpTt1PBnvo3RFkYnd5O2JTW7DTA9sGQJgvsDOFkVt8Ag@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, Vitor Massaru Iha <vitor@massaru.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Daniel Latypov <dlatypov@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oSXlDIiA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Fri, Aug 13, 2021 at 6:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Aug 11, 2021 at 5:42 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > --param=allow-store-data-races=0 was renamed to --allow-store-data-races
> > in the GCC 10 release.
> >
> > diff --git a/Makefile b/Makefile
> > index 027fdf2a14fe..3e3fb4affba1 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -844,17 +847,17 @@ KBUILD_RUSTFLAGS += -Copt-level=z
> >  endif
> >
> >  # Tell gcc to never replace conditional load with a non-conditional one
> > -KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)
> > +ifdef CONFIG_CC_IS_GCC
>
>
> Can you insert a comment here?
>
> # GCC 10 renamed --param=allow-store-data-races=0 to --allow-store-data-races
>
>
> It will remind us of dropping this conditional
> in the (long long distant) future.
>
>
>
>
> > +KBUILD_CFLAGS  += $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
> >  KBUILD_CFLAGS  += $(call cc-option,-fno-allow-store-data-races)
> > +endif

This report is confusing:
https://lore.kernel.org/linux-mm/202108160729.Lx0IJzq3-lkp@intel.com/
(csky gcc-11)

>> csky-linux-gcc: error: unrecognized command-line option '--param=allow-store-data-races=0'; did you mean '--allow-store-data-races'?

I wonder if cc-option detection for these is broken?  Perhaps I should
not touch these other than to wrap them in the CONFIG_CC_IS_GCC guard?

(Either way, I need to send a v2 in response to Naresh's report as
well. https://lore.kernel.org/lkml/CA+G9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w@mail.gmail.com/
It seems that -mfentry wasn't implemented for s390-linux-gnu-gcc until
gcc-9; so rather than remove top level support, perhaps a comment
about gcc-9+ s390 having support will make grepping for it easier in
the future).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmpTt1PBnvo3RFkYnd5O2JTW7DTA9sGQJgvsDOFkVt8Ag%40mail.gmail.com.
