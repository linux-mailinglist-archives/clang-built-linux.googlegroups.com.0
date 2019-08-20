Return-Path: <clang-built-linux+bncBD4LX4523YGBBT6U57VAKGQECW5MHDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC8495F09
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 14:40:48 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id x5sf4012733pln.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 05:40:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566304847; cv=pass;
        d=google.com; s=arc-20160816;
        b=yCdciC93v8rJMKHgmPzPbjKLrXiWk1uovOFZVlVh3/DXh1lMRH1guYZXmgG4wWCx7Y
         5CObtZMkYTC8VusfStoL4KB4UV5edWnEIbkbHrBCExvGVNErcoZJJZK2ILovRet2rG32
         6alJtJB2gPmUzjPHlnspjn1oEsbiHhrKQbEopa+OMzLhQ3CG3dNebwQKQ3vEVesEbUKe
         FfVywg2hIdUk8bknpnca78Agwg5QYDSAJ1qTiK4m6XYHeMykPvGwLd8msaXLUULtYYp0
         EDJdsMmwlqv46avYODWEGPhlcJBmMZFJ3gQwjALuV78UvI4hmPzig6RzMOo282/lrkct
         8ELg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hz7pSSQYgYvg0kYTFfCgb1qkj/26JP0BmDnXD1sS18c=;
        b=ucQSPyE+5ut4qfoKFjBYzE4nj1RQqlkLx5zSC3IUlrXTMUwxyjRFqNdELerhHsc+6e
         l1dTmrsCcnUoeHokuk1A4QVqZ3Rm9JN0w4RenYTNs+4k1r6uGE5HE9VJ0ppcxheTeEFi
         8Ij0wQgoF43grQbbKpsuwryw5U+D3gxk2YRHMt1NJ/CuT7QfDFYsjEM3cywGrKrr1hoj
         x7T4zNWHD7iLy8WSf2ajYQUQni60qdJy6MEnPjtcRvSvQvNK3bhi5bxxUfdSuXndSvl+
         rL83kiB0V8nVFgYcF/R/HbpifNIYBxyz29E+ZF7JLTH4UqRb/VQgOeUwU/IjL+d/j5Jq
         pVbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hz7pSSQYgYvg0kYTFfCgb1qkj/26JP0BmDnXD1sS18c=;
        b=giBu0cn7b5vmYEjGMhZVuYbWV1c61FgTT8ZaVNiwYrZwNWS51DnuqSOELebQoayp92
         6kmd5arVWWyaNaXsT3N1EyV6r8ahFb4GqeHTP+J0FMyA652sLJ7TrHjDpD+kfTsNm0r/
         BEOa/lXNLp75z9nID70p/jjM7bSYv14/Am7AhN+pstKfSGlZlimdVhmobt8/1BuSK+o0
         yAdNfUuFp00mj5ZEux5mUBMZYiOXXEIOwdir7gn+RzcBlPdx1Wg06fwLBj7/cLA+JzTo
         hrYlu2rmjup9sO8yT06cDCK6F/XvGQEa8AW0YaWCPja8kr5TAD9lGHiyEd/hY3zAauRz
         S7aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hz7pSSQYgYvg0kYTFfCgb1qkj/26JP0BmDnXD1sS18c=;
        b=QhGhGhQ4s/5H6Uc4OmkmDhPsuyFmT2JUGM7dporfhvrWDLCdxJiErEJ6Z4hSiXH+BO
         dO/saIUIig2hVhBupUuixlS0wshBoHMpzEMFglUiG2YvDXpm+g7xAhkm9OZRycEjBg+e
         dM/zXYo2G+jChhJAMRX2uumUVabKs4aT4EhWtIDuT1M49d/hGe1tg9PBoC1lKY0Qt1gC
         9aIF16QzabsqdSJH6avNNE2rFFmafg9Ma4rG9MOvCUrbfIZBKt7B+n9pjct+k3sXlezR
         V0x58olRDaEiQgRA8sCdKsm/b4l4g7Z0/OlPOIir3TZep9ymFKS7wWq59IwlEgYSNmny
         Qk7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVKdtTX3gktiiBRSuRPATbgG63Twn9wxh6oSQZ9F5mLFVxt9v3i
	MAd7ynDmRyWZ/59INDz9K1U=
X-Google-Smtp-Source: APXvYqwUgoNXu2Iqa0/DIa9JTyMIp60kywYmG3l3tZoGwlHh4lIWxVYc8kIbO6Fy/n3sZ68epOi7Tg==
X-Received: by 2002:a17:902:8ecc:: with SMTP id x12mr25940798plo.258.1566304847316;
        Tue, 20 Aug 2019 05:40:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:680d:: with SMTP id h13ls4883418plk.13.gmail; Tue,
 20 Aug 2019 05:40:47 -0700 (PDT)
X-Received: by 2002:a17:902:7781:: with SMTP id o1mr27785687pll.205.1566304847002;
        Tue, 20 Aug 2019 05:40:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566304846; cv=none;
        d=google.com; s=arc-20160816;
        b=jVjEbrk48nwlfLafOg1WTFU3qtz3VlmMI057IMAsl66Zxa1S5lw5SJHi1pdmxMovJ7
         4PIw8jmz2gnV3G+exzqAQjJ6zUsJDxnUV0vQX3PUBwS2kCOU/HXTBTfmmLOOANtqIqW2
         P5iJAoZHypK38bql9Rms8XExmOcqtQPh04FLCKrpA+L6G0LXK0FTyg3McNE3HXfZGgjz
         8UBzCguZTOStEUyMsOFIJO3fyLnZCNiuE1J/hc82FWDgwRpey6NeUaFQ22AlVOtW58RM
         UodXzrs/EWI8VbcgDo0VGK0zzHbvisR4xYkJxhslILlgZOR4MfChMX+OA+T28PbEMdeI
         Xrhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0wuc5XqR21nRPeJM4wTR2zph+owUG/MaJxRrq0+n/fI=;
        b=ToL3vcXCw+UzIcGgOiQcGzn8nXGJzkVLIbiMleeDMcM6k91FMoSL/tWCRqP/jiXxq4
         kXeAIWXHbvDHZVjspLQXZIOistVzVhXPWOKPgQ5XqLVH20kmFDOVke6np3ePdFnPnMU0
         ALtv5yOMW57h4vl8dsTuc7/0byzqqdxGSTbVsWWJ9sQAIZDmEPJR4HENt7RHdc4ETeel
         ilkUGmaNI4siiDLdqcw86FcoprQctZ5j2Xp84wZsjipptsJb6RaQza8Xke0pp5yYK4k4
         O26Xegd4j9fx63Pc9+T8N2Gx6GC4GHgON819uITneiElG/ll9CiLURPSQi0DkKlQQHaa
         tB9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id gn23si742111plb.0.2019.08.20.05.40.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Aug 2019 05:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x7KCeYgc030746;
	Tue, 20 Aug 2019 07:40:34 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x7KCeXYY030745;
	Tue, 20 Aug 2019 07:40:33 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 20 Aug 2019 07:40:33 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] powerpc: Don't add -mabi= flags when building with Clang
Message-ID: <20190820124033.GQ31406@gate.crashing.org>
References: <20190818191321.58185-1-natechancellor@gmail.com> <20190819091930.GZ31406@gate.crashing.org> <20190820031538.GC30221@archlinux-threadripper>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190820031538.GC30221@archlinux-threadripper>
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

On Mon, Aug 19, 2019 at 08:15:38PM -0700, Nathan Chancellor wrote:
> On Mon, Aug 19, 2019 at 04:19:31AM -0500, Segher Boessenkool wrote:
> > On Sun, Aug 18, 2019 at 12:13:21PM -0700, Nathan Chancellor wrote:
> > > When building pseries_defconfig, building vdso32 errors out:
> > > 
> > >   error: unknown target ABI 'elfv1'
> > > 
> > > Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
> > > powerpc64le toolchain") added these flags to fix building GCC but
> > > clang is multitargeted and does not need these flags. The ABI is
> > > properly set based on the target triple, which is derived from
> > > CROSS_COMPILE.
> > 
> > You mean that LLVM does not *allow* you to select a different ABI, or
> > different ABI options, you always have to use the default.  (Everything
> > else you say is true for GCC as well).
> 
> I need to improve the wording of the commit message as it is really that
> clang does not allow a different ABI to be selected for 32-bit PowerPC,
> as the setABI function is not overridden and it defaults to false.

> GCC appears to just silently ignores this flag (I think it is the
> SUBSUBTARGET_OVERRIDE_OPTIONS macro in gcc/config/rs6000/linux64.h).

What flag?  -mabi=elfv[12]?

(Only irrelevant things are ever ignored; otherwise, please do a bug
report).

> It can be changed for 64-bit PowerPC it seems but it doesn't need to be
> with clang because everything is set properly internally (I'll find a
> better way to clearly word that as I am sure I'm not quite getting that
> subtlety right).

You can have elfv2 on BE, and e.g. the sysv ABI on LE.  Neither of those
is tested a lot.

> > (-mabi= does not set a "target ABI", fwiw, it is more subtle; please see
> > the documentation.  Unless LLVM is incompatible in that respect as well?)
> 
> Are you referring to the error message?

Yup.

> I suppose I could file an LLVM
> bug report on that but that message applies to all of the '-mabi='
> options, which may refer to a target ABI.

That depends on what you call "an ABI", I guess.  You can call any ABI
variant a separate ABI: you'll have to rebuild all of userland.  You can
also says ELFv1 and ELFv2 are pretty much the same thing, which is true
as well.  The way -mabi= is defined is the latter:

'-mabi=ABI-TYPE'
     Extend the current ABI with a particular extension, or remove such
     extension.  Valid values are 'altivec', 'no-altivec',
     'ibmlongdouble', 'ieeelongdouble', 'elfv1', 'elfv2'.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820124033.GQ31406%40gate.crashing.org.
