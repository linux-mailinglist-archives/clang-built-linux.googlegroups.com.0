Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBT7OSH6AKGQEXJUNOKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id C389928BBFC
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:33:37 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id r16sf4048356pls.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 08:33:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602516816; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQeQprdG0CkIuN3fGmjcPd1tYSqWPjodMGzH/VsdjYg+pMfN5FHkKn6t0tMU8Y9qFr
         I6b5L5pIxN7nFllMCyKu4u6rXH9ihr3wP9KiqeKZLeVwKg/ftXf2X+3tZtqP2IC1G/lC
         6C9CTFinPM3W6x9rtonTeCTP9YF3+IUjTSP0siwA6HIqwtTbgZ8BdvBYjOztsg3vCKNN
         X+lJ4ykUQW7tA0RYOM6MPmWLDp7ecBuUZZWOCWLJ3wLU6z9fn2Fs1p4xeDBMrJoyMfVd
         5+e4RGVcbyFktTQTP1SpJmgAU4BO2Ugcbnobg8+X1LRkG+m9Mga13sN7f8+190zFAy2B
         wEmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=1LQ49iZ6vCYouNM+XcP6XPamUF0nSJQ/pANDXqNqUGo=;
        b=nswXEpwb1MZhdG8+7dx82BxPZU9ZswDxFnmjVwErV29yQIWVjnfNs3gujIuCJfaN10
         ze9c94Yl/0a2qdwZwYdIBxa2pkjsfuTCrnLIsXf1ayTl3rH9lA+1EFZpEvyUJnYHhiKn
         uwPqtA8kNl3ixXFpzKHiOM3JaKiM+DY1QfavIfvC+5VmtP5ZT1Q4IKy5DgT/1e7nH1gz
         Uf0DGpZVfbmert8STm27LsAHZ9B5a8wXQlrjd2+wIjXD35p/VaJK2/KSprHYcnl110bY
         jyi1NHmUvEGeQFEOEIw1wcUqR3HZdKZquQJ4VgVOB6d1cBciYTu8GbNeR4Zo63EeNgs8
         hYJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="S4Z7K/Q4";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1LQ49iZ6vCYouNM+XcP6XPamUF0nSJQ/pANDXqNqUGo=;
        b=IysdLDqpUpZ2sZBiRsd7YcgaKf4C+w+rmY6o3qLCugtbv2GBc3E391deV7k2Q7DUwX
         5xT4Y+7aohUxHI1oPXbPsjtjDZWaUGpLSquGTez5mbK1ykgQ1ip0pEKdqv7KH+gwDWG6
         gWbPeAKZAaQSTniF5wxsMyY1DKaqw9zwasznpTFfBuT48I1lEZYliCWNK2k+Z9bZe8q4
         7Ux5gDa6SphEkGQz/9DrahvrC1btZDmWvTiPCuW6F7iNRAX0KeHyKWH8b5+iblccerFI
         /ogU204fE4VGgy2YkKNfzXWd7wQaw7N6YxfCT86fDdN60xc8eyaOuQ2PFmksjSrg1ic1
         zarA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1LQ49iZ6vCYouNM+XcP6XPamUF0nSJQ/pANDXqNqUGo=;
        b=IMldze7otZYeI6H/fbmiZeyfUmYSmd9Kz6Kbe1h78DcBmRQ0HNLWfeA7nAYLOE9QsG
         rhVfdMmtGqSw7njQ0+OjrPD0s3Rn26Hz5dk/kxfxSZM5vX3BP2m9dDcFUZwy1RK7BO91
         y5ruR/o/YWVFsGHPoIw5tDwEX01iUoA8tAqkN2+VnFh7l3o1VW/pMk4SruL/o7xjQIVI
         0bKtQkZPvPMAuXXjt+zifze75VXoXcas3uethHIFBBjuvyoD1wKUfceQz+gXZwTGpd3i
         p6kjQDRDe5bfqFnEwdJNvVXzljLo5y3fjBB00vWeQdtiLQJJHZ5FaSyM9bpVh/XFvRxr
         Y7gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jRD1xnJbg2+Tr2HhjmglQnA9XNHUkpkqxrUXTg4TObRiz+uB7
	JAifd0L3yRAssHCzEq5sU9k=
X-Google-Smtp-Source: ABdhPJyjrzRIboYU3+5TNHvgeSWYJjwoThZzzyjaYsI+AeyvY9VO9Rn1Ru1K/1vpSCFWmUI+kzn86g==
X-Received: by 2002:a63:e63:: with SMTP id 35mr14082579pgo.264.1602516816060;
        Mon, 12 Oct 2020 08:33:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7044:: with SMTP id h4ls7816370plt.2.gmail; Mon, 12
 Oct 2020 08:33:35 -0700 (PDT)
X-Received: by 2002:a0c:d848:: with SMTP id i8mr26136149qvj.31.1602516814514;
        Mon, 12 Oct 2020 08:33:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602516814; cv=none;
        d=google.com; s=arc-20160816;
        b=O59felcsWJMZSONgP6sIYhG1CXPQMLhessGB2W8AXsyt+F0GCrzz469uy/wXCMDX1R
         27QPKaIOlz1mDjsblsauFSosl7Ses+kI/+wiK9bR36fCTAeML2kqJENlZP8+lIhPFndL
         x5Td6hbsqBU5gpL+4k76/mO2v1Ec5D5MjYkT/fFK8QvDzvBk3H/RXH9CFISGCF1YdFSM
         ruZ7doY/iB81W/NJFeM3n3lc0F3M6ALQLGz8WrK8wYSsh/opMWaHa/9q5A1loSJUfBZl
         ROu/MvIFeoqgpea5QAyNqf3mAlX4GLsChZP29Z/SH6asvXIa/brpKsLquWFomf2eS54W
         nl6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=4xfUkRM4tDIXFk/3vrkgZkiCeT2rEb0t423IsRd/G98=;
        b=nkZLe+rWqL1xOCDXhOMA9wWFT4uOq3Qe8LB1SpogHKrHofnbuwLEeEVvg7x7PV1sYV
         ubmw89vBDYawyZ4f2xU75o+Vlt5iFBI8QMcPChwt2slhZlFDLEXLR0CafWh1+NsPatf0
         mvQZ5jNsRe5e9PwRoEKT0nNBpnL1fusAxLgezRjrEpdvXVh3FzxxdK436YEsdXKODvRK
         JFTk0lOQNZbNM5WtI7dPFB3v2jA7dj5+6T622ubSiSNSlPRFUyU4M3UtAgfRc8K1MtFf
         7NImpCWnwQ6zze3NiC4NOWGkv2GUHNnXSxpUptIOl9dzPde7A2DHots0bug7VLfS91va
         6HqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="S4Z7K/Q4";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id z205si756700qkb.1.2020.10.12.08.33.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 08:33:34 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 09CFXJpL000782
	for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 00:33:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 09CFXJpL000782
X-Nifty-SrcIP: [209.85.210.177]
Received: by mail-pf1-f177.google.com with SMTP id 10so4289173pfp.5
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 08:33:19 -0700 (PDT)
X-Received: by 2002:a17:90a:c285:: with SMTP id f5mr21414855pjt.87.1602516798361;
 Mon, 12 Oct 2020 08:33:18 -0700 (PDT)
MIME-Version: 1.0
References: <979bb7b0-2cae-3cd7-2fbd-7fcece9aafd1@gmail.com>
In-Reply-To: <979bb7b0-2cae-3cd7-2fbd-7fcece9aafd1@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 13 Oct 2020 00:32:41 +0900
X-Gmail-Original-Message-ID: <CAK7LNATQFgzsmUppA=4eF1VrO_Tg=zrM9NSvUxrOp=7qa2_GsQ@mail.gmail.com>
Message-ID: <CAK7LNATQFgzsmUppA=4eF1VrO_Tg=zrM9NSvUxrOp=7qa2_GsQ@mail.gmail.com>
Subject: Re: [PATCH RFC 2/2] kbuild: use interpreters to invoke scripts
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-ia64@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="S4Z7K/Q4";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sun, Oct 4, 2020 at 12:21 AM Ujjwal Kumar <ujjwalkumar0501@gmail.com> wrote:
>
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
> index f93dbae71248..5f1399a576d4 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1258,7 +1258,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
>  PHONY += headerdep
>  headerdep:
>         $(Q)find $(srctree)/include/ -name '*.h' | xargs --max-args 1 \
> -       $(srctree)/scripts/headerdep.pl -I$(srctree)/include
> +       $(PERL) $(srctree)/scripts/headerdep.pl -I$(srctree)/include
>
>  # ---------------------------------------------------------------------------
>  # Kernel headers
> @@ -1314,7 +1314,7 @@ PHONY += kselftest-merge
>  kselftest-merge:
>         $(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
>         $(Q)find $(srctree)/tools/testing/selftests -name config | \
> -               xargs $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
> +               xargs $(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
>         $(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
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
>         $(call if_changed,vdsosym)
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
> @@ -28,8 +28,8 @@ cflags-y      := -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
>                    -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
>  KBUILD_CFLAGS_KERNEL := -mconstant-gp
>
> -GAS_STATUS     = $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> +GAS_STATUS     = $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> +KBUILD_CPPFLAGS += $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")



These changes look wrong to me.

$($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)





>  ifeq ($(GAS_STATUS),buggy)
>  $(error Sorry, you need a newer version of the assember, one that is built from        \
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
>         $(call if_changed,vdsosym)
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
>         echo >&2; \
>         false; \
>  fi ; \
> -$(srctree)/scripts/setlocalversion --save-scmversion; \
> +$(CONFIG_SHELL) $(srctree)/scripts/setlocalversion --save-scmversion; \
>  tar -I $(KGZIP) -c $(RCS_TAR_IGNORE) -f $(2).tar.gz \
>         --transform 's:^:$(2)/:S' $(TAR_CONTENT) $(3); \
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
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/979bb7b0-2cae-3cd7-2fbd-7fcece9aafd1%40gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATQFgzsmUppA%3D4eF1VrO_Tg%3DzrM9NSvUxrOp%3D7qa2_GsQ%40mail.gmail.com.
