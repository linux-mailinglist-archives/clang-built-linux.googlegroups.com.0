Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLFZUPUQKGQECXENY2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id C28AD67550
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 21:17:01 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id x17sf7788885qkf.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 12:17:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562959021; cv=pass;
        d=google.com; s=arc-20160816;
        b=rGc5kMnxEHSc2lbC6q2UkuHV+f9Crmon1Ow468435i5KYgsefccswrBZ/7W0Z0M6F7
         /DYtcdIYwtLOtyT1V2BlZyAILSymoIig4YiO9dT0lyhJjwLlGxj8j/d2ESLkGXHpzcnS
         +5rDsuoCd7gcQKmmG462n96/bbiv5ePCrccody1gE7sZy5WfNp6hldYB+L8cq2cVVj0R
         TxL3/9png7yRGmVgiqmxV1pN92+nFAOkVdFjq/jB16SUOHlLCPFUDE5Iv2t8W8NNDJJO
         gSn0A2mpn9rAIRexxo/EKQ19R29PB0vZyRpBSULfnKTLATL9GCJmM5QRgJbaRq5PJyc7
         rqUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aZ4a0f77+4GP+y3+/bva1LnZU2KByCcnwF56KJ9bWps=;
        b=CZtavAoG+olgiPSrT8V9biTJiSOfOAjWiivYSB2Ksd1FDXzfTz0ob3K6oWecNPyxkZ
         V/3lu4YbEnVylC0Ok/P2rYTfcvNVybZfLbeA+hOvIynEwmPxDK3xrV3offQRBD3CNz7B
         LZn9hD+nQE+hcdJn69HawHxFlNNdOXgwYJy/3/IlukaWjY3yu/K0ZV8QJk8owCF2LgkI
         u5/QjIGwA82jaN9iLbI+s1K8DstlgKpIaPw/2CrTI8Y7locolJBUcHvA63kOLo1enajb
         wnCFDxrdj69KKZrliYQkVWA30X/CIlpePRQIMhjJjR1Xa57sYDpYWKSGkM/eR9OjjbQZ
         pjiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nkfZJQ9h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aZ4a0f77+4GP+y3+/bva1LnZU2KByCcnwF56KJ9bWps=;
        b=jEID0GEmJ5PBHAo6SxzcVuapKlKOI/1y8Tlq3Z8ux+bTgCq4huAwAQGTr4waDn7Cyq
         BuLegTv3AajrWMAoD8E5YA01oU7oeHFqh5EcLvqCs1ZU9WkG+Ed6Fcv2f0x3ONbY+bDz
         PpbIyV6K2Pd86jDGWSErEcOoHJBBdVYwc0FR9jtXDNpH5WA7Qa3fqsdgcmRtKE3V5hsy
         EhRqdvQToCNaHHgz8Al0Rr9KrqQSKZ2PId5jzrFp+fHXsopXka9MQ7uOrLpF2PVWSrsS
         Sxo/LJVhbYx1p59z9bnlBRrEc9iz9mvSCJysPqIe57p5XE6TjIaG12Iamd//O7pi3+tO
         iazA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aZ4a0f77+4GP+y3+/bva1LnZU2KByCcnwF56KJ9bWps=;
        b=Qdqo2P0KMKkdZKZ2FhK5YmDMN2MwJziFTc85/MKOFWTQbua5sg47GCM3NZ4AhQW/3I
         cueQpy1JqUZ31Exqm1DjLYQt/m4wOBLppVUb6jy5YuMOyM71rH3o/vD59nJ8IO2+Gmcl
         nOqI5gVSvTPD3a75xCy5nodbOKN0sFuTjOtZXumbm6/43k6b+b9wM0lTZSzrVulkQvZ9
         YTnoy3iIIbkNgx06cinZs91xqVkFg9zv+1KrvQTu34AGH7oyXqaUfn8A8XeCb/Wy1Ib/
         PS/8fppFZd/HJ5JYbIzAAVrsVjLySSLkmbKO1iko2g2TCIUkgvkR4fAa/84A3ELNammJ
         PNbA==
X-Gm-Message-State: APjAAAXg73zXj0k50mywcJaZ0JC598jGx4aPIZBG6OUigKSOCQKV2GR1
	8slQZGtxhq62uYcD68q1k6M=
X-Google-Smtp-Source: APXvYqwWgHlwMsD8jWZxJSSCdJkb96P3XC8oHybdvZaMTGH0ICW06rYnssYsS5Bqg4b01jmKNsa80w==
X-Received: by 2002:ac8:7251:: with SMTP id l17mr7755684qtp.277.1562959020850;
        Fri, 12 Jul 2019 12:17:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4c97:: with SMTP id z145ls3101849qka.2.gmail; Fri, 12
 Jul 2019 12:17:00 -0700 (PDT)
X-Received: by 2002:a37:5fc2:: with SMTP id t185mr8016072qkb.206.1562959020633;
        Fri, 12 Jul 2019 12:17:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562959020; cv=none;
        d=google.com; s=arc-20160816;
        b=xVcJtaNbiCPpOPrljw9NJdEwRA40wEPVtQ6kEFrvXDQyHrBWx83BDGI4aEcU8bTHI6
         qpwQ0MPF0nNIwbMA0GyzyX/f1jgmrdqvCsUvVQQWySjJod4gSF8lyJeug+bVKS5Cd0WN
         ds3FwvpTUVVL3QCW043XxDFY/UVWDP+Z3kvKVAHPU2+aUNLGeH1NVOXehIq8GDYch3xE
         uEZwKr6yHT0jsmuKYEr9AeWiCP6R5VtwQbSTyWTZPeSUeHpOXDpb/By4CYkv2IZFs4si
         H4Ssfi0tgCq9bFN3ma4QGnkVxLWdnOfWPA2A1Kl/pllKMzkMLvjghIL6110m8hh7+n7H
         7QNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TGOVEHDU6QMUFnbiD3BIRdKN9VyfrJPwBpHe3FSGpAg=;
        b=kz8S9rvqFcwwi3WlA5gq+d+KY1ylkbXkgoIG7VbF7NtY8/kkAQo9NfXfsx5ZQDGJvs
         LGw/jmTj+COqdZBdaC232NUFXXUw29C7evSNaQdNfGhlZ1mZEzAScXbwkhy6rSsUxZ13
         n8gVor09tAG85p6SXkG0neN4KV1TxFJ/4oMFUkobXw/KTwbe9sk87Q1X96a+jAI2o8pt
         u/3+Fh+u7II+fxsBhwaATErh8CDbg5LJBa3ChJC/ArL4ucbBSJcbW+EsVHYMHwN6bznF
         JWeJxeC2oo+/ISCBOfQzHodqXzTF5rEVwBbsMNfLXcxfpYQzkSXVecqQKBp24kxcCiXP
         8Rjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nkfZJQ9h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id r3si326494qkc.5.2019.07.12.12.17.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 12:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id p10so4954130pgn.1
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 12:17:00 -0700 (PDT)
X-Received: by 2002:a17:90a:bf02:: with SMTP id c2mr14074581pjs.73.1562959019386;
 Fri, 12 Jul 2019 12:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190712091357.744515-1-arnd@arndb.de> <20190712173912.GA127917@archlinux-threadripper>
In-Reply-To: <20190712173912.GA127917@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jul 2019 12:16:48 -0700
Message-ID: <CAKwvOd=-OE=uHCurw7VsHPUVHz9XWW7U_8vJEerGaYPii+f8RQ@mail.gmail.com>
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	dmaengine@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nkfZJQ9h;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Jul 12, 2019 at 10:39 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Jul 12, 2019 at 11:13:30AM +0200, Arnd Bergmann wrote:
> > clang-9 points out that there are two variables that depending on the
> > configuration may only be used in an ARRAY_SIZE() expression but not
> > referenced:
> >
> > drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> > static u32 d40_backup_regs[] = {
> >            ^
> > drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> > static u32 d40_backup_regs_chan[] = {
> >
> > Mark these __maybe_unused to shut up the warning.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch!

>
> Might be worth mentioning that this warning will only appear when
> CONFIG_PM is unset (they are both used in d40_save_restore_registers).

So would moving the definition into a
#ifdef CONFIG_PM
#endif
block be better than __maybe_unused?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D-OE%3DuHCurw7VsHPUVHz9XWW7U_8vJEerGaYPii%2Bf8RQ%40mail.gmail.com.
