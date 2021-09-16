Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQFFR6FAMGQE7ZCBW4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 243B140EDD8
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Sep 2021 01:26:57 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id l29-20020a50d6dd000000b003d80214566csf2749392edj.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 16:26:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631834816; cv=pass;
        d=google.com; s=arc-20160816;
        b=CY1GDeNtN6ZAYnh2jutDCgTUUWiuPuIYg15k43WlEtYNjTn+dTf61u/tNpPUAmdu4L
         jfi0/KGNIWR7ukGBsdmpYeqx5x+v8HzMsq6Z0g4AvlUropfQ2xJ6oCci/2zSOWYtr73B
         RJgVGkpi3Z/5DQkLQUuLLXnYtA910g+/xRoaKp0Tj+SjyQTLYDtQfS0qIm7cBRdeiv1D
         alJJqOaSa1nApOyjVoWi53hatEkLw2uFv/2lvRmtOMgZgNlThFlDq4NoKH6CiSnopHPK
         Mw/G1MJ4puVjCBKmxAimOAHzuucm8oMUVtnZIw86bK5O6Wyznge7MAVnc2xoUk0pS8aM
         f8hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h3SpgU64h3XtrUFYQxkzOq8dnLAphyhQpKO9IyBZz5U=;
        b=hya6T2QSIUQqmc8zO7+PYju8VJRhDXPM6Lzws58WnPLMQUexgEaI2dUUIdlSozy+DA
         fH5TtXmep8C++KWgZclp8Wv3M8G2+REwKSVWqJwcDE/C0e3Mw69yYYRBWNAk2aSBsxL2
         +puOLASISQcbbONLfjuwfmRZprAPiMGxbZLqdHCwwCoXeGDP9wrQ790NHsPR01u19qJy
         YYfrSaBvg+KiJQ8DE8eK7AYo1xh3FhhlS4a8h0xtp9CLeSSBa4lsokeOQehhSuROjP45
         Z+ggF0ckMJDEwEop7qrwni4Tfr8R+jUA55WE3EEA3sK74RZ2N/wzrarXcPLA+ez/Rd+C
         oxDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="iI1AB/uL";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h3SpgU64h3XtrUFYQxkzOq8dnLAphyhQpKO9IyBZz5U=;
        b=POX5es27xUXNxqsCpSRxlhyBBkJ9AOePxa6eak4A6VfcWUJuonffOdMBVOeFX3ELho
         TJq6AoScOWBoBOCRH3Bj5c8P2lDXs0zjBOSQoVjcRFd3utaj2S2voPQ6A46d4/poVET2
         3KKN9tIWWaGc2naWktFGvsdRS2R/IFv4/5srHHW+Nv3P1ZnQlRgM0Hz06tBrORS6CvCd
         liVFFpoUVDshPArPjKXgpoP2Ymsxb8gBq8YDJ1z24UXaTn/5BOPisTS6SWggyJsoeHLL
         SyiVpM8sYNdUvEQIMgahGp74KKsaQVTN+kA7YUAD8DzXbeo3tYH+Oot3BEqhR7usgpSe
         1TJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h3SpgU64h3XtrUFYQxkzOq8dnLAphyhQpKO9IyBZz5U=;
        b=LfK+ITyl/1mEpBQ52UH5CnaaFGGbd2X4A/mV7nDAIKu4Q3raxnzLNEL81fwC4yi6kN
         lX4HxpRssHXiHbLhecZppWtGurhfASDuMB2RVH1FkujJOrxFCO13xDFnYNoPY2J4UY7K
         Y/vL5S/LsxqspzvkomOn1z7M4+l5BoIm73D5aeC8i7pedu5i2iTZOyYxslUUB1Bwlnzd
         7PhFn6Nf2qXpxKAC5bj7iBWe4n9zznoqj/su4N7mJuwnnKvF4dLB4EwUi0dS7YRwVfu1
         OCVWgbnJ9woNdR+2DmgnIFFyxmSLP6xbnukXRVNwW34EXEIkDXc9yTh0UC8fYrSoZGag
         lrCQ==
X-Gm-Message-State: AOAM533/btEL1UM2MZo8esh/JM2Wqc4j1FaNIm8jIRaV7xhNp1zVmFe1
	eJNOAZ7esioZRK9tjeNAdBw=
X-Google-Smtp-Source: ABdhPJx0cGLjFc//EuznrEVRb/FlBkMJA5bdkAfNe9NKZK+HTyT7qiqNYoQJTFHJISu1/qzQGsexYA==
X-Received: by 2002:aa7:c9cd:: with SMTP id i13mr9414563edt.178.1631834816828;
        Thu, 16 Sep 2021 16:26:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls5305208edt.1.gmail; Thu, 16 Sep
 2021 16:26:56 -0700 (PDT)
X-Received: by 2002:aa7:d9d7:: with SMTP id v23mr9150305eds.248.1631834815919;
        Thu, 16 Sep 2021 16:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631834815; cv=none;
        d=google.com; s=arc-20160816;
        b=OMW2qs34SrFEQDNSX0MQqhU/6RRECqz468pAGEwrLznSfN+d7pSJOf21uMMhojyy54
         uFrjJUvQh2/mGdScYj66qWi12S4UokVSBoixDOy9msoLCOabkHLJrtLSOzCoPoQRNF/R
         LXgSJn+d3fkvUfg5B8biTFMsZIgNppI5YOXtUc+pICIB7xpw9okdgjzZdw+/vozm+yaZ
         taVpjM0ILhStqf3Tw6vMBmLS+KJ9G19ezoWx8rL/jq8lBV17vYcM6FqLAEnB/wjDoYAA
         Wnl2q9wrayK2rZ4Ak4jbF1eHmuPvgs4pvX60o+j1NnNJJrjSiCddgSOm6+Yx1poVsyRs
         Wohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qGW+TlqgmksvmhUEkFUHjtdzrHaBOdCApfV4N+CESfA=;
        b=yZIJtOcAuUmvh40KYxAgCY1tv09NebiFagy6y2JqKiLg3wprw62weuNxOgoAxm4mWN
         60eaaHe0gZEVp+VfSVj5H/o+5m7VfSqfRTNiwJUn0/W9zjztatEKN918guI/j2PQWcfz
         pDn/v6wr2EHuuhcnuFuL7vnBhnBkm9da5V1WrlmaP+BUDOEPdf9QN2XblmduSH/N3De5
         4jq7+uCE4akocVrcEG2gMgG3A+mIQakdqD6M21g7K80G/B7t9cDtTuFTN+rxwusYIi6Q
         fE1ulijJ7Y0xlTyY8joEfssUkUVz27FRPhRNDZwp7Vn5zcVueGGJVpWDAQiS0Dd0KME9
         gaVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="iI1AB/uL";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id n10si340003eje.0.2021.09.16.16.26.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 16:26:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id i4so24981788lfv.4
        for <clang-built-linux@googlegroups.com>; Thu, 16 Sep 2021 16:26:55 -0700 (PDT)
X-Received: by 2002:a05:6512:3b9e:: with SMTP id g30mr5707949lfv.651.1631834815384;
 Thu, 16 Sep 2021 16:26:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210830213846.2609349-1-ndesaulniers@google.com> <CACRpkdap==EPZpAggMmd0XN1J-DwK=OQu3oGn-V=zPOaq5XnHw@mail.gmail.com>
In-Reply-To: <CACRpkdap==EPZpAggMmd0XN1J-DwK=OQu3oGn-V=zPOaq5XnHw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Sep 2021 16:26:44 -0700
Message-ID: <CAKwvOdmmrxs2eMqvUm+Zg6Lpin+9BoQRPh9CF3Tdnc-+9eeQSw@mail.gmail.com>
Subject: Re: [PATCH] ARM: select HAVE_FUTEX_CMPXCHG
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, llvm@lists.linux.dev, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Andrew Morton <akpm@linux-foundation.org>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, YiFei Zhu <yifeifz2@illinois.edu>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Mike Rapoport <rppt@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="iI1AB/uL";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Thu, Sep 16, 2021 at 3:40 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Aug 30, 2021 at 11:38 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>
> > tglx notes:
> >   This function [futex_detect_cmpxchg] is only needed when an
> >   architecture has to runtime discover whether the CPU supports it or
> >   not.  ARM has unconditional support for this, so the obvious thing to
> >   do is the below.
> >
> > Fixes linkage failure from Clang randconfigs:
> > kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit: R_ARM_JUMP24 against `.init.text'
> > and boot failures for CONFIG_THUMB2_KERNEL.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/325
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > Reported-by: Nathan Chancellor <nathan@kernel.org>
> > Suggested-by: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> LGTM
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> Please put this into Russell's patch tracker!

Done!
https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=9122/1
Thanks for the review!

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmmrxs2eMqvUm%2BZg6Lpin%2B9BoQRPh9CF3Tdnc-%2B9eeQSw%40mail.gmail.com.
