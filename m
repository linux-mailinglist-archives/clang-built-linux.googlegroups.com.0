Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3E4R32AKGQEXU7MB4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id E5342199E33
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 20:39:41 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id d124sf18544647pgc.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 11:39:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585679980; cv=pass;
        d=google.com; s=arc-20160816;
        b=DhnqdgXBFmJcoSSFCZBrhg6C8jujsoZiUwDvdJx0MA6ph5WLeNfU0Ui3c8xm2nPI0o
         UowroycYYmnDOZm3cLlBLUyk71lQ/IZQS41/kS7MDel9h7RDa6j8emJEshWJ5CtdOTl8
         SLQydO7G818o9suYzJy7GdMsaqnlpuDJInX2wmfWgr75jIHgnT0OdaJPYE7RcpJGbE+l
         Ib1eqe7e/cuHMXGI0QOILYXwnes7uVEZdyvFkTHlFobyMFlsG6D2mf3P3TP87FeFsKjK
         w0++3DGPCnz8mX6A+5hMmADxd/9NI6PjkNzUKi9ypE2o9efPwpjDHWZoRgDrg1GlH2+H
         jcvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uJl50pVFZs4AU3+LVga497TRt+zoF1NNK5VYcwzPmno=;
        b=Wj314SkSjgBp2gbsT40hEyENnqeZNeopOkZeqSMepx6lMY0uRLtcaZQv2mCvEfm+jD
         IEOFu6msZOp2KD2b4ygzg3iVAJh6YWbKwcOmzZOC5FDBiOOMUkBVZMt7ZqoHbrpOIC8f
         +olQkPA5H0KB2/Uu+qGTnrKC16AqGJW33j8C0ixphbu4rh0jUQMnj2s1eO8mPyhI7bVy
         juuhOa9Dp7PJcQ+0ofP/t6DfzPEI3U/gUaAE36TS+/mkBSlErSazkq+Ah3RjqPQveBG4
         I8GEusJkVG96oIBmYVncDJ/9SmrFm9j4KsWRuhc3yoTn0yvdzga5je4ZBweMFezam7fu
         +y/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gzp6usWw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJl50pVFZs4AU3+LVga497TRt+zoF1NNK5VYcwzPmno=;
        b=HOlaBMFUNEaJ98ZYvycS3fxy1KyBupz17zx+70wclHvVRjpoox/ptcubHRh5KSCB6h
         Dzk8+qIltQjE5nTeiLGRrgJCmnSrp4AyGkHUzdCK2+GQl9o1JbTsOWu7qlGUQww8dXrh
         ckDGYbvpYGDZ+q6XJxVhGQvsgmCV1YsKWP3RkcHnuS/1y8MlE97G5NwRTsKnWEqGY10/
         VaBKoSt5WZZlSKg9qbSgpSNwGz6A7Yjp9QqzQF4eOfaTGFVG7A2b1LXuLD2ACgpOh8zf
         2S5OBDOZA8rtV3SNAfGOEi15/8tl35pvfk6QWTwPyFC3BTp0yqlFLxJhLowRvN0xjXOq
         il5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJl50pVFZs4AU3+LVga497TRt+zoF1NNK5VYcwzPmno=;
        b=fIJpShnqblkuwpzXAefTfAo84MNT3SgawqM24qTA4NQFV3/Wl3pmbvESREaHJsKpSI
         42hLbHDq/TfaDM6v9EhpSjnMnRFUtKvg73FGgOfpDRdYe4ZjFo5xaFOvDLTOqh27a3JZ
         sznRlhRJNfeoJwLoZU1CT7JaUlM56zOtkBAm/L5SuahzLt5VLjLBqalEmKIIORMvSuZX
         2RM8Z0Dslmj/ZJfD6sJ8PoqX6L2/fCbKsFGeo/c6YKz+eyJcy2Uue5txSiNFtz0VPO4q
         X3kY0N2RXlG4tafkrT+j4m4vwv9H9JWyn76PCxGi54cevZo+TxXjoyLNQgFC3gGgCgVb
         gjgg==
X-Gm-Message-State: AGi0PuYfw8+gc9zOHvk+Y8odDBUCQtIjdOpUn6QGT1EwgnEFJUj2g9C2
	ptieSMOdMQTeWDq7HeAufyo=
X-Google-Smtp-Source: APiQypJqHygjJ9DDYf2S2LMogIbVGxJA0CePyezjNByT5CWWnOKPDFNL+PKxU1IOQMXNXp5PHfwXIg==
X-Received: by 2002:a17:90a:1b22:: with SMTP id q31mr252683pjq.109.1585679980500;
        Tue, 31 Mar 2020 11:39:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8ac8:: with SMTP id b8ls14595999pfd.2.gmail; Tue, 31 Mar
 2020 11:39:40 -0700 (PDT)
X-Received: by 2002:a63:544f:: with SMTP id e15mr15472306pgm.427.1585679980082;
        Tue, 31 Mar 2020 11:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585679980; cv=none;
        d=google.com; s=arc-20160816;
        b=E0/NKSvENKWA3e0+iKPoZvJ37E59K9Ts6qZ+END9pjqCZQI28o6TlTyWZf6JqiYw5k
         ekSRpbs0lAR1ZDaXr/aXfH1d+d57BHyqs7iadDVHL5IF5rt52KjMumkpP03KzSBNJit9
         ksTLSoBFpdudcorMAks/2k6n3ezuAcHV36fMaWRiRJv0N1yPvoEKKdQCvUNgLHZEnkAZ
         LwTMCaHwR2rNdjnr4BLMbX0Ago706pCjaSoWoXSPwqNykJ2tnfSCiJhq5HMlf1gLLx03
         l2qUbGSKxmAbMoJ1K3axW5nZNAx8H76W3+aowxB/FXCSe1Y/pIK+xtrMn2UnKY9oBtbC
         jpSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SHbm0jKU3Qf278+OR+FaPiESB5wVrt4XPcJB5hVkN60=;
        b=cqYoFLrHI1t7YI0PrQBF1Q05oEDNvGVNbC6hRdkep4we4jHda0Nlr9fYDz9wplxs5M
         N8dVBTH8H4bgmOA3cKfkBFS7VmrWjdoa9ECtlQSn63dnRiQQACH4ngqBwHnn/OllIsr/
         PHRSyFHDIeZjYVk6KoR1abdkn2jwNQOeXcdAKAOLQMUbPCPnHTXxKUjDY9FXFT7d0kC2
         qLeBBYFBp3xWhXQ16oDEeuFZs4W+vtRQ8hTcFiATv+fiClJouVLfTjmG7AbDfetD0ucO
         mcZbbpjBUwC0GfQBRqRjhLOGzA1cXLKpNq5DHRTuofh7NtchTfF2hTjooV1FU/uY5x/e
         xVZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gzp6usWw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id f8si292421pjw.3.2020.03.31.11.39.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 11:39:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id t24so10728115pgj.7
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 11:39:40 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr19536884pgb.263.1585679979479;
 Tue, 31 Mar 2020 11:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86> <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
 <20200330190312.GA32257@ubuntu-m2-xlarge-x86> <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
In-Reply-To: <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 31 Mar 2020 11:39:27 -0700
Message-ID: <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gzp6usWw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Mar 30, 2020 at 11:25 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Mar 31, 2020 at 4:03 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Mon, Mar 30, 2020 at 11:58:19AM -0700, Nick Desaulniers wrote:
> > > On Sat, Mar 28, 2020 at 6:57 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > I also had planned to provide a single switch to change
> > > > all the tool defaults to LLVM.
> > > >
> > > > So, supporting 'LLVM' is fine, but I'd rather want this
> > > > look symmetrical, and easy to understand.
> > > >
> > > > CPP        = $(CC) -E
> > > > ifneq ($(LLVM),)
> > >
> > > Yes, a simple if statement is much simpler than the overly complex patch I had.
> > >
> > > > CC         = $(LLVM_DIR)clang
> > >
> > > Do we need $LLVM_DIR? Shouldn't users just have that in their $PATH?
> > >
> > > Also, I think we need to support suffixed binaries, as debian
> > > distributes these with version suffixes, as Nathan points out.  Or do
> > > the debian packages install suffixed binaries AND path versioned
> > > non-suffixed binaries?
> >
> > I think the idea here is that ultimately, the suffixed versions of clang
> > that Debian has in /usr/bin are symlinks to binaries in
> > /usr/lib/llvm-#/bin; as a result, a user could say
> > LLVM_DIR=/usr/lib/llvm-#/bin/ and all of those tools would be picked up
> > automatically. I am not really sure what is better.

$ sudo apt install clang-8
$ which clang-8
/usr/bin/clang-8
$ ls -l `!!`
/usr/bin/clang-8 -> ../lib/llvm-8/bin/clang
$ ls /usr/lib/llvm-8/bin
<non suffixed versions>

Ok, so Nathan, it looks like we don't need the version suffixes.
Instead, we can be more explicit with our $PATH, and only add the
above (and bintutils).  I was thinking supporting the suffix was
required for our CI, but it seems like maybe not.

> I periodically build the latest llvm from the trunk,
> and install it under my home directory.
> So, I just thought it would be useful to
> allow a user to specify the llvm directory.
> Of course, I can do the equivalent by tweaking PATH, but
> I hesitate to make the non-released version my default.

Respectfully, I strongly disagree.  This should be handled by
modifications to $PATH, either by your shell's .rc file when you
always want it, or exported for a session when you want it, or
prefixed to an invocation for the duration of that command.  We should
not have a new variable just for the path of a few tools.

Rather than `make LLVM_DIR=~/llvm-project LLVM=1`, you can do
`PATH=$PATH:~/llvm-project make LLVM=1`. (or export it manually or via
your shell .rc, depending on how comfortable you are with that
version).

> Having both LLVM_DIR and LLVM_SUFFIX seems verbose.

I agree, so maybe just LLVM=y, and we can support both non-standard
locations and debian suffixes via modifications to PATH.

>
> In fact, the debian provides multiple versions of GCC.
> For example, my machine has
>
> masahiro@pug:~$ ls -1 /usr/bin/gcc-*
> /usr/bin/gcc-4.8
> /usr/bin/gcc-5
> /usr/bin/gcc-7
> /usr/bin/gcc-ar
> /usr/bin/gcc-ar-4.8
> /usr/bin/gcc-ar-5
> /usr/bin/gcc-ar-7
> /usr/bin/gcc-nm
> /usr/bin/gcc-nm-4.8
> /usr/bin/gcc-nm-5
> /usr/bin/gcc-nm-7
> /usr/bin/gcc-ranlib
> /usr/bin/gcc-ranlib-4.8
> /usr/bin/gcc-ranlib-5
> /usr/bin/gcc-ranlib-7
>
> But, nobody has suggested GCC_SUFFIX.
>
> So, I guess CROSS_COMPILE was enough to
> choose a specific tool version.

Or no one was testing specific versions of gcc with more than one
installed.  I can ask the KernelCI folks next week if this is an issue
they face or have faced.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%3DU6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q%40mail.gmail.com.
