Return-Path: <clang-built-linux+bncBC25XUMBOQIKZH636UCRUBAVKSMFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAE71CC275
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 17:43:42 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id z22sf12300659pjt.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 May 2020 08:43:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589039021; cv=pass;
        d=google.com; s=arc-20160816;
        b=uK0nUmn8RGVd8jO9cPzobTG8oDnZxPZWo4d0MYKtZO/+HAdVmNHMeUB5JrFFHqdgSu
         P6AtZZD9dLOqmrJVH9e3noB/Ba6rJS0Cy0pgY2VOXmRE0chMxDAx7Z1S9w0mpgsPlT+4
         3pbk/xDQQlWA//O85vb6yfeM792JrgdMuWzQsE5+INHG7Mf9OuXJlw9EH/2DDTwCy5ft
         N5kD2qgiorjUPws4BKl9bucZnWsqtwo1fROJtG6Mm7wYjWJW6PtsR0fZetWLE/bDFmaj
         vngMo9hLU/8G2Hr+d3/vo7K95GN/Jh7c9AJWXo2bv/J2kZfNUL8eYJ+iHyZPVSECsqy4
         yuPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=kZyW38rtb5eoVWq6ykJ2yG20SYwGFwNUpbPFyQevuDg=;
        b=YFcngzvka1/XgP51tDajzAtwIYyIR39MYmlozGj4i2wXdq/WIBN0jFIt4H1SqmLjA1
         uvOUo80XzutPMJcS89WPK7vPQ1UysYhlny/9ZJt2GfMLRc0hnT5ffLUKZBPr3W/1bXBF
         3RVNituARsihYv9gciGF0JzhbL1dfaaYMB1UteJRxJO8vDTWiWdd/T3DLzxUkjlzOSqA
         JlztUYa4fSpTDtfnrAwF546NN2CApesMxcubFAT27tTyFvP1lXH3gjr1csbOv0Fx33u5
         FUgH8U6lz2QBIEz/ACd7cwsvljUUlpoi9AIaVFb5pULw5Oj+29VxHhYj97DhJ0dd57Bb
         EWcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UGwdlqQA;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kZyW38rtb5eoVWq6ykJ2yG20SYwGFwNUpbPFyQevuDg=;
        b=M+6v1vEuHRUECN3eVdjHiupi2dmK+Jzgx8VlhfnjcY5S5wK2lwhyTM1enAXjvGSCH4
         I/TNbAVo/XHfiwYxunb4xHQGYblWTAMWGFTCT6FVy5Bx6KbN3znz8aC7AmoL4Ox+RyFB
         Zt1MIejYv7ljeTFZr8DXydh5sJmqoBSNWPHppNWVrKE9t/4hcsuzQDMLTShWfvq55W2R
         e9nSGYlI+1kLpc78/Gz+7WftCcNsNUN7vdzcKmgFMgAgs50SLda277ay1faV5wNoefrs
         1K2vf23qh9t+fOEfqVPKtL5ibbUMnFJthu+4Jo2+v7RpVo/HU+AehVs5at2ThPklKt8I
         UjJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kZyW38rtb5eoVWq6ykJ2yG20SYwGFwNUpbPFyQevuDg=;
        b=u43nNPtP/jo8inNTlGo9wVTqgb8z7BeYRJW77VGWUdl5JfQcspOp9EdWvyYeBr9eaA
         /g1PavgMBnDy2PCTJQlBT80MDtY26vfpr3jUMhiSvOdjXPMZGkXUYmbRIuaf3yeAttxI
         q7R77hW6F8enR1riX3x25KjoVHbt3bAXEKTEM/Gm9L6LslnDAoBzvCToHD55Qu8q8lkw
         5VXovLZwHFlIIZNJ9tsF7+mBN0+i3zE6vI45exPseeITJrG9kXtvJ9kXozwKnTFkZ2ap
         rUo+8AnQSswtqjbfwPM10o/2nIljWVH41CK5odakj82ynlpWjvTIWGds6NBSDMpUi55M
         yGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kZyW38rtb5eoVWq6ykJ2yG20SYwGFwNUpbPFyQevuDg=;
        b=QOUx/GriTMHyFEyUek4K5WyQTBg77wv6aix9TeB0jzYufrmVY4MeGLcJoOzJGzFDf+
         nsIEXeUq+zyHRCameyPorPX1LJdOd4Fyssr04HLF/eLqeJWUrafuIxAOM7qs46N4DcAC
         KvFLnzHf29t058+eWKqoU2Oi5thK9zm4WwaiZyt89O7uAeSjmNk640Ned7ydOOA5atUX
         zybca0ypCJ8S5Os+zcUvLnpBLLN+5eU87NCP9/K5jLIWzZ+xNrq7S5ycl5GVVD8BZvdq
         YoEkSFWzQ4t9h9ESLAByUtCbXExDa26z4YZPGGeUMDfbNUedpHvjC/MMWHZvwmFHcVm8
         N0Kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZAxFKIXA2HyH1hA4DLvYcx6bi1zN+5oPg4WraTDuCOFhBZOKGj
	AoK2xHWp+XIfMq/gDIZfQOk=
X-Google-Smtp-Source: APiQypKTRNupoO/Wcf2/V3oxnrKqWntR0hwOME6/hB18ibSHv1gowckTRDGPWrz+gi3QKsh5nMSVEQ==
X-Received: by 2002:a65:5947:: with SMTP id g7mr6962634pgu.258.1589039020907;
        Sat, 09 May 2020 08:43:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f8f:: with SMTP id z15ls3273064plo.8.gmail; Sat, 09
 May 2020 08:43:40 -0700 (PDT)
X-Received: by 2002:a17:90a:2450:: with SMTP id h74mr12201421pje.57.1589039020572;
        Sat, 09 May 2020 08:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589039020; cv=none;
        d=google.com; s=arc-20160816;
        b=z9i2SngCgA/ZfMGBnfz9XtQU27YBVTWkIRM9qqatvNzaex0guFGTXC8F6xZAsUEQ+b
         xzMi4cfx7ffaTwofW+buRPRyGFqeaj4KP54YtCtyJayzDefnBAWzg6Bj8JcWHksV2hRE
         TuvMQpIXQ3w8lbNhDQU3MkNEVOUM5BndBhP+i/bM8mu+p/W0R1cvKJ5AjKi+tz1k9nH0
         qyNHd1GJ4xC5wHjYvATM9auuPnuTvAeYqCHdnLvV+chOViji1C6PG864OrHYEgCME9Hr
         kWc44pM6i8emOH2yBI+K1HbddjM5oF0Igh1Lm+kzWOzssRC9D+r9M50F8MoTfDlpvG3E
         /2Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lEIOZtiJn4C44cp9H/kzfk5fMu6jd8Gvk2kf7XAUT3o=;
        b=RIa63M8nTyFK/9PL8yPoEBc0ECoPT+lURi9m9GUpf5JGXkE5mddNPiN6oYqc921p7J
         R12pJs3amKr20gyxF3NxjSz0vNILdH8etIsd5xQVqMPDxF9tbIRbm404Ucl9KtOpD+WS
         pJYO+69g91Eu/3zqB0ZZq0NboFUNHfJ+bk9yMzEQkDZVZPaLWi8Nn6GZrUfEasXvTWtY
         htCH5fUjqbSbPVuQr/c32KmA27TKW8LaKK0gHC+gB6mORyWnlmhFdEGzws6gGPlYn4di
         QVXbgPJV4gzL+hcFkF8xmLlj0SdYOPJJ1AbyxD549m4Pot2nOfmq3uOxyTA+BeNRZlpZ
         qXrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UGwdlqQA;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id u2si885939pjb.3.2020.05.09.08.43.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 May 2020 08:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id m5so4268206ilj.10
        for <clang-built-linux@googlegroups.com>; Sat, 09 May 2020 08:43:40 -0700 (PDT)
X-Received: by 2002:a05:6e02:d0c:: with SMTP id g12mr7913391ilj.27.1589039019986;
 Sat, 09 May 2020 08:43:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200508182835.228107-1-ndesaulniers@google.com>
 <20200508183230.229464-1-ndesaulniers@google.com> <CAHp75Vcsi9o2eUbyozhmPEz6Tfd_6ZFk2q-vcdrm9QxcVPQwMA@mail.gmail.com>
In-Reply-To: <CAHp75Vcsi9o2eUbyozhmPEz6Tfd_6ZFk2q-vcdrm9QxcVPQwMA@mail.gmail.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Sat, 9 May 2020 11:43:27 -0400
Message-ID: <CAMzpN2j4PhMMxZ6SOGxV9SfdbEZyuTNM-qNSTCZ8dv+irzi+4A@mail.gmail.com>
Subject: Re: [PATCH v5] x86: bitops: fix build regression
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	"H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Daniel Axtens <dja@axtens.net>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UGwdlqQA;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::142 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, May 9, 2020 at 8:20 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Fri, May 8, 2020 at 9:35 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > This is easily reproducible via CC=clang+CONFIG_STAGING=y+CONFIG_VT6656=m.
> >
> > It turns out that if your config tickles __builtin_constant_p via
> > differences in choices to inline or not, these statements produce
> > invalid assembly:
> >
> > $ cat foo.c
> > long a(long b, long c) {
> >   asm("orb\t%1, %0" : "+q"(c): "r"(b));
> >   return c;
> > }
> > $ gcc foo.c
> > foo.c: Assembler messages:
> > foo.c:2: Error: `%rax' not allowed with `orb'
> >
> > Use the `%b` "x86 Operand Modifier" to instead force register allocation
> > to select a lower-8-bit GPR operand.
> >
> > The "q" constraint only has meaning on -m32 otherwise is treated as
> > "r". Not all GPRs have low-8-bit aliases for -m32.
> >
>
> Looks very good!
> One question though, does it work with minimum supported version of gcc?

Yes.  The operand width modifiers have been around a long time but not
well documented until more recently.

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2j4PhMMxZ6SOGxV9SfdbEZyuTNM-qNSTCZ8dv%2Birzi%2B4A%40mail.gmail.com.
