Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2XH5DUQKGQEP5DVXJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 3230475B1B
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 00:57:48 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id i33sf27158125pld.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 15:57:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564095466; cv=pass;
        d=google.com; s=arc-20160816;
        b=eoWxTt3lQru3Ux34CAqa0sIWhCeHSs+QeQm4WVWRZeuY4H7Fu/bAD2zj9LXm2mqpoZ
         exiiZ3m5Ciy9C84IvB7r2IK0eKS+Ldr2+GxceXyC/GAcvpx1QJ9jltdPAhGK1t9YU9J0
         TlaoAQma9MimBYevMSWxYcg1O7j5eyInhxk/mVMdpJMz/eHJAaRtUfZQCa4C3lXELqXS
         icuOWkxkDRSfh5PjIb4f3k1D9CfiCQMxxNbcFsUe6SQY1zO8g+77PUSwgfFmX4Afjlr0
         6kvvMNRyMTvmSwarFYZyER92dc0IViuxkhY8obVV5aQkFoeMrUKr/eBz9rjtWRm8ff50
         q4nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4EbubO6PlTIBxtfFyjdw73OGzTukcfqmj+qQdacKYUY=;
        b=MC819iOmRkNjcm0JHRDb4b3DmL9vSWAVn2iw5NlclJPWNLLZKgBGSMHI5QYuiX/tvr
         75h4VIt1lrgxlvSNT3k9V3agfdL2odWGDS5R6LXG9whvm0B6eOWpy0IXK9dB1MSf/bVo
         XDzzuYeGDe09oL5p9Bbw8KxFVraTf46vLyLjZZ16A+GjUFfIX2Y/jvZUSYVlNFuDil/W
         aLNsb7E14ZR0d1KdpiSqE8nV406g2TcfL40dIAmZeUSj7ACq5URmEzZTbNieqrllQl5j
         4WGTLYPSEAoP9MTY4YfzACSMJl4N6QsL1QmMH7M7qqIx6j+wALQ7Os5Lx8U5oYXx3n+B
         Yiwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BpzZ2pwO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4EbubO6PlTIBxtfFyjdw73OGzTukcfqmj+qQdacKYUY=;
        b=OlvYSHnASkYp1HwjQ/f91q81WFX4rNKgO9pV2ZKf2vfVr5WcrN49wD2qS+n6pXZ2zU
         ia88v8dZoaDWa0POYyfOzGqzaUH0vNsFJHB9dYjdaPaZ5oMNjQivg06VIAlNaDkeNpvl
         8V8tAMxgMSEf7Js7Lyiz5/IIcy2UZmKcetE2TuNd3UL7BR30zon4tWE34qkXxDI2m3BH
         aCHZIEr3kNiN39fxzpNBqD4OffYbdF2UxIstCVSR2XR0Ggo3fCEul7HiOQPoYn+HJiwB
         UIzVGBntIDs1RBmDYcA2m7/8PtDurDDQVOMDPFUacDk+z8ltp37jX098jaPkskqZBg5O
         ITMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4EbubO6PlTIBxtfFyjdw73OGzTukcfqmj+qQdacKYUY=;
        b=nQHuz73+iNOoWlTO67bBxuG9YqB32KyPdDBB6nAx9yFPY0VIDZ5F41JBLZ6p+dkaS6
         03bmY8FCNpAevSIGnkyhLWZiYdc6ZV3mHoZy4HuyXFoPkhYFkHHo+OmMrL7v9e20uTuH
         fXZPM3lCLZpP6GnRpLmnnM6PMcnEpjPp0I5a0hh2io4/LMOusc0YHKh5lTV4/0oJ7/np
         M8A00FkjGsU8dSHsSyrv8U7+fh1u38blwbZSkL9tpJZguV5ueEpOZnCITXPtm3ZHsGyi
         d0Iov2zWT8pCsjBouIEUvu273i2L5bRU6gKBfLzxH4IT/I5lzBKtCZiSHjksGaa/JvhJ
         pMIg==
X-Gm-Message-State: APjAAAX5u47COVNaaERxRnKQmH+7PTridOBa8z48A96UJKP60zn2paCw
	kP/w1H4rEgK1eyJv2/D4H18=
X-Google-Smtp-Source: APXvYqxvwM3jaDrNVoe6ebM7G2ETI1WSVLagrZ+CoDo0+t56q/L7/RnmykaJOlN8dweWtT6/IdLTUQ==
X-Received: by 2002:a17:90a:b115:: with SMTP id z21mr32906167pjq.64.1564095466818;
        Thu, 25 Jul 2019 15:57:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:905:: with SMTP id bo5ls16855666pjb.0.canary-gmail;
 Thu, 25 Jul 2019 15:57:46 -0700 (PDT)
X-Received: by 2002:a17:90a:26ef:: with SMTP id m102mr93699763pje.50.1564095466513;
        Thu, 25 Jul 2019 15:57:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564095466; cv=none;
        d=google.com; s=arc-20160816;
        b=am+VbxZkUbwoQF+AvmOzD57jZRZmvSDpAb/D0J7XwjxV+d7sWZXJy3Tvgb2rmuK4nJ
         wKcJ3ykRxkKqURSyOr30wmLVxGIWq8c1sMacZXvt8BFqLk7qgIjSz4VOGL2MW310F7TD
         lyIYu1iXCP2+zoPpV4qOxBJtNl033eiy9DBRy+5rrO3I1y4nxEI2Y9ebK5/U2C7R+b8c
         pDckY+4Utmcn8WG0mtgs3F9Hv/wCC8IkcZg0eGLMWVxISfnKjX1j50CZdyk/gNhXT3QN
         tcxv0fEDhCbWAiIqmygKgYdo5qIxWGL8UURSjM+lnrg1Jo47v+EJkp7OJEXJVPYfcQZ2
         PLIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8t4snaNVdB4o/7apaQCvfFukpJka0ULnzwTuIhY7zEc=;
        b=igGawkXdhYo4B30WHFfDePS8wVoYBuuGIvuOT8p57KFq5vMM+BjQECQhiUdHoTgCgk
         PQnFJK90Z4jJKwwmF/vlce42JkrWTraR6FDhmLoqVz9taHYFx5r/V36VwWzpZUsXMkmy
         84AqXAIHWb4Gu7kOozFzRuLccfu5D4DDVAZemgG1Ow91X1xFaMvWLXlWLCNlSh7GrfW4
         quOATSDlKT0CrvuN/Hgh7TnvqAHuhoCCXpzSzghnJ/UW//U/OsVg5qKSUbbWFf47m8tF
         qXfNXngCryliptfYma0ZvrqXgw3rMMgzMIR94kSZJUohMTGTLufj1KDBecZRiiOwOKoD
         YmlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BpzZ2pwO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 85si975739pgb.2.2019.07.25.15.57.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 15:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id u17so23749593pgi.6
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 15:57:46 -0700 (PDT)
X-Received: by 2002:a63:2cd1:: with SMTP id s200mr84167645pgs.10.1564095465592;
 Thu, 25 Jul 2019 15:57:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190725200625.174838-1-ndesaulniers@google.com>
 <20190725200625.174838-3-ndesaulniers@google.com> <alpine.DEB.2.21.1907260038580.1791@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907260038580.1791@nanos.tec.linutronix.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Jul 2019 15:57:34 -0700
Message-ID: <CAKwvOdnBKcEFkv2qEWPaFEjPSmR_SXBo2ZGz7ho9pBc88dZJBA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Support kexec/kdump for clang built kernel
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BpzZ2pwO;       spf=pass
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

On Thu, Jul 25, 2019 at 3:51 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Thu, 25 Jul 2019, Nick Desaulniers wrote:
>
> I'm really impressed how you manage to make the cover letter (0/N) a reply
> to 1/N instead of 1..N/N being a reply to 0/N.
>
>   In-Reply-To: <20190725200625.174838-1-ndesaulniers@google.com>
>   Message-Id: <20190725200625.174838-3-ndesaulniers@google.com>
>
> Is that a new git feature to be $corp top-posting compliant?

It appears to be a hidden bonus feature of:
$ git-send-email purgatory/v4-000*

> > V4 of: https://lkml.org/lkml/2019/7/23/864
>
> Please don't use lkml.org references. I know it's popular but equally
> unreliable at times.

Oh?

>
> The long term reliable reference is message id based, i.e.:
>
>  lkml.kernel.org/r/$MSGID
>
> or
>
>  lore.kernel.org/lkml/$MSGID
>
> even if the base URLs would cease to exist, the message id will give you a
> trivial way to find the relevant thread, but if '2019/7/23/864' stops to
> work, good luck in finding the original post. I wasted hours on that just
> because a subject line changed enough to confuse the big internet stalking
> machines.

Thanks for the tips; I'll try to use lore.kernel.org going forward.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnBKcEFkv2qEWPaFEjPSmR_SXBo2ZGz7ho9pBc88dZJBA%40mail.gmail.com.
