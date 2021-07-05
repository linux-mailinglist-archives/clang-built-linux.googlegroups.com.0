Return-Path: <clang-built-linux+bncBC2ORX645YPRBF4RRWDQMGQEKBXTJJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8603BC26F
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 19:59:52 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id e24-20020a5d8e180000b02904dd8a55bbd7sf13994468iod.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Jul 2021 10:59:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625507991; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZulD0Wr3k47DvngD0JTvfK/iuuA1uFWHPOZ9c+owDGzlo3v7+sWYHYwCMXF2+/Y8uD
         HNLhYRHxNoLvB+jKXrxuknSb/uSRSQE6KdzfwlhQ4zS4eRX+510NGlKH855rM1ESrI+f
         q8FIJtpVNZMlUBsxP7ljD6+Dkv1VZPeGtv6oajQFi31HR1+/ESCrO7oJ45i8msR8peLj
         N/GzZyTXUEnpueylRQsXB9Z5a/bHQWp7du6ciXepfJl3jbhgrk8D4FWTQl+g9IMY1FJ3
         Et7d5KU365d7zVHGyp28sLf/rEI54OMF62YN+4jpyULekX01sTp7PGil+doZtGXcFpnT
         wWAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nxNIXW/Xe7XOReJ1d+qHQEF0rl4Vf8i1q54yniRuLS8=;
        b=T3aK3asJs8B70Z8neLwWlWh52NP/mXJOv0bdQ+NTkewy6hC3P5PCL4i2co4JJdwPVJ
         gz4TOVSqYlRd6BVOcGJ+7ZFctGfBC6VJRxtzYnck3BjRExmRJpGIK1hw1/BUqHfQj3Bk
         sV6nAG6+fhiBDS9R6FLOFxrUq0Nn+CBWDMSSMZ6J/jzGtlhG9ELghXPXxLXV0Aq+3xNa
         WfmNbMLQCYK/G14TnXjO+3934H2Qi224pt2uhs0Eq3bLE0yX/cDX5tFoD4o2nfsqOL9K
         c3iubcKTMABc72vrECbIpHbaNazXPN6w7bpFI1i+YuZ9/7qT5BNnM8pik7dVRPHXuh3o
         D5wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EXqSe5LB;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nxNIXW/Xe7XOReJ1d+qHQEF0rl4Vf8i1q54yniRuLS8=;
        b=PrTsu/aDOg9CqRUmVQ2x9zOz6dFiJn7161WQ1XpPZz2AlP99Uh0hEQ1yA+usLGdLst
         jh2CUWE++XRZEvSwmffE6+EsRG7lYvhaLqebwFvf7UoLyPrIFbXWiGlgco38+ejjCR+1
         y9gvAb/0LuDC545t14pV1rU4/GZRrEyoAH6nIE7dNrfADY0FZzYsMWnAzfpSlZb2qDvp
         h5o6aW3brAm3C7vIZ9hxr0j7SYSp75XpkIc5LeJyMjrOIngJF1xdhVqECQBLrk6gBVRV
         nLTSOibCp87CRPj46lRYL7CVtTRLafFFezB0Tv6+yzVNuL7XQC7qTWyOvtwh3Toiim9e
         gPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nxNIXW/Xe7XOReJ1d+qHQEF0rl4Vf8i1q54yniRuLS8=;
        b=HRQ82v2+Ugt7/seiA+y1X0jOK3QnUAfJrvJ0BZNsFkPYDlLvBCqzDfdww6KkWtm52Y
         bVJge5G8g/Jdt8qCy2AS5U9STEctM6+mBb34sC2p+Uk87JGrD4U5ytDi3nGiLwvCnFmV
         rCO1NMb/fecL6tuUygLEOVCscvNesC4cGXpUNW50i9SrtzSvvD+pImc2muNQ/KCjosaq
         riSv3Iu7AnTbiFryV7S/0T+FjPCMwmkTU2HoRUJF0SAUC8hk2EoN5mCD+c4bt6vupJad
         M+C670wiJyaxsCu56dFGiAGR/BkBL4fmPR2to1JnyMHL2UFDT4iRROLta/RgSaS0HotY
         aGmQ==
X-Gm-Message-State: AOAM531XIPlx49m1pO/3ClMSOWBnOzILVUXJ5hHdoCDMgYSt90YTkrwh
	mJcDYwPRBJR+aXW+5c8MCbo=
X-Google-Smtp-Source: ABdhPJzY/xc6rwfb7iGB6anoQnGR/R43wFbFRzCsq8xMdxm3A98bV85P7OCg6sfgceDcOOQADZV5+g==
X-Received: by 2002:a5d:88c6:: with SMTP id i6mr12940843iol.75.1625507991265;
        Mon, 05 Jul 2021 10:59:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:39c7:: with SMTP id o7ls2784379jav.0.gmail; Mon, 05
 Jul 2021 10:59:50 -0700 (PDT)
X-Received: by 2002:a05:6638:3819:: with SMTP id i25mr6894857jav.44.1625507990896;
        Mon, 05 Jul 2021 10:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625507990; cv=none;
        d=google.com; s=arc-20160816;
        b=OMNfXfTtIvY0OlheH1d1leGcean8NuOju0vP0be0XTNx2bD9M5XRrFbUkOe/yUZdmN
         fAofYo2FbHG8t+AYMSBLRrwjaNS6lgms/6ISwG/wPrpYPuWN9PGwWrh/NsEvKsu4v2Tx
         OZxTRcyaWOsI0sXH387QbewkMEXb+ZEjiY5SIYqkYV2r5p3sfxc7ccFbx3ub/ntkspkY
         PxltnRo1CKm87NqXma++f5KTSGrsEEuOn6OAWKJ2bv5mOM38bHcRp/e29npyuYVurAx/
         QsP+IwuCn2e3cqkiRz5y2qhlCi0seWh17j/Z67DR9U8R7jt5Sp+KC5GAhyAORKyP5Ftd
         wpYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gJsboDNld2P6AbWlug6aDXd7eLnwEy72n526BJjJ3p4=;
        b=go3xErlbICNLy8RcjUdot6J9z8FXRS+lukrV8df08NXMJuyA3htRqPg8jGF2WO9qVg
         kZl06kkZ0Fz9o8JPFVvboLD4ug5rYRnWWAu1nycyYwQ1tPr67u+INtAxFAr+6DNg4Dor
         pFsjSLEEJANb8wCr/9u44F/25lGf1CbKZ3IxUsAf/1gWrNNPzqPUDOlbW06UulrCOtYN
         gcDB/C0mh1AkRfW7c2bGSwIp/LyHOiqGmTU44SKTRxwAbHvk6Up/7y3Sm0hTXamM9ZKn
         kTzm4XSoyMLbg0p2wXvPCFMo9ijyDlm4LIJMT2vUM7IsfQ4add6zf44hPPbMJ97JOKAu
         8oyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EXqSe5LB;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com. [2607:f8b0:4864:20::b2a])
        by gmr-mx.google.com with ESMTPS id x4si1377212iof.3.2021.07.05.10.59.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jul 2021 10:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2a as permitted sender) client-ip=2607:f8b0:4864:20::b2a;
Received: by mail-yb1-xb2a.google.com with SMTP id o139so30248710ybg.9
        for <clang-built-linux@googlegroups.com>; Mon, 05 Jul 2021 10:59:50 -0700 (PDT)
X-Received: by 2002:a25:7b86:: with SMTP id w128mr20063583ybc.273.1625507990140;
 Mon, 05 Jul 2021 10:59:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210702032943.7865-1-lecopzer.chen@mediatek.com>
 <20210702032943.7865-2-lecopzer.chen@mediatek.com> <CAK7LNATqZdZy9mH2qbFJPGs81a0fEFGPutqmvrdz1U51zOvH3Q@mail.gmail.com>
In-Reply-To: <CAK7LNATqZdZy9mH2qbFJPGs81a0fEFGPutqmvrdz1U51zOvH3Q@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 5 Jul 2021 10:59:39 -0700
Message-ID: <CABCJKudYQV6Nt=Qq+zY=9JF1WmLVLnx+--3mJA9dkhLMhMvuFg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Lecopzer Chen <lecopzer.chen@mediatek.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kees Cook <keescook@chromium.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, yj.chiang@mediatek.com, 
	Michal Marek <michal.lkml@markovi.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EXqSe5LB;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2a
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sun, Jul 4, 2021 at 7:03 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, Jul 2, 2021 at 12:29 PM Lecopzer Chen
> <lecopzer.chen@mediatek.com> wrote:
> >
> > To check the GNU make version. Used by the LTO Kconfig.
> >
> > LTO with MODVERSIONS will fail in generating correct CRC because
> > the makefile rule doesn't work for make with version 3.8X.[1]
> >
> > Thus we need to check make version during selecting on LTO Kconfig.
> > Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
> > for arithmetic comparisons.
> >
> > [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> > Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> > ---
>
>
> NACK.
>
> "Let's add MAKE_VERSION >= 40200 restriction
> just because I cannot write correct code that
> works for older Make" is a horrible idea.
>
> Also, Kconfig is supposed to check the compiler
> (or toolchains) capability, not host tool versions.

I feel like requiring a Make that's half a decade old for a feature
that also requires a toolchain released last October ago isn't
entirely unreasonable.

That being said, if Masahiro prefers not to rely on the wildcard
function's behavior here, which is a reasonable request, we could
simply use the shell to test for the file's existence:

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 34d257653fb4..c6bd62f518ff 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -388,7 +388,7 @@ ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
       cmd_update_lto_symversions =                                     \
        rm -f $@.symversions                                            \
        $(foreach n, $(filter-out FORCE,$^),                            \
-               $(if $(wildcard $(n).symversions),                      \
+               $(if $(shell test -s $(n).symversions && echo y),       \
                        ; cat $(n).symversions >> $@.symversions))
 else
       cmd_update_lto_symversions = echo >/dev/null

This is not quite as efficient as using wildcard, but should work with
older Make versions too. Thoughts?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudYQV6Nt%3DQq%2BzY%3D9JF1WmLVLnx%2B--3mJA9dkhLMhMvuFg%40mail.gmail.com.
