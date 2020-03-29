Return-Path: <clang-built-linux+bncBAABBFUBQD2AKGQET7TMHGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FD5196A8C
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 03:57:44 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id w6sf10793602pjt.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 18:57:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585447063; cv=pass;
        d=google.com; s=arc-20160816;
        b=DZjnI9GFnGiAonFAbrqXsAK8cIMv0wcp/31DvOrNh5lsl8Td7EyBeEQFkjQEY9liQd
         NB8eZvnFCT2JbzilcTO6YIeqotUX6MG6eZsdfDnC/TMDKLPONo2QQpOJWpDFtXKDVst3
         y+UHGbM4wr3Cb37Fts/LjE2DNHRkg6SpEedr/76M+yOoeRr/yAP2egy4dlShElLQx1ex
         TN+VsA6er6FMNEWca79Zoe0BLeTvP3uusxjgsLRPVsfipdLs1rTmCatcyODdgZDG3Zaq
         27SZPcC+kpPqDewpGz33jX8FpCv4K+Nh1ioVfZoKpb2V1Ve+qntlQv2aE5k3NnlpDjtX
         LL3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=040gOffm/FjiXLkPBrPypY+VfaPD0oxrLBp4HQfbT+M=;
        b=ULf8MPgWleuZfMmA+bkpJDV+mvWLY4lNdd5iP7SGcf8RvY3hn950zfWJEpysoJHwYt
         b9CTywCjevx4ZaLudhcK7A8+exEUCjXkYeApNtb8JFtOeyNCGmF6NJ/8XodF2x74pkxW
         DssK1hPh32NajKmrSzUAnXYIW93qR1iTrpsmIWtV+bItUnWC8Nne6nu9vzjHr2LAcbfE
         iQO17kAW7l/8U33E7FfwHRfK5LFhXZXMOvTjos5Iq4YH4RhfT1xybJbM1ywrUn+Hls4t
         X0UDJqb7P4hTldkmcczRfWSLfsuiv6iC0Uxr6+J5wSaVfOxmxxU+14jyIF0fPNyC3+no
         I1Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=r6TyiNkf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=040gOffm/FjiXLkPBrPypY+VfaPD0oxrLBp4HQfbT+M=;
        b=SSTuLtF/yjjT79aCw49/SCSWR3qkzm7hgyYYR1J8z9OJIg6ffNEh/AOg0YsmrpJgXD
         BXRLvXpygKQudvUoNPisO0IP8TSwFylG+IwdSr+KHpmVzKFCId7ssamGlNPtMmXJT1bE
         ZVyet5ioa54vvKzJEdo/slpl+m0V+G5DLrPUDG3MeW4W2pPEBmt5OtUhhChSjo9KM8+t
         77J7JSDL4BHpU1j7Nvcq5zLKg2XPXwfuU656/ZNVF/I0g+1yrFdDJdXdVyXwdCFVc8PU
         5zY3onMEZVHyWsoRGiYErRe7CSVF8TBUs3dxO0ivX+oMOnbc2k2eM3RnJGs97S882qWa
         vhJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=040gOffm/FjiXLkPBrPypY+VfaPD0oxrLBp4HQfbT+M=;
        b=Oax/V1fWjtMf6VDeYfz+2FBnfAXnzRA70xmJj7a50aJCvTA86j3t8x+F1ZRobFGBGg
         AYofSgVTF4xt8sGkNyYUh+KW4a/yii+EOlBPk/8gkANSaCE5V4e7LUHRSoq55pYRHviH
         tObGhsBKl2KH3+uVaTugmOTAudIQshjt87lsg/u7+0h6DAbP3zWBJusZ/Okulw6L6bHT
         07D8gbAa+hdUBrvjtcykRh78NMY3yTBFnw1r+vSu31jyNZR0gwrTLZb8otPq5eK2zQGn
         RvXnFb12Ii1/oUbvX2I/zLjOvTHn+PQBa2dJv/L7/0cRu/dWG/xehQtmrnCZ44+U2A/J
         Xdzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0CtQce55lMQ0cCg5Y3VupjkyvOZzZ8BlvuWKTeeaFzJQfOLDRD
	0lc9Rk7hFK8ZwbbG0ePUV3I=
X-Google-Smtp-Source: ADFU+vu4dVZ7ELz0TGBUqm6a8Oyhls4yVog5uC4gVMEJZ14K/TzJEluHD1h1Y32Dls+Iy6Sy8MoXqw==
X-Received: by 2002:a17:90a:e50e:: with SMTP id t14mr7649793pjy.98.1585447063063;
        Sat, 28 Mar 2020 18:57:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:245:: with SMTP id fz5ls11826984pjb.3.canary-gmail;
 Sat, 28 Mar 2020 18:57:42 -0700 (PDT)
X-Received: by 2002:a17:902:7c05:: with SMTP id x5mr2004789pll.166.1585447062647;
        Sat, 28 Mar 2020 18:57:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585447062; cv=none;
        d=google.com; s=arc-20160816;
        b=yU+mXoFM5VG6t1Z63oIXi4R+kBoOoMIbFZDd31gCdGXlU7iRDV8gJF5AYiZ+j8Xiyg
         j4W+Q6/UpNDu/JsPpgl7GAeyXPj2Wv75EfzX3yzeyvW0vx+FbIdDYdXkSNC0FJQA2Ech
         zf+kt07UpuAQ9JU9TS566+EFhFCnooya8zX4Zt3uAPByvvrC5d/5tGG9LtWaztTCO56K
         UIK91er9Qx0ntt6BEGMT9UheKJHZr8ME6q5SwXvNhx0lm0wB8G4tYyUFnOKON6pLYR4L
         VGXvCqvhsw01SZgvC5ZAARv80eszR6j5MSTqPozWs5k8RThLRw+XSeAl2IJXu7aRPGwT
         dWEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=oMdZgRwA3al/jFx6COVLMolJ0bnHiv2oH48zwHS3juc=;
        b=RkcP0f1AQpvKwXv/kVj8cxCe7nrqWkUSEUMF7Ua05MY5frIfHZE+2OvcLQ5Nm62EQo
         hr0SM3Bv1IMLCxK4xQ3c1bGcHEf3VNMgiL7+xwuL/HLdRtsfLt+mF/e1PtH1O7M8VYVJ
         YseTzvwu4zyAF9tXeUqoOLG9Ym9E0Vtfy3n70Sp9yddzgtZmBUwp6fiJZgRJ1yN2cnxz
         u7oIEvJY6z6/topwAvbnTeDUNatxX5UE80+XuP5BictbyFZKcvubbdiRNhBmRWwqQ+g8
         G3EdVeM8R/jUxAb3C/gS1URP0sx4Z3OAwKrafAsagbM/lABkoBdvrZZ/VZIJtihEE0ID
         wKgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=r6TyiNkf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id ne6si788879pjb.1.2020.03.28.18.57.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2020 18:57:42 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 02T1vQ7u006895
	for <clang-built-linux@googlegroups.com>; Sun, 29 Mar 2020 10:57:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 02T1vQ7u006895
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id 184so8008064vsu.3
        for <clang-built-linux@googlegroups.com>; Sat, 28 Mar 2020 18:57:26 -0700 (PDT)
X-Received: by 2002:a67:6542:: with SMTP id z63mr4135422vsb.179.1585447045756;
 Sat, 28 Mar 2020 18:57:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86> <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
In-Reply-To: <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 29 Mar 2020 10:56:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
Message-ID: <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Sandeep Patil <sspatil@google.com>
Content-Type: multipart/mixed; boundary="000000000000f9953d05a1f4a7d0"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=r6TyiNkf;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

--000000000000f9953d05a1f4a7d0
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 28, 2020 at 1:54 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Sat, Mar 28, 2020 at 7:42 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Sorry for the delay in review :(
> >
> > On Tue, Mar 17, 2020 at 02:55:15PM -0700, Nick Desaulniers wrote:
> > > Prior to this patch, building the Linux kernel with Clang
> > > looked like:
> > >
> > > $ make CC=clang
> > >
> > > or when cross compiling:
> > >
> > > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang
> > >
> > > which got very verbose and unwieldy when using all of LLVM's substitutes
> > > for GNU binutils:
> > >
> > > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang AS=clang \
> > >   LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
> > >   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \
> > >   READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
> > >   HOSTLD=ld.lld
> > >
> > > This change adds a new Makefile under scripts/ which will be included in
> > > the top level Makefile AFTER CC and friends are set, in order to make
> > > the use of LLVM utilities when building a Linux kernel more ergonomic.
> > >
> > > With this patch, the above now looks like:
> > >
> > > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y
> > >
> > > Then you can "opt out" of certain LLVM utilities explicitly:
> > >
> > > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y AS=as
> > >
> > > will instead invoke arm-linux-gnueabihf-as in place of clang for AS.
> > >
> > > Or when not cross compiling:
> > >
> > > $ make LLVM=y AS=as
> > >
> > > This would make it more verbose to opt into just one tool from LLVM, but
> > > this patch doesn't actually break the old style; just leave off LLVM=y.
> > > Also, LLVM=y CC=clang would wind up prefixing clang with $CROSS_COMPILE.
> > > In that case, it's recommended to just drop LLVM=y and use the old
> > > style. So LLVM=y can be thought of as default to LLVM with explicit opt
> > > ins for GNU, vs the current case of default to GNU and opt in for LLVM.
> > >
> > > A key part of the design of this patch is to be minimally invasive to
> > > the top level Makefile and not break existing workflows. We could get
> > > more aggressive, but I'd prefer to save larger refactorings for another
> > > day.
> > >
> > > Finally, some linux distributions package specific versions of LLVM
> > > utilities with naming conventions that use the version as a suffix, ie.
> > > clang-11.  In that case, you can use LLVM=<number> and that number will
> > > be used as a suffix. Example:
> > >
> > > $ make LLVM=11
> > >
> > > will invoke clang-11, ld.lld-11, llvm-objcopy-11, etc.
> > >
> > > About the script:
> > > The pattern used in the script is in the form:
> > >
> > > ifeq "$(origin $(CC))" "file"
> > > $(CC) := $(clang)
> > > else
> > > override $(CC) := $(CROSS_COMPILE)$(CC)
> > > endif
> > >
> > > "Metaprogramming" (eval) is used to template the above to make it more
> > > concise for specifying all of the substitutions.
> > >
> > > The "origin" of a variable tracks whether a variable was explicitly set
> > > via "command line", "environment", was defined earlier via Makefile
> > > "file", was provided by "default", or was "undefined".
> > >
> > > Variable assignment in GNU Make has some special and complicated rules.
> > >
> > > If the variable was set earlier explicitly in the Makefile, we can
> > > simply reassign a new value to it. If a variable was unspecified, then
> > > earlier assignments were executed and change the origin to file.
> > > Otherwise, the variable was explicitly specified.
> > >
> > > If a variable's "origin" was "command line" or "environment",
> > > non-"override" assignments are not executed. The "override" directive
> > > forces the assignment regardless of "origin".
> > >
> > > Some tips I found useful for debugging for future travelers:
> > >
> > > $(info $$origin of $$CC is $(origin CC))
> > >
> > > at the start of the new script for all of the variables can help you
> > > understand "default" vs "undefined" variable origins.
> > >
> > > $(info $$CC is [${CC}])
> > >
> > > in the top level Makefile after including the new script, for all of the
> > > variables can help you check that they're being set as expected.
> > >
> > > Link: https://www.gnu.org/software/make/manual/html_node/Eval-Function.html
> > > Link: https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
> > > Link: https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
> > > Link: https://www.gnu.org/software/make/manual/html_node/Override-Directive.html
> > > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > > Changes V1 -> V2:
> > > * Rather than LLVM=1, use LLVM=y to enable all.
> > > * LLVM=<anything other than y> becomes a suffix, LLVM_SUFFIX.
> > > * strip has to be used on the LLVM_SUFFIX to avoid an extra whitespace.
> > >
> > >
> > >  Makefile              |  4 ++++
> > >  scripts/Makefile.llvm | 30 ++++++++++++++++++++++++++++++
> > >  2 files changed, 34 insertions(+)
> > >  create mode 100644 scripts/Makefile.llvm
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 402f276da062..72ec9dfea15e 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -475,6 +475,10 @@ KBUILD_LDFLAGS :=
> > >  GCC_PLUGINS_CFLAGS :=
> > >  CLANG_FLAGS :=
> > >
> > > +ifneq ($(LLVM),)
> > > +include scripts/Makefile.llvm
> > > +endif
> > > +
> > >  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
> > >  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
> > >  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> > > diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
> > > new file mode 100644
> > > index 000000000000..0bab45a100a3
> > > --- /dev/null
> > > +++ b/scripts/Makefile.llvm
> > > @@ -0,0 +1,30 @@
> > > +LLVM_SUFFIX=
> > > +
> > > +ifneq ($(LLVM),y)
> > > +LLVM_SUFFIX += -$(LLVM)
> > > +endif
> > > +
> > > +define META_set =
> > > +ifeq "$(origin $(1))" "file"
> > > +$(1) := $(2)$(strip $(LLVM_SUFFIX))
> > > +else
> > > +override $(1) := $(CROSS_COMPILE)$($(1))
> > > +endif
> > > +endef
> > > +
> > > +$(eval $(call META_set,CC,clang))
> > > +$(eval $(call META_set,AS,clang))
> > > +$(eval $(call META_set,LD,ld.lld))
> > > +$(eval $(call META_set,AR,llvm-ar))
> > > +$(eval $(call META_set,NM,llvm-nm))
> > > +$(eval $(call META_set,STRIP,llvm-strip))
> > > +$(eval $(call META_set,OBJCOPY,llvm-objcopy))
> > > +$(eval $(call META_set,OBJDUMP,llvm-objdump))
> > > +$(eval $(call META_set,OBJSIZE,llvm-objsize))
> > > +$(eval $(call META_set,READELF,llvm-readelf))
> > > +$(eval $(call META_set,HOSTCC,clang))
> > > +$(eval $(call META_set,HOSTCXX,clang++))
> > > +$(eval $(call META_set,HOSTAR,llvm-ar))
> > > +$(eval $(call META_set,HOSTLD,ld.lld))
> > > +
> > > +## TODO: HOSTAR, HOSTLD in tools/objtool/Makefile
> > > --


I also had planned to provide a single switch to change
all the tool defaults to LLVM.

So, supporting 'LLVM' is fine, but I'd rather want this
look symmetrical, and easy to understand.

CPP        = $(CC) -E
ifneq ($(LLVM),)
CC         = $(LLVM_DIR)clang
LD         = $(LLVM_DIR)ld.lld
AR         = $(LLVM_DIR)llvm-ar
NM         = $(LLVM_DIR)llvm-nm
OBJCOPY    = $(LLVM_DIR)llvm-objcopy
OBJDUMP    = $(LLVM_DIR)llvm-objdump
READELF    = $(LLVM_DIR)llvm-readelf
OBJSIZE    = $(LLVM_DIR)llvm-size
STRIP      = $(LLVM_DIR)llvm-strip
else
CC         = $(CROSS_COMPILE)gcc
LD         = $(CROSS_COMPILE)ld
AR         = $(CROSS_COMPILE)ar
NM         = $(CROSS_COMPILE)nm
OBJCOPY    = $(CROSS_COMPILE)objcopy
OBJDUMP    = $(CROSS_COMPILE)objdump
READELF    = $(CROSS_COMPILE)readelf
OBJSIZE    = $(CROSS_COMPILE)size
STRIP      = $(CROSS_COMPILE)strip
endif



I attached two patches.
Comments appreciated.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ3%3DjUu4aa%3DJQB8wErUGDd-Vr%3DcX_yZSdP_uAP6kWZ%3Dpw%40mail.gmail.com.

--000000000000f9953d05a1f4a7d0
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0002-kbuild-change-the-default-of-HOST-CC-CXX-to-cc-and-c.patch"
Content-Disposition: attachment; 
	filename="0002-kbuild-change-the-default-of-HOST-CC-CXX-to-cc-and-c.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k8cdxehi1>
X-Attachment-Id: f_k8cdxehi1

RnJvbSBmM2E2MjBhYmVlNWUyNmRkYTA0ZjdhNzQ3YTU0YWIwNzVmNDViNzBkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3Jn
PgpEYXRlOiBTYXQsIDI4IE1hciAyMDIwIDE4OjU3OjI1ICswOTAwClN1YmplY3Q6IFtQQVRDSCAy
LzJdIGtidWlsZDogY2hhbmdlIHRoZSBkZWZhdWx0IG9mIEhPU1R7Q0MsQ1hYfSB0byBjYyBhbmQg
YysrCgpJIGhhdmUgYmVlbiB0aGlua2luZyBob3cgdG8gY2F0ZXIgdG8gdGhvc2Ugd2hvIHdhbnQg
dG8gYnVpbGQgaG9zdApwcm9ncmFtcyB3aXRoIENsYW5nLgoKV2UgY291bGQgdXNlIHRoZSB2YXJp
YWJsZSAnTExWTScgdG8gc3dpdGNoIHRoZSBkZWZhdWx0IG9mIEhPU1R7Q0MsQ1hYfToKCiAgaWZu
ZXEgKCQoTExWTSksKQogIEhPU1RDQyAgICAgICA9IGNsYW5nCiAgSE9TVENYWCAgICAgID0gY2xh
bmcrKwogIGVsc2UKICBIT1NUQ0MgICAgICAgPSBnY2MKICBIT1NUQ1hYICAgICAgPSBnKysKICBl
bmRpZgoKQnV0LCBJIGRvIG5vdCBrbm93IGhvdyBtYW55IHBlb3BsZSBjYXJlIGFib3V0IHRoaXMu
IFRoZXJlIGlzIG5vIHRyaWNreQpjb2RlIGluIHVzZXJzcGFjZSBwcm9ncmFtcywgYW5kIHdlIGtu
b3cgd2UgY2FuIGNvbXBpbGUgdGhlbSB3aXRoIEdDQywKQ2xhbmcsIG9yIHdoYXRldmVyLiBObyBt
YXR0ZXIgd2hhdCB5b3UgdXNlIGZvciBob3N0IHByb2dyYW1zLCBpdCBtYWtlcwpubyBkaWZmZXJl
bmNlIHRvIHRoZSBrZXJuZWwgaXRzZWxmLgoKSWYgeW91IGFyZSBzbyBhZGRpY3RlZCB0byBMTFZN
IG9yIGlmIHlvdSBhcmUgdXNpbmcgYSBzeXN0ZW0gd2l0aCBubyBHQ0MKaW5zdGFsbGF0aW9uLCBw
cm9iYWJseSB5b3UgaGFkIGFscmVhZHkgaGFkICdjYycgYW5kICdjKysnIHBvaW50IHRvIENsYW5n
LgoKU28sIGFub3RoZXIgYXBwcm9hY2ggaXMgdG8ganVzdCBsZWF2ZSB0aGlzIHVwIHRvIHRoZSBz
eXN0ZW0uIFlvdSBjYW4KbWFudWFsbHkgc2V0IHVwIHN5bWxpbmtzLCBvciBtYXliZSB5b3VyIGRp
c3RybyBwcm92aWRlcyAnYWx0ZXJuYXRpdmVzJy4KCiAgJCB1cGRhdGUtYWx0ZXJuYXRpdmVzIC0t
bGlzdCBjYwogIC91c3IvYmluL2NsYW5nCiAgL3Vzci9iaW4vZ2NjCiAgJCB1cGRhdGUtYWx0ZXJu
YXRpdmVzIC0tbGlzdCBjKysKICAvdXNyL2Jpbi9jbGFuZysrCiAgL3Vzci9iaW4vZysrCgpJIGhh
dmUgbm8gaWRlYSB3aGF0IHRvIGRvIGZvciB0b29scy9vYmp0b29sL01ha2VmaWxlLCB3aGljaCB1
c2VzIEhPU1RBUgphbmQgSE9TVExELCBidXQgdGhpcyBpcyBiZWNhdXNlIG9ianRvb2wgaW50ZW50
aW9uYWxseSBvcHRzIG91dCBLYnVpbGQuCklmIG9ianRvb2wgaXMgd2lsbGluZyB0byBqb2luIHRo
ZSBLYnVpbGQgaW5mcmFzdHJ1Y3R1cmUsIGEgcGF0Y2ggZXhpc3RzOgoKICBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3BhdGNoLzEwODM5MDUxLwoKU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8g
WWFtYWRhIDxtYXNhaGlyb3lAa2VybmVsLm9yZz4KLS0tCiBNYWtlZmlsZSB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9NYWtlZmlsZSBiL01ha2VmaWxlCmluZGV4IGYxOTJmOWJkODM0My4uZWNkZDM0YWQwNzUwIDEw
MDY0NAotLS0gYS9NYWtlZmlsZQorKysgYi9NYWtlZmlsZQpAQCAtMzk5LDggKzM5OSw4IEBAIEhP
U1RfTEZTX0NGTEFHUyA6PSAkKHNoZWxsIGdldGNvbmYgTEZTX0NGTEFHUyAyPi9kZXYvbnVsbCkK
IEhPU1RfTEZTX0xERkxBR1MgOj0gJChzaGVsbCBnZXRjb25mIExGU19MREZMQUdTIDI+L2Rldi9u
dWxsKQogSE9TVF9MRlNfTElCUyA6PSAkKHNoZWxsIGdldGNvbmYgTEZTX0xJQlMgMj4vZGV2L251
bGwpCiAKLUhPU1RDQyAgICAgICA9IGdjYwotSE9TVENYWCAgICAgID0gZysrCitIT1NUQ0MgICAg
ICAgPSBjYworSE9TVENYWCAgICAgID0gYysrCiBLQlVJTERfSE9TVENGTEFHUyAgIDo9IC1XYWxs
IC1XbWlzc2luZy1wcm90b3R5cGVzIC1Xc3RyaWN0LXByb3RvdHlwZXMgLU8yIFwKIAkJLWZvbWl0
LWZyYW1lLXBvaW50ZXIgLXN0ZD1nbnU4OSAkKEhPU1RfTEZTX0NGTEFHUykgXAogCQkkKEhPU1RD
RkxBR1MpCi0tIAoyLjE3LjEKCg==
--000000000000f9953d05a1f4a7d0
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-kbuild-support-LLVM-to-switch-the-default-tools-to-C.patch"
Content-Disposition: attachment; 
	filename="0001-kbuild-support-LLVM-to-switch-the-default-tools-to-C.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k8cdxegu0>
X-Attachment-Id: f_k8cdxegu0

RnJvbSA2NjIwZjEzODA3YjQ2NmM1ZTRhZjA4YjJkNWQzM2Y1YTQzM2IxZTNmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3Jn
PgpEYXRlOiBTYXQsIDI4IE1hciAyMDIwIDE1OjU0OjQ3ICswOTAwClN1YmplY3Q6IFtQQVRDSCAx
LzJdIGtidWlsZDogc3VwcG9ydCAnTExWTScgdG8gc3dpdGNoIHRoZSBkZWZhdWx0IHRvb2xzIHRv
CiBDbGFuZy9MTFZNCgpBcyBEb2N1bWVudGF0aW9uL2tidWlsZC9sbHZtLnJzdCBpbXBsaWVzLCBi
dWlsZGluZyB0aGUga2VybmVsIHdpdGggYQpmdWxsIHNldCBvZiBMTFZNIHRvb2xzIGdldHMgdmVy
eSB2ZXJib3NlIGFuZCB1bndpZWxkeS4KClByb3ZpZGUgYSBzaW5nbGUgc3dpdGNoICdMTFZNJyB0
byB1c2UgQ2xhbmcgYW5kIExMVk0gdG9vbHMgaW5zdGVhZCBvZgpHQ0MgYW5kIEJpbnV0aWxzLiBZ
b3UgY2FuIHBhc3MgTExWTT0xIGZyb20gdGhlIGNvbW1hbmQgbGluZSBvciBhcyBhbgplbnZpcm9u
bWVudCB2YXJpYWJsZS4gVGhlbiwgS2J1aWxkIHdpbGwgdXNlIExMVk0gdG9vbGNoYWlucyBpbiB5
b3VyClBBVEggZW52aXJvbm1lbnQuIFRoaXMgbWF5IG5vdCBiZSBjb252ZW5pZW50IGlmIHlvdSBo
YXZlIG11bHRpcGxlCnZlcnNpb25zIG9mIExMVk0uCgpDUk9TU19DT01QSUxFIGlzIHVzZWQgdG8g
c3BlY2lmeSBub3Qgb25seSB0aGUgdG9vbCBwcmVmaXgsIGJ1dCBhbHNvCnRoZSBkaXJlY3Rvcnkg
cGF0aCB0byB0aGUgdG9vbHMuIEZvciBleGFtcGxlLAoKICAkIG1ha2UgQVJDSD1hcm02NCBDUk9T
U19DT01QSUxFPS9wYXRoL3RvL215L2djYy9iaW4vYWFyY2g2NC1saW51eC1nbnUtCgpUbyBzdXBw
b3J0IGEgc2ltaWxhciBmbG93LCB0aGlzIGNvbW1pdCBhZGRzIGFub3RoZXIgdmFyaWFibGUsIExM
Vk1fRElSLAp0byBwb2ludCB0byB0aGUgc3BlY2lmaWMgaW5zdGFsbGF0aW9uIG9mIExMVk06Cgog
ICQgbWFrZSBMTFZNPTEgTExWTV9ESVI9L3BhdGgvdG8vbXkvbGx2bS9iaW4vCgpJdCBtaWdodCBi
ZSB0ZWRpb3VzIHRvIHNldCB0d28gdmFyaWFibGVzLiBTbywgdGhlIGZvbGxvd2luZyBpcyB0aGUK
c2hvcnRoYW5kOgoKICAkIG1ha2UgTExWTT0vcGF0aC90by9teS9sbHZtL2Jpbi8KClBsZWFzZSBu
b3RlIExMVk09MSBkb2VzIG5vdCB0dXJuIG9uIHRoZSBMTFZNIGludGVncmF0ZWQgYXNzZW1ibGVy
LgpZb3UgbmVlZCB0byBwYXNzIEFTPWNsYW5nIHRvIHVzZSBpdC4gV2hlbiB0aGUgdXBzdHJlYW0g
a2VybmVsIGlzCnJlYWR5IGZvciB0aGUgaW50ZWdyYXRlZCBhc3NlbWJsZXIsIHdlIGNhbiBtYWtl
IGl0IGRlZmF1bHQuIFdlIHdpbGwKZ2V0IHJpZCBvZiAtLW5vLWludGVncmF0ZWQtYXMsIHRoZW4g
Q1JPU1NfQ09NUElMRSB3aWxsIGJlIG5vIGxvbmdlcgpuZWVkZWQuIFRoZSAtLXRhcmdldCBvcHRp
b24gd2lsbCBiZSBzcGVjaWZpZWQgYnkgb3RoZXIgbWVhbnMuCgpTaWduZWQtb2ZmLWJ5OiBNYXNh
aGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3JnPgotLS0KIERvY3VtZW50YXRpb24va2J1
aWxkL2tidWlsZC5yc3QgfCAgNiArKysrKysKIERvY3VtZW50YXRpb24va2J1aWxkL2xsdm0ucnN0
ICAgfCAgNSArKysrKwogTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICB8IDI5ICsrKysr
KysrKysrKysrKysrKysrKysrKystLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9rYnVpbGQva2J1
aWxkLnJzdCBiL0RvY3VtZW50YXRpb24va2J1aWxkL2tidWlsZC5yc3QKaW5kZXggZjFlNWRjZTg2
YWY3Li4zOWJiMzYzNmU0ZjQgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24va2J1aWxkL2tidWls
ZC5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9rYnVpbGQva2J1aWxkLnJzdApAQCAtMjYyLDMgKzI2
Miw5IEBAIEtCVUlMRF9CVUlMRF9VU0VSLCBLQlVJTERfQlVJTERfSE9TVAogVGhlc2UgdHdvIHZh
cmlhYmxlcyBhbGxvdyB0byBvdmVycmlkZSB0aGUgdXNlckBob3N0IHN0cmluZyBkaXNwbGF5ZWQg
ZHVyaW5nCiBib290IGFuZCBpbiAvcHJvYy92ZXJzaW9uLiBUaGUgZGVmYXVsdCB2YWx1ZSBpcyB0
aGUgb3V0cHV0IG9mIHRoZSBjb21tYW5kcwogd2hvYW1pIGFuZCBob3N0LCByZXNwZWN0aXZlbHku
CisKK0xMVk0KKy0tLS0KK0lmIHRoaXMgdmFyaWFibGUgaXMgc2V0IHRvIDEsIEtidWlsZCB3aWxs
IHVzZSBDbGFuZyBhbmQgTExWTSB1dGlsaXRpZXMgaW5zdGVhZAorb2YgR0NDIGFuZCBHTlUgYmlu
dXRpbHMgdG8gYnVpbGQgdGhlIGtlcm5lbC4KK0lmIHNldCB0byBhIHZhbHVlIG90aGVyIHRoYW4g
MSwgaXQgcG9pbnRzIHRvIGRpcmVjdG9yeSBwYXRoIHRvIExMVk0gdG8gYmUgdXNlZC4KZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24va2J1aWxkL2xsdm0ucnN0IGIvRG9jdW1lbnRhdGlvbi9rYnVp
bGQvbGx2bS5yc3QKaW5kZXggZDZjNzllYjRlMjNlLi40NjAyMzY5ZjZhNGYgMTAwNjQ0Ci0tLSBh
L0RvY3VtZW50YXRpb24va2J1aWxkL2xsdm0ucnN0CisrKyBiL0RvY3VtZW50YXRpb24va2J1aWxk
L2xsdm0ucnN0CkBAIC01NSw2ICs1NSwxMSBAQCBhZGRpdGlvbmFsIHBhcmFtZXRlcnMgdG8gYG1h
a2VgLgogCSAgUkVBREVMRj1sbHZtLXJlYWRlbGYgSE9TVENDPWNsYW5nIEhPU1RDWFg9Y2xhbmcr
KyBIT1NUQVI9bGx2bS1hciBcXAogCSAgSE9TVExEPWxkLmxsZAogCitZb3UgY2FuIHVzZSBhIHNp
bmdsZSBzd2l0Y2ggYExMVk09MWAgdG8gdXNlIExMVk0gdXRpbGl0aWVzIGJ5IGRlZmF1bHQgKGV4
Y2VwdAorZm9yIGJ1aWxkaW5nIGhvc3QgcHJvZ3JhbXMpLgorCisJbWFrZSBMTFZNPTEgSE9TVEND
PWNsYW5nIEhPU1RDWFg9Y2xhbmcrKyBIT1NUQVI9bGx2bS1hciBIT1NUTEQ9bGQubGxkCisKIEdl
dHRpbmcgSGVscAogLS0tLS0tLS0tLS0tCiAKZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZp
bGUKaW5kZXggYTNiYzhiYzU2MmVlLi5mMTkyZjliZDgzNDMgMTAwNjQ0Ci0tLSBhL01ha2VmaWxl
CisrKyBiL01ha2VmaWxlCkBAIC00MDgsMTcgKzQwOCwzOCBAQCBLQlVJTERfSE9TVENYWEZMQUdT
IDo9IC1PMiAkKEhPU1RfTEZTX0NGTEFHUykgJChIT1NUQ1hYRkxBR1MpCiBLQlVJTERfSE9TVExE
RkxBR1MgIDo9ICQoSE9TVF9MRlNfTERGTEFHUykgJChIT1NUTERGTEFHUykKIEtCVUlMRF9IT1NU
TERMSUJTICAgOj0gJChIT1NUX0xGU19MSUJTKSAkKEhPU1RMRExJQlMpCiAKKyMgTExWTT0xIHRl
bGxzIEtidWlsZCB0byB1c2UgQ2xhbmcgYW5kIExMVk0gdXRpbGl0aWVzIGJ5IGRlZmF1bHQuCisj
IFlvdSBjYW4gc3RpbGwgb3ZlcnJpZGUgQ0MsIExELCBldGMuIGluZGl2aWR1YWxseSBpZiBkZXNp
cmVkLgorIworIyBJZiBMTFZNIGlzIHNldCB0byBhIHZhbHVlIG90aGVyIHRoYW4gMSwgaXQgaXMg
c2V0IHRvIExMVk1fRElSLAorIyB3aGljaCBpcyB1c2VmdWwgdG8gc2VsZWN0IGEgc3BlY2lmaWMg
TExWTSBpbnN0YWxsYXRpb24uCitpZm5lcSAoJChmaWx0ZXItb3V0IDEsJChMTFZNKSksKQorTExW
TV9ESVIgOj0gJChMTFZNKQorZW5kaWYKKwogIyBNYWtlIHZhcmlhYmxlcyAoQ0MsIGV0Yy4uLikK
LUxECQk9ICQoQ1JPU1NfQ09NUElMRSlsZAotQ0MJCT0gJChDUk9TU19DT01QSUxFKWdjYwogQ1BQ
CQk9ICQoQ0MpIC1FCitpZm5lcSAoJChMTFZNKSwpCitDQwkJPSAkKExMVk1fRElSKWNsYW5nCitM
RAkJPSAkKExMVk1fRElSKWxkLmxsZAorQVIJCT0gJChMTFZNX0RJUilsbHZtLWFyCitOTQkJPSAk
KExMVk1fRElSKWxsdm0tbm0KK09CSkNPUFkJCT0gJChMTFZNX0RJUilsbHZtLW9iamNvcHkKK09C
SkRVTVAJCT0gJChMTFZNX0RJUilsbHZtLW9iamR1bXAKK1JFQURFTEYJCT0gJChMTFZNX0RJUils
bHZtLXJlYWRlbGYKK09CSlNJWkUJCT0gJChMTFZNX0RJUilsbHZtLXNpemUKK1NUUklQCQk9ICQo
TExWTV9ESVIpbGx2bS1zdHJpcAorZWxzZQorQ0MJCT0gJChDUk9TU19DT01QSUxFKWdjYworTEQJ
CT0gJChDUk9TU19DT01QSUxFKWxkCiBBUgkJPSAkKENST1NTX0NPTVBJTEUpYXIKIE5NCQk9ICQo
Q1JPU1NfQ09NUElMRSlubQotU1RSSVAJCT0gJChDUk9TU19DT01QSUxFKXN0cmlwCiBPQkpDT1BZ
CQk9ICQoQ1JPU1NfQ09NUElMRSlvYmpjb3B5CiBPQkpEVU1QCQk9ICQoQ1JPU1NfQ09NUElMRSlv
YmpkdW1wCi1PQkpTSVpFCQk9ICQoQ1JPU1NfQ09NUElMRSlzaXplCiBSRUFERUxGCQk9ICQoQ1JP
U1NfQ09NUElMRSlyZWFkZWxmCitPQkpTSVpFCQk9ICQoQ1JPU1NfQ09NUElMRSlzaXplCitTVFJJ
UAkJPSAkKENST1NTX0NPTVBJTEUpc3RyaXAKK2VuZGlmCiBQQUhPTEUJCT0gcGFob2xlCiBMRVgJ
CT0gZmxleAogWUFDQwkJPSBiaXNvbgotLSAKMi4xNy4xCgo=
--000000000000f9953d05a1f4a7d0--
