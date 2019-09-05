Return-Path: <clang-built-linux+bncBCTJDYM3XAGBBYF4YLVQKGQEAEWSVFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCA9A9A1A
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 07:34:26 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 74sf617217oie.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 22:34:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567661665; cv=pass;
        d=google.com; s=arc-20160816;
        b=TmlH+UV76lPt3bAQ4eeCVlPtj46M39P6/rzUdIpd77uE6HCDvTm0K/K5Yd+QLIpFa0
         ttskgBVKuN4UtpZwD20wXYujH4SCR/pDt6iOyDq2eCvMSmSlS5Syv6Su4JdKZyCsYZyY
         cjN0Qpg7t71NrG7pOtI2Ka/SDtRWZxzlkEBJWBL4FCW4YC7CQXMByMAaQ88T550GdrtO
         xOdsNKOHpIpo9jT5+N4KrFVUfaq4tAXi3vnzk+setlvFnmPuarGv4Bkn8JmevIpxbazA
         8V+ouLQkVy7ZlyWyOwP6WsVimTzQGsFzOvSEzG6yoli2ZvYlHbsg+aEEiDUPdCCz0ujb
         h1Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=X4zdtF3tPZlsSO9a3EX4/H/QE1aIe2NkIbNQ/TGD4Gw=;
        b=DndaZtCTD3RINXjex8r/6GQ2bkr/FHVRyNp6xOiuvxiC338COeX2v4I6SCWug/o5qk
         TEHLMrM6IRZ5lhKN56mD7A1Pux8/b6WlmqWqSdbpUlY0T37C7ATTHsOrWMLeGSGa3/fz
         EDr1MXD0l7ZohKOd4u46ee77WZo/zLxjR7x08HDXpe4uKFk7+mwsaWD7ry2gDEOF+U5j
         HlWL1EJypRbYyEHrM8SHILj2UCRqP6MQhi5Th8qW5J1RuoAGgbcHYjGeVckZCmo84SHI
         oAPVk9FE9K3r75xyT2lTh3JrFOZk3Q3H+N6VdkEWlovfaxmafe6qXqoXhIdOVs8mW964
         0RUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lonelycoder.com header.s=google header.b=iU4GU7M+;
       spf=pass (google.com: domain of andoma@lonelycoder.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=andoma@lonelycoder.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X4zdtF3tPZlsSO9a3EX4/H/QE1aIe2NkIbNQ/TGD4Gw=;
        b=I8uxWd+0jDrNR65pQNzAxy2jaD+1dQ8sht6b0LvWPd5Y7TNdbgtOugzW4y2VtWJ0ku
         rpMkk54RcomoNh9i2H5NhPcfE5/IHyvroL6uxd8KIJ5Gdc8cxJ+N6lZwIBij9PWyG4rV
         7p3/Ul+iidAowGrxfnuwDbb/Y5D+BnQ3Q87D9Tkm2FpdJIH5XIZEoKNVxfrCppsB7us6
         7n7Ilvtm+setkT8HUXKSC5ClWN874ZKyzWn5MyZrSCc1QgU3hltSocCSt+lp9lU2rwX/
         1SbHqLDiqjbXKZTLzgpAZPtC1wnwYKZ0ai+w8ajnbbYLbKp1kbM7j+XuMQNo5kH5v6wJ
         fauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X4zdtF3tPZlsSO9a3EX4/H/QE1aIe2NkIbNQ/TGD4Gw=;
        b=Pv7dGI0LwybMEZcRpvo4KScIuW8oocWodlzRIPNMuMIB3krGpYm7iaSpXxecdC1Ewn
         1k0aSx7+VUHVW4jMjpdfUq+yvpVuiN0v2/5IBcxFVEtaPTPm2J8sPZWpjtdWAILhKllq
         KdTsS3J8+QhB5OEO0BfM/rRsCeUoDRwQXIfQeNuGCUJ/cUgotEGOPivtuiVRGmOecVWC
         ZcaU5qoCw+CJhGfN6sc1SEx52uTkNe8aHIraWuhOTzXnTWdZ7na1GGgCD5xMpmEAaP3V
         rwW1vWagGCc2cPaKogHlB10BsHoUzJgxdtXUlgshFjgSdgqLIHu2aKPQjWXCJnpQ8sUx
         jsRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMzrDkBsgT4LYb84wgOba53iNM4x7hpMf4brbvHfnuuF9kMqdm
	vcH/2MhpX2cORoCnU+8ouus=
X-Google-Smtp-Source: APXvYqwfLwvJ6m/HxIrTeCQR+WlODzxtYE15Z8v92pos4SON4z9qeR6cpnsRbcDFbEbp2VUmbr4JTA==
X-Received: by 2002:aca:bac2:: with SMTP id k185mr90220oif.0.1567661665046;
        Wed, 04 Sep 2019 22:34:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:159:: with SMTP id j25ls96744otp.12.gmail; Wed, 04
 Sep 2019 22:34:24 -0700 (PDT)
X-Received: by 2002:a9d:6b97:: with SMTP id b23mr1033241otq.267.1567661664666;
        Wed, 04 Sep 2019 22:34:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567661664; cv=none;
        d=google.com; s=arc-20160816;
        b=T3IIQmEskjAPNivfNDsx/JX2OzO/maCmSxzjIFEdRjB1givslyupHVmCh8fAE2xR7I
         taPWpag2WK/3CwEg++IWDpiH7CHW6A+KoWVvAGLM63RH26XSxJqAccVlh1FU1MJbh8Jo
         yWafy7m4nC7K5LqSXJP1gTqxdb2g8AA6It1aJdnB/qdhXk5KK4cfBRLjhjBvR1azGrvX
         4rTI9b1acTI7c4KmoatrHUzFN+0hwAO4nWWbWfdJZu17vru5VOysEMQvGQLIgT7doiUB
         zHVP4BVK/g+a7rqAIGPbqyo5NkqcqazH0eefFEMbzH3A58eUaiMd7qTzFFh+JRqhlPsY
         3cgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eDeL1H8rDxfUHOLv70GUO77M1psIvXCkWkx60/Nsrkc=;
        b=MyvlFRb28dLkpW2/aG01vQtJVXweZ/g4WSYSpHpMdqhMmYyZJvpbPlkyVW3UZsKzoF
         WlWwKAS9yUR6F1wl9Uxr8bq8MWLfdZnrLBwvg+3UvG32Y8iYO54V7UjUEYPNY1FR5rxW
         mbEeo8i8ZYzpOBtzYEy7TdvyYt/34NEbVtYoOARYCaOaJUvw638nvfHenmzSvFpsS9zt
         zgbbLtMmPLr0sgWqeRflmlriThXw2ayGXOH9gJNTLZlwGYGbZon53qVIBG7mgLTyb2gg
         t8NllkUlEOK93Lg22eFjBVOrm6lmTvFJSJ9i2M7Wq9KEfzdTjRNmk4arvAJdqPMweJhq
         LjVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lonelycoder.com header.s=google header.b=iU4GU7M+;
       spf=pass (google.com: domain of andoma@lonelycoder.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=andoma@lonelycoder.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id c67si60501oig.1.2019.09.04.22.34.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 22:34:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of andoma@lonelycoder.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id v12so749808oic.12
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 22:34:24 -0700 (PDT)
X-Received: by 2002:aca:fc91:: with SMTP id a139mr1143435oii.173.1567661663983;
 Wed, 04 Sep 2019 22:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190904214505.GA15093@swahl-linux> <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
In-Reply-To: <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
From: Andreas Smas <andreas@lonelycoder.com>
Date: Wed, 4 Sep 2019 22:34:13 -0700
Message-ID: <CAObFT-RqSa+8re=jLfM-=yyFH38dz89jRjrwGjnhHhGszKxXmQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steve Wahl <steve.wahl@hpe.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, russ.anderson@hpe.com, dimitri.sivanich@hpe.com, 
	mike.travis@hpe.com, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreas@lonelycoder.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lonelycoder.com header.s=google header.b=iU4GU7M+;       spf=pass
 (google.com: domain of andoma@lonelycoder.com designates 2607:f8b0:4864:20::241
 as permitted sender) smtp.mailfrom=andoma@lonelycoder.com
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

On Wed, Sep 4, 2019 at 3:19 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> + (folks recommended by ./scripts/get_maintainer.pl <patchfile>)
> (See also, step 7:
> https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/)
>
> On Wed, Sep 4, 2019 at 2:45 PM Steve Wahl <steve.wahl@hpe.com> wrote:
> >
> > The last change to this Makefile caused relocation errors when loading
>
> It's good to add a fixes tag like below when a patch fixes a
> regression, so that stable backports the fix as far back as the
> regression:
> Fixes: b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than
> reset KBUILD_CFLAGS")
>
> > a kdump kernel.  This change restores the appropriate flags, without
> > reverting to the former practice of resetting KBUILD_CFLAGS.
> >
> > Signed-off-by: Steve Wahl <steve.wahl@hpe.com>
> > ---
> >  arch/x86/purgatory/Makefile | 35 +++++++++++++++++++----------------
> >  1 file changed, 19 insertions(+), 16 deletions(-)
> >
> > diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> > index 8901a1f89cf5..9f0bfef1f5db 100644
> > --- a/arch/x86/purgatory/Makefile
> > +++ b/arch/x86/purgatory/Makefile
> > @@ -18,37 +18,40 @@ targets += purgatory.ro
> >  KASAN_SANITIZE := n
> >  KCOV_INSTRUMENT := n
> >
> > +# These are adjustments to the compiler flags used for objects that
> > +# make up the standalone porgatory.ro
> > +
> > +PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
> > +PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
>
> Thanks for confirming the fix.  While it sounds like -mcmodel=large is
> the only necessary change, I don't object to -ffreestanding of
> -fno-zero-initialized-in-bss being readded, especially since I think
> what you've done with PURGATORY_CFLAGS_REMOVE is more concise.

Without -ffreestanding this results in undefined symbols (as before this patch)

$ readelf -a arch/x86/purgatory/purgatory.ro|grep UND
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
    51: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND __stack_chk_fail

I just bumped into this issue as I discovered that kexec() no longer works after
the x86/purgatory: Use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS -commit
was merged.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAObFT-RqSa%2B8re%3DjLfM-%3DyyFH38dz89jRjrwGjnhHhGszKxXmQ%40mail.gmail.com.
