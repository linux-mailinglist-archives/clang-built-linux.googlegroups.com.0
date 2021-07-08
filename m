Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO7WTKDQMGQECRU5A7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 273AF3BF70E
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 10:45:49 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id m2-20020a6562c20000b029022885db5d8fsf3844161pgv.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 01:45:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625733947; cv=pass;
        d=google.com; s=arc-20160816;
        b=SdevUfPYWvyfDsQKmYY8AVnasqqxcK+dYG5RsxQwYYQ19ReogPWS1hhSVS/UbVevgy
         kCiLJIgmKaFGcQD8YmRRQ3ZS0bH57eLZQ8tvBulDREdsHP/YL9wcc1qi0LgXSrQXzmb3
         nsk7lmA3REbmQRVoAQIxn5BIOfBW6ydsARNhCj+ipPjYlTNTDsP0KpQ1bKZgke4L+oKw
         MJaxH12R83HlB44nkAqL2dXy7AfY4t37qUMxIxYmxOGH+8GW4YgzS33/Hvkoem4qdVkN
         /oB2uv5BtS5FHHWbzHoPhSr7pjaaZAwUC6s+5B1FyXCckIbU4eRtVwZDuYG59CagGHsi
         VtcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=8MNk3BI36dx8NA+xHENO0MxkziCPdLmdaqR0kyBBX1s=;
        b=g9WWE2fhIUfvmLoro+qNwEU5nFs5dXY7s7Bk46gGqvSg/vl4yg9GDoT16R9kqFMjzk
         FcsWunwXxn7lVcjkuudsx9SMQSYCf6gfMiBPKLv86tHST04HalUZqblf7nxWB0FDg0SE
         Ev+SGCqVLMW/aCsfq3ZqHcrfAsskqO8k4gHZitld91X0sFgD26Zyj1CqKw3cm1Iv4EnW
         tv2esP1Ex0llhN1f0LoAjsLCd9mygS2ECXBp6PXPMVCkJ1ptQWY7vSA0SfqnHYdFTdna
         388dA9/oRdLrzLrU4Vs01Yz9lzVowZiWXKmIMIoq1WCgDmpqB6/hDhMoZLMadZV9tzJ7
         8xog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xMe6B4Ym;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8MNk3BI36dx8NA+xHENO0MxkziCPdLmdaqR0kyBBX1s=;
        b=J8b9pF5iENEVPr+rsKxv/pLBrSmp5O5sxV9gzSP28eZN4bAGeLl4Fea59lnr8wpDjH
         UzEje9zg5NjOBjQtoyWaVxY/hAaQoEdv9hs8UGxx6pFytaWRv5sE1nyoiE/dCfs6XggE
         LVSjSS+yJxyt3TaLcjCITTwM8+nlxlw/8FE/JjUsJZhH+booF7NRDoNQyP6JWxEKgOu7
         YHZTaH5hgn3MbkNQxmUT08y7kVebbp92o/N6ENJZhMz11RGuNbqPbErA0j0Mdx1HljRf
         QPMn7HRT5QZtD3wBNLvJxTpoTHTi5GaWrhMqS33Ipv7btveN/j16yBUmDnQ8Ggw0xqeL
         1b4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8MNk3BI36dx8NA+xHENO0MxkziCPdLmdaqR0kyBBX1s=;
        b=kH3VHOJpv6xeAl85Go9FeRMe49ABg0FObQtaHRMnJ6yUoRIqChrXJDeq7UpV5lNy3T
         WNOiB6jmCSuRoZ+2EmDCR4ncat17MkWHTWiGZcBb6WBsNqPlEBxXs7E2AXK/oBORUxQN
         KMKHFAyNtnAakLqYFTzeyO3AS15t/dixn6c6qpc+6D7PrePkz0WvkrViIm8PB4tpOU39
         2XmOpWUTmjnlvSEWoK/6aciy2zOVtF1KMzGCfi5/NRHkcXYIp6Kgga+vIuz5HnkiJvIW
         ArTXhBEncx6X8Q2ea6behHbbhl9qj8Lyc4OZbOkT6SiwozZx0zXVoH/30c3/k8y+H1Te
         SQgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317Q38N0GWDgYPm+xVotGjK+FCNGXEhs0quXDxDzTuFJdkyagbQ
	RJNHr/LB8mMDJPXL2eYhdLQ=
X-Google-Smtp-Source: ABdhPJwUoYGUZDSG1vUChhTaS2T+kdBz1lUlRamIA7H2FP0iImd9B0F2r8HYayI1f/+UQHmcU249fA==
X-Received: by 2002:a65:648f:: with SMTP id e15mr30825031pgv.165.1625733947526;
        Thu, 08 Jul 2021 01:45:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:192:: with SMTP id z18ls883326plg.5.gmail; Thu, 08
 Jul 2021 01:45:47 -0700 (PDT)
X-Received: by 2002:a17:90a:bd06:: with SMTP id y6mr31081821pjr.6.1625733946972;
        Thu, 08 Jul 2021 01:45:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625733946; cv=none;
        d=google.com; s=arc-20160816;
        b=R2h9Dp9t+MT5BZnqu1LaNAy7uz1tmBDIe/EcKNvQIbFGWM+xlHozUmraJ9VVAyviHh
         QLV2Zv2V1DLLPLyRip9CCDxDgV5SXbyAsch5YPpMdb8zxw4bAtgS+7lfF0K//xP2ZvSS
         n1uM1SZVCPLAXV51b5u05yY7Pqw4vak7288be/J/BrfEpc70vlc2v5mg/7Rs5HvVyEiu
         2h2AzA1YHPGYi/O/ksd973lOXkkl/7VmvXF/xPr4IYcX7OXOzr4IYzyB+wRbas0azT/b
         MDepm4y8o/ex1p5tY+D40zFxkDlx3ddMdBTT3gEAG0VRuystvqTouhe6FGmDxHa3mC8j
         Q5Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ft8X0W6SL9ffJoOxR1is1/byqHqLt8LZorixR+KT1KE=;
        b=TkIkvE5WiJDCHy8fBvR4PqMYGyP6Xu/cp2IJeaygbil/Q+rPPo/uIei69FrZ6jyVj4
         l1l7SKqTXpsBzKZuhfJEFkm99wb9Sile9GWQzZKP5OyxGI3I9/TcfnmpRNxkps7QQrr6
         GdVkHLwj774RPwdNncW+J5tk3HV9rrDUwTrEnA8xj8soe+fpOFraAwhjPBhMpjeyajIR
         RBPoumre3a8CyEWFPuyoUSX1v98XA0LFU0KocJjFmy+YUmK6oip8DF5BNus2hHIJ6gLd
         TJaQSt2jsunQ7NyZASontXbMIOLbYZjWZNHQ7Ur2ZJPjWEQ4ldRwD9C2W95hK2RYY6OC
         HtAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xMe6B4Ym;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id lp13si620460pjb.0.2021.07.08.01.45.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 01:45:46 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 1688jUcL003888
	for <clang-built-linux@googlegroups.com>; Thu, 8 Jul 2021 17:45:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 1688jUcL003888
X-Nifty-SrcIP: [209.85.210.182]
Received: by mail-pf1-f182.google.com with SMTP id w22so4834919pff.5
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 01:45:30 -0700 (PDT)
X-Received: by 2002:a63:d80a:: with SMTP id b10mr30885371pgh.47.1625733929909;
 Thu, 08 Jul 2021 01:45:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
 <20210707224310.1403944-3-ndesaulniers@google.com> <CAMuHMdXuzb6PuujuCzm_FYq9ZeZeJxVZiYTGxdGeOTkZ6+W=+w@mail.gmail.com>
In-Reply-To: <CAMuHMdXuzb6PuujuCzm_FYq9ZeZeJxVZiYTGxdGeOTkZ6+W=+w@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 8 Jul 2021 17:44:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ2e8eNpuPwYd+dnx1nu_R6FM2X=aH1VUNa=09ebEEyaw@mail.gmail.com>
Message-ID: <CAK7LNAQ2e8eNpuPwYd+dnx1nu_R6FM2X=aH1VUNa=09ebEEyaw@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-kbuild <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xMe6B4Ym;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jul 8, 2021 at 5:08 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Nick,
>
> On Thu, Jul 8, 2021 at 1:12 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > We get constant feedback that the command line invocation of make is too
> > long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> > target triple, or is an absolute path outside of $PATH, but it's mostly
> > redundant for a given ARCH.
> >
> > If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> > KBUILD_CFLAGS, and KBUILD_AFLAGS based on $ARCH.
> >
> > Previously, we'd cross compile via:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1
>
> Which didn't really work, I assume? (s/linxu/linux/)

Also
s/gnu/gnu-/



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ2e8eNpuPwYd%2Bdnx1nu_R6FM2X%3DaH1VUNa%3D09ebEEyaw%40mail.gmail.com.
