Return-Path: <clang-built-linux+bncBDYJPJO25UGBB35PQ76QKGQED7FVMGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA852A5A03
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 23:21:36 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id f185sf1245587vkc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 14:21:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604442095; cv=pass;
        d=google.com; s=arc-20160816;
        b=oVfdF5j3nm8fJ8tvYt8t494UR5QE8V00li8hpF+kt9wbE62RWW6sYm/15aHMKYzAi9
         qcNi5KZPWZhbVKNMc5eDrurOF2MP3+DZHijygA1qIT08mUvNZt1rm/cnGSkWJTw3b0Wn
         tQvOCaV3lXbCohg2K3j5sKYM/glhcZi5z2l+rOVMphVPRmztbc2f+x6XipRsHRQwKSwi
         CH17m+V01IiwerFwDBR3hy6x40lWzryF1nsKWFO1JwTVTjd/v9aIWZMtWJHSFRDbEEuj
         lfHB3omnJOTEIaFTuTbpUToYWUORbe6fVxLv/U3/RKx7u9r2kVQ0w0mac7s5WITEYa++
         VsYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hZIe5wyQDP9LhnHiENYidB9c1Fxvj4lr+aOtcJFn5+M=;
        b=q+zHUg7oWbHfzenOLC43gsZhExQ5Nkho2PfNtMs4Zh4R6eMhoBYvifElp86Rcnkset
         UJbukFhZPHlQ2pKwMnURnHfoNM3UTr8VkHG3AHB0SB1A7oKXtSabkYx5+Csu5agKFHhq
         NVhZrgSO5QobcOzqLIt3mX5tZimSPfgWBc3zFNPXpprlD59/iICWp+dzJLP03wWXM6As
         Ogc2o3VCf+468/yanKhmO7zKSnORgweeUAclw5iU80YSYTMcFXP27nureNxY3IPe951I
         rN0eIALx4ETabfdQk9XiP0/SpRaD3MZz/JQAr1RFfdwmVjWfWHtL3gfpYKJuThUzoic5
         l8IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=csXlt7v0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hZIe5wyQDP9LhnHiENYidB9c1Fxvj4lr+aOtcJFn5+M=;
        b=p44QL8ziebRmQzuxuQP6ktQKReVYFF8txgHf1ecoV2bF0kN4kPGFpyvvbOCEI+MtYm
         2YjQ32EFMitm4mAh8St9OpEcNb5kCpue2nSVZg9dwDoUitDZCA2jFr7PSBzT+MVIRvBw
         m+QrWh+rFSf6MyKlbcqGtCep4mBXfNDtPvofv0392820dVE//786sf0115Zglqf3Hiql
         HflqLje2ht4I5iYHytBQVzmsFZh3inWX7LMXvyg9uSeoDGQA4pg0DHyvkb11BAKxOlKa
         JGkvrHeaSSYoWsk2QZNhWpJp7GX4j+nU6bk9VCMfdqdw9znXRUqfj2Oaz+l3p2Dgi69p
         1aeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hZIe5wyQDP9LhnHiENYidB9c1Fxvj4lr+aOtcJFn5+M=;
        b=CntahSNWIM+sum8OqBb7teNN3LyC+dPVVUSv6GkTh+b99WNb1b9c0b/tgcUxHSW846
         dewHyqE1i0/APlhnSgzSaBkl6pFrpsgNnFRc6Jwdr4q+4WJ9Kh8JeHzY7s/zaDEA8ch7
         C5diRhWIYAMXdOZqzQpvjUzvgfQhtj9J/37KiIwPOqQ/uQCd31UPsu2LXIb4j6ABCP3R
         ptj4cwRjEcrqyYeULMU9xHKs6KkWp+mRNcwgcKs8uCflIIcbj2ASZpHkbS12KHJQqU/6
         tiAD6w+gFjUMyEqCsLWtv6jaM1qWqSNxmyxCtsxPLIvExNxiaHinb3sKXS0oGRTcYwKw
         wnbw==
X-Gm-Message-State: AOAM532l3fg3zoy16Cjmbh/v166vMyymx8zp0wP3iissVvepGRbH6/no
	P4C0Fuy9EnGTUOqYl0SnvYc=
X-Google-Smtp-Source: ABdhPJzGXaEICtpRm/Xo7r8HKgmpc4XnE01ckq+94JPCz+7Vn0QhOXwZTB+VLtzUZBnWFDlBaHq2Nw==
X-Received: by 2002:a67:ed0b:: with SMTP id l11mr6060736vsp.34.1604442095229;
        Tue, 03 Nov 2020 14:21:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9bcf:: with SMTP id d198ls22760vke.9.gmail; Tue, 03 Nov
 2020 14:21:34 -0800 (PST)
X-Received: by 2002:a1f:ad11:: with SMTP id w17mr18515788vke.0.1604442094724;
        Tue, 03 Nov 2020 14:21:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604442094; cv=none;
        d=google.com; s=arc-20160816;
        b=jQa8aD3n+pGhSFF4p8iFa4qGBBZPX8Psw6a7ww0vrUXgrJ3lmHyy0Ixz1ZYOQ1DdeJ
         ktceHe/1opSiWsmgbXW8FafaSxCAVhDpIhTmKdTxpnANUdmwJ5jq08tMKp5xj9vnTzEz
         Pq+ORzi3Sj/QfNq2dwnMrxJfb/QqZZSCRJJZ8orGJqoVVTPlyJYZjSiRbcwuQ97jT/rO
         otuuTYYd1nC+WsNpQFBrZFiRHrG2tdIhh/3TeIezKuLUlPC/Ec7c6uVQmz5I7eshRMqn
         nE4NMtvXMBIJcaoi/oTlolkIHRC4CepIvAHC8lp1DcfpbgOO1AqYYaYA0yT55F/0w5tR
         ropg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t/8gNKrqVbgeWIKJqFS6oCAzempsVueUa9v+XEgt+p4=;
        b=LqlSUqFYxc/TxVqt8gpTT58Z/qqGqXeAMaqH3pJIyPOeI6PwrPzR4/BYMin8tBlvM+
         vgczQx2g57MrG4HEiGbD6oFwDmPErCqZpxJNB1BY2xRES3/gLlZAFgD/2pIP2xU2sY8a
         Dw1sSilrnPEy95YvjyYWITrLGOYRyi/GClg2g3Lxyw6GlPWipK6dRlvtKuudjPBqOJu+
         e3KHne8sEZMa385XOMYEEd6V2biPYDTSjq/snU4TTdtuGqJ3ZrZIDJnpKJAU9lGBjW93
         bpYN/SiS4kvmBT7oEf3d3jUouUKMHCWRE/e2G/2CoAkn2IbDLgVqlq747GsKG9fiiDw3
         plSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=csXlt7v0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v18si22199vkn.4.2020.11.03.14.21.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 14:21:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id e7so15530343pfn.12
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 14:21:34 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr1311215pjb.25.1604442093720;
 Tue, 03 Nov 2020 14:21:33 -0800 (PST)
MIME-Version: 1.0
References: <20201022012106.1875129-1-ndesaulniers@google.com>
 <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com> <20201102081810.GB3788@tucnak>
In-Reply-To: <20201102081810.GB3788@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 14:21:22 -0800
Message-ID: <CAKwvOd=ez9nXCdQu6QRbNk5tfUAsSj9RLhopZtNE4RhDupg7+w@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
To: Jakub Jelinek <jakub@redhat.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	Alistair Delva <adelva@google.com>, Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=csXlt7v0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Nov 2, 2020 at 12:18 AM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Mon, Nov 02, 2020 at 11:20:41AM +0900, Masahiro Yamada wrote:
> > > --- /dev/null
> > > +++ b/scripts/test_dwarf5_support.sh
> > > @@ -0,0 +1,4 @@
> > > +#!/bin/sh
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +set -eu
> > > +echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> >
> >
> >
> > Please tell me how this script detects the dwarf-5 capability.
> >
> >
> > This script fails for GCC 10.
>
> One thing is GCC DWARF-5 support, that is whether the compiler
> will support -gdwarf-5 flag, and that support should be there from
> GCC 7 onwards.

I should improve my Kconfig check; I don't actually have a test for
-gdwarf-5 for the compiler.  In godbolt, it looks like -gdwarf-5
produces an error from GCC up until GCC 5.1.  Does (5.1 < GCC < 7) not
produce DWARF5?  Maybe there's a more specific test you had in mind?

>
> Another separate thing is whether the assembler does support
> the -gdwarf-5 option (i.e. if you can compile assembler files
> with -Wa,-gdwarf-5) for GNU as I think that is binutils 35.1,
> i.e. very new); but only if you want to pass the -Wa,-gdwarf-5
> only when compiling *.s and *.S files.  That option is about whether
> the assembler will emit DWARF5 or DWARF2 .debug_line.
> It is fine to compile C sources with -gdwarf-5 and use DWARF2
> .debug_line for assembler files if as doesn't support it.
>
> Yet another thing is if you can pass -Wa,-gdwarf-5 even when
> compiling C files.  There are several bugs in that category that have been
> fixed only in the last few days on binutils trunk, I'd suggest
> just not to bother, GCC 11 will have proper test for fixed assembler
> and will pass -gdwarf-5 to as when compiling even C sources with -gdwarf-5.

Do you have links?  I would prefer to do feature detection rather than
version detection when possible.  If the bug is so severe that we
think we should scuttle support for old versions, I'm ok with that,
but I want to be able to link to hard proof in a commit message so
that in 6 months when I forget why we made a certain decision, we have
historical record in the commit message/git blame.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dez9nXCdQu6QRbNk5tfUAsSj9RLhopZtNE4RhDupg7%2Bw%40mail.gmail.com.
