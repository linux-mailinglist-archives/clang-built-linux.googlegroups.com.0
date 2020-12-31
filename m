Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBF6MXD7QKGQEVMYYKKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 982952E81CF
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 20:27:20 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id c69sf8977626vke.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 11:27:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609442839; cv=pass;
        d=google.com; s=arc-20160816;
        b=kuBd+26VhBsQseQOKQWXvzqUj9+PvZBWhshrQomNFRYGaTVDL5PLJFtzwVxYkPTcR6
         /XdF6tFLiuQqfmsKX4LfI8FgZkWmAhFtdrvKldNR3D/FUzT+QOG+2lkOX101huqVOoWI
         k9HHrtjJC9lJ0TBD/NlGlShWCPGvDLadqCz3IVmJJaBfFeKta+VTgH1yWI5obfFynaVt
         m18OBhWIxNEyRU141HZkQuZXyCFYAzK+wncQeblwlRjCd960YLuxB6XxjovNoGCBYbnX
         ZWZ4TbitC/qfKQ34HUTcMa1/1u6wX1qu1vPDVuwGPUkzjQHGLLGh04rA1Hi4r3mb9FwB
         2x5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vTuq4mncBycatvGLfL93FgIuph/aXlko8rxIAuY4C4c=;
        b=vds5DbMbHnGswtQQ4YKhSXCeroG8WUglqkvAS2X1lR4m7LleK/FSX/QJMbzAVKeeHc
         b/L10F4SWrm+or7nqo3wOhp9s5I+/qwttUoRD4C1zb1pP01UNzkNpKm2rlEjtDMO+kI2
         HOO2a91AtWhTCbccr1XAxrujApuw81Oth91iaMKLPYHaMyy3euEOyu83EZMeNLUhRpF/
         4zdSijk12KA6gQX2jJbb5LTV0bXSUKJzVq7+PH3Uqq0MPQSqF9x51pYlHVBQjfzsMQqa
         ILDuPMlBre++yR8QMLeYdwm7eT30S92sujXVqTQPB8zaX/rhRlz0ufxW37nY2Wr67jLy
         Crfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UUKSDWh6;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vTuq4mncBycatvGLfL93FgIuph/aXlko8rxIAuY4C4c=;
        b=Zl8es7EGu1JXPqdlTW8fiCeqTAsJf9IM9ZRpNxev6gWECz2DXT4QTLtmt1OBArxJbg
         m9qArjrUSsWhvjZdb2MiEdDYx2OdwYt3Uz8Szrj9rgj/l8VKmTdaDKZ6ihWxc5/153N+
         L/hJBcB2ng13ScQTev3pD5eolqnXmSJ/3a9hgjNLrLu1k48gRP29yuFNCYg7hy83Obpu
         NefIBeJVUQxtCKQsUoxcVmqVl0F3ru04Fe5xPacaqbPHmWajeqhXqjDJQEfQxHA2qQ4q
         SpsikttY2we6H4gmEjDJb1al4mGurOF/gPv8G34BnD5venV4UVcXHbuZySOBqpcr3Et/
         uTig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTuq4mncBycatvGLfL93FgIuph/aXlko8rxIAuY4C4c=;
        b=iojF2hs5eNzOO414+HfJjMoFFY88a+TyiCCeFai+kBOsZAS3/o4gubNn/HlysXzOaJ
         wmzFjHJR9MDTNY6usiSfR+8gVucZW+5FC0wdDl6Ljxi0W3pzjf616Xm28wcY/sAh6fsp
         jkEd67L8E0xS3JKBc9zSRdNzT1VOwt/hbI3l2+2qhLwp0tzveXvfeOgrW5LK4yCkJYKv
         PIeESygHTVmaVW7JrhqHl358Zh2O4Z4t5Ie1pDmTlcR0cCumt2YNmZSA/zcRAqWMYwt1
         V0/3oyAkiJnZyx454rQ4r518a2RCHWldrGxN/tbLn9g0HgcFYwJv77dU4zWlb3krZSNA
         PgLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTuq4mncBycatvGLfL93FgIuph/aXlko8rxIAuY4C4c=;
        b=CENeLqGm9VQUEuqa8KPIg09/LjlphIRGo41OqiWj8OOKNDYKtCOIMKcN0aItSNxAW+
         10VIbyu/Vor6qO8dG602NHWj7J/4sZd8m7uI5cQsDkrYBDBLjc8xbpFGNUzhunMjRWRK
         C1ZmKd/CUUKKLXYFjZMYPMGUrScZr62v14T/CVeM5k1XCzlndiB9XuJBUORDUtskVbTc
         S+aL7noBvZ+lKUuvy5xZH6zWVjeUmvQEotbFgJmxicI0mLTfDeyOQlTZnsUTNy/1Uki9
         TdW/bGxK1Fpl9vtqZ/ruxhGJW8+cXlWNGXdQT7iR411BMBThYNRSExUz2hTIdDRMmGvB
         s1qA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bZig1uAmtatjX/JyYfHsR+mRAY0gui56OzY1X+4RAqU/VyjH3
	catdxhp3dVvqfepWqlw8kNs=
X-Google-Smtp-Source: ABdhPJye6pXFMeIGcUCg0xyTSprmxPMwuhib1uhswEDqHgB9XeBIIRMMj43LbaRz3Nv/nV2q6qTMIg==
X-Received: by 2002:ab0:1005:: with SMTP id f5mr38053665uab.79.1609442839369;
        Thu, 31 Dec 2020 11:27:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cd24:: with SMTP id a4ls3566703vkm.5.gmail; Thu, 31 Dec
 2020 11:27:18 -0800 (PST)
X-Received: by 2002:a1f:3008:: with SMTP id w8mr38686509vkw.24.1609442838739;
        Thu, 31 Dec 2020 11:27:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609442838; cv=none;
        d=google.com; s=arc-20160816;
        b=fS2ZCjEjf3/uwLpK3C0Odz4sIXklbzFZxHAgDnQFdaNbcHDWX3bUARNuAttZFssGZf
         4mUL/RnDydf+be06OuD/th4uOV0X0p5mHd5EV/BB3w1jtCj1hxoLNnurrDjJQ63lcFC2
         77bymZYrcdCqdoQinoLoBj1fHtE26A2zYUdv4vhaY2FPIoVxwAAqXDxGIJDYkoE0uc6a
         PowcKmO2C2td0/eaG1IeMPnhTFqYt/DKMWACGFLRi2ypdzUt1NJIecFyJTalC8fGQRmw
         5UKJjBD7Gna22xnQmGci4Aw6WGyotoV1s//zpW9DefLkzl8tG57o68sOMM/TvzpI7K53
         z8JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fty3BIEe/UPvAqoEJ68xkeG5aMRNnTOEFkIYO4/UqQU=;
        b=pIpCMw5uTbVJfsBG5dMYs1m02zl/FY9RC/KOXonDkNJV4c1WFj2YxS0Ti8IyPrLNCY
         9AmC5qqNxFwi1CLnTXViO21Nakg1a+NNGy5gtcwQbJU8cOBXJRvNTnWSeKlwTdzeLbEQ
         xUQXNFnBHWlKIADR1E2QbWyZKecRuJQDZ/tREnsvjYJeAd97BudUT8HQzC5TzbXBI1Xv
         92Thy6ckPXv2KCUrRvo8lB6To0tEDALUCqhODW8T2/7Uavh04MGk73gMdmcKQUZ1tqu3
         zV+eu86tqTXMV+zIFbsytXKHWHHRFp+bPJEyNn1G0rblj0erN8e5lUNb0ozCun3Ow5fc
         HZsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UUKSDWh6;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com. [2607:f8b0:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id m19si2959870vkm.5.2020.12.31.11.27.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 11:27:18 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d as permitted sender) client-ip=2607:f8b0:4864:20::12d;
Received: by mail-il1-x12d.google.com with SMTP id x15so18098091ilq.1
        for <clang-built-linux@googlegroups.com>; Thu, 31 Dec 2020 11:27:18 -0800 (PST)
X-Received: by 2002:a05:6e02:1a6b:: with SMTP id w11mr58819980ilv.112.1609442838128;
 Thu, 31 Dec 2020 11:27:18 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CAKwvOdkZEiHK01OD420USb0j=F0LcrnRbauv9Yw26tu-GRbYkg@mail.gmail.com>
 <CA+icZUW19o=bEcT6wOZ+9Yt6UtAoZ2-9ijNadC101_dMfn-VVA@mail.gmail.com> <CA+icZUWwNWVQDYUCoo6TQNBOtMqwwEuLJuNO2c8gvihs6jTGOA@mail.gmail.com>
In-Reply-To: <CA+icZUWwNWVQDYUCoo6TQNBOtMqwwEuLJuNO2c8gvihs6jTGOA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 31 Dec 2020 20:27:07 +0100
Message-ID: <CA+icZUX3WRUfnOsLrSpdGHSR8B=+Nj23wB47-FDYeSkaKneLSA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UUKSDWh6;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12d
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Dec 28, 2020 at 4:15 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sun, Dec 27, 2020 at 7:47 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Dec 4, 2020 at 2:13 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > sigh...I ran a broken script to send the series which doesn't cc folks properly.
> > > + lkml, linux-kbuild
> > > (Might just resend, properly)
> > >
> > > On Thu, Dec 3, 2020 at 5:11 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > >
> > > > DWARF v5 is the latest standard of the DWARF debug info format.
> > > >
> > > > DWARF5 wins significantly in terms of size when mixed with compression
> > > > (CONFIG_DEBUG_INFO_COMPRESSED).
> > > >
> > > > Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> > > >
> > > > Patch 1 is a cleanup that lays the ground work and isn't DWARF
> > > > v5 specific.
> > > > Patch 2 implements Kconfig and Kbuild support for DWARFv5.
> > > >
> > > > Changes from v2:
> > > > * Drop two of the earlier patches that have been accepted already.
> > > > * Add measurements with GCC 10.2 to commit message.
> > > > * Update help text as per Arvind with help from Caroline.
> > > > * Improve case/wording between DWARF Versions as per Masahiro.
> > > >
> > > > Changes from the RFC:
> > > > * split patch in 3 patch series, include Fangrui's patch, too.
> > > > * prefer `DWARF vX` format, as per Fangrui.
> > > > * use spaces between assignment in Makefile as per Masahiro.
> > > > * simplify setting dwarf-version-y as per Masahiro.
> > > > * indent `prompt` in Kconfig change as per Masahiro.
> > > > * remove explicit default in Kconfig as per Masahiro.
> > > > * add comments to test_dwarf5_support.sh.
> > > > * change echo in test_dwarf5_support.sh as per Masahiro.
> > > > * remove -u from test_dwarf5_support.sh as per Masahiro.
> > > > * add a -gdwarf-5 cc-option check to Kconfig as per Jakub.
> > > >
> >

[ ... ]

Some more numbers with Linux v5.10.4.

GCC v10.2.1
GNU/ld BFDd v2.35.1
LLD v11.0.1-rc2
LLVM toolchain v11.0.1-rc2

So using GCC with LLD together with DWARF v5 reduces the binary sizes.

Looks like Gmail makes the tabella look ugly...

          | gcc10-bfd | gcc10-lld | gcc10-llvm | clang-ias
----------------------------------------------------------
vmlinux.o | 580212    | 504508    | 504508     | 353864
----------------------------------------------------------
vmlinux   | 503172    | 509944    | 509944     | 358500
----------------------------------------------------------
dbg deb   | 701576    | 606348    | 607656     | 506816

...so I add the lines below.

580212  5.10.4-1-amd64-gcc10-bfd/vmlinux.o
504508  5.10.4-2-amd64-gcc10-lld/vmlinux.o
504508  5.10.4-3-amd64-gcc10-llvm/vmlinux.o
353864  5.10.4-4-amd64-clang-ias/vmlinux.o

503172  5.10.4-1-amd64-gcc10-bfd/vmlinux
509944  5.10.4-2-amd64-gcc10-lld/vmlinux
509944  5.10.4-3-amd64-gcc10-llvm/vmlinux
358500  5.10.4-4-amd64-clang-ias/vmlinux

701576  5.10.4-1-amd64-gcc10-bfd/linux-image-5.10.4-1-amd64-gcc10-bfd-dbg_5.10.4-1~bullseye+dileks1_amd64.deb
606348  5.10.4-2-amd64-gcc10-lld/linux-image-5.10.4-2-amd64-gcc10-lld-dbg_5.10.4-2~bullseye+dileks1_amd64.deb
607656  5.10.4-3-amd64-gcc10-llvm/linux-image-5.10.4-3-amd64-gcc10-llvm-dbg_5.10.4-3~bullseye+dileks1_amd64.deb
506816  5.10.4-4-amd64-clang-ias/linux-image-5.10.4-4-amd64-clang-ias-dbg_5.10.4-4~bullseye+dileks1_amd64.deb

- Sedat -

> >
> > > > Nick Desaulniers (2):
> > > >   Kbuild: make DWARF version a choice
> > > >   Kbuild: implement support for DWARF v5
> > > >
> > > >  Makefile                          | 15 +++++++------
> > > >  include/asm-generic/vmlinux.lds.h |  6 +++++-
> > > >  lib/Kconfig.debug                 | 35 ++++++++++++++++++++++++++-----
> > > >  scripts/test_dwarf5_support.sh    |  9 ++++++++
> > > >  4 files changed, 53 insertions(+), 12 deletions(-)
> > > >  create mode 100755 scripts/test_dwarf5_support.sh
> > > >
> > > > --
> > > > 2.29.2.576.ga3fc446d84-goog
> > > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkZEiHK01OD420USb0j%3DF0LcrnRbauv9Yw26tu-GRbYkg%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX3WRUfnOsLrSpdGHSR8B%3D%2BNj23wB47-FDYeSkaKneLSA%40mail.gmail.com.
