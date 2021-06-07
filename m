Return-Path: <clang-built-linux+bncBDYNZRF55MFBBBVD7CCQMGQEUMFZW5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9DC39DC6A
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 14:31:04 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id f7-20020a9d5e870000b02902f479dba730sf11343400otl.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 05:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ahgmk42QdhFrPISe3+m8eaNA+MTLEVfmcmc/EVaz080=;
        b=k3ne3GsG9+qZQW+FcEWxh9dLiA8O3AUvf9Hvr5eVt1i7GLmssEX6I+5Bq3BVBRzVxi
         VCL2qN7qdcT0WjXMcccRJdtuj75OPn9UjwbRicHZvTKZnY0k3XzEB8g+OV64mrqSGR//
         Hg4S+jpOc0qOyKNUovUv5yyavuEAudr+VDhBgCKw6G4EXceQCsnNN2ydwlwOm8+zCzRt
         PAf5TaF0i2w2fDb0X0DFA8lu792Lhx4o/LWtgadH1eiHOWQObizWW4n8m2N3k1sqxuSY
         YCljS+jCfKPSyTQwPyBSu9GcLO8NAT8IQD6f3i6UoMxYvGBFZVDCLEGytqp1xVIc8Tnn
         QOLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ahgmk42QdhFrPISe3+m8eaNA+MTLEVfmcmc/EVaz080=;
        b=hWZgigj4AOQw8BsHAL1Slx+2nnxj2vp3cJl+w1xIaGOTVQjWtZOk6EqIoko2IqJHdZ
         q/ce24bV2jRoyQeXAUdBUadpTcz7GuUqpDLlyHgjJ6JXmgZ4le9pDCK+1GUiB8hsa19I
         QM8pYkeonBy57ohZfUqBemKhIVSCZoR5B8/o++wTusEyE7uXuzfJN5tGmg4EXJ1laeEx
         1Xzom03ZNJOa8ncZcY2s4Lt0bUFzyXzmn8UH6oTFmfzf66JdO2smInDy/uomvPXLhnEF
         +Sm/pie5wAooBONQcXyZgkS803utKqUSOIOEnZ7yhSU5i2t50rtQMW2M3/+WEYD187u5
         p2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ahgmk42QdhFrPISe3+m8eaNA+MTLEVfmcmc/EVaz080=;
        b=ldcsBPNJTUBK8Vyrnywbir1WHBUECuNmDmkUtOn9eUdSUKjV5x9oskgInDc65IJC/Q
         T0essUC/CToCaxxqmAT+xzs92KSscfgBMuuslnfKLgUAEhn3LQ/vaNXn30NM9rWt8jXv
         pe2IOcyuIodbqw6G1+vG0YnzdOccztieRj3tWC0AfEYYpiXVEuF963gpSHuoxQKVpAbb
         snFGGrjCbRb4IKVZEECovKVMk//pp2WKjKEOIblgfN0chJTyC+RC0PDbITy0YW2Yhcm/
         xBPTIuGXGIdeBaMgFNnWbG/1U7a7MRd4EACNCDFJKKmKlMh9Pk/kH3QMBaDwggX/a1AG
         2nMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NxY3QomonK3TeUZixdE6YeqlwtuJIUHbx+227shjoYqv1ov0F
	HrXCN3YRUCh+HTOtbndmKGE=
X-Google-Smtp-Source: ABdhPJyJLNm4zw/FfuCCdaMalMuHY0wqfD4WfNhSF2bNUk1eVxsjBTwpu+xbkhaE7yGZdGOeDYg1YQ==
X-Received: by 2002:a4a:8241:: with SMTP id t1mr12773765oog.17.1623069062948;
        Mon, 07 Jun 2021 05:31:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:6285:: with SMTP id w127ls1755311oib.4.gmail; Mon, 07
 Jun 2021 05:31:02 -0700 (PDT)
X-Received: by 2002:a05:6808:1448:: with SMTP id x8mr11150103oiv.148.1623069062198;
        Mon, 07 Jun 2021 05:31:02 -0700 (PDT)
Date: Mon, 7 Jun 2021 05:31:01 -0700 (PDT)
From: Mathieu Acher <mathieu.acher@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <ac2dae6b-a855-4b30-bd95-7b40e5cab4ccn@googlegroups.com>
In-Reply-To: <CAK8P3a1BsNEy_Jf18-oxSjU24DPwrwzeLaT7zeujdvpW0B-0Kg@mail.gmail.com>
References: <26f81a61-e2eb-47e9-b6e0-3989582bb955n@googlegroups.com>
 <CAKwvOdmSV34MqtU+3xLSp-7gx4fnnirbsqDCenCXx=f=Tp-2tA@mail.gmail.com>
 <CAK8P3a1BsNEy_Jf18-oxSjU24DPwrwzeLaT7zeujdvpW0B-0Kg@mail.gmail.com>
Subject: Re: Building an existing .config (provided for gcc) with clang?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_488_749094677.1623069061407"
X-Original-Sender: mathieu.acher@gmail.com
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

------=_Part_488_749094677.1623069061407
Content-Type: multipart/alternative; 
	boundary="----=_Part_489_2135695115.1623069061407"

------=_Part_489_2135695115.1623069061407
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your insights and advices Nick and Arnd.=20

 > (even different versions of the same compiler can have differences)

indeed, and it's even worth than that!=20
We just experimented with Aaron Randrianaina that the same gcc version=20
(6.3) can lead olddefconfig to override some original values for .config.=
=20
Specifically, +GCC_PLUGINS y (and related options) as well as -KASAN n=20

Why? The reason was that gcc-6-plugin-dev was present in the original build=
=20
environment (Debian-based image), but not the new one!=20
Looking=20
at https://github.com/torvalds/linux/blob/master/scripts/gcc-plugins/Kconfi=
g#L12=20
and gcc-plugins.sh, and retrospectively, it makes sense.=20
I am even tempting to say "it's obvious", but I won't since I spend a=20
couple of times to understand it ;)

tldr; controlling in a fine-grained way the build environment is very=20
important for reproducible build=20

Le mercredi 2 juin 2021 =C3=A0 20:50:20 UTC+2, Arnd Bergmann a =C3=A9crit :

> On Wed, Jun 2, 2021 at 8:31 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-bu...@googlegroups.com> wrote:
> > On Wed, Jun 2, 2021 at 3:13 AM Mathieu Acher <mathie...@gmail.com>=20
> wrote:
> > >
> > > tldr; some "fixes" seem needed to build an arbitrary .config with gcc=
=20
> *and* clang
> > >
> > > I'm investigating a build scenario where I already have a .config=20
> typically generated with randconfig and originally set up for building wi=
th=20
> gcc...
> > > And I want to use clang instead to build it.
> > > My experience so far is that the --syncconfig Kconfig asks me to fix=
=20
> some options' values
> > > first, to choose between INIT_STACK_NONE and INIT_STACK_ALL... and=20
> then to choose KCSAN: dynamic data race detector (KCSAN) or not...
> >
> > Hi Professor,
> > It's a good question, one I don't really have a satisfactory answer for=
.
> >
> > I think it's impossible (but would love to be corrected) to reuse
> > exactly the same .config with two different compilers (even different
> > versions of the same compiler can have differences). This is because
> > KConfig also encodes not just various kernel drivers and features, but
> > whether the toolchain supports certain features. So you can't force
> > one compiler to claim to support some compiler flag, then actually use
> > it. If at Kconfig time we detect the compiler has support for say a
> > -fsanitize=3D flag, we encode that in the .config, then during the
> > actual build just look that up in the .config and use the -fsanitze=3D
> > flag.
> >
> > Probably the closest to what you're trying to do is the `olddefconfig`
> > make target.
>
> Agreed. In particular, there is no guarantee of ABI compatibility between
> kernel modules that are built in a different environment, whether that is
> a different compiler (version) or different configuration.
>
> For the purpose of build testing, it is better to run the same commands f=
or
> configuring the kernel (defconfig, tinyconfig, allmodconfig, randconfig,=
=20
> ...)
> rather than relying on an imported .config file.
>
> > > Two examples below, on Linux kernel 5.8.
> > >
> > > First, with tinyconfig
> > >
> > > make CC=3Dgcc tinyconfig
> > > gcc --version
> > > gcc (Debian 10.2.1-6) 10.2.1 20210110
> > >
> > > make CC=3Dclang-11
> > > scripts/kconfig/conf --syncconfig Kconfig
>
> side note: when build testing, I would recommend using the '-s' flag to=
=20
> make
> in order to have more readable output (no output on success), and using
> separate object directories per target/compiler/config tuple.
>
> > > * Restart config...
> > > *
> > > *
> > > * Memory initialization
> > > *
> > > Initialize kernel stack variables at function entry
> > > > 1. no automatic initialization (weakest) (INIT_STACK_NONE)
> > > 2. 0xAA-init everything on the stack (strongest) (INIT_STACK_ALL) (NE=
W)
> > > choice[1-2?]: 2
> > > Enable heap memory zeroing on allocation by default=20
> (INIT_ON_ALLOC_DEFAULT_ON) [N/y/?] n
> > > Enable heap memory zeroing on free by default=20
> (INIT_ON_FREE_DEFAULT_ON) [N/y/?] n
> > >
> > > and then the build proceeds...
> > >
> > > Maybe it's my setup/build environment, but I got errors:
> > > CC arch/x86/events/amd/core.o
> > > In file included from arch/x86/events/amd/core.c:12:
> > > arch/x86/events/amd/../perf_event.h:854:21: error: invalid output siz=
e=20
> for constraint '=3Dq'
> > > u64 disable_mask =3D __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask=
);
> > > ^
> > > ./include/linux/percpu-defs.h:446:2: note: expanded from macro=20
> '__this_cpu_read'
> > > raw_cpu_read(pcp); \
> > > ^
> > > ./include/linux/percpu-defs.h:420:28: note: expanded from macro=20
> 'raw_cpu_read'
> > > #define raw_cpu_read(pcp) __pcpu_size_call_return(raw_cpu_read_, pcp)
> > > ^
> > > ./include/linux/percpu-defs.h:321:23: note: expanded from macro=20
> '__pcpu_size_call_return'
> > > case 1: pscr_ret__ =3D stem##1(variable); break; \
> > > ^
>
> This is a known bug that has since been fixed.
>
> > > Can we envision to have a generic procedure that would "fix" a .confi=
g=20
> (gcc oriented) in such a way clang can be used?
> > > if it's "just" taking a .config and fixing INIT_STACK and KCSAN, I'm=
=20
> fine :)
> >
> > I think if you run `make CC=3Dclang olddefconfig` that will reuse as
> > much as possible from the previous .config, no matter which toolchain
> > it was built with.
>
> Yes, this should always result in a clean kernel build, if it does
> not, that is a bug
> we have to fix.
>
> However, this does not necessarily result in the intended kernel: a=20
> 'tinyconfig'
> may be larger, and an 'allmodconfig' or 'randconfig' may produce less bui=
ld
> coverage because it builds only the common subset of the available option=
s.
>
>
> > -CC_HAS_ASM_GOTO_OUTPUT y
>
> This was added in gcc-11
>
> > -CC_HAS_AUTO_VAR_INIT y
> > -CC_HAS_KASAN_SW_TAGS y
> > -INIT_STACK_ALL y
> > INIT_STACK_NONE n -> y
> > -HAVE_KCSAN_COMPILER y
> > -KCSAN n
> These depend on the compiler version as well as the target architecture
>
> > -CC_IS_CLANG y
> > +CC_IS_GCC y
> > CC_VERSION_TEXT "Debian clang version 11.0.1-2" -> "gcc (Debian=20
> 10.2.1-6) 10.2.1 20210110"
> > CLANG_VERSION 110001 -> 0
> > GCC_VERSION 0 -> 100201
>
> These are obviously unavoidable
>
> > LD_VERSION 235020000 -> 235010000
>
> This one could be avoided by using the same binutils
>
> > KASAN_STACK 0 -> 1
>
> This is a workaround for known problems in some compilers
>
> Arnd
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ac2dae6b-a855-4b30-bd95-7b40e5cab4ccn%40googlegroups.com.

------=_Part_489_2135695115.1623069061407
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your insights and advices Nick and Arnd.&nbsp;<div><br></div><di=
v><div>&nbsp;&gt; (even different versions of the same compiler can have di=
fferences)</div><div><br></div><div>indeed, and it's even worth than that!&=
nbsp;</div><div>We just experimented with Aaron Randrianaina that the same =
gcc version (6.3) can lead olddefconfig to override some original values fo=
r .config.&nbsp;<br></div><div>Specifically,&nbsp;+GCC_PLUGINS y (and relat=
ed options) as well as&nbsp;-KASAN n&nbsp;</div><div><br></div><div>Why? Th=
e reason was that&nbsp;gcc-6-plugin-dev was present in the original build e=
nvironment (Debian-based image), but not the new one!&nbsp;</div><div>Looki=
ng at&nbsp;https://github.com/torvalds/linux/blob/master/scripts/gcc-plugin=
s/Kconfig#L12 and gcc-plugins.sh, and retrospectively, it makes sense.&nbsp=
;</div><div>I am even tempting to say "it's obvious", but I won't since I s=
pend a couple of times to understand it ;)</div><div><br></div><div>tldr; c=
ontrolling in a fine-grained way the build environment is very important fo=
r reproducible build&nbsp;</div><br></div><div class=3D"gmail_quote"><div d=
ir=3D"auto" class=3D"gmail_attr">Le mercredi 2 juin 2021 =C3=A0 20:50:20 UT=
C+2, Arnd Bergmann a =C3=A9crit=C2=A0:<br/></div><blockquote class=3D"gmail=
_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, =
204); padding-left: 1ex;">On Wed, Jun 2, 2021 at 8:31 PM &#39;Nick Desaulni=
ers&#39; via Clang Built
<br>Linux &lt;<a href data-email-masked rel=3D"nofollow">clang-bu...@google=
groups.com</a>&gt; wrote:
<br>&gt; On Wed, Jun 2, 2021 at 3:13 AM Mathieu Acher &lt;<a href data-emai=
l-masked rel=3D"nofollow">mathie...@gmail.com</a>&gt; wrote:
<br>&gt; &gt;
<br>&gt; &gt; tldr; some &quot;fixes&quot; seem needed to build an arbitrar=
y .config with gcc *and* clang
<br>&gt; &gt;
<br>&gt; &gt; I&#39;m investigating a build scenario where I already have a=
 .config typically generated with randconfig and originally set up for buil=
ding with gcc...
<br>&gt; &gt; And I want to use clang instead to build it.
<br>&gt; &gt; My experience so far is that the --syncconfig Kconfig asks me=
 to fix some options&#39; values
<br>&gt; &gt; first, to choose between INIT_STACK_NONE and INIT_STACK_ALL..=
. and then to choose KCSAN: dynamic data race detector (KCSAN)  or not...
<br>&gt;
<br>&gt; Hi Professor,
<br>&gt; It&#39;s a good question, one I don&#39;t really have a satisfacto=
ry answer for.
<br>&gt;
<br>&gt; I think it&#39;s impossible (but would love to be corrected) to re=
use
<br>&gt; exactly the same .config with two different compilers (even differ=
ent
<br>&gt; versions of the same compiler can have differences).  This is beca=
use
<br>&gt; KConfig also encodes not just various kernel drivers and features,=
 but
<br>&gt; whether the toolchain supports certain features.  So you can&#39;t=
 force
<br>&gt; one compiler to claim to support some compiler flag, then actually=
 use
<br>&gt; it.  If at Kconfig time we detect the compiler has support for say=
 a
<br>&gt; -fsanitize=3D flag, we encode that in the .config, then during the
<br>&gt; actual build just look that up in the .config and use the -fsanitz=
e=3D
<br>&gt; flag.
<br>&gt;
<br>&gt; Probably the closest to what you&#39;re trying to do is the `oldde=
fconfig`
<br>&gt; make target.
<br>
<br>Agreed. In particular, there is no guarantee of ABI compatibility betwe=
en
<br>kernel modules that are built in a different environment, whether that =
is
<br>a different compiler (version) or different configuration.
<br>
<br>For the purpose of build testing, it is better to run the same commands=
 for
<br>configuring the kernel (defconfig, tinyconfig, allmodconfig, randconfig=
, ...)
<br>rather than relying on an imported .config file.
<br>
<br>&gt; &gt; Two examples below, on Linux kernel 5.8.
<br>&gt; &gt;
<br>&gt; &gt; First, with tinyconfig
<br>&gt; &gt;
<br>&gt; &gt; make CC=3Dgcc tinyconfig
<br>&gt; &gt; gcc --version
<br>&gt; &gt; gcc (Debian 10.2.1-6) 10.2.1 20210110
<br>&gt; &gt;
<br>&gt; &gt; make CC=3Dclang-11
<br>&gt; &gt; scripts/kconfig/conf  --syncconfig Kconfig
<br>
<br>side note: when build testing, I would recommend using the &#39;-s&#39;=
 flag to make
<br>in order to have more readable output (no output on success), and using
<br>separate object directories per target/compiler/config tuple.
<br>
<br>&gt; &gt; * Restart config...
<br>&gt; &gt; *
<br>&gt; &gt; *
<br>&gt; &gt; * Memory initialization
<br>&gt; &gt; *
<br>&gt; &gt; Initialize kernel stack variables at function entry
<br>&gt; &gt; &gt; 1. no automatic initialization (weakest) (INIT_STACK_NON=
E)
<br>&gt; &gt;   2. 0xAA-init everything on the stack (strongest) (INIT_STAC=
K_ALL) (NEW)
<br>&gt; &gt; choice[1-2?]: 2
<br>&gt; &gt; Enable heap memory zeroing on allocation by default (INIT_ON_=
ALLOC_DEFAULT_ON) [N/y/?] n
<br>&gt; &gt; Enable heap memory zeroing on free by default (INIT_ON_FREE_D=
EFAULT_ON) [N/y/?] n
<br>&gt; &gt;
<br>&gt; &gt; and then the build proceeds...
<br>&gt; &gt;
<br>&gt; &gt; Maybe it&#39;s my setup/build environment, but I got errors:
<br>&gt; &gt; CC      arch/x86/events/amd/core.o
<br>&gt; &gt; In file included from arch/x86/events/amd/core.c:12:
<br>&gt; &gt; arch/x86/events/amd/../perf_event.h:854:21: error: invalid ou=
tput size for constraint &#39;=3Dq&#39;
<br>&gt; &gt;         u64 disable_mask =3D __this_cpu_read(cpu_hw_events.pe=
rf_ctr_virt_mask);
<br>&gt; &gt;                            ^
<br>&gt; &gt; ./include/linux/percpu-defs.h:446:2: note: expanded from macr=
o &#39;__this_cpu_read&#39;
<br>&gt; &gt;         raw_cpu_read(pcp);                                   =
           \
<br>&gt; &gt;         ^
<br>&gt; &gt; ./include/linux/percpu-defs.h:420:28: note: expanded from mac=
ro &#39;raw_cpu_read&#39;
<br>&gt; &gt; #define raw_cpu_read(pcp)               __pcpu_size_call_retu=
rn(raw_cpu_read_, pcp)
<br>&gt; &gt;                                         ^
<br>&gt; &gt; ./include/linux/percpu-defs.h:321:23: note: expanded from mac=
ro &#39;__pcpu_size_call_return&#39;
<br>&gt; &gt;         case 1: pscr_ret__ =3D stem##1(variable); break;     =
             \
<br>&gt; &gt;                              ^
<br>
<br>This is a known bug that has since been fixed.
<br>
<br>&gt; &gt; Can we envision to have a generic procedure that would &quot;=
fix&quot; a .config (gcc oriented) in such a way clang can be used?
<br>&gt; &gt; if it&#39;s &quot;just&quot; taking a .config and fixing INIT=
_STACK and KCSAN, I&#39;m fine :)
<br>&gt;
<br>&gt; I think if you run `make CC=3Dclang olddefconfig` that will reuse =
as
<br>&gt; much as possible from the previous .config, no matter which toolch=
ain
<br>&gt; it was built with.
<br>
<br>Yes, this should always result in a clean kernel build, if it does
<br>not, that is a bug
<br>we have to fix.
<br>
<br>However, this does not necessarily result in the intended kernel: a &#3=
9;tinyconfig&#39;
<br>may be larger, and an &#39;allmodconfig&#39; or &#39;randconfig&#39; ma=
y produce less build
<br>coverage because it builds only the common subset of the available opti=
ons.
<br>
<br>
<br>&gt; -CC_HAS_ASM_GOTO_OUTPUT y
<br>
<br>This was added in gcc-11
<br>
<br>&gt; -CC_HAS_AUTO_VAR_INIT y
<br>&gt; -CC_HAS_KASAN_SW_TAGS y
<br>&gt; -INIT_STACK_ALL y
<br>&gt;  INIT_STACK_NONE n -&gt; y
<br>&gt; -HAVE_KCSAN_COMPILER y
<br>&gt; -KCSAN n
<br>These depend on the compiler version as well as the target architecture
<br>
<br>&gt; -CC_IS_CLANG y
<br>&gt; +CC_IS_GCC y
<br>&gt;  CC_VERSION_TEXT &quot;Debian clang version 11.0.1-2&quot; -&gt; &=
quot;gcc (Debian 10.2.1-6) 10.2.1 20210110&quot;
<br>&gt;  CLANG_VERSION 110001 -&gt; 0
<br>&gt;  GCC_VERSION 0 -&gt; 100201
<br>
<br>These are obviously unavoidable
<br>
<br>&gt;  LD_VERSION 235020000 -&gt; 235010000
<br>
<br>This one could be avoided by using the same binutils
<br>
<br>&gt;  KASAN_STACK 0 -&gt; 1
<br>
<br>This is a workaround for known problems in some compilers
<br>
<br>       Arnd
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/ac2dae6b-a855-4b30-bd95-7b40e5cab4ccn%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/ac2dae6b-a855-4b30-bd95-7b40e5cab4ccn%40googleg=
roups.com</a>.<br />

------=_Part_489_2135695115.1623069061407--

------=_Part_488_749094677.1623069061407--
