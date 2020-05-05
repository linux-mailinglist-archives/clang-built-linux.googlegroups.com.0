Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBL4IY32QKGQEIVEJ3FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 811861C5AE5
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:20:16 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id y4sf1377055pgo.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:20:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588692015; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7HgBWJuJqNST/PlSOwraL3LrUtxL4ttDuzXy3Bnivb3EGAlUUYuyUKB873fSoI0lD
         gvaO5n4DWpb0LS9zQM5C6FFlmwKIcBjarbr1Z8iO4KGz4ER76yvtvCMBTjsvCH/1Zm6l
         wtE6vhUrNbnftvPE/zwAhBU4Y0lYZGrKrOVNyM/sCIQTO2v5QifTJjPZhnI6WjHhK+Jm
         De8n4YMnVkxofWrL2BUDGMjSd1V5FLvIa0Sv+mQr2VF9J17TtObZhOIw1U+Fo+M8i5Pl
         EIdp5/D9Oqw3S36k0mXU6iBIKO0mot5MlfC9mB+HwF5C3kZFux2SdPLoxE8AAFWnGOdN
         XmtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=y+LPxafCrgTtfYkVDFAs26gwi3TLk4aGuEKwZCoVF7Y=;
        b=vy7T4yREWUw0IVHXIKEyjPcBjtQL4FCrarS1TL5U4cwvHJyN8ZRtdjGDbRegvvnQih
         ez+8ZIuk21tJwRWp7/uIhErV14XNAm/EVN4SNJWbTkKy8/+XfrJtDW99BY7XDXXQ3s+Q
         NPIW7Fp6ymzwyGJ0y6vqd0cgSTHdSCl/XsT5za5yLX1gjQWY+XvVIZv4Cxmnn50Rwphi
         NQ8m1UgC9jEfsDSnSPY3AlmiNpynSJhTsaNh5oF2RKamZfJTUKJEvPvKBZHYsXOBYBun
         xkj3vPfGgbaqV+IQl1cxngTN438M+eMpfsz+HfMns4sq5yfGmv2DyRVngm54Bj7t7niL
         yafw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lxBGwppW;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y+LPxafCrgTtfYkVDFAs26gwi3TLk4aGuEKwZCoVF7Y=;
        b=CM+TkmjquHUwxx1FbWptTdBdMDZZ5ZsIROKQ+JWxDqqoMMgbdJiEF2AkbleON/X3Sd
         wTmImndis/P30ZgPzfu4pPs7hQmGtHJKCIMYlXmwBkxn6hsXK5W5dTCMk5wH5Lp6MXGp
         cMaeY8VWyojtyIaqsUD4Ql7rm2qmNRnvxRl5XSFFjF1UuIvpnHG5yBs5mDPHGLGy+bR+
         pM5ARxnDgKy0JMmz5MFFBdjMvMcJihwLXpRFGahzFh4SoHIXb5Nl5aSiLOohLJ6MVSGt
         gwvbnkKKlEdkhAodVoy0BLGOTPBLt1jcchlY69veAnPucZ4yv933MBpAlGIwGdq0xyib
         pQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y+LPxafCrgTtfYkVDFAs26gwi3TLk4aGuEKwZCoVF7Y=;
        b=ucBkneWRtHC/CiOi3sFMkH0xxDC2Lx6ZNXjc4TwEfj3VmU6n+KxkZwPf3jImQd6Lvm
         rqqS8RuKhx6GsxPIS4LcfgBOW9J7uaUmGsg6vkz3AkKauPrY+aQbgK9zQebiXlADrf7Y
         W1efkbiTQCtbF6CXufmVhpDMyk8UF0Sn/vsd46nHy92Ds5yLMHzSXRuMoXwzVr0LEF6H
         aav+EdEjw4I0gtbT9kGtuj11tuTzRoLy6GPRvEpwPzYDHQPIbbP4Nw/pCDSlf0cFPCp4
         sh9mOe83r4gjFmx76ZBVF/5hT6oBrfZBbAJaAE+o7mirl9xBaaiPQ/vNNp+bKqusq85C
         eDjA==
X-Gm-Message-State: AGi0Pua3uoYxK8uEAq3met1Bu/7FyGhnsFUEQEShBrpzI+ID0DJyswb2
	mK0FqmflFmGQMNImPHLHY8A=
X-Google-Smtp-Source: APiQypIDu6ugpmLb+uKmsXe2lFRCJLvo3Q+Q4wu1HG8WSGlgm8Q607d4ijqih80fySYcH/fmTKGSig==
X-Received: by 2002:a17:902:ba89:: with SMTP id k9mr3300907pls.199.1588692015218;
        Tue, 05 May 2020 08:20:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7203:: with SMTP id ba3ls1766229plb.4.gmail; Tue, 05
 May 2020 08:20:14 -0700 (PDT)
X-Received: by 2002:a17:90a:fc89:: with SMTP id ci9mr3730004pjb.140.1588692014663;
        Tue, 05 May 2020 08:20:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588692014; cv=none;
        d=google.com; s=arc-20160816;
        b=pZJCVkJWsZBZA8sAlmzL9BeC1F2fvm02fI4hCcIUlU77lUAtnxZoZO6QBSR40HN6N0
         XdtFf2Oaxe7tGCgp/zVOASHvbHaBRuGDfZAXOG00ZwuABa4ZcLbaTqgndZghOTxgIMIi
         I5ECJ1+kDp8Rg4Y4HOrT4OiYCLwvm3Of8uIEs8PZnBRzIHvE0hP2p5UhP5my5m5qeXtr
         2+HBOXydhOaUuYYbrUWxIaV8wYIq/BhmzmJzklBgwehQ5LVsmANVlazcTNuH4Zz6+vLT
         WJd7FgLxwdhgfcEZFC/HNXerhLrh+VWsMdDeaFixMS2tiZbkAVQFK/N5QKXP6A6iOmPu
         Q1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=V8efal+sgU1en3J4nQ9rg/ceJ49rrnhyDi/kAbpO9w0=;
        b=l4DRh+zCjclH3mGUIEjWU+e/GWdex9ZZbHp90gIvlDjkZCJGQY0uD2MS3gv6V1Y0zk
         zeh2ZRdX1Re9Cr3zPUJmyVgBu58RGdB+3/sL5haoqJuYT65AYRx6W8Duz9qe3teKXPyi
         fKgIwj6DF785HBvkh/m164amGUb1Nx0jtVLygSjVP/dUOGO6LoBxZ2KBTXguIbI8iyrv
         RDoeuScZFLr+dIn0TfEa0px2JqkPgcWbGToFQZriJuVrQs6fU/fH7XqxyRxG9rC5aW5h
         yvcrXFtRNOcAjeSqRbdlHiqy/yeyRp7m9YWb1HbqsauGGGmt3DI9NS2Uy2CNFW9JsDoZ
         p3sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lxBGwppW;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w8si242526pjr.0.2020.05.05.08.20.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 08:20:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id e20so1919852otk.12
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:20:14 -0700 (PDT)
X-Received: by 2002:a9d:509:: with SMTP id 9mr3055453otw.17.1588692013635;
 Tue, 05 May 2020 08:20:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200505142341.1096942-1-arnd@arndb.de> <CANpmjNMtGy6YK8zuqf0dmkykZMt=qkxkZrZNEKde1nbw84ZLkg@mail.gmail.com>
 <CACT4Y+Zpp=+JJedhMpunuUh832eJFu+af-r8631Ar0kE2nv72A@mail.gmail.com> <CAK8P3a23XzLhZQNuFbeQhaSNru1abPwXV_mXR_P6N6Dvxm6jFw@mail.gmail.com>
In-Reply-To: <CAK8P3a23XzLhZQNuFbeQhaSNru1abPwXV_mXR_P6N6Dvxm6jFw@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 17:19:58 +0200
Message-ID: <CANpmjNOE+GUG7O=WaJKQg6rdUOn+YMBhdS8enNWkD_8mdtaSBQ@mail.gmail.com>
Subject: Re: [PATCH] ubsan, kcsan: don't combine sanitizer with kcov
To: Arnd Bergmann <arnd@arndb.de>
Cc: Dmitry Vyukov <dvyukov@google.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Kees Cook <keescook@chromium.org>, Andrey Konovalov <andreyknvl@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Thomas Gleixner <tglx@linutronix.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lxBGwppW;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 5 May 2020 at 16:59, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, May 5, 2020 at 4:50 PM 'Dmitry Vyukov' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> > On Tue, May 5, 2020 at 4:36 PM Marco Elver <elver@google.com> wrote:
> > > > Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
> > > > with -fsanitize=bounds or with ubsan:
> > > >
> > > > clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
> > > > clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]
> > > >
> > > >  menuconfig KCSAN
> > > >         bool "KCSAN: dynamic data race detector"
> > > > -       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
> > > > +       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV
> > >
> > > This also disables KCOV with GCC. Why does this not work with KCSAN?
>
> My mistake, this should be kept enabled for gcc. If we can get the combination
> to work in clang, that's something that should also get enabled.

See my suggestion below how we might dynamically determine if the
combination is supported.

> > > This is a huge problem for us, since syzbot requires KCOV. In fact
> > > I've always been building KCSAN kernels with CONFIG_KCOV=y (with GCC
> > > or Clang) and cannot reproduce the problem.
>
> I have some local patches that change the way we pick the warning options
> for each compiler, and enable more of the warnings that are normally disabled.
>
> Maybe -Wunused-command-line-argument is disabled by default?
> I only started seeing this problem recently. It's also possible that there
> are some other options that interact with it so only Kcov+FOO leads to
> KCSAN being ignored.

I see. It certainly seems quite bad if one or the other option is
effectively ignored.

> > > Ditto, we really need KCOV for all sanitizers. I also just tried to
> > > reproduce the problem but can't.
> > >
> > > Which version of clang is causing this? I'm currently using Clang 9.
> > > My guess is that we should not fix this by disallowing KCOV, but
> > > rather make Clang work with these configs.
> > >
> > > Dmitry, can you comment?
> >
> > FWIW I can reproduce both with clang:
> >
> > $ clang /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=bounds
> > clang-11: warning: argument unused during compilation:
> > '-fsanitize-coverage=trace-pc' [-Wunused-command-line-argument]
> >
> > $ clang /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=thread
> > clang-11: warning: argument unused during compilation:
> > '-fsanitize-coverage=trace-pc' [-Wunused-command-line-argument]
> >
> > with both my disto's 9.0.1 and fresher 11.0.0
> > (7b80cb7cf45faf462d6193cc41c2cb7ad556600d.
> >
> > But both work with gcc
> >
> > $ gcc /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=thread
> > $ gcc /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=bounds
> >
> > Is it a known issue in clang?
> >
> > Can we somehow disable it only for clang and not gcc?
> >
> > This will immediately break KCSAN on syzbot as it enables KCSAN and KCOV:
> > https://syzkaller.appspot.com/upstream?manager=ci2-upstream-kcsan-gce
>
> I can respin the patch with this fixup if you like:
>
> --- a/lib/Kconfig.kcsan
> +++ b/lib/Kconfig.kcsan
> @@ -5,7 +5,7 @@ config HAVE_ARCH_KCSAN
>
>  menuconfig KCSAN
>         bool "KCSAN: dynamic data race detector"
> -       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV
> +       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !(KCOV
> && CC_IS_CLANG)

I wonder if we can just add this:  depends on !(KCOV &&
!$(cc-option,-Werror -fsanitize=thread -fsanitize-coverage=trace-pc))

Similarly for UBSAN.

That way, once Clang supports this combination, we don't need another
patch to fix it.

Thanks,
-- Marco

>         select STACKTRACE
>         help
>           The Kernel Concurrency Sanitizer (KCSAN) is a dynamic
>
> As you both say, the combination seems to be quite important, so maybe there
> is something else that can be to also enable it with clang.
>
>       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOE%2BGUG7O%3DWaJKQg6rdUOn%2BYMBhdS8enNWkD_8mdtaSBQ%40mail.gmail.com.
