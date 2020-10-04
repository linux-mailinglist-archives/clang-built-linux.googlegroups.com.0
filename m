Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWXX4X5QKGQEK5GVO6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7172E282970
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 09:38:03 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id a20sf3741342qvk.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 00:38:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601797082; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ge3LsyfFomig88o2hifjUSajhR89JNh9+IfSNjsntUj85b+DGht8r1jOJEcI7txH0x
         8ZV/EwvQ7sIwOrwgEKTh1YjrGeymqUC47GwQp7hbQ8UzRjFS4WTdn0yMQdJRFT0cT2oX
         KCKMiS9gpR91LFg7NvyqrpRHT96bk6jdj+ExNgXcnvUzSB0vvogAMAojPCc8P7CQdsvU
         /TK3034GcBAWmiUnyXnJ7KtxGvhkwYDolGvvRJ6mOPMAiA3tttlwN/8POLjwkWEhjKKZ
         Udzy7m0i2so3dlbpFEzDBkSRu8/p44Am/XQx078ZFxfXubXR0U+uSoFndM/JVIu7TySQ
         yt/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=siwmwvg34NF3rQKkKrnXnaskoVc7O4n3mjEF5fuo8Ng=;
        b=SzNJTRHnrMlthvC1cXXFi2EbKSCi13NXiJME4rUAczYFrcVmzP9iKLEjGU6MCwmIIe
         Cah+gundP2RKgx5Lrt0I9tepqLfdjb3CDB5uu6VAbUmkMO1DUak0selNFrl3crkm+XVs
         Rv2zsWRPsQebXoFuD/rQBFDEhwF+WUCM3R/1boUJ9Al+99IDzSL+NVu/CYbpqXddqTr1
         9rprNjV6UHAb/lV49/+1jtVpJrd2QK4lhs3xobAUnNqEj8tJVIY+1GWFW4ldewBgwZwI
         2xvGqy8drL8NU61+Tnl2PGKsB6rKqSFbkf3fCIFByazXOs95wTlIhvRk6iQUOmzLRq+h
         WGNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KZ79Zwex;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=siwmwvg34NF3rQKkKrnXnaskoVc7O4n3mjEF5fuo8Ng=;
        b=ZL+tzigzrWsWE0CwCiEJH2jYBPg+uTIzXsVe3d8pcCtXRNuSJvRMn8wOLPMbg7fUvW
         SOg0ADGSY19F1FKpDHlpl7FBR8ijR5C684EhPzAFxDZbyVN3Oi10wnvrDkGEWHEEFSiu
         OVYIVsSojCEao/hWJqCdWJBYbObEYfcteRhOtvcaP3UMwhSB+bpU6Ye+VUQ2rRRRQsbp
         JkMMMq3vY5jzQGs/1WPGAKBsQydJVQVAJkDWs//eSYTd2Jr4yR3Q9V30OKYvDZQzCkiC
         wyRuGap3sJQLTxw1WS5vyvkV44tkNNPoCKFKpMJGE15EXFYLDpAiUdK1SIYdjzZtMXDw
         wnjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=siwmwvg34NF3rQKkKrnXnaskoVc7O4n3mjEF5fuo8Ng=;
        b=C4znQ4wVjjVJaJn9u4hqbU5L42X5ioZFVOo8uyFvFLzL1o/Q1ClyIcrbJBJghWdrn9
         DIS8tYcXglOyrEgvcnMZ2yazGIeles91lJPYJ0MtWJ5BWf4LYtCKaOC8iudjGyCzY+Yl
         vMe9tEJuORyh4pk516o5bL4Wc/uPV+ZlVQe5uNXA23tc3ITSivl1tBIYYRGLFN81hEYQ
         PwB26tgu1d9HWzi9fxag6RZXwOdybNbw+LW0DcOLFeTLonJv8XE9RA5GbLxPPRAhZ9hl
         PrmF1RMZDMXOE30wqC21LENmJ3jhX+wkM0pRgiL20HuKsCnzzbndAOavLfPfIz7xP+fJ
         OKAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=siwmwvg34NF3rQKkKrnXnaskoVc7O4n3mjEF5fuo8Ng=;
        b=uVG37Fde9OcQhzIO4aTTUH4oD2ib6qOkGXw6M3BlmaGzGNaqcEk3fDmT03atoala6P
         48HOiUQlNx+QbA2ia281/m+Vfj8KzvpmD0rxEPS1jdmhWM7xTncfuOtsVuqLzgyVUPVD
         jQUQodbFBaM8krLfV0dkzRSwyGNTA0CAA2xPagOdHJWhncklxJ3ASiZMQklub5M84GyD
         NKFeGkVaqY73bN9opvIulVQYY4BKLbZspuCC0Dd2xPeHFsHaMgfzJnVhCwW/La54xVop
         C0MqPezCGafVy2DOzXSD7Sqsqql+0H7zAtaJ1UqRroRUCEBnIfKORyj2+D71dmqU9NXE
         kqkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532z73TmKF5QXKa3JkEEJO0u0f1XTKjoMMCT9R91kvP1PPJNUKS2
	/i3vEDTwes0ac0KeSdIfWnE=
X-Google-Smtp-Source: ABdhPJxnxOWizjkVB3oxTZwYqwOfLl/1Bllgbe+4dO6+dGLWZJXgNIyWi2sBaTWuD8qFgpjiw8ilxg==
X-Received: by 2002:ae9:ef46:: with SMTP id d67mr3637262qkg.176.1601797082462;
        Sun, 04 Oct 2020 00:38:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4d4:: with SMTP id ck20ls1501646qvb.7.gmail; Sun,
 04 Oct 2020 00:38:02 -0700 (PDT)
X-Received: by 2002:a05:6214:18a:: with SMTP id q10mr139869qvr.0.1601797081999;
        Sun, 04 Oct 2020 00:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601797081; cv=none;
        d=google.com; s=arc-20160816;
        b=JCqntfEr24U8P0iYWv7V0O5fXQ1ZK0WRxF/jcxbu1/Jwu84bjeqdRCBXLK8VTnogmv
         cEVHY8nRsVbdJxNYO8vuxo1Pbg1hNJ0W/FWLcH5xFK6Xq3tru52dhQWET+J5qkBHb9PH
         8MM6786KbQrawzwc+H72t+44RA6tSRnIKLuh/ilQZ33ae6j4Tg/udWSpeTUIbJ3G5a4e
         BgBB75Wda52EhtExkRzK8q4aG+LidAdIP7mwZ3c9t5HR0FvjcdqkSjET5QnI6d/L3gYV
         NsL2aMZT7dKewWMRPp5av4PLDlJ5fpdF+8fM7kQUG02JNN0Td4uksCxnPvVveVCTDNng
         AwAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KeIBefhZsCRO4ge0tnlcVP1csYq2ZaieViEu5oQdjWM=;
        b=yxIl7fxb8xlOY+iGPoSxMtFbx+62exoIdHu//X115wKFd4Ia7VOprUSdnpi593ykGD
         77pdCTqbvKTUS9yizH9/sIW+8WLzq4dLrDqnH18bgXTewcOT42zdT/zI0XkOgsDArbe6
         rhqmraGWvyHqXOnAZaE7qxU9yYjjyfwO0PWUbMB1fVIb6FJMmB82F19XQNkRyFLEBiy9
         Lyt+B5pWheqOX2vH8UiSOfymgnO6bOx0Q68jjFeDZE+Lhv6xbZEm1LffByEaypLumRMX
         jM3tx74hW8lROHeoUZffIOCNyNkyPmKRliSsULvN/OvWtMHHUk95OEuwJ8yTR0U6hhkj
         B3sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KZ79Zwex;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id v189si268816qka.7.2020.10.04.00.38.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 00:38:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id u3so3435725pjr.3
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 00:38:01 -0700 (PDT)
X-Received: by 2002:a17:90a:f187:: with SMTP id bv7mr9914620pjb.198.1601797081067;
        Sun, 04 Oct 2020 00:38:01 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-3-136-221.ph.ph.cox.net. [68.3.136.221])
        by smtp.gmail.com with ESMTPSA id x17sm4774092pfj.1.2020.10.04.00.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 00:38:00 -0700 (PDT)
Date: Sun, 4 Oct 2020 00:37:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-ia64@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH RFC 2/2] kbuild: use interpreters to invoke scripts
Message-ID: <20201004073757.GA31746@Ryzen-9-3900X.localdomain>
References: <979bb7b0-2cae-3cd7-2fbd-7fcece9aafd1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <979bb7b0-2cae-3cd7-2fbd-7fcece9aafd1@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KZ79Zwex;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Oct 03, 2020 at 08:51:23PM +0530, Ujjwal Kumar wrote:
> We cannot rely on execute bits to be set on files in the repository.
> The build script should use the explicit interpreter when invoking any
> script from the repository.
> 
> Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
> Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/
> 
> Suggested-by: Andrew Morton <akpm@linux-foundation.org>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile                          | 4 ++--
>  arch/arm64/kernel/vdso/Makefile   | 2 +-
>  arch/arm64/kernel/vdso32/Makefile | 2 +-
>  arch/ia64/Makefile                | 4 ++--
>  arch/nds32/kernel/vdso/Makefile   | 2 +-
>  scripts/Makefile.build            | 2 +-
>  scripts/Makefile.package          | 4 ++--
>  7 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index f93dbae71248..5f1399a576d4 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1258,7 +1258,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
>  PHONY += headerdep
>  headerdep:
>  	$(Q)find $(srctree)/include/ -name '*.h' | xargs --max-args 1 \
> -	$(srctree)/scripts/headerdep.pl -I$(srctree)/include
> +	$(PERL) $(srctree)/scripts/headerdep.pl -I$(srctree)/include
>  
>  # ---------------------------------------------------------------------------
>  # Kernel headers
> @@ -1314,7 +1314,7 @@ PHONY += kselftest-merge
>  kselftest-merge:
>  	$(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
>  	$(Q)find $(srctree)/tools/testing/selftests -name config | \
> -		xargs $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
> +		xargs $(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
>  	$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
>  
>  # ---------------------------------------------------------------------------
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index de981f7b4546..30fe93bb5488 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -65,7 +65,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>  # Generate VDSO offsets using helper script
>  gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
>  quiet_cmd_vdsosym = VDSOSYM $@
> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
>  
>  include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
>  	$(call if_changed,vdsosym)
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 572475b7b7ed..4f8fe34bc75a 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -205,7 +205,7 @@ quiet_cmd_vdsomunge = MUNGE   $@
>  gen-vdsosym := $(srctree)/$(src)/../vdso/gen_vdso_offsets.sh
>  quiet_cmd_vdsosym = VDSOSYM $@
>  # The AArch64 nm should be able to read an AArch32 binary
> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
>  
>  # Install commands for the unstripped file
>  quiet_cmd_vdso_install = INSTALL32 $@
> diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
> index 2876a7df1b0a..5f6cc3c3da50 100644
> --- a/arch/ia64/Makefile
> +++ b/arch/ia64/Makefile
> @@ -28,8 +28,8 @@ cflags-y	:= -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
>  		   -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
>  KBUILD_CFLAGS_KERNEL := -mconstant-gp
>  
> -GAS_STATUS	= $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> +GAS_STATUS	= $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> +KBUILD_CPPFLAGS += $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
>  
>  ifeq ($(GAS_STATUS),buggy)
>  $(error Sorry, you need a newer version of the assember, one that is built from	\
> diff --git a/arch/nds32/kernel/vdso/Makefile b/arch/nds32/kernel/vdso/Makefile
> index 55df25ef0057..e77d4bcfa7c1 100644
> --- a/arch/nds32/kernel/vdso/Makefile
> +++ b/arch/nds32/kernel/vdso/Makefile
> @@ -39,7 +39,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>  # Generate VDSO offsets using helper script
>  gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
>  quiet_cmd_vdsosym = VDSOSYM $@
> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
>  
>  include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
>  	$(call if_changed,vdsosym)
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index a467b9323442..893217ee4a17 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -104,7 +104,7 @@ else ifeq ($(KBUILD_CHECKSRC),2)
>  endif
>  
>  ifneq ($(KBUILD_EXTRA_WARN),)
> -  cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
> +  cmd_checkdoc = $(PERL) $(srctree)/scripts/kernel-doc -none $<
>  endif
>  
>  # Compile C sources (.c)
> diff --git a/scripts/Makefile.package b/scripts/Makefile.package
> index f952fb64789d..4fc16c4776cc 100644
> --- a/scripts/Makefile.package
> +++ b/scripts/Makefile.package
> @@ -44,7 +44,7 @@ if test "$(objtree)" != "$(srctree)"; then \
>  	echo >&2; \
>  	false; \
>  fi ; \
> -$(srctree)/scripts/setlocalversion --save-scmversion; \
> +$(CONFIG_SHELL) $(srctree)/scripts/setlocalversion --save-scmversion; \
>  tar -I $(KGZIP) -c $(RCS_TAR_IGNORE) -f $(2).tar.gz \
>  	--transform 's:^:$(2)/:S' $(TAR_CONTENT) $(3); \
>  rm -f $(objtree)/.scmversion
> @@ -123,7 +123,7 @@ git --git-dir=$(srctree)/.git archive --prefix=$(perf-tar)/         \
>  mkdir -p $(perf-tar);                                               \
>  git --git-dir=$(srctree)/.git rev-parse HEAD > $(perf-tar)/HEAD;    \
>  (cd $(srctree)/tools/perf;                                          \
> -util/PERF-VERSION-GEN $(CURDIR)/$(perf-tar)/);              \
> +$(CONFIG_SHELL) util/PERF-VERSION-GEN $(CURDIR)/$(perf-tar)/);              \
>  tar rf $(perf-tar).tar $(perf-tar)/HEAD $(perf-tar)/PERF-VERSION-FILE; \
>  rm -r $(perf-tar);                                                  \
>  $(if $(findstring tar-src,$@),,                                     \
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004073757.GA31746%40Ryzen-9-3900X.localdomain.
