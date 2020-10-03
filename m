Return-Path: <clang-built-linux+bncBCS5NQE5SUJBB75N4L5QKGQESTZKRFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 47068282514
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 17:21:37 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 18sf2101500pgt.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 08:21:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601738496; cv=pass;
        d=google.com; s=arc-20160816;
        b=jEAMhwGNi5pliKMSdQ/UpugWQq4rJ0pzsavsPK+JhfxJDYIKIeiHIr+x4k3KyBzen3
         3Vu4hYS0XSRLTUXfSBJRBhgL20jSr9tgibvtVhwZix0b2HuReJeFBb6Od1pV3ci4WNfy
         loPud7kA2AKWCMIUc4kvh1GbIPjPBlrSojpImt48LtPmDks92OUmgPd4RcIaFLXL01Sk
         A8U4ejb3i8y2jXK1BEkgAqNd4rFTIrVhTMEryc+lLtcDxQ1oqGbVtwwlU2F+t7u+BjeB
         vheV+BofwZlIo3UHf7/CBBUENOU2KIN45V+A0VxLGihlqpuQS5WMwSnSijCamuWIar5F
         DIMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:cc:to:subject:from:sender:dkim-signature
         :dkim-signature;
        bh=M5YDgrxk5POGi+CW4M/c+H+9bFpSCQBuiiS/cPOQPTE=;
        b=wPci73wxzQROK7SboACV5L1dIBfVEoiPoql/MWU3X+eLWAvd+x62/+L/rLLFUkjvXR
         Vta9oazj+Ijd2ye3ymkxTT2Yg/lNq/G87hjUf3RJjhlzCVP+TIpXI1LyJrBGw5y3GOuL
         TwYMVzx/Y9Z8mhfj0VDqoJI6KqvjdRaBMUIVid4bpNjIiVpKyOLjHHnqh5nib3FuKPFB
         4zZojriCFagPbDoJlXxBZwRvzXTr1vYF7sQ2IJWyAVQLBW9uSOBngDhlfTiUt0hZEsfa
         xoa2kZOWUuoVX+6v0xYvaGOKvENZ9VPWCgVjGCOH9E1+hKKFXHbQ8Qx2Cv7XaOGqGr2k
         +zow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NUELTX9M;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M5YDgrxk5POGi+CW4M/c+H+9bFpSCQBuiiS/cPOQPTE=;
        b=ln+JXNjVsHjfgGwsC8WuAWLO0g29Q793aisRdy6rp3OOqo1HgsAbC1h3SeoLA77vpP
         SgKeLylMPbcBlqPcuWl9KB7spkqC8kJCd3nAONO2sour5r/d7qF+9zRoo34u+MHeKq9G
         fxllUxIJAySoL4HNDh/DucIVVU8Nb+vRlN8kcIIPTfi8jqsnuER4wSM4nZQqavdm8ki/
         ofyPPAE87My7tld5lTLf7tP5qTyXUiJRlIqdrssTzTSQdtdyvlF6a82KCge1Y39XkZmH
         pLMkbjv295s03DFmJ8G39kKLnzLWigqFbncme2LYshxorXUq5jWGhl5PjpzzVXQRLhtl
         DG0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M5YDgrxk5POGi+CW4M/c+H+9bFpSCQBuiiS/cPOQPTE=;
        b=UlAtGYapB1FrapyivlR452OKcMQ3IOpveDAYEWpQCRhFbtRuWNaSaRF6fHed8TsQ/8
         NobCvy4Qjbkd5XssD5MrYUTYRDKHByL7rYLwscEnt7lsZmQHI8lYZ3A8RC8p+zRVBmzn
         mc0JAIm6TbIBzBFqGrV2Rno19sizWWBuaXP37Zs7OQ86ayKbpmiNBnue8MNwZmv3ap4+
         tgk5YjXqVBWYZiqJd9JhXL7+xebbv/erYUW9GXgAxUKDLL5FoOC4D+JuS4UlTEV7KYQ1
         1k9P9804XrstZUWJQInI4JobAI305z/4PMS1Hp6v41jfLfzPr9Ka7KM9s1zl1Eu344AE
         3JkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M5YDgrxk5POGi+CW4M/c+H+9bFpSCQBuiiS/cPOQPTE=;
        b=WJjqUx3PZuSEZziew2ukoA6ti86wDRHRvy9Bi9gv8w//0zN4QPrR+960J8zBzBbQyw
         H7Bv6QXWynAMl4E0tmJWMPUnVLWPr4RLCcpYavtMMEObU9Xoma5ujygn3iHphf47Wvt2
         vpxLVDQpWcZDh4lGEgAJWZ4JOJsi6oJIxTbhdS4a896mbQJE74P2zftParKqYzaa7cJJ
         EdSmeOnjxIcrYBLNQmYXY2o3YHw7bEX/fOLKVtMYCYT4Ak7IlJs4oL84QZUWPfDnPT4c
         8oUtbI3RQeOeIH0XVEyQ2x/Sv3s4Els26+vYE80EzhXmGZizxE47czjrWMF5fZPOm7Nn
         KWbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OJM/aGSSU9i6eQEXJP/hZziI2Ruvc1ZCY/oofR6EdYoV1rsOR
	fq4et+Qku/adCCDSo9oB4X4=
X-Google-Smtp-Source: ABdhPJyATm43T+VM6RJnk4V7DK0DEoCDILvdmNRzXWgbRwlTmyKZW40BcrLanTRWFN2y5bMm3kA5mw==
X-Received: by 2002:a17:90a:3e4f:: with SMTP id t15mr8043778pjm.19.1601738495795;
        Sat, 03 Oct 2020 08:21:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5064:: with SMTP id q36ls1761448pgl.0.gmail; Sat, 03 Oct
 2020 08:21:35 -0700 (PDT)
X-Received: by 2002:a05:6a00:1356:b029:13e:5203:fba3 with SMTP id k22-20020a056a001356b029013e5203fba3mr7908952pfu.3.1601738495256;
        Sat, 03 Oct 2020 08:21:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601738495; cv=none;
        d=google.com; s=arc-20160816;
        b=c4b4Xm401dXRu0OD/YGUzT7gI4pbPnl1LKiDgnwLs+gm3z+hVqVBUC/OcTVQwN6Ze8
         7UlRSumuRk96IBjIe2JbUfyB36XweR4O5PaNYHSwhDxdHrR6EY0Mov3tiH74kx9yVl1z
         xZJA2+1gsiAez5tRLi+1zcbBYJIlbEY2WDqVuLX4XQsOy1MC6KN8ipKoUdRYq92dI+Kk
         6QizJaVS24d5yi9yZdouBXx1DeYaRo1QB5HQMqpTAd1JSxD43clBKy4sPDyBa0fTvKzm
         JGmPj8XJ7eYYCafNXreOPpj36p3Zm+elDZKai3iJ5qgWV2QCWbiReTIy6Cd5TfnlzYgC
         TaTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:cc:to:subject:from:dkim-signature;
        bh=l/P8bXlpdS7hKkb+vBkGufM4cQSzKzU38G16UO2xhSM=;
        b=jMl74EMrhtyd/R6XXV0qkjtFwQxCsj4pKtbuG2UKxO14pjY/ugNzA2WjIm1R7O90Ry
         4SGNWzHT21jKTocQmXsfsYcp1Zm8n/x+kjtSsbtIdEtGTLXP/uz+xwCHDz99xkTkumQD
         CN47FnBoREDYZYLO2vwyimod5tS+jLzQR8Cmk9Nrw+yBYTwE8AGlL64E+RwnhKhqETOg
         OrsZylYqi5qAwEUGEDzeyVfZpUDcpOlG45sPA+/+RkcpARMDYDnlIi2Flmy23pYW+Nkc
         F96N37bVyGTwkNZzF1EIsz38jvYs8BS/H2/Er6b5yx2bXrzZDz1S9SGRkbjl1IYo7cQg
         PtQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NUELTX9M;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id mj1si362242pjb.3.2020.10.03.08.21.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 08:21:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id gm14so2946666pjb.2
        for <clang-built-linux@googlegroups.com>; Sat, 03 Oct 2020 08:21:35 -0700 (PDT)
X-Received: by 2002:a17:90a:1189:: with SMTP id e9mr3196782pja.124.1601738494919;
        Sat, 03 Oct 2020 08:21:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id n125sm6026241pfn.185.2020.10.03.08.21.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 08:21:34 -0700 (PDT)
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Subject: [PATCH RFC 2/2] kbuild: use interpreters to invoke scripts
To: Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>
Cc: Ujjwal Kumar <ujjwalkumar0501@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Message-ID: <979bb7b0-2cae-3cd7-2fbd-7fcece9aafd1@gmail.com>
Date: Sat, 3 Oct 2020 20:51:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NUELTX9M;       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
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
index f93dbae71248..5f1399a576d4 100644
--- a/Makefile
+++ b/Makefile
@@ -1258,7 +1258,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
 PHONY += headerdep
 headerdep:
 	$(Q)find $(srctree)/include/ -name '*.h' | xargs --max-args 1 \
-	$(srctree)/scripts/headerdep.pl -I$(srctree)/include
+	$(PERL) $(srctree)/scripts/headerdep.pl -I$(srctree)/include
 
 # ---------------------------------------------------------------------------
 # Kernel headers
@@ -1314,7 +1314,7 @@ PHONY += kselftest-merge
 kselftest-merge:
 	$(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
 	$(Q)find $(srctree)/tools/testing/selftests -name config | \
-		xargs $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
+		xargs $(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
 	$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
 
 # ---------------------------------------------------------------------------
diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index de981f7b4546..30fe93bb5488 100644
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
index 572475b7b7ed..4f8fe34bc75a 100644
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
index 2876a7df1b0a..5f6cc3c3da50 100644
--- a/arch/ia64/Makefile
+++ b/arch/ia64/Makefile
@@ -28,8 +28,8 @@ cflags-y	:= -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
 		   -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
 KBUILD_CFLAGS_KERNEL := -mconstant-gp
 
-GAS_STATUS	= $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
-KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
+GAS_STATUS	= $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
+KBUILD_CPPFLAGS += $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
 
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
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/979bb7b0-2cae-3cd7-2fbd-7fcece9aafd1%40gmail.com.
