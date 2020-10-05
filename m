Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIWP5X5QKGQEKMQNK4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB82283E5E
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 20:36:19 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id b1sf1909612uad.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 11:36:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601922978; cv=pass;
        d=google.com; s=arc-20160816;
        b=qT34zl412CZI8ZdKiEY+XFtc/MbMPXsRSzoTPwkQ13ilEx7ktSoBI70F5Ntpa0z/10
         sg2v2QDALmQRwQdKekihCQx3qf0XK7rXeFxFxWmNDGwvIlAH9rinMYJHXgNd7UvIak5L
         nBSOwMZWLfsh90hVjEvH8g3/o8xgAyDBdAg2OcZDrOBz6NHSWHKkuO/PtFE5Qo429iMb
         ZWfSzuC1CDPkzLNyX6UPO1mh7YJPD+DG1oEhQYYI95E9z9ry2Dw2SMRc6diLcaTFt+ng
         hZlgD/X02nOYbbwFgzhSwsUsNev8EXXG7/gbCjPFJ9ApOKsCkq6Qj2GHjxhQr7Zq40sp
         Ff6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=A+gUPrE0Wn3NuI3N5RSRi9sqJC29CgQwQWr+B1RLNgw=;
        b=kP66eeltW0V0AwlsyN7ctYaTtGrQLOzcLZy60ulPh0zLTICdlAR9B7EBCydR5i4wkF
         B/HaIB0Di+f8ZT45/V8otMkjxupkgLYnJUfHgdSMacW7HMqK8AP3M6PO4AxnIR45iQuw
         nQbPCgYgwUBiP/SgnTNgBLL9/08FEouKnetDrgOXKU/AQbTxud+Lyvg9mbq976IxkOp/
         zJN8Ma8qYakQOK/iQMMaB3V9R1BqZWCs+0mUE61l4BBPZH2aZsHys5+5FymmGS6xd8E8
         s1/35WF0f+nvqdGhJhzLodWN6Iw5YV0O0GcvkyClHdp5yF3ViZ1SpUBm3lJu6dYEoK9r
         L5/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vBtU369t;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+gUPrE0Wn3NuI3N5RSRi9sqJC29CgQwQWr+B1RLNgw=;
        b=eWCltnn9Q2LXAGl82s0uTYCEfYDAYK5ALE62EYcOfGL+oN7awRBHiqxD5wxe+Ts/A0
         DYsZDjeBBD3NlpQvrrEis1/W3vRrBl1fnsGrWGNkXdwqVtc9NC1fZGAQXxDfG+tSchjA
         Pi/ihUfHpcrn/rSvCdXbhyxiUHN639Y4+WMOHuWey2obw+6l1bvxhDfX29tG+marWMiC
         rQpvqk6emt4+3NzdcrQOyCafJMDExCZF8iMXaUjGd9bCxAIiBp96F9jFi7qhb9hSTaAh
         rN8gAqqFSSwk3aeODk4IaWv4pLygEwLsYhelvo4jzsHQKjMzGLgOKY265JhqVuahmxEx
         u4uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+gUPrE0Wn3NuI3N5RSRi9sqJC29CgQwQWr+B1RLNgw=;
        b=LyPCNIqVzbEDrxRthao8qfPKlGfE/U9Aa9r2FTysIJ7zAmK3YMMgjU3zU6/kvVo04P
         rIaXkwzAxLX4SMrD5/VWpnYXDxATlsM2oB7ghB3mJupgSuGmm6Lqu8GY0aJeeKp59oMe
         YIpqgSi7QQTVyNPT48W4wfFFDxVYtjgHGuYYZOtvkHBR98+8t6icIYliLJ67iK8dx7+Y
         EcjeivdY6B79dIMxL91H5rU1oM2S8iP8yeBuA1qsaLmWXA3Ef9VVOauBqlAnY7HJZUq9
         bYvp0BrS0RJsq9Qm5w/sMURoZkxt/PV3RhFhA0+j55+bighKceSFcBjWVjEGKK0YM1Xr
         2X6g==
X-Gm-Message-State: AOAM5316OYOuoNtIpoZCWJPcnXuSWCQJ4m47i7AI07hUWSZvB0Ytx/Wg
	rQlpYV42wHJgjnOzjHnh2mY=
X-Google-Smtp-Source: ABdhPJwJWo+qlnza8ytvdFONxvK88f4PWTOo3vJ+TltWryjVCGky0MbviTGrXGeZ20PBuYgCMByKKA==
X-Received: by 2002:a67:fac4:: with SMTP id g4mr1020096vsq.9.1601922978621;
        Mon, 05 Oct 2020 11:36:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:db19:: with SMTP id z25ls1143586vsj.0.gmail; Mon, 05 Oct
 2020 11:36:18 -0700 (PDT)
X-Received: by 2002:a67:1385:: with SMTP id 127mr1030839vst.31.1601922978150;
        Mon, 05 Oct 2020 11:36:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601922978; cv=none;
        d=google.com; s=arc-20160816;
        b=El0YFNq3lhUOxEDBrlyiQVLSrairwWNZ4mLlco7lFcEVKp6mR8iH8v4QAZSeHdZpc+
         DdDbocbT+8IHvCVFIDEyL5dI67gix8ioUbibUeFGrZNuD+bjZDpX8YRiSp1xKnPncsnx
         t5JI0haCoUZEcRmHWBT/Py0HtZj24M7aWG1rSqogQERRaOL4kCyYGYE96YaXASbTAKti
         FtebYKZUePH+zZPSupnlt7Vp/T1hrbE/Dg00n+5Ny0nkFCH16a7FSyBXgJooOxmUo445
         3S0qB0NKuhxHRnAqJ+zVafwTE9wOSUo9zCCm/RBP78v5mAriDitCGp+RZkgc42rBp4iZ
         dYtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0wHD81aAh3Ob3GJ5aVvlWW4RHIkMZdoKTAx2sVZ9fTk=;
        b=F74wrspiO9oyF51D/zbClSoMpek6XmHJFI9L/WkcaFljf6BrbL7Mnoc5qvl4f6fs09
         fMtk9213GmpulCtXhfO0y/jwRffqdMgwnzBX+YgepE17qChd8mY5OXiNR4YeAe/4C0wf
         W3dnwjdjqyQ5YGGj+7f0rcijjbocRPKfEr4j8MMxGWNeRXSs46gZAWFZFbzJ+hy4aE0K
         /csAPN3ExiX270lXol2bttEBk63dhOxRDw22yFWR4JXMkJuqZd0m2Gk9CLl4p8iUF2l8
         y5GHOP4Kxzy8cbIYjtC6vB+kKsqE4mjhr7wMM0DekXKH05yc5igzprkLSc+CPAC/mGdZ
         eAnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vBtU369t;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x16si48506vko.2.2020.10.05.11.36.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 11:36:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q123so7534269pfb.0
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 11:36:18 -0700 (PDT)
X-Received: by 2002:a65:6858:: with SMTP id q24mr837940pgt.10.1601922977033;
 Mon, 05 Oct 2020 11:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200929192549.501516-1-ndesaulniers@google.com>
 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
 <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
 <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
 <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
 <20201001193937.GM28786@gate.crashing.org> <61445711991c2d6eb7c8fb05bed2814458e2593b.camel@perches.com>
In-Reply-To: <61445711991c2d6eb7c8fb05bed2814458e2593b.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 5 Oct 2020 11:36:06 -0700
Message-ID: <CAKwvOdmW4ZSo0yz9ZUjFhjzzDkNAghKYk_hxn9tvrKLBgCXx-A@mail.gmail.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
To: Joe Perches <joe@perches.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>, 
	LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vBtU369t;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Oct 1, 2020 at 1:19 PM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2020-10-01 at 14:39 -0500, Segher Boessenkool wrch/ote:
> > Hi!
> >
> > On Thu, Oct 01, 2020 at 12:15:39PM +0200, Miguel Ojeda wrote:
> > > > So it looks like the best option is to exclude these
> > > > 2 files from conversion.
> > >
> > > Agreed. Nevertheless, is there any reason arch/powerpc/* should not be
> > > compiling cleanly with compiler.h? (CC'ing the rest of the PowerPC
> > > reviewers and ML).
> >
> > You need to #include compiler_types.h to get this #define?
>
> Actually no, you need to add
>
> #include <linux/compiler_attributes.h>
>
> to both files and then it builds properly.
>
> Ideally though nothing should include this file directly.

That's because Kbuild injects it via command line flag `-include`.
(Well, it injects compiler_types.h which includes this).  If part of
the tree reset KBUILD_CFLAGS, that `-include` gets dropped.  I don't
think there's anything wrong with manually including it and adding `-I
<path>` (capital i) if needed.

>
> > (The twice-defined thing is a warning, not an error.  It should be fixed
> > of course, but it is less important; although it may be pointing to a
> > deeper problem.)
> >
> >
> > Segher
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmW4ZSo0yz9ZUjFhjzzDkNAghKYk_hxn9tvrKLBgCXx-A%40mail.gmail.com.
