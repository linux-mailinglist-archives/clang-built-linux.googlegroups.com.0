Return-Path: <clang-built-linux+bncBD4LX4523YGBBYU73GEQMGQEPQFO6AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ADA401F25
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 19:29:08 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 202-20020a6219d3000000b0040b60510fd8sf3632909pfz.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 10:29:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630949347; cv=pass;
        d=google.com; s=arc-20160816;
        b=ag68fDGwVC5V9mraAqlllJGM9V3bv9PwQhRh3jNrUxE95O5ao/dWIEyXV6FkuX45ev
         fbjz6Hoa3/OPQHsDGvcSvxc/xrXWPB+MaCKrh0hV8qZwZuHhlGEwRzbS8nHSeuWT5s6U
         N6XnEYwWZM1UoWh86izhiIHDf0yufs+11RdfGb9GYEmpolGSJnktGBEiSDqjQGR4DeWd
         YWpi0wL6m7ZvL3u0eTjQ90Mm0cQwC9kVlBmAzPB2bSwltvswsJkHsnAySGp5q2j0Rthf
         KMCP++CxhacWuwTX3btSF9ll1zU+TkHpW62A+91nmm3IB/2M61vo+J6E8uhG8NSnmIJU
         in3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=aWhJK/LwxnDKNbcK62EA0lZo0Tq+D8JF88Pje6GzdEM=;
        b=h6tM+F9+DWcuqeK2fCt2UrQGyHzO/TdSpCPYRfDq6Pglo+8zu72DmX7jod8kwVZdLR
         AAhW2BX6YekEbSJ31j1oeE4H+dR+BeD6BINPZ4LbdHQ76xfDPFon3TD7oBF8OII/6IZc
         pVTEHJaDpAbrYBnHEtjwGCqfpBUOTXjDqSNDdspa5qWaifR1/DvojAi16BaTbbXi/g5G
         KwNZ0X2cVTTNRn0ixPixgVn1vVDp4npGISajy/DslVvqXqiGWzBllnBIs2dKIKaPNqqQ
         dhp9M+YuRXwmTIbRrNAS2dxa7C+/DJDvBjeL8wz4Xm0FwnikdWo5r0uKrM1qqednTY7J
         o26A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aWhJK/LwxnDKNbcK62EA0lZo0Tq+D8JF88Pje6GzdEM=;
        b=VBeTWtdalbh6BhzgzOL4VUNwZLmP6V4zbF+LsWpkcdNAs0X/W4UzAEqDmRroEpY5iv
         plBoBZnmZPCE/Zv/e3ciU9oC4uWxXBXU7L/Ix5abV5j8EmEj499xPxoI50Qf40M0p3y8
         6PU75f31ON+onF34NmRV9FMCHnrc2/GsQKdBdyWpKBXihfafuXIRj6iShAKEQJBUundX
         OCO4VOPwUpWa36J9QRdnuW6Tu5kd4iDaXL2pYtC6ur20U994QFlgmT4GpyrUFEb4uxRJ
         5yhUo0fUKn1yFq2Tra2ZfVPDaODUexDcxun0v66qdZpPVzi6bos2i2Xfy/1TH/laPYpA
         CWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aWhJK/LwxnDKNbcK62EA0lZo0Tq+D8JF88Pje6GzdEM=;
        b=JdxuLMfdoxcdYiU3Uw6zlVxjT5/gZPzyw5/IkGKNF0bp8TUQKoHo312dvDKffR6u2r
         sMhJ3SPu+FlSDrhsXY2aGW/05DUSEWM1iSnoJzsqOZVLXvT4yhBXEhbJbSLCma/APGmt
         Rw61RLtxcFuaCCus0Zmj9UFZSb7NjQ/VX47mNjxIYffLJIcHaKbX2aM50QgM10wtu3cJ
         tfPSeLGfvdBCuOc0cCUqTcDs9kc0vsSalxcIjv9yQhXEgATLcbXWnenhSIVzSMNvt7V0
         qKhcxqExhIqVo8sbAJOn2mekAfhx/IIIXmWwk1rnMAxeZLVrDUvX53s+KOtn5gkMgntV
         KnEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326cRmcRifMkoiwUGngtGIEeAGgeF0j9alXsuyrhZ2hLDoNP9wP
	+P1cVKjXpjyqbMoinDYmj5w=
X-Google-Smtp-Source: ABdhPJw0vl/DjGc10Z8060OgrFUiehU6FXXUgM2Vg1lzsehpvfVrUxGCVAOqdKZICt+8y5iRndpV1A==
X-Received: by 2002:a17:90a:428e:: with SMTP id p14mr158130pjg.229.1630949346820;
        Mon, 06 Sep 2021 10:29:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7b86:: with SMTP id z6ls51782pjc.2.gmail; Mon, 06
 Sep 2021 10:29:06 -0700 (PDT)
X-Received: by 2002:a17:90a:6f24:: with SMTP id d33mr162256pjk.239.1630949346112;
        Mon, 06 Sep 2021 10:29:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630949346; cv=none;
        d=google.com; s=arc-20160816;
        b=XDLJhbD+ys4Pv1fE3BSsQaR6tn/wZQEWsGX16bCL21YNfQ4i7/zFlCsveB21Z3KmiW
         XcM519MxiKWq+NEPg5FgyAZ6SN4xtdbBgLywcv1n1oYjRJssKhwt/GKU4a9TuPzwrhRG
         v/3rlawfnLSPDlg/zkGUyOnL+pJ+ntOhNSquJDZMeVXkxTwb/hhz18Ug2lzU84A1gFMD
         z94BkmHF01+Fi1W+01KiUULF5PoBCkdCQwoeMr/cQelN9qkw+cnkYlJDBEcOL1ZXk/wf
         paK9lpx3Ww/bWvTZzX9eWEI/0SgSeGyCwK55A/0ChmtSPmj4GqSQgWmD5Int1oYZfs9L
         L+gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=swti8YUtLpPeDsjZcPJL/3kz1gHCApr3R3ItLjEqsIw=;
        b=junjOM6uvmkVKsS8cSgz0O0FxhuCBWkGQG5VElDZmnXfuXqVC4QdLb2OFJic6Ehs2C
         P/1oLDjm9HhtN+MTZBEkt/MS+bGlNNDVegphcxmkGV98zBEHtIL3DQ3PeZ9H6/8LOTHO
         pugBotF+oyJ+gomZMh168o0fyP7kYXXUHT57N6gAPIFl8kdeKfv/TepRCeFW1ZY9oWsK
         uuuWmDO5zQdCzL9Uk5ukduC2vyjiRNAbB3YVUC00Lwv4VHhEeDDF8hUgguotEad3ckWW
         TwVRdCMczlbtWzD/L1aWx9eM7JLHHjHw9YTA5q2y8zXIQc7TN/yJpQ2X0HBHHfW7NVaJ
         tQcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id n63si445915pfd.3.2021.09.06.10.29.05
        for <clang-built-linux@googlegroups.com>;
        Mon, 06 Sep 2021 10:29:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 186HR2QU010674;
	Mon, 6 Sep 2021 12:27:02 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 186HR1qh010671;
	Mon, 6 Sep 2021 12:27:01 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 6 Sep 2021 12:27:01 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Florian Weimer <fweimer@redhat.com>, Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210906172701.GX1583@gate.crashing.org>
References: <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com> <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com> <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com> <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com> <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com> <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Sep 06, 2021 at 09:30:01AM -0700, Linus Torvalds wrote:
> On Mon, Sep 6, 2021 at 8:50 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > Yes they are.  It is the single standard way to get the functionality
> > you want.
> 
> Sorry, but 'standard' is the part that the kernel simply doesn't do.
> 
> Just face it. The kernel isn't written with all those standards that
> are designed for entirely different things in mind.

The kernel is written in C, and C is meant in part for implementing
things like kernels.

When I say "standard C" I mean "without the GNU C extensions".  All C
compilers implement standard C.  Only GCC implements all the GNU C
extensions, and implements most of them correctly.

> > I don't know why you think you can separate that.  Take <stdarg.h> --
> > there is no other (portable, standard) way to implement receiving
> > variadic arguments.
> 
> You clearly haven't actually read the thread.

?

Are you refering to something more than what is at
<https://lore.kernel.org/lkml/CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com/>
?  I did read that.  If I draw other conclusions, well, that happens.

> That was my whole argument.  For the _historical_ situation.

But this whole thread is about removing uses of <stdarg.h>, and
eventually removing the
  -nostdinc -isystem $(shell $(CC) -print-file-name=include)
thing (except in some places where it is next to impossible to
reimplement the compiler's implementation (instead of just very hard
and useless work, making all this more fragile in the process)).

That is not the past, that is the future.  A bleak future, if technical
decisions are based on FUD like "compiler headers are dangerous".


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210906172701.GX1583%40gate.crashing.org.
