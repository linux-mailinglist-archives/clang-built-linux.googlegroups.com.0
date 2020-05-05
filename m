Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBW76YX2QKGQE27OIO6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B1D1C5A42
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:59:40 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id f2sf1340705wrm.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:59:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588690779; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pk5lrXcegaoXMPJwaeMPA6lj9Hzik83RILwphskhZyqv2aYeHjG5azlBoKTC+WWh6z
         BIyjiVTu99CTXO0kRIWE7ayhn1XWG/1juEj2eZIrXleN40tu+ksl6m1VWHlOa4fT6ds5
         8mpv1FMqVyqXK4dOfLU6sX5/L8/dktwLE9xHsh8RhOilujatBRGLrN8zqiXXc6Z97DUE
         9KtxJ/Qq2iqlkgS5oQpYaO8l6vPgRewtK3ch7qWFo9DPYDNPHMxRV8W/S2QuGzOa2o/B
         zDOyWMizwZGNzy/Ne4fGoaFFnQ5/nOoZ3pJ6RXqd6GxTEfUgChcC75QYyfV4ftOKrinS
         eOQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7zFSl116ff4Ott0qp5BsGny/c0OfRGJ7C7Ag97h7v/c=;
        b=1AgTwwt/lff8g8qieArZVI6sWMOC5BxaIVRCQ/AVgEhZN2O4lGvLY940myPVpjbqF5
         Q5L+1EUBzOigaHsLNsTiYEmkEhvCui/rZhRye0iZy3FGkA+PBA6bF9obhGISJCQEzoHW
         ebmgDnH5EhQURGqGJYp/2I7qHB+kjRgF6ZgLrHh7jPfevRKqD0mhn2TodGh/eUqGu+fN
         /OxSPOw0A8tI5pYi22GHvGLKJni2x0NAGAo7Vl2/8JIjF58faBcqeqS3guklSzDSJGaC
         N+zMrlBlSFoAAKCKcmNGDEjI13W/65ieBS1pDxPK9MoOHXGgJLiIDb4wFn/4/XCi/NgI
         CjZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7zFSl116ff4Ott0qp5BsGny/c0OfRGJ7C7Ag97h7v/c=;
        b=Kpxcw1IS0ub5+Z0Oe6IiXCjXav2I8udPymeTjIWfyZc85vTgONyVprFn2JQAF1RsRb
         If/9PU6ZR4Qyw347o4XSriJjsRJn8s+ZVUvfgBQTkFki0KiNB++SJ1eXMxKP2Akotvau
         Cf9AEqMi159L9cuqvneHM7Fz1KhAEdlOREzKGJU2iuF4VvRdR5ZkwKbpPiLRP9FBEPIx
         gg0qssoht/J56eSJ7OeEe0JZXLOC0p98PEevdXaRBjPNr6I0sDZ02k5RH0gi91AQdy26
         vm0pxe0hOHBIMdgcwGSIGP52aU7oYzyFx++5itdfLUVhSlBvM14oZFc5h3sezEtRRXyQ
         A1Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7zFSl116ff4Ott0qp5BsGny/c0OfRGJ7C7Ag97h7v/c=;
        b=lfxx5Dzn3KF8CVv3cCvUVbtOmUNJ5x/8OlQlbtoDKzhCOPjE88gzRIiRQ3Pg428Iyo
         9Fw/LCHHvtj/zaiuT/WixX5uRLog3g9PIsr1xwXCBPRCiJuDaZzGgqGuRqLjaip9ATRx
         yRVJQSmEANXrKFvNcdLN1w0cuIvFVYxlBubKLnv8tvhSGxi/b2iJ8WZ7wdLFstss1r6x
         sABVmK8fgjXd/fmW//nc4eLfBBz028tq1oOj2Pk1WFEP0XtZyMXHlB8mQpmGTWuqoZCS
         kiQuAPDihJ4wAFKNBgV/URd/maKd4YxifqewTIn7Lxrea0xV+uSUfs84PsToKQnBfgsh
         g05w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaDm7USdOF2GFBgw7vS85v2oTHQtyp6lx8kbe/cnGEVJbvzqMmq
	w4o+VMgte/hl9qrxX/DReI4=
X-Google-Smtp-Source: APiQypJuAAk+57jyjGcYD5bozcSYJ4orDvikZb7GflmEMNdS+4O9ikS4v6wSSba0KCrDhvmQA8rPBA==
X-Received: by 2002:a05:600c:22d6:: with SMTP id 22mr3886015wmg.121.1588690779822;
        Tue, 05 May 2020 07:59:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fa52:: with SMTP id y18ls3737685wrr.9.gmail; Tue, 05 May
 2020 07:59:39 -0700 (PDT)
X-Received: by 2002:adf:ee4c:: with SMTP id w12mr4613366wro.347.1588690779274;
        Tue, 05 May 2020 07:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588690779; cv=none;
        d=google.com; s=arc-20160816;
        b=LVzVPWm3/mCrez69dK2ZZERzJadfiZfx/9uVCrlBTrPu8FpKozkk4FWQCrqpbdY6FQ
         YP8Vnc5tBgYop4U2wqkD7Eiy4lRjF8GFuDRxuctbyGgRmrbBw/fpYHlMwS8WIazs0+ux
         a8efcjxbw/oW4wCVugOhkws5kVvre4Z7cEvtyH9gcw6/3kYiRRhJGHucTDuVFWKEGFex
         RyID6niK23hbeNjj19arTdO9WQr1p6PrOVxs/UF5ozZeyfmbn2u1rfVsfF+RmM4c5I+A
         IH4pEfBzhzauxVbvJQpvR7LdjksuqJZf3yDjNHP9uitj+Sia2uF1rsnPat5MW+8iKs8P
         mubw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=YNYB3K96/IdhKEEdr8N1NKAkIyq2gns1y4XdLMjk7ek=;
        b=MJG1eW+xmycrDZYLSy+iTAFATrz1Jo+NDWJOPxRrJN48/kRlUj89OFoVoD2DGCLRyT
         MJhMlJMQltff2QTIr9+e2zjGqKxjjioOcQzFP4gRYrKjKSW2KnehDDbKba43S1E1EIKj
         AYZhLVuqoz4JCCDYKah67Go7rKTi3+6OK/jwprHbrpyoxwMmdhyWz8YgRXPmWqUtZWQ5
         s2hyISf/vR/L8e6LU6gnIICLcIDGDQGnJ+Dte8doZB6tOY7Wlfr22hoddn0QJFysZG1X
         0RsnoHhaknSCK/601Rdxr6mG/IT1x1rDMdPEO7nCk2O8u2ni3ccN5qRex56KGDF1oJ50
         8+zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id u23si232649wmn.0.2020.05.05.07.59.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:59:39 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MmlbE-1ipjY42wJq-00jnCz; Tue, 05 May 2020 16:59:38 +0200
Received: by mail-qk1-f179.google.com with SMTP id i14so2516922qka.10;
        Tue, 05 May 2020 07:59:38 -0700 (PDT)
X-Received: by 2002:a37:a492:: with SMTP id n140mr4097616qke.352.1588690777455;
 Tue, 05 May 2020 07:59:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200505142341.1096942-1-arnd@arndb.de> <CANpmjNMtGy6YK8zuqf0dmkykZMt=qkxkZrZNEKde1nbw84ZLkg@mail.gmail.com>
 <CACT4Y+Zpp=+JJedhMpunuUh832eJFu+af-r8631Ar0kE2nv72A@mail.gmail.com>
In-Reply-To: <CACT4Y+Zpp=+JJedhMpunuUh832eJFu+af-r8631Ar0kE2nv72A@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 16:59:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a23XzLhZQNuFbeQhaSNru1abPwXV_mXR_P6N6Dvxm6jFw@mail.gmail.com>
Message-ID: <CAK8P3a23XzLhZQNuFbeQhaSNru1abPwXV_mXR_P6N6Dvxm6jFw@mail.gmail.com>
Subject: Re: [PATCH] ubsan, kcsan: don't combine sanitizer with kcov
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Marco Elver <elver@google.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Kees Cook <keescook@chromium.org>, Andrey Konovalov <andreyknvl@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Thomas Gleixner <tglx@linutronix.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:hyR7Ox/myYz3aM0AbiuocaW7xwzp1dKvsByExjJF4NwfKiaZZqh
 Ii1Y0ntWLCLVtDUqhkoT+74QmVeOiAOr2ZlOQrmdyGK5EZzLlKdqqrXNYvLIDD/O7+ox+XS
 TNhOVXr1F80uYgF1l58vS4j7y7X5ThvZj0ILYThLaNn+4VQQc+LUzoRGEdkHsJVESREv7Qg
 uqv+uHeuZYZDLYkAvsGOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SeEJAuoqTIw=:qbnMonlpbTwXDSGSiQPrJJ
 7CJvlmtlGxYj5bsrwA1+9CRTutBTm7mU47uel75g+Zrye69DL4BHQcCJrWGTIqhVVHics4rFB
 bTP5XUZLqBOUMBsPJAcpQWnMW5BDG7rjxGerjmJTsP8X2dCiUHY5i5l/uPHciz9fvEpWd1I0L
 Fj175dHs9DgXvP+qLyRHhpEutk36JZpO56fL6lmdmLNdtc5YWcrUkmiqvRlVMn6azbG/IN/A9
 vzse6UR8/nwzg/aHMIUSC9w/dWouPMCfIrDM3fl8zKnuV7K/Z3H98YEYeoLqOoWrmJTQCcmGW
 seBCPKfWSp+r+rDPWcPQnmiktcAZ0DQxQHDtrZBEp+lTUI2H7SRGfFXUMlqv0twoS8Fiembw2
 E6EuYSYLCd413s5yUsydJXk55haeij3MHAhy4bzZEniwRH6MuH/idemqZDqPwHJ6seHWowwpC
 p6ntsnlkCEP/zuQuf2BW9mn9XA8IRoSnD1qiyMFllaKq+BaVHt5p5a9Tq8RfJeOchAdMMmtq7
 GkTkePSOjGXZiOulXmPOFBsgLx1nz+Y2iglDbA9FpLqZTwV9fsd2OGxHW1XkvM/BfIpTQy9XL
 WJlZ70nT4gwqUtWqyOlBsO00KLKfTBPMrz/j/bp95i7CfL4rmbnY0WZXjIGh48eYrkqV9EJUe
 PukjHCChTrA4PT9kETAOOJXFZbf6J8kAH8QSuTBHX6syUU/v22qFYW1brR1Oi/WO+AEL7WJxd
 kdBEVaAXGRhUywlotfcpg299Lrj0+0Eyde2hWBHOMiVwzOmzH5flDXOhD2IqikjGd7GhnZmOw
 Rojtqh9VcVye5yzxyLFQYRZzchIJZ3jiRcWRZACRTNnQpmheac=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 5, 2020 at 4:50 PM 'Dmitry Vyukov' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On Tue, May 5, 2020 at 4:36 PM Marco Elver <elver@google.com> wrote:
> > > Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
> > > with -fsanitize=bounds or with ubsan:
> > >
> > > clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
> > > clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]
> > >
> > >  menuconfig KCSAN
> > >         bool "KCSAN: dynamic data race detector"
> > > -       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
> > > +       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV
> >
> > This also disables KCOV with GCC. Why does this not work with KCSAN?

My mistake, this should be kept enabled for gcc. If we can get the combination
to work in clang, that's something that should also get enabled.

> > This is a huge problem for us, since syzbot requires KCOV. In fact
> > I've always been building KCSAN kernels with CONFIG_KCOV=y (with GCC
> > or Clang) and cannot reproduce the problem.

I have some local patches that change the way we pick the warning options
for each compiler, and enable more of the warnings that are normally disabled.

Maybe -Wunused-command-line-argument is disabled by default?
I only started seeing this problem recently. It's also possible that there
are some other options that interact with it so only Kcov+FOO leads to
KCSAN being ignored.

> > Ditto, we really need KCOV for all sanitizers. I also just tried to
> > reproduce the problem but can't.
> >
> > Which version of clang is causing this? I'm currently using Clang 9.
> > My guess is that we should not fix this by disallowing KCOV, but
> > rather make Clang work with these configs.
> >
> > Dmitry, can you comment?
>
> FWIW I can reproduce both with clang:
>
> $ clang /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=bounds
> clang-11: warning: argument unused during compilation:
> '-fsanitize-coverage=trace-pc' [-Wunused-command-line-argument]
>
> $ clang /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=thread
> clang-11: warning: argument unused during compilation:
> '-fsanitize-coverage=trace-pc' [-Wunused-command-line-argument]
>
> with both my disto's 9.0.1 and fresher 11.0.0
> (7b80cb7cf45faf462d6193cc41c2cb7ad556600d.
>
> But both work with gcc
>
> $ gcc /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=thread
> $ gcc /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=bounds
>
> Is it a known issue in clang?
>
> Can we somehow disable it only for clang and not gcc?
>
> This will immediately break KCSAN on syzbot as it enables KCSAN and KCOV:
> https://syzkaller.appspot.com/upstream?manager=ci2-upstream-kcsan-gce

I can respin the patch with this fixup if you like:

--- a/lib/Kconfig.kcsan
+++ b/lib/Kconfig.kcsan
@@ -5,7 +5,7 @@ config HAVE_ARCH_KCSAN

 menuconfig KCSAN
        bool "KCSAN: dynamic data race detector"
-       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV
+       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !(KCOV
&& CC_IS_CLANG)
        select STACKTRACE
        help
          The Kernel Concurrency Sanitizer (KCSAN) is a dynamic

As you both say, the combination seems to be quite important, so maybe there
is something else that can be to also enable it with clang.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a23XzLhZQNuFbeQhaSNru1abPwXV_mXR_P6N6Dvxm6jFw%40mail.gmail.com.
