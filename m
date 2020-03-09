Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC4KTLZQKGQEWPLA37Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FFF17E64E
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 19:03:56 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id v11sf7001485pgs.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 11:03:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583777035; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nb700DVowYs87GhenwArckDnFetKkDc8Re9losG5BzAjoQ1y1Y3yHxIWuVyhs7K35q
         6C1YBzMT8a1JSfsshtLKANQdWjNmA1Fr/zZ50Do8n9Sf5pegVJZlT2fJbXIR/W5oNp00
         eiwW8le1xp5ARs3eEKsP0armekEoETyMytuFniu5V6Kj7kUsvXHNE9p7CESavxdtU+v8
         A6XpPoaCe9Si7mdFLx7RhRv/hqomEOLEHOBCragQm8ys8j+ZY/cilaSy9GdRUig0F/m2
         AG6WV6Cy7jL4CG+holMauJwPdfrRFMuI4cBqUITX48LZdvdTSUV+qtFrD1cb8yHLDwFP
         m61Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=36CKqn+f+CFW1DrRdJAapNHlFB08GxLH7xqXsBriqgg=;
        b=G+knvgyDNx1jvA/hIP4otMmCLxvXEk1EK4dFU3x8xTUw/C03pMCjKEz61HRG8MAH9F
         BDNGn6/yWRs0/rARu4dy4MiHvcFAQkrE9cy8JkuQJH6ORYm4fDhbFpsYHsfkeY7SIziI
         IxOy7hIQ82XQbFwVyAp0AD9/NnIyuSmn58D78FflN+3WC9f32eivhbKEyUQxIBlRo0Ug
         6Z0jLXKz2DK5BsPtG4+6mtjkWcQzBVNmMJFHX0FhMRlT1Dsa1U5F3cimYjbN+7ij/hbD
         ZECQ/zLF/6WpjulV60ug17Fn3mbWq+hpBoYpcsJ7XDcDvKPhYnrb5jZzr3w9VX1smT5c
         hKSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PKgr4z16;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=36CKqn+f+CFW1DrRdJAapNHlFB08GxLH7xqXsBriqgg=;
        b=JNT86cJ+O0sd0EDm5xFl28lY2xutCgV5qpPnXkAOJQe7IFp1yA9l2bpmASTqNMtwEY
         9SXyCb6YOuA9A2T12kL+TQ22BMrsUKYWsMmRr50yDlMNsyZqqFPc0ClzERwjbpck8CVt
         NYCLTVkMJP0Ktv0ovp86tk7YkGaEV4lzR4uSjSjmYFH3Bm6C0SPFEEftbo84NiRoQ6wG
         Pzi0/32bIillSBhisS4KDNC/vkIA7DS99CBNNzgIExg/8e2ZTuHuakrANjJ4/zlKdKuS
         ixZIXbufugppOLtgxWJ4fHYJSAESg4Nxb9RjOGqxb1oV2U55FY06ZYITJ7J/e/AiHNJw
         mwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=36CKqn+f+CFW1DrRdJAapNHlFB08GxLH7xqXsBriqgg=;
        b=qMhilshbicHSbj5JZ7Jc5IzUG4+EA0kWkrUhtS0eIpeWNG1kbgje33tGp1crI82x48
         PN2tEfVY+0cKg6Zjl1kfBGdG1FPl/YjqvlioB2Lqxty4w+GT7qQJNdDbj5PJ6y0Rk7X6
         /EmA9DKP4+mVgWbV/6KLWXCdrwJBZ9oG1aKle9eDcHrO+JTx64S2Lb70y2W1A+RZxnTc
         n/yzEDgNXsJw0JjffarkKGPoZEOk1Aum7BNH7sMYk/9GEejshKPbTf5o4tcxkrfRPrBM
         eRcq4wTHz2YFz1IIqwyKEoVJpKRhwqTwd+IfVX8Qbr42tL0XtSmmGOeUT2+aJ9u1/CU8
         tEZg==
X-Gm-Message-State: ANhLgQ15aReKRB0Pp2n3V/vh4sP8glLX0xVlthUpxih7zVvVZ+ThZriZ
	6xdBsx6vvWAIdg5h6WugY7M=
X-Google-Smtp-Source: ADFU+vv+HtSJWWUwg61G9AGGNkKs0BWc/vLuGVSQFTVV7SBRGb0n3QQ6iatdO1a1HbggcUhPLn9+uw==
X-Received: by 2002:aa7:85c8:: with SMTP id z8mr17316786pfn.66.1583777035124;
        Mon, 09 Mar 2020 11:03:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1c88:: with SMTP id c130ls3702916pfc.7.gmail; Mon, 09
 Mar 2020 11:03:54 -0700 (PDT)
X-Received: by 2002:a63:af58:: with SMTP id s24mr17430798pgo.15.1583777034535;
        Mon, 09 Mar 2020 11:03:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583777034; cv=none;
        d=google.com; s=arc-20160816;
        b=0EhCnjmOGLlFsyE4338BHEG7WdpsqZ0KCMx1Rufo0e7R350K10P8BjMbjvjtlPtDSu
         Tv/jG1wu8pW+UvxwmcwPmXJj8deJag92DJOknoWO/rPbmKAwbJoC7VchT4MRoMjqfFw8
         6dXtvUipe0hJ52QRzr1oqQLaicQaLG13jXxrFh4HVmJ/3+Rcu0ZO1RapFPp8a1wu/+ZB
         1jiSQZmlIXWNmDa+Y5CGUP9NjGq4RFkcbpTQPC0sG7jaEoAXSljQ6MvUuGa88Ila2iHF
         fA+aJ7HG+RgjvdA1ETxiYi+neonBVfEv3BauYbr8ev+d/H5U1UPEWcIEVngmPqkdC8U3
         gVdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CRqW+YTfEk6ZcrgFOv+tSfDj6Vrb4aubLry930Wg2+U=;
        b=WcxJWw8Ya4BQUhwWTLrcQhfYb5ZIqK/B0Rw1g9WVQEJIaSKlY38On+r94vXZEq3G3R
         +inNc1aO1Iq3teP0IjrN2KeE97WahVegIvefQGMb6vmmU37sO8qkctGdtTYpim2nRQDb
         GWRisFLEaqzInnlRca+hvmexLIXuJXBgKiCPsbjp+PlWi8N7pTWn3dFgeyR/03naqGSH
         dkT28sfWxEY4f8enrOrO1u5mzXhuuvRb8MrPKWpb+m3QWDyMMqquRwZj4BVn182O2mAw
         1xIZmLqhSaMU2l8YuVQ/g9luP8vdPez+J9Y47ZxBhSCZTxXFvqwhPPdf5J66mhqB0ehm
         fP9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PKgr4z16;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id z7si198916pgz.5.2020.03.09.11.03.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 11:03:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id j20so4296821pll.6
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 11:03:54 -0700 (PDT)
X-Received: by 2002:a17:90b:8f:: with SMTP id bb15mr173466pjb.186.1583777033650;
 Mon, 09 Mar 2020 11:03:53 -0700 (PDT)
MIME-Version: 1.0
References: <202003060916.RI5pROBS%lkp@intel.com> <CAKwvOdkNXFFzw4fBBzSMf2rUd3hV5Vt=11ONLf4nX4FrcmHFcQ@mail.gmail.com>
 <87k13ulyho.fsf@intel.com>
In-Reply-To: <87k13ulyho.fsf@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Mar 2020 11:03:41 -0700
Message-ID: <CAKwvOd=eHp8ZkS4B-GY9fbaUXS5wNxZQbU+eV6wbsXQ_69bieg@mail.gmail.com>
Subject: Re: [jani:device-info-inheritance-v3 3/19] drivers/gpu/drm/i915/i915_pci.c:212:2:
 error: initializer element is not a compile-time constant
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PKgr4z16;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Mon, Mar 9, 2020 at 1:32 AM Jani Nikula <jani.nikula@linux.intel.com> wr=
ote:
>
> On Fri, 06 Mar 2020, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > Based on the tree, I think this report was meant to go to Jani (cc'ed)?
>
> It baffles me that the build bot burns resources on building random
> branches in my personal repositories.

It uses a branch naming convention to avoid testing branches:
https://github.com/intel/lkp-tests/wiki/LKP-FAQ#is-there-a-way-not-to-trigg=
er-kbuild-tests-on-a-specific-branch

But in this case, it seems it caught a build breakage even further
upstream, which is valuable, right?

>
> That said, this builds on GCC 8 just fine. Is clang not able to do this?

Places that require integer constant expressions can be very subtle.
See this recent example in i915 for example:
https://github.com/ClangBuiltLinux/linux/issues/918
Sometimes reproducing also depends on some configs.  In this case,
it's not as I've fetched your branch and can repro on defconfig.

This is definitely our bug: https://bugs.llvm.org/show_bug.cgi?id=3D45157

> Sad trombone. Pretty much blocks what I thought was a nice cleanup from
> illegible macros to plain C code.
>
>
> BR,
> Jani.
>
>
> >
> > On Thu, Mar 5, 2020 at 5:31 PM kbuild test robot <lkp@intel.com> wrote:
> >>
> >> tree:   git://people.freedesktop.org/~jani/drm device-info-inheritance=
-v3
> >> head:   6e8df0961b60ee4c69a95e9304bcb14e85ba4803
> >> commit: c8b57de4e93bccfcabe9e32bb4fe8219d3633049 [3/19] drm/i915: stor=
e color info in const structs instead of macros
> >> config: x86_64-allyesconfig (attached as .config)
> >> compiler: clang version 11.0.0 (git://gitmirror/llvm_project f70e7dc17=
d78a83265a89158ee549f1147d7d500)
> >> reproduce:
> >>         # FIXME the reproduce steps for clang is not ready yet
> >>
> >> If you fix the issue, kindly add following tag
> >> Reported-by: kbuild test robot <lkp@intel.com>
> >>
> >> All errors (new ones prefixed by >>):
> >>
> >> >> drivers/gpu/drm/i915/i915_pci.c:212:2: error: initializer element i=
s not a compile-time constant
> >>            I830_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:189:11: note: expanded from macro '=
I830_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:217:2: error: initializer element i=
s not a compile-time constant
> >>            I845_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:207:11: note: expanded from macro '=
I845_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:222:2: error: initializer element i=
s not a compile-time constant
> >>            I830_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:189:11: note: expanded from macro '=
I830_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:228:2: error: initializer element i=
s not a compile-time constant
> >>            I845_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:207:11: note: expanded from macro '=
I845_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:247:2: error: initializer element i=
s not a compile-time constant
> >>            GEN3_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro '=
GEN3_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:258:2: error: initializer element i=
s not a compile-time constant
> >>            GEN3_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro '=
GEN3_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:271:2: error: initializer element i=
s not a compile-time constant
> >>            GEN3_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro '=
GEN3_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:282:2: error: initializer element i=
s not a compile-time constant
> >>            GEN3_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro '=
GEN3_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:296:2: error: initializer element i=
s not a compile-time constant
> >>            GEN3_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro '=
GEN3_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:303:2: error: initializer element i=
s not a compile-time constant
> >>            GEN3_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro '=
GEN3_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:310:2: error: initializer element i=
s not a compile-time constant
> >>            GEN3_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro '=
GEN3_FEATURES'
> >>            .color =3D i9xx_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:333:2: error: initializer element i=
s not a compile-time constant
> >>            GEN4_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro '=
GEN4_FEATURES'
> >>            .color =3D i965_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:341:2: error: initializer element i=
s not a compile-time constant
> >>            GEN4_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro '=
GEN4_FEATURES'
> >>            .color =3D i965_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:352:2: error: initializer element i=
s not a compile-time constant
> >>            GEN4_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro '=
GEN4_FEATURES'
> >>            .color =3D i965_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:359:2: error: initializer element i=
s not a compile-time constant
> >>            GEN4_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro '=
GEN4_FEATURES'
> >>            .color =3D i965_colors, \
> >>                     ^~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:384:2: error: initializer element i=
s not a compile-time constant
> >>            GEN5_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:379:11: note: expanded from macro '=
GEN5_FEATURES'
> >>            .color =3D ilk_colors, \
> >>                     ^~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:389:2: error: initializer element i=
s not a compile-time constant
> >>            GEN5_FEATURES,
> >>            ^~~~~~~~~~~~~
> >>    drivers/gpu/drm/i915/i915_pci.c:379:11: note: expanded from macro '=
GEN5_FEATURES'
> >>            .color =3D ilk_colors, \
> >>
> >> vim +212 drivers/gpu/drm/i915/i915_pci.c
> >>
> >> da1184cd41d4c6b Matthew Auld          2019-10-18  172
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  173  #defi=
ne I830_FEATURES \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  174   GEN(=
2), \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  175   .is_=
mobile =3D 1, \
> >> 8d8b00318593e28 Jani Nikula           2019-09-11  176   .pipe_mask =3D=
 BIT(PIPE_A) | BIT(PIPE_B), \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  177   .dis=
play.has_overlay =3D 1, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  178   .dis=
play.cursor_needs_physical =3D 1, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  179   .dis=
play.overlay_needs_physical =3D 1, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  180   .dis=
play.has_gmch =3D 1, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  181   .gpu=
_reset_clobbers_display =3D true, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  182   .hws=
_needs_physical =3D 1, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  183   .unf=
enced_needs_alignment =3D 1, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  184   .eng=
ine_mask =3D BIT(RCS0), \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  185   .has=
_snoop =3D true, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  186   .has=
_coherent_ggtt =3D false, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  187   I9XX=
_PIPE_OFFSETS, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  188   I9XX=
_CURSOR_OFFSETS, \
> >> c8b57de4e93bccf Jani Nikula           2020-03-05  189   .color =3D i9x=
x_colors, \
> >> 2411ccdddd53007 Jani Nikula           2020-03-05  190   .page_sizes =
=3D GEN_DEFAULT_PAGE_SIZES, \
> >> 980a85a19e6db48 Jani Nikula           2020-03-05  191   .memory_region=
s =3D GEN_DEFAULT_REGIONS
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  192
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  193  #defi=
ne I845_FEATURES \
> >> bc76298e68e791f Chris Wilson          2018-02-15  194   GEN(2), \
> >> 8d8b00318593e28 Jani Nikula           2019-09-11  195   .pipe_mask =3D=
 BIT(PIPE_A), \
> >> d53db442db36fdb Jos=C3=A9 Roberto de Souza 2018-11-30  196   .display.=
has_overlay =3D 1, \
> >> d53db442db36fdb Jos=C3=A9 Roberto de Souza 2018-11-30  197   .display.=
overlay_needs_physical =3D 1, \
> >> b2ae318acdcaf1c Rodrigo Vivi          2019-02-04  198   .display.has_g=
mch =3D 1, \
> >> 55277e1f3107c0b Chris Wilson          2019-01-03  199   .gpu_reset_clo=
bbers_display =3D true, \
> >> 3177659a41cc436 Carlos Santa          2016-08-17  200   .hws_needs_phy=
sical =3D 1, \
> >> f4ce766f28cd0ef Chris Wilson          2017-03-25  201   .unfenced_need=
s_alignment =3D 1, \
> >> 8a68d464366efb5 Chris Wilson          2019-03-05  202   .engine_mask =
=3D BIT(RCS0), \
> >> 5d95c24867aea8a Chris Wilson          2017-09-06  203   .has_snoop =3D=
 true, \
> >> 900ccf30f9e112b Chris Wilson          2018-07-20  204   .has_coherent_=
ggtt =3D false, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  205   I845=
_PIPE_OFFSETS, \
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  206   I845=
_CURSOR_OFFSETS, \
> >> c8b57de4e93bccf Jani Nikula           2020-03-05  207   .color =3D i9x=
x_colors, \
> >> 2411ccdddd53007 Jani Nikula           2020-03-05  208   .page_sizes =
=3D GEN_DEFAULT_PAGE_SIZES, \
> >> 980a85a19e6db48 Jani Nikula           2020-03-05  209   .memory_region=
s =3D GEN_DEFAULT_REGIONS
> >> 0eec8dc7f628a8d Carlos Santa          2016-08-17  210
> >> 31409fff1a392fa Lucas De Marchi       2019-12-24  211  static const st=
ruct intel_device_info i830_info =3D {
> >> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05 @212   I830=
_FEATURES,
> >> c5cb21c17a169ee Chris Wilson          2018-02-15  213   PLATFORM(INTEL=
_I830),
> >> 42f5551d276921d Chris Wilson          2016-06-24  214  };
> >> 42f5551d276921d Chris Wilson          2016-06-24  215
> >>
> >> :::::: The code at line 212 was first introduced by commit
> >> :::::: 37fbbd49054b624400a65cf1a39f152a7f3f4749 drm/i915: Populate pip=
e_offsets[] & co. accurately
> >>
> >> :::::: TO: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> >> :::::: CC: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> >>
> >> ---
> >> 0-DAY CI Kernel Test Service, Intel Corporation
> >> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >>
> >> --
> >> You received this message because you are subscribed to the Google Gro=
ups "Clang Built Linux" group.
> >> To unsubscribe from this group and stop receiving emails from it, send=
 an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/m=
sgid/clang-built-linux/202003060916.RI5pROBS%25lkp%40intel.com.
>
> --
> Jani Nikula, Intel Open Source Graphics Center



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DeHp8ZkS4B-GY9fbaUXS5wNxZQbU%2BeV6wbsXQ_69bieg%4=
0mail.gmail.com.
