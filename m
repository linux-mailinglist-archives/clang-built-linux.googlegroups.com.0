Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJERRLZQKGQEKYGO3FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4D717C469
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 18:30:14 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id l62sf1907126ioa.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 09:30:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583515813; cv=pass;
        d=google.com; s=arc-20160816;
        b=wLz7ITKxM0LuxwJbli46pj/kVVy5flcrkA1XVqRvIzqKJfIyR5Aj/nJfS1x53Ub1WS
         IaPmoPm6FGucBWt4IiapxiIUqVVdDGfwO9Oepa4S8IPbZcYNPmwB/kRn3LcpW4dlCHMm
         e7StUxpc4McL6yldI3YSPD1GgSm0mc3lZv22v0UgXw+CBIres3VRfA9uDd1HgA58Nop2
         mqjrN9OQ1IseebNfaw09vl1COHJrbOZqNg5/XpVuc8PjjNUnVFHqT+YoMYTYVgY/X8lf
         1mTUoHWv6sEzAI94EHA65Y3Hizm//S2wz2KcuWUDP4lUp6WfsDgEUxUif/r8po0pCl29
         Xb2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e1DW1ILuWyR80T1NTjOQMCEYSuCNfwaOH3UqOj3kqRI=;
        b=lCCYd3bdow3q2htjTMG0pLLeX59HGj7DfUIxiVT+LDaSL/ZdGDI65smAHBBLLST2yU
         kmcg342KV6iNyZmnSUnq8m4YlZvZsRqFFhufh8jSVVQFCtOfDzYcpCqNHn+lXxMiQh9j
         nl2D/0SWZwWUuc1qeAQkZWRL0+nvzNEcoGHG19u7496aePawtFuQKQrZKrjl0W2nP+YP
         ZwipU1kUpTSokIOlFRcex3UXx/vCnI0rDVg2ZpssVrY9yg+XS3Ufd/p60BamYgpYAJh7
         onqzh69l7qUrJzUrMXtkcYACW1o1YIxoS6b4FA4XN521dR7nveKefS6q0IUv2vpJcxXi
         HemA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HKny3jEQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=e1DW1ILuWyR80T1NTjOQMCEYSuCNfwaOH3UqOj3kqRI=;
        b=akj0JLHSMsElLLqLTiRu8f6/Uc7rpUA+IjO3NFHW/QsOWCYU6Wn/uT/cdNg0znNFPp
         MMqVuiEY771zK54H0PaQeeWjvmoOXnv+yLQKLv0Xwu68jx8w38A1ERJulQjPeYA7zhdW
         0RVX5a1R+I7FyF5Vh/kXnplxbRbijQl5uLilNpMjfyxYmuqiSCAWOU504RoEk0i9T9wk
         2MA6Hx8Drn75yaSYM6yP6Q8um+tkZJr9N56ah5dlQkYNzyBib5skSFf6QsfG8iy5fJbk
         LfqMBYHZF+XKMEfXwLPaQUMhyrSq0Ha4GG68HCNFAtNVtBb32yleruWX79WUFZgJpAPd
         AdAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e1DW1ILuWyR80T1NTjOQMCEYSuCNfwaOH3UqOj3kqRI=;
        b=U0XuxhOCxh4f9hp0nXjxo7WLW+Xh8NZ2s0KpJtmkd2L2Aq+IWtD/ah41kglqwh9Hi6
         S99M2jA7Dg+xQORV4LkzkhRuIPVUFHUTZWnIWT4N6DHGEJZeq50tjesJiVe0ld2IvwuH
         kxrqZsQxswRJo/Jfwn017VqlD2zhFKuwFZtvhHoU+hW1pQyn4c/vXtBzMcyeRGYlu1x6
         JHUa0/6+n6nvpbwBIWSsWwH3YHOec/BjVfcFf4gTqkr4fX1NMSJBMisrHPMF2ndKHtOi
         TjIuW3w1DTFtg9by0onPDS+WJCO5tzalo/tKR2n+euDRR8qdDJWviqN/cSPtILt1sP2l
         QuZQ==
X-Gm-Message-State: ANhLgQ0IKZGsoGJKPH1yAXojuKnevFL5Z77LHsnL75W2huvY7mTnZdLO
	JF10he6H2yXNAob12dodZbA=
X-Google-Smtp-Source: ADFU+vuIX4M+uyRVXD2CqboDHbEgg+dv1FvBr67NX/8k1jzjxPViw9uKB0UKqpokdmqL4q/aaiqupQ==
X-Received: by 2002:a92:5fdb:: with SMTP id i88mr3981368ill.118.1583515813059;
        Fri, 06 Mar 2020 09:30:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9057:: with SMTP id v23ls419881ioq.5.gmail; Fri, 06 Mar
 2020 09:30:12 -0800 (PST)
X-Received: by 2002:a6b:c742:: with SMTP id x63mr3908898iof.162.1583515812624;
        Fri, 06 Mar 2020 09:30:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583515812; cv=none;
        d=google.com; s=arc-20160816;
        b=ITmBcV17K3vX9u8HPSwUySp/W+VhQ+kq+DgS5+fPNExQydnusjX6DeUMEvcAZYAYHI
         Icyac+KxbR687e+XQxpGxrUCQ3JTK1zXrhjg+MNYJXXjJhweRd7VjUQ2593CnO+7QKtj
         1tczJzJNBDSTiieKhTBuH3sqgwikNFDiU6sGbyt/nrECF5njjePqlONgCU7nZGNJQF5a
         SOXcxDrdIwNnBPdwKFfQZ/XuYOszWTejWffTL4iNFv3CMI/PvKcfn+jAj5T3qtTqhfUE
         BXToShqB2N2K72dtp0zZWNplDMro3tCGO6JkTMa4wWfF3TDulhTn4KJfuNp5BvDEumj/
         JdNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NLd7wb9iwpNTnBtYY35p6wVGpYy01Gj2J7ciZCat/g0=;
        b=WWqz9/2oCkhnBcaqRH6DkVPPEDUO+hZJQeMAZBNLNJlagkuYRE65rn3pO0VFSytucm
         CdW6rqX2SJrPXJQP65RW7gBVTxrft5zMv142l9f1r3Muh9DoMR5sUSAFp9oAQl5eKCII
         rVFjdw1yBO2BZComxUgEZbUYbxrFtBQGX/LLcncZD/3mu0Gplfns7QWsGXlqEYBwJghA
         6Hqhjiqan0yB/VKt2evMDrMVLu/RkRimg3qTaNCtCQ177dOR8sII2GQXcxn5bjcAWoUf
         SK+dDdUrp+fsq02bnl8iMHeLd6svV7c8Teh5unv0uVmLeVAgZIw0n8sldQdRHyYdFUVm
         h1pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HKny3jEQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id t64si144841iof.2.2020.03.06.09.30.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 09:30:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id z12so1386380pgl.4
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 09:30:12 -0800 (PST)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr4269321pge.10.1583515811449;
 Fri, 06 Mar 2020 09:30:11 -0800 (PST)
MIME-Version: 1.0
References: <202003060916.RI5pROBS%lkp@intel.com>
In-Reply-To: <202003060916.RI5pROBS%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Mar 2020 09:30:00 -0800
Message-ID: <CAKwvOdkNXFFzw4fBBzSMf2rUd3hV5Vt=11ONLf4nX4FrcmHFcQ@mail.gmail.com>
Subject: Re: [jani:device-info-inheritance-v3 3/19] drivers/gpu/drm/i915/i915_pci.c:212:2:
 error: initializer element is not a compile-time constant
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HKny3jEQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534
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

Based on the tree, I think this report was meant to go to Jani (cc'ed)?

On Thu, Mar 5, 2020 at 5:31 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   git://people.freedesktop.org/~jani/drm device-info-inheritance-v3
> head:   6e8df0961b60ee4c69a95e9304bcb14e85ba4803
> commit: c8b57de4e93bccfcabe9e32bb4fe8219d3633049 [3/19] drm/i915: store c=
olor info in const structs instead of macros
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project f70e7dc17d78=
a83265a89158ee549f1147d7d500)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/gpu/drm/i915/i915_pci.c:212:2: error: initializer element is n=
ot a compile-time constant
>            I830_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:189:11: note: expanded from macro 'I83=
0_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:217:2: error: initializer element is n=
ot a compile-time constant
>            I845_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:207:11: note: expanded from macro 'I84=
5_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:222:2: error: initializer element is n=
ot a compile-time constant
>            I830_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:189:11: note: expanded from macro 'I83=
0_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:228:2: error: initializer element is n=
ot a compile-time constant
>            I845_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:207:11: note: expanded from macro 'I84=
5_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:247:2: error: initializer element is n=
ot a compile-time constant
>            GEN3_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GEN=
3_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:258:2: error: initializer element is n=
ot a compile-time constant
>            GEN3_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GEN=
3_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:271:2: error: initializer element is n=
ot a compile-time constant
>            GEN3_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GEN=
3_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:282:2: error: initializer element is n=
ot a compile-time constant
>            GEN3_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GEN=
3_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:296:2: error: initializer element is n=
ot a compile-time constant
>            GEN3_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GEN=
3_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:303:2: error: initializer element is n=
ot a compile-time constant
>            GEN3_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GEN=
3_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:310:2: error: initializer element is n=
ot a compile-time constant
>            GEN3_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GEN=
3_FEATURES'
>            .color =3D i9xx_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:333:2: error: initializer element is n=
ot a compile-time constant
>            GEN4_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro 'GEN=
4_FEATURES'
>            .color =3D i965_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:341:2: error: initializer element is n=
ot a compile-time constant
>            GEN4_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro 'GEN=
4_FEATURES'
>            .color =3D i965_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:352:2: error: initializer element is n=
ot a compile-time constant
>            GEN4_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro 'GEN=
4_FEATURES'
>            .color =3D i965_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:359:2: error: initializer element is n=
ot a compile-time constant
>            GEN4_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro 'GEN=
4_FEATURES'
>            .color =3D i965_colors, \
>                     ^~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:384:2: error: initializer element is n=
ot a compile-time constant
>            GEN5_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:379:11: note: expanded from macro 'GEN=
5_FEATURES'
>            .color =3D ilk_colors, \
>                     ^~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:389:2: error: initializer element is n=
ot a compile-time constant
>            GEN5_FEATURES,
>            ^~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_pci.c:379:11: note: expanded from macro 'GEN=
5_FEATURES'
>            .color =3D ilk_colors, \
>
> vim +212 drivers/gpu/drm/i915/i915_pci.c
>
> da1184cd41d4c6b Matthew Auld          2019-10-18  172
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  173  #define =
I830_FEATURES \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  174   GEN(2),=
 \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  175   .is_mob=
ile =3D 1, \
> 8d8b00318593e28 Jani Nikula           2019-09-11  176   .pipe_mask =3D BI=
T(PIPE_A) | BIT(PIPE_B), \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  177   .displa=
y.has_overlay =3D 1, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  178   .displa=
y.cursor_needs_physical =3D 1, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  179   .displa=
y.overlay_needs_physical =3D 1, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  180   .displa=
y.has_gmch =3D 1, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  181   .gpu_re=
set_clobbers_display =3D true, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  182   .hws_ne=
eds_physical =3D 1, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  183   .unfenc=
ed_needs_alignment =3D 1, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  184   .engine=
_mask =3D BIT(RCS0), \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  185   .has_sn=
oop =3D true, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  186   .has_co=
herent_ggtt =3D false, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  187   I9XX_PI=
PE_OFFSETS, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  188   I9XX_CU=
RSOR_OFFSETS, \
> c8b57de4e93bccf Jani Nikula           2020-03-05  189   .color =3D i9xx_c=
olors, \
> 2411ccdddd53007 Jani Nikula           2020-03-05  190   .page_sizes =3D G=
EN_DEFAULT_PAGE_SIZES, \
> 980a85a19e6db48 Jani Nikula           2020-03-05  191   .memory_regions =
=3D GEN_DEFAULT_REGIONS
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  192
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  193  #define =
I845_FEATURES \
> bc76298e68e791f Chris Wilson          2018-02-15  194   GEN(2), \
> 8d8b00318593e28 Jani Nikula           2019-09-11  195   .pipe_mask =3D BI=
T(PIPE_A), \
> d53db442db36fdb Jos=C3=A9 Roberto de Souza 2018-11-30  196   .display.has=
_overlay =3D 1, \
> d53db442db36fdb Jos=C3=A9 Roberto de Souza 2018-11-30  197   .display.ove=
rlay_needs_physical =3D 1, \
> b2ae318acdcaf1c Rodrigo Vivi          2019-02-04  198   .display.has_gmch=
 =3D 1, \
> 55277e1f3107c0b Chris Wilson          2019-01-03  199   .gpu_reset_clobbe=
rs_display =3D true, \
> 3177659a41cc436 Carlos Santa          2016-08-17  200   .hws_needs_physic=
al =3D 1, \
> f4ce766f28cd0ef Chris Wilson          2017-03-25  201   .unfenced_needs_a=
lignment =3D 1, \
> 8a68d464366efb5 Chris Wilson          2019-03-05  202   .engine_mask =3D =
BIT(RCS0), \
> 5d95c24867aea8a Chris Wilson          2017-09-06  203   .has_snoop =3D tr=
ue, \
> 900ccf30f9e112b Chris Wilson          2018-07-20  204   .has_coherent_ggt=
t =3D false, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  205   I845_PI=
PE_OFFSETS, \
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  206   I845_CU=
RSOR_OFFSETS, \
> c8b57de4e93bccf Jani Nikula           2020-03-05  207   .color =3D i9xx_c=
olors, \
> 2411ccdddd53007 Jani Nikula           2020-03-05  208   .page_sizes =3D G=
EN_DEFAULT_PAGE_SIZES, \
> 980a85a19e6db48 Jani Nikula           2020-03-05  209   .memory_regions =
=3D GEN_DEFAULT_REGIONS
> 0eec8dc7f628a8d Carlos Santa          2016-08-17  210
> 31409fff1a392fa Lucas De Marchi       2019-12-24  211  static const struc=
t intel_device_info i830_info =3D {
> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05 @212   I830_FE=
ATURES,
> c5cb21c17a169ee Chris Wilson          2018-02-15  213   PLATFORM(INTEL_I8=
30),
> 42f5551d276921d Chris Wilson          2016-06-24  214  };
> 42f5551d276921d Chris Wilson          2016-06-24  215
>
> :::::: The code at line 212 was first introduced by commit
> :::::: 37fbbd49054b624400a65cf1a39f152a7f3f4749 drm/i915: Populate pipe_o=
ffsets[] & co. accurately
>
> :::::: TO: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> :::::: CC: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/202003060916.RI5pROBS%25lkp%40intel.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkNXFFzw4fBBzSMf2rUd3hV5Vt%3D11ONLf4nX4FrcmHFcQ%40m=
ail.gmail.com.
