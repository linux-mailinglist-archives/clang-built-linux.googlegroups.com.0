Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4M2VT6QKGQESSUFFFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5088C2AE25E
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 23:00:19 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id o3sf7456752plk.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:00:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605045618; cv=pass;
        d=google.com; s=arc-20160816;
        b=vZULoJ16egN4lcGTg0COhRz4YCt9czax7n6pGPK40JpcKVPPNe3IJ48MqNa9acePAR
         PrAph/gL4I6TL/kCtpMTQLtMALkxokObhym7PZYcFpcvgxH9SixXLB5TH3Q4+sRhA1v5
         0nr9F+S6b2CPBgUErrq8aLY0EzULyY0LWgkr1HITIbCps6FhAPsD9m4H/llOvdgmtcu/
         MXa0VPcn23bF0gdyKoPeVJkevJ2fZnliGzbk/wrZvvjPG3xmBay1DN2r5lfum3WrdQbI
         jVTLsYYP5ta0pIIFYPVXInq0ceTWG9rspM+LUIvtXGckzpMHXsiMk5bIVxK6N7M/gpvW
         L4WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mbOiuvh/ngBWt2+fU20/P2z5fmD0HulisfYuT4uTStw=;
        b=rXHyt6nwudfZ3raO3wBCOI6+XshxbbmALeEqyza+w6upVWcwr0thYy1mmhVrPuJaRJ
         sRpKVcgVlrLyNB5u/BNB8suNo/cUy8W9EUw0+GFEIzyBuLwT+hhiKaWEHBWkB9tORQ0M
         0GC5e7cNszV7LUVgglnyQbH1Amfr06Y+LWTBilg/w9gU24iT5jiiYfAj3v3sZn8NhKrj
         xrQZU95bbzoAikLJxw+m4k7IBnSCL7zzP9/OJaigKhs1FIogJzrYa9Mu0u9q7qddD5c9
         geCg/0JLRXCFaKQFkdws3A5JaJzSp6dEXhFkQxLR362XZtQN7u30VU2wxbqjMoSvj2NB
         ddVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oeJ7kH7O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mbOiuvh/ngBWt2+fU20/P2z5fmD0HulisfYuT4uTStw=;
        b=jkjtu/MCpksnxbKkmgPr2yphqs4fi4Rw/CYcT3yRpNt9RY7X8AmDmTgfO7ml9Hc8WS
         vGf67MmYrQIqmK9vnhRd5Wmiq6KZsJ7KX9AQ/dbllcEmwmPB9pSgmtOn6T26GVbRVcrq
         TpUZlpP3BMgdLvxc5A+xHWYJEHyaFor4DFAtl1hDq+8NGDU2hblOnOur9M4OmDWmapPt
         LH1UplKnZKsex+GVP8Go5BY0lqq9hGtqPo5M/VhoYSPHPnDF3AbMPG5FuC2x5IbCfsNq
         OaIHEFoGpF6LgE0EP/Ovnd1JdYZ2yR2C2H70PWyfCtkbgnkZtbQjrFq9sGUgiNtBiSSD
         shDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mbOiuvh/ngBWt2+fU20/P2z5fmD0HulisfYuT4uTStw=;
        b=h2v7EG8UcZJZCUsZxi7ChCoK+kjxCl/NevOhw97bi8wnEObTIViWs/ZqndvGFaSTTg
         toKvuF0bjKrht2NyLoGA3qKkyCWFEpDsA8Y5L2tQWmdQIB/iomn/89vha6iwGlm6gokt
         GLUy4vqlkRUSiWsOVu8YOHoheyQIo21Vf8QCPi1LfhCHD0N8mkl5kip6r0ZL8YCaToBY
         zqVSulGLvLi9XOfcuoAvat2Ekj9Wg7B0Q0X8lagMc8OXG9qwOoIFwpanKA6a3Kxif8Hc
         577rcjvDcPxDl3gpgCGNg6C/ByKQAO8haD/vUhX85QWTeKWgzgH+HoK77B0ABC1VJmU1
         rgqg==
X-Gm-Message-State: AOAM532sZ9K9SMbXgdGvLllnQBcGv7rbx+8c04O1wqSiQIhqEOufrAxw
	27Jy0G20ZS4WW3yKPhdl2b0=
X-Google-Smtp-Source: ABdhPJzf+X3nafQk7caYZnXRLaLy4RSQApY2l9ERVvoyfiPwhB885Sr7iR+WX7ZICsToFY03s+h8Gg==
X-Received: by 2002:a17:90a:c085:: with SMTP id o5mr277747pjs.18.1605045618053;
        Tue, 10 Nov 2020 14:00:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:543:: with SMTP id 64ls5171008pff.2.gmail; Tue, 10 Nov
 2020 14:00:17 -0800 (PST)
X-Received: by 2002:a62:643:0:b029:18a:b225:155 with SMTP id 64-20020a6206430000b029018ab2250155mr8654113pfg.56.1605045617495;
        Tue, 10 Nov 2020 14:00:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605045617; cv=none;
        d=google.com; s=arc-20160816;
        b=IfZ/hgtv9FS+44BbNz50ItPH9Wo5QumJtggOcjA4kgFnNl5bfvYlPK8THyTqsBmTOM
         QXNAqoCkku9Ak/rVKnntqwI6qOiGqunp5ziB8dUcG98CUMWF8SBOYmTh/QSSlstVqWbS
         5nZO8zK349nPm+dT3CqyFRMXxIQSzTYx4/4MzI3HsopK+pMBRFITTjLVw/62FypcAi71
         F6ego+7aXApWGGh/ZFsHuId7msFbVHZFsA6gGCKV4BcjJdNRyH//NlslAW4ooM2YZ+m1
         OoqzT+74CloeFuq4degqRx8C/s/gzvg7vYb8rm15p0BeXCgwUqFtBsTiNOau9GdpP39D
         wQjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nU4xdx0PhV/+PUHMgjylz0is+Ov2vSZjSeguacOwknk=;
        b=Q7157QJIDJDb2TGDF3IjodApCj8cqXxLkHFI/kqRf5nOFjlPdCKNXy6nRORXBhPJx5
         5jIU6TXk3/vXVfX9y1TmWcE+qGkHthOahd3xOVVO1aDJXQOJT7JY3KR3JyuCTYVoZiry
         EM+6mSYWscvFlehMGHEE+63VyL7AfaN+TuxLKJS0jhHpYGCsvmWLJvddkk3hcIbF5WVv
         jkSgmxfeLsYbBAwCWE4z6zzzu3Hea4vgWEd1VeyqkW8zimvdOhWM64dJR6AUYxZu0JL+
         q/xjJ2kitCQcrBWlErbNmws7jb9P8WAWp2WiKwsfRT6uFCuJrRC7uCPIef4RyOvK6NVq
         3zRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oeJ7kH7O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l8si7973pjt.1.2020.11.10.14.00.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 14:00:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q10so142951pfn.0
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 14:00:17 -0800 (PST)
X-Received: by 2002:a62:5e06:0:b029:164:a9ca:b07e with SMTP id
 s6-20020a625e060000b0290164a9cab07emr14857161pfb.36.1605045616991; Tue, 10
 Nov 2020 14:00:16 -0800 (PST)
MIME-Version: 1.0
References: <20201107075550.2244055-1-ndesaulniers@google.com> <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
In-Reply-To: <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 14:00:05 -0800
Message-ID: <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Joe Perches <joe@perches.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, 
	Florian Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, netfilter-devel@vger.kernel.org, 
	coreteam@netfilter.org, Network Development <netdev@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oeJ7kH7O;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Sat, Nov 7, 2020 at 2:33 AM Joe Perches <joe@perches.com> wrote:
>
> On Fri, 2020-11-06 at 23:55 -0800, Nick Desaulniers wrote:
> > Clang is more aggressive about -Wformat warnings when the format flag
> > specifies a type smaller than the parameter. Fixes 8 instances of:
> >
> > warning: format specifies type 'unsigned short' but the argument has
> > type 'int' [-Wformat]
>
> Likely clang's -Wformat message is still bogus.
> Wasn't that going to be fixed?
>
> Integer promotions are already done on these types to int anyway.
> Didn't we have this discussion last year?
>
> https://lore.kernel.org/lkml/CAKwvOd=mqzj2pAZEUsW-M_62xn4pijpCJmP=B1h_-wEb0NeZsA@mail.gmail.com/
> https://lore.kernel.org/lkml/CAHk-=wgoxnmsj8GEVFJSvTwdnWm8wVJthefNk2n6+4TC=20e0Q@mail.gmail.com/
> https://lore.kernel.org/lkml/a68114afb134b8633905f5a25ae7c4e6799ce8f1.camel@perches.com/

Now I'll have to page in some old context...

The case we addressed last year was printing char with a wider format
string like %hd: https://reviews.llvm.org/rL369791,
https://bugs.llvm.org/show_bug.cgi?id=41467 and
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=95588 have a little more
info but not much.  Which is the case that Linus commented on.  Let's
say we're printing a "wider format than intended." Those have been
fixed in Clang.  These cases are printing a "narrower format than
intended."  Two distinct cases.

>
> Look at commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging use
> of unnecessary %h[xudi] and %hh[xudi]")
>
> The "h" and "hh" things should never be used. The only reason for them
> being used if if you have an "int", but you want to print it out as a
> "char" (and honestly, that is a really bad reason, you'd be better off
> just using a proper cast to make the code more obvious).
>
> So if what you have a "char" (or unsigned char) you should always just
> print it out as an "int", knowing that the compiler already did the
> proper type conversion.

Yeah, we could go through and remove %h and %hh to solve this, too, right?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP%2BY0ozieisS7Nn4yoQ%40mail.gmail.com.
