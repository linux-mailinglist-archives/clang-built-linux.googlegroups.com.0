Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF7GX75AKGQE5LVK3WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F05F25B470
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 21:31:36 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id b127sf202734ybh.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 12:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599075095; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKQ+pEbMRsOPeGTgrK25b859W0o7Pf7+j9ZtbafiebbAepTfyo3Afe7OrlHNzG/58O
         z+ERYcNqzpZu33CTdLrw1CNwhMdqLbZ+DHOHLJzTwnnaDr7a1FdMTEVUolptRJZ4+X9b
         OXZ+kMY/oUe7f7syTt8cq2fBj0KEf8mbse5eOcTPxbDZJS10uHv7dWhdszh7CWwV3MWi
         h4D+Pfbga2o+CHiL1n2hAfB7cJANY2PR809M6JZU7ebHrvqSIGqVDqba6dFqFBbFMUxv
         si336mYiTe7VHefsJtmRieGaLY0wJI0So9lKJcc04ruFMhWGpLLRYmHe3gtbz630qCbW
         I9+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h8CcUJSMuymqJ7LkfFmfvOcdzvq7Z93vrJK8qC16TYo=;
        b=ZiU7kZnsdlU0+61tGj7olzh8DAbU/VBPVNugkoypgXDwPVufdXm7j3alXfKXzqwRkp
         5ATFanU54jikyAvglCJqFf9I9Xv8iyvQWwTvSL26IZgjT2D4DNGlrgeXH1C3LUcMIUl9
         5MBqb3tlD3JLK7iJ1bP6a4LbnMbUfKy8Iax/4atwRshD8yE1+pGQvqHfrNbGV9D4Aefr
         WmiwHS119H3YEix2cWh1zlubmTStt7y5FFJTlWxOy+3K/5cfSeas1kEgmIVcfFDmDNnJ
         VBakpz9b3HKMjK1IhuW9uTKSVgc4xfBXIfJ92e6KKLXK/9H+yEmerpOwmKdVGdzeubtK
         p6Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cGZyuJKw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h8CcUJSMuymqJ7LkfFmfvOcdzvq7Z93vrJK8qC16TYo=;
        b=f6iijqmtrC9XrNl+VJ+mg5cQGYjIMShSjzy09Wlqe07sn82q5+nXjZBdHtnIvYLOqL
         CZ4LVixi14pY2h5Kv02EY3OADc0Qiw7kuvEFxG6LKWWhYPCclTDbJ/P2+X62KhSUeCFd
         WulunnI6lDswJxGnK2dH2QBIXFZ7ctfljM3GHVaB8qTWxE8LdgpCNWhYR9qbhhLOToAl
         3f4k1MCTtfqSCCXUSMoB+mUbFumG1N2+G7JqZfxR0QiUvZjhP2Xiyco2vqT+mHAN/k1Y
         ZigykcriTrIYdEpJ6SYR5w0Tol0bA9lAiDQuhOt91LAzoBu22uWDSOPv37Sxdm4gDFr6
         tEFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h8CcUJSMuymqJ7LkfFmfvOcdzvq7Z93vrJK8qC16TYo=;
        b=Tz+2WhW0q6UpCpfQHxQ+GlEzhQFE12RJDDx+sFAUhihR/5NORUGKDtQA21g/P3ykJf
         0MAz2s2V0H3IVJOu7OMjmi6yddAmykhL7WW9aD0khDiPcl5u3aVGcK9hAbKb74TylbHy
         X+ptQ7JjkCrv9t2NeX6JnnKJC04mF6SSrfWsz/b7BUZC29d7DgbIHKyv0gt3+s4zYRcf
         IL6dFInVlq7bArvfc43ZcaK3RxcKh00eqtXCQVBIcSyQdnkg2J0Rc2e4EQaZ1M6+uQXl
         lkZTqXRVMW+MT6QzkihCp6I/OG9sOfnaG5zLqpRnRRahreZqP+WFDtVN9LxDFnulrhoF
         RVnA==
X-Gm-Message-State: AOAM5328iHXIY08jPTCrzcjEM0pC6K5RMYpziHChAiCwJYNi2ovRwW1B
	RBIr1l9zI0H9RqdDIGjLPgc=
X-Google-Smtp-Source: ABdhPJzSq/FGmQEug8H6leSzlat4hXJG+ppatv4266hrD2nHITK1Xj+793Udbulg1DZafg8Z+grwaw==
X-Received: by 2002:a25:6b0e:: with SMTP id g14mr5677585ybc.429.1599075095413;
        Wed, 02 Sep 2020 12:31:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6cc1:: with SMTP id h184ls1707520ybc.4.gmail; Wed, 02
 Sep 2020 12:31:35 -0700 (PDT)
X-Received: by 2002:a25:d4ce:: with SMTP id m197mr847452ybf.224.1599075094994;
        Wed, 02 Sep 2020 12:31:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599075094; cv=none;
        d=google.com; s=arc-20160816;
        b=UGLSaSKrwUs2X/o3ik980FDdkrVmf1PGWNHs948XQFq/X9R6jEo6gJ/RLh55ga51HY
         d7n4Jilgr4kI7ROGXueLM6PuG7akNDJKHlbj+ZPq8T6OFDdwZlNA3MU/ONywhrmYjJvz
         UQf3GSHRUgttvpoEpoWyl41zx/6sLGCuzmSYHTGGT+c24b7k+2ePdOiHYpr7tBBfkem2
         q23ts6rhMbw4Ygh5H4gO9n7yYe7Xa25y/jXOxOdnp+zV4TmvphqOnRo99p67SFTN4yna
         gLF8z5PZvhep8gMIUxxvLEDx3mDOpOMIsLAbb9gPFHRSQmmSsl4avKxssygVr5qUx3Wb
         4ygw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=V0RSowWgc0zmIKQqddkNLoXVk+XQgr53xASSZMsTdH8=;
        b=r5HNCnFz957gbUdb3HGH+gjIKmRQ6q+Wgc7r0bNi4dEXs8/9Kbbd35GqiYvvhDa/wk
         EllbJgMUrebFe/a9imtzuBVt8dDYK5I6htrkEn4Iz6BFdthq2jSB/0+6gJT6mIkRbBNG
         uuyISx87KykpvE8xp3u1KBcGb2URvVQ73ifUStz8TXk7XZZZWMM8Wmm4A7ahtKlxRLt6
         cL65kJE0uHr9C6vdtzs+GKoxQfgj0GLmw6EqNh3RTa1cxvNz5d1uEVmObTc3booT+ILS
         Tu/sexuOXhQMCUULRTo2P7qaTDs5qPtbhvBHfZ7L1pA9PKLfrRah8JJto4uFUAMM2M6Z
         jrSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cGZyuJKw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m193si70823ybf.1.2020.09.02.12.31.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 12:31:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id u13so192221pgh.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 12:31:34 -0700 (PDT)
X-Received: by 2002:a63:31d2:: with SMTP id x201mr3168804pgx.263.1599075093922;
 Wed, 02 Sep 2020 12:31:33 -0700 (PDT)
MIME-Version: 1.0
References: <202008270909.Z8PiAoi5%lkp@intel.com> <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
 <CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw@mail.gmail.com>
 <OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585D1.00581868@notes.na.collabserv.com>
 <20200828005707.GE15695@bubble.grove.modra.org> <CAKwvOdkyGQztQ9YgDOw2+DpcnoNXwbsOstNhDOLc6HP_Kopv-Q@mail.gmail.com>
 <202008311909.D3519C3@keescook> <20200901033421.np2qcjwa23vkookk@google.com>
In-Reply-To: <20200901033421.np2qcjwa23vkookk@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Sep 2020 12:31:22 -0700
Message-ID: <CAKwvOdmMf73MMap3RBVHFTnNV_U0Ti89+4NPQK87Fsyza=vHTA@mail.gmail.com>
Subject: Re: [linuxppc:next-test 70/80] /usr/bin/powerpc64-linux-gnu-ld:
 warning: discarding dynamic section .rela.opd
To: Fangrui Song <maskray@google.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kernel test robot <lkp@intel.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nick Desaulniers <nick.desaulniers@gmail.com>, Alan Modra <amodra@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cGZyuJKw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Aug 31, 2020 at 8:34 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-08-31, Kees Cook wrote:
> >On Thu, Aug 27, 2020 at 08:29:56PM -0700, Nick Desaulniers wrote:
> >> On Thu, Aug 27, 2020 at 5:57 PM Alan Modra <amodra@gmail.com> wrote:
> >> >
> >> > On Thu, Aug 27, 2020 at 06:02:14PM +0200, Ulrich Weigand wrote:
> >> > > Nick Desaulniers <ndesaulniers@google.com> wrote on 27.08.2020 14:52:36:
> >> > >
> >> > > > > > All warnings (new ones prefixed by >>):
> >> > > > > >
> >> > > > > >>> /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic
> >> > > > section .rela.opd
> >> > > > > >
> >> > > > >
> >> > > > > We have /DISCARD/ *(.rela*) in the VDSO linker scripts.
> >>
> >> Indeed, I see that in arch/powerpc/kernel/vdso64/vdso64.lds.S.  Kees,
> >> Fangrui, does `.rela*` not match `.rela.opd`? That doesn't sound
> >
> >It does not. For linker scripts, "*" does not match "." (which is why
> >".." is sometimes used to keep a subsection out of a "whatever.*" match.
> >X_X
>
> In linker scripts, "*" matches "."
>
> Is the relocation section from --emit-relocs? --emit-relocs emitted sections
> are not matched by output section descriptions.
>
> >> right.  Unless it's not the vdso link that's producing the warning?  I
> >> guess the warning is from GNU BFD, not LLD.  Maybe the warning is
> >> coming from linking a different object file that doesn't use the same
> >> linker script, or perhaps the `-T` argument is being dropped?
> >>
> >> > > > >
> >> > > > > What is going on here with clang ?
> >>
> >> This warning is from the linker flag --orphan-handling=warn.  It's
> >> been very handy for us to find bugs for other architectures and Kees
> >> has been working on a large series to use it in arm, arm64, and x86.
> >>
> >> So the general question is, should we keep the section or discard it,
> >> or should it not be produced in the first place?
> >>
> >> > > >
> >> > > > Looks like .rela.opd was maybe synthesized.  cc Dr. Weigand, whos name
> >> > > > shows up on llvm/test/MC/PowerPC/ppc64-relocs-01.s, which is the only
> >> > > > hit I get in the codebase of `opd` (at least for tests, still looking
> >> > > > to see if ".opd" gets appended somewhere.
> >> > >
> >> > > Well, this is the old ELFv1 ABI for big-endian PowerPC, which uses
> >> > > function descriptors, which reside in the .opd section.  These are
> >> > > emitted by LLVM in the PPCLinuxAsmPrinter::emitFunctionEntryLabel

Then this sounds like just another case where big endian support in
LLD is generally broken and should be disabled or unselectable in
Kconfig.

> >>
> >> Ah, "official procedure descriptors" -> opd.  Christophe, do we expect
> >> the vdso to be ELFv1 ABI?  This code in LLVM has two other cases:
> >> 1. ppc32
> >> 2. ELFv2
> >> If it should not be ELFv1, then something may be amiss in kbuild when
> >> building for Clang; maybe Clang has a different command line option
> >> for v2 and there's a cc-option check that's silently failing.  Maybe
> >> clang has a different implicit default than gcc (which should be fixed
> >> in clang if so).
>
> LLD does not have ppc64 ELF v1 support. It had incomplete support which was removed
> https://reviews.llvm.org/D46316
> I know very little about ELF v1, but I can tell that R_PPC64_REL24 has different semantics with ELF v1,
> which will assuredly be broken by LLD.
>
> >If it's not produced by bfd, then nothing should be depending on it
> >currently, yes?
> >
> >> > .opd can only be resolved at link time when creating fixed position
> >> > executables.  .opd does need dynamic relocs in PIEs or shared
> >> > libraries.
> >> >
> >> > Kernel VDSO is rather special though, and I'm not up to speed with
> >> > whatever hackery the kernel folk use to create it and/or relocate it
> >> > when the kernel is relocated.  Quite possibly the warning should just
> >> > be ignored.
> >>
> >> I'm not sure if the kernel does relocations upon vdso load.
> >
> >I won't try to guess about PPC. :) In general, though, the vdso doesn't
> >get a relocation "pass" in that the code page is shared by all
> >processes. So I'd expect rela.opd to be empty or unused. Is it empty in
> >the final image?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmMf73MMap3RBVHFTnNV_U0Ti89%2B4NPQK87Fsyza%3DvHTA%40mail.gmail.com.
