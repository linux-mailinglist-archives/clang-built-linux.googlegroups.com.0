Return-Path: <clang-built-linux+bncBAABB2FR7PZQKGQEALCMIDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAF4196397
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 05:56:09 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id j12sf11050381ilf.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 21:56:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585371368; cv=pass;
        d=google.com; s=arc-20160816;
        b=uU8vpZSCVe0dsjbsXsxxotubF9QkXhfMNN+ZAembJ2Ynw8MuhkxJn2ZXNUi0+VNQE3
         eGJ0w5AdLzuWu0GzGWap5k6baTNZNK8sop74fa/4plBDt6xOR2QVZ4L0HPFdKC0FqSn+
         vNvVXcPgVhvW6OxwEgabsjazQymKmsWmAK51JnKh1Oo/JHImmrL6aOiQAwp3bTyMPPzx
         B/nWBIUqRsf8Twm8GNTDmuCtAL56ozJfAl2r24VKnG1PVpUTNyX6ghXxxopxCWV6eWUe
         LHndZukTwRDIZFmyVWVh58QQ+QhxfjchWl6wgE/MfRVrRzmYMyN1lbfvbAPym7pumtxX
         o2RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4nxz64Zptla0mN1PLhMx/lmU4PKaxP8arCMDFihHAxw=;
        b=O3y7jX56lpoHFIpp2fb4tcSnq7zxixcFbQAnrZYJI7hYm+Q3vG7eBZVtBrZGYYQmnp
         KzyVwIYEi2kp6nHQLUk/RXiqfxQg6/ySoNzcUtrApjFJFa5oQARQEbpCRvbU1cNASUEw
         vmdu5STLvWp9PHwS8RW2hpudMi027CwPe8xKamhzPYAhyOIumrstsMWoa6YdEVKoFvt7
         VJiG4NtUPHIERflw9HuCsY29GoildzJeWzvU5dCVoP0xgxTEO9AMYIFCLxL65Skj1eap
         l22nIZKprexvOoRU/HjB/sHaLJvId+6rdewfpR8q8sI2VDl47ffzY+fE2Z5gxdMI9Jei
         Rf+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=BBEiC5fc;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4nxz64Zptla0mN1PLhMx/lmU4PKaxP8arCMDFihHAxw=;
        b=OVCR/JmWTWOtjIrJ+0eLt8dgQ9WqLQSjTSqHuuGsc9urUfsDbiQgmc44gZxUI7oeq6
         L8VkojmzmrEpGv0LYHeOkmhhdQylr76UL5w7kC7Lukrx8BLFB77qHWHovPwGA95tK+6S
         gMd4WkuQ24xK+sdlx4xvIacyBoZpl820lk0NtWPkisouNFMaXblh2pCnO6pLhENhfPXT
         1mh124xqo2P5oyurbYSnNHUoEXPMfLW1HJEKPcrmo2q/s4pUhAp3WkTpdmMq3JCaT96q
         RLNbzI30/F97jDRC6yOzc0FFxOvG6Q6ekV0+KdcAINO8j2aBMeL2i9fhAr8NDK0ita54
         /z8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4nxz64Zptla0mN1PLhMx/lmU4PKaxP8arCMDFihHAxw=;
        b=Gd9mMj7idobsZuX/AEmZaTLThdIkrC3t75BLYRcI/1xavxhC79OiWeLuVWsMpd1y36
         CONubiMRHrQqhCc5qWrzU4UjZ3XsCb4Sbjemjca/Jx131SzHF3HpGiTkFF/AiFqZcCww
         eTPebxSt/HQnbjoTsfBxgdkWInaFN4tW6349SJi041sr57zdH5TIjY0I98a0YdaPnlqz
         HgYOOQCxS2M1bud0t+NfKcTOwPBqZF/2930TAOXyROlcrfUclCJTlbcxeUbzHMgkmxv+
         DRAcg7eIucBtPw9qhSHihOsQfttZqTG7DDMYdc6F8VtWP1IsK5X6DLL4qE8ZH6vnpE53
         BTXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3lE0nT88xPFZm6EWsbCfcm0PQB43gvgdV7AXVYraq78Xc/hp3G
	MZ5S7xiZx8D3rWKkTH6gCn0=
X-Google-Smtp-Source: ADFU+vsFQmS+CN8wYdmLlCbn28O08eNpBtZ5LPffi6kbyLM+HLe/hvd5I8oxqLnL7rdf/S1gh2INuw==
X-Received: by 2002:a5d:944c:: with SMTP id x12mr1800781ior.100.1585371368607;
        Fri, 27 Mar 2020 21:56:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9cc6:: with SMTP id x67ls3510986ill.1.gmail; Fri, 27 Mar
 2020 21:56:08 -0700 (PDT)
X-Received: by 2002:a92:da4a:: with SMTP id p10mr2310767ilq.34.1585371368291;
        Fri, 27 Mar 2020 21:56:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585371368; cv=none;
        d=google.com; s=arc-20160816;
        b=JnxO3TPJU9MBBqi2HgDq+vn20Uy07y6U1X17o8Mpj90b2/kWOG/PogxXOxjQCHHdTT
         ih0o4CvpdBSsyn3hhmUbaPnogZSvvsmD2BX1PzB6/SJhdObiJV9J/R1uCuUPUfwbyl9S
         9owbaA5QfsRkO7Gyj/ZF07BqIPL++tlsbKaToEQojIJkORBUr0H9nE6VqS/s+Cc9yLZK
         DGJYE2V4gRq7WZWknJZf+jQ7riGpLixvPTm/Q8nBYq0BMih8+ZYZtiG5nUj9YRvOF+ax
         wHaan03vF6zYOqKyvCU1ZO/wQQcUJPUDx/C8kxvxY6J7sTOHJAVDA1NCaQxwYCQGHOzs
         /hYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Vr6JjIdjM3H8UNhqrhJl9jK2dxQSrEpknfNIO7vlN7s=;
        b=VD0eHLRCtp9Djo8ipp2/2ytZJ9h/Q5qy5bKfPAh6GOxGDDIriOBbYIJsayv/cKxSv/
         Jqt0ksHqkamJvr9oQHPBRCJw2lUvhHtl3EnbKS5Xi8llskirywninLXBw5SDObcbO/p7
         DL7d/TBxUWgxwbOR+XqURFpDwesPbCdCAzTVu15XH2M24FdLBfBLL/OYcOpvlZP80Ihm
         1kywJH9JyobZ/075vn+zu1nq2J0JoL2Q5xZBXAFnCqaH9hBSEKaaaTr4FVURnQHtcMvy
         j2SnLohUE21jZevrnjUEOhv/Fs5853BuUb2/HUSyoTldhQ2KFLT14thDeaPcvJN/465r
         8BhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=BBEiC5fc;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id m8si594647ili.2.2020.03.27.21.56.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 21:56:08 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 02S4tYVR011290
	for <clang-built-linux@googlegroups.com>; Sat, 28 Mar 2020 13:55:35 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 02S4tYVR011290
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id b5so7656883vsb.1
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 21:55:35 -0700 (PDT)
X-Received: by 2002:a67:3201:: with SMTP id y1mr1879956vsy.54.1585371333995;
 Fri, 27 Mar 2020 21:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200327224246.GA12350@ubuntu-m2-xlarge-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 28 Mar 2020 13:54:57 +0900
X-Gmail-Original-Message-ID: <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
Message-ID: <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=BBEiC5fc;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Mar 28, 2020 at 7:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Sorry for the delay in review :(
>
> On Tue, Mar 17, 2020 at 02:55:15PM -0700, Nick Desaulniers wrote:
> > Prior to this patch, building the Linux kernel with Clang
> > looked like:
> >
> > $ make CC=clang
> >
> > or when cross compiling:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang
> >
> > which got very verbose and unwieldy when using all of LLVM's substitutes
> > for GNU binutils:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang AS=clang \
> >   LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
> >   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \
> >   READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
> >   HOSTLD=ld.lld
> >
> > This change adds a new Makefile under scripts/ which will be included in
> > the top level Makefile AFTER CC and friends are set, in order to make
> > the use of LLVM utilities when building a Linux kernel more ergonomic.
> >
> > With this patch, the above now looks like:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y
> >
> > Then you can "opt out" of certain LLVM utilities explicitly:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y AS=as
> >
> > will instead invoke arm-linux-gnueabihf-as in place of clang for AS.
> >
> > Or when not cross compiling:
> >
> > $ make LLVM=y AS=as
> >
> > This would make it more verbose to opt into just one tool from LLVM, but
> > this patch doesn't actually break the old style; just leave off LLVM=y.
> > Also, LLVM=y CC=clang would wind up prefixing clang with $CROSS_COMPILE.
> > In that case, it's recommended to just drop LLVM=y and use the old
> > style. So LLVM=y can be thought of as default to LLVM with explicit opt
> > ins for GNU, vs the current case of default to GNU and opt in for LLVM.
> >
> > A key part of the design of this patch is to be minimally invasive to
> > the top level Makefile and not break existing workflows. We could get
> > more aggressive, but I'd prefer to save larger refactorings for another
> > day.
> >
> > Finally, some linux distributions package specific versions of LLVM
> > utilities with naming conventions that use the version as a suffix, ie.
> > clang-11.  In that case, you can use LLVM=<number> and that number will
> > be used as a suffix. Example:
> >
> > $ make LLVM=11
> >
> > will invoke clang-11, ld.lld-11, llvm-objcopy-11, etc.
> >
> > About the script:
> > The pattern used in the script is in the form:
> >
> > ifeq "$(origin $(CC))" "file"
> > $(CC) := $(clang)
> > else
> > override $(CC) := $(CROSS_COMPILE)$(CC)
> > endif
> >
> > "Metaprogramming" (eval) is used to template the above to make it more
> > concise for specifying all of the substitutions.
> >
> > The "origin" of a variable tracks whether a variable was explicitly set
> > via "command line", "environment", was defined earlier via Makefile
> > "file", was provided by "default", or was "undefined".
> >
> > Variable assignment in GNU Make has some special and complicated rules.
> >
> > If the variable was set earlier explicitly in the Makefile, we can
> > simply reassign a new value to it. If a variable was unspecified, then
> > earlier assignments were executed and change the origin to file.
> > Otherwise, the variable was explicitly specified.
> >
> > If a variable's "origin" was "command line" or "environment",
> > non-"override" assignments are not executed. The "override" directive
> > forces the assignment regardless of "origin".
> >
> > Some tips I found useful for debugging for future travelers:
> >
> > $(info $$origin of $$CC is $(origin CC))
> >
> > at the start of the new script for all of the variables can help you
> > understand "default" vs "undefined" variable origins.
> >
> > $(info $$CC is [${CC}])
> >
> > in the top level Makefile after including the new script, for all of the
> > variables can help you check that they're being set as expected.
> >
> > Link: https://www.gnu.org/software/make/manual/html_node/Eval-Function.html
> > Link: https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
> > Link: https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
> > Link: https://www.gnu.org/software/make/manual/html_node/Override-Directive.html
> > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes V1 -> V2:
> > * Rather than LLVM=1, use LLVM=y to enable all.
> > * LLVM=<anything other than y> becomes a suffix, LLVM_SUFFIX.
> > * strip has to be used on the LLVM_SUFFIX to avoid an extra whitespace.
> >
> >
> >  Makefile              |  4 ++++
> >  scripts/Makefile.llvm | 30 ++++++++++++++++++++++++++++++
> >  2 files changed, 34 insertions(+)
> >  create mode 100644 scripts/Makefile.llvm
> >
> > diff --git a/Makefile b/Makefile
> > index 402f276da062..72ec9dfea15e 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -475,6 +475,10 @@ KBUILD_LDFLAGS :=
> >  GCC_PLUGINS_CFLAGS :=
> >  CLANG_FLAGS :=
> >
> > +ifneq ($(LLVM),)
> > +include scripts/Makefile.llvm
> > +endif
> > +
> >  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
> >  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
> >  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> > diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
> > new file mode 100644
> > index 000000000000..0bab45a100a3
> > --- /dev/null
> > +++ b/scripts/Makefile.llvm
> > @@ -0,0 +1,30 @@
> > +LLVM_SUFFIX=
> > +
> > +ifneq ($(LLVM),y)
> > +LLVM_SUFFIX += -$(LLVM)
> > +endif
> > +
> > +define META_set =
> > +ifeq "$(origin $(1))" "file"
> > +$(1) := $(2)$(strip $(LLVM_SUFFIX))
> > +else
> > +override $(1) := $(CROSS_COMPILE)$($(1))
> > +endif
> > +endef
> > +
> > +$(eval $(call META_set,CC,clang))
> > +$(eval $(call META_set,AS,clang))
> > +$(eval $(call META_set,LD,ld.lld))
> > +$(eval $(call META_set,AR,llvm-ar))
> > +$(eval $(call META_set,NM,llvm-nm))
> > +$(eval $(call META_set,STRIP,llvm-strip))
> > +$(eval $(call META_set,OBJCOPY,llvm-objcopy))
> > +$(eval $(call META_set,OBJDUMP,llvm-objdump))
> > +$(eval $(call META_set,OBJSIZE,llvm-objsize))
> > +$(eval $(call META_set,READELF,llvm-readelf))
> > +$(eval $(call META_set,HOSTCC,clang))
> > +$(eval $(call META_set,HOSTCXX,clang++))
> > +$(eval $(call META_set,HOSTAR,llvm-ar))
> > +$(eval $(call META_set,HOSTLD,ld.lld))
> > +
> > +## TODO: HOSTAR, HOSTLD in tools/objtool/Makefile
> > --
> > 2.25.1.481.gfbce0eb801-goog
> >
>
> The use of override appears to break exporting the value to Kconfig,
> which causes Kconfig to endlessly loop at the --syncconfig step:
>
> $ make -j$(nproc) ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- LD=ld LLVM=y defconfig prepare
> ...
> Makefile: LD is riscv64-linux-gnu-ld
> *** Default configuration is based on 'defconfig'
> Kconfig: LD is ld
> #
> # No change to .config
> #
> Makefile: LD is riscv64-linux-gnu-ld
> Makefile: LD is riscv64-linux-gnu-ld
> scripts/kconfig/conf  --syncconfig Kconfig
> Kconfig: LD is ld
> Makefile: LD is riscv64-linux-gnu-ld
> auto.conf.cmd: LD is riscv64-linux-gnu-ld
> Makefile: LD is riscv64-linux-gnu-ld
> scripts/kconfig/conf  --syncconfig Kconfig
> Kconfig: LD is ld
> Makefile: LD is riscv64-linux-gnu-ld
> auto.conf.cmd: LD is riscv64-linux-gnu-ld
> Makefile: LD is riscv64-linux-gnu-ld
> scripts/kconfig/conf  --syncconfig Kconfig
> Kconfig: LD is ld
> ...





Kconfig is invoked from scripts/kconfig/Makefile
instead of the top Makefile.


Just add one more debug code

   $(info scripts/kconfig/Makefile: LD is $(LD))

into scripts/kconfig/Makefile.


It is "ld", not "riscv64-linux-gnu-ld".



The variable passed from the command line
is strong, and overrides the variable in sub-make as well.




> This endless loops happens because auto.conf.cmd is constantly being
> regenerated because Kconfig is not picking up the override value, as you
> can see from the debugging output above and auto.conf.cmd below:
>
> $ rg -A 2 "LD\)" include/config/auto.conf.cmd | cat
> ifneq "$(LD)" "ld"
> include/config/auto.conf: FORCE
> endif
>
> $(LD) evaluates to riscv64-linux-gnu-ld, which is not equal to ld, so
> include/config/auto.conf is regenerated, but env_write_dep in
> scripts/kconfig/preprocess.c just picks up the environment value, rather
> than the value that was overridden. This appears to be related to
> recursive make calls from what I can tell.
>
> $ cat Makefile
> override FOO := foo
> export FOO
>
> all:
>         $(info Makefile: $$(FOO) is $(FOO))
>         $(MAKE) -f Makefile.sub all
>
> $ cat Makefile.sub
> all:
>         $(info Makefile.sub: $$(FOO) is $(FOO))
>
> $ make -s
> Makefile: $(FOO) is foo
> Makefile.sub: $(FOO) is foo
>
> $ make -s FOO=bar
> Makefile: $(FOO) is foo
> Makefile.sub: $(FOO) is bar
>
> No idea if this is a bug in make or not, this seems subtle. Not really
> sure where to go from here, hopefully this is useful to you or Masahiro.


This is not a bug.

The variable passed from the command line
(which is inherited to sub-make as well)
is stronger than the environment variable.

"make -s FOO=BAR" is not equivalent to "FOO=BAR make -s".




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o%3DK9XrfJbg%40mail.gmail.com.
