Return-Path: <clang-built-linux+bncBCS5NQE5SUJBBI43SL6AKGQE2GWPE6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDD228BEB5
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 19:08:52 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id a11sf7336200oot.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 10:08:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602522532; cv=pass;
        d=google.com; s=arc-20160816;
        b=gayY63Kqh1hgwn+DUUgX94Ven2nsqYOEgtWpbbn50KMIq9XXTYOJohnIQ2oaZ6Ocjs
         ArzZOOAvMHUxqTYSrpLgmH4MZvHwRGaG/mua8/uvFQGUqepaX/RGH2ahBOTtO63JyY7t
         fP6/qi7opNp6JmUh2rYGwSVGRNwoP2mM4NkBqC/kHfeZKNZGuoE5mX7yISg2C8K4bm2p
         g5/zUDoG6/3SJASoza/9uzPMvg5ccHc8J/cY52xRkv7wI6Q4t0T4L4w2gFSInkYyjU7E
         0ZzMIvcHUyB5ClssUAdSM9fDECdH1R/gqBHzmfFSm952RwFPMCcR3zhTsb2nToHyNbKv
         R5eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=HKtJcgmf7wwyJHyW7/UF4O/kVg80sgAoTqzqHknXmtU=;
        b=nyLPihgUznMnyml6IaPwrGW/0J96NEJcSlp9RGKbh0o+xMqh0UqtXpMLnbyPYZww+m
         sbPJE6cke8c2dOyYstuHLr70noCGCfrhrkyKS4uItIjMSXw5MegDBwsbpklLrdFKITNJ
         KwO0sbQdOFIOb8+qOW+Ufjm7vWXEeu8oUrPAYzjXABH7DkNPvll3UuQk69t2aw4XSHiK
         5UpUIkrwZU14M12XiAkNWpWsdIijPuREZucjbC/eQ/CEWVqvcMdMtBR8CJJHms8S8lQl
         hdUjLIRkJ2IpyLrlkecZySN4B2A5OeOfNFp7bb5qXmdgZIis9D/zia8Z2CPloiSSWnLF
         LKMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JqS8AOqe;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HKtJcgmf7wwyJHyW7/UF4O/kVg80sgAoTqzqHknXmtU=;
        b=KWy/l9ko5NZDtTvQ2a8/F1XBzUvVPIKeEk0L30QDxEzQswmhxZSEM9Dck6ViokKANN
         ej0cTzsXdNGeOdcO+WphOkXeXeTRjCbQtfPeQzFPde8auLdgSRNPg1XF9Kx0pBctxBbl
         JQuASfhw6DpMrhcxSChX0xfPTmMvOEJL8Lo28P15Uw94WbszyNHoXpnC5TgGoDOV/rXa
         GwB7R9m0fyBtOIYsh0gkRtWO1nVsMa/3D3Gi9VfGVGz78JjrA7TPyn3YqOUIy5mVx6PU
         OzH0Uv8FKy4Qj/gDrhMXjmNGaZme7iaG4i/pb5AD9s5JFGWcdvEoxWzu3/DyAQnhRqQI
         Yytg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HKtJcgmf7wwyJHyW7/UF4O/kVg80sgAoTqzqHknXmtU=;
        b=R/QJpL1x1Rkw65I98ag7Drg4Ef4RcU18trykA9eke1UhHH/EOKfEFpOypzpE2MPbDO
         ZR2Y1Alyxyg2yxzkcQOH8cC021vZK1zPcPLgFprUVMa3aPM4h9+NhW2GsnzEr092ikbu
         zj6WOb9jg88AT0/Rm2AJz/mW+JaGbiYpoBagVV2qAe9GRVvwIbQj/cGhjU2/ji1lvxzE
         J606u/4WRX9rAXGF229PKBIDBt+qrFJLGugxdshpIldd9G04GhcauRldK4Hs64FCCjTy
         9KuCnnkBmkHfxCERcZMV0zWnscpd0vYqvkBFKi4lwE7sswOH7wbnzirA54Rr7ydLSMVz
         m6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HKtJcgmf7wwyJHyW7/UF4O/kVg80sgAoTqzqHknXmtU=;
        b=bytJfMU2kmJ3QhH9FKAkl1aOGaJNpTBJdg0cwaX101zhYNYKeO5QsdpIJqepbSGpVd
         lQ1Vs+9BqYh1Q2IJCgVTTxMUiPNzRwJLCrGQaV6LujuB2doaLksJ3C+SwYE71bM5CpHJ
         ITlrn7Imot1Kk6LEozHoiWvtFfb+cAFIajxok+jjOSD9lN/6niazHRSXoFt/3B1+ktx7
         ToORp7dqS8qbgNmzlR+quFiAa32lo2hUB1fJDRQ2aRpWlUtQXQCuuJkjcpnP+3vtDBrO
         1YnEpPagjSnSJIyeUMaaIhn4zRagXadEpI+QVAgBGNZ3mcuvNDCMVIwUcILtXUwczScv
         I9/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532b9ZPd2gRP7dfTfbxUDgyMFJBpqm9th9yRrQpgkPaOZgIxK42y
	JAGIXyFT8PNCxzbFa2sP6Fc=
X-Google-Smtp-Source: ABdhPJwgaluQLUf0UAgdlvLuXTXBImNuAT5e/5vqDoPgp8thTMB4vedzJSs9az3GMvnqomWFDDndTQ==
X-Received: by 2002:a9d:5a8c:: with SMTP id w12mr18598830oth.332.1602522531791;
        Mon, 12 Oct 2020 10:08:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:de07:: with SMTP id y7ls164366oot.7.gmail; Mon, 12 Oct
 2020 10:08:51 -0700 (PDT)
X-Received: by 2002:a05:6820:233:: with SMTP id j19mr2902013oob.67.1602522531351;
        Mon, 12 Oct 2020 10:08:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602522531; cv=none;
        d=google.com; s=arc-20160816;
        b=M7eUMA3KXchXv/2NQ/89Pl632CRnq7OCePM9be+f/MyS54XINSHxuMYoUyGsMR4iY0
         tzRoI7pAL0nC5dYw50iL4zXn0TavuHcvkO4h18jF1+rW6NpzMyu9rSDy49+HBhD1BhyM
         QPkbppNLiTA+YzdN/eCTs+Y3pWoXGSpoZBJ5YCb55RhygrTfAoom2KdwyjLOmGkN+X2y
         ACrJVkHsx1y5gJ8f+cj8hQeqSqaDWemiQ+PoIG5+m72PFDvaj0ah1KshWPdYtOfu0XHQ
         X7LazP4hbQOKbJKw7zq/iKHFt32ZCliF9w941gh2I7HMoemvKXw+TM4C6mPgnN41VBvU
         Btow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fT6XJEOZVDbLTBZovNOeO+UYee7jv5dnBvuNn+sMKxw=;
        b=uthum/DOfc1ErvHeQj25+LWD0cU9142UZBuCPe1k9RAIGt2wF+IEblvUTNATgyrOC+
         XO9A3vnIvFZ9pEG4ze3Vk0Ktzlq5tBlm3ScZ8NT8iSrYJRR2IrG9mhH0C7hPOlJQV9Pz
         r/L1aU15mud0mcgyz7j7EUQWSjZ5b22SUQPrCaD+mqrJzxNElqibaSXK+2xDRFGKfQRB
         NUo/I7ZnBuhIyMA2Z8ah70ZT95xwjaWyUwmkrbU8m5fZTAJSFSQGBIn1+k/oLusbXSov
         aEfqz2pD397EhnAWn3YdVGr5NjxVjBdN7zv6U4i9xlLA5gHVr67kq39q/mli0DY0mXd6
         D9kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JqS8AOqe;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d22si1412159ooj.1.2020.10.12.10.08.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 10:08:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id l18so5828261pgg.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 10:08:51 -0700 (PDT)
X-Received: by 2002:a62:6dc2:0:b029:152:637c:4cf5 with SMTP id i185-20020a626dc20000b0290152637c4cf5mr24218135pfc.15.1602522529135;
        Mon, 12 Oct 2020 10:08:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id x16sm20494337pff.14.2020.10.12.10.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 10:08:48 -0700 (PDT)
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Ujjwal Kumar <ujjwalkumar0501@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-ia64@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: [PATCH v2 2/2] kbuild: use interpreters to invoke scripts
Date: Mon, 12 Oct 2020 22:36:31 +0530
Message-Id: <20201012170631.1241502-3-ujjwalkumar0501@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com>
References: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com>
MIME-Version: 1.0
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JqS8AOqe;       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

We cannot rely on execute bits to be set on files in the repository.
The build script should use the explicit interpreter when invoking any
script from the repository.

Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/

Suggested-by: Andrew Morton <akpm@linux-foundation.org>
Suggested-by: Kees Cook <keescook@chromium.org>
Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
---
 Makefile                          | 4 ++--
 arch/arm64/kernel/vdso/Makefile   | 2 +-
 arch/arm64/kernel/vdso32/Makefile | 2 +-
 arch/ia64/Makefile                | 4 ++--
 arch/nds32/kernel/vdso/Makefile   | 2 +-
 scripts/Makefile.build            | 2 +-
 scripts/Makefile.package          | 4 ++--
 7 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/Makefile b/Makefile
index 0af7945caa61..df20e71dd7c8 100644
--- a/Makefile
+++ b/Makefile
@@ -1256,7 +1256,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
 PHONY += headerdep
 headerdep:
 	$(Q)find $(srctree)/include/ -name '*.h' | xargs --max-args 1 \
-	$(srctree)/scripts/headerdep.pl -I$(srctree)/include
+	$(PERL) $(srctree)/scripts/headerdep.pl -I$(srctree)/include

 # ---------------------------------------------------------------------------
 # Kernel headers
@@ -1312,7 +1312,7 @@ PHONY += kselftest-merge
 kselftest-merge:
 	$(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
 	$(Q)find $(srctree)/tools/testing/selftests -name config | \
-		xargs $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
+		xargs $(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
 	$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig

 # ---------------------------------------------------------------------------
diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index edccdb77c53e..fb07804b7fc1 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -65,7 +65,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 # Generate VDSO offsets using helper script
 gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
 quiet_cmd_vdsosym = VDSOSYM $@
-      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
+      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@

 include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
 	$(call if_changed,vdsosym)
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 7f96a1a9f68c..617c9ac58156 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -205,7 +205,7 @@ quiet_cmd_vdsomunge = MUNGE   $@
 gen-vdsosym := $(srctree)/$(src)/../vdso/gen_vdso_offsets.sh
 quiet_cmd_vdsosym = VDSOSYM $@
 # The AArch64 nm should be able to read an AArch32 binary
-      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
+      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@

 # Install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL32 $@
diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
index 703b1c4f6d12..86d42a2d09cb 100644
--- a/arch/ia64/Makefile
+++ b/arch/ia64/Makefile
@@ -27,8 +27,8 @@ cflags-y	:= -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
 		   -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
 KBUILD_CFLAGS_KERNEL := -mconstant-gp

-GAS_STATUS	= $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
-KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
+GAS_STATUS	= $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
+KBUILD_CPPFLAGS += $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")

 ifeq ($(GAS_STATUS),buggy)
 $(error Sorry, you need a newer version of the assember, one that is built from	\
diff --git a/arch/nds32/kernel/vdso/Makefile b/arch/nds32/kernel/vdso/Makefile
index 55df25ef0057..e77d4bcfa7c1 100644
--- a/arch/nds32/kernel/vdso/Makefile
+++ b/arch/nds32/kernel/vdso/Makefile
@@ -39,7 +39,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 # Generate VDSO offsets using helper script
 gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
 quiet_cmd_vdsosym = VDSOSYM $@
-      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
+      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@

 include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
 	$(call if_changed,vdsosym)
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a467b9323442..893217ee4a17 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -104,7 +104,7 @@ else ifeq ($(KBUILD_CHECKSRC),2)
 endif

 ifneq ($(KBUILD_EXTRA_WARN),)
-  cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
+  cmd_checkdoc = $(PERL) $(srctree)/scripts/kernel-doc -none $<
 endif

 # Compile C sources (.c)
diff --git a/scripts/Makefile.package b/scripts/Makefile.package
index f952fb64789d..4fc16c4776cc 100644
--- a/scripts/Makefile.package
+++ b/scripts/Makefile.package
@@ -44,7 +44,7 @@ if test "$(objtree)" != "$(srctree)"; then \
 	echo >&2; \
 	false; \
 fi ; \
-$(srctree)/scripts/setlocalversion --save-scmversion; \
+$(CONFIG_SHELL) $(srctree)/scripts/setlocalversion --save-scmversion; \
 tar -I $(KGZIP) -c $(RCS_TAR_IGNORE) -f $(2).tar.gz \
 	--transform 's:^:$(2)/:S' $(TAR_CONTENT) $(3); \
 rm -f $(objtree)/.scmversion
@@ -123,7 +123,7 @@ git --git-dir=$(srctree)/.git archive --prefix=$(perf-tar)/         \
 mkdir -p $(perf-tar);                                               \
 git --git-dir=$(srctree)/.git rev-parse HEAD > $(perf-tar)/HEAD;    \
 (cd $(srctree)/tools/perf;                                          \
-util/PERF-VERSION-GEN $(CURDIR)/$(perf-tar)/);              \
+$(CONFIG_SHELL) util/PERF-VERSION-GEN $(CURDIR)/$(perf-tar)/);              \
 tar rf $(perf-tar).tar $(perf-tar)/HEAD $(perf-tar)/PERF-VERSION-FILE; \
 rm -r $(perf-tar);                                                  \
 $(if $(findstring tar-src,$@),,                                     \
--
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012170631.1241502-3-ujjwalkumar0501%40gmail.com.
