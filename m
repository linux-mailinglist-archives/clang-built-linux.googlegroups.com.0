Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGNR5X5QKGQEPN5RNMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FDF283D50
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 19:32:10 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id s201sf3144067vsc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 10:32:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601919129; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3xbyTrAERKjwbToIZqpuhcWLfK0rGqpsSyLtbwY2dbshVDcpSg6JJ3O9fdVblhi4A
         IeayTsU0epmLp1F1iqbu8SnrWBIDQShXGcsbkPsRZWPYganUiFaIXyr/C4QxvjrA4CvU
         kCAzKHJcIHsM99D2ruVRSob8hMbJofY9w/sUf/4tJMem3osEu1/0oMUrjnJZr/rnH3OJ
         TDI/cgvyRyteeHn2WVnotZubvKH4fUXsXvtA6r7sYQAdRfpa7SklcGUkxgr298/tVZXl
         +7lbuCPbVR6tLsAZyuZJz1w7YeqUxGvcjwnSF8bdca71MjvcCzLYEwo4Zs5mMTqaTYM+
         hHkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RocLul9bu+/k91CMaP7BeWOjbImajMiZp+1fen6Gho0=;
        b=WJyeTs13ggfRIQinzdsrplbFs3GE2xw2u0yz0T+qq+TGGSzF0B1e9ZN5cEhvtuNs6H
         wKw4qOZMOSdAgOwBhZcAW/m2CTqLGgRDnHn7WwTa+r4nujeQh1+4KehPLspmzXQP/Etb
         GPa66A82U594fm/OSy3vkox06fNevNv/0DRZYzcuHtEejBSLXEH/gy4iQaluumeYz28x
         +NPnp8V+6aewOJfGKYXm3k1OfFAW2RFwf4H2/vA+eFcV9WCfmG3Mot2tBOdvzAotDpOn
         PsB0JIQGwDD8BsYBb+rIkMhrcYikBJxJALmM/3pSkTPbpvQxzhR8v7cRhXfgeA92IThq
         o+9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t3bjIhsR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RocLul9bu+/k91CMaP7BeWOjbImajMiZp+1fen6Gho0=;
        b=TVjrFX5V2Dr1fmJo161DYHqJRxDaPPDWy3Dcfyx9m08fSB3hHN1ETrtaaFzf7dC+hO
         XwpWnzG3x3iyDxfhz9Si2jL2z8Eo2e9C3D6JS9pn2BGSe9nyaYVeM7wIRpuBOvOSZvKy
         zNmnIcwLkei6+LCID/pFDEX5a0V17utOtGz3bEsIXul5aPz9PJUwTbxn7cJ8UogAORDu
         4eYCpHo9wVeBUU2SPzBZtK415T8GTUahjnp7mdWXbQtCwv9NF7XL5hsmXCEUGDEzCVLO
         TeyYKQ4yUSkbRzxCBw+/KFiC2cMl65uxcKFoavYCGKrzSqk+8POTHxJ1ykhkGlHS/hlJ
         DdpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RocLul9bu+/k91CMaP7BeWOjbImajMiZp+1fen6Gho0=;
        b=ebyK3UnwVzzMAsBoVel1lvuuT2ZgTPM/jCytxLPX0cvOx43cke/4V4IiSV3Mbvq2hp
         zpBaFPqaSo+mhTcGEqqiYx3AGbqodAcRc+emz3jTClQQPf8tSFuv2juHJRPEIRJuNQwP
         +eDUJrCfXSdgtp1ozr32pzF1VYJjdq+a0qTTxoIPkSR4TA+r4EG+04bJFqBG/0Ymc+WX
         2mZgBNP/Y95ZMxj0KWzxRj8NiHg19MBtwUgr6Yjjq21EieQWX3+Lqokti6VJHcsXaz0y
         zGvy/4+AR43SYcb0MtLWGI0ep4rGm52O2XA9oV8fDqmooU2oFX+vYrmnyZeXNLmOUcdO
         aNng==
X-Gm-Message-State: AOAM531dOz/RXoZfwdboOCGIxQ5gj1oD4ZY+9rSGZFcbvZEjb2cVn06x
	86dtYq8WfbpHtqttMJs4txk=
X-Google-Smtp-Source: ABdhPJxFPvT8srgHahdm8VG0NWXfkdJNAbyA9aPq9GYsucwuLF+OP5bHdNKFHZ6AMTrnzgmHLyB3OQ==
X-Received: by 2002:a9f:301e:: with SMTP id h30mr693682uab.114.1601919129426;
        Mon, 05 Oct 2020 10:32:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:68d8:: with SMTP id d207ls1112259vsc.7.gmail; Mon, 05
 Oct 2020 10:32:08 -0700 (PDT)
X-Received: by 2002:a67:ba13:: with SMTP id l19mr872131vsn.30.1601919128824;
        Mon, 05 Oct 2020 10:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601919128; cv=none;
        d=google.com; s=arc-20160816;
        b=PkbYRJxjERozmoP3A03ADZ2GTxZ1HvyABkgMbPjzfNVKzCG1e0NgVBwVoNloJQ7Mub
         SjNY3RGXebF4v9cRD/0gbp0mfw/ghWqxPZ+JeggiZmF4WLaQoF4UF/oO5eIID0nUIWQ0
         vKpR7MokwPLYPwHKUF/Hk+IOlBBvHRhBZDbEhJ/qIai7zmZNJKG1qwpQDoYPUFHmjl7O
         S78JlRj0fjXIMkMaXsxgkzaKHfqyxRC1eriVkf8t5SwlO68sH3XqMewy8Y7gzsSYDWoI
         CeN+ueWhlUqI5DmKiuf6dMz27Vo68fLlX2hoW5e1MEObUNbxwV5I6RuilYHGFQiYM5nG
         7Myw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Htxoj4DaPCPw1cEp7kynonjuidcBDrm2IFv1RoI9pXE=;
        b=VeT1BJi/sUETVPkonl9kKllGJyArt1Uz7ZJeUCh8JLusI2+ZsPChLWfi6JLZ3CILfD
         p9udSccZRSbBdmli8RSu0VIsGCehAjEt0wr5UGcuMkN19WKHJ8U86E3Aqmc3QfVn6iPW
         8UrJMxLMixPOXjCIDl8SL4gU7aZhCxSb40aeMy4WHuyTPww5ZzioSnbo4fPUl7fXfA3t
         72xQClZg3u53goZthWVgLFiPtYWnMjqQUCIiD3od28PCrGC/4eMoltKJSufaM2MIibus
         mMT5h2BnvrqB7hOgk4UG8sorO9YjRk+sX3T6FpvFJicCtq0ZHZ4BLjV2v9XyTMGjLmEq
         KobA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t3bjIhsR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id t24si45193vsn.1.2020.10.05.10.32.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 10:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t7so182933pjd.3
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 10:32:08 -0700 (PDT)
X-Received: by 2002:a17:90a:3b48:: with SMTP id t8mr523485pjf.32.1601919127643;
 Mon, 05 Oct 2020 10:32:07 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com> <20201002014411.GG4067422@lunn.ch>
In-Reply-To: <20201002014411.GG4067422@lunn.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 5 Oct 2020 10:31:57 -0700
Message-ID: <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=t3bjIhsR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Thu, Oct 1, 2020 at 6:44 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, Oct 01, 2020 at 04:09:43PM -0700, Nick Desaulniers wrote:
> > On Wed, Sep 30, 2020 at 6:12 PM Andrew Lunn <andrew@lunn.ch> wrote:
> > >
> > > There is a movement to try to make more and more of /drivers W=1
> > > clean. But it will only stay clean if new warnings are quickly
> > > detected and fixed, ideally by the developer adding the new code.
> > >
> > > To allow subdirectories to sign up to being W=1 clean for a given
> > > definition of W=1, export the current set of additional compile flags
> > > using the symbol KBUILD_CFLAGS_W1_20200930. Subdirectory Makefiles can
> > > then use:
> > >
> > > subdir-ccflags-y := $(KBUILD_CFLAGS_W1_20200930)
> > >
> > > To indicate they want to W=1 warnings as defined on 20200930.
> > >
> > > Additional warnings can be added to the W=1 definition. This will not
> > > affect KBUILD_CFLAGS_W1_20200930 and hence no additional warnings will
> > > start appearing unless W=1 is actually added to the command
> > > line. Developers can then take their time to fix any new W=1 warnings,
> > > and then update to the latest KBUILD_CFLAGS_W1_<DATESTAMP> symbol.
> >
> > I'm not a fan of this approach.  Are DATESTAMP configs just going to
> > keep being added? Is it going to complicate isolating the issue from a
> > randconfig build?  If we want more things to build warning-free at
> > W=1, then why don't we start moving warnings from W=1 into the
> > default, until this is no W=1 left?  That way we're cutting down on
> > the kernel's configuration combinatorial explosion, rather than adding
> > to it?
>
> Hi Nick
>
> I don't see randconfig being an issue. driver/net/ethernet would
> always be build W=1, by some stable definition of W=1. randconfig
> would not enable or disable additional warnings. It to make it clear,
> KBUILD_CFLAGS_W1_20200930 is not a Kconfig option you can select. It
> is a Makefile constant, a list of warnings which define what W=1 means
> on that specific day. See patch 1/2.
>
> I see a few issues with moving individual warnings from W=1 to the
> default:
>
> One of the comments for v1 of this patchset is that we cannot
> introduce new warnings in the build. The complete tree needs to clean
> of a particularly warning, before it can be added to the default list.
> But that is not how people are cleaning up code, nor how the
> infrastructure is designed. Those doing the cleanup are not take the
> first from the list, -Wextra and cleanup up the whole tree for that
> one warnings. They are rather enabling W=1 on a subdirectory, and
> cleanup up all warnings on that subdirectory. So using this approach,
> in order to move a warning from W=1 to the default, we are going to
> have to get the entire tree W=1 clean, and move them all the warnings
> are once.

Sorry, to be more specific about my concern; I like the idea of
exporting the W=* flags, then selectively applying them via
subdir-ccflags-y.  I don't like the idea of supporting W=1 as defined
at a precise point in time via multiple date specific symbols.  If
someone adds something to W=1, then they should need to ensure subdirs
build warning-free, so I don't think you need to "snapshot" W=1 based
on what it looked like on 20200930.

>
> People generally don't care about the tree as a whole. They care about
> their own corner. The idea of fixing one warning thought the whole
> tree is 'slicing and dicing' the kernel the wrong way. As we have seen
> with the recent work with W=1, the more natural way to slice/dice the
> kernel is by subdirectories.

I'm not sure I agree with this paragraph. ^  If a warning is not
enabled by default implicitly, then someone would need to clean the
tree to turn it on.  It's very messy to apply it on a child directory,
then try to work up.  We've done multiple tree wide warning cleanups
and it's not too bad.

>
> I do however understand the fear that we end up with lots of
> KBUILD_CFLAGS_W1_<DATESTAMP> constants. So i looked at the git history
> of script/Makefile.extrawarn. These are historically the symbols we
> would have, if we started this idea 1/1/2018:
>
> KBUILD_CFLAGS_W1_20200326    # CLANG only change
> KBUILD_CFLAGS_W1_20190907
> KBUILD_CFLAGS_W1_20190617    # CLANG only change
> KBUILD_CFLAGS_W1_20190614    # CLANG only change
> KBUILD_CFLAGS_W1_20190509
> KBUILD_CFLAGS_W1_20180919
> KBUILD_CFLAGS_W1_20180111
>
> So not too many.

It's a useful visualization.  I still would prefer W=1 to get enabled
by default if all of the CI systems have flushed out the existing
warnings.  That way we have one less combination of things to test;
not more.
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA%40mail.gmail.com.
