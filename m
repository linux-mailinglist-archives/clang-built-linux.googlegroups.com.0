Return-Path: <clang-built-linux+bncBDYJPJO25UGBBONK232QKGQEYFNT4ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B19091CB5BD
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 19:22:02 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id k5sf2281744ilg.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 10:22:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588958521; cv=pass;
        d=google.com; s=arc-20160816;
        b=yJVA5V9oaWNvQE10IqulQ6kiLkECDZXWNdoe8adcQcKkxPNTE9ChpoKeenHocqGxTy
         UMJDTHb4IFLWEqYQXqeZIuNL9I/j3FzMvyFICiw6Miykwnk7zZZyyv6pMvH7w2UPIWpE
         9wUbuzohQMNkr2CoA4uNmqJWWTVL/hjSEQBs7i6Qs7hicVkNn3lALfVydLsmL9wts343
         HIDNVyXiU/20D7UW6m7AcILbRRXfOejwfnaVndwOEPRgEoGEA0LVXIm2qsqsIo5UjocP
         wSRxN7jteLNdDAAHcQSgRVXAsYzArcoEltttN/8Zm2e4PydC4YrpQztK3Sgegie00ZyD
         0ujQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/nnZDNfdyppmfaT95d5itjd+pBI3Bz5KOSLAB/bhd+o=;
        b=N/usIFZvbWwHKoJnkPOiuyvr4pXjQL0zw3kGhEGLxpjfYpwvzqDTQBUBSUNvNcymgs
         6TVZjMrbSI+xsIMHGmTZLqeT2Jo89vYRjcDVyKFKQFrB6Ef9wjoB0Jp1iViBCPOPuc98
         shF8A1vRAND6hgA4JablLUJxK90U5E82dYY1I5+G8usjexshI/T9AURDLQYSo51xQ6z2
         XK4R+a/OXwOl/f3CkXyWxLUVs471Gq1iKs3SYBHUswmIUjQkShmb86oE7YDZrJlJMNyT
         juc0w8QmNsiDYyAf2fWGAULm23y9B8Tb4Te4PMFS2/ekcwhcz/85E9w+MMwrAcQxKz9o
         U6yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uz6CQxh4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/nnZDNfdyppmfaT95d5itjd+pBI3Bz5KOSLAB/bhd+o=;
        b=TqpgT1e9uPg/2Ta25FVC/HpL0Q/w5z3q/TZOA3cp7MZqDotP3WilVi2J4D1JcNXsH4
         JU9+xK2E9kBwvcP55EiwZnJmfzXWEvK6Vr0hKZOF+xKfZdMGS6cGKEjyroO4K2LMmfQo
         bkRg/ps6DaW6sQ2QGPrQoLQVGjKBE2132u3y9MYgtXMTXN795zuq5dLLJ8/2Nf9aubD7
         gfDkvA+F4yprX1o7rjQlCc17KNesxJ3FRo3kNHD1ePZusxRYMVrWJ1xUbDQTgP3BsC2E
         jgiYKyalUDetNdOAGSAtAJnUVrm0w41YS9pHXkDr7/udLhD5p4djWLd7S4xZbp0cgwO9
         CRaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/nnZDNfdyppmfaT95d5itjd+pBI3Bz5KOSLAB/bhd+o=;
        b=szklEy+gi/QISD43RWYp5VLQIsBjRnl1TOUNcKS8akDuaMOyqtxRBEnZmZtBAlaT1L
         5xUNXhpRVUYmKyb7oP4RIbi/hakIkECq07BwPR/uNANJQuVvRB2+CibJIcCIg3rm/KVI
         CXDbhMq2+wyPasOo4sCo6fwHoPDQoMeSvOMP28ta/jAXHIADK7SUE8Y10Wz9nYDNMta1
         B8rY92SGVgIYzixC/NJKyNkdrduu5qGarAdpQvYiqJkYgRfamcjxtBLtw9BvDYUnTs/B
         6YP8v2VLmQ+HKuOBAX/UQW1G8enjATrtr58GClJdh+kaPBbY9iNjgD5fpwVzyP7n2VD6
         RFvw==
X-Gm-Message-State: AGi0PuZkIJQqsXvq66cMT7yKHgd36tvdZQIhqCcnXB99jXwd7kVm42Ah
	3jud8yeWbROI1KPMRgPmqZM=
X-Google-Smtp-Source: APiQypKG/g/n3AY2Ztz/b8sKBLGfEC0hvYTrmY9ycpssqeG+JICBMMSkMWEdeeNN/qRtM80f4ZHgqg==
X-Received: by 2002:a92:b710:: with SMTP id k16mr3886166ili.270.1588958521431;
        Fri, 08 May 2020 10:22:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:cd84:: with SMTP id d126ls554444iog.7.gmail; Fri, 08 May
 2020 10:22:01 -0700 (PDT)
X-Received: by 2002:a5d:8cce:: with SMTP id k14mr3748808iot.3.1588958520979;
        Fri, 08 May 2020 10:22:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588958520; cv=none;
        d=google.com; s=arc-20160816;
        b=yCVe9t7SMKwQRNQAazpOc96BI3LeMuXtLAq09x41/0HYzvnE7IPIKyVi7elsI0LP8b
         fe4SIn6jOxEhonvcLTBlGJWAuLVKXW8wPqElnDXdOsqHlUUUgcu9mtFNx7mAYDgQCmtd
         Z3Q9seS73dZVScL4znNvGn6D8GohrpDj+AYouh8HVLBh2J4SAx+GNg6NLMYLFUSv9YMl
         LjTXJlJRk1Xq0TC3AJMl5otUeCwEfWTG1KvnHtd1WvG51PwdHhQhSCvL7ImnoojHCK3W
         faqdeoeBCpeGfb+o4cPDon06MDblDwFILT0eXuk8G1e++1los+2ZQ4hTJpfAGc86JifG
         x4uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FDmOxQMCuaw5F6/Weoldmrv8lAutINkccOcvV//08Lo=;
        b=0jpLA3SdP8KF3g5SGUL8Smjq2bgQZMlmpyXTw/35chjV+sTidZUq/Km6bb8UIicbOZ
         zmOKEHSb2pPFmIA8d2Ykew5HKD4WF7zaWbQy6SZ+O72cG0Pij9GDfB7hVftEGjK4frOx
         Husf6CvJcuqaw+608hTxrhkEeFdutB63OjiuSubT57errLige5MYLmBLZiyOQUsyGJD0
         GuLbT04VRjQYUa4OPqBkR5Dqy+aIONLzIDRXADzPN+YINiKNPGNSw9fRKu4FbVUfcXkj
         CKAiFTTdzZBeX149p0Olm0imf6tQFO9x6ewDZYhEh2CskHWsX8tAotITGNtgxPsdaUfH
         2maQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uz6CQxh4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id p18si165776ile.5.2020.05.08.10.22.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 10:22:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t16so1027444plo.7
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 10:22:00 -0700 (PDT)
X-Received: by 2002:a17:90b:2302:: with SMTP id mt2mr3301097pjb.25.1588958519887;
 Fri, 08 May 2020 10:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com> <20200507113422.GA3762@hirez.programming.kicks-ass.net>
 <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com>
 <CAKwvOd=a3MR7osKBpbq=d41ieo7G9FtOp5Kok5por1P5ZS9s4g@mail.gmail.com>
 <CAKwvOd=Ogbp0oVgmF2B9cePjyWnvLLFRSp2EnaonA-ZFN3K7Dg@mail.gmail.com> <CAMzpN2gu4stkRKTsMTVxyzckO3SMhfA+dmCnSu6-aMg5QAA_JQ@mail.gmail.com>
In-Reply-To: <CAMzpN2gu4stkRKTsMTVxyzckO3SMhfA+dmCnSu6-aMg5QAA_JQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 May 2020 10:21:48 -0700
Message-ID: <CAKwvOd=hVKrFU+imSGeX+MEKMpW97gE7bzn1C637qdns9KSnUA@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=uz6CQxh4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Thu, May 7, 2020 at 6:57 PM Brian Gerst <brgerst@gmail.com> wrote:
>
> On Thu, May 7, 2020 at 6:29 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Thu, May 7, 2020 at 12:19 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Thu, May 7, 2020 at 7:00 AM Brian Gerst <brgerst@gmail.com> wrote:
> > > >
> > > > This change will make sparse happy and allow these cleanups:
> > > > #define CONST_MASK(nr)                 ((u8)1 << ((nr) & 7))
> > >
> > > yep, this is more elegant, IMO.  Will send a v3 later with this
> > > change.  Looking at the uses of CONST_MASK, I noticed
> > > arch_change_bit() currently has the (u8) cast from commit
> > > 838e8bb71dc0c ("x86: Implement change_bit with immediate operand as
> > > "lock xorb""), so that instance can get cleaned up with the above
> > > suggestion.
> >
> > Oh, we need the cast to be the final operation.  The binary AND and
> > XOR in 2 of the 3 uses of CONST_MASK implicitly promote the operands
> > of the binary operand to int, so the type of the evaluated
> > subexpression is int.
> > https://wiki.sei.cmu.edu/confluence/display/c/EXP14-C.+Beware+of+integer+promotion+when+performing+bitwise+operations+on+integer+types+smaller+than+int
> > So I think this version (v2) is most precise fix, and would be better
> > than defining more macros or (worse) using metaprogramming.
>
> One last suggestion.  Add the "b" modifier to the mask operand: "orb
> %b1, %0".  That forces the compiler to use the 8-bit register name
> instead of trying to deduce the width from the input.

Ah right: https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers

Looks like that works for both compilers.  In that case, we can likely
drop the `& 0xff`, too.  Let me play with that, then I'll hopefully
send a v3 today.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DhVKrFU%2BimSGeX%2BMEKMpW97gE7bzn1C637qdns9KSnUA%40mail.gmail.com.
