Return-Path: <clang-built-linux+bncBDE6RCFOWIARBVUL4X5AKGQEJG7PXKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFFE263847
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 23:15:03 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id t9sf1443132ljt.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 14:15:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599686102; cv=pass;
        d=google.com; s=arc-20160816;
        b=U932zOOOAbmFldtAaxOJvv7TYZEna6BX1U8VIP6jFLiY1akut/4aHN4Xa+riD3fAQ8
         wB+FoD6vfa5khFu61sxHFiaNnIlVigk/YO0ugImRsxdt5kZE7mW6CWUMDvPLi/MX6rUC
         NlIccN/Yhtnpuq7nj53mf3sPTrsCyMgf788XwAqqti7yC25ts+ywc6W04/xBQ66OEGzs
         D7tuQiEUUFHXqFVXfmKkXQzE9aR3EUNzdADWME5uE3NORV3EmRNIzpoKWemcJe5yJucN
         nBvVXgl3aIwKzuAREeplYwrTX72cW1ciFyKbQmF87sG2UZuqhJ31AC/XgfkjzRU7nOP+
         YUXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WJtb/x6O8Ud4+1DsvEMFTy6kAC5XACPkh17w/0jkAHQ=;
        b=D4Ar/Uk5AVRSBC/FH+VR+CzcZkCHYPTtjoqeHD4ifKMisTGe9pLwNAPQyYW9OOMVno
         YGPCsNEgMDaVrOQiIt2//X8UAoqb+kBWXBrZtNwA3l1/eV6MZXNWEZ/aBT4ly3kJ21m5
         Dqp2+gzZlvhINEIrAGAqI7qr7I8v3QeiQww772D+mZIKmA1bVqnk3jZ7SV+Q5DmSQcCx
         F1p40SxDZhRRs59y7CKOquWqVBvTRCbJmMP26VPUBcN3405gb3Q4lI/pwSZLwIwXCSqz
         rUyd1w3AM+iDfSyvpUimA/SYgVWjnoEsRH2tR+cw00/RFx9UkHbOrR4SntP7JciT/Te9
         DbQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GHiLQ9Js;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WJtb/x6O8Ud4+1DsvEMFTy6kAC5XACPkh17w/0jkAHQ=;
        b=nGqw9l9sL4YVAGoDSEhb7+Uzryt8sBpYNCNmMdq40GtvUg4onyaiJbX4dDGMsoGBiu
         4IshTrNWeyKufm8hUjpsRd+9o82f9bGmsLMtJlHa6bbldU0gbSNWgdyh//wnYIf5Pzvg
         A3VP64bfGiG8fSHL3wiSCtPnPzSAxbfwSRnt+4O505pZfJPHoVwXxPdSuEg04Fo5TELW
         DlF6FQvBg5h89lRAYXnDyfL42q7TrFvx+kbwLoVZSiwD9pE2M3BCfe5FtcyqL0m61e80
         nro5+XOw0OEyZirCWgdwOPzwJRjE4giRIYuKr/GeBa0nvIZpIK7jhXjwj372KiI7TB01
         dayw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WJtb/x6O8Ud4+1DsvEMFTy6kAC5XACPkh17w/0jkAHQ=;
        b=BW7wZhvJSPRnNU9856sDC6kSmLXfCt23s34u8rl4zOGfP/OFWPMvdeWmXUG3yvuLlx
         U7ExuL4bKEcqzU+H8GPTdDKWEFuEGESL8TfY/o/0rePhL50Yg18qVqkGZYhHwRGhPbmh
         IZK8GQKKWPxBodoDHipJXQ/iLzlFdHOBQvrAlE32Va1Tf/N2fB0u7b4YzCx2CEEP1uYj
         WPLkzKzZQyVtxCSzfh0yWxyyFwDwM4uDqnKZuepaXbdDWclNqQ11yE1BK2EX57N4IZ+Y
         cBPwaIxrKDw1nAky/TTLN+6IxztJWAoFUVgNttM0qw751xa18t6sYs1d1CrX4ug4K3I3
         jQmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+uGYkCyzjOFvLPCALmgXvaNDgJylKg1FQpbQt1AYHErwA4ETw
	Hat/uuna7tAyjIwF+re6QKs=
X-Google-Smtp-Source: ABdhPJxM5tJMwGPo8oSWTFz+W4J5voHPVpcbKet6et2P6IPDeAKFTpHNtIFwQtC/fnW4NHw5eEkbzw==
X-Received: by 2002:a2e:86d3:: with SMTP id n19mr3017091ljj.368.1599686102546;
        Wed, 09 Sep 2020 14:15:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b1c5:: with SMTP id e5ls932513lja.0.gmail; Wed, 09 Sep
 2020 14:15:01 -0700 (PDT)
X-Received: by 2002:a2e:911:: with SMTP id 17mr3068968ljj.207.1599686101534;
        Wed, 09 Sep 2020 14:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599686101; cv=none;
        d=google.com; s=arc-20160816;
        b=RHcXdOT0i+8nBYWMvKBUi0MtTSCHy3Ejfovi4w2hggYX18l2brIa5mEdc5oKjAKgrM
         X03W72iBwZRGG5HwmqtBLxEgwRC8TLKUXh9pYeewmA2WTOQuMfv/wWBY5BnK5QCSW705
         mWJffN9Lnfluszyyf6MpRNL/Uc1FBJGKr4yOYRnMoAFodq10HibsbbsLJp6dZDIwpyOc
         gwWYjQgyiLedxltirC8wZJ109n6DQB4neInTSjGvkRerK/S2aD6ChXULp4ledlCLPC6x
         arK+CM4BJfPSMR1JrOMHDxSByUQOOmd8Mo6pNJRFxqA1+SWgFf/HzmIFWXv+LyD9Ijmc
         NmsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Gv25JaAcptCOByaW7dvNTLRhMIetq64t57bcKSZpDuY=;
        b=hSXKa20hp0AJFjOgVt5cFppbbhq8xqpNGGQuk40xD9tVibHiySqWUQtjeJqLdtKY8x
         6HqHc4w8Ddr0PE2zPkzoLz2KujLx+icXU537XEFezqaKhjiEpow7/O5nR+cpO0d3/BM5
         zNxIV9j4RdRGJn6cpexBdcZtuo4QTmehsnPVciPo6BXn0spqpsDPkLEzyCzpwuzionPc
         PkfzRVokFl6m3z/oDEHf3LkoHsNiMPWj6RaY/prhvGcKtEPX6uAg9XpEefoSKiRq5xzx
         nI+pQhuPHmo2w+ak7yCcXQyRo/41uvn5MTZNNoFPRnzuyTjwXcaXPooqyKT/zt+lEfWT
         HUNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GHiLQ9Js;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id r16si119823ljg.1.2020.09.09.14.15.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 14:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id y2so2368064lfy.10
        for <clang-built-linux@googlegroups.com>; Wed, 09 Sep 2020 14:15:01 -0700 (PDT)
X-Received: by 2002:a19:c7c1:: with SMTP id x184mr1107421lff.77.1599686101131;
 Wed, 09 Sep 2020 14:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <202009041955.peRlCsZZ%lkp@intel.com> <CACRpkdaZzNe43q4rtAFnh1tv52xpEZ-6L9a9Be+r7+_-duE8+A@mail.gmail.com>
 <CAKwvOdkXb8xmdPJE=-hbdwi14OiUWDjZdyag7UPLE7LXdQ3YfA@mail.gmail.com>
In-Reply-To: <CAKwvOdkXb8xmdPJE=-hbdwi14OiUWDjZdyag7UPLE7LXdQ3YfA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Sep 2020 23:14:49 +0200
Message-ID: <CACRpkdaXpkMxkfGhREvkf=z7N3aeVGQUi3pRG9DDew8pHGS_tw@mail.gmail.com>
Subject: Re: [linux-next:master 1713/4903] drivers/gpu/drm/panel/panel-samsung-s6e63m0.c:322:12:
 warning: stack frame size of 12576 bytes in function 's6e63m0_prepare'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, Sam Ravnborg <sam@ravnborg.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=GHiLQ9Js;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Wed, Sep 9, 2020 at 8:29 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> On Fri, Sep 4, 2020 at 12:40 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Fri, Sep 4, 2020 at 1:57 PM kernel test robot <lkp@intel.com> wrote:
> >
> > > >> drivers/gpu/drm/panel/panel-samsung-s6e63m0.c:322:12: warning: stack frame size of 12576 bytes in function 's6e63m0_prepare' [-Wframe-larger-than=]
> > >    static int s6e63m0_prepare(struct drm_panel *panel)
> > >               ^
> > >    1 warning generated.
> >
> > What can we even do with a warning like this? It's utterly confusing.
> >
> > Whoever enabled this warning need to think seriously about how
> > these things get reported, to me this is just some unintelligible
> > noise and I even know very well what a stack frame is.
>
> I agree. I ended up writing a tool to debug these:
> https://github.com/ClangBuiltLinux/frame-larger-than
> I don't have time to look into this specific issue, but it looks like
> a randconfig; if any of the sanitizers are enabled, it's a common
> issue that magnifies stack usage.

Hm thanks that got me thinking.

For some instrumentation like KASan we (on ARM) double
the stack size by increasing the order by one. I'm not sure
this is reflected up to the compiler checks actually. It
would report a non-issue for an assumed default stack
size.

Thanks!
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdaXpkMxkfGhREvkf%3Dz7N3aeVGQUi3pRG9DDew8pHGS_tw%40mail.gmail.com.
