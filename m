Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBCF5SL6AKGQEXD7GXKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA3628BF8D
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 20:20:57 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id h6sf6813078ljl.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 11:20:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602526857; cv=pass;
        d=google.com; s=arc-20160816;
        b=mKSOoHJE27Lp7+Ahp435lUGcpkpjrQeEXGztSnG3euFBb8qEUT6XlPY2UnQ8CLchYi
         08e0v6S61MBhNQ/Gv4tYXGctXq5cLpH8opIg71oNr89d7QXOL9/O0Yv0sakfrbuEqKr6
         vO/RD3Tu8Q9YyJyKTFtVre1PxE+nH+ZUDTll2CiSF3zk3VPeRLXsYm3nglmZ1KnMjM2g
         nkXS4jFrbrXgBWC6bIUgQXW3ePBvh8xSRYdBEB/yzuoC/2vse6LASNI1RVCCCWf37YyG
         6hwONCKvfdSYn3/dznv3FYh+wdXCkt93RX79E+nEPb5Pg7j4a7O7QJCyDhUQd+F5Eav9
         Fg8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=IMG7c1VXMw/hZ2HeEKW7alFWO/FrwhNFTMrYzj3CGTI=;
        b=IJqGl0TD02jfmvBaKq1CiXEyflBs36YvVpH1B3bZO8pMGROYPTuYgz7fstMPDqXjHg
         sGxQUzogv+c0ebUOaH1UV/tl69eqJ7fcpYOwxTKDflPS21TstVgyMVI+kPx47tFy1w3g
         gPNj5L5Te7YOv7jGZQNuKJYoQhvJnTYVlHYZcyw68d7Yer0sWeLU9IAmW9ct7nw1hfml
         Wcf3TeMSfbm48Gl1qZlYzTlMbJuA/xKAsRf0a0WJ316LSyLzDV+pm3l5luTY4C13bdeS
         ckW+Kpqz7to9nDuA3PkLajC2h2LuXRilXXCS4TiXwDYlY6UilyYrAYZLLcIz/4w++1/p
         55gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LdoVe2QL;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IMG7c1VXMw/hZ2HeEKW7alFWO/FrwhNFTMrYzj3CGTI=;
        b=jFnmXv37wORr8oAmGn4WC4fb1bKbopRHKfCMvrtXIdshCmxH7gknebzNOiGmeVZaCN
         zKRHF65Oiuc/92kTRp07V7y60pysQEkUQRJqoN2cL/HXsekELVTUri5hPWLySO9T8bkf
         utkpq8QlMw392wyz04lDWbFPs7A4APOPWZs6h7bEiij4Wow6p36Dm0w/mZtR+JN81bKj
         9IEK3vXEKAAjHdDAqTjaTj+4BEP7He8C3SsAeGpsIxmadHEbadFA/G4mN4PUIFPvri4r
         xWYNH13cfn+UC4BUybLjj79Ha4SzaAt8tlnsIayTGXemZZvej1qFzueSlbHfQogEy2An
         Ircw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IMG7c1VXMw/hZ2HeEKW7alFWO/FrwhNFTMrYzj3CGTI=;
        b=lA18CmmasWP5Rdxo0g+XOTetKtYeVCgAywPkAcL9NDtl46j5Cj+N1a28vL01LlOxLb
         ax1sJjMjNSiG8pX58M0txu8+9bHbQGZ9kJFjd1r/7Zd+qv8Q/3GlCaSq9i+0LjCE6k/L
         N98pFpyqscuQAEyFAUpfr11twGe6mHRj7Y2hvyIo82vImXbY+05li+n/VxuDdZOU9gVs
         NBMS0sCq3sH5NSq4/cxJeuYoUKShnXAmxmtfEZKKNE4XgwvqyReLb5M67LpA2DRglOV8
         uO4xraQuYMj21I+q8+SF1LdPEJmHo9G2YxhShJa0vATzBT841Rip9S7JKAvq8S8BpjdV
         +jxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IMG7c1VXMw/hZ2HeEKW7alFWO/FrwhNFTMrYzj3CGTI=;
        b=XPTSpSAagDU2HF1zdgRxwJkeTQDekIigyaRLqvnGOLJ++2p5Jz8+cz/gTm6GFbeunk
         qQv5PncQDPbd1uzUSB/cTW1tvGiYsqkdfqRuoPnQTk/O8JqRKsx3+3ZlrctCyfjHUUKx
         Q7f8R9GyEHNYOdFEpcSE9js0MtoakMC63RN771LL/9YfTStTPoG5T9lS9sO3gqMdkDw5
         CSNfuSr3G8nTR0GtRpTNysX6h0C+fk4v6rhRrO39BWY84zq943I4vq4JtvO9MUNPjfuc
         uGRIZ5CoOHx/JSTXGekOvrKDHNc5/wOVp8OtuoMSx8mHAcAHhjZ+DqVPtsyP7De3KDF3
         dXnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531x7+8aZQM36s9s+FGdsCtTfNTDm7bbicAwYmqZeMKxD0c+U7Su
	8ILnqhNMSKLa3m3IiQVSdMY=
X-Google-Smtp-Source: ABdhPJxb1Db4uA8l7aYqMMckJEgEpiVqutN6cxX9RVR0v9v/oDgtPzs0Y1uwGwosTle21H443bOvnw==
X-Received: by 2002:a2e:9658:: with SMTP id z24mr10399732ljh.395.1602526856829;
        Mon, 12 Oct 2020 11:20:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:84c1:: with SMTP id g184ls673252lfd.3.gmail; Mon, 12 Oct
 2020 11:20:55 -0700 (PDT)
X-Received: by 2002:a19:4085:: with SMTP id n127mr7846112lfa.425.1602526855582;
        Mon, 12 Oct 2020 11:20:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602526855; cv=none;
        d=google.com; s=arc-20160816;
        b=xp3+zbVvouFz2Hq+CkSR6vhfPk6s5SeuWZG6tAyzu1k41mYW1TCmbKntr03W4kacou
         udEgFMTNi67ErwozWAhNTUqVBJJ+JrWpphkUy67ZiRRlgjdCN8QRCp0VlwtNjCkDyc9v
         iOHBkqyOrS0lBEMgiH8PaHAm0CZ2zwaysK3b5wnyTMNIgwGpW9uhunpZiOwR59YfuOa6
         jpXHQpb27UzgOjQhu72qO6PNwCYGF6ltR66zB7oacl0cgnsna6gA0jEAqA2NfkmNdhdQ
         WO+lcXJv88KLADlF3rhGppplGXnlytxOgad3O0ql69OMwEYnlkr3Y1Xk0+k5usFlQM89
         78pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=en7+cHw+zpp+LIZnFwAodjQVlC83Izxx3U6c4o6e8D0=;
        b=or7XRc681hZtNKevoB6yxKNfsy8r+wNWLm8HfWivqz+B6wf8owehmasbDsF8Fl5aFK
         tN2dLJCZe4yIXV6O4DLIyRKRVnlTDMXUdoEujP4GQLc6JMDuokJl2ZxfCTOdG7pDdh5W
         axZPTlbNjJ4wgPkUZqqb8Oo1awNIOYLshBT/QUnPFZIomiXKA6Sa7H5FWZAdLvwc9LGb
         uVBTYfwI7J34dNuyOd3Ts9PouMBUYzIk899Qi3rSSjj+B0t7RnsU53X1txuZbpM1CUlT
         QI56Rd24bu6mQShxDplMgWGqt1jt/vzEVini3CS0s0ydXO1V4KgF7200iok1LbHfUXM9
         krNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LdoVe2QL;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f23si530681ljg.8.2020.10.12.11.20.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 11:20:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id dg9so15676112edb.12
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 11:20:55 -0700 (PDT)
X-Received: by 2002:a50:9b14:: with SMTP id o20mr15052069edi.328.1602526854914;
        Mon, 12 Oct 2020 11:20:54 -0700 (PDT)
Received: from felia ([2001:16b8:2d57:fc00:a1bd:911e:26f6:597])
        by smtp.gmail.com with ESMTPSA id w4sm7861015eds.83.2020.10.12.11.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 11:20:54 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 12 Oct 2020 20:20:52 +0200 (CEST)
X-X-Sender: lukas@felia
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
cc: Masahiro Yamada <masahiroy@kernel.org>, 
    Michal Marek <michal.lkml@markovi.net>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    Kees Cook <keescook@chromium.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org, 
    linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com, 
    linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v2 2/2] kbuild: use interpreters to invoke scripts
In-Reply-To: <20201012170631.1241502-3-ujjwalkumar0501@gmail.com>
Message-ID: <alpine.DEB.2.21.2010122019410.17866@felia>
References: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com> <20201012170631.1241502-3-ujjwalkumar0501@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LdoVe2QL;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::543
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On Mon, 12 Oct 2020, Ujjwal Kumar wrote:

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
> index 0af7945caa61..df20e71dd7c8 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1256,7 +1256,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
>  PHONY += headerdep
>  headerdep:
>  	$(Q)find $(srctree)/include/ -name '*.h' | xargs --max-args 1 \
> -	$(srctree)/scripts/headerdep.pl -I$(srctree)/include
> +	$(PERL) $(srctree)/scripts/headerdep.pl -I$(srctree)/include
> 
>  # ---------------------------------------------------------------------------
>  # Kernel headers
> @@ -1312,7 +1312,7 @@ PHONY += kselftest-merge
>  kselftest-merge:
>  	$(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
>  	$(Q)find $(srctree)/tools/testing/selftests -name config | \
> -		xargs $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
> +		xargs $(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
>  	$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
> 
>  # ---------------------------------------------------------------------------
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index edccdb77c53e..fb07804b7fc1 100644
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
> index 7f96a1a9f68c..617c9ac58156 100644
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
> index 703b1c4f6d12..86d42a2d09cb 100644
> --- a/arch/ia64/Makefile
> +++ b/arch/ia64/Makefile
> @@ -27,8 +27,8 @@ cflags-y	:= -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
>  		   -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
>  KBUILD_CFLAGS_KERNEL := -mconstant-gp
> 
> -GAS_STATUS	= $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> +GAS_STATUS	= $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> +KBUILD_CPPFLAGS += $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")

Here is an instance of what Masahiro-san pointed out being wrong.

Ujjwal, will you send a v3?

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
> 2.25.1
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2010122019410.17866%40felia.
