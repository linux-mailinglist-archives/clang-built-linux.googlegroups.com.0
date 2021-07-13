Return-Path: <clang-built-linux+bncBD763O5S5UARBUESW2DQMGQELTJD6SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6FD3C7086
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 14:38:41 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id h14-20020a1709070b0eb02904d7c421e00bsf6570225ejl.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 05:38:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626179921; cv=pass;
        d=google.com; s=arc-20160816;
        b=LUbex+aYWP4H1wFmT+lp2irfLsxa7twZTPGCZDaPd3MQDdFtLKmZFB6wqhAp46M2Uu
         UvbdmxMtG1d8y1/ef3PtKoTnWw2lqldsz67/ZGG6q282Pt/t/DwrD6Lei35Tn/SiiT7X
         3/45rXlTaT0VATEGDgINnNlE0WiUrU08S40GizgxI+WT4TVIgE3gNWpSTSobk8biEM0k
         VXrLxRZ58RUsM58Yu+pIzqDlQsyn2D9x0h0F8XEKz5HuO1aYQ+s8R1/A4o8SPwS4iWjy
         qxxtjyoKPaNM9lS4ulKuHRij21WyC0MEL5XwNH+VVj4/VUt9MBDTVZn45xqIgntBwI4H
         L5DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=W+yVLrpgNq4Zmp0a5T07WxLv/HXPWrI/3aOmvmAySZc=;
        b=giTY4RQo+FZkQn3hy42GnlkRIUY0ujX1J53kXWr668xIBaUOeRRJfTsrqpkmnsZnEV
         keJiZTB4DekhP4p7wZY7pii8IVScrZ8gVH5r1DpZaWaxj24GOJ30Vseftcnl61Lxp5l5
         IogZDRuxZXHsRsINkeq/tmJX/lvQT2w0izsu9P3aayCEJj4Rn+soIQ3c7m1EHIdDwvs2
         qCcT0MRyHwnbAfas1M2EX7eXjloMnUm3nHK1wz15n4ayTCG7tThbMyE+LwZc9rBUlFlj
         xgMT7xMxIDZm0qXh1h7b0uiV0c8SIGgmLTF4spvabTM2kA+ZRQfOZCBvbRSXG+AJLppG
         rpHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=Wrc9uwlQ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="c9in/e+T";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=W+yVLrpgNq4Zmp0a5T07WxLv/HXPWrI/3aOmvmAySZc=;
        b=sFqwpaFCzTvPBm+DUXRQ9E9RiZHqYLPS9K/QEuSr7z1awQZc0I2Sg08GoWoJmBnAZm
         bIbjOslb4ryvxyqiWG0OLWj7/hewYgPcsNzMUw4Gqc6WkWnfio/XGV1zS/Pn46P9GiCL
         +B1NX7UtRWUzo7yEcnfnw96TdV72sw50nedWx6okFRyLvrUnb90mIojTyja5+XALaiDu
         unJVvMJQkMi+eUCLhdgEuC+3JXv0lOgcXyuyMWzaha9DVYxsK0i9da5/dgEKXa4Tz3G4
         kkL9Gk67Mq1DVheGn80LhBZo1KniT/XyLpu0hCLih+Q0cpM1sVFrthOLa21aHypbd5kc
         9d6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W+yVLrpgNq4Zmp0a5T07WxLv/HXPWrI/3aOmvmAySZc=;
        b=ucbjlK9cPUXLZ/ci61ZhxvuUznTtQM7achiyGBkSW9QotJDhn4y79l/6cjzuRkzRnA
         VGf91nP+hkmEDphN2B3SwcOK7ycxQPUvNz7sQXas52dlzAwsrQRHn9YI3N/tzHbvItGg
         9yoHBVN9h27dFoLvsb5ljR8MNgn1VmQbBo7YY/M8hnXg6V8pOxrMnnR90s/XALqz2hvM
         3cJl7d9cRbzRxdlU1OyNjfJLw9aqQnv2bN+07fk6DMiw8j/VMDIoWH0R2RGTKeKuhjzK
         pKcL3tF/GQrRuhBrmKRsD/1G3+ILD8yCu4eB8kTjZKSwofX+ZwlGZxTe8Qi8OW4LlbEu
         FvGA==
X-Gm-Message-State: AOAM532BXjjChEp3beDZ3aljMT5FYGVfKS+OeCGjTfFIBcjscRJGAEAc
	kQOyUisjLuAXm+ftmf/p16w=
X-Google-Smtp-Source: ABdhPJz1R8coRMO6vh6sa+1Vu7ZKy54YqaMuWtycuxF5s1UykW5VNHcwfLK+nH/k/fhEswOmGk29+g==
X-Received: by 2002:a17:906:28d1:: with SMTP id p17mr5062804ejd.130.1626179921129;
        Tue, 13 Jul 2021 05:38:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:e4f:: with SMTP id q15ls8535427eji.5.gmail; Tue, 13
 Jul 2021 05:38:40 -0700 (PDT)
X-Received: by 2002:ac2:5299:: with SMTP id q25mr3243995lfm.373.1626179920044;
        Tue, 13 Jul 2021 05:38:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626179920; cv=none;
        d=google.com; s=arc-20160816;
        b=GW4gvnqDbG5k9FoCnPL5CeAzahbH0LzY4dVuE7OENYGDRNmKOooKwerKBAzsTq6e59
         L1Yeb73IKxsiCN/ibZTiIT+CVpbvq45g6SGxT9eCGED7JVe9rcq5YqsIbykkjc2A/Ro6
         5gxA99a1NLDoszg2JkVO0mJofUb7UVUvOsQgVNAzi1V19+anCTnVWVKHRW4WyySVWVxj
         d2zrLo0pi/5HrT6AqG3+pb0GDEr30t+IWcxTnlDXPSsbFt+Zxi4tGR/CVvKoMtw1b6oM
         L8oQris5pUDSPtQbJ+EXREsapISBxCmArdPyGUusTSIOI+8zVxuBvPW4ipQPUyey5Pez
         ZDkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=SUCNKqqfXSbqAKrKQjDh3fqlkLX5sIqyN/ql4Wth49k=;
        b=cQSoxtFfeLwD2x1AWyO6xkyr+d7kJwFKT26rHaaX0wcHCoRCP6Cv16aAiNNsEq8Ayd
         Z8JWY0YLuQiWCQ1a7+7OWQFOH0OkntPfnbVFDPOlwz8rmJ4TdxpGoMLlKTBhSWnWVMBy
         4mKfcXrQvqQ6p3Fmz8CIRrSEa/edDylz33IVo+4sY+HVdDf19W29XLbgS1O0Sb+KFm9c
         6lT9Xo/nA4LVzS4uugq/YUtOATZsBI2/yIWrMq0W+cOurdDCJ2ZRjnBdevtYdnx7vnHq
         dVvfxEtHXuq5/e7pXj58i61VQ+nb3p3HQOcXIJx2jXQsG8/jLiUuuup2xGttAIG05iDp
         8HAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=Wrc9uwlQ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="c9in/e+T";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org. [80.241.56.171])
        by gmr-mx.google.com with ESMTPS id z4si741463lfs.0.2021.07.13.05.38.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 05:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) client-ip=80.241.56.171;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4GPKtl2594zQkBt;
	Tue, 13 Jul 2021 14:38:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de [80.241.56.117]) (amavisd-new, port 10030)
	with ESMTP id Zm4_MsTcE__S; Tue, 13 Jul 2021 14:38:35 +0200 (CEST)
Date: Tue, 13 Jul 2021 14:38:34 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Message-ID: <1989306485.91043.1626179914866@office.mailbox.org>
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
X-Rspamd-Score: -0.80 / 15.00 / 15.00
X-Rspamd-Queue-Id: 26D511857
X-Rspamd-UID: 443bc2
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=Wrc9uwlQ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="c9in/e+T";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 80.241.56.171 as permitted sender)
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

I'm still not 100% what is going on, but, on Arch using DKMS,
I get the following error message:
    Error: Permission denied
LLVM ERROR: ThinLTO: Can't get a temporary file


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1989306485.91043.1626179914866%40office.mailbox.org.
