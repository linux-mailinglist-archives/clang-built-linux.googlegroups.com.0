Return-Path: <clang-built-linux+bncBD763O5S5UARB5UUW2DQMGQEL5J6LOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5553C7094
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 14:43:34 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id a4-20020adffb840000b02901304c660e75sf8573702wrr.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 05:43:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626180214; cv=pass;
        d=google.com; s=arc-20160816;
        b=rRzNO2urZQhHTg0Lph8Z1pVwRbyccHflgrz7y/fFrv2JrUvo3DS8Fo19sNwtmRc39Q
         gEI83I656ZjO6obsEfoR6iHKpnDrskGHaqdck/cC0xSaFzmRzNqia7Z9w64R8r2YPNer
         q9tN0nOap+zRpJbPIul1uqp8I4crb8eGjHG9QAZKM8zyWRU7GNHvXP5BzfURSMMmiJqJ
         VnrWbzzAN8fRSc+p6/PZP/RXIL3RstYn6jkMqVHbgeliv9z7piwaajuBJiGkWUD10THH
         6iAhlueCkYPqyD2AtcWVDtdfimvhloyg1JVg55ll9aHaUqFHC3orxFC+EaH46dOOvCiP
         XxTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=Vmdux6s6S/vnMaslYGNPwFr/gTlz2GOlll7RBuADqzU=;
        b=f5WCMq8OhiQLYRbKPSoqPxYaoeaJvOg0/xVdAYOivNKJR5s14UKBr5hDUjdUT2YbGH
         OGt3I4ZQ2vUgU0UPs1Rcnly9p/rByu3+v9stLIvyRK/pc0llSt+Mv+Y38LAdtUDqtf2Y
         NGV3rgCG0ppsZ8DqzjUgaBQeKNuHO05WDrP3K1vf9yGhn4lJE46+U27rqgqIBmukxZ5+
         acpGnMJlU19efOVydT7Om1KVTIxvMT4gpxx06UTp6GUCRgWm2PJWBvr2U2ulnb5Ad0Hm
         uvGvUnwEdNZZ+xe/zjH6kbAmW3vXurZREHoc+hfH2HnyQuLdEXrjqlRuon8Lfi/ES27t
         8z2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="Tc/6jsNd";
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="paaC/r3J";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Vmdux6s6S/vnMaslYGNPwFr/gTlz2GOlll7RBuADqzU=;
        b=UkrrCg3wbGoaOlvAusQkUwM/497dHLncVB1B0jaShx9tUaKloYkKbZo9FlKm1OBSsA
         wstwIvSpUtE+tUCwTdIkA68l+vcwnsrSjbk3NM4NYuqq69Y1gFgS+2Zl9V88ItTRCiv3
         /U1ju5xgpZBsDzU9V+Hur9QMuLpX8WUIAxIaC+I1CIaOPcnyTGeyR3iuTl23V7wwD4Qa
         d9OxOGgyfWJ3cllrhLotR/JLeRIXUnhxwagmPrjZi2OBhuDiLC6H6eLsH9UKRV6q95ZW
         HYhsqOsbvwe5oO0rwBcaxU/8xSMxrO2BMwPPcZz7XFDeyr2Z6dPd9A8prK6sdnp2RwZJ
         XwUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vmdux6s6S/vnMaslYGNPwFr/gTlz2GOlll7RBuADqzU=;
        b=PsZa9mYVt30DgFv77ZviKlLqWvkzFCXtYgUQgPbiHT4hBYCqoE7K+GAgx/BerF2BUP
         8o7PpBsScX6QVCiKPEnFZRQqzyzcnx1OcvRdHV6DCEsFx9deWTN4rUyPqd/nd8UqDCfq
         w9xZyZbTvMuXHs2rDY7j+A01KRxrOCRJ8aoHe42B/dl/raFK4o7q3teiX8ddT6O+tN9B
         V4tpVQLDBrtSmqwPHI1t+5lRtRIO6+VIEZ6LLKrRQS5fmzniH+g+yJtCPNDb0e1JfFpe
         6H0ilAOS2IFvXO07s2fgxKzepv6Es5vp2MT0+dLeZtk9ZhvUFd0XGZRog2P2hO+Rd9Lk
         Gzmw==
X-Gm-Message-State: AOAM531UOWrchp1h2BLKq3imUVFYvg1vByo2jJ53qq3HGgKDwyGeMppB
	duC7PKD7TALKTcLnEX6gVGo=
X-Google-Smtp-Source: ABdhPJxYdq3FU1kPy8VuMFEyTwJDklOCKZioYXwORxHxlZyt3ElAhXOEIkvQ0nMhSMPazg/5TtTpcA==
X-Received: by 2002:adf:cf07:: with SMTP id o7mr5479757wrj.216.1626180214273;
        Tue, 13 Jul 2021 05:43:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:48a8:: with SMTP id j40ls4326055wmp.1.gmail; Tue,
 13 Jul 2021 05:43:33 -0700 (PDT)
X-Received: by 2002:a7b:c10b:: with SMTP id w11mr5071795wmi.185.1626180213419;
        Tue, 13 Jul 2021 05:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626180213; cv=none;
        d=google.com; s=arc-20160816;
        b=j/go4tftrEBUCcOGKPkWnMjPEuHDGCdwpuPjIKJiny3nPi5y8SWe5ONlxb36o9dvm3
         kRWBER08xlCMsd2iUDk0FZoBUOxuHff5H90Qi86sLQe3Vq6khkjR433OTT9lMCC1wUkk
         F83cQzBUZogICPzY0J4gHEBwaLfEkSQK7lhalsFZslezjMlt93rCWMepaVxYe1y42l+i
         wMXPs2Qp/qZgK6jJTdTLIMHTSCUCKhQSk/MozgjFlveBomtlI6qunK6HbxNy2wc5uiFt
         kK7o4PB46Q0Bv5Nw2m9eC4I/Y6oV6g+P7kl3oNfVkfeCmhELvPo9tVuCzEKjdlYEODc9
         SymA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=uXS7RkS7M9LEfQKQ0Js/p3lAa+kHFpTYNkuyQeip5MY=;
        b=TMC0+MgzYB8EAcXU+TZF5UEebOS8i8qFh+yBCHLdE/KhDLVgRelyKPr2DI/cUJD48d
         YXH06vy+E9cd7MarWCMmBQD6GOdZoG2XZS80JmRl+O6KKuc84TDbCC3K5EFAJEahwwfw
         DIhPe2YhHn1k9TkL3be1Sq1KGEUOprn7+3PcABpfGYWE74y99xVhv32qUd6xZOYBhGk9
         xOAI/l1jqPYz6PsS02n9AixTQGD9xIPAEky1FhF2Ox9raTHjP8f9QDfaAwUU41uetUnP
         6GhY+zRK/J4vP5KnzPqiKSFXegU0YeXBw0MGLl4pITdpXry7TB9/niW4sd7n3JDcLrqv
         CCpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="Tc/6jsNd";
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="paaC/r3J";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org. [80.241.56.151])
        by gmr-mx.google.com with ESMTPS id k18si153859wmj.0.2021.07.13.05.43.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 05:43:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) client-ip=80.241.56.151;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4GPL0P1WJVzQk9t;
	Tue, 13 Jul 2021 14:43:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id BLBFdGFgjsUH; Tue, 13 Jul 2021 14:43:29 +0200 (CEST)
Date: Tue, 13 Jul 2021 14:43:29 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Message-ID: <868773411.91110.1626180209155@office.mailbox.org>
In-Reply-To: <CAK7LNAT3bAg164L7mWDk0sfsvxZvMukezSSu1BYu3M425SWeaQ@mail.gmail.com>
References: <b45b2430-3670-b310-b6ad-2d6db50c2d18@mailbox.org>
 <CAK7LNAT3bAg164L7mWDk0sfsvxZvMukezSSu1BYu3M425SWeaQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] Kbuild, clang: add option for choosing a ThinLTO
 cache directory
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -6.44 / 15.00 / 15.00
X-Rspamd-Queue-Id: 160421825
X-Rspamd-UID: 9d2495
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b="Tc/6jsNd";
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="paaC/r3J";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 80.241.56.151 as permitted sender)
 smtp.mailfrom=torvic9@mailbox.org;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
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


> Masahiro Yamada <masahiroy@kernel.org> hat am 13.07.2021 12:45 geschrieben:
> 
>  
> On Mon, Jul 12, 2021 at 8:10 PM Tor Vic <torvic9@mailbox.org> wrote:
> >
> > On some distros and configurations, it might be useful to allow for
> > specifying a directory where Clang stores its ThinLTO cache.
> >
> > More specifically, when building the VirtualBox extramodules on Arch with
> > its proper 'makepkg' build system and DKMS, against an already installed
> > ThinLTO kernel, the build fails because it tries to create the ThinLTO
> > cache in a directory that is not user-writable.
> >
> > A similar problem has been reported with openSUSE's OBS build system.
> >
> > Add a Kconfig option that allows users to choose a directory in which
> > Clang's ThinLTO can store its cache.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1104
> > Signed-off-by: Tor Vic <torvic9@mailbox.org>
> 
> 
> I do not understand.
> 
> Currently, .thinlto-cache is created in the same directory
> as the other objects.  (right under $(KBUILD_EXTMOD))
> 
> If you build in a read-only directory, you cannot put
> any build artifact (not limited to the thinlto cache) there.
> 
> Why did changing the location of .thinlto-cache
> solve your problem?
> 

Sorry, I accidentally sent the message before completing it...

So, when building an out-of-tree module on Arch using DKMS,
I get the following error message:

    Error: Permission denied
    LLVM ERROR: ThinLTO: Can't get a temporary file

The reason for this seems to be that DKMS looks for the cache inside
the installed kernel's modules/headers folder, which on Arch is in
/usr/lib/modules/$kernelversion/build, and this folder is of course not
writeable by the user.
With the patch, a user-writable directory can be selected and DKMS seems
to pick it up.
But yes, I also have more questions than answers unfortunately...

Maybe it is more of an issue with DKMS itself than with the kernel, in
any way, DKMS needs a few fixes for Clang-built kernels, see [1].

[1] https://github.com/dell/dkms/issues/124

> 
> 
> > ---
> >  Makefile                  |  5 +++--
> >  arch/Kconfig              | 10 ++++++++++
> >  scripts/Makefile.lib      |  4 ++++
> >  scripts/Makefile.modfinal |  4 ++++
> >  4 files changed, 21 insertions(+), 2 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index c3f9bd191b89..472bc8bfff03 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -932,7 +932,8 @@ endif
> >  ifdef CONFIG_LTO_CLANG
> >  ifdef CONFIG_LTO_CLANG_THIN
> >  CC_FLAGS_LTO   := -flto=thin -fsplit-lto-unit
> > -KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod_prefix).thinlto-cache
> > +export thinlto-dir = $(if
> > $(CONFIG_LTO_CLANG_THIN_CACHEDIR),$(CONFIG_LTO_CLANG_THIN_CACHEDIR)/)
> > +KBUILD_LDFLAGS +=
> > --thinlto-cache-dir=$(thinlto-dir)$(extmod_prefix).thinlto-cache
> >  else
> >  CC_FLAGS_LTO   := -flto
> >  endif
> > @@ -1728,7 +1729,7 @@ PHONY += compile_commands.json
> >
> >  clean-dirs := $(KBUILD_EXTMOD)
> >  clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers
> > $(KBUILD_EXTMOD)/modules.nsdeps \
> > -       $(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
> > +       $(KBUILD_EXTMOD)/compile_commands.json
> > $(thinlto-dir)$(KBUILD_EXTMOD)/.thinlto-cache
> >
> >  PHONY += help
> >  help:
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 129df498a8e1..19e4d140e12a 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -696,6 +696,16 @@ config LTO_CLANG_THIN
> >             https://clang.llvm.org/docs/ThinLTO.html
> >
> >           If unsure, say Y.
> > +
> > +config LTO_CLANG_THIN_CACHEDIR
> > +       string "Clang ThinLTO cache directory"
> > +       depends on LTO_CLANG_THIN
> > +       default ""
> > +       help
> > +         This option allows users to choose a directory that stores
> > +         Clang's ThinLTO cache.
> > +         Leave empty for default.
> > +
> >  endchoice
> >
> >  config ARCH_SUPPORTS_CFI_CLANG
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index 10950559b223..bca87a6aa35b 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -197,6 +197,10 @@ endif
> >  part-of-module = $(if $(filter $(basename $@).o, $(real-obj-m)),y)
> >  quiet_modtag = $(if $(part-of-module),[M],   )
> >
> > +ifdef CONFIG_LTO_CLANG_THIN
> > +KBUILD_LDFLAGS +=
> > --thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
> > +endif
> > +
> >  modkern_cflags =                                          \
> >         $(if $(part-of-module),                           \
> >                 $(KBUILD_CFLAGS_MODULE) $(CFLAGS_MODULE), \
> > diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> > index 5e9b8057fb24..ab0d72e21318 100644
> > --- a/scripts/Makefile.modfinal
> > +++ b/scripts/Makefile.modfinal
> > @@ -35,6 +35,10 @@ ifdef CONFIG_LTO_CLANG
> >  # avoid a second slow LTO link
> >  prelink-ext := .lto
> >
> > +ifdef CONFIG_LTO_CLANG_THIN
> > +KBUILD_LDFLAGS +=
> > --thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
> > +endif # CONFIG_LTO_CLANG_THIN
> > +
> >  # ELF processing was skipped earlier because we didn't have native code,
> >  # so let's now process the prelinked binary before we link the module.
> >
> > --
> > 2.32.0
> 
> 
> 
> -- 
> Best Regards
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/868773411.91110.1626180209155%40office.mailbox.org.
