Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBH6K5GAAMGQE73YRUDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AA630D5A0
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 09:56:01 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 68sf15622720pfe.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 00:56:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612342560; cv=pass;
        d=google.com; s=arc-20160816;
        b=F3Gv9TtIA2tbMBcs53rltdcnxhND4n75CrOAvbT2MfhDDMm8UhdyCrKrmECfuHskKZ
         JKBD0baACTMRScBjzSE4pQhbnYrzP2j/Jl9d3fu7ixvOyVZs7DXeMupeOSrbizrZJ2xc
         Cjihku/zpzjW317ilK1EeW0lZLK4TEEhT1OZETlvFEPLDHTOMIeMShJmZg2pUqtwwmli
         fDc7a8ECUKsgij0gYr2e3GwgLRDbwqbym2OP9YDQmGrOTvd+cprVAYciVlkoG+9wdFZE
         t7Eo6jAz5ktGRDX9kV+gIhUdxn39RI7m2nHDQ0hIgwwM5LbBgwARKOMU7qkxEDeTx1GA
         wl2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=r9sxGZobzxJMk9xH4sgx8YbDCSBu5t80Qg6NbO2GG4Q=;
        b=xyMW8xt2jBp8AIuAFPrYM7t8aGuBPhjlLVdh3PONvE8sHHQ+bO7103gUnWj5hCZVal
         Q4gJHEeqOhS/gKJK3ApOvTk35M95LDCDc+G4q3YhUjs8UHmydRBg6fI+GPEpAGeibVre
         bnlVcolBE4h/AwdgXtuMrkrAvdEz8SkQfickIsIxbTksqAdjB++okmSWpllUuyNBtSTW
         tU6v2ChNDW2JuwuI+k4N3ilOWi98W95bYQpUUBQXDHr7nFA00MxSHKRMf6WhqA5wlgjH
         tQc1JQ6VN3mAVEIsydN7NMjONxIf61iB1Pms9OvHkxxYDRQDlg8RpKVIkSal9SrS92U9
         mIyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sksLsHSa;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r9sxGZobzxJMk9xH4sgx8YbDCSBu5t80Qg6NbO2GG4Q=;
        b=re7ZaENI6nbOdEiLlBF+Ed02t1VoCSDpAfH8X/Qu8HfB58zN0jmhL1V8Am2KaNALM9
         SSh7RXgbXhEyXFc7+WQfTMZZnYYF3VBFmLlrEs10J8f6HTOwnN1+lJlKxd1BeXE/NNo3
         1v/A5UowH26WHELWhzBQE66yr5aI758KIXBTaGroRyfRH3pv4Sh+Mni3pfXGWC9Zylli
         r+efL1c4hDMQcZUjkOLAeEiNKBWEtDFpZUhS7DAGEqa8MZ1utkO6yDHyR+nwm+OVyF/8
         J06mDhnQ1F77GJHfPjGt6aJQqhQXI97Db4PiY6/EoYj8zF2QiMga3kWWKtSTKh/dI3J6
         JEMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9sxGZobzxJMk9xH4sgx8YbDCSBu5t80Qg6NbO2GG4Q=;
        b=cTSf/X8eb8XO7WGhPACw1p1szBWgU1tNNqsu9chDGjjkgLoxOIfqajCyKt956cf9Fg
         O5Ux5MdoAt4DsSnn1OsOJmrWOD07zqRgSeMdJnLrEvR203Lcr0zf7GhQwfoP0et7UEET
         fRKXkqNyKeiV1LfbtOlatOYKauZfOBgKxpw1VhCdP1sKHX23VJufEtg9uy+8kYk1auWV
         nMTwZVPjv96vpvQ4hSnUqSd8A+G7f+x35YNJmwQRBqujC5R7ReM7ZpVpfPbSphFfLWGy
         X1wvQfiRn6R35x3k7LBTN7SkIreP+FMY/EjabNNSl5i2pH+K2TsKRemEVzkTn8NBpKzd
         A/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9sxGZobzxJMk9xH4sgx8YbDCSBu5t80Qg6NbO2GG4Q=;
        b=p2fe3BXw0LlthYXq1JFAp8eq3zxDpRKEMC+7YjE2OaNvdUoeMimZ4jch2h5lLTa4kW
         NF9i6iXv+IE/XmnKCj0tda269qfs4880/G6H3iEr+a0+lnKeGLSHn2534kCll/sv5OUu
         kUQzPupbvPAExA6H0K2zXtCZxN42J5+eGDxnGzS+b/cNMago6X3qFlOsxdsiy/66bc8v
         FviiSyJoikcjF40OMlAuQJVbP3OU9A5XHjXfhcNTVLy/vQqmgFuAStlqh3Dit7/8TMML
         spb8aitbBbNmhutPzORU1agAgnwJ8CnnkilchFxoreLRGlyn1aHcCMVZG5crgC5/aaBN
         8IVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533X/B7EeswYncbo2GchyntQX6xXy/SMVWQeDpfBMaSKJbWD1VnZ
	+CmRjQSeKww1WQhT3anNIp8=
X-Google-Smtp-Source: ABdhPJzjmFDqG3/L17xbm7m5m8ADt49xRq7o+ucJGIjoditPTA0oAauFFvFBnAWzi/X6ZKjE96gcug==
X-Received: by 2002:aa7:87d8:0:b029:1bd:d756:bdc9 with SMTP id i24-20020aa787d80000b02901bdd756bdc9mr2202210pfo.68.1612342559922;
        Wed, 03 Feb 2021 00:55:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9309:: with SMTP id 9ls679675pfj.0.gmail; Wed, 03 Feb
 2021 00:55:59 -0800 (PST)
X-Received: by 2002:a62:1755:0:b029:1cb:4985:4cf8 with SMTP id 82-20020a6217550000b02901cb49854cf8mr2222728pfx.9.1612342558951;
        Wed, 03 Feb 2021 00:55:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612342558; cv=none;
        d=google.com; s=arc-20160816;
        b=oyjwCSpPEdKCJpS/4tYDxJi/+MxSiTDA9DYVB0GPtYxL9Si00JWs1JVStLyERP/7EJ
         nbgEaJ/46sj8ijAwH7Bz7wBSH/X3odr6E9mJj/QLbvffTLZ87J9fsQJgkdzNiNVlKTgV
         F2zILbJS83++EBRftHmSeic5HZm8lCVH+HWbrpmdAxQRVr1UwdLzTvADXuu+mTUimg5L
         MRjvEocIZ8tPAFtip+SqO7ZUQ+HUPzs514fudnM0pRf9rOT/FVYk9sBFv7tsjo80Dkim
         nArLxx/pPEnrpET9ki3s1+8dlqrDbqYokN3naRg2yfm5qyfIql3gdhTSzsXA6FszItwm
         Kybg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2GJNlaoEj4V/RBQkwXlJ305JIQw2Zv+StT/R0lheiks=;
        b=tYin2xpO1qLRC8V0NPygpVlLURARWTFjxRjs3lQtVgpWAJmfN+k4vVI1Hirp8A+yQ9
         CnZ9+xABQUR5r3/OunncWZsF6IrGUw/2Vtneu0TA7DQxg2U3E374QeIHbbki2f2lCjhR
         mYJQzpQMYvYVAVKIIYuDwSul+9unYK2Jn6aMHCYtBnU615BgdKTOGXdjB8kR6gNmid2q
         kR8ErpxuJBRBuG8Bqk4hoi2LPovu6Pn+Tw12nO5LcbW8aCu9uYNMfrK7aQuf8pyiB5XS
         JmOjOrgNWbMjIbJRo9QcHZR5NyeCscitUN0RJFgSXwmKfLd+lpWpUK8T1bc4khVhVmvH
         UbHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sksLsHSa;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com. [2607:f8b0:4864:20::132])
        by gmr-mx.google.com with ESMTPS id d13si62093pgm.5.2021.02.03.00.55.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 00:55:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) client-ip=2607:f8b0:4864:20::132;
Received: by mail-il1-x132.google.com with SMTP id y15so3255557ilj.11
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 00:55:58 -0800 (PST)
X-Received: by 2002:a92:c5c8:: with SMTP id s8mr1816643ilt.186.1612342558677;
 Wed, 03 Feb 2021 00:55:58 -0800 (PST)
MIME-Version: 1.0
References: <20210203075239.5505-1-masahiroy@kernel.org> <CA+icZUW-uObu=7xpqUqKTASmBfEgLKMrKgmR_uhmHBN-EwpBVA@mail.gmail.com>
 <CAK7LNAQ_x+JWkUwBrJs2LD3rqabqP+tWewrfnMX6F_MdH9L2ZQ@mail.gmail.com>
In-Reply-To: <CAK7LNAQ_x+JWkUwBrJs2LD3rqabqP+tWewrfnMX6F_MdH9L2ZQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Feb 2021 09:55:47 +0100
Message-ID: <CA+icZUXCgOjx6WH=ZKLpowqimeQDu4MfWLCTaAYcJpCQx=ekYA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: fix duplicated flags in DEBUG_CFLAGS
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andi Kleen <andi@firstfloor.org>, 
	Ian Rogers <irogers@google.com>, Mark Wielaard <mark@klomp.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sksLsHSa;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132
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

On Wed, Feb 3, 2021 at 9:39 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Feb 3, 2021 at 5:32 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Feb 3, 2021 at 8:53 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > Sedat Dilek noticed duplicated debug flags passed when building C
> > > files with CONFIG_DEBUG_INFO.
> > >
> > > I do not know much about his build environment, but yes, Kbuild
> > > recurses to the top Makefile with some build targets. For example,
> > > 'make CC=clang bindeb-pkg' reproduces the issue.
> > >
> > > With commit 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments
> > > for old GCC versions") applied, DEBUG_CFLAGS is now reset only when
> > > CONFIG_CC_IS_GCC=y.
> > >
> > > Fix it to reset DEBUG_CFLAGS also when using Clang.
> > >
> > > Fixes: 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments for old GCC versions")
> > > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >
> > That fixes the issue for me:
> >
> > Without patch:
> >
> > ... -Wno-unused-const-variable -g -gdwarf-5 -gz=zlib -g -gdwarf-5
> > -gz=zlib -pg -mfentry ...
> >
> > With this patch:
> > ... -Wno-unused-const-variable -g -gdwarf-5 -gz=zlib -pg -mfentry ...
> >
> > The relevant Kconfigs:
> >
> > $ grep DEBUG_INFO .config | grep ^CONFIG
> > CONFIG_DEBUG_INFO=y
> > CONFIG_DEBUG_INFO_COMPRESSED=y
> > CONFIG_DEBUG_INFO_DWARF5=y
> >
> > Latest make-line:
> >
> > $ /usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
> > PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-4-amd64-clang12-
> > cfi-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
> > KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > KBUILD_BUILD_TIMESTAMP=2021-02-03 bindeb-pkg
>
>
> Ah, OK.
> You use bindeb-pkg for building the kernel.
>
> That's why this happens only for you,
> but Nick did not observe this issue.
>

I guess so.

- sed@ -

>
> > KDEB_PKGVERSION=5.11.0~rc6-4~bull
> > seye+dileks1
> >
> > Feel free to add my...
> >
> >    Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> >
> > Thanks again Masahiro.
> >
> > - Sedat -
> >
> > > ---
> > >
> > >  Makefile | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 3d3f67b98ca2..769a38ee81b9 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -811,10 +811,12 @@ KBUILD_CFLAGS     += -ftrivial-auto-var-init=zero
> > >  KBUILD_CFLAGS  += -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang
> > >  endif
> > >
> > > +DEBUG_CFLAGS   :=
> > > +
> > >  # Workaround for GCC versions < 5.0
> > >  # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61801
> > >  ifdef CONFIG_CC_IS_GCC
> > > -DEBUG_CFLAGS   := $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
> > > +DEBUG_CFLAGS   += $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
> > >  endif
> > >
> > >  ifdef CONFIG_DEBUG_INFO
> > > --
> > > 2.27.0
> > >
>
>
>
> --
> Best Regards
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXCgOjx6WH%3DZKLpowqimeQDu4MfWLCTaAYcJpCQx%3DekYA%40mail.gmail.com.
