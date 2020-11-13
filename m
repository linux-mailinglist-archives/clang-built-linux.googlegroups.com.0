Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF6DXP6QKGQEVKIHB3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A672B24BD
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:42:16 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id 8sf4329875ota.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:42:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605296535; cv=pass;
        d=google.com; s=arc-20160816;
        b=uY/MNcSnRSlQUvO80DlIwvg407mlrIP5/1RtDrvc5fqNGtNRiGTj4FNA0/zGzf9G6N
         K2IqLP0eRCY8OqvVcGXYcDKHnTWaBMBLHCNIWm2KXI5Jgogi4zncnrtsjd7fwF/u06Cs
         Th9L8psZ1exjHNe3ZFK6XD89UOKhjZBOxXfWJu4f3DjgCvFLQPyHwvyCEc9kKv8LvNHW
         r7Muy0r0ChGB2hLWRVuyw6r/c+CJpm+RXQ8QmLlw5qlpededzfmAQQPypnhU+WclmMQ2
         RzMQKwraRhlIdaqSlv8Gh0wnIs0vOWqJyMgzUAvBOX1kbPQOylK+hnDiEnRZvFUSHAqy
         2RaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c4nr/4dGY0BIGS6q+qosx3BliMqziBMli1K7nnicuiU=;
        b=QqmmR+dAMekWOJxiMg8fYZqhHKYsjgoAkohXBv3MKhU+X5ysGufDvO/usus/waynFI
         XdQSROSFfnBzErp6GTaQBmzailkTlLpIaIXAf0wolMcpshFeM7nSKt9ywjqkbBf2sBlo
         AFl5T5Rrl5CyiAUYQgn+SraG+o2fE6ZlcXPz/gmXJUDqmM5PddiL4e6qhTn+pL2PTKx0
         9HxoSRohUJRqwyWqiJwpXgf5FA95ID2CSp/vw530zFe1qP5191Ow1uuxkyrblEiupjFN
         3aBhcoDnnFUCjecURcjNAaYsCnv1ZXX5jjv4z1Rc5KO5mQvrOW8/EdO7xk14Yi6LcPaV
         KGOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oFn/RXDy";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=c4nr/4dGY0BIGS6q+qosx3BliMqziBMli1K7nnicuiU=;
        b=JMx0e+sIhW0WPwM8iSr5c11vfAy/7WXrqfvIvujFP5YaWNFrg/UMqsmt1z3Y0szrkk
         ek4lgWZWu2ySU7pE5PgKclJGF+9mw0up/Z6M7o0Mxb1lYAAD886WDJnYlyX7t4WK0/Ec
         HDApXAxZPuB3dyHO+R/9WMsTgZMBilQ0ytC+YGZX4O+j3SIowPf+fvst+/X7ijnli6/v
         Li1SWvXblyWMFjLdzmM5GSYThdiXsdJFDyd/dPu8n0u77REYXuZSD3xONnn3W48pWZGw
         wGY0dx7uEyXqnmGUVIVtBiaJ4j7mlf/c/8nq8zzzergCGqJe4z2OSAQ8GG8i9Kdo+2KB
         LKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c4nr/4dGY0BIGS6q+qosx3BliMqziBMli1K7nnicuiU=;
        b=PWjFUk9ad07pFw+Z6Oc62Oq3PoZ5IDUdDm9y/OVyCHBm8cU4BLvDGtwTZ8ldqIpTSC
         LRX7Kq/WzznIMDMFYGdOyYxvSOan8HSppDX07uuNb8lC4ifbdRsyT3RDC8MPWAKbPUk8
         ni2+Yq1pEBBkqdlZy2Bn23puyw5ZM02v740qRgck9Da1j30lTQ41k7/m0Mmdxj35cHvr
         iizESHlAlNTOs54NIhaLcMhGJrCykyxhYrnzd713Js7KMbjIjuQcfNCQenwgLSwKr+h/
         zsO0kr4NKEpX94k+ftggUHhQNsMthW78/ZwoQgzWIRwo4nYuj5IZBGnfaAgvi4QDJ0BT
         QXuA==
X-Gm-Message-State: AOAM5333r5/kSiPZgwsZE8rxcBjpi3ykB1eN5vkM9kgU8oa58lIUWiSF
	aJS20rxQXx/37LP+tHFuK9E=
X-Google-Smtp-Source: ABdhPJzgFRdq2r2X9PqHJ3hzIl8zxJD7Ez5418MQU7S+MQYNVCWcuBmrEbSOhWUpLAm0p8wtg+H13g==
X-Received: by 2002:a4a:b28b:: with SMTP id k11mr2764596ooo.54.1605296535597;
        Fri, 13 Nov 2020 11:42:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls1833751oth.1.gmail; Fri,
 13 Nov 2020 11:42:15 -0800 (PST)
X-Received: by 2002:a9d:65c7:: with SMTP id z7mr2906800oth.25.1605296535152;
        Fri, 13 Nov 2020 11:42:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605296535; cv=none;
        d=google.com; s=arc-20160816;
        b=mS+BYq4GP3SI0uCnVvq77deKXk5FUD5uP4kRLYGw4ZZ9Ka68LgRirqyMSFIzYBaJKV
         3MjqSWnCQ//yoC56nGa9l7X7kShFLETnhzlzLa3Y925EZLqixqP5HiLS5ibpXb40FGFF
         4d+FzEuKspeDb7G62lNOeFd2Pr5Y2qOXSKTzbAjGl2fa35MN9qg1snBlAa2/eQgJrwLr
         WZ0sp8hNpeyO1NfZviJsF54QRivxwvK+I/83hBsz0bK38CP+W63HLdTa5Yj91jiG1P4c
         2qgnyhBEugRi98gwwYoXcMdxvk6Ajw2LVabx1D/sDqry0lBx34H1jdj3dRNIzSUWSQqR
         vcbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bpaBEkCKEdHgW1h3duZgowAHWMVwm/wa+XAmGoyCFHI=;
        b=tPf17vEbokEnCAw/6c05BqwIqgkP1E0BdZ58NmRme5lQZZNIkLA0vnWRFc6v7KifqR
         myAFqVj3mO5XJlhxiwTjszhhqAsFxLcQOC7JVfvCcoSYVTJHaX3rt4JoTQ1D7xiyFW/Z
         pcBEVB/bS+WIgtQ2lPM2sxYkd5+Q2y1BhkLQ+LQ1kVvFP4SyueuvdA4YN8jFv3aguDcP
         RlRFnLE9ypJkuW1d1ggeEmUqb6gvD9Vx7N6AC+aUWp/2YgZNCEZHyflRhsLDdY94fy6D
         Sat6Io4ugSvSvUdcIY9AoKh+EhNv+kCxO06Lg/zxY1ARBqvXcYmPHYaUaZDcCiA+Ua6K
         Bqmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oFn/RXDy";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id r6si1387751oth.4.2020.11.13.11.42.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:42:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id r186so7948350pgr.0
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 11:42:15 -0800 (PST)
X-Received: by 2002:a65:4b81:: with SMTP id t1mr3343357pgq.263.1605296534160;
 Fri, 13 Nov 2020 11:42:14 -0800 (PST)
MIME-Version: 1.0
References: <202011131146.g8dPLQDD-lkp@intel.com> <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
 <20201113190824.GA1477315@ubuntu-m3-large-x86>
In-Reply-To: <20201113190824.GA1477315@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 11:42:03 -0800
Message-ID: <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
Subject: Re: Error: invalid switch -me200
To: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="oFn/RXDy";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530
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

+ MPE, PPC

On Fri, Nov 13, 2020 at 11:08 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Nov 13, 2020 at 09:28:03AM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > On Thu, Nov 12, 2020 at 7:22 PM kernel test robot <lkp@intel.com> wrote=
:
> > >
> > > Hi Fangrui,
> > >
> > > FYI, the error/warning still remains.
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git master
> > > head:   585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> > > commit: ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51 Makefile: Fix GCC_TO=
OLCHAIN_DIR prefix for Clang cross compilation
> > > date:   4 months ago
> > > config: powerpc-randconfig-r031-20201113 (attached as .config)

^ randconfig

> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project =
9e0c35655b6e8186baef8840b26ba4090503b554)
> > > reproduce (this is a W=3D1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install powerpc cross compiling tool for clang build
> > >         # apt-get install binutils-powerpc-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/li=
nux.git/commit/?id=3Dca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
> > >         git remote add linus https://git.kernel.org/pub/scm/linux/ker=
nel/git/torvalds/linux.git
> > >         git fetch --no-tags linus master
> > >         git checkout ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cros=
s ARCH=3Dpowerpc
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >    Assembler messages:
> > > >> Error: invalid switch -me200
> > > >> Error: unrecognized option -me200
> > >    clang-12: error: assembler command failed with exit code 1 (use -v=
 to see invocation)
> > >    make[2]: *** [scripts/Makefile.build:281: scripts/mod/empty.o] Err=
or 1
> > >    make[2]: Target '__build' not remade because of errors.
> > >    make[1]: *** [Makefile:1174: prepare0] Error 2
> > >    make[1]: Target 'prepare' not remade because of errors.
> > >    make: *** [Makefile:185: __sub-make] Error 2
> > >    make: Target 'prepare' not remade because of errors.
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > This can be ignored. The LLVM integrated assembler does not recognize
> > -me200 (-Wa,-me200 in arch/powerpc/Makefile). I guess the GNU as -m
> > option is similar to .arch or .machine and controls what instructions
> > are recognized. The integrated assembler tends to support all
> > instructions (conditional supporting some instructions has some
> > challenges; in the end I have patched parsing but ignoring `.arch` for
> > x86-64 and ignoring `.machine ppc64` for ppc64)
> >
> > (In addition, e200 is a 32-bit Power ISA microprocessor. 32-bit
> > support may get less attention in LLVM.)
>
> This is also not a clang specific issue, I see the exact same error
> with GCC 10.2.0 and binutils 2.35.
>
> $ make -skj64 ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc64-linux- olddefconfi=
g vmlinux

Does using a non 64b triple produce the same failure?

> ...
> Error: invalid switch -me200
> Error: unrecognized option -me200

There's a block in  arch/powerpc/Makefile:
248 cpu-as-$(CONFIG_40x)    +=3D -Wa,-m405
249 cpu-as-$(CONFIG_44x)    +=3D -Wa,-m440
250 cpu-as-$(CONFIG_ALTIVEC)  +=3D $(call
as-option,-Wa$(comma)-maltivec)
251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
252 cpu-as-$(CONFIG_E500)   +=3D -Wa,-me500

Are those all broken configs, or is Kconfig messed up such that
randconfig can select these when it should not?
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW%3DfQjesiHz3dfeBA%40m=
ail.gmail.com.
