Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDMR7P3AKGQEKOCPHBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 304EE1F249D
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:23:58 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id n130sf8965212oig.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:23:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658637; cv=pass;
        d=google.com; s=arc-20160816;
        b=WwQK5X2s97yRc4MBQnonVeRYwVE13h80iUStblozubm3petlxpo5jx9nT+uYFBVwcJ
         IEi9iVbTbr0mYYgJMNi7oAyXYb4hrvmcTIv7b9LYBjuJycWicmeGkllPsfCYT1oEdzze
         SKktrjrLyKeWHwbN7o5/6ergH1Q1OuswiOWh+hFTzoK2y6NLZJqsO6p406WB0Ftn53j6
         VV/9C1LRWfkw/WWatTnLKOIhhp2mkNfXbiIuqi3Czcs0uUycBEgjyvUAIdU95C7YT0Zz
         r/Z4m/KBNpss40L74d3vE/RGWtS7zBnLL9VeIJwtCFBx4HD8+So5Ju6x/G8Sg55G4xwL
         AfFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EqcT6A013OnirWNo8Gy9VOJI5j9v254F4D7mWOG/81E=;
        b=iVFSInuqyjAhIi4DSVZ1SR685fSrgb4wFIHaCJ6U83vAYmPQQgFX0iSJw1VQA/WOGK
         9WEedxntWEfQQ6VV6pKweb7kZuKugpqRmVP/gM83Li2az9aONzRD6NAD4b49p0YxH4wS
         GkwXw0GG8kgLxNmPOq3qsBGvG0q+RLvcJcqUEFi9YxGA9qsQBabnC38ilaw1eACTAmaw
         rWz6ligXwUfT2XWzvmRHYAlEW8mc7SW5sfzix/No2bghuWsv/5yAFk6e7WN0E1CWC9SH
         5g4oUy783iAw1jny/1/niUs4qCvBf6+KlFjzYi68f6sEIhaTyZA4zgJaqMoE7M24TBXt
         c+Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QwZaCGZU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EqcT6A013OnirWNo8Gy9VOJI5j9v254F4D7mWOG/81E=;
        b=Wl/lt/k+yGGAtDGqKVZXEp47tRJ3vKWu9tUj44ZoRpM9TgG/Rwd3mip9DAmJVH4z+3
         Uphvj0tp7iZJcKiIyrRI4djMVnP30CmkoejfTg2hTUYCxlhi3YLBBjzsXWG5k6kDpmNJ
         r2790/Z6CkdLhtVrfpg7etCIPbG6f2V1pJNaZGuzX+9xI2ujHwwVr9Urb9Z9V11ILDuW
         rZjLs8S1nrDlRQF//dhoz+0AV7WP9CYUuuRtZ65jvwTlJqgHWoKWrCBqI5TpZGh1nOkB
         3P17Sq+/27L5vi9OKo7oNDLM/hEGBotTg93gxuDwM9FgcJg6EWOvLuoSuQEEa9wSHmAl
         AA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EqcT6A013OnirWNo8Gy9VOJI5j9v254F4D7mWOG/81E=;
        b=k5tpDlUz84jiwpfFmX0KMloHDpEimVJ6y1K2s3pTEPrzOFNfA+ZEHllOreBi9T6ibT
         9PDkbat6vovZFGy84QphdXsperypeuIjjnq4DqCcSda8RqBngvF59NMDbHew+dToOVBJ
         STX0Rf8lvSAga5EzJLIQbRj4ythZvH6+kut09UXrnGu3ipkR0cBCnB85yTlUTJG/Q/jj
         pD/C5pdkWlgegFUMsQNConQXXHTX8CFuSxIDyLuzO5qbzy4DWZV1mKZs1SO7mBYM5ORv
         j/u5UWcP6Laofhs8pQm5LO2bwWM5UrAP25y5H+g/kNV/mXxNsjrbRRyar7N1YUjX6mWL
         Ar8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LB5YVhv95byaooj+NVjW1YeWSmcZgfom7PJv+H0b1fSdpDox9
	vppsRSLtR+IngPtfX9A3Zh4=
X-Google-Smtp-Source: ABdhPJzCQgppej7JH3cA/SCiqcomuTjnw+qClN99BphTxTS06ZiW2IJwRuHZPQpkI2z3B5Nwtj5Hpw==
X-Received: by 2002:aca:3357:: with SMTP id z84mr1362885oiz.24.1591658637076;
        Mon, 08 Jun 2020 16:23:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls3473081oif.9.gmail; Mon, 08
 Jun 2020 16:23:56 -0700 (PDT)
X-Received: by 2002:aca:accd:: with SMTP id v196mr1364423oie.135.1591658636747;
        Mon, 08 Jun 2020 16:23:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658636; cv=none;
        d=google.com; s=arc-20160816;
        b=xaK4/WtMo1Q4kGhE85VUexOYQV9OgfBsSCWb2vNU5Ox9QZMKU60Z/a1DAZr3MiEZ/i
         PdqubHe001+LAoOcd5znq642DMHQUCWTMqyEwev1MQH5Bek3Ri3eLzAQmEY00ctD9f5O
         q8rQhjqJlwJ0cmeFi1v9kikVIJp0MSTDgxdBu39bzw4iGLqY+FEilS+VNWtKFuW49VUo
         afo6+GOkxhKh+9uk3sECWHeRk5DZr+4pzaSuAWZDyn2psD5Ub0/WK2e674YIiQa38Tc8
         pYdOpV+QPejZjNf2vJGetIf8P6Ip4hF6TO2hu9kZizApK4VGvd5pXDelXdmHGWQ535GZ
         JuLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L0BtU3FENl2h3qsTDzWYMxVjm4jQSrsIvm07WJAVyBU=;
        b=KRITDG30UWTPxjbQYtLW8HHe8S3ZXM6uYT1TSnWCJygQlUjOgZTfeL3hHII+ZXmAxq
         V7SlmTJPU3stoVICRBkOJHV8owcHO8kK6s4eEHP/ankJZy1cmnN/yMyCUjN18z75CObM
         //5VPUpL++6w1ZPJ4xjj4uZqvrpYL8hMA6V4z+YJ10yXuHxP9F18q5Qo1rONfu8lqRMh
         cydZvKdMaz5LWlfg0MTM0p0lE2JI1eMtUeEsfvK44iOS1nqADBBBKq0NlqOEcdDw2OXZ
         bC4FcILgS631cWM+BIckac6uY3SkU23EsLionEx11WqLNh+596Fp4U45eycJd75rcjv8
         5SnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QwZaCGZU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e23si721437oti.4.2020.06.08.16.23.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:23:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CD79D2074B;
	Mon,  8 Jun 2020 23:23:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"Maciej W . Rozycki" <macro@linux-mips.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Sasha Levin <sashal@kernel.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 058/106] MIPS: Truncate link address into 32bit for 32bit kernel
Date: Mon,  8 Jun 2020 19:21:50 -0400
Message-Id: <20200608232238.3368589-58-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232238.3368589-1-sashal@kernel.org>
References: <20200608232238.3368589-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QwZaCGZU;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Jiaxun Yang <jiaxun.yang@flygoat.com>

[ Upstream commit ff487d41036035376e47972c7c522490b839ab37 ]

LLD failed to link vmlinux with 64bit load address for 32bit ELF
while bfd will strip 64bit address into 32bit silently.
To fix LLD build, we should truncate load address provided by platform
into 32bit for 32bit kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/786
Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: Maciej W. Rozycki <macro@linux-mips.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/Makefile                 | 13 ++++++++++++-
 arch/mips/boot/compressed/Makefile |  2 +-
 arch/mips/kernel/vmlinux.lds.S     |  2 +-
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index ad0a92f95af1..63e2ad43bd6a 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -290,12 +290,23 @@ ifdef CONFIG_64BIT
   endif
 endif
 
+# When linking a 32-bit executable the LLVM linker cannot cope with a
+# 32-bit load address that has been sign-extended to 64 bits.  Simply
+# remove the upper 32 bits then, as it is safe to do so with other
+# linkers.
+ifdef CONFIG_64BIT
+	load-ld			= $(load-y)
+else
+	load-ld			= $(subst 0xffffffff,0x,$(load-y))
+endif
+
 KBUILD_AFLAGS	+= $(cflags-y)
 KBUILD_CFLAGS	+= $(cflags-y)
-KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y)
+KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y) -DLINKER_LOAD_ADDRESS=$(load-ld)
 KBUILD_CPPFLAGS += -DDATAOFFSET=$(if $(dataoffset-y),$(dataoffset-y),0)
 
 bootvars-y	= VMLINUX_LOAD_ADDRESS=$(load-y) \
+		  LINKER_LOAD_ADDRESS=$(load-ld) \
 		  VMLINUX_ENTRY_ADDRESS=$(entry-y) \
 		  PLATFORM="$(platform-y)" \
 		  ITS_INPUTS="$(its-y)"
diff --git a/arch/mips/boot/compressed/Makefile b/arch/mips/boot/compressed/Makefile
index d859f079b771..378cbfb31ee7 100644
--- a/arch/mips/boot/compressed/Makefile
+++ b/arch/mips/boot/compressed/Makefile
@@ -90,7 +90,7 @@ ifneq ($(zload-y),)
 VMLINUZ_LOAD_ADDRESS := $(zload-y)
 else
 VMLINUZ_LOAD_ADDRESS = $(shell $(obj)/calc_vmlinuz_load_addr \
-		$(obj)/vmlinux.bin $(VMLINUX_LOAD_ADDRESS))
+		$(obj)/vmlinux.bin $(LINKER_LOAD_ADDRESS))
 endif
 UIMAGE_LOADADDR = $(VMLINUZ_LOAD_ADDRESS)
 
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 36f2e860ba3e..be63fff95b2a 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -50,7 +50,7 @@ SECTIONS
 	/* . = 0xa800000000300000; */
 	. = 0xffffffff80300000;
 #endif
-	. = VMLINUX_LOAD_ADDRESS;
+	. = LINKER_LOAD_ADDRESS;
 	/* read-only */
 	_text = .;	/* Text and read-only data */
 	.text : {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232238.3368589-58-sashal%40kernel.org.
