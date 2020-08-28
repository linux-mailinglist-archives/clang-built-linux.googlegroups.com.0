Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHUUH5AKGQEALLREYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D77D8255350
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 05:30:10 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id y185sf6302811pfb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:30:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598585409; cv=pass;
        d=google.com; s=arc-20160816;
        b=SXa54X4rYEs9abGjAkonyby+iI39Edd9kTvtNcJH1TFDvrT4L4bFuCdTZi6Z56+IyU
         Z7XdfqmpR2p4SVvZrAWuKYw/XqLvgfqxEAB8ossdaye3CqncCJEFtBevdIF5fP85jKin
         KFid6/UDe+7Tyt1aGjzMVLZos390KmnedQxqbXUuX1yuEX/Nhra8bBROTLhwdD35b9Hs
         9PPzVFRTT1bucKuxpzwsR72bIFtRUJns3nQv7iybJybIjkn84akDvZKBy36U1hc8VZf6
         LMdZR81LxBEDq/zz4ErgaWiLPGBLitIqFCaZqVoPvy2F/cI5cMXIrhwUZJZZyHXQ3KOZ
         dsOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ogILS29Ufr9S0B/564BpbR611JdVzPwpp/sTOipA4oQ=;
        b=q15TTL45K6TTLUBGwjHoNMpZNAmW+5OGxR3fmSQUNewJFEwycamqHTwn7IAkw5bPgu
         6zjLoUpQYiMBDWzNG/NZBJteLC/RuKbT06VDhNNl1dIIqnLgVdGNQt/2OWvKBAsr1q0H
         ljOXY0FJ9hpnVNN/oDC8fRR1oMoJpI1QvUJffjJKwyLtFOix+e+gyQji2i1EnXvkLYTj
         dlOT04xo5LftwyfgaRoX34oVOnAbqWGGXJSBBYu8lKqHWuiZ2lN3i1nalpvvtnya6q+M
         BTqvn+EGnpWdbmL4ymaDYvkvillTLDD/YqOEL3norYxTsTjH+3GlSyhvwQOnNSUaLGtu
         NS+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YF0yy3Tj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ogILS29Ufr9S0B/564BpbR611JdVzPwpp/sTOipA4oQ=;
        b=VPxZkBXRf/uDs5xnGmpaPb/Ax5C9VYRDmTM+fRfjpMIB9+bK64CpqnYQ8oPzP0j/ym
         8+J/ln41MR4U4CrHMD44dciEvcsWk/IybZaug3db9/mzLFY2v4SJWbnBAIBP8FXEvwAx
         QSsmXr8bJ3wl5wS0R1xAgmm8bo/RdgD0KD4j1tIBb6lN3fM/ncYB2fJgLrczWJAkrZnZ
         MDcweRvtEUyOj7ErafAB7oQFX5BEFAQ4wZJKoAKhPrnh0u9DAKHmBg5ClBKnzCq4tJm4
         hIEWDRMWBB884UHgb0K6cSqaUdRJW9Yhe3Qk9byJi+dMrZLnfAzdFMVXUDJgskx1wsKf
         0UyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ogILS29Ufr9S0B/564BpbR611JdVzPwpp/sTOipA4oQ=;
        b=j22ekPOD+4vT+XVLkgJcRP0QT1v5CQrABPv8s3MPtwGb+77EAAvuQDyYb92jL/UMSi
         TcQoBShAW6VT95yeyV6d9JHaML5GnJ62HoALl6Je96SrERPcQwm9yst5mNPHOoGsSpYK
         m9Qxrq4xSv/LKbgZUpnaUR+gJyHQI6wPrep4LBT1TCrUPcj4SOfOtMsFvBtmy/fkMWE+
         RJ6gGNysOb+ITAeHlF3djGHPcIXIDEPzoyI0x0IB94RTwLDAdBXG6U7qyxFyM59Zlgfn
         r9GoH3CrwjGOHK+Ri+es2lD2fAk+b4p0vN8qfAGvisL6B40dVkkG9b6pZIrsX0VLHCXs
         /w7w==
X-Gm-Message-State: AOAM5331O2VTeDIker5IPGG3eBhJeiE+73C9dZhKl0pdoXj+rerEusXu
	/lF146woPThR5EnbXilQfr0=
X-Google-Smtp-Source: ABdhPJyPk13WEXBklUt0Erlb3hqFt5gK/mLpd4GoG0qPRN/KYMMAtT8fO6OJaCshlDJe3UNRIBUW5w==
X-Received: by 2002:a17:90a:be0e:: with SMTP id a14mr700236pjs.117.1598585409018;
        Thu, 27 Aug 2020 20:30:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b90:: with SMTP id y16ls2265614plp.3.gmail; Thu, 27
 Aug 2020 20:30:08 -0700 (PDT)
X-Received: by 2002:a17:90b:198f:: with SMTP id mv15mr670578pjb.57.1598585408539;
        Thu, 27 Aug 2020 20:30:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598585408; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6Wqb2NnuxRDOs6+HGUNyvTRXY1yTjKNbhBhfTm4mYXxkHryurHaKtA0rIfJeHYuI3
         C+GL6cpIEyaJfAM4DABUEmhbFEhnO4EaORWeSzU7qNDWtNbi9vOxGaYxP9x8jmUvLhE3
         8JsPLXECf5rmZUU2RkrICBLNOiffB6PRs11Pt5UywvHw0DUsFmmuGuhNEEcnrvZZQJJe
         aFcxY3eQbIxgy75+tvW/uax35EIXfrroh/bdiH2Ke45uiXJUiDHH/cKfQH9NWogTNsi3
         /GIFsG0mQyhxF4l9g6CPutFt9eEyCz8w0uQcHC0mJhB2oOCjVCiYJQ3sGIefdbMpjtWh
         BLvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JKEmgGeprPd6f0dGFj67sdIKQ343BresEEvPQakYteY=;
        b=LWaS9s0pBzFvvdhhE6rIqGy63RHdYDYYZNhgInXT4vvYuFdPA18wHXanJ0BEw0izyR
         oSjawxWYuFyeBRixIV1v5ergg37iUUzw72sD6JWHYT3P9QySlYGtS5nGYJnXEOvSvuqJ
         +oDTJH3x8GhStq4Qqn6sUZkNTqs8I4doQC4cVuOPbinNvjH8Se0+5HzltYuN7GAPL66R
         RSRybpsBO8jzPkzUtnMmtnJH8Xy0MqKAr4GS5fPgyFatGT9Q1NBcgeOPq0/9dQQ6eDAd
         CHxoEyReQobhLgZVJE3RXvDG+s5XoW3ApSzzPARiM7SnxmhRnhImZQNF+OFfH46j43J3
         1jaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YF0yy3Tj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id lb11si162201pjb.3.2020.08.27.20.30.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 20:30:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id 5so16730pgl.4
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 20:30:08 -0700 (PDT)
X-Received: by 2002:a63:31d2:: with SMTP id x201mr3687294pgx.263.1598585407517;
 Thu, 27 Aug 2020 20:30:07 -0700 (PDT)
MIME-Version: 1.0
References: <202008270909.Z8PiAoi5%lkp@intel.com> <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
 <CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw@mail.gmail.com>
 <OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585D1.00581868@notes.na.collabserv.com>
 <20200828005707.GE15695@bubble.grove.modra.org>
In-Reply-To: <20200828005707.GE15695@bubble.grove.modra.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Aug 2020 20:29:56 -0700
Message-ID: <CAKwvOdkyGQztQ9YgDOw2+DpcnoNXwbsOstNhDOLc6HP_Kopv-Q@mail.gmail.com>
Subject: Re: [linuxppc:next-test 70/80] /usr/bin/powerpc64-linux-gnu-ld:
 warning: discarding dynamic section .rela.opd
To: Christophe Leroy <christophe.leroy@csgroup.eu>, Kees Cook <keescook@chromium.org>, 
	Fangrui Song <maskray@google.com>
Cc: Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kernel test robot <lkp@intel.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nick Desaulniers <nick.desaulniers@gmail.com>, Alan Modra <amodra@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YF0yy3Tj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

On Thu, Aug 27, 2020 at 5:57 PM Alan Modra <amodra@gmail.com> wrote:
>
> On Thu, Aug 27, 2020 at 06:02:14PM +0200, Ulrich Weigand wrote:
> > Nick Desaulniers <ndesaulniers@google.com> wrote on 27.08.2020 14:52:36:
> >
> > > > > All warnings (new ones prefixed by >>):
> > > > >
> > > > >>> /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic
> > > section .rela.opd
> > > > >
> > > >
> > > > We have /DISCARD/ *(.rela*) in the VDSO linker scripts.

Indeed, I see that in arch/powerpc/kernel/vdso64/vdso64.lds.S.  Kees,
Fangrui, does `.rela*` not match `.rela.opd`? That doesn't sound
right.  Unless it's not the vdso link that's producing the warning?  I
guess the warning is from GNU BFD, not LLD.  Maybe the warning is
coming from linking a different object file that doesn't use the same
linker script, or perhaps the `-T` argument is being dropped?

> > > >
> > > > What is going on here with clang ?

This warning is from the linker flag --orphan-handling=warn.  It's
been very handy for us to find bugs for other architectures and Kees
has been working on a large series to use it in arm, arm64, and x86.

So the general question is, should we keep the section or discard it,
or should it not be produced in the first place?

> > >
> > > Looks like .rela.opd was maybe synthesized.  cc Dr. Weigand, whos name
> > > shows up on llvm/test/MC/PowerPC/ppc64-relocs-01.s, which is the only
> > > hit I get in the codebase of `opd` (at least for tests, still looking
> > > to see if ".opd" gets appended somewhere.
> >
> > Well, this is the old ELFv1 ABI for big-endian PowerPC, which uses
> > function descriptors, which reside in the .opd section.  These are
> > emitted by LLVM in the PPCLinuxAsmPrinter::emitFunctionEntryLabel

Ah, "official procedure descriptors" -> opd.  Christophe, do we expect
the vdso to be ELFv1 ABI?  This code in LLVM has two other cases:
1. ppc32
2. ELFv2
If it should not be ELFv1, then something may be amiss in kbuild when
building for Clang; maybe Clang has a different command line option
for v2 and there's a cc-option check that's silently failing.  Maybe
clang has a different implicit default than gcc (which should be fixed
in clang if so).

The log didn't provide enough info if linking the vdso was the
problem.  computeTargetABI() in
llvm/lib/Target/PowerPC/PPCTargetMachine.cpp seems to imply that ppc64
(big endian) always uses elfv1, unless you specify a machine that
starts with "elfv2" in the ABI.

Christophe, did you test your series for big endian and little endian?
 Maybe just an issue for big endian?

> > section, and they usually do require relocations since the function
> > descriptor contains the address of the function text (however those
> > relocations should be resolved during final link).  I don't think
> > there should be much difference between GCC and LLVM in how those
> > are handled.
>
> .opd can only be resolved at link time when creating fixed position
> executables.  .opd does need dynamic relocs in PIEs or shared
> libraries.
>
> Kernel VDSO is rather special though, and I'm not up to speed with
> whatever hackery the kernel folk use to create it and/or relocate it
> when the kernel is relocated.  Quite possibly the warning should just
> be ignored.

I'm not sure if the kernel does relocations upon vdso load.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkyGQztQ9YgDOw2%2BDpcnoNXwbsOstNhDOLc6HP_Kopv-Q%40mail.gmail.com.
