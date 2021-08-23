Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX4JSCEQMGQENUJKBDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8534E3F5213
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 22:28:16 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id l16-20020a0cc2100000b029035a3d6757b3sf13250801qvh.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 13:28:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629750495; cv=pass;
        d=google.com; s=arc-20160816;
        b=cBdaYvUBIEo6fJKq2AAio4tSwsKHZqlyL6wO4+PcFxzHqStDZKNss+SVBTpT+p5boa
         CjxB9DqWoMbbN48Fy8RDiToJVZLuA/pZL7ZvXXhfOm6Xv2LNcsEPox0fRRVr66YkziwU
         usdg+mLTiXqDOJU9uNG0fXvhxV+aoepsG6bR6K75EXvgiCP/derYXwcXSV+iOElJppU8
         inXlyCBOlc1785fip1FOayLXtP724foutbP/ncN0ENGhU64QUwhtvBIt919NFHjvS8dV
         EQMf+z7q1gTWngU85+h5TVhJDZCJSxpXnGTKOv/9n7mcw/PYDeZtN0fDbS6uPgbP7URT
         Qwbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8uJU3aOVuPaujqHnd9kvyS6UjC5zmA0yHOP3a3+g9Xs=;
        b=Iz7Gh1EgX5cetO129uybAVzhMvZ3OLmAZFVq/lOXvGkDP1SaLxeJuyXVMQSGCIyiMa
         2QOQ3xwQNdOT0hh7qnwcst2tZNHkrIoJBlA7czA6+KpdTswCFeMonuLDo5R1VvU97DlC
         nduMJThZnI6IVq3UkDha0j+dSeyF9uY7jaNyKO4at9Q+WMyaDTiGURCeqH43vUDQ1Kgi
         EpmUrxwl5d6rEXM7VA7BCEIslVUPzfZi+4EdDt+lkShtpZW52cN369e0Gsn3EG6kxuMA
         rgJ7v5cWS82iVtWM02xMc+vS2ERqfDEAha/NfHjJghG+HHAtsuYtQ5d+TpAZ8lJFweyF
         20bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hnJQJrX6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8uJU3aOVuPaujqHnd9kvyS6UjC5zmA0yHOP3a3+g9Xs=;
        b=gReP//vmpUJ6EVWI+7Pppdgoa+0wUr/JCEgEtRjVuUfRzHkcMKa77Ddl+cA/8/2Bee
         cU1j0BXsNR3gv2XQ0k0DV7FYcACqG3ydyEvhsboIqKGHMj827hVQh0aNo7frHDs97m/0
         o4nStPbByx/g1dUyskylcFRNWFomVZ+W6LLBmjkLTiOxnhRh8TxKS1VNaRedk224u6Ct
         cjtoxYRUCmVEga+yMTeu0Dhwt6NZTwquYbx4+0npNqy/GifVdTdzvNb7Tv0Ck+5GmzDi
         z10yhCVl2VxTO/gBGy45SZbsakxojOuNOkrp6DITzABH3EHZ23xrrs0tJkE5LDFTjKgH
         G+mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8uJU3aOVuPaujqHnd9kvyS6UjC5zmA0yHOP3a3+g9Xs=;
        b=dpwum+nxISxFyPhcmOjyAI3vxoyoJoHY8vGHXT1AOpaHC8EU7gzZhcMI3KhrEJs48a
         eb8QesGkkWQbwwHGlP3VZIyxHKdnK9AW5jnvBP5ySKaojdDp0I3pyfdwBbcDCIuHWjon
         IMumN1k0zJV6WvAHNPvv7PDYPe/7TsSGWiFu6CPE7pGjFUwaBtnFHEt7JSM6hJaxPa9L
         H93huZ/ulriUh1OPJSOqnKueRIRMucZbsObrf9OW+Qh6lIcAhx9voBuZs0GfDVYvjRGG
         GLCm044RyL9HWfPG0+Qkxy7QlDgv+2BYiAQiaLma/vnSJ2zvrx8FTeslyDOdQ4/t70UG
         DjrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304vxTNV1w8B1uUEAOF0f0yK0hxNb1PWghE707eA6tc0JQi8sXn
	xdC0k0yaTPuNq0f2Da0daU8=
X-Google-Smtp-Source: ABdhPJxdVZ1fiftUQ3bObqNpbsCmpXfChzk6gAh0sntfxsjT2aHr+6hQe9ao8Mx+Lodingz7ZpRCtA==
X-Received: by 2002:a37:bc8:: with SMTP id 191mr23749990qkl.25.1629750495618;
        Mon, 23 Aug 2021 13:28:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c6b:: with SMTP id t11ls5083240qvj.9.gmail; Mon, 23
 Aug 2021 13:28:14 -0700 (PDT)
X-Received: by 2002:a05:6214:2623:: with SMTP id gv3mr12156500qvb.9.1629750494600;
        Mon, 23 Aug 2021 13:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629750494; cv=none;
        d=google.com; s=arc-20160816;
        b=T2R4nk28rnNq3EmVhq+JhjM1G4R7Jp3aOE4CJUl+BQamIIrceCk/idOz0PduxiUrj5
         MF0ZlkhhsheOWZsb3zQFNrcqKdrLcgb5xd6CTqiQS5l7YPLSI+TSM40rkTuMpEO5mcO9
         1Y2aMNvBZg5mlBRfRzaz92zHlTT+tOiTN4eGAOxwB4EvgXgMaioVQ+zIATWjthyiIY7M
         5RZA2DJUVONHZ8cNmvFE+pkV6iEpVSrFM77sfIL/GC9pEOgWvNPzduLISp7yk9rwiPHZ
         QUGT/4jkLXCxgnY71GOyqUbYzVFOdYGnfo4O74afTFhu+8vDmu6sBq+nsVJ81Uy7+iD5
         JoJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sfoONzLpSKsik8cwre1bogdC4LTeUBxN27SnPptm+8E=;
        b=Pi+xQ4N/qkabbmR+nwQsTTFM9Gz0sQiQJta+/KVzyAFeKLYJUUTMCCYQkpOm8YpoRU
         0zUn4xqE6LIfTvAmro12/X/aDe3Jbxi9nVIy7Nvm1SMrIRPIE1teaXxPTYuhw8jjcpNU
         8a4cpK0m2zDs6Y0XDjKZ3xjn0GQAQrlBwZMkYeAq0s0rpK4Y8iKngJL8hAN9xfmlZ1oc
         h7H9WjACIffYhluvCWf4JfK0agJcx9NHWUxM/OR4eihbIWZZOPjgk6ChlqGMOKx4sD8d
         UwDXdYqfMFoSkS52hI8E2xLDCCmAGbfNbsSUmTnI1ScWsp/MorzpC7lZwZHuAbmuy+Cf
         YorQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hnJQJrX6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si749204qko.2.2021.08.23.13.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 13:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C81D060E97;
	Mon, 23 Aug 2021 20:28:12 +0000 (UTC)
Date: Mon, 23 Aug 2021 13:28:09 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>,
	kernel test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	Quentin Perret <qperret@google.com>,
	Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [linux-next:master 6632/9522] include/linux/pm_opp.h:458:58:
 warning: unused parameter 'dev'
Message-ID: <YSQE2f5teuvKLkON@Ryzen-9-3900X.localdomain>
References: <202108210311.CBtcgoUL-lkp@intel.com>
 <20210823031546.fupzmdxjntacsq2e@vireshk-i7>
 <CAK8P3a1o6uvDo_ttPFOw_pRdtok3-9=dFMLToyUxSmTxs0YfOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1o6uvDo_ttPFOw_pRdtok3-9=dFMLToyUxSmTxs0YfOg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hnJQJrX6;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Aug 23, 2021 at 11:07:13AM +0200, Arnd Bergmann wrote:
> On Mon, Aug 23, 2021 at 5:15 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 21-08-21, 03:30, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   86ed57fd8c93fdfaabb4f58e78455180fa7d8a84
> > > commit: c17495b01b72b53bd290f442d39b060e015c7aea [6632/9522] cpufreq: Add callback to register with energy model
> > > config: i386-randconfig-a016-20210820 (attached as .config)
> > > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c17495b01b72b53bd290f442d39b060e015c7aea
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout c17495b01b72b53bd290f442d39b060e015c7aea
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > >    static inline void pm_vt_switch_unregister(struct device *dev)
> > >                                                              ^
> > >    In file included from drivers/gpu/drm/i915/gt/intel_llc.c:6:
> > >    In file included from include/linux/cpufreq.h:12:
> > >    In file included from include/linux/cpu.h:17:
> > >    In file included from include/linux/node.h:18:
> > >    include/linux/device.h:653:46: warning: unused parameter 'dev' [-Wunused-parameter]
> > >    static inline int dev_to_node(struct device *dev)
> >
> > False positives ? These are mostly inline dummies, which simply return
> > errors. Their parameters aren't supposed to be used.
> 
> It's a clang-14 W=1 build, probably something went wrong with the clang specific
> warning flags there. I think we do want "-Wunused -Wno-unused-parameter". Not
> sure what changed compared to older clang builds.

W=1 already does this:

$ sed -n '23,25p' scripts/Makefile.extrawarn
ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)

KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter

The problem is the same one as commit fa63da2ab046 ("arm64: Don't
unconditionally add -Wno-psabi to KBUILD_CFLAGS") but just with an '-f'
flag instead of a '-W' flag.

This config has CONFIG_MEFFICEON=y, which adds a few '-falign-...' flags
to cflags-y, namely '-falign-jumps=0', which is not supported by clang:

clang-14: warning: optimization flag '-falign-jumps=0' is not supported [-Wignored-optimization-argument]

As a result, all subsequent cc-{disable-warning,option} calls fail because the
command always fails with an unknown flag in the mix since we added -Werror to
cc-{disable-warning,option} to work around this exact situation where clang
only emits a warning rather than an error for unknown flags.  I improved this
in commit 589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
CLANG_FLAGS") so that we get alerted of failed flags before this but I guess I
missed this one :).

i915 enables '-Wall -Wextra' then disables a few warnings (including
'-Wunused-parameter') with cc-disable-warning, which does not work, so we get
all of these warnings as a result.

I think fixing this once and for all is a three pronged approach:

1. '-falign-jumps=' should not be added unconditionally, as it is not
   supported in clang (as it warns rather than errors about...).
   '-falign-loops=' falls into the same category, as it is only
   supported on clang-14 and newer.

   Something like this should do it (no point in making GCC pay the
   cc-option cost):

diff --git a/arch/x86/Makefile_32.cpu b/arch/x86/Makefile_32.cpu
index cd3056759880..1db40f14719d 100644
--- a/arch/x86/Makefile_32.cpu
+++ b/arch/x86/Makefile_32.cpu
@@ -25,11 +25,16 @@ cflags-$(CONFIG_MK6)                += -march=k6
 # They make zero difference whatsosever to performance at this time.
 cflags-$(CONFIG_MK7)           += -march=athlon
 cflags-$(CONFIG_MK8)           += $(call cc-option,-march=k8,-march=athlon)
-cflags-$(CONFIG_MCRUSOE)       += -march=i686 -falign-functions=0 -falign-jumps=0 -falign-loops=0
-cflags-$(CONFIG_MEFFICEON)     += -march=i686 $(call tune,pentium3) -falign-functions=0 -falign-jumps=0 -falign-loops=0
+ifdef CONFIG_CC_IS_CLANG
+align := -falign-functions=0 $(call cc-option,-falign-jumps=0) $(call cc-option,-falign-loops=0)
+else
+align := -falign-functions=0 -falign-jumps=0 -falign-loops=0
+endif
+cflags-$(CONFIG_MCRUSOE)       += -march=i686 $(align)
+cflags-$(CONFIG_MEFFICEON)     += -march=i686 $(call tune,pentium3) $(align)
 cflags-$(CONFIG_MWINCHIPC6)    += $(call cc-option,-march=winchip-c6,-march=i586)
 cflags-$(CONFIG_MWINCHIP3D)    += $(call cc-option,-march=winchip2,-march=i586)
-cflags-$(CONFIG_MCYRIXIII)     += $(call cc-option,-march=c3,-march=i486) -falign-functions=0 -falign-jumps=0 -falign-loops=0
+cflags-$(CONFIG_MCYRIXIII)     += $(call cc-option,-march=c3,-march=i486) $(align)
 cflags-$(CONFIG_MVIAC3_2)      += $(call cc-option,-march=c3-2,-march=i686)
 cflags-$(CONFIG_MVIAC7)                += -march=i686
 cflags-$(CONFIG_MCORE2)                += -march=i686 $(call tune,core2)

2. i915 should not be using cc-disable-warning for most of the flags
   that they are, as they are supported by both compilers and the rest
   of the kernel assumes this. I plan to send a series to turn on
   -Wsometimes-uninitialized for i195 shortly so I will send this diff
   as a prior change in that series.

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 642a5b5a1b81..9f05b3b18816 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -13,15 +13,16 @@
 # will most likely get a sudden build breakage... Hopefully we will fix
 # new warnings before CI updates!
 subdir-ccflags-y := -Wall -Wextra
-subdir-ccflags-y += $(call cc-disable-warning, unused-parameter)
-subdir-ccflags-y += $(call cc-disable-warning, type-limits)
-subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
+subdir-ccflags-y += -Wno-unused-parameter
+subdir-ccflags-y += -Wno-type-limits
+subdir-ccflags-y += -Wno-missing-field-initializers
 subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
-# clang warnings
-subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
-subdir-ccflags-y += $(call cc-disable-warning, sometimes-uninitialized)
-subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
+ifdef CONFIG_CC_IS_CLANG
+subdir-ccflags-y += -Wno-sign-compare
+subdir-ccflags-y += -Wno-sometimes-uninitialized
+subdir-ccflags-y += -Wno-initializer-overrides
+endif
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror

 # Fine grained warnings disable

3. We should not allow unknown flags to get added to the command line
   without our knowledge. Bugs like this are annoying for several
   parties so we should minimize them as much as possible. I will
   propose this in the same series as the first diff, which should avoid
   the initial issue altogether (the second step is more of an
   optimization for the future).

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index f88ceb3d076e..94c9455adf59 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -12,7 +12,9 @@ CLANG_TARGET_FLAGS_s390               := s390x-linux-gnu
 CLANG_TARGET_FLAGS_x86         := x86_64-linux-gnu
 CLANG_TARGET_FLAGS             := $(CLANG_TARGET_FLAGS_$(SRCARCH))

+# Make clang behave more like gcc when it encounters an unknown '-W' or '-f' flag.
 TENTATIVE_CLANG_FLAGS := -Werror=unknown-warning-option
+TENTATIVE_CLANG_FLAGS += -Werror=ignored-optimization-argument

 ifeq ($(CROSS_COMPILE),)
 ifeq ($(CLANG_TARGET_FLAGS),)

Sorry for the wall of text, hopefully it all makes sense.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSQE2f5teuvKLkON%40Ryzen-9-3900X.localdomain.
