Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4N4ZLVQKGQEK7BDQDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 89715ABF11
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 19:59:14 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id n9sf3783374pgq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 10:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567792753; cv=pass;
        d=google.com; s=arc-20160816;
        b=zAh1a7RkKoktYSJtItPtts00izB0mA9ztHf/8er1thb0RFV9CG++PeVWRkXy92/2XM
         fThUFW2Z1rOFT+2glsrdS7kK7eEZQyaF8jUe2SwQsU0C1tsCRI9WtSj/H/CiuvlQUqD0
         fE8yYpMJV2cn6B1Lj17GxcBxfLp4zU1qgFYH8rC3nGnRN8II3Wzo3TVMXNYK/iBAXZxR
         z5p+ySXSL4Y1wF7wtFWsVdgBCzn2r+aHV+cPTWjHsoXmytIixHU5ebfB2TcLJ6R25nFj
         cDEaFrXeSa9uE1z3bzavMK+SdHeQV3rKYb3b2GcfswK/tUIBNTeunmGmDm1dVJ823Ayh
         do1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=j9rmUTtK/qkkRKmvj5ZeQh4Behw/4YtbY1W+Skt67AM=;
        b=uQhQsV8nM6RJNWoBfc299yXKRv8Ht/VoWd5QdJ57+geUp3Q1eF+WOWoN3RCwtjVOpf
         8vyBUkDPFWEsP9aIPHzPwigcCk1Ns/GrnFM0PPJCOBB2YXVea16mMcwBHFD5ck9wbAiH
         5pK2mb8/i26tXBxVgJkWw3Jl3OOIIJaCr/Di0lTuYv9z9BhlEcJsqOijLo7d2JfXs5Yp
         U8l5ZLffg6g/+hNqoXFwZ+W7lh2JNLcef2ZVfsjUVwuUfrWfv8VDnWDK4dAFLS9w4n3g
         PLF+htkF/ZQt5tflbFli/YRau13duM6jopjh9vN1X8m1T9V4TPe8REOaSva+mnNTSiQ6
         If6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dzt3scRZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j9rmUTtK/qkkRKmvj5ZeQh4Behw/4YtbY1W+Skt67AM=;
        b=k/kHDeW1+l5P1btNqQMBJe06x6hq0DmEWbSuey2YEEc930VPU8P9/1/TMjTwAv4rff
         jbfy591DKzCpiFGyiMRFE14iAi0UgGhkv6hzRL7Muw45h0rnR0eUpSXOktqkejjNpoex
         dHMiiE7uo7Qhqv4ClMKK7XUY0KuInJnNOIeKtV1UNtnBrupKHF5ZpusDo2oG9QRCKMdG
         SBTKrQFX1q5W+xwBrzzFEVKYcJVttVP8xgkk9CgdPvFJkGW4hVvSl+0Y6/i/5D32ue/F
         yhXu+exWreodD3ARRCBIllE13ndYO9vDXdqyrprkbtPST7h42FGzjyB2dsLm7V61EIg7
         Kg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j9rmUTtK/qkkRKmvj5ZeQh4Behw/4YtbY1W+Skt67AM=;
        b=pqohsxn6REgKaQvIGHJ4d2a2rdAumzMRA8ny/vD/0VEZrbJ8CjWmx31dco73aDJrws
         S7FkXpdfUeRIBElIKWYDmtYFT2dIi+Q3Y6zdZB2tz6pA2OM325R+hOpnjS/a2w96pRrp
         FbQUn+FXc8uxTZAsSXnfAHQ4ekdC8OyfxbyjD3paO/aZcMTMtdW0m2vb4Cu7keWPZADO
         LgITj5y4HEwLy7t2CcYezFxm0jFUeT2TNOAf2DonFYFMYUd9IvknqfVYcSwBik+4AB52
         32hQtjcOiAsK/b8/MfCdE7HMBB8kefHaz90ztTObL7WB8h1vSi9N+ny3KnyfkauCQA5q
         KJrQ==
X-Gm-Message-State: APjAAAWx7GYNgRclYYN/vyOyUqv6aKuVK8q9h8E/lcVKcl9tSTW+gKaF
	wu87y/n9m7flOOVW3vVv2h4=
X-Google-Smtp-Source: APXvYqzCExo5hl4Y+FHqK059+c657Waz1spu5+l9iuBHwMh0hiYggeiLGFRr/pu7gKOeAMNQcS+S1A==
X-Received: by 2002:a17:90a:8a02:: with SMTP id w2mr9997215pjn.131.1567792753219;
        Fri, 06 Sep 2019 10:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2b4e:: with SMTP id r75ls1298401pgr.0.gmail; Fri, 06 Sep
 2019 10:59:12 -0700 (PDT)
X-Received: by 2002:a65:6284:: with SMTP id f4mr9315880pgv.416.1567792752787;
        Fri, 06 Sep 2019 10:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567792752; cv=none;
        d=google.com; s=arc-20160816;
        b=uReUorwKQwC53vwQO0VObISZwoP15cVZZgqAR7sLAMwGiJiDNYsP01yaOwWoeACTq6
         ChDBvVvMCPb9tPLKDIsumhNyiiJ4JqSzN6KIZjM5MBxfkA3xiJ2Wk24wuHz1JXJJ5tJv
         w/DirTK3tsuBhDSTQbEfNp9dOudvpPwOlGaou138eEsAiP8idc5hVMj1hojpjlUfAM8U
         4hj2gzaL9qFn9v1aKHWqGmBPD74tw8MWqFKjlcHVpFcPmpMM/rAGLJlWY7dyiic6KTKn
         g3jHlx3eZj5gC5Hue7gacet7ZLygaszzw+fKTNp0JeW8f4JurBXG913HGjknYFyObehg
         NnLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ODJiJICxnTVWVQF04Eu7kH6wxtf/ybD4IW3lKYVknM4=;
        b=KD7EUAc8n1YCxwkZj4NJeSiERTbwDfGUDS0THHxcbhhasCRCrvzRTa4tFp3MEY0oQG
         T9S9rkhc2K29nslImDR2ByINwO27Ybs90ZaMpoRSil1aErudXEn18wXF4hWRl/2m9uT/
         uq5Zz5nckXvyrqNpNlEzb0NZ+yPEnXhO6cqUG5yuMNOJouNwX0swH+GjKWP0YzzkuL/B
         RR33sngzcVxpsyVHNjOd6sxG1GHwUwKLnp0UCqpp6neziHUVXLULZjIGnDUSV+Z0M2Yn
         /0aUPviCkoRTQpmTvgB2eQOdPW0WX8EbUYxJXMjv7Q/4TEXohgyz9Om1Pc1j1cW52mvm
         ptNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dzt3scRZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id a6si70986pjv.1.2019.09.06.10.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 10:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id h23so2323347uao.10
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 10:59:11 -0700 (PDT)
X-Received: by 2002:ab0:7252:: with SMTP id d18mr5066816uap.62.1567792750748;
 Fri, 06 Sep 2019 10:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com> <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
In-Reply-To: <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 10:58:59 -0700
Message-ID: <CAKwvOd=yoZAR+m78cGrwQD1pO5j8jgbZ2=6kuJPUei7p--ePUg@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Hans Wennborg <hwennborg@google.com>
Cc: Eli Friedman <efriedma@quicinc.com>, Stephen Hines <srhines@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dzt3scRZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::942
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

Thanks for the assessment.  I spoke too soon about
https://bugs.llvm.org/show_bug.cgi?id=42012 being fixed by r371111
(the obscure driver build failure).

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

My plan is to harangue reviewers today.

>
> > What's the schedule for the clang-9.0.1 release? (Sorry, I don't have
> > a good sense for timeline of LLVM releases yet)
>
> Ideally it should be released in the middle between two major
> releases, so typically December, but it varies a little.
>
> Thanks,
> Hans
>
>
>
> > > On Thu, Sep 5, 2019 at 10:35 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >>
> > >> Hans,
> > >> Can we please get r371111 in the clang-9 release? It's one of the two bugs I still know about in `asm goto`.
> > >>
> > >> The other that I'm working on furiously is:
> > >> https://bugs.llvm.org/show_bug.cgi?id=43222
> > >>
> > >> On Thu, Sep 5, 2019 at 1:23 PM Eli Friedman <efriedma@quicinc.com> wrote:
> > >>>
> > >>> Looks like it does.  Marked it fixed.
> > >>>
> > >>>
> > >>>
> > >>> -Eli
> > >>>
> > >>>
> > >>>
> > >>> From: Nick Desaulniers <ndesaulniers@google.com>
> > >>> Sent: Thursday, September 5, 2019 1:08 PM
> > >>> To: Eli Friedman <efriedma@quicinc.com>
> > >>> Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> > >>> Subject: [EXT] Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
> > >>>
> > >>>
> > >>>
> > >>> This fix also reminds me of https://bugs.llvm.org/show_bug.cgi?id=42012.  I wonder if it fixes that as well?
> > >>>
> > >>>
> > >>>
> > >>> On Thu, Sep 5, 2019 at 1:01 PM <bugzilla-daemon@llvm.org> wrote:
> > >>>
> > >>> Eli Friedman changed bug 43121
> > >>>
> > >>> What
> > >>>
> > >>> Removed
> > >>>
> > >>> Added
> > >>>
> > >>> Resolution
> > >>>
> > >>> ---
> > >>>
> > >>> FIXED
> > >>>
> > >>> Status
> > >>>
> > >>> NEW
> > >>>
> > >>> RESOLVED
> > >>>
> > >>> Comment # 4 on bug 43121 from Eli Friedman
> > >>>
> > >>> r371111.
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DyoZAR%2Bm78cGrwQD1pO5j8jgbZ2%3D6kuJPUei7p--ePUg%40mail.gmail.com.
