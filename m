Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXMX2L2QKGQEDTQLXXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AE81C9E79
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 00:29:50 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id h13sf4713739oov.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 15:29:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588890589; cv=pass;
        d=google.com; s=arc-20160816;
        b=CE9eT31LEy6qGnNoS6SlMe3zDlXOtbo/VnM37Olv+NymXHXFNHfdPUoyJqnBVllbpW
         5MFyQ1+PDGgmr4ojJGb9w46nULpKcxRJGvYl5MvONqJzIyhrfcc/xfsPwr21NhgehV3k
         7UiC16P3yCoi3pjsL6etPEx68i0w9K0iTUEbV6ZMWqLX1tFEBJrHDkG8RobyAlHgc4ra
         zsPY5u/rayCizjuLHCQdCapFO5GKswXzoFXmwcAshkMH9nltsWgszAI5S+KRVXCpubEB
         1r677FgwxofdATzAc4kwt9vqJnir4vGU2nDv+c2J8cmgSF1ZwYTGphd1Jlb3+klILX+J
         2zUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LPgmNhRLsmV6bgm+Cwv+6FfTakgfjcav4yH3wMYiMJY=;
        b=iATlULDk9yiWnIhO6dCCDB5Lm1Bn50mYcNTDq/Qx7znkEyaQ3Lkefpw/tMXVcWOgTX
         XwvWM7eKn0S+xxbaTHKAAjx6Wl1/uvuM1/sC1Wi0qSyamBFPpVOVxVYiwT6fSkmAtVrp
         BBW/KfCVyuwqL+RbmYKW3qjaY3rXSaclHsfKIbRBXc4SqiHnz6I+TWmRYfQ25QfE6fPe
         ye6xnEi21w9XNWyh4FUGEkf7OwPVmDFkNLsRdSERry3R1CM1QGyQRc/Iz/8lrorh7iv2
         xn0BW8IKYD2LUUWJi4ELlnpF/ILvAjYYy41Ac3M/sZ9lsRck6nRPKUCQNu/CSub8ncxo
         /gtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="SVUtOgJ/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LPgmNhRLsmV6bgm+Cwv+6FfTakgfjcav4yH3wMYiMJY=;
        b=Ss6G6O73MaaSR9C71lloZMVwSVmX9br1hS5fJpvbzsjQTwRtTpawCzl/grD0jLxGpi
         Ba1BlUKsrdGzhmWd2iN9YI0agVtAMYoXa5NzZzTjCj7okvN/6jH/Dl4/JpAeUQbZhSWk
         SmZSCC2T487M/fj3QjXMvAzj7ArzA9pir2O4z0+L7MOd3tD9PEz5kAkbVgSRUZojyL6v
         FlAOkoOKp1LgSDxrV1p+Nss2/gnvmp+l6BUV3aH/cWKTn/Sfg7rcuEyNgHfSQTCeFR0v
         iFBqRb1WXg3q9arKXCjAIYgd2C5xpHf3HNIwA/RWlE7h+rBSUtFXswaSzaXwsPOgtZYb
         ueKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LPgmNhRLsmV6bgm+Cwv+6FfTakgfjcav4yH3wMYiMJY=;
        b=TvwtL7/Mc00Jc5iwKggPlyCK8PsDXW6CyP72dQ8B+ZFZyl4yyLcZjI7b0YfTM0h6fL
         nziTPZjPVPjElj7rZmGVYqeZvvJLZfTiUSb7XvMzmxFuknVZ0MEbWsUtDaRpttpHVak2
         8ztBeArX6Zcm4z24v2XjrQFiHSMaptwQRAdc5lppYycpl/stiI6FqFY5HTmlt4oLWks9
         MSyRdCjTuilLGXngtXVcgl8iwsrb1mkkXDGYuGWUSnjsVft51BYq/N7ifk6ha4OKaCw8
         KFWrRQLKcvBsDJzeIgGVHfnCRBLit3TO4VhwGOjToIb0lW5PFmwbCPWG20oxAJL2r5Yx
         OGUA==
X-Gm-Message-State: AGi0Puauj76XsesUfr4ZoVNlH+P1gbVkxkw1Cxbdj0jlHXW1oQ+7S1/d
	9DAwjkNgoA3xDT7iHvHtDH4=
X-Google-Smtp-Source: APiQypLXuK9bX7s++XP/+Xn8qtvmna3BvJc+XQKJQBV/ayJWdfD+NaMPaJkrnhPqB+eJs0ZYa1hAww==
X-Received: by 2002:aca:d6c1:: with SMTP id n184mr8280981oig.126.1588890589159;
        Thu, 07 May 2020 15:29:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:150:: with SMTP id 74ls1818272otu.8.gmail; Thu, 07 May
 2020 15:29:48 -0700 (PDT)
X-Received: by 2002:a9d:412:: with SMTP id 18mr13087677otc.233.1588890588749;
        Thu, 07 May 2020 15:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588890588; cv=none;
        d=google.com; s=arc-20160816;
        b=G0O13Jf5qpwSbR2196kWA5NZtRLUzFc9mvmjfUgKmX3ktlPUwWoe/mMX7GN0wrQnpa
         BsKvibyvBEI1mtcAVtsDpCZH356DnQipknWndVz17YRiaqyPR0xHEJMGygMW3aZaT5fK
         HCA9FozepPjNNv76THf6pktV34SKaH1ZQzigxXEkHdjngPOV+fd2IZumDFAuMleR+2mW
         IKBYfSnXipNj0GEhwaF0kvdibj72LUFv74QMZKenUEqSD5dtJPBCHJRpfUv2vjW6wIYr
         NUBzkRj9P46EWRHZkom2f0/odDhOhMlZOev980que1L4HpZKdA65f9IDZVz5jAEcitwe
         Akaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XBVohqdeB+6SWxRGmmFJuyeMSq6V5Fxg2K5EHMfRPbg=;
        b=TKVp0E/f1Dni3O5pu2Km3DkFg/qEGeNyQH2Rjdcvcj1lgbCB1VA8aQk+bUT8VUBP+Z
         dzFG2evFuVenHEbZPg5W6FmVX/enisMxkLTsFUC3SXdBEdbKuDv9AAnUCby4bn/r+occ
         53pkTwnsNE4NrtiFW63h6bM2QfNQY+CvyQB7hYaPR61sNMnTRk/AGTyv0GLa9x4a9+hl
         +H7bbR3IadxgfnfQLU+waH1lwThjrkT/fXVjNo9Seqkzpo5TU392BotLTNCd6nm0XLtU
         2sDqiwbG125oiTcgOfS1zTp1P+5uqg20GrFrS7NribSjSVAIsEibu9AfjrBDjvWzvxtG
         pVBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="SVUtOgJ/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s69si477016oih.3.2020.05.07.15.29.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 15:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id f8so2670803plt.2
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 15:29:48 -0700 (PDT)
X-Received: by 2002:a17:90a:6d03:: with SMTP id z3mr2573417pjj.32.1588890587535;
 Thu, 07 May 2020 15:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com> <20200507113422.GA3762@hirez.programming.kicks-ass.net>
 <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com> <CAKwvOd=a3MR7osKBpbq=d41ieo7G9FtOp5Kok5por1P5ZS9s4g@mail.gmail.com>
In-Reply-To: <CAKwvOd=a3MR7osKBpbq=d41ieo7G9FtOp5Kok5por1P5ZS9s4g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 May 2020 15:29:35 -0700
Message-ID: <CAKwvOd=Ogbp0oVgmF2B9cePjyWnvLLFRSp2EnaonA-ZFN3K7Dg@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b="SVUtOgJ/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Thu, May 7, 2020 at 12:19 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, May 7, 2020 at 7:00 AM Brian Gerst <brgerst@gmail.com> wrote:
> >
> > This change will make sparse happy and allow these cleanups:
> > #define CONST_MASK(nr)                 ((u8)1 << ((nr) & 7))
>
> yep, this is more elegant, IMO.  Will send a v3 later with this
> change.  Looking at the uses of CONST_MASK, I noticed
> arch_change_bit() currently has the (u8) cast from commit
> 838e8bb71dc0c ("x86: Implement change_bit with immediate operand as
> "lock xorb""), so that instance can get cleaned up with the above
> suggestion.

Oh, we need the cast to be the final operation.  The binary AND and
XOR in 2 of the 3 uses of CONST_MASK implicitly promote the operands
of the binary operand to int, so the type of the evaluated
subexpression is int.
https://wiki.sei.cmu.edu/confluence/display/c/EXP14-C.+Beware+of+integer+promotion+when+performing+bitwise+operations+on+integer+types+smaller+than+int
So I think this version (v2) is most precise fix, and would be better
than defining more macros or (worse) using metaprogramming.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DOgbp0oVgmF2B9cePjyWnvLLFRSp2EnaonA-ZFN3K7Dg%40mail.gmail.com.
