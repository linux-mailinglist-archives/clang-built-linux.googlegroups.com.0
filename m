Return-Path: <clang-built-linux+bncBCMIZB7QWENRBLX2YX2QKGQEQUYMPKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C341C59FD
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:50:23 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id p126sf2431800qke.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:50:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588690222; cv=pass;
        d=google.com; s=arc-20160816;
        b=DFe+ZBqbKwqqZ7EAjB2f+OhfqV74rCa0jxWW963lEczkZgWx4V9lkVlaNVOyVne2I/
         42ho8OgeDzGc1xbPATKJ1BrvpXRiZ3DVjSpous4krsZiqcYVEBgYcbCfnF91zVvxA/5I
         iIE/rk0ZhaoQetX6LZrC1fwUVw/ByD1jm28KwTrJvd7MTKbyKixiuG+ydNjQGpPy/RSu
         2Cu+YZtBXFdQRBMiuhsvCNEvgjUIPPXyQwUCZn0BXTN0ErEyr+U+asl7J6Ui1lUn5ds4
         SN83yfGQo+UrH62GSvjX5KnzqzhFgvqbKaKT7Nr6sStTh/DW2NIMosqIIeLWivTqCwr3
         To/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8FF4zb1iNvAdXeqfdwYm/SGHguykP6FTNplxS9oPACw=;
        b=PwCCyGXuw/EDezxbERfvr+f6JOsU/lQfaS6tocq0pWF+MCmuMpHF6MMzJnKYAwy3Fu
         /wllDMjGOzzFR5qPQ226Jh4hGBcMQRP8BInmn5QVV84h/lCJtyiUGgrSfLOoWSVLptrT
         pxbgUQtH2P6upgR2vZFsv1Fhjm0w0flyfCSHGnJPATclhfB5nCujHCuPxBOSJFKDqDbF
         Gc9HSv3FQw/EjS0v6P++vPiCXcRbYOTrFRb6PZ4vrngXnp0JEb1MGAbzhpvZJSWnm2UR
         zAvbj4QA0uxiNatoJ6CxMA4A0mjAV3ZRhXVjmQBIwZXcpbpVf+UE/CJ62OMyCI1ru+TM
         bUMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zxm+Rr7l;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FF4zb1iNvAdXeqfdwYm/SGHguykP6FTNplxS9oPACw=;
        b=LmeaqGwyh0urTQ4/QYtkLQtGwzsbNlsCGj5Mp6bDTTp2IMB3w/+QBciyHR4dOnoXp8
         EG/YslPYQfRxF+0hTo7KI4tuoTDdwWa9U+E1Nkxv44NS7M9QUHCcx1wmeL7oGY9zoNhA
         +KZsF+25Rufj6oIg4uwk+knKehixuZ8E0eTGnh2/a8aV27kh4us8mcYajdGJv0onMASu
         IDWsbFx5vI0f26CbD6uXbWUr53AdINwLr9CzW9CkC7S/fKpALCVCz5g0I5korqLSBq9y
         1k5v9cjiqJdB1A223sQxe8oxv980gwoRZX3PgI8BH5xWP6QnZC45G1P7h/ffe4wSntBL
         /Ejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FF4zb1iNvAdXeqfdwYm/SGHguykP6FTNplxS9oPACw=;
        b=iLOyhUIPZZUSEkUAyZxfDyN9KWPAtUYlNulBj59f5DsUl5mxCkbXO4gupJQDLNcIXM
         m24az2rCj8yIQgTbjLYSSPqGHrapbh1w3pzBSMMrVrHpG8x90M/FWH1tROxirWucGLAG
         oO4HnCrFswEe3Uvtt0a/t3JniaSL8sqCB2guSR0Cm/WWfRaC+2Z5Zj1xDM5JmoqKrIlt
         F+25v39Lb1eFnagOjQ0T83LEp1H0dJWlSNTbS9cBnQrqBvULAY9U4K5Jp/FnBigURjsE
         hHdyOhVrghi2jH6J6sIPVGHydEx7aPesiMy/oPOOXE8WOPZo6uOfO3jv/HNAB5BqAHVC
         sl/g==
X-Gm-Message-State: AGi0PubUxpwBQOhU9eTAn4Jnb4mngsEOiza1dzNse447b40vjkOqLyqb
	BiMFUxHVmNwqXnEFnCTpVUI=
X-Google-Smtp-Source: APiQypJ6wPZNhKgv/pgyxHLdrMD7wSV/fGS1fs/ceNzzGGnPMBzpvVu+b8czuSCrXY7P+t+rtibb0A==
X-Received: by 2002:a37:a1d5:: with SMTP id k204mr3854917qke.325.1588690222118;
        Tue, 05 May 2020 07:50:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ec06:: with SMTP id h6ls2051149qkg.9.gmail; Tue, 05 May
 2020 07:50:21 -0700 (PDT)
X-Received: by 2002:a05:620a:120d:: with SMTP id u13mr3774898qkj.157.1588690221787;
        Tue, 05 May 2020 07:50:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588690221; cv=none;
        d=google.com; s=arc-20160816;
        b=vDrxxdL2aVQGEIwLj+T7jMYcXa1SRmqe6Ws43iGXjcr20UWlz9fQnCL19mI+o2DIaE
         kdxKACPaZT1Jj1m9fWRrrWO8HTBGIqsV85rUL/dAv71mzB+ifCZKgfI5TPp7crLJl6sI
         hs0WaVOQDic0UeQCe3MmoNRL4ZrJPFCa3UKJvPDGK/fQsnKeshCx2ZXtAodIm3IP1fQf
         f8tsZ04Gmq7C5HQsJHEFBgd5P9F5gS6dz9GDEypDHF0YNAFos/lx9r2a43uw1bcweGNF
         rbAFESm7FQ3E0emo6WqDuShCj2B5Fz1tXwTf6PxaGbhtjCVzlrZTIvrGtDRDbM43Fa5B
         8mFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7Pq81uf2psyNx4BKzdHn/TmsDqiXEasycTFHLZy0fzE=;
        b=OezIqCvJfjb9FtIsO8EWCCxS6dAG1ANtvduGEcOxTkGHjFi2RIBaW1od7lyCcram65
         5VhtXUi8aMYr6CZ+hqnGu4X/Wm9Q+xPj2COXiSuhonTFHrVv3JUQJm17+G2pARa+zvxu
         RZqDBa1XNBX5lR6kMZC2ULG8pUfus1Ki35NbSTLbB+IMx2ZeiejGgdFxOS54vHFZn1CK
         +BUiZ54RHDITW6+a63/VDmJR5pN8wGGUPOhDQtl/74rkh44DvEvbOxjjlPnxkxRQpBZM
         sWW2eeCKreYrAe9XdYM/gHH9oD3bzxhsNs1fEg88o+w/L1Qc4/B6xBTlk8K3OiuZEkeZ
         yG/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zxm+Rr7l;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id p9si174061qtn.1.2020.05.05.07.50.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 07:50:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id y19so1108152qvv.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 07:50:21 -0700 (PDT)
X-Received: by 2002:a0c:f8cf:: with SMTP id h15mr2976751qvo.22.1588690221148;
 Tue, 05 May 2020 07:50:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200505142341.1096942-1-arnd@arndb.de> <CANpmjNMtGy6YK8zuqf0dmkykZMt=qkxkZrZNEKde1nbw84ZLkg@mail.gmail.com>
In-Reply-To: <CANpmjNMtGy6YK8zuqf0dmkykZMt=qkxkZrZNEKde1nbw84ZLkg@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 16:50:09 +0200
Message-ID: <CACT4Y+Zpp=+JJedhMpunuUh832eJFu+af-r8631Ar0kE2nv72A@mail.gmail.com>
Subject: Re: [PATCH] ubsan, kcsan: don't combine sanitizer with kcov
To: Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Kees Cook <keescook@chromium.org>, Andrey Konovalov <andreyknvl@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Thomas Gleixner <tglx@linutronix.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Zxm+Rr7l;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Tue, May 5, 2020 at 4:36 PM Marco Elver <elver@google.com> wrote:
> > Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
> > with -fsanitize=bounds or with ubsan:
> >
> > clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
> > clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]
> >
> > To avoid that case, add a Kconfig dependency. The dependency could
> > go either way, disabling CONFIG_KCOV or CONFIG_UBSAN_BOUNDS when the
> > other is set. I picked the second option here as this seems to have
> > a smaller impact on the resulting kernel.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  lib/Kconfig.kcsan | 2 +-
> >  lib/Kconfig.ubsan | 1 +
> >  2 files changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
> > index ea28245c6c1d..8f856c8828d5 100644
> > --- a/lib/Kconfig.kcsan
> > +++ b/lib/Kconfig.kcsan
> > @@ -5,7 +5,7 @@ config HAVE_ARCH_KCSAN
> >
> >  menuconfig KCSAN
> >         bool "KCSAN: dynamic data race detector"
> > -       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
> > +       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV
>
> This also disables KCOV with GCC. Why does this not work with KCSAN?
>
> This is a huge problem for us, since syzbot requires KCOV. In fact
> I've always been building KCSAN kernels with CONFIG_KCOV=y (with GCC
> or Clang) and cannot reproduce the problem.
>
> >         select STACKTRACE
> >         help
> >           The Kernel Concurrency Sanitizer (KCSAN) is a dynamic
> > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > index 929211039bac..f98ef029553e 100644
> > --- a/lib/Kconfig.ubsan
> > +++ b/lib/Kconfig.ubsan
> > @@ -29,6 +29,7 @@ config UBSAN_TRAP
> >  config UBSAN_BOUNDS
> >         bool "Perform array index bounds checking"
> >         default UBSAN
> > +       depends on !(CC_IS_CLANG && KCOV)
>
> Ditto, we really need KCOV for all sanitizers. I also just tried to
> reproduce the problem but can't.
>
> Which version of clang is causing this? I'm currently using Clang 9.
> My guess is that we should not fix this by disallowing KCOV, but
> rather make Clang work with these configs.
>
> Dmitry, can you comment?

FWIW I can reproduce both with clang:

$ clang /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=bounds
clang-11: warning: argument unused during compilation:
'-fsanitize-coverage=trace-pc' [-Wunused-command-line-argument]

$ clang /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=thread
clang-11: warning: argument unused during compilation:
'-fsanitize-coverage=trace-pc' [-Wunused-command-line-argument]

with both my disto's 9.0.1 and fresher 11.0.0
(7b80cb7cf45faf462d6193cc41c2cb7ad556600d.

But both work with gcc

$ gcc /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=thread
$ gcc /tmp/test.c -c -fsanitize-coverage=trace-pc -fsanitize=bounds

Is it a known issue in clang?

Can we somehow disable it only for clang and not gcc?

This will immediately break KCSAN on syzbot as it enables KCSAN and KCOV:
https://syzkaller.appspot.com/upstream?manager=ci2-upstream-kcsan-gce

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZpp%3D%2BJJedhMpunuUh832eJFu%2Baf-r8631Ar0kE2nv72A%40mail.gmail.com.
