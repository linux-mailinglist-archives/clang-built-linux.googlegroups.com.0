Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPHN2GAAMGQE2HRWXZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF5C308EC8
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:57:33 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id u129sf4625091oif.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:57:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611953853; cv=pass;
        d=google.com; s=arc-20160816;
        b=TogMwJVWARsIkOGaytWgLkK6dkNrROG398TzwN/Fydr8gFgrCn8oTSpUs0wHsbqkdw
         LRvWZ7ptNKJCo//XinTEuGi6cXBdcrEWiuKiEhWPjL1UVaQOCEVIcQO8c/m+J+BK2y5U
         U6G/d3Q4L9FhmmwbxkkNV8COXviTRpbv6SDx96+1lETiQWMIkYPFSSaw3m1EMCqWLeKd
         SA8CUKYbNiXy1As8Y6L378WynhWoDvyT3G6LwazNGN7350TLTpcrP103zz45oijlbhr7
         Fr6F487ggIVkFqz7YypXdutCOHbT/poUuBG7s6PKOktXa22VPQdYM18iocFG7fp+Ik0R
         o0zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uDEsQsdAoILHC96r/OKN4IAhQ/pLeKaVhR88He/XnLE=;
        b=gfTPMmtlW4CF3SEfy8jz1Z/3c9l+oXTPdnMgC9/aIpTb9EgdkhntCT/ETvDdPHWaTN
         hTf0gTQ8bOTHf/rS31cK+yU0Jt9sP1kMIeQAliQDhju3p1S+0PAaJZALa6BD7/k4jWYM
         oIqaQj3tqL9j1pLfsZVFhvRTSmQXcfd1UxIwQcLT1oL0+aZX4oeQMHnvg2lvYrUN+S53
         Ug3XKWTJpkaBXvFjNZuSIdCwy9dGQUnIRLQxrCFuPCDKyRDbIn9ert/AGQ9HnANVW8Lr
         YOsolahTapEHWeLPAj56bQAw99LIWsCNQZ3Try2mvSLdbtAjRJemwuGju/D+lG7J68+w
         IAiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YBeGa0TN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDEsQsdAoILHC96r/OKN4IAhQ/pLeKaVhR88He/XnLE=;
        b=Bzg3/7NmAZN7TAcREro+OyFA4Bmx2/qdvF3GaiD9Mz4fiIl5bwedWdNG1VPuKTlF7o
         oYwnRBwq3SxzkRIKtL6sxcUMjwBe4FhW6uUrxl4ysNrR6Mc8Cy6Hj2kAl+Nz5oHXrNGy
         SZ16h+JzAfue2Y1eUZspPTYExwdeELCMBejezrA9hnuv3yyjDCRouZ8wdv2H/f3GMNQy
         sl88w2tCvhh4HC1eudhaFHCAGc3AkwoQ3ovA3sMzYQbz+YUJhYNRfoQKuJ/fJfxC/Rwf
         +gBio5jAk5JffOMxW2rbmFLT4/AJC46il1j3JFZdK1zpEbbUK9+TMRsqXCTYWllZ2XVx
         XFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDEsQsdAoILHC96r/OKN4IAhQ/pLeKaVhR88He/XnLE=;
        b=POTgHY5fiUtvJh7b6M70hXgfMpkgku0OpdNs+ny72E2KGn77vuyOexWIciGA/lWkee
         sPW86+9whcoAicITVWAVqUXkR4asg3g7WG1ZMJNGdtGq0yPOJ34Z1mHs9oWrgAWY90+k
         pVGJb4eYBy/b9cVlxiXb2Os0jRx8I32yUFblgO95Gy2rT2vhZMizrkXH0Ty3WlEf6Q4c
         JI2GgwSInBSIeradxz9dAAAXGlAkJ4DNdZCVxoFEMjbBGPPOhCHr4r6VkGc9njI6kW/n
         hLWJ/ug/AUEOeVhKQc81M08G5tvdXgdI3xjAPm1ozVlOhO/uAJ6+vD6jO21P+AOAqGAc
         G2cw==
X-Gm-Message-State: AOAM5309aDmCIpyY1k34Xw2u3TnEtYJ+zVTclYBCdAVIB/Ef9u3iYJY0
	Xh7XCHw5EkOty5Pbg9u40JM=
X-Google-Smtp-Source: ABdhPJzGprnoOQPBUfDzPOmwqxk6M+rPbgpbH4a4ihYHYvhCP6aFIVZI646n44TMcc+6nSwYEg0F/w==
X-Received: by 2002:a54:441a:: with SMTP id k26mr3908150oiw.119.1611953852946;
        Fri, 29 Jan 2021 12:57:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3407:: with SMTP id v7ls42252otb.9.gmail; Fri, 29 Jan
 2021 12:57:32 -0800 (PST)
X-Received: by 2002:a9d:4c8b:: with SMTP id m11mr4212736otf.319.1611953852549;
        Fri, 29 Jan 2021 12:57:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611953852; cv=none;
        d=google.com; s=arc-20160816;
        b=bdvojih6BkYKAT/+F08YvURpkRhOwL+am9WP/SpbT2JfPboCGNAzDXirc7GgX2z8VO
         7EWBcWOaEc2cxIciYSXx3lysMNFPrNLummgnzASBuI6Vl61GoBnMUUZSXU83KSHk1X8q
         c6/P0BrGbo8x498akOioJ8t2YoNIsT3QAnsukoB4BDHUQysUmXtjf3V5CeDt5amw7D4f
         2npRByQ5+tz0WLqmThLGcvR8x71eEeg3s7Kssx8HK5/po21n/17AWAdE92W8LI67USBh
         nyRkgdbuekRJIHZVsFcffQ/AI4O9vEZMP3+rR/csjXFw8KOVs2Bm277MtgJf5UZx1MxP
         oJ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R+KMZZPkYrf5pIZgpahKbDaW5WeKXpZb6/M/9IMIgPI=;
        b=C0c0aAq5F31Qzn0QME2lghgKHxaZRxNXG6Lt1D4MlKbM0Qwc4OD10fWkLbdorzb6O5
         EYSSAq/qZEk02qE5mBMC+4Hoc5taRf7N7/05DDI1xbBkKG4Assbk9ObkfOiekBd5m3rJ
         3jCfBmxZ8CggnSn8aQivUoTK3Yk3VmkWRTeBHv7+VCDUMkKbKrVzuJwj0QKMXKJH3iGv
         0fyQsk7tcjNA7DLlY3Rw4vc0ZdcZnTGgsma9kOCV25PVQ4uKhGDvQ1xw/D4SAZyXGjDB
         O3AgNampVYc/ZnokGRTvLoLVJYH7oLqz5Shu5vKPH20O4MxdAnQzKzAGHHRExV6qLAWe
         LDWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YBeGa0TN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id m7si638704otq.5.2021.01.29.12.57.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:57:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id r38so7455456pgk.13
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 12:57:32 -0800 (PST)
X-Received: by 2002:a65:4201:: with SMTP id c1mr6366899pgq.10.1611953851665;
 Fri, 29 Jan 2021 12:57:31 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-2-ndesaulniers@google.com> <20210129201712.GQ4020736@tucnak>
 <CAKwvOdkqcWOn6G7U6v37kc6gxZ=xbiZ1JtCd4XyCggMe=0v8iQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkqcWOn6G7U6v37kc6gxZ=xbiZ1JtCd4XyCggMe=0v8iQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 12:57:20 -0800
Message-ID: <CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez=-Dae4+bodsSg5w@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] Kbuild: make DWARF version a choice
To: Jakub Jelinek <jakub@redhat.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YBeGa0TN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e
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

On Fri, Jan 29, 2021 at 12:19 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 29, 2021 at 12:17 PM Jakub Jelinek <jakub@redhat.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 11:43:17AM -0800, Nick Desaulniers wrote:
> > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> > > explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> > > way that's forward compatible with existing configs, and makes adding
> > > future versions more straightforward.
> > >
> > > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > Suggested-by: Fangrui Song <maskray@google.com>
> > > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  Makefile          |  6 +++---
> > >  lib/Kconfig.debug | 21 ++++++++++++++++-----
> > >  2 files changed, 19 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 95ab9856f357..20141cd9319e 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -830,9 +830,9 @@ ifneq ($(LLVM_IAS),1)
> > >  KBUILD_AFLAGS        += -Wa,-gdwarf-2
> > >  endif
> > >
> > > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > > -DEBUG_CFLAGS += -gdwarf-4
> > > -endif
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > +DEBUG_CFLAGS += -gdwarf-$(dwarf-version-y)
> >
> > Why do you make DWARF2 the default?  That seems a big step back from what
> > the Makefile used to do before, where it defaulted to whatever DWARF version
> > the compiler defaulted to?
> > E.g. GCC 4.8 up to 10 defaults to -gdwarf-4 and GCC 11 will default to
> > -gdwarf-5.
> > DWARF2 is more than 27 years old standard, DWARF3 15 years old,
> > DWARF4 over 10 years old and DWARF5 almost 4 years old...
> > It is true that some tools aren't DWARF5 ready at this point, but with GCC
> > defaulting to that it will change quickly, but at least DWARF4 support has
> > been around for years.
>
> I agree with you; I also do not want to change the existing defaults
> in this series. That is a separate issue to address.

Thinking more about this over lunch...

I agree that DWARF v2 is quite old and I don't have a concrete reason
why the Linux kernel should continue to support it in 2021.

I agree that this patch takes away the compiler vendor's choice as to
what the implicit default choice is for dwarf version for the kernel.
(We, the Linux kernel, do so already for implicit default -std=gnuc*
as well).

I would not mind making this commit more explicit along the lines of:
"""
If you previously had not explicitly opted into
CONFIG_DEBUG_INFO_DWARF4, you will be opted in to
CONFIG_DEBUG_INFO_DWARF2 rather than the compiler's implicit default
(which changes over time).
"""
If you would rather see dwarf4 be the explicit default, that can be
done before or after this patch series, but to avoid further
"rope-a-dope" over getting DWARFv5 enabled, I suggest waiting until
after.

If Masahiro or Arvind (or whoever) feel differently about preserving
the previous "don't care" behavior related to DWARF version for
developers who had previously not opted in to
CONFIG_DEBUG_INFO_DWARF4, I can drop this patch, and resend v7 of
0002/0002 simply adding CONFIG_DEBUG_INFO_DWARF5 and making that and
CONFIG_DEBUG_INFO_DWARF4 depend on ! each other (I think).  But I'm
going to suggest we follow the Zen of Python: explicit is better than
implicit.  Supporting "I choose not to choose (my dwarf version)"
doesn't seem worthwhile to me, but could be convinced otherwise.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez%3D-Dae4%2BbodsSg5w%40mail.gmail.com.
