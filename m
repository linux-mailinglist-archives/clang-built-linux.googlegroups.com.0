Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3H2U2CAMGQERWAB74I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7AA36DFF3
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:54:20 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id 89-20020adf83e20000b029010c35eb9917sf4933814wre.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:54:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619639660; cv=pass;
        d=google.com; s=arc-20160816;
        b=dkdRspGgXjpJ2/pqkhEwiM+jk1MCSzs0qzDoMUpHfGbeqyIahuziNzFtJJ65iXV3Lp
         DrJLFkz4EFUNGW+bA/1tvps3XMEmRnWb1RAWZ3HU0FrEPPRtLVXibUR2PgKixbsiBWLa
         JfNiZNyROQ/TBCBGX6ylNg6hhGUpOrSA9foEJw9Pr1PhcUb1HuUpf7QDXKUwdTUnKpfi
         fPsJcJMiSr2NzNVBAS/SIei9G3ocEdUK1e0wUBXJcfFWfemnDvFeVzr0b3R6x+0WGVvg
         pQE3YH+kriAyuslypXfidWTrdq4mtEjh0RakXyogzOA39wvlYxbaQ02w1lw275cxMf77
         7yZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=i/cNmYa1mEHhVzETx8/ZJs9R4gKu+7PgQVkeTOjQaRY=;
        b=uSZDNqCVl5xbVoLrl5JRK5KdhKIVE5P9ibuYR2se4nba1dpELENlhxXkTOkr1OasUO
         37RPfUwVforODXbyX+HR1e3O4QDRsbqxYVgQcSNaFVH2ZQZu5IX2TmLF23WDMXakn6lH
         JnYf620KEQB2PdFd04csIwAYGIxP8oby+/bYy7C4SlFRJ+hh3UGfuVhtXdQ3aO4GKlSq
         xFotVQpTY80F9tOvNVeiNksEctSjgiBOVzPtim3245/htLEC8EFAj27uGf6cS0Gayoei
         WHVnwhJyCT/IjsrO6HOzaSXKoNSV84jhFswtZuHMElPXBJzbooFMeyc2buWklyHbtWUd
         n0WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UvuWACEW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i/cNmYa1mEHhVzETx8/ZJs9R4gKu+7PgQVkeTOjQaRY=;
        b=EMqMtkPuEYGwHGJ/d2UaCdEGPl/TqfwXPihLtOpUcyzQlTP76DNADnrIDPGOjzL3Qr
         vsJqyDHgJI74dcg+PqjUz38BSCC+dDqtXlYPQ4h0Ej2PDq9WCNhbTA1HUPDgExRhpp/j
         WyEk5kUGWxeGB+/UJR3WsnUdI+jUUneqc5GAcBf81AleLIaskJoshxVVFYN4mxe11Zef
         jr4xxVBv5JqE6/Tblj0P7V0w4ODOsJPeyi86VP2DxFG7bD5+gayhdsAM4nmV7PZ25dSE
         g/VOrl71tZdTi2KuM2Qld8brrqdNw+LhVgqvOh5lk1EZsa8K8kq7HTo3888HhpQi5Z2o
         TQTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i/cNmYa1mEHhVzETx8/ZJs9R4gKu+7PgQVkeTOjQaRY=;
        b=O3UxjAxTuNMORItvLRmKKQ07MGBZfvgmPPPDmmF2YWJ60O00R1PMEUHQ0C1yijBw1L
         GrDhLUZX2KdlMlPttHTt/L4IHCYk9E9BHUXLLl4xVLbatxEbSiW8JGAx9Ntfg6LwVK6b
         vuJoyCHZJNpDxNGtXsU/vtRTiK7nVeDC4k/0YLYJE7OBAB8H2cW1jzS24zXH4zOJupWu
         a9iUxiQKskGZV3Tns3XTKUT41zzuf9pQ1O5HIjye75JZndQWYQPj5YZlhEmeuEc1Wine
         Y5nigTtbGA7S6Wmzi/g1/6lDNvq1Hi5fqU0rz3DRQuRdQixN5TAdbxIBKAxhYnSxHWjj
         9Yhw==
X-Gm-Message-State: AOAM532OlFdxn92pbgPw7m6vs81UcFsqw/QxGvtLWQbaEtAXszWqU27U
	dblPX6E4mY56EHFOFosirYw=
X-Google-Smtp-Source: ABdhPJxSw+ntY2zfTndiTIHyBqp4LQ6Pk5kz2e3jxkcXJjkwB71vuQ8CP17R6gGlaMelnFJP5Ruj8Q==
X-Received: by 2002:a1c:2985:: with SMTP id p127mr33289551wmp.165.1619639660450;
        Wed, 28 Apr 2021 12:54:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:410e:: with SMTP id j14ls401848wmi.1.gmail; Wed, 28
 Apr 2021 12:54:19 -0700 (PDT)
X-Received: by 2002:a7b:cb4a:: with SMTP id v10mr32949459wmj.53.1619639659601;
        Wed, 28 Apr 2021 12:54:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619639659; cv=none;
        d=google.com; s=arc-20160816;
        b=uI+hQ6fIh++YKNPt+aySEehBrQKSDiQ2VU16jIpBCcdPKv4zkoXysHqgr4MWQxtAZ0
         GCujOjrGXtz7Jqo0JRh1JDMgtO6RfWO2xSspBcs7GhaTel1/rnSMj8ewCuYYZxAQvU+1
         XZGJh+X2/eoQiwqZRmNEQII434MAdhxJosgSLT4DVNiHVMtT3QczC1ympM1K1eA0LvZ1
         7AeXmsx4l7piD/R25d/XRx6d6OUX5buuoarE04gxmhQpy9wkSw9dOFGa7YY4z2k+lVc/
         XZBXDVGgqhflo+7TTzih4T8wdru/c1AQlGWwl7u/aHPsdbWfpmeVodOc8ZaSkgKjSiDV
         pRRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ek0Ar159Ey9GsV+U/PugPTTn4n9h8V3xDVjAjHl1pFw=;
        b=vrOuS01CbBP/9TA0PAWGOpbTvjUNPxp4fDy0WdgVnaK5SHoWtUTycaykXLLzIHjAQX
         /WSU83lXrXSHT68uSWWwnTRoyUcDM2yWNAOpN02fAdrT9r6RkUMcGKInwLAiN6cDkyY3
         tQpMf3ACS47K0T4QD+KcT8dndR6/HT2XdyWtnUo6ldKz4tx4Bgk9r/v0oga3PztNP1tm
         WlUhQwFfU55PA3OZk6EbECbXWjujztIo6vXSYOCLEqKJjSJLDvDJKjnHY1w50x16VirA
         2tGGFyTNb7pMQjpwNoEoXf9Q+ErDlgYeHtOaNEMbirT6z7Zqf9H7BKsTx+a8RaBwAoxH
         jSBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UvuWACEW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id w2si331100wmb.4.2021.04.28.12.54.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:54:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id a5so36662863ljk.0
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:54:19 -0700 (PDT)
X-Received: by 2002:a2e:b88d:: with SMTP id r13mr21760323ljp.479.1619639659118;
 Wed, 28 Apr 2021 12:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
 <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
 <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com>
 <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Apr 2021 12:54:07 -0700
Message-ID: <CAKwvOdkzLNK=yN6xnva_B5HwD8jgzg-=eb8s1RFPXrTYLKwOyg@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Brian Cain <bcain@codeaurora.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org, 
	"Manning, Sid" <sidneym@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UvuWACEW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Wed, Apr 28, 2021 at 12:50 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Apr 28, 2021 at 12:30 PM Brian Cain <bcain@codeaurora.org> wrote:
> >
> > > -----Original Message-----
> > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > Sent: Wednesday, April 28, 2021 1:30 PM
> > ...
> > > On Wed, Apr 28, 2021 at 10:00 AM Brian Cain <bcain@codeaurora.org> wrote:
> > > >
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > > > Sent: Wednesday, April 28, 2021 11:50 AM
> > > > > To: Brian Cain <bcain@codeaurora.org>
> > > > > Cc: clang-built-linux <clang-built-linux@googlegroups.com>;
> > > > > sidneym@codeaurora.org
> > > > > Subject: Re: FW: ARCH=hexagon unsupported?
> > > > >
> > > > > On Wed, Apr 28, 2021 at 9:09 AM Brian Cain <bcain@codeaurora.org>
> > > wrote:
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > > > > > Sent: Friday, April 23, 2021 4:40 PM
> > > > > > ...
> > > > > > > We'd be first in line to help build test such a patch. Please
> > > > > > > consider cc'ing myself and clang-built-linux@googlegroups.com
> > > > > > > when such a patch is available externally.  Further, we have the
> > > > > > > CI ready and waiting to add new architectures, even if it's just
> > > > > > > build testing. That would have caught regressions like
> > > > > > > 8320514c91bea; we were down to 1 build failure with
> > > > > > > https://github.com/ClangBuiltLinux/linux/issues/759 last I
> > > > > > > looked which was preventing us from adding Hexagon to any CI,
> > > > > > > but we must now dig ourselves out of a slightly deeper hole now.
> > > > > > >
> > > > > > > Is this patch something you suspect will take quite some time to
> > > > > > > work through internal review?
> > > > > >
> > > > > > These patches have completed their internal review.  I have pushed
> > > > > > them
> > > > > to my tree at
> > > > > git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux using
> > > > > for-linus branch, up to commit
> > > > > 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
> > > > > :
> > > > >
> > > > > Are you able to link these with lld? I see:
> > > >
> > > > Sorry -- I used " KBUILD_CFLAGS_KERNEL=-mlong-calls".  Sid, since this seems
> > > to be required maybe we should add it to the kernel build config?
> > >
> > > Yes, please. arch/hexagon/Makefile KBUILD_CFLAGS would be where to add it
> > > I suspect.
> >
> > Done.  Rebased for-linus. https://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux.git/commit/?h=for-linus&id=38f974f061c5e7c83910bd287d2be8325476a3f9
> >
> > Build log attached for reference.
>
> For the series:
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> And that's the first time I've been able to build hexagon; nice work!
>
> For the assembler sources, a common convention is to make the .S files
> so the compiler implicitly adds `-x assembler-with-cpp` to run the C
> pre processor. Then SYM_FUNC_START from include/linux/linkage.h should
> be used. I think architectures are expected to define __ALIGN (5 for
> hexagon) in their arch/{arch}/include/asm/linkage.h.

Example:
```
diff --git a/arch/hexagon/lib/divsi3.S b/arch/hexagon/lib/divsi3.S
index a2a6b33e0d53..04f07809f8b7 100644
--- a/arch/hexagon/lib/divsi3.S
+++ b/arch/hexagon/lib/divsi3.S
@@ -3,11 +3,10 @@
  * Copyright (c) 2021, The Linux Foundation. All rights reserved.
  */

+#include <linux/linkage.h>
+
 .text
-.p2align 5
-.globl __hexagon_divsi3
-.type  __hexagon_divsi3, @function
-__hexagon_divsi3:
+SYM_FUNC_START(__hexagon_divsi3)
         {
                 p0 = cmp.gt(r0,#-1)
                 p1 = cmp.gt(r1,#-1)
@@ -66,4 +65,4 @@ __hexagon_divsi3:
                 if (p3) r0 = sub(r1,r0)
                 jumpr r31
         }
-.size  __hexagon_divsi3, . - __hexagon_divsi3
+SYM_FUNC_END(__hexagon_divsi3)
```
Though preprocessing this file produces a `.align 4` directive, not
`.align 5`. Seems 2^4 is also what's defined in
arch/hexagon/include/asm/linkage.h.  Should these be 2^4B aligned or
2^5B aligned?

>
> Otherwise, feel free to add my reviewed by tag to the first 3 (not
> 38f974f061c5e7c83910bd287d2be8325476a3f9).
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> We can start on getting this wired up into our CI; we're doing a
> (public) bug scrub today (right now), but I will revisit doing so
> tomorrow.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkzLNK%3DyN6xnva_B5HwD8jgzg-%3Deb8s1RFPXrTYLKwOyg%40mail.gmail.com.
