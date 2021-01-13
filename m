Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWUD737QKGQE65ZJMZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3AB2F552F
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 00:27:26 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id i13sf2790334qtp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 15:27:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610580445; cv=pass;
        d=google.com; s=arc-20160816;
        b=kvkSoPkb7PBGL/+UNhkFDsh7bf9vHSCsDGt6uAhVsSBAd4AiX7LQ+LAlxBpHNz7mDD
         gxGIQR8Nnvfe0sgOdA0saL2iOG/ZeJ/uVv7Uoaphn239FeAeZhdBvUab4+83128S0e0Z
         24PnPfOEPFokHPclcLCO8e7Ltpupy7wp/o8zPsoMYcI1VjDTSg6ciJ1CJRIcZcdmr+UJ
         9ERb7lmZna4YVPWpVA0vR/ojUzI4qtC4lGIe5TeoJis//mR8vueJbWCHmCfY5B8m9PIE
         wTZOap19SIdvYaTZFd2KYIeeCt3nRWHlV00jRut8hjacLrgKks+V+u2OdL54miUQKWvn
         zI8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=URzTCcMwnOeiYyRZW5hlXtmVlcN5FfHfRreHlyc1Xxc=;
        b=bgfZ1LFPS+eDcmMA0pVArbF0oSZ/aOIwn1arHor1Ufgl2+rRjccucXhq1p/PCF7ApL
         GxslW5AbfXiwf/XZOXiT14sf2VHwfz86qphVGMCvAiAulHP5VOCJjmYuj3e744uNzmhV
         ldAeCaTn4ysjQ9FOlSd1D5JjdxweWJnIG9BrYJpZMdL9oXCyVS4lLmDVjbUXBoTtA2+r
         wQFRvuw106Q1LSVQYWbrJt+Mpf0nYf05UIvF6qdlhVUe1vO6QrryH0mPloJL4d5nv+fz
         QqKgDw1wSFWkH7XmxMhqZcQnXKb8A1kqnIvNW/vXWiznEOOmLhheBDxP1S2xPD2h+A8/
         G4bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UsAe64kO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=URzTCcMwnOeiYyRZW5hlXtmVlcN5FfHfRreHlyc1Xxc=;
        b=Q6u5ip8D4+3f/wolxiAn0tLkwdfoYQuc/Xtgv/7TgSqKNstUtFcWe0j0iEUXG2+ovq
         B+xOdnweJF640VpBBH72weiGYcN8oqyLRKsWX7UAqLL+i9zpmGPTuvmP7bD2xY8dzB6l
         TT1kn7EkRym4WqMuUABTdBEan/NZ/i2bBf61rcVhTxfNar590uDBMYKbYdqWX9HnFLwg
         Drb5OJRla9DvXBF5/Ky/j+DR5V3ZgR+SMfOsBZi3+FNzy+loO9+keaj8wOTmGtO4dadQ
         qoberA3oTCn2z/Pgz0tEavkCEKcHM0t4hoJ83WqNlpB+L2rDkYHLcOIN6lIwxsl+9tE6
         oFhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=URzTCcMwnOeiYyRZW5hlXtmVlcN5FfHfRreHlyc1Xxc=;
        b=cw9PvOOYnW7WjDzO23lobjOu1PvgQRMak5cU0KV+fszDk/R5cscGBzukQckh5c69l5
         FRjca0ltVitomjL9xGogb7UXv+/PVBxytaLxMNSWpdcN0wsAkrbzON4LU/0evE0qZw50
         3LW9Yrggkd6ln43Pkw+EZ15u22f2u/4CDg/WTG4DStyG2D6wKHe6qb6z1B24Oa//GrAj
         sCFJVVQ9iEPEc+sog9Ogxfqxt3t7sHKwh1zP58ccmTukNwZqtMPrTMZkXQpPZw84WwF9
         QrO5ZysIWWGxtkXxzBJx1XDb7G9SBO4Rbw76T694kbIXX2psTfSx7TIghIBcPG6M5GGG
         Xf2Q==
X-Gm-Message-State: AOAM530xzHgBVCwhU69UklSPCUgH6POha3EnOTMaYRNUQ0qIPNSimxcS
	vClfQAxEwyKstt2a/IKiuJ0=
X-Google-Smtp-Source: ABdhPJwMqxmfA8xAao52XJ2B25qiXahX3ZUotCw65sscAaQKcCzpqBLCRikeMf7hnvN2ze5K8Nt20w==
X-Received: by 2002:ac8:70cd:: with SMTP id g13mr4549797qtp.345.1610580442692;
        Wed, 13 Jan 2021 15:27:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5603:: with SMTP id k3ls1904624qkb.2.gmail; Wed, 13 Jan
 2021 15:27:22 -0800 (PST)
X-Received: by 2002:a05:620a:2105:: with SMTP id l5mr4673268qkl.126.1610580442380;
        Wed, 13 Jan 2021 15:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610580442; cv=none;
        d=google.com; s=arc-20160816;
        b=CfS+XzNs5ab+C/zgwhxHF0s6J+kjdmUyGsvDaKTzrI/8pBOhsfPg9KAUgS0MQXNE+x
         oVXSZiwyHi42BOTjBGP6yS8KKog5mIT+PTgIsaXqIGpYx6z7y354zoi1o8pWMmmGvaOF
         eA9SviLg+pl2M57Wa8522BAz5KpNhKxAIh7+K/eUcIcdaiHvKC0tZoSIqKAgPXfz5BWS
         OtvCBQcJCS5cwpxOcJ4heIesCBcx1DqnzD3fRxArZKtdCXgYMlSdkrkMBgQuN4UVIz7z
         PTmbLY0E26q9V9VCMH3N86uhPuihhW/XKaSp3vGtSpi9N0gab32EJLCUjk9q78XBEzA8
         llJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Rhh6w6PnAshqzzDi7tIorGSnjSwjXHOfLfkdJH6Oxgk=;
        b=zHz0BUY8KQi/cl//G42lnehmxGGrm2f3gemB03ZL5DUS7JwojJMsAS9EKhA+maFRvK
         1cMxYTTFyTPhsMaYoL9Tjqpu043H05VBuxaxmDiJvkN52gC9xmrjivmcKeJoT86mJth5
         HUU2PKY93Kt95PZ5370bc7liQckv01j4KgIPVzdHB2OnZ/lYdMALXnSLXTvjYi29CKh1
         uTgJKlCR1eyzILLU8ot4wSOIrZRf6MD7X9eHE4YVGadx8HMfE6LkbK0HdXmErF2YPkJG
         SA3PO8CJCuVX6Q5f1etX2mLhpx+wfW6/+TAzyUhBU+v8Wy23xaZkJOX28EHB4Seuzfbu
         p8XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UsAe64kO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id p55si323377qtc.2.2021.01.13.15.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 15:27:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id 30so2497437pgr.6
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 15:27:22 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr4397001pgr.263.1610580441323;
 Wed, 13 Jan 2021 15:27:21 -0800 (PST)
MIME-Version: 1.0
References: <20210113003235.716547-1-ndesaulniers@google.com>
 <20210113003235.716547-3-ndesaulniers@google.com> <CA+icZUV6pNP1AN_JEhqon6Hgk3Yfq0_VNghvRX0N9mw6pGtpVw@mail.gmail.com>
In-Reply-To: <CA+icZUV6pNP1AN_JEhqon6Hgk3Yfq0_VNghvRX0N9mw6pGtpVw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 15:27:09 -0800
Message-ID: <CAKwvOdm40Z3YutxwWyV922XdchN7Dz+v9kJNjF13vKxNUXrJnQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] Kbuild: make DWARF version a choice
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UsAe64kO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

Sedat,
Thanks for testing, and congrats on https://lwn.net/Articles/839772/.
I always appreciate you taking the time to help test my work, and
other Clang+Linux kernel patches!

On Wed, Jan 13, 2021 at 1:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jan 13, 2021 at 1:32 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -826,12 +826,16 @@ else
> >  DEBUG_CFLAGS   += -g
> >  endif
> >
> > -ifneq ($(LLVM_IAS),1)
> > -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)

^ DEBUG_CFLAGS are set for everyone (all toolchains) if
CONFIG_DEBUG_INFO is defined.

> > +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)

^ "If not using dwarf 2 and LLVM_IAS=1", ie. CONFIG_DEBUG_INFO_DWARF5
&& CONFIG_CC_IS_GCC

> > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> > +ifdef CONFIG_CC_IS_CLANG

^ "if clang"

> > +DEBUG_CFLAGS   += $(dwarf-aflag)
> >  endif
>
> Why is that "ifdef CONFIG_CC_IS_CLANG"?

That's what Arvind requested on v2, IIUC:
https://lore.kernel.org/lkml/X8psgMuL4jMjP%2FOy@rani.riverdale.lan/

> When I use GCC v10.2.1 DEBUG_CFLAGS are not set.

You should have -gdwarf-4 (and not -Wa,-gwarf-4) set for DEBUG_CFLAGS
when compiling with GCC and enabling CONFIG_DEBUG_INFO_DWARF4. Can you
please confirm? (Perhaps you may have accidentally disabled
CONFIG_DEBUG_INFO by rerunning `make defconfig`?)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm40Z3YutxwWyV922XdchN7Dz%2Bv9kJNjF13vKxNUXrJnQ%40mail.gmail.com.
