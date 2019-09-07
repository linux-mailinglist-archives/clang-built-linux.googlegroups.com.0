Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4MHZTVQKGQEFZKD2GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 39592AC3D0
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 03:12:19 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id f5sf4553183plr.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 18:12:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567818738; cv=pass;
        d=google.com; s=arc-20160816;
        b=LepKxNq3LJR6wK1x6dXg8tPaQaTGVdwZQjO/Uj9D9135rjPJg+AAMzVQbIu7oeE2Wz
         ehsgWaaR+6uy6OnFrtVOyudGXQORNtweNnUV7fxiVpv/R2gDRQb7egnn67Yqqvckvp5Z
         xDWBV8OPeKY1TiKbbAFaynGo/REoecyuYolcbmo0WRLdVXXLpFtchGMMXvoyULHveBvV
         5YpH5zJ+b/clycOdsusaU4I9EzHLeKgsn9vGU531aPoVnKzWHGpcTFsYen3/akP/Pp5J
         Kw20Ii+jgPy2p5jJ7x1Xc6rg6LZPEUfnpi1xEoNzDacrUU8p/mPTi6gHSxEmz3hiEiTK
         xL5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3GqOa6+ZW7qa+g24dS9tfSEN/Qxpe/QRs6/b7DsJSco=;
        b=cNekozLDK7lfOeL6scUSY+L0L5+BFAioPTUfNPhQSL+N+ujb0LhTRaOHlDSIvlLukx
         llc7lUPqeO1RDAgRigYefaJLC1yJeyvTDwJodEhiOgDjk11t8kJdWhMU8Y/r3cv5ezyh
         LBEFSqDcq0PIQQvOVYVzqA3C2XTgE/kxGFAStLKhKFXk9cKecSJWc6R+sp0Lb6uv1/xG
         fgKwARfrTVuUmukmTkpJX8u7LtXfUE8zhd0pvfDRAOUfmm58CVzr0b36AI6rUQsZBo1k
         NqQ5B1R53yRI8gKgAuLnIEgOD9rCVA/ab85u4TF52f0mBAYh1/gLvuZagq3P0T+JvhSQ
         r5Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B8lGS2eY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3GqOa6+ZW7qa+g24dS9tfSEN/Qxpe/QRs6/b7DsJSco=;
        b=htFs3ksDfu9eHMKcbL5lBOxkMJRmauabC2eQRnp3JkKvsyS+zQ+nGSOAqyflatX8vw
         9T5YqH4w4tOUeur4RIz81r5VJWCgoxKmdyf3qoc46dgvCbH3EABQVy83JsoL9ce+CX8L
         zYhIy6+ttPu5PtT4VaihbOD7uYQaDCwJ8fnBtSJMsBzT/nSM8wHbJjxnHcBelFtRL/YP
         b/1835DYUz1G+d1gyx7JanMr/MWCnyOaYnoqnMnEJyjreFMyDnyEurt9OaaYyLw5LDDh
         Q2u+vOaUSfKNfOIONEKP7NVLC3I1Oj5eGxKv7kQez2obW/IEP+yQ8r8vW/KCCWMjI99E
         EM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3GqOa6+ZW7qa+g24dS9tfSEN/Qxpe/QRs6/b7DsJSco=;
        b=tkTYiSVDUtGyr6+LE8c13Hx6m1a/7ibLdz5VO1xIpId39hYli9tQ1cmR+Ax4WRUvcd
         AIeeY01y3GZ1HrBTouyVKPc8nVaCmsyYtHU8QENryILfBLJSot9i21MEfx1XuQjo7zD3
         6K/MsxZ4qC/7TLQ7Ly76UUNTQ7bLvrtXw8pt/YUQ2xuNlAOrr2a/klU4W21zRQKYDyyF
         flZeyMtHwnGTTIB8fbqT26Gk6NhVT10aK3GCrDIp34Fz4eVSfc2WyxL8N1h32foRSkdp
         qrKtvwsc1QIFkcY0bUi+Bmm1uavvFBXVRP54sJuKRUK4jXKRZ4igMJiMLcHB0hkv/mWQ
         6c2g==
X-Gm-Message-State: APjAAAUwJCuCAQaR4GS9UN7buyCMf2xtYrsgCy9qrudP8dEYt9NXoTIh
	vTvavCEciavm3UQdspQieY4=
X-Google-Smtp-Source: APXvYqybpLb9mL4fZMmiCaugV8suWAMPqW40YBfQTfYT5R49NS9VFvvOsWP6HVs7c8JwxwLp9jAPnw==
X-Received: by 2002:a17:90a:24a8:: with SMTP id i37mr12693011pje.123.1567818737724;
        Fri, 06 Sep 2019 18:12:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2b4e:: with SMTP id r75ls1453386pgr.0.gmail; Fri, 06 Sep
 2019 18:12:17 -0700 (PDT)
X-Received: by 2002:a63:6f41:: with SMTP id k62mr10491534pgc.32.1567818737297;
        Fri, 06 Sep 2019 18:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567818737; cv=none;
        d=google.com; s=arc-20160816;
        b=l9t4JXgd9RduwF2eDvkJ0s9dUdsysp8V/bxRxTjHFLuhnodTmIESEuUmZrXirI5fb6
         6DvY0ZUlK/2sH6G3e9D6o5hytmg0o5Hw/XdCpCwGbNHxafCLp0oo8dNDAbe2kpmwAiSb
         G9omLjWJYQIdQFtYhk7vzmp7AdmfP1442hkGwNkkPNjij4bG+aSH9ALrGGYX+DaEWVAn
         97qGxDD2dnkf9MjCqRcT87KRuNVlFDK97m9XvRTAvhSSPfbR5DvZY7zJpFTipDagLvWR
         CjIJFMITp2YyNAtBfDLFcnQqzt64hVq3jifOckc6jDd3eeAB2z23Fl1ok9YziasWOJoI
         P1Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oalTBmgymJr3DpK2tOM7wRIyhgxqRioK3OdyBiq/XkY=;
        b=Uz4kbQP09feN/9bkTu0kjygTjoncQbV5rHW4/LKHIxFl400gbjtSceFvgnF+jwiQI7
         3fu3E3TntIt8CMn/UjrbW1FvdOh1pNGBLMc5DYpKHSbPM+4tIDA4JE6LmopNaCPKNT0Y
         iCoQIwLjQf+uV/3Q4F/U70Z+3GqSVN68dg0hGAV1I+enLT7VXUqmSx+oYTw88jnfsWhk
         pCi2SeFfxyrQV4LZAMYV8IrBIQpHPkkzRqW9zs4ER2nqO0md54snjck1TpFZEvThfRnQ
         VLswUoVNhjNwwapz1c1vqIFWPJRKh3JuS/FrF4a7/8x0+54sUnumMdQJXx7tig536D4J
         byTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B8lGS2eY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j125si244347pfb.1.2019.09.06.18.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 18:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y5so2956023pfo.4
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 18:12:17 -0700 (PDT)
X-Received: by 2002:a17:90a:c210:: with SMTP id e16mr12509392pjt.123.1567818736424;
 Fri, 06 Sep 2019 18:12:16 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com> <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
In-Reply-To: <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 18:12:04 -0700
Message-ID: <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Hans Wennborg <hwennborg@google.com>
Cc: Eli Friedman <efriedma@quicinc.com>, Stephen Hines <srhines@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B8lGS2eY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Fri, Sep 6, 2019 at 10:46 AM Hans Wennborg <hwennborg@google.com> wrote:
>
> Thanks for the detailed reply!
>
> On Fri, Sep 6, 2019 at 7:03 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Fri, Sep 6, 2019 at 1:10 AM Hans Wennborg <hwennborg@google.com> wrote:
> > >
> > > I'm a bit nervous about taking changes to the optimizer so close to the release. If we take them, they would be shipping with very little testing..
> >
> > Let me tell you the current issues, then I'll trust your judgement on
> > the risk assessment.  I want these things to soak, but I also don't
> > want to finally ship "asm goto" support that's not usable out of the
> > box.
> >
> > > I've left a comment on r371111, and I see the fix for PR43222 is in review but not committed yet.
> >
> > Link: https://reviews.llvm.org/D67203#1660386.
> >
> > > How bad would it be if these fixes have to wait for 9.0.1 instead? I.e. what is broken for the end user here? Does the kernel no longer build with clang 9?
> >
> > One is a build failure for an obscure driver, one is a boot failure
> > for all builds of one ISA.
> >
> > When someone builds a linux kernel, they first have to configure it,
> > which is mainly selecting which drivers to support but some options
> > have much larger consequences.  Typical configurations folks use for
> > testing are "defconfig" which is a curated list of sane configuration
> > options, and "allyesconfig" which turns on as many configurations as
> > possible.
> >
> > Of the 2 patches I'm requesting for clang 9.0, the IfConverter
> > (https://reviews.llvm.org/D67203) fixes a compile error for a lone
> > driver for an arm32 allyesconfig build.  That driver is for some
> > obscure piece of hardware and isn't critical, but "allyesconfig" arm32
> > kernel builds are broken without it.  I think IfConverter is only used
> > for ISAs w/ predication, so Eli's change may affect other ISAs than
> > arm32 (I don't know who else uses predication).  Our arm32 support is
> > a little behind relative to arm64 and x86_64, and we can always
> > disable this driver when building w/ clang-9, but I'm hoping we don't
> > add things to the kernel that ban specific releases of a compiler (ie.
> > clang-9.0 is banned but clang-9.0.1 is allowed).  That said, there's
> > now three reported bugs that it fixes:
> > https://bugs.llvm.org/show_bug.cgi?id=43121
> > https://bugs.llvm.org/show_bug.cgi?id=41121
> > https://bugs.llvm.org/show_bug.cgi?id=42012
> >
> > The other fix in CallBrInst (https://reviews.llvm.org/D67252) fixes a
> > boot issue in "defconfig" builds for arm64.  arm64 kernels do
> > something insane where they detect the presence of an ARMv8.1 ISA
> > extension "LSE atomics" then patch all of their atomic instructions if
> > LSE is supported.  As soon as an arm64 kernel does any atomic
> > operation (when built w/ Clang-9), it hangs.  This is due to a recent
> > change in Linux that perturbs the control flow just enough to trigger
> > SimplifyCFG to modify the successor to a callbr (asm goto's LLVM IR
> > representation).  This change is limited to the callbr IR instruction
> > added to clang-9 for implementing the GNU C extension "asm goto" that
> > the Linux kernel makes heavy use of on all architectures for runtime
> > self modification.  While we've fixed many bugs since the initial
> > implementation landed, I worry that this one will make it such that
> > "asm goto" appears outright broken in clang-9 and that the kernel
> > community would move to ban clang-9 from being used to compile the
> > kernel.
> >
> > Some relevant threads for debugging the atomics bug:
> > https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678330.html
> > https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678479.html
> > https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678484.html
> > https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678493.html
> >
> > If I had to choose, both are important to me, but I worry that the bug
> > fixed by https://reviews.llvm.org/D67252 is probably pervasive, and
> > likely to make `asm goto` unusable in clang-9 with more changes to the
> > kernel sources.
> >
> > How much time do we have until you wrap the clang-9 release?  Would
> > there be a few days to soak these to avoid any potential reverts of
> > these patches immediately after they land that would then need to also
> > be cherry picked into clang-9?
>
> The release is on overtime since August 28th. That's no cause for
> alarm since we usually slip a little, but I really don't want to slip
> too much.
>
> These do seem worth waiting for; there's no point shipping on time if
> we're not shipping something good.
>
> If the one in review lands soon, we can ship them immediately in rc4
> and let them bake in trunk in parallel. If something comes up, we'd do
> another release candidate with the fix, and if nothing comes up within
> some number of days we could tag rc4 as final.
>
> > What's the schedule for the clang-9.0.1 release? (Sorry, I don't have
> > a good sense for timeline of LLVM releases yet)
>
> Ideally it should be released in the middle between two major
> releases, so typically December, but it varies a little.

Cool, just landed my fix, and Eli put up another patch that fixes the
arm32 issue for me (big thanks Eli).  So having:
- https://reviews.llvm.org/D67306
- https://reviews.llvm.org/rG7a7bba289521e6d4da199565cf72dc9eaed3d671

in clang-9 and then that's zero bugs related to asm goto that I'm aware of.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DvmQL6pJVCGkxee3LQUEPOyeGG1AH%2Bsyya-FF4gGtpaA%40mail.gmail.com.
