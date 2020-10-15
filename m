Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKU5UL6AKGQE6MBAKII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F5028F811
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 20:02:19 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id q15sf2596174qkq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 11:02:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602784939; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2ZdPpjjFeJ1jn73jcleslRinU4bzdKX/5GIyJsUGTSHZlIz1xVu6TkBeERQNuSioj
         8/X9+VQ+wYMA5l2asFBg0a9amufVp8VwYkjyH7peLvBXh2mbybA3Fy1MzRsf1rp/tnc7
         N+PMJAumnjKvEmV/b8shZLyWBQaEOdGuyfSxX/yi6RlDK7aX0Q8/TaWPFVUtjvUfINea
         9FmFUPU5RI/l3qryAA/7ZAIXH5Fi+fWNPfr5wl+R0z8x46oFxOiMMgzGrdR34aiArBxH
         /BD+OIe6QpZiDGtUxdgPVSu+bFk1xmP1JxPTE0Ri6vxGOI8GVfX9jSExy+j6ccsKO+Pm
         WJpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ipSQudfPJ2H+ZQ8RQ3qt61qSGUneWpxEgeOP8A0GrF8=;
        b=eYoHJNehv4+ptcsOrmYwwaq8ZlzzM+x+EtL50M3gWb782nFd0S1ROLahroDw97z10L
         GTIf9U4N8CgqoMIGyzoMI9cYQehdcZ7p3UhK+9E1BwaLmSr6Y2i88MzevM0sIVrbDMxA
         /f+qFPvU42aaMoL5QgZGkepNycMsUlwhpdqrE3JV6XJ2owpmhndSR6mCELjqAOKH1YMf
         h1xC8btzqcA8vBWm1+YyqiEEsc38Z1D09SpJ/BjOW4CP/GZhr3uNTWw2JUWyeVruLMlP
         WRIXxUyi63WrauWvt6stu9PfhAiVO2sd7ObZvSXRA2FQpnsj6SideD7qFZlAv42Y0HyR
         FEKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sJch2070;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ipSQudfPJ2H+ZQ8RQ3qt61qSGUneWpxEgeOP8A0GrF8=;
        b=fQbqvyCJMu7btF+ta44pxITfhMjJPMZmBGZJMUFJHtkdjGOxMp92RlO21y39XMnNbo
         yGbPfML7OvSs5DLHXRE2WrFPd/kRD2WlVL1qPA/LUk2l4khdWVBr2bFs4srNA2c05c5X
         qGDFCrgU3IfaW8xlQTveQwC2ky6La4MyS66i8GcZJ/4LJpOBw+KYR6f3ToKouvEnrmII
         dn1FbfLc2q/I5q7dyu0UMejCpnb/Tfkp7lm8bZhZPme60zGQeaNfEcq/KnZyyYk+cSSe
         YfbOg1YvvGyhRPqS5OpszVPv3GXGjvlqSMPVtXENTEiRk6YQkUGRvAJtDuCVCHsz4knR
         ymWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ipSQudfPJ2H+ZQ8RQ3qt61qSGUneWpxEgeOP8A0GrF8=;
        b=CsWpBcR88YeZSXZcmItWjjLNDAPvF+HTl/rYNbsa0nnEgfg4sTUHqq0sfleQys4Ma5
         4LBDlrxcEDmh9xKajYt9VF5CaOpiOKgdwazUn3uAhejncL39iYaPCkKLfU2feksJpnub
         Qeji0EVMNXGwp2B4nDyuCtWIk5q8DyP0TEtfxPijzJpRY4jvYo6R2MPIEgK8IzuBwjfI
         fRqss8Zms+HSzFduo1vcatniMQicE/C+SvRXVBSJh/FVAo1MuOYfjEhZB38hyOpaZ7UX
         6kqSKcZLp7CxyJWeZS1jJwIWS5AbB7RQz7KTg/GWwyfPlC8wdr6jC57NYIyQ9K/J50hI
         ogvA==
X-Gm-Message-State: AOAM531IB7NRY3d+27AHMLY5y4zXz+ORfB6EkdEQRc8uXxLguEhJE3cr
	lyWGUIq4BbiTVZGLWJDeYBY=
X-Google-Smtp-Source: ABdhPJyu2aIOaPPiHhSjbmCcT8XILpxEsSyOeFO2XD28IUnDC4ZZkm+ff5+FvkId4mmCL0S+4ob1Bw==
X-Received: by 2002:a37:686:: with SMTP id 128mr42152qkg.421.1602784938822;
        Thu, 15 Oct 2020 11:02:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7347:: with SMTP id q7ls1376226qtp.8.gmail; Thu, 15 Oct
 2020 11:02:18 -0700 (PDT)
X-Received: by 2002:ac8:4719:: with SMTP id f25mr5313801qtp.145.1602784938354;
        Thu, 15 Oct 2020 11:02:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602784938; cv=none;
        d=google.com; s=arc-20160816;
        b=ddo/BezQv7ZZ6ULY84dgvnltdjA5dUG8tP4wxeXQYAWj0fhZHC2sxcC0z2X8qqiWgf
         rnTvdcpRHFsSu5UmrVX0qHbWkN6q1J32/9SDcdJnaGmRamCxNjb6ISXHmUHaO31W9Jsc
         ti30xK6+9OocNJPMZ2UB2wyaFnECk+3k5BTQeRvzJjmbF9xWHI3//XiWSbXbfZlB7JFx
         hoXepG9aNOzFN0CYTfeUGuzjF60lXsiJHwcFOMtVI3kveSM5YZ7G9jcRtiwRXJ//9zns
         NYv0jK/7kYG8NAB5BRj93GMN+adjTW1FjeAXPrg/23gUaEB6lTnJZ8uo8Rh4JwMtIXyV
         x2qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GYNActZ0AKYfrbVyKv04yuiOyeZNCPu9E3n2RgQv2sg=;
        b=b4ZWP3HsJYyUny/5V7k56fuiRWvehvBmeo1ldFc8Ps+KuWTNRASQMJYi8u65ATvXdD
         d98vL2FQe/SPLQHPkpRtNMNItBw+cfaCNQwmtEudaj4QBGKTVBKtcHFe8kyKIeHBqX9z
         UTJRGGme3azxwqrVqWlVFMM3wDiEVW6tAmdr1HkG4rwM1WcRMZeMfP68013GNHh40Q8f
         HOatfNdyZNn8OUTF+vmbYHZSb7CLSlz2Ia/7bXLd4taj3dJG4x5uZbqfLhPcRhE6/Yt9
         EcVvmFco/kun/326kUE+nMbWrY1gjJTqiSTjpBaPbl6JVM2grQLuMoQQd6hbmw87c9n9
         No5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sJch2070;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id h18si240389qkg.3.2020.10.15.11.02.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 11:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id 1so2038543ple.2
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 11:02:18 -0700 (PDT)
X-Received: by 2002:a17:90a:3b48:: with SMTP id t8mr23515pjf.32.1602784937226;
 Thu, 15 Oct 2020 11:02:17 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000064f6cd05b1a04a2c@google.com> <CAKwvOd=4h5-YFWvUATRx=++oGJ9jfBP+n6B=4iuW_nWU5XfJjg@mail.gmail.com>
 <CACT4Y+Zv5nM4V0jPr+MXwDCcrq8ZZjKFfpHBJBGOekYVOrtOeQ@mail.gmail.com> <20201015175819.GB3336735@gmail.com>
In-Reply-To: <20201015175819.GB3336735@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Oct 2020 11:02:05 -0700
Message-ID: <CAKwvOdm7=WJHaz+Kq9rxsTZ_AJKAMaYQ65KYOpGWQHu7gXHUiQ@mail.gmail.com>
Subject: Re: WARNING in __rate_control_send_low
To: Eric Biggers <ebiggers@kernel.org>, Joe Perches <joe@perches.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	syzkaller <syzkaller@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sJch2070;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Thu, Oct 15, 2020 at 10:58 AM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Thu, Oct 15, 2020 at 08:04:09AM +0200, 'Dmitry Vyukov' via syzkaller wrote:
> > On Wed, Oct 14, 2020 at 8:01 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > Hi Dmitry,
> > > How is the cc list built?  Is it possible to not email
> > > clang-built-linux@googlegroups.com if the compiler is not clang?
> >
> > syzbot simply uses get_maintainer.pl.
> > clang-built-linux@googlegroups.com is listed for net/mac80211/rate.c.
> >
> > linux$ ./scripts/get_maintainer.pl -f net/mac80211/rate.c
> > Johannes Berg <johannes@sipsolutions.net> (maintainer:MAC80211)
> > "David S. Miller" <davem@davemloft.net> (maintainer:NETWORKING [GENERAL])
> > Jakub Kicinski <kuba@kernel.org> (maintainer:NETWORKING [GENERAL])
> > Nathan Chancellor <natechancellor@gmail.com> (supporter:CLANG/LLVM
> > BUILD SUPPORT)
> > Nick Desaulniers <ndesaulniers@google.com> (supporter:CLANG/LLVM BUILD SUPPORT)
> > linux-wireless@vger.kernel.org (open list:MAC80211)
> > netdev@vger.kernel.org (open list:NETWORKING [GENERAL])
> > linux-kernel@vger.kernel.org (open list)
> > clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)
>
> Note that you've volunteered to maintain every file that contains "clang" or
> "llvm" anywhere in its contents:
>
> CLANG/LLVM BUILD SUPPORT
> M:      Nathan Chancellor <natechancellor@gmail.com>
> M:      Nick Desaulniers <ndesaulniers@google.com>
> L:      clang-built-linux@googlegroups.com
> [...]
> K:      \b(?i:clang|llvm)\b
>
> If you don't want that, you need to remove the "K: " line from MAINTAINERS.

And if we remove it, then our mailing list won't be cc'ed
automatically for patches that contain clang or llvm in the commit
message (or hunks).

Joe, would it be possible to distinguish between get_maintainer.pl
matching this on a patch file vs. -f <input>.c?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm7%3DWJHaz%2BKq9rxsTZ_AJKAMaYQ65KYOpGWQHu7gXHUiQ%40mail.gmail.com.
