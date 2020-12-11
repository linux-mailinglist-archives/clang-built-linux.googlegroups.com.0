Return-Path: <clang-built-linux+bncBC3L3HGJUELBBP5MZ77AKGQENBXT7MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AED2D7FFA
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 21:27:44 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id s11sf7415459iod.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 12:27:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607718464; cv=pass;
        d=google.com; s=arc-20160816;
        b=tYMItaf+nD9gidZZ6SKMZ1/f6MWGjC60AFKvI5qKRjQWrU6rziluehqkAVOUnJqGDj
         MLe7l4PLZ3v/n+yNbguC2IxSTAuwhwDtLvGer1hZNQryc4HTskC8CJDMV4JboGnh/WxS
         5phataqRXuCjMjdIlfd6401FIf7S0SOqEnBvKBn6esYe2g0Sblb5MSYHMpRsXxyKlGct
         OJjNfw5pG+gTDRigdlZehLjQlhLOEE713FYrlJ4fIVc2oaNgWbbx2eRjcRjCFS/br/ZL
         ilILTuYpb/x/JfnTaXMUxLNoQzD9UuvBUNmfM3xGR10woYKPByQCxPDAR9fi2IFPVOiG
         37/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3NDPX0cHATCTTSc7wIkUcXJEYksndjEJ1GYr9Fh8Vp4=;
        b=NtC0auBuKN7gIxdC00YCnxb2Xw86BYH7JE6rwy5o8jHlEUU8ptGzupLlErC/EMh8/W
         wKEdXAQXiRiJpVbK6sjgQSk206zJZ5VzoEwG1vfURjVLv2YlOoPh19LD5taPj9fJi+MB
         sgEBn8+1HIBBKH4oyg/IuP7ijRJosW98chgZuo8GihjnqvwxuY+dUhUcmQI1t+xWU7Wu
         Bx0qlZxZbygIcTeupeep8HrjlFav3SQsSgNN/Je0CXYY/Idq2WAL78bJMzCWpxULITP6
         JPLyd8vEWptI0M5+CrfT+d64TxbTRmM+kEDpkESx908prWaPkdNIoBaBsA2GCCL0mWer
         eWJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nrurt71g;
       spf=pass (google.com: domain of adelg@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=adelg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3NDPX0cHATCTTSc7wIkUcXJEYksndjEJ1GYr9Fh8Vp4=;
        b=Y594iWDhCqN6M4YGKnymzZah1oKZT2o/Mxvc7SfhCN6x6qQlA0q+u91N5bzrGDPG3c
         70TJ8Cx/ZIKNRQ7T73mACT4C+ebbrtjryJ23TieOPMpdfgTsI/kZGiYq/pv9VGt/ikr+
         ffThE+177XCO1sLXIadxtANg56lpC9CqL+mRpksUUAxlN+tr57LbPpSMIXBlCCJ5C91N
         No639Cet7o1y5fvYf0sZ92WuJ9ofHcnbBNfeH5Kzp86tyULkXffXRcYZexdolaCL6YTG
         xxhq/srxiYHSs5QCPRi95AJHobZPO15XIBAPFJXJ0KJM4vXthkNdAMlcGx+VDZ/5Fjsz
         6ebQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3NDPX0cHATCTTSc7wIkUcXJEYksndjEJ1GYr9Fh8Vp4=;
        b=bn4nZj3573yvOnd8cX3jXSdFRCGasuP1u4nNSgNSxoWx5DWSrDQEZlipdZJogboMNR
         adnpRzSCMMqU5jmlwHFo46vPNo1hjEvgwhUuasubP7shKhPErJLM0biGmLVn+m63XbVo
         5jo/EMmLq4KkyzGa0YiodbEBK/TshdZYL96824zKkMpMsfzKDDP+yhjwKmd7SktvVnDn
         IG/FdoFfrmCrp4wowjxh4o7zKjl/XQI2qs8FZcP9pvjceip2eb+D/mj9gc48w6fAE/f5
         oig/Yay/h92FwaRBmCk4EpNMpPwg/0u30YcudSBvSpKqDFRnuQdDrFML+oBBPrAI0wQQ
         Cq5Q==
X-Gm-Message-State: AOAM532fYBTxxan1BjhO2O739UGCuXnXCcKfsqIc/Leg8O2VlYJStrBE
	FBUh1RXF5m3dZbJRoIEcEl0=
X-Google-Smtp-Source: ABdhPJxuU9l210ufj1ME/3z5HpJ7hdbDsV9AJj5QJ5EeJ6jr5sIWoNo25nIet/DpOA//VaXMQ8Yj8g==
X-Received: by 2002:a5d:8405:: with SMTP id i5mr17364765ion.164.1607718463970;
        Fri, 11 Dec 2020 12:27:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:845d:: with SMTP id l90ls2520458ild.5.gmail; Fri, 11 Dec
 2020 12:27:43 -0800 (PST)
X-Received: by 2002:a92:c0d0:: with SMTP id t16mr17957813ilf.21.1607718463488;
        Fri, 11 Dec 2020 12:27:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607718463; cv=none;
        d=google.com; s=arc-20160816;
        b=TiOC9qAzoWZDG/+02hQ7etgqJG3QXlIw2DgaRy0v15+P/ZrRHGhOlsYPKL/00Sdt8v
         joTu67OWyXFJWy8Q5RfOng8B8B8V6vU3FFJQI+g2U+TYo3nDcvW6xQ4VrZNMrcrbzxfv
         fg4DfBeNdCScEskYm1XUZmBepeECNMzBoG4ph4hpyiIsAADnNUR7qpcfGpYKJ0TObFPQ
         tTeQWDHhOH9pjbdxZmz3DSlptNdOXLAJvsIQxot8zfo71VCzv4BMchJSEDecZRR56yN7
         4JgafYACvjIWwk4gokucF+NcANlde7lljvSOQb6pa7AiC4CcfASg050EoHeThES8wcl5
         NFIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qxQRcgZ57qjzJh7BvMLhV37MMlxNs43EUrF1vU/yGZU=;
        b=HbKfwBHbDpl0DclExQ8j6udBfenuP+lpo1Xcv2eM36DjTqgS0Iuv2Q15gp7GzfjD37
         QjBOrZVVH66usRlo9i0kf8LIRRO/MXv8NZddIefzvA72V9n6YiJri8iNfWbvIS42WYAt
         QLWoN/gWdZxx2BZURY+i0wJBHhS4F9fUVQ+kP+ww3YX+jmAcdq2Ef+f9cN4eESgjsfWw
         WlrxxxBWYwhLfyyUGv1t4W7TW01VhmPrNAs3rZVEjq3BsSd129FhfJ//v5T2YBJpTn2A
         lMr2N0WR1y0zl72OmPdwhL8KzszPBs5wlxe9njc1jfQ52HTHBdruvxNTrMq1D9yDD0O6
         YLyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nrurt71g;
       spf=pass (google.com: domain of adelg@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=adelg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id p8si739445iln.0.2020.12.11.12.27.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 12:27:43 -0800 (PST)
Received-SPF: pass (google.com: domain of adelg@google.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id 7so7459250qtp.1
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 12:27:43 -0800 (PST)
X-Received: by 2002:ac8:5802:: with SMTP id g2mr17284210qtg.383.1607718462773;
 Fri, 11 Dec 2020 12:27:42 -0800 (PST)
MIME-Version: 1.0
References: <20201203221005.2813159-1-adelg@google.com> <CAKwvOdk6=TgL+f2-WvE7tsK0rN1XQ+NdXmeJfDkLsa8xPmgipA@mail.gmail.com>
 <CAEHm+vHtMQtMThgE_BwpiBS5v0a61L_TW9vgKLaFTtcgg9HSgA@mail.gmail.com> <e78c3b86-78ab-2b2e-d8be-e9118d7d2392@linuxfoundation.org>
In-Reply-To: <e78c3b86-78ab-2b2e-d8be-e9118d7d2392@linuxfoundation.org>
From: "'Andrew Delgadillo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 11 Dec 2020 12:27:31 -0800
Message-ID: <CAEHm+vHXeuo6cPKOyCgCqLA1a8O8g9wgKVMi+4ifLN__BPVQbA@mail.gmail.com>
Subject: Re: [PATCH] selftests: propagate CC to selftest submakes
To: Shuah Khan <skhan@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Shuah Khan <shuah@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: adelg@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nrurt71g;       spf=pass
 (google.com: domain of adelg@google.com designates 2607:f8b0:4864:20::844 as
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

On Thu, Dec 10, 2020 at 4:31 PM Shuah Khan <skhan@linuxfoundation.org> wrote:
>
> On 12/10/20 5:10 PM, Andrew Delgadillo wrote:
> > On Thu, Dec 10, 2020 at 3:08 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> >>
> >> On Thu, Dec 3, 2020 at 2:10 PM Andrew Delgadillo <adelg@google.com> wrote:
> >>>
> >>> lib.mk defaults to gcc when CC is not set. When building selftests
> >>> as part of a kernel compilation, MAKEFLAGS is cleared to allow implicit
> >>> build rules to be used. This has the side-effect of clearing the CC
> >>> variable, which will cause selftests to be built with gcc regardless of
> >>> if we are using gcc or clang. To remedy this, propagate the CC variable
> >>> when clearing makeflags to ensure the correct compiler is used.
> >>>
> >>> Signed-off-by: Andrew Delgadillo <adelg@google.com>
> >>
> >> Hi Andrew, thanks for the patch. Can you walk me through how to build
> >> the selftests?
> >>
> >> Documentation/dev-tools/kselftest.rst says:
> >> $ make -C tools/testing/selftests
> >>
> >> And if I do:
> >> $ make CC=clang defconfig
> >> $ make CC=clang -C tools/testing/selftests -j
> >>
> >> I observe a spew of errors.  If I apply your patch and rerun the
> >> above, I see what looks like the same spew of errors.  Am I "holding
> >> it wrong" or could the docs use a refresh?
> >>
> >
> > Hi Nick, sure thing!
> >
> > I also see a slew of errors when building with make -C
> > tools/testing/selftests. However, that is not the problem I am trying
> > to solve. I believe we are seeing errors building that way because it
> > is missing some make variables that are normally set up when building
> > from the kernel's top level makefile.
> >
>
> Both options are supported and should work.
>
> make -C tools/testing/selftests
> make kselftest
>
> That being said, I use gcc. Can you send the errors you are seeing?
> It is possible, a few tests aren't building and need to be fixed
> for clang and gcc.
Most of the errors I saw, I was able to fix by installing the correct
packages to get some missing headers, so in those cases nothing is
broken about the tests. However, after that the errors still remaining
look like so (I've done my best to deduplicate similar errors):

clone3_cap_checkpoint_restore.c: In function 'clone3_cap_checkpoint_restore':
clone3_cap_checkpoint_restore.c:148:9: error: expected expression
before 'return'
   XFAIL(return, "Skipping all tests as non-root\n");
         ^
make[3]: *** [../lib.mk:139:
/usr/local/google/home/adelg/projects/upstream/tools/testing/selftests/clone3/clone3_cap_checkpoint_restore]
Error 1

memfd_test.c: In function 'test_seal_future_write':
memfd_test.c:783:27: error: 'F_SEAL_FUTURE_WRITE' undeclared (first
use in this function)
  mfd_assert_add_seals(fd, F_SEAL_FUTURE_WRITE);
                           ^
memfd_test.c:783:27: note: each undeclared identifier is reported only
once for each function it appears in

/usr/local/***/lib/../lib64/librt.so: undefined reference to
`pthread_attr_setstacksize@GLIBC_2.2.5'
collect2: error: ld returned 1 exit status

There are also bpf selftest errors, but I know for a fact those are
just an artifact of me not having llvm-readelf and other binaries in
my PATH as I've compiled those successfully before.
>
> thanks,
> -- Shuah
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEHm%2BvHXeuo6cPKOyCgCqLA1a8O8g9wgKVMi%2B4ifLN__BPVQbA%40mail.gmail.com.
