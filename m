Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTN62H2QKGQEFT5UBPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4112F1C9ACC
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 21:19:43 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id r141sf4908910pgr.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 12:19:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588879182; cv=pass;
        d=google.com; s=arc-20160816;
        b=xcZARAa/5Ly8oH/JIl+IM6DCBblk4hRHra25Z1ViQvvPdcDSrD+A1pY62NGzxMBPgf
         Jgb2CW/yDskuHilH16WTPS37jFyhnztj35qXLsbAuM06JB11FyPrr8H+cDzePv8EyfMZ
         tSS9ucmIt6fE06BuB7g6PE2PRPP5mxoYHFrT/C6OzXnV4XuyhoE4EynNJcp6ITPi65al
         Rtq86pBYXbvBYPJW+637cKudY8JeFn5eWk18ETjicuV1+0QzIrf4WWQCOhwujx0metg9
         IeNB2Y32hdgK0s8L7GSeerra7Eu6Wh1CwDCsF0eXVpkWIiJ/fi58b/XbbLj6/+KMnnkf
         JwVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PCP1DH3Hyqauu5Om5XjEB1iQb7zJAJCRy0a13Q+IFuI=;
        b=EOJPRFw7haY9OWR9z++H3naay1mMIeuxf+4UBXwLyEl5XBB28G7yIWZIoDdY7XV8UT
         VvnIHKGqeXfPi8KyRGaT6V3InkgdMsemO8QRr660VpzLMiUvR4FoRdMcKryNfucqzsLV
         2+WBujyEYUyy/Ol+hrsZ9yBGELtXnsMzu0qIT8kHV9/Ig79BDjw8IczL7ydfpuKFjxIW
         dYe9jyHjOD5W7ZmYd4qkfG7LEh/eI0Ths+31kl/MG89G7c/ggb00zM6GG6fMjjSID+hl
         PRsDrSp6Lfa2A9wT/Q7MNu2Papx6+xgVg4QLjVu61G699SamRmPm7azQATRMAcvhIAAC
         SRjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ot3OCpEt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PCP1DH3Hyqauu5Om5XjEB1iQb7zJAJCRy0a13Q+IFuI=;
        b=Ciskwa/G/otfbqJVCqm+WPXV/UyxFksrR3+F2WKMyb28vSbS0lnBgEQCSeB+0T3WjQ
         +Z/e0BM6eV1h/c0BajXL7SkD9ZpwA4rBcUdMapvXQi4ZBTKeO7O8fN4qPWqza29jh26H
         jo74Dcr2Ret8Jxy7qJfksh2u9vIWobZIBE+chodlrihcUHag7ZhYrfkF0X1YIMcYqwRq
         Q2bvLJgpKnVSF/TNBEURcaG4R8Q2OS9Y1XE/HGqkBewnR9mJahB1x6P9+LknjpQsNA+Q
         XUEnZqcMBlqMJsO1/WmRzTAZXJOkAgp4SbWq3kyOcxAdvpS1BFaGIGefzrv6yNdmcG+a
         irkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PCP1DH3Hyqauu5Om5XjEB1iQb7zJAJCRy0a13Q+IFuI=;
        b=B/c8MJhcHKQdYJlmNV/8Yi8re8DNclbr6DkJt6/EcQc8DNBKOHwYSzQNi5kqJk8u2d
         e9bDqT7wZOrTnUFq6hdngx6ZeXy4ZXrRfcvJbLKhxh1H/s/wJKkM3Aj7hhdc1HwOSuK/
         hHceELgduZee5POlyGP91eBklEWyovlRk1+AtbOfsVeE6zetEoXMkL5Jw0F9PKNj+c1k
         8HCAncDAnBTlalggZ4xiKx5bs4InIwQV8Hbj1NUpEQCkvQ+A9eDGFux44zbKbs0YWCo0
         31OE/e1+/oJIRhisG5eCN48rJZZOkaZH6olyHcVnKiPKEhJKMWp/HI3xk76nFr2TB/z5
         8Zqw==
X-Gm-Message-State: AGi0PubKcIyn2RDj1CzVSkNtaQpwWoTio1m0xtYnmQYF7V5yui1zJrZ6
	pNwKtVtfjLFddOJYzUqjJQs=
X-Google-Smtp-Source: APiQypIVeqDq69Uu4j3Kwex/PjRuWGSbnP0qfuXhleAxGJ2tDVcWdF4ZcfIKr9H30lAhx7tHfps1Mw==
X-Received: by 2002:a17:90a:ce05:: with SMTP id f5mr1698336pju.39.1588879181843;
        Thu, 07 May 2020 12:19:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a44:: with SMTP id x4ls6132789pfj.9.gmail; Thu, 07 May
 2020 12:19:41 -0700 (PDT)
X-Received: by 2002:aa7:979b:: with SMTP id o27mr15752048pfp.192.1588879181443;
        Thu, 07 May 2020 12:19:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588879181; cv=none;
        d=google.com; s=arc-20160816;
        b=RXf6KaFnW7SXiG3t7i8tEOpQCHK4DnjwgILYkJI97VXi445jb991fKqv0psyhytKAj
         5+OmqjWPS/OP+cfwrq3vTCEN2ChComWYhapiKhaf+LPfeY04ZIV38gcGlDt7qYHcljGA
         NEOUxByZvixPkUoVPZkfSZYxWWbBUo+98F8qCGQgcOHTkTUL/rSGVkvbYhkPqQuCq0W4
         tb76leUqsIVRUjN3sFjDL/pSNCNQCOKoJoeBIOerk/rqDERiF2zROTDD5EahXz6ZhT0u
         jZ1I8qS69Js5afqOpGEhCoP+kogXvdnrPG9vEWeS0M72zvJh/yasS/RNHx2HhRwInmfR
         20sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mB3v+OVcFtBZ7ZxmBQPRfPvGnWMyHqtj7wSU+ZXJm/Y=;
        b=cajzd46Tkis4hl4COzYRh+CoT22uf3skPDH5fJzfLYHEn3Cp4q7zo1mHOU6tcDoBgc
         /QxG7npg0+/uxPzRzvYMxZEKuEr6isFdrDT7aXX3WEvyHXeSNBJJre66c1BD6cg/0YjU
         cGffNzuKVjzNfSH7IEDu0kHWMeLDTCx+Fd2fes/SyvckGtM3zjbb9fORtGUJS3nr/QMa
         M4h3qgSJPvVZX5xw2Y+RD0BNuA8FfLk+QpjS0jlADJS5N+zcEKpls7JEiXBcUAuKaTF/
         JUczQNdkp7qo3Qnv5/emwP26M+v8JMMdQtamx8kdQSHY1tE3CjMBBHonL70MUSx3xAxw
         MFtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ot3OCpEt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q5si300446pgl.1.2020.05.07.12.19.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 12:19:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id l12so2916882pgr.10
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 12:19:41 -0700 (PDT)
X-Received: by 2002:a62:146:: with SMTP id 67mr15430634pfb.169.1588879180828;
 Thu, 07 May 2020 12:19:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com> <20200507113422.GA3762@hirez.programming.kicks-ass.net>
 <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com>
In-Reply-To: <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 May 2020 12:19:30 -0700
Message-ID: <CAKwvOd=a3MR7osKBpbq=d41ieo7G9FtOp5Kok5por1P5ZS9s4g@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Brian Gerst <brgerst@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sedat Dilek <sedat.dilek@gmail.com>, stable <stable@vger.kernel.org>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Daniel Axtens <dja@axtens.net>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ot3OCpEt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Thu, May 7, 2020 at 7:00 AM Brian Gerst <brgerst@gmail.com> wrote:
>
> This change will make sparse happy and allow these cleanups:
> #define CONST_MASK(nr)                 ((u8)1 << ((nr) & 7))

yep, this is more elegant, IMO.  Will send a v3 later with this
change.  Looking at the uses of CONST_MASK, I noticed
arch_change_bit() currently has the (u8) cast from commit
838e8bb71dc0c ("x86: Implement change_bit with immediate operand as
"lock xorb""), so that instance can get cleaned up with the above
suggestion.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Da3MR7osKBpbq%3Dd41ieo7G9FtOp5Kok5por1P5ZS9s4g%40mail.gmail.com.
