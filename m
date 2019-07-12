Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBVW4UPUQKGQEVDN36NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5957F675EE
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 22:32:23 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id d18sf8612369ywb.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 13:32:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562963542; cv=pass;
        d=google.com; s=arc-20160816;
        b=tC/BYiKFH0yAROI9KjEI9A7EN+aGJmGO12Wbw9KkjvK+nVccmsbNnADo+/+MJFJPKF
         MP7TXtxElHoTxPKLb1Lu+QscJ6HmBry5HqwFRUDAoxlDFZR9lz7kVPjXhjnzAwQDODb7
         3mrWzJzNkBbCqeojjj2nz9YxjWbq33vhJOCxiC8N9bKHyvFSKTR1brjsfWQLxYx+PdEi
         ZWuRBLYbJMQjGJwnKIXKSQzz9CE2WlA8CZHl1XZUUDI+HiIzXnZBV/oSqo9I72BJLU87
         h4gIyld7mfxf2mw2mRZSEzacxJkAN9ys2QCoBtIDuEm4PJmGcDSNdwjZHOIt5CGKqK9a
         nCCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lOkEyPBB0FaaVpgqHen5rp28XbkXELnXl0ChQ4G/Qsw=;
        b=HBLLcVBwZUAlS8jB51h+4VQsZVso3YT8F2Hi2+xXnb6Hmw+P/31Y6cpZoJmA3R8la0
         XDShUEe0mVvp6IQelj3AMO3R+Poiani6SE+rl7T+oSXNg7qgVCTS0HOdp03aweS1n6T0
         r8Xg4jUCQ+kstcjNB3GNU68KJH5WbCiXtX2Mu5EJpi4YfhGmmvSiGEiY1dZO0ANhfZdI
         fbLBAckA79glhmHZ84mufK7MguJAfGg9d7nuDHHcu0JZsDyyQYEJYYuoon6Mq/SofmPb
         muS/hpjk1kJR3xqzAY8X/QyZy9TrrJlAma8c+I0Cv7kVq+RhH8vYXCs94Ytc2FamMrkj
         wiTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lOkEyPBB0FaaVpgqHen5rp28XbkXELnXl0ChQ4G/Qsw=;
        b=pPThlN3Y4IY1jrNFY9cJ71HEKlbk6nvtoc+op9eNgawKpJl5TNZxxI7GTFjTUJhyR7
         /HP2j8H2TaMIQXDarTnzxN0sDasmLAKo7P2Fc2kLmnVEyd8ycjMTm7ZM7I932jLvpFuY
         HXpHH0ra0wzV2HxM7vTZ/4yOgZIpWPgAg+mgs04+oOUvQgtHuSaFu0DQPC0lz/HE8LwE
         zXPLMM5CSV0kx48FagguGLfYjXoFd1xOo5ecHT7GIQKIZTNwnHmwRNg0fdmytmtqn41T
         Dom23jK6liKX6sMP8xrbNmL+xPTRGDTL+0EnCZzbVzJvXhzSpE9TPImDopl00qWl3Tf+
         LKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lOkEyPBB0FaaVpgqHen5rp28XbkXELnXl0ChQ4G/Qsw=;
        b=ANfvZKyUs3kbGRTNoHnupPASM2aqHQR0o5UmV6WVeMMncGimLdY2BCki2nK7B0KH+A
         5+JBJrIiwXhgdKCUEY7WRqE3Qgimh75JmPnUxaiJXyf+HaERkk3NxjXlHI6w8STanIug
         OdPmkC2sXR4bVzTXDxBMjMoKmq4rD0LGtLA3C8m0c67CZTe7btVftclpHNtCV4ENpfQ6
         O/9KC7X1MrCtcVPg4jeM5ECN6H8oPb4mZq6/8/eB5wiB1n2dLszOP2CvpTHznBwAU2d/
         U2+wJVOfgzo03loO4m5DnpBth9lPtYYIB+ftctMJdY+aRR3O3ljDK9BnzeZGPzbe8qCZ
         8NHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXX7mF+sMd31q8cBMYSLJaEigPzZz22lfEwGSgr0x9iBwfoZi+q
	wWJdnREfLtVE284HRRweV4k=
X-Google-Smtp-Source: APXvYqxmEXKRdGC0hkqvzFc7eiycFmavm3l/eHoFVFb8ZNvx0lbP6pkrLVoVOYEvrZKUprLN+ovu5A==
X-Received: by 2002:a0d:e68e:: with SMTP id p136mr6857093ywe.423.1562963542116;
        Fri, 12 Jul 2019 13:32:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e684:: with SMTP id p126ls1398616ywe.12.gmail; Fri, 12
 Jul 2019 13:32:21 -0700 (PDT)
X-Received: by 2002:a0d:d690:: with SMTP id y138mr7757213ywd.433.1562963541858;
        Fri, 12 Jul 2019 13:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562963541; cv=none;
        d=google.com; s=arc-20160816;
        b=TmDuIbtO/Da1Sz22R9Xsb4+1b7qmNtCOqswdkPs5TkcY8x9wKyduv/QtehdnyPIQYm
         hEn50o1FfLB9bi025yoQX0PhqM3kOau84k6wZWKNPD9yLa8zix9X6TGzaKgBXr9Sh/MA
         xSYHhbmW3t0xOub4L2RVPUnuRcOl/1DROFzfXrnIkJRJ+eW6eI18Mnpu8N1MuqMMBTJS
         L8lgxOOHVexvUh7AN4S05XRFJHEmqPNFcUHfqzo1XYB3vkHR6ps5MuCi0KFXSXY1RBMs
         PdgfMzEvFygZMPiaK+AMp3FO3Ze3BYTWLVgOCJvlGZ/inpMkeLJtnV0vv/O2TnBX6nKx
         pYPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=AXfiBSTFyabmGjKMPsBABh99TWn/O7kY2xAYWykOPE8=;
        b=OAjB1n4Xnlj5dVf0DCnOect0l6/L4Q1vGvG/j7F36JmvxZNOLcwtrfYOxcxkvCAltu
         nR3MsP2TpoZWhQtXvwxEMkkEI8IoB0E2B4opGTLHT18cj9xsCAkCkb24fFT7qYFkUX6G
         sFAvab/La3olY31L4tmMbVsQBghGR/sbseD19EXwm3v4Ronex9Owkd0Yc+391HH81ySL
         eYNkpt7V8vY7V1RYO7skJt/rM36byZTG9GJUaWzX3gM+08w54s8TyF9BOCWbqZwyZJaJ
         YP0eq/fyyyBkypBKhsBwNXUO4b+4d0G3Zou14x4Jw24a0w6cdc+/5X8GIxtmkU+AcOd8
         PKhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id g15si557836ybq.0.2019.07.12.13.32.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 13:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id w17so9481187qto.10
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 13:32:21 -0700 (PDT)
X-Received: by 2002:aed:3e7c:: with SMTP id m57mr8086459qtf.204.1562963541466;
 Fri, 12 Jul 2019 13:32:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190712091357.744515-1-arnd@arndb.de> <20190712173912.GA127917@archlinux-threadripper>
 <CAKwvOd=-OE=uHCurw7VsHPUVHz9XWW7U_8vJEerGaYPii+f8RQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=-OE=uHCurw7VsHPUVHz9XWW7U_8vJEerGaYPii+f8RQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jul 2019 22:32:05 +0200
Message-ID: <CAK8P3a25CdaJiaPNrYf3rZ85vptZvkN3Z88t=MX6NeOnTs_V3A@mail.gmail.com>
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	dmaengine@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Jul 12, 2019 at 9:17 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Jul 12, 2019 at 10:39 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Fri, Jul 12, 2019 at 11:13:30AM +0200, Arnd Bergmann wrote:
> > > clang-9 points out that there are two variables that depending on the
> > > configuration may only be used in an ARRAY_SIZE() expression but not
> > > referenced:
> > >
> > > drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> > > static u32 d40_backup_regs[] = {
> > >            ^
> > > drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> > > static u32 d40_backup_regs_chan[] = {
> > >
> > > Mark these __maybe_unused to shut up the warning.
> > >
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Thanks for the patch!
>
> >
> > Might be worth mentioning that this warning will only appear when
> > CONFIG_PM is unset (they are both used in d40_save_restore_registers).
>
> So would moving the definition into a
> #ifdef CONFIG_PM
> #endif
> block be better than __maybe_unused?
>

That would not work here, since the driver still uses ARRAY_SIZE() on
the variable.
Even more #ifdefs could solve that as well, but I don't want to spend too much
effort on this driver since it has almost no users.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a25CdaJiaPNrYf3rZ85vptZvkN3Z88t%3DMX6NeOnTs_V3A%40mail.gmail.com.
