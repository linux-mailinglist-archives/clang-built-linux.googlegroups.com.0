Return-Path: <clang-built-linux+bncBC3L3HGJUELBB2PRZL7AKGQEPNXDOSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 849492D6C0A
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 01:10:18 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id y2sf5103379pfr.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 16:10:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607645417; cv=pass;
        d=google.com; s=arc-20160816;
        b=OzbCRJe1LDt0imGGF7Sbsn1HpD86rWgxEcCmt9x4GGzIrRnJpBFqJ7lNUkaTA6Xyod
         AtPd7YbNOxRW8EFOcUW80ZHiN9o0lMPszSsaEQo1jGlYHFkbK2DVEFzoB+Z2i9Zhbcbu
         jpHJTWtcO9OUvRFgjdIriTLu3ZKLyNJTg1x1y0Up1USESuLHilgkeRiPO1x4sIDrWo9i
         QuF9q2ZaPs8uyzZUz1PaKXTd5JSaAZ1JHDW5cbtQf8C9llUT6IAum7e+uvq+SqzBwe3I
         pDzUBwpxRr7WlvldnlApSsjPIhx3+xBANLim0s1HyPLB83GTog9rKAjARL4cAcUoaq5s
         VJtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8LCIP0uEoxX8dgTfgG/2Rm17kYAGAnvXGUqP9vxJtwc=;
        b=Khd8DOzwC/dabATC9d7v7Nb6lWxHeCQXZ6iDUM/lpO6unFK2r5mOBsN1UKOHPD8+jA
         rSU0rrjDp44QV8xhI2pLKiAmtfyzw/hMwdfLrcghYI8NNYad7JkzzObdjNL+0ndAK3CP
         iWlPZlCTeABjfn+Q3ZHwi6eLks4yqN/NBBcRHTRNrxn4kb+/6vzCwvy1ewu7F5efSVi3
         sqXDQQ7sGol74XpSnS0oBsHbi5ca0nz9wLq64LRWoBUzMJEPo8wcu1qnDEBwlV+LOvNW
         Aiu3D3ncFRyAxEe5Cnqf8e4W0cuRZ+s805bLWjNgFkkpoL7AvnXaymRbPzcA+POGrRkS
         jgLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GzScmKyY;
       spf=pass (google.com: domain of adelg@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=adelg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8LCIP0uEoxX8dgTfgG/2Rm17kYAGAnvXGUqP9vxJtwc=;
        b=olkouhxZHNt1qy1/8993qbJs26oMBaKhoWBjS2OX/04QM7Q9KrryBusrdq0rkl0J8G
         ysd2hTRi1yn0UclT13gz+P79BOhY9oD++Q11FLKGsNREnvfEUDWIVT7ELIa1m9JoRB+s
         P7bUUywWzgXxc+eKy9+QQ1Lr+WdQwskTjpF3bR0qOYOPIasLeaQt+5DmlG5M0xPuzRdL
         B277Z4gtax+D7JMHn4C3DdnjOYZzL84K8jvywPW4SGAUn5jb/k45pYSwyDoik5YhoNmd
         D2sUA/UOSGpejrbIegqD2F0EBSPm5NVZinZMeFs8GTRToC5EZUNtWRFhLE2NHvvwjnTo
         33kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8LCIP0uEoxX8dgTfgG/2Rm17kYAGAnvXGUqP9vxJtwc=;
        b=S+UwjNlL0EAxyLaLP9BBssSJmggl/UR18WGJWhL4V6OomWKsmjxXu13ryaOvQ/SLY8
         Xf4TFK1hTA5hSl1TixkiwdmKfMOsuoYHLJRhlZaK2qeRmzBLGsqovUVSBS+lPFEtLIh5
         USiewz/Y7eAmU7YqIvjRbLbk6p5Pb5LR+fQNrZv7c9pHEmKz6A5Z0L1I6vx7XP2ac4OC
         Nnw7rBeXucQp68Z3+Vj++/R6Np1IK91sB5y5tgtt4oFOVVH69kNdK6KDKrAxZMzESQXD
         3hkf8rOhHIETGt5gHg1W0ARKYXXtgcu6CFIUu78jm2zQdOUtckva3Kn329jch3Hdeb7v
         wMMQ==
X-Gm-Message-State: AOAM530iJVPvPrqBn4JgiAtNpO+o1sSjtzR0nHk4INHKGXFtelBMZsm8
	Qkws35haVukPqqYIwwZD7FI=
X-Google-Smtp-Source: ABdhPJzdJU05yTrn7DkZrPw2PxLutUMDQ/EmQn93TRa9DWSB1HiwXzry7UDyZAlmQt+NLInAitCYhQ==
X-Received: by 2002:a62:ce8a:0:b029:19e:3bfe:eac0 with SMTP id y132-20020a62ce8a0000b029019e3bfeeac0mr9009276pfg.69.1607645417255;
        Thu, 10 Dec 2020 16:10:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9286:: with SMTP id j6ls2588156pfa.7.gmail; Thu, 10 Dec
 2020 16:10:16 -0800 (PST)
X-Received: by 2002:a63:6e45:: with SMTP id j66mr9107670pgc.238.1607645416569;
        Thu, 10 Dec 2020 16:10:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607645416; cv=none;
        d=google.com; s=arc-20160816;
        b=Gxjk26hkW8l6GML62zf4KPsS0bfMVlnQ2WXtN/VrA7LN2Z3VKbJ9bKIqtcD33nIBwl
         VX/THQ4L0oVVaskP/ECjGn9YQS+vcjHlennxPDjxvX2zb52huOv/JpY7vwR2hI1QxNpy
         KIuMUBEOjNyxCfalWbeb3wv3exaLmIAINx/6oG0kV+9VJdh67QQLmj2y+sJNXKnDflKR
         mvwOkGQEnfn4cSCn9pgOi0o2wHo1w7R2Swi5tAC0qeDjWFq1N1Pyq0n+vGAr02KfFlCL
         AbvFMLyfDPQdPfuTqtkiyIJlAvjyxdAIKnNXxHfv2NfVSZF7l85NmgIoIk9NjtnKJgHz
         NVzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eyaO3qiwDzgknL6h/ChrfPpZ+ZJEw+xlx9cER6qscjU=;
        b=dt6siTIRYR6ZE8Rzp39OuVdLgdlFVn9oTHE9TQiQqtIc49oV4QKL+YrMLdNTIFOXlS
         sbi2BMYlmkaLh8kLlD1ZYsUSmblm+uOlH+eiMLeucr+Sk01kPtwVk08PYvlayo18463B
         o013lObIVMpnFXcn1kLdeZY4GJvEN8xNzErEu9JP68fIZyghySwD2LV8DzSFNMRrzFC4
         g7wLmrTxpYOMfdSVi4OWgoIVVMXagl+R8J9d/uChaWwp1RfHNaHOnQaN7WJTKY0l/FVF
         rOJdhqb99e8zpvCKr4ahReD38Z5axBg3ldEh6GpOI2Js0UmvfwtLDtCwOPyycwPgnqM3
         htRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GzScmKyY;
       spf=pass (google.com: domain of adelg@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=adelg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id kr15si548680pjb.2.2020.12.10.16.10.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 16:10:16 -0800 (PST)
Received-SPF: pass (google.com: domain of adelg@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id u21so5236428qtw.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 16:10:16 -0800 (PST)
X-Received: by 2002:aed:23c8:: with SMTP id k8mr12527987qtc.362.1607645415476;
 Thu, 10 Dec 2020 16:10:15 -0800 (PST)
MIME-Version: 1.0
References: <20201203221005.2813159-1-adelg@google.com> <CAKwvOdk6=TgL+f2-WvE7tsK0rN1XQ+NdXmeJfDkLsa8xPmgipA@mail.gmail.com>
In-Reply-To: <CAKwvOdk6=TgL+f2-WvE7tsK0rN1XQ+NdXmeJfDkLsa8xPmgipA@mail.gmail.com>
From: "'Andrew Delgadillo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 16:10:04 -0800
Message-ID: <CAEHm+vHtMQtMThgE_BwpiBS5v0a61L_TW9vgKLaFTtcgg9HSgA@mail.gmail.com>
Subject: Re: [PATCH] selftests: propagate CC to selftest submakes
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Shuah Khan <shuah@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: adelg@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GzScmKyY;       spf=pass
 (google.com: domain of adelg@google.com designates 2607:f8b0:4864:20::843 as
 permitted sender) smtp.mailfrom=adelg@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrew Delgadillo <adelg@google.com>
Reply-To: Andrew Delgadillo <adelg@google.com>
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

On Thu, Dec 10, 2020 at 3:08 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Dec 3, 2020 at 2:10 PM Andrew Delgadillo <adelg@google.com> wrote:
> >
> > lib.mk defaults to gcc when CC is not set. When building selftests
> > as part of a kernel compilation, MAKEFLAGS is cleared to allow implicit
> > build rules to be used. This has the side-effect of clearing the CC
> > variable, which will cause selftests to be built with gcc regardless of
> > if we are using gcc or clang. To remedy this, propagate the CC variable
> > when clearing makeflags to ensure the correct compiler is used.
> >
> > Signed-off-by: Andrew Delgadillo <adelg@google.com>
>
> Hi Andrew, thanks for the patch. Can you walk me through how to build
> the selftests?
>
> Documentation/dev-tools/kselftest.rst says:
> $ make -C tools/testing/selftests
>
> And if I do:
> $ make CC=clang defconfig
> $ make CC=clang -C tools/testing/selftests -j
>
> I observe a spew of errors.  If I apply your patch and rerun the
> above, I see what looks like the same spew of errors.  Am I "holding
> it wrong" or could the docs use a refresh?
>

Hi Nick, sure thing!

I also see a slew of errors when building with make -C
tools/testing/selftests. However, that is not the problem I am trying
to solve. I believe we are seeing errors building that way because it
is missing some make variables that are normally set up when building
from the kernel's top level makefile.

From https://www.kernel.org/doc/html/latest/dev-tools/kselftest.html:
    To build and run tests with a single command, use:
        $ make kselftest

To illustrate what I am to fix, one can follow these steps:

Without patch:
$ cd kernel_root
$ make mrproper # Start fresh
$ make defconfig
$ make kselftest V=1 |& tee out1

At this point inspecting out1 will show that gcc is being used as the compiler.
Let's try to set it to clang.

$ make mrproper
$ make defconfig
$ make kselftest V=1 CC=clang |& tee out2

Inspecting out2 shows that clang is not used, but rather gcc. You will
get a similar result if you substitute CC=clang for LLVM=1.
We can verify that the CC variable is not properly propagated to the
submakes with the following addition to
tools/testing/selftests/android/Makefile's all recipe (this is the
first submake run):
...
all:
        echo "My CC compiler is $(CC)" && false
...

Following the above steps again will echo "My CC compiler is gcc" both
times, despite setting CC=clang in the second run. After applying my
patch, the CC variable will be properly propagated. The reason it was
not propagated properly in the first place is that we clear MAKEFLAGS
if implicit build rules are disabled (top level Makefile disables
them, but selftests need), which has the side effect of unsetting the
CC variable. Selftest's lib.mk defaults to gcc when CC is not set,
which is why we see CC=gcc even when we set CC=clang on the
commandline.

While this is not a problem if building with make -C
tools/testing/selftests/Makefile, it does present a problem for those
who build with the top level makefile like "make kselftest" or "make
vmlinux kselftest". One reason for doing it the second way is that
using the top level Makefile allows one to use flags like "LLVM=1".

> > ---
> >  tools/testing/selftests/Makefile | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
> > index d9c283503159..a4dd6d7e8276 100644
> > --- a/tools/testing/selftests/Makefile
> > +++ b/tools/testing/selftests/Makefile
> > @@ -90,10 +90,12 @@ FORCE_TARGETS ?=
> >
> >  # Clear LDFLAGS and MAKEFLAGS when implicit rules are missing.  This provides
> >  # implicit rules to sub-test Makefiles which avoids build failures in test
> > -# Makefile that don't have explicit build rules.
> > +# Makefile that don't have explicit build rules. Since lib.mk defaults to
> > +# using gcc for compilation when the CC variable is not set, we propagate the
> > +# CC variable so if clang is being used, selftests will build with clang.
> >  ifeq (,$(LINK.c))
> >  override LDFLAGS =
> > -override MAKEFLAGS =
> > +override MAKEFLAGS = CC=$(CC)
> >  endif
> >
> >  # Append kselftest to KBUILD_OUTPUT and O to avoid cluttering
> > --
> > 2.29.2.576.ga3fc446d84-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEHm%2BvHtMQtMThgE_BwpiBS5v0a61L_TW9vgKLaFTtcgg9HSgA%40mail.gmail.com.
