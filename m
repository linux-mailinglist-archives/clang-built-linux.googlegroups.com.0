Return-Path: <clang-built-linux+bncBCRIVXEMQILRBJNWUH2QKGQEIWWMJEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE6A1BC549
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 18:34:46 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id y8sf25395392ybn.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 09:34:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588091685; cv=pass;
        d=google.com; s=arc-20160816;
        b=lRPnQ3nP8wyWTr5L0iL8seJadFiuSEV53BkbWAM3RnpGvNHPRwYC8kZ3jNaiwpyEMV
         QivAghiwAqYNsbQ3y0gvFF1Nxeh4QWTlBg2QKml64HEmc6Pt5P1WWr4eBQcGE4DRv1Lp
         77oqpFpQwd3/UtEGScPN0PVHjJCufBw4e1BP8KO0HzOtZ8QhUCBlBwRjxRoG7jJohr8p
         7UQkp3i7bdZ8hpiJDgITzbYvx7r5KMdFJyeRjy5b1Jj5aM/ewI4sXOcFVbfGwh3rCe1T
         jzpxjTqeVBJCWP7qjeZFZyKL1URbsaegIhekuFt9Pk7nPQZ0iJJgeUQBSu30/b7AcPGt
         o+BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pFKS9D45Py40XwamPTS1aCb6ACc4bOj4nVVEux37i8g=;
        b=SzF5EKHnf4fhd3zstvxEpZVT9IIjXTJ4YGcT58LNJnrd3z2enhN0fyAXLHEvC0zF0/
         uyF9DmUxNil8HQf+euW0UuFwaO8QknW682PjRao1qg6YTEmc6zLCzpxyLc6+Vcd+bkz1
         ojV3haAmvCqZ7G7SIfL42pPWrbITOAh53AVxxw3OzxgtN0uZEu+fgGwptezkcccxSGaI
         gTHu0l1/XUG085pWDvightJty3HrstzDbaayx1EOTytW8cYCcMTbjN4SOjNAlUbDP6tp
         oTewoOVAGky4MdnCXhUSkNqBNfVgVuTa/nasqc+jEO1cfOJotsfj1m406JqKmhAqJc8w
         qtEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="u27E/NFo";
       spf=pass (google.com: domain of tkjos@google.com designates 2607:f8b0:4864:20::92a as permitted sender) smtp.mailfrom=tkjos@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFKS9D45Py40XwamPTS1aCb6ACc4bOj4nVVEux37i8g=;
        b=ESV3ExHhjvBfV0qeKw+9c2MyUBwH0iVK1WZcyXZhNjMa/yirT2Lkyzwljyu78H9VTk
         Diiec/IjiTS1Uljevix04MBVK0yjWdGELINzg68uLs4DDb+V+uTlg6lpHU4xBqsoaVr+
         sarmWTiJHn+xHzXYn33aG+FFJ804W7RNpktSbBvDC4Cy56RL2QfQD8kO0cLfYJG2w08H
         Cgp1wFkqOq/xTktzH0vj1cYSO3T4fSPEZOBjB71zRQxaaZaL2Rar0UZiOEHoiZBdu8q9
         7lY7zYl45IsVvwo+cYgXaztErC0pBq1DPjQahrZJZqis+gEoVBaPzk4KY41BxS9IXBrt
         EEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFKS9D45Py40XwamPTS1aCb6ACc4bOj4nVVEux37i8g=;
        b=VPQgAl3AP9TC+UAH4QK5YjzcbztmxgKuaQ3XvgX0yNvXlUZ+EZCblj2+e86m22Woj6
         3oKUtg2p/i7tmnAdMI66Oc/m4y76V1YXYrXf4u0qY3/Mz9w1/Ykym7FqViLk8RFbYYh1
         1GA0nFLzUVDe2rmf77pGZUklv6QYlZoxh1sujV9+IVknSqUbsIRBKMCybJzW1K8CPlEl
         jwv5ofQf/2xcnTFd7kBhufPWvDIYrfL5BjpEY7Ggyr6Iqc/i50NQ4w0RJ6eANG3Wriv+
         UVDjhyhFE+Wt1ISXi0DSsSM39Tz0xw0natV9hRsRh4UhR0KIIZVtLjS8DtgNqztziuqW
         NPDA==
X-Gm-Message-State: AGi0PuakSXmVYP/MfY2/icn8C/2YlJGUb79c/YyVkTuDY45V3WbL2zDV
	VqDJgmKBIe4xIw7kotkVsUk=
X-Google-Smtp-Source: APiQypKZGlsmeH8QztbfZa5IFO7imFh9yVMJRdhfzHMmDU4flAHQ/lnlGFmBdqDS6m+lTEEUYMisoA==
X-Received: by 2002:a25:e008:: with SMTP id x8mr15988449ybg.295.1588091685426;
        Tue, 28 Apr 2020 09:34:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3897:: with SMTP id f145ls5857690yba.9.gmail; Tue, 28
 Apr 2020 09:34:45 -0700 (PDT)
X-Received: by 2002:a25:5754:: with SMTP id l81mr49692662ybb.476.1588091685001;
        Tue, 28 Apr 2020 09:34:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588091684; cv=none;
        d=google.com; s=arc-20160816;
        b=lJFo5jYb/kBbykpP2ycf1MqfUzX1EdZyAHXz2dJrFKzsO5IiejomVSMRq0MbSIlOZq
         uNUlzZ7V37r11QlLLIBHqDTSyfQTreD5hua+5jZXMJptCMAC5p+Xod4aoMIqr5rY63vP
         H80QWeU2+LxHKU3Trzr7lJXTkvD4Z/9jcBfIi2y30qSSygXp1rRzJl1lLFs/iEifXo0U
         bF+ifxKfyrHycHzW29TwDM/L5djbA1U4gOPHr7gAdtmqAYmHMiGMgK9PfUQ06JaQkr9p
         fwMFpIsYyPe4IcgtW/GdsrrYUNDpe02WZdwvkNEERIkKhhCxxpnf7DOK+HTop6grUrpx
         rDiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/zYq+xhl7ntSakXnpS8+9Qtvv0NfAi+LY8GvbOALzG4=;
        b=YMprR3mIF9q6NuQyzi2njocFcHbmBo5Hgf5NzGGy9VgjiI0dPNJtZvX8mXuPJbvwhT
         8vzdjF/u/9uNJ8aolr3uLxr7h5AK9SqsYU28SoqfQaBFaDmeuSDKuHRXlyDpMyHUO+cR
         RKOFlI1uBQCSPh3TnSXDl0JOOiX7Q6tDFcA/dcYtcb86gauQLCTvay+NNsNzrm9UFgHT
         WVtaJ3FDKDwdRVZD3beoCZIFx9a0couHkkV6H3GYCN1Lvqj01Diqw7Sm57yKreXrFyUZ
         PcIHG80dL/qZGv5AWuEWXk7Q1Ru/XRvc3qBIieWS5ixgg8tNBOz/GRQHmbFSIqGctJvX
         nDTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="u27E/NFo";
       spf=pass (google.com: domain of tkjos@google.com designates 2607:f8b0:4864:20::92a as permitted sender) smtp.mailfrom=tkjos@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com. [2607:f8b0:4864:20::92a])
        by gmr-mx.google.com with ESMTPS id r206si1318065ybc.4.2020.04.28.09.34.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 09:34:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of tkjos@google.com designates 2607:f8b0:4864:20::92a as permitted sender) client-ip=2607:f8b0:4864:20::92a;
Received: by mail-ua1-x92a.google.com with SMTP id g35so10332792uad.0
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 09:34:44 -0700 (PDT)
X-Received: by 2002:ab0:b13:: with SMTP id b19mr20994587uak.91.1588091684333;
 Tue, 28 Apr 2020 09:34:44 -0700 (PDT)
MIME-Version: 1.0
References: <202004281818.1ptgznrP%lkp@intel.com> <CAKwvOd=-XNzdoe_GhC6guj63Y_nfKG1FFUZ=izNGCk=qX6iTVQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=-XNzdoe_GhC6guj63Y_nfKG1FFUZ=izNGCk=qX6iTVQ@mail.gmail.com>
From: "'Todd Kjos' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 28 Apr 2020 09:34:31 -0700
Message-ID: <CAHRSSEz0Zfko+yBj5JKYOj5wYS_8vfC7QfqBnWfNY1opaG2N3w@mail.gmail.com>
Subject: Re: [android-common:android-5.4 16/36] include/vdso/clocksource.h:9:10:
 fatal error: 'asm/vdso/clocksource.h' file not found
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: cros-kernel-buildreports@googlegroups.com, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tkjos@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="u27E/NFo";       spf=pass
 (google.com: domain of tkjos@google.com designates 2607:f8b0:4864:20::92a as
 permitted sender) smtp.mailfrom=tkjos@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Todd Kjos <tkjos@google.com>
Reply-To: Todd Kjos <tkjos@google.com>
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

Nick- I'm on that list and watch for 0-day reports for relevant to
arm, arm64, x86, x86_64 builds of android kernels. I ignore all other
kernels and architectures.

On Tue, Apr 28, 2020 at 9:31 AM 'Nick Desaulniers' via
cros-kernel-buildreports <cros-kernel-buildreports@googlegroups.com>
wrote:
>
> What's cros-kernel-buildreports?  Is Android's kernel team on that
> mailing list? (This looks like a MIPS build of an Android tree,
> emailed to a list that mentions CrOS).
>
> On Tue, Apr 28, 2020 at 3:04 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > tree:   https://android.googlesource.com/kernel/common android-5.4
> > head:   7f84f8f1841844015ce11c0606d4e57b75533604
> > commit: 2b3f7bf08d3db5471d541868f201e2209cb26079 [16/36] BACKPORT: linux/clocksource.h: Extract common header for vDSO
> > config: mips-randconfig-a001-20200428 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f30416fdde922eaa655934e050026930fefbd260)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install mips cross compiling tool for clang build
> >         # apt-get install binutils-mips-linux-gnu
> >         git checkout 2b3f7bf08d3db5471d541868f201e2209cb26079
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    In file included from fs/proc/stat.c:15:
> >    In file included from include/linux/tick.h:8:
> >    In file included from include/linux/clockchips.h:14:
> >    In file included from include/linux/clocksource.h:30:
> > >> include/vdso/clocksource.h:9:10: fatal error: 'asm/vdso/clocksource.h' file not found
> >    #include <asm/vdso/clocksource.h>
> >             ^~~~~~~~~~~~~~~~~~~~~~~~
> >    1 error generated.
> >
> > vim +9 include/vdso/clocksource.h
> >
> >      6
> >      7  #if defined(CONFIG_ARCH_CLOCKSOURCE_DATA) || \
> >      8          defined(CONFIG_GENERIC_GETTIMEOFDAY)
> >    > 9  #include <asm/vdso/clocksource.h>
> >     10  #endif /* CONFIG_ARCH_CLOCKSOURCE_DATA || CONFIG_GENERIC_GETTIMEOFDAY */
> >     11
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004281818.1ptgznrP%25lkp%40intel.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "cros-kernel-buildreports" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to cros-kernel-buildreports+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/cros-kernel-buildreports/CAKwvOd%3D-XNzdoe_GhC6guj63Y_nfKG1FFUZ%3DizNGCk%3DqX6iTVQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHRSSEz0Zfko%2ByBj5JKYOj5wYS_8vfC7QfqBnWfNY1opaG2N3w%40mail.gmail.com.
