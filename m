Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOV5WKCAMGQEZEB364Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 99435370457
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 02:20:10 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id 93-20020adf83660000b029010d6b1e0949sf5782547wrd.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 17:20:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619828410; cv=pass;
        d=google.com; s=arc-20160816;
        b=vI7VCOg9efk/CIdOQnXZG7iB4Nv/3ZnvIG7VsJjyjHycOteXDiWMrtxJji9Ez9DG3K
         0phbQcAmI2dc4oGpK2DNd+jiwIJxaR/P9cBmjaQ8kn6EQSEhjHiF1UKpsNVlGZoauX4Y
         DHsXsZ5Ht2zXKfJMZxyhsshIY51DxDpSSZOQWVY4UBGV3L/Dis7QDXfD888ea4MdELCD
         BAba9IW4i6Z2aplp+BcjtfZr+FEKY9X1xs5Q0L11DEA+7x2capGPnc4t6Dp7Dah0Xh4/
         5uHTSq4uDzCqBh/dZ5mlFLEAaAKV83Jlzb6fnOHzquBwuFWULT+8WcDxU+UYVU0wdLJk
         aaUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3+Kjb4auXm9omk9Qr59TCovBP4vu6a0iCxMTuiT9W/0=;
        b=bybgrZ5Gb7oF/J5K8h/6FAd9hwac4GBqa0n4Ssiptnmn56RSYkh2fFs7v2f6toos8H
         RaTCVUQPCDbRV8AZNfdB9RoApDC+HVTi6gg56MMrjPBApNnUYfqEURqwHY0DLnT/O/Mo
         mxkHERxdWpYMI54FLv+GPo8BwQKGrGdTBoAHW1oOXzWbzx+k8QIsjy2CDh9sHvWvqF8R
         frJdmdnoGHW2bCD+XvXF3p3cG0IUpokPFPI6oN+aqys4DrHJ7iNEV0rOwzKsMebu4Rnt
         FkdxizzYrzp5XUkLRDfyiwXZuo9D9wrLyO7FsFRhAUx1k8s55gKQv54dxnG6AemLJa5O
         K6CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jr0S0e1w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3+Kjb4auXm9omk9Qr59TCovBP4vu6a0iCxMTuiT9W/0=;
        b=QtFGHKJCrqmbBX57zZ10zdtgkHL2cbulRse+h1SnEjgydU2tvkJkhWvPFXd8zr5vaj
         bpUwD/fK3Vx7L5Ws+9djPhAVQPEC2bs6fkfQqGigcq3iZk5OV/Ct0Y1P574XSIZl7J+4
         nWaA22rVixxFvl0t9Q1xpLajf9yTC3PNv5fCwOs61gkDQYz49EOXvQGE3WO9jtX5gI1S
         B/xK502hbX0hj1OUWlfGCCb+JOWI+KTJBJiMwGqICjCQZm9b4GKI6iEv7C1hJR9e6dlj
         XKx48Er0iUCoBxxpD8/OcUa1IFKZxnLVzgnexQwE7K6Xizp9Lu5J9ZZxYLZAC4knj+d1
         /pmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3+Kjb4auXm9omk9Qr59TCovBP4vu6a0iCxMTuiT9W/0=;
        b=T4XfkgVZYjrR6Q/xnHavSIPmF7S06QI1wC3QFNIX/WFbTzkjPwCOZwfJ4PNLUECFQM
         siBLNIqNr0wRd8/cmtx3ybe5Vfj1TsVR+4is2bHaNO0tAEvAubno93ObQkcb0dd0oAI9
         NhmxoGqsjOwAR+/SW1xz6gligZyJSSAI3N8bAomTVw8WbKjq9SoNXSZVkgkEJXoaiWsJ
         TSU3ZMUGj04nVCcRvvWo8RI8/0tp7wd1iT98ys/QHqVzI+bFtnJAQi4iaoTWQhSpREzP
         fyBBFW+24a11UA2tBmtzgK9PKz1BWHCRhy5UfIkXWQUvN387hNzIimF0/cSqNSuceFi2
         h0Nw==
X-Gm-Message-State: AOAM530PqE9oOSenmBrKLNf7vNl8t/4V2Ae7p/UvewgsW/OYr3yd2axd
	y/C1bPhv54S5dF377WvWSUk=
X-Google-Smtp-Source: ABdhPJxCXQ2/ew/9dR0EHVmUE/Ggv2EAnfkO4b/utNahS7iKFYBPF2TnmIUMt8MdThItSQr4hu30dg==
X-Received: by 2002:adf:cd0e:: with SMTP id w14mr10669815wrm.46.1619828410441;
        Fri, 30 Apr 2021 17:20:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls6692468wrs.0.gmail; Fri, 30 Apr
 2021 17:20:09 -0700 (PDT)
X-Received: by 2002:a5d:6207:: with SMTP id y7mr8842216wru.39.1619828409597;
        Fri, 30 Apr 2021 17:20:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619828409; cv=none;
        d=google.com; s=arc-20160816;
        b=N/6sJsPX1kZgm1Zg8Lmfzx5S2FzM3zmrUNjdq4cyEiYgIf8CXn1BgyzfIi33/JoN2j
         z7k38r4xvr/hbrtU8UWIbY4sYYjvBbRyLf4m9Vy8b5BLIkl0ALOPwa3uBrPlok/0cnZE
         WAKW0rgKBEfGGTEUeIALe0+YIkczkyHKAI8AbXwhpkG1/AScYjnhUlM6vAWofXeqotvA
         3H+koMohEO19bY0ALmAxLusXqKesFK9Pwo1nxAoTqToerOl3p8eYuCuuNQ6yNBadEmm/
         2WO2SkH6ElPL0Qsa668I7aZim4aVq0QOkep0uJb6vmNHzll4eao83AADAANRrCCZCK3x
         mcCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zabmtldstojRTyrvpu95m7nCjwuyjWVTvStP8C2VfyM=;
        b=jcvkC7yzhKJ0ZMQSuTo+8w+R4Q7+0jzLKD3rmDodUDmrQLcql3dZr55DMNqJAckli2
         Gbpv3GkKcpIgDHeictkT4/b0dXoYeG5d155kdYSOblUC8lGyn15TIpv+5+UYtWXwJEQc
         wo0gzP33O896YvYkobpd17UGUe9a1V3m0AgaLtm5wRTvbsuWp4xKchlqfljEgzrTHs+B
         FZnZ+gLYyrxl9qv5JCkVodtyoQ9uzwXjh3VBj0MsWXhZHb6Clo7+vsT6iC/7FxNxqgiO
         ALFe60kJsL8bN4tVt2m6R4Ao/F9pcnwMA5CCYOYiq0P7MO8+rNF0ssXmzgXN/SvJ3lnr
         KN/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jr0S0e1w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id l2si431909wmq.0.2021.04.30.17.20.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 17:20:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id 124so31649454lff.5
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 17:20:09 -0700 (PDT)
X-Received: by 2002:a05:6512:94d:: with SMTP id u13mr4783892lft.368.1619828409137;
 Fri, 30 Apr 2021 17:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com> <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
In-Reply-To: <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 17:19:57 -0700
Message-ID: <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Linus Torvalds <torvalds@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jr0S0e1w;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Thu, Apr 29, 2021 at 7:22 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Apr 29, 2021 at 5:19 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Thu, Apr 29, 2021 at 2:53 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> > >
> > > I haven't looked into why this is so slow with clang, but it really is
> > > painfully slow:
> > >
> > >    time make CC=clang allmodconfig
> > >    real 0m2.667s
> > >
> > > vs the gcc case:
> > >
> > >     time make CC=gcc allmodconfig
> > >     real 0m0.903s
> >
> > Can
> > you provide info about your clang build such as the version string,
> > and whether this was built locally perhaps?
>
> d'oh it was below.
>
> > > This is on my F34 machine:
> > >
> > >      clang version 12.0.0 (Fedora 12.0.0-0.3.rc1.fc34)

A quick:
$ perf record -e cycles:pp --call-graph lbr make LLVM=1 LLVM_IAS=1
-j72 allmodconfig
$ perf report --no-children --sort=dso,symbol
shows:
     2.35%  [unknown]                [k] 0xffffffffabc00fc7
+    2.29%  libc-2.31.so             [.] _int_malloc
     1.24%  libc-2.31.so             [.] _int_free
+    1.23%  ld-2.31.so               [.] do_lookup_x
+    1.14%  libc-2.31.so             [.] __strlen_avx2
+    1.06%  libc-2.31.so             [.] malloc
+    1.03%  clang-13                 [.] llvm::StringMapImpl::LookupBucketFor
     1.01%  libc-2.31.so             [.] __memmove_avx_unaligned_erms
+    0.76%  conf                     [.] yylex
+    0.68%  clang-13                 [.] llvm::Instruction::getNumSuccessors
+    0.63%  libbfd-2.35.2-system.so  [.] bfd_hash_lookup
+    0.63%  clang-13                 [.] llvm::PMDataManager::findAnalysisPass
+    0.63%  ld-2.31.so               [.] _dl_lookup_symbol_x
     0.62%  libc-2.31.so             [.] __memcmp_avx2_movbe
     0.60%  libc-2.31.so             [.] __strcmp_avx2
+    0.56%  clang-13                 [.] llvm::ValueHandleBase::AddToUseList
+    0.56%  clang-13                 [.]
llvm::operator==<llvm::DenseMap<llvm::BasicBlock const*, unsigned int,
llvm::DenseMapInfo<llvm::BasicBlock const*>, llvm::detail::Dense
     0.53%  clang-13                 [.]
llvm::SmallPtrSetImplBase::insert_imp_big

(yes, I know about kptr_restrict)(sorry if there's a better way to
share such perf data; don't you need to share perf.data and the same
binary, IIRC?)

The string map lookups look expected; the compiler flags are one very
large string map; though we've identified previously perhaps hashing
could be sped up.

llvm::Instruction::getNumSuccessors looks unexpectedly like codegen,
but this was a trace of `allmodconfig`; I wouldn't be surprised if
this is LLVM=1 setting HOSTCC=clang; might be good to try to isolate
those out.

Some other questions that came to mind thinking about this overnight:
- is Kbuild/make doing more work than is necessary when building with
clang (beyond perhaps a few more cc-option checks)? I don't think perf
is the right tool for profiling GNU make. V=1 to make hides a lot of
the work macros like cc-option are doing.
- is clang doing more work than necessary for just checking support of
command line flags? Probably. I'm not sure that has been optimized
before, but if we pursue that but the slowdown was more so the
previous point, that would potentially be a waste of time.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg%40mail.gmail.com.
