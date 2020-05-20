Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBFGCSL3AKGQEIQ6E7KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id E01411DA87E
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 05:16:36 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id u1sf531013lfu.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 20:16:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589944596; cv=pass;
        d=google.com; s=arc-20160816;
        b=qFVrP8EkXSpUQ5naE0gg9Bi4y2vjD2ngx1szNBOEOcFhkvxRShEC2SATokOdGAAe7a
         7Hf/ji8vfgf2Noo6nfFhgyBzT2ehMPQzXwPvmw7aRu/DMsl8R4ymfdr3SZN+Fcm+wkNJ
         aGs7+RFREo0A7YbAXe3ogZt8ymSdUSRkCD4HsYuiaqAKl7qKrLSSuWpn3DtMX8AZNoOR
         EEwZ3B7Uc/hAnkgEmym5inte0zhBuODna114i29RdQ2e4Uq0+zaCISCtgpHVWholyURr
         QFCN6M0YvND0P2GIwSxFHnjbhjisXeeAL5K4rxCdg46ebxK6bAgAiFYt4tZ72aQU11tr
         ODUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=dy2GdvLx7/xNfz0DZroHkXeC9V3BCyvdRRzX4c+Xiok=;
        b=sk8a0z0QG4D7OXP3QOtpPJJrk0ZMI2GA0aACKfukkjDPXTSB/5rX4PclC84h1EXyJu
         s6liTS8rblHQOGvR0xOjhfhbqJmuefukgY2UxTb+sjEzz+dpRPMyM2KrQ8Skv3mmF6iu
         jMfFYLKIgrZY8/PWpoubMQGwxzxQQgvzoM5AaNIIRQT4im2qNvAlgxQ7GM69dIa9mlXH
         SaVYyS/9SrRxjVHXnWHtfaHc/Gav41sKne0QYq4VRdCAK694zHmm7P6q64boLcin1Qb2
         Q6UTNuq2vNr/4bkbOatOtS3arzsvAhpElae2NVSWt0KybpzbDmPVBfRJ5kUSHcCwq3hA
         CluA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=g05ihPzT;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dy2GdvLx7/xNfz0DZroHkXeC9V3BCyvdRRzX4c+Xiok=;
        b=pT3jaWUT9VRElEVfD5dN812uXYqseH1y+K1LXwZm2bfzXkNACCdZhm/wXX/QJlZ0Mi
         GKjMiDOswdiz7ezGSh9glxnumic5/K13Vdc7cjaJ+zx655JrXPAi1uUDUXPzDF6nvV9P
         fV2ci4CtjMs3L/bQFwK8If6odL617vnJnDf1gZEWYENJ6+CWUIxWSA5VsQGUROxUrNrF
         WJy6Vf8X8biUs7LqwRO+67U8AKAajR68IE1hUFn4L91iTxhjJ5kziB9254O419e6ESZC
         VPgdlivW0CBEkI647zm+5xNbMyMd+eIPYYNnJ4O+r8IDEuuVGXxO1JxILndvPfF0L1Uk
         mTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dy2GdvLx7/xNfz0DZroHkXeC9V3BCyvdRRzX4c+Xiok=;
        b=lqHYLoqrq6sYkvxsL5hXmHxbB83lZtzZC2pzhAWWA44wqwMlpZbz3uXXviQVL1gl4W
         CoSbXVcv1Il675kbhuFC2Yj18wtRGiG6e17kpmhjqS7yh4oiw9K/6muUSatz99Em7H4+
         ss52/ACuxXQJSTfW6NWfO5VTz/LJH1zbwXSxVvmJvA5UEVvEn//7NeZtdNluR+0Kx9bl
         LCqz4xBI47Ei1/Ke/r4agAVwcw106pb2y+gQSXDLK1S98SdJ2IRSqBRYbtKEcU/ZStij
         5ayK50LWKDEbo5+9iwwqvEUx7KkXaEJ8mlhpVN41gp4e83awrZMW3rL8/cHNk4DWYziz
         BOTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303Ma17aCmNDw1FYLiC03mgA8ScnPBWtztn4bXGpVCkKZP8OpZd
	yOnxiSLIRnMS49+q0bGvYHM=
X-Google-Smtp-Source: ABdhPJyi8hC5aJACfaduCKqREkqoJZpKjxigu9SWxtAVmpgOFhLrh+q5QtJvY3hE68jgsfyzG6rP0A==
X-Received: by 2002:a2e:b891:: with SMTP id r17mr1467797ljp.34.1589944596310;
        Tue, 19 May 2020 20:16:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ae17:: with SMTP id f23ls209916lfc.9.gmail; Tue, 19 May
 2020 20:16:35 -0700 (PDT)
X-Received: by 2002:a19:e041:: with SMTP id g1mr1221870lfj.70.1589944595611;
        Tue, 19 May 2020 20:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589944595; cv=none;
        d=google.com; s=arc-20160816;
        b=Hx9IxBIULEbEZn6U4kpMOLB03h2Xueyiet0gKTyLIX5dsynffhmpi3wf3Ph5XFiYnt
         soRfO0t1+EVH5ocZSsRx9Buot1k/a4QtBKREQ+UmvRw0ReE8bdAO4KxOZNixgKk1YRHZ
         cFYhWyWwTLkV7r0cPDLm9J38G6LPthp9HkR4pkkncsrhx6MVN5hRUEmG84fnynrkD93n
         J3DkJxBMKcKtqIQctZirKaBx+7KisS3rQpDpMSccW7sxrG9XeYw7cPUM4NDecj3MT6g3
         eUD7ooK1Y8OXBrE9k8Apw6MOQtCMcG6easRypD+JMLRcU6XDiFuIfolFrwi3cLn/7c1V
         mySg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dsjqUKLAoPyWanOv8aTbF0H7d0vvqgBqr3qnWwKSiI0=;
        b=VUA0svVaNl+ygk96COH2W+9o7qO6ShbECWn97rkfbGE7xIkwEQ4J2FGipJRZOWr7Kz
         pQIxFCeHerAjpeBDdbwDyS8TRnDMzvPzOVsXuh0xSAEsxtd/RD9IGytRprSzFC4UUxrY
         8UevXAdw1x/lMcMmWE8pvqxUm9i0gANaxwIwwC47Rsa7nAMhnKnuRVJMd65PEgFrklfG
         gsZyIp72bXS90BaqnpNSMcckMLjR3Rob6aheWRxMEfg0/at6ZyHa1Y1JitpNSIfQGlhO
         3+L7JQ0rjQ8tF8ihbtUTFW/yxtPLdkq8yVdXWHa991a2qDP5Zdcqd502ji9laOpB6p8m
         Lxew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=g05ihPzT;
       spf=pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u25si111177ljg.1.2020.05.19.20.16.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 20:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id s19so1183401edt.12
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 20:16:35 -0700 (PDT)
X-Received: by 2002:aa7:cc84:: with SMTP id p4mr1427232edt.157.1589944595021;
 Tue, 19 May 2020 20:16:35 -0700 (PDT)
MIME-Version: 1.0
References: <87y2pn60ob.fsf@nanos.tec.linutronix.de> <360AFD09-27EC-4133-A5E3-149B8C0C4232@lca.pw>
 <20200520024736.GA854786@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200520024736.GA854786@ubuntu-s3-xlarge-x86>
From: Qian Cai <cai@lca.pw>
Date: Tue, 19 May 2020 23:16:24 -0400
Message-ID: <CAG=TAF4M5s1kQ98ys_YCgRS9WqjV_9KEbPCFiS71MA_QK8epdA@mail.gmail.com>
Subject: Re: [PATCH] READ_ONCE, WRITE_ONCE, kcsan: Perform checks in __*_ONCE variants
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marco Elver <elver@google.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>, 
	Will Deacon <will@kernel.org>, "Paul E . McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=g05ihPzT;       spf=pass
 (google.com: domain of cai@lca.pw designates 2a00:1450:4864:20::543 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

On Tue, May 19, 2020 at 10:47 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, May 19, 2020 at 10:28:41PM -0400, Qian Cai wrote:
> >
> >
> > > On May 19, 2020, at 6:05 PM, Thomas Gleixner <tglx@linutronix.de> wro=
te:
> > >
> > > Yes, it's unfortunate, but we have to stop making major concessions j=
ust
> > > because tools are not up to the task.
> > >
> > > We've done that way too much in the past and this particular problem
> > > clearly demonstrates that there are limits.
> > >
> > > Making brand new technology depend on sane tools is not asked too
> > > much. And yes, it's inconvenient, but all of us have to build tools
> > > every now and then to get our job done. It's not the end of the world=
.
> > >
> > > Building clang is trivial enough and pointing the make to the right
> > > compiler is not rocket science either.
> >
> > Yes, it all make sense from that angle. On the other hand, I want to be=
 focus on kernel rather than compilers by using a stable and rocket-solid v=
ersion. Not mentioned the time lost by compiling and properly manage my own=
 toolchain in an automated environment, using such new version of compilers=
 means that I have to inevitably deal with compiler bugs occasionally. Anyw=
ay, it is just some other more bugs I have to deal with, and I don=E2=80=99=
t have a better solution to offer right now.
>
> Hi Qian,
>
> Shameless plug but I have made a Python script to efficiently configure
> then build clang specifically for building the kernel (turn off a lot of
> different things that the kernel does not need).
>
> https://github.com/ClangBuiltLinux/tc-build
>
> I added an option '--use-good-revision', which uses an older master
> version (basically somewhere between clang-10 and current master) that
> has been qualified against the kernel. I currently update it every
> Linux release but I am probably going to start doing it every month as
> I have written a pretty decent framework to ensure that nothing is
> breaking on either the LLVM or kernel side.
>
> $ ./build-llvm.py --use-good-revision
>
> should be all you need to get off the ground and running if you wanted
> to give it a shot. The script is completely self contained by default so
> it won't mess with the rest of your system. Additionally, leaving off
> '--use-good-revision' will just use the master branch, which can
> definitely be broken but not as often as you would think (although I
> totally understand wanting to focus on kernel regressions only).

Great, thanks. I'll try it in a bit.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAG%3DTAF4M5s1kQ98ys_YCgRS9WqjV_9KEbPCFiS71MA_QK8epdA%40m=
ail.gmail.com.
