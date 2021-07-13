Return-Path: <clang-built-linux+bncBD763O5S5UARBA75WWDQMGQEPZ6LX5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B1F3C6FFA
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 13:52:35 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id m31-20020a05600c3b1fb02902082e9b2132sf428259wms.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 04:52:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626177155; cv=pass;
        d=google.com; s=arc-20160816;
        b=YR6RtgZU3RcP9GmtZxU8JyzCEaj9oKoF2h3zBcOARbfxvqs2SogvOKOURd+JqByltv
         F8ys58Xn28vPiupMOFU6Qb+IOtTrzbN6EIkdgEugNX/XMLDvCrTvjc2UtVlc4JL3Nau0
         dz0WfIUjYQ563EQD4WGvyIsYvO5w4XBSrsQZ7XO+eyxEmj8+MNb3/zk/LLh8/b0CI0o8
         s49Ed8OkbbxM+fyAFQL+Wy1ojH2w+2WNsOxFvCOZwCZwBLlaBCF7c+jAehztAcsXqIiU
         ba7eHvcfGVZ0eZGry+aUSAASte4BG5NA05CDdCrGr0031XcH+UEPHhX3/4pMnrk9Sujc
         qvSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=gouPySVZzFWUU7YwjwQMr+V0uuhswXkfq2Db0tyzqR0=;
        b=ldhdXZ2tcSKsmS04KkjJrzl3uyuSaCQR5hqoMhfDXM8OZouusl2BxFUKbSQFyZoEsP
         dC0V/jmRwiY5SjJbL0CPVgM8JramFOlAKM/cN3YFXbO1O9Zbn+ub113P23FalpRHABwJ
         o3LA0xdiFtYdvbYNGx4sSVgkCPNaQvZtp95hTzYBLmFsjNJeigZr2pnusvL4IsA6U0Yv
         X/Doh2GW8buYq6hctGUxQvfIOFJ+ZWNUwCJFx5I7QpCb0Vj5TPHHve/gI3T3M6asQyBr
         Sz3clrzK/L+ds1AKFKEOfvHtKbmHAQzU8dKfukngf67yRGAC2i5XBJmrZ8Bu+PAZa0lj
         8B7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="Vy3n/kcP";
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=aa1Ia+wW;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gouPySVZzFWUU7YwjwQMr+V0uuhswXkfq2Db0tyzqR0=;
        b=iH/KKRu2sdcxGKRosREj61vf1DFGCamfDIlJk1zJR5CioNnUUF8g6yXQRyPd7iob3W
         X/cSBfpVEJ5w9L5rcHrXa4jbzj2XvT6aFRRqWGlWUK7WQSCJCBd8GTRWOogqI5URsUSp
         KmRiMi8OeRUMrMAXSx4oqRt++JE8U1P8RWkpNHOBXcEXomousQnFY2m09IZ92MU/4GcY
         CShNMNs/H8PwTkIhE1tNdD+RiIoDUmBRKWjAa0b0sCZWWIQYnyGjJrcPtEzdLbVDgOFp
         SXE3HFV1Gt9y8lG0h5siuaRvJal8pBxHYT0yE0IDLwp2miRWZbJ1aR2wRPZuWjA81sxK
         oYCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gouPySVZzFWUU7YwjwQMr+V0uuhswXkfq2Db0tyzqR0=;
        b=OjPQsSDr1E6GgB3MKa543lWzEDt4QPeZyBwROlu14v69x06HhppOqyp/xR5IgJioKJ
         4G5Hr95Dws7x8D7pQjxt9Impqc6Jl0zLrVIMh2Dv/JbJBJavomcMLUhRdjZmkiM37hLX
         kWNxIYydYPTjTvDUubrdipxM4MG3EgbAu0DRbEFJ7kb2/MYqjgMuS7Zslowx/9wI6gy3
         X4aeAol2+UhL21WyKUyjm/KZSKT2sb4MQDXxf6AgP/35KCH/wmiPYv3l8sJ1AOdo2od0
         VkQgLkkAXUhzkwXQo55sAikfO1qcSfYNf5TpucI+FSyi2uYSYRis34VEYFkXR11yYTY4
         Kcnw==
X-Gm-Message-State: AOAM531BApCGb89/2i2kT8+d106jDqet7pFhcui8nZgsniQdv0KnYz4U
	XTxncNdHSPNpjLm6t4bjIFQ=
X-Google-Smtp-Source: ABdhPJwS/pXY8jTQOMh7t6B8W5drYs82aZ6CaaOqrChL3iiks0Hmop+SYrKrwabYt5oMXQjTSn31Ig==
X-Received: by 2002:a1c:7c05:: with SMTP id x5mr20312704wmc.123.1626177155419;
        Tue, 13 Jul 2021 04:52:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd86:: with SMTP id x6ls852292wrl.1.gmail; Tue, 13 Jul
 2021 04:52:34 -0700 (PDT)
X-Received: by 2002:a5d:64e4:: with SMTP id g4mr4992023wri.377.1626177154539;
        Tue, 13 Jul 2021 04:52:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626177154; cv=none;
        d=google.com; s=arc-20160816;
        b=W8u+RKhwiZhqKcOq5oxJz6Rg7YwtHzPwA+XHruXDYUNaNjpGVzhhHR6a6jEOlbAx2b
         8sqknVQA1ppTIXFxrQRDh+qYCboKQcdOrRV7jKcxStxowyK4ZJGjuNQjL+18xGIN7iZo
         WnNfUlOnSbCWUCIEktFVjsyWbvaJXkuCBcWLSutzkAMLziwr+M56yer+F4ZgdiJ1hCui
         PexfASPyZwqIlBZ1DF+LxhKYMX1bL7SFhn/fVmUAQ+NuGz2iDG+xFTnY5rzNGZxdyXiw
         PCfjWl3E5LFXH2zU0ptfzPTWO4wv+fL2H57rrWhZlk111tq0K/R7OnvzXoR4ol6EAv4X
         apag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=Z9w+E1u391qZJye63/G0NxSG+CzU/S7Pa+YeTpB3RRs=;
        b=ApNRtLVtNu1SvhyF2Hhtd8TTmzlIb06jGQkkkzYdzDPtaj8lccws5W+A8ch5cHRbE5
         V1SzHnVORCt0h2Hl5lyqs63jDfo6O/wx+QYb2R4Nm0gFWsBDi1KvVp3o6QmorHSPEIGR
         iM8IXoJTBxiwLAyBf9ZgvWhsHdVKSJeW81jBKYstyhiOF0ghVFm1zgMB3i+5171DwDcf
         eIaUAy00O2g3dvIouSZoHwVcjADsSGdVMoRmG90sbxd8oCW+5hAS6U+WTlMkX73hf/Xe
         TVrOIE1AYA6WeSUgH7GzwxpKl7KECqg4Gr0MN751jzRky51kHnLRR5gqXb+4tDfhdNNM
         w+sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="Vy3n/kcP";
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=aa1Ia+wW;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org. [2001:67c:2050::465:202])
        by gmr-mx.google.com with ESMTPS id k14si579424wrx.1.2021.07.13.04.52.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 04:52:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) client-ip=2001:67c:2050::465:202;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4GPJsZ2NP6zQkF0;
	Tue, 13 Jul 2021 13:52:34 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123]) (amavisd-new, port 10030)
	with ESMTP id KzELcVTqACe8; Tue, 13 Jul 2021 13:52:30 +0200 (CEST)
Date: Tue, 13 Jul 2021 13:52:29 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	masahiroy@kernel.org, Nathan Chancellor <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Message-ID: <1402692321.81994.1626177149669@office.mailbox.org>
In-Reply-To: <202107121021.38F447EBE4@keescook>
References: <b45b2430-3670-b310-b6ad-2d6db50c2d18@mailbox.org>
 <202107121021.38F447EBE4@keescook>
Subject: Re: [PATCH 1/1] Kbuild, clang: add option for choosing a ThinLTO
 cache directory
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -1.01 / 15.00 / 15.00
X-Rspamd-Queue-Id: 0720F18B6
X-Rspamd-UID: b7bb32
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b="Vy3n/kcP";
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=aa1Ia+wW;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
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

> Kees Cook <keescook@chromium.org> hat am 12.07.2021 19:22 geschrieben:
> 
>  
> On Mon, Jul 12, 2021 at 11:10:04AM +0000, Tor Vic wrote:
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
> 
> Ah-ha, good idea. Thanks! Question below...
> 
> > 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1104
> > Signed-off-by: Tor Vic <torvic9@mailbox.org>
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
> >  CC_FLAGS_LTO	:= -flto=thin -fsplit-lto-unit
> > -KBUILD_LDFLAGS	+= --thinlto-cache-dir=$(extmod_prefix).thinlto-cache
> > +export thinlto-dir = $(if
> > $(CONFIG_LTO_CLANG_THIN_CACHEDIR),$(CONFIG_LTO_CLANG_THIN_CACHEDIR)/)
> > +KBUILD_LDFLAGS	+=
> > --thinlto-cache-dir=$(thinlto-dir)$(extmod_prefix).thinlto-cache
> >  else
> >  CC_FLAGS_LTO	:= -flto
> >  endif
> > @@ -1728,7 +1729,7 @@ PHONY += compile_commands.json
> > 
> >  clean-dirs := $(KBUILD_EXTMOD)
> >  clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers
> > $(KBUILD_EXTMOD)/modules.nsdeps \
> > -	$(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
> > +	$(KBUILD_EXTMOD)/compile_commands.json
> > $(thinlto-dir)$(KBUILD_EXTMOD)/.thinlto-cache
> > 
> >  PHONY += help
> >  help:
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 129df498a8e1..19e4d140e12a 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -696,6 +696,16 @@ config LTO_CLANG_THIN
> >  	    https://clang.llvm.org/docs/ThinLTO.html
> > 
> >  	  If unsure, say Y.
> > +
> > +config LTO_CLANG_THIN_CACHEDIR
> > +	string "Clang ThinLTO cache directory"
> > +	depends on LTO_CLANG_THIN
> > +	default ""
> > +	help
> > +	  This option allows users to choose a directory that stores
> > +	  Clang's ThinLTO cache.
> > +	  Leave empty for default.
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
> > +KBUILD_LDFLAGS	+=
> > --thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
> > +endif
> > +
> >  modkern_cflags =                                          \
> >  	$(if $(part-of-module),                           \
> >  		$(KBUILD_CFLAGS_MODULE) $(CFLAGS_MODULE), \
> > diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> > index 5e9b8057fb24..ab0d72e21318 100644
> > --- a/scripts/Makefile.modfinal
> > +++ b/scripts/Makefile.modfinal
> > @@ -35,6 +35,10 @@ ifdef CONFIG_LTO_CLANG
> >  # avoid a second slow LTO link
> >  prelink-ext := .lto
> > 
> > +ifdef CONFIG_LTO_CLANG_THIN
> > +KBUILD_LDFLAGS	+=
> > --thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
> > +endif # CONFIG_LTO_CLANG_THIN
> > +
> >  # ELF processing was skipped earlier because we didn't have native code,
> >  # so let's now process the prelinked binary before we link the module.
> 
> Why are these changes needed in Makefile.lib and Makefile.modfinal?
> Isn't KBUILD_LDFLAGS already populated from the top-level Makefile?

Hi Kees,
I think you are right.
It seems that the changes to scripts/Makefile.{lib,modfinal} are not needed.
I'll do some more testing and report back/send a v2.

> 
> -- 
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1402692321.81994.1626177149669%40office.mailbox.org.
