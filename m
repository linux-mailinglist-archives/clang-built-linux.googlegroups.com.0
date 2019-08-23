Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYF6QDVQKGQEAFXWCNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD49B53F
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 19:16:18 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id b30sf6174066pla.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 10:16:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566580576; cv=pass;
        d=google.com; s=arc-20160816;
        b=RmcId1aqo6f9RxcWR52XUWku0+7HCtIifu6NbNEKfN91BMy4+ULCGJ/WjuhBPj8CZZ
         vaW9qkZOqvb84mstCmZ2xE464ZftmtQNXi0q9WxT+nFA2cCARa6j80/teIUDHt87e1Nf
         PhpIppeGBglXE+AxSPeHPBNZXyJHm2b4XUiM0SJR6ZLp/u7r9F35+pt5z3vEuRMus++V
         MoVige2byIzdjXW4f34nJv9cR/hfH1ysISYOViTzkXonIOqTFZNJwEUcfUEnJvjJeF1t
         3qddhJ/Q20ONp0UJumwYgpEzdGLFKIGiBd9uPDFBCyC+oiURvnnATq0V3fn6p0fWH+zy
         Dp8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PRR/518mFtEsWUzx4YXcrceCFWekaEMoWMHkV2/h0Es=;
        b=sWAZ9SK9Z5DejRwLAWUS9O2l7s26iV/dOwKInl1S0Gb926VvzHsLbUYv2WD8dGir5A
         CuA7nH36ytUl2+QtJt98igXnaJIojltnKPo2s2rlBwSQW5LjNbO/iYa6zlMMf6RHNM9m
         jaqUzrSgAgNpHQfbMXAcXu4PjMJxIdHM+Rug1zrT3KRT2s47VsTMT7aRri7wajGvqmto
         yPap1qg15avN6/h7LX0eFb63hYHAp2wFOxP8GRf0tI+qf/CmAuGYReT9ilG+k/zhPv1u
         H0irUZY6sPgJoeKvUfSoirp+rdriiKa5bmW3Gp8k4knUpLnwUM5/VhKh/OHLlfQGBpxP
         4Awg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W8GIVaB8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRR/518mFtEsWUzx4YXcrceCFWekaEMoWMHkV2/h0Es=;
        b=mGU7JDAw6ubD4BcA0IeWAq6FiTLeFA5M9ihwsQpI3j/50Yy7L1ZN+TMKnULDh94u5Z
         bXXzg3w9WeQY3iKDl7uXqFc3/myDUYHamPp/aOwU7rYxszjIdPwfCxl0iRm1VVCYV8Ul
         tkLqn+xcn5ImVYC87Cl/o7quDtOG25O8hRlaxb0wO5yU8my7qrAqgeL4zWxOLxUTCLO3
         L6+2piCkS5I0dnlQj1D2FnHMAFv39h5lbHzoEovifUzvy7e2f/WMypdI+caicp//TEkK
         S2KOE0cN8/kuUZPyNj9gki63/v2dxlMz6B/d4VX0NHTbkJDq10y7h2p8j/+/uU1ah4Nw
         GEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRR/518mFtEsWUzx4YXcrceCFWekaEMoWMHkV2/h0Es=;
        b=ii770b96Wl/9JaXOQCGBBTLL2EZ3ULgYLA3GgcdfPvI3M8TbW54NW7tnqNbxM1osqa
         LNnK3z8a3eboKv78SwWPvQ66vaoRqNZzy9z/ZZC1CNtZw5KDgw58Q3XM8o9jYgtrOviD
         N0HEsJnsf/xHgH+cP5LpNLPBrQMesFx3F3dUBEeLlYEg1yCSHy/s/KN9v6JTzOg5BHsB
         +91OJXm86ghtmqXDfeeOP301jddzwM5JFgavao152YhzBNKco4eavsV+QrZvYPj4aRy2
         dJ7zGodAGgbUGnb2imsDKkpNAiPTcznP4d3IePO/JebA2rVYR3/p9uT2Yqc6SmDWo60V
         TSwg==
X-Gm-Message-State: APjAAAWxiAI8s9eKv7Mdeb/xNLawq+CY9f30eWtpm3cJqPumqoUBVZwN
	xkEbc24gzsFC6XfwjDgqlek=
X-Google-Smtp-Source: APXvYqwdgZtWjpSklL27J2+9o1cWs+K2c/sQsmYBiUzBYUIGejsGAv9Ej8zw5NbXoOaHB1DzJTThQA==
X-Received: by 2002:a17:902:2d24:: with SMTP id o33mr5969973plb.269.1566580576432;
        Fri, 23 Aug 2019 10:16:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:568d:: with SMTP id v13ls2040605pgs.4.gmail; Fri, 23 Aug
 2019 10:16:16 -0700 (PDT)
X-Received: by 2002:a63:ab08:: with SMTP id p8mr5121064pgf.340.1566580576015;
        Fri, 23 Aug 2019 10:16:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566580576; cv=none;
        d=google.com; s=arc-20160816;
        b=KfABjm3lO4nl0cpHc/x3QZQA+b5WbEsE6g5hoKDUU8Hceryn2bfgU6v0cjAyPUHe0p
         QsoNlM0Ii/Q2LSV2eoeIh7deEu78aIynFVVo8zw47hWPcfFQaN5AzYKXUe5CG4Hpf9nH
         K6kKzz39O8YbH2LjOF8WZLqa3t9oQgz1f9zTyidnb8iJkOCbOYe+K7EtPCy7w58P3ltk
         OxwgBVfBCPv++4zV2h9iEYirjte7SCbHv4p6akHZ9bpbwYp87f+W7b4yMhiuwpBxvvLT
         TDo29A0vB4z0BtpVJJafUUHYGY0gfotwPeDbCHlDiCqzki8+lBpj2QlCLgUsMcVvuN6o
         BpYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9DzZ5tBJ/5ijRD9+7u3gl0wIvugmOxHsruYTm4QtT68=;
        b=kJKdulomEzNsUkTfLMHcEnFEkviDxJRqFVwJnejgHjvH0Yco7zS/n2XSxuy4drZM3R
         jUd5Tr5WaTaMRW51hH9G+T25eF0KScn47p5+ukkOmiYDFiAaWPVLy6Xlec3ITdPM/POj
         ASUv2W8oU+DOAIjrJxtf//SLQ5b23mrR+x+sVNn7EZrq/zU22oyLo2DsVg3Us7dzXn+T
         xoco9G9UlnWnazXW5rnpw3n9s7qGJEW52X1pyJQmsirGLHKxnr1zT5IvZ6KBSyMmmjxO
         CElWJoqR+vV6UQGH6I2pHiKtvZfLylGsydsIGpJfhdvmd8jkCF4Jz7vHEQL88AUYfhFI
         XM8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W8GIVaB8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f125si192390pgc.4.2019.08.23.10.16.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2019 10:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w2so6860593pfi.3
        for <clang-built-linux@googlegroups.com>; Fri, 23 Aug 2019 10:16:15 -0700 (PDT)
X-Received: by 2002:a17:90a:ac02:: with SMTP id o2mr6420803pjq.134.1566580575131;
 Fri, 23 Aug 2019 10:16:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190729211014.39333-1-ndesaulniers@google.com>
 <alpine.LFD.2.21.1907292302451.16059@eddie.linux-mips.org>
 <CAKwvOd==SCBrj=cZ7Ax5F87+-bPMS9AtGSxp+NWp_+yDCg4R-A@mail.gmail.com> <CAKwvOdkXLhEuLiQ_ukE75zEg=Sw5-4BLHHCFqcZ0oyTEX3pWTQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkXLhEuLiQ_ukE75zEg=Sw5-4BLHHCFqcZ0oyTEX3pWTQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Aug 2019 10:16:04 -0700
Message-ID: <CAKwvOdmGax-WgXeKEnTq8+Xe0+Z5d2k4_Ad1vw0uOiO2NJ0bkg@mail.gmail.com>
Subject: Re: [PATCH] mips: avoid explicit UB in assignment of mips_io_port_base
To: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Eli Friedman <efriedma@quicinc.com>, 
	Hassan Naveed <hnaveed@wavecomp.com>, Stephen Kitt <steve@sk2.org>, 
	Serge Semin <fancer.lancer@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Michal Hocko <mhocko@suse.com>, linux-mips@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, regehr@cs.utah.edu, 
	Philip Reames <listmail@philipreames.com>, Alexander Potapenko <glider@google.com>, 
	Alistair Delva <adelva@google.com>, "Maciej W. Rozycki" <macro@linux-mips.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W8GIVaB8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Tue, Aug 20, 2019 at 10:15 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hi Paul,
> Bumping this thread; we'd really like to be able to boot test another
> ISA in our CI.  This lone patch is affecting our ability to boot.  Can
> you please pick it up?
> https://lore.kernel.org/lkml/20190729211014.39333-1-ndesaulniers@google.com/

Hi Paul,
Following up with this link that explains the undefined behavior issue more:
https://wiki.sei.cmu.edu/confluence/display/c/EXP05-C.+Do+not+cast+away+a+const+qualification
Please reconsider accepting this patch.

>
> On Wed, Aug 7, 2019 at 2:12 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Sorry for the delayed response, literally sent the patch then went on vacation.
> >
> > On Mon, Jul 29, 2019 at 3:16 PM Maciej W. Rozycki <macro@linux-mips.org> wrote:
> > >
> > > On Mon, 29 Jul 2019, Nick Desaulniers wrote:
> > >
> > > > The code in question is modifying a variable declared const through
> > > > pointer manipulation.  Such code is explicitly undefined behavior, and
> > > > is the lone issue preventing malta_defconfig from booting when built
> > > > with Clang:
> > > >
> > > > If an attempt is made to modify an object defined with a const-qualified
> > > > type through use of an lvalue with non-const-qualified type, the
> > > > behavior is undefined.
> > > >
> > > > LLVM is removing such assignments. A simple fix is to not declare
> > > > variables const that you plan on modifying.  Limiting the scope would be
> > > > a better method of preventing unwanted writes to such a variable.
> >
> > This is now documented in the LLVM release notes for Clang-9:
> > https://github.com/llvm/llvm-project/commit/e39e79358fcdd5d8ad809defaa821f0bbfa809a5
> >
> > > >
> > > > Further, the code in question mentions "compiler bugs" without any links
> > > > to bug reports, so it is difficult to know if the issue is resolved in
> > > > GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
> > > > 4.1.1. The minimal supported version of GCC in the Linux kernel is
> > > > currently 4.6.
> > >
> > >  It's somewhat older than that.  My investigation points to:
> > >
> > > commit c94e57dcd61d661749d53ee876ab265883b0a103
> > > Author: Ralf Baechle <ralf@linux-mips.org>
> > > Date:   Sun Nov 25 09:25:53 2001 +0000
> > >
> > >     Cleanup of include/asm-mips/io.h.  Now looks neat and harmless.
> >
> > Oh indeed, great find!
> >
> > So it looks to me like the order of events is:
> > 1. https://github.com/jaaron/linux-mips-ip30/commit/c94e57dcd61d661749d53ee876ab265883b0a103
> > in 2001 first introduces the UB.  mips_io_port_base is defined
> > non-const in arch/mips/kernel/setup.c, but then declared extern const
> > (and modified via UB) in include/asm-mips/io.h.  A setter is created,
> > but not a getter (I'll revisit this below).  This appears to work (due
> > to luck) for a few years until:
> > 2. https://github.com/mpe/linux-fullhistory/commit/966f4406d903a4214fdc74bec54710c6232a95b8
> > in 2006 adds a compiler barrier (reload all variables) and this
> > appears to work.  The commit message mentions that reads after
> > modification of the const variable were buggy (likely GCC started
> > taking advantage of the explicit UB around this time as well).  This
> > isn't a fix for UB (more thoughts below), but appears to work.
> > 3. https://github.com/llvm/llvm-project/commit/b45631090220b732e614b5530bbd1d230eb9d38e
> > in 2019 removes writes to const variables in LLVM as that's explicit
> > UB.  We observe the boot failure in mips and narrow it down to this
> > instance.
> >
> > I can see how throwing a compiler barrier in there made subsequent
> > reads after UB writes appear to work, but that was more due to luck
> > and implementation details of GCC than the heart of the issue (ie. not
> > writing code that is explicitly undefined behavior)(and could change
> > in future versions of GCC).  Stated another way, the fix for explicit
> > UB is not hacks, but avoiding the UB by rewriting the problematic
> > code.
> >
> > > However the purpose of the arrangement does not appear to me to be
> > > particularly specific to a compiler version.
> > >
> > > > For what its worth, there was UB before the commit in question, it just
> > > > added a barrier and got lucky IRT codegen. I don't think there's any
> > > > actual compiler bugs related, just runtime bugs due to UB.
> > >
> > >  Does your solution preserves the original purpose of the hack though as
> > > documented in the comment you propose to be removed?
> >
> > The function modified simply writes to a global variable.  It's not
> > clear to my why the value about to be modified would EVER be loaded
> > before modification.
> >
> > >  Clearly it was defined enough to work for almost 18 years, so it would be
> > > good to keep the optimisation functionally by using different means that
> > > do not rely on UB.
> >
> > "Defined enough" ???
> > https://youtu.be/Aq_1l316ow8?t=17
> >
> > > This variable is assigned at most once throughout the
> > > life of the kernel and then early on, so considering it r/w with all the
> > > consequences for all accesses does not appear to me to be a good use of
> > > it.
> >
> > Note: it's not possible to express the semantics of a "write once
> > variable" in C short of static initialization (AFAIK, without explicit
> > violation of UB, but Cunningham's Law may apply).
> >
> > (set_io_port_base is called in ~20 places)
> >
> > Thinking more about this while I was away, I think what this code has
> > needed since 2001 is proper encapsulation.  If you want a variable
> > that is written from one place only, but readable throughout, then the
> > pattern I'd use is:
> >
> > 1. declare a getter in a .h file.
> > 2. define/qualify `mips_io_port_base` as `static` and non-const in a
> > .c file where it's modified.
> > 3. define the getter and setter in the above .c file.
> >
> > That would rely on linkage to limit the visibility of the symbol for
> > modification.  But, we'd then need to export the getter, vs the symbol
> > itself.  There's also on the order of ~20 call sites that would need
> > to be changed to invoke the getter rather than read the raw variable.
> > Also, it's unlikely the getter gets inlined across translation units
> > (short of LTO, which the mainline kernel doesn't support today).
> >
> > I think my patch here (https://lkml.org/lkml/2019/7/29/1636) is
> > minimally and much less invasive.
> >
> > >  Maybe a piece of inline asm to hide the initialisation or suchlike then?
> >
> > I think that would still be UB as the definition would not be changed;
> > you'd still be modifying a variable declared const.
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmGax-WgXeKEnTq8%2BXe0%2BZ5d2k4_Ad1vw0uOiO2NJ0bkg%40mail.gmail.com.
