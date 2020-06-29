Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSEP433QKGQEXZ54UBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4B620CCB0
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:49 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id c26sf11501830qtq.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411529; cv=pass;
        d=google.com; s=arc-20160816;
        b=eHQklkqEDd5nOShc9AyQwnxNEiLp4eNd+83aGoR+dVC/1ySuVuKL4gRUOUq4lQqXGi
         dD2ifM5RlfajhmXKxMv2KO0/1LadZ3K48fN9kp4JEfp9vgsy9Mpcr8G5EwPRw99AcqVY
         RSohnyL90FobJWwPbXBsD5P9T1oj6wKN8YL3Qyih/1VHXIFARotlrtnYaGHvgYz3h9Qn
         MDQFgBIwUkAmkxcL4mvs99h5eWlBXAnygyHHuWhE9WObnIfU4wFTJykFdtBK7FTOyvXZ
         6V/yy78VaZ24AgWC+MEXlI7Zu1tOYSkoIAGydJO+gQRqR8Q2aaFmF/WP+DZPluzXr2Xw
         9qXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cYrMT9FQOdUmYhRhYJwxpUGasf6KPkyvIO4hBiJljsQ=;
        b=Nx0jX0ycIt1jeZzvzqVIdmHwCQXgbsDRO4RK20kLSrVNH9Ek5aPAVP4XJlAeX0bHAi
         lvRvb4bt5+cEje/509dwk3NDEVNp/eg4OirswOOrT/BQkynrwKsfxy9buRb2gtX71djr
         Is3AIrD+VUfaCu714LUxte4CMjJcUSzGpOkj71WeWhecuckyNshMskd97SEP/DjB+BVb
         LSYDZctUSzzg5W2EsSRyrSZiuOh+2TKVDYO6c0+Pt+chKPIra+fnTx+TJg7hYkxn9xKL
         xq3PyXiI6DNNCaSK5RVwZHEAS5doQqdgFDc+saNCnEhBxHRJoOakzTEZNMljtVMbgtqU
         A5qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=g7mI0xRQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cYrMT9FQOdUmYhRhYJwxpUGasf6KPkyvIO4hBiJljsQ=;
        b=JKBLuH5fkbjyzLbovy6TuiytRqFvVOtrCfLH1On/G1FGBo64neLXTdwdaN1anLBSnj
         G+n0uZH+VDPszkremmA0TuV0QjqdyrwR2iHOp1M5e3ADO6D3IO6cjATmDLivbyNeWYUI
         lrxqUx+MxuxVcaaqE8bW74pL6UAdbNk9zKRGYbpsGBixDRzUflCKpnSQeV0ojYDBlc8k
         CQWan2wQZlnw+/HWQRIaUtm5GiTdFGOmfKV0zFmZOyBx2kW03MJxc2ejQuzgE2H1eIVF
         9iMU1MkFqrdFBUdz1sHUPeWivsEVDMMkusXywKwmTwR9S4XpzzStTREHJQ3Dw+AWCbtQ
         jCrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cYrMT9FQOdUmYhRhYJwxpUGasf6KPkyvIO4hBiJljsQ=;
        b=imdaqdavAkLF0bdlNagh34FxjGzoJJdLWWIB1fj2CYfD5VfXD9/hoZdrc8F+SCh5O5
         4vjOl7ICX1TvU1CJXmP4vNyd6HFpG772QOdyokfBdiqCTjQrNfQ+ymZ1swSDeQAU6wej
         RHhOeMEre7rExm7J2+go7cTbaaX5eB+bfp55sl9Rly4mByorXq8YFAptn9TKO7WEeF1Q
         QYgXCqXmxUsDfw0ngJIJBWlQjShaiG7YDdDDwYZEBZyvrtsjtBfIQYksSk3DPv/L5kVy
         a+XM3miccJmuDHEvzFLEQk0leXlmMCtu6N5IJJzcAPKznH9n/+iYcJugEfaUptRh+Rtt
         6NcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WF1GIfNDOtNYoNfctkEiOeo9M9NB1/tbgAzoIiwIEu1l1Tqt5
	TfJaYtbIkWkaCI8vQlD78jk=
X-Google-Smtp-Source: ABdhPJwsgDo5V2Wp+YggO2O1bnRO2Hqwv6IXA76CoCkosn9CKWmDt+c/cwwimRpatBZE/hFMZrUdmA==
X-Received: by 2002:a37:4b17:: with SMTP id y23mr13407896qka.73.1593411528943;
        Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e415:: with SMTP id q21ls3967613qkc.9.gmail; Sun, 28 Jun
 2020 23:18:48 -0700 (PDT)
X-Received: by 2002:ae9:ee03:: with SMTP id i3mr2904449qkg.83.1593411528417;
        Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411528; cv=none;
        d=google.com; s=arc-20160816;
        b=u05yB5SY9ep6Xmym/QttAjUcckCyMiuBI6ny/XSGkqdGq6vsaStaTKODcnIQdxiAxy
         XtaAYgfAVesIPAGBK9ukWG572i8wTDVMkxgyEqCGjZM35KZ68EC5lWKreUDrjEepnrp2
         pOg89dsDZ0Etfy9CVkPhaSYyr+wiJmJ1kOnvJBF3zhObBvUmPRR+fDjrGTNy7ZXRbEEj
         +Yggzbv/IT1IbBxK1geIy5J2KwLdmw0/gaa9YRjgiadvU+2U2ivOpCAHjadiO15OOhXG
         PRHSR4mLUeDDFT42IQk7uc6MIeJzsMErZRYzcHjGJcb2psHk98DesCfR9zh0nkTySfBv
         pytQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6hZnstVfYoPOWJe22/uMPE3GyeVYaazSg9tzCfSWEM0=;
        b=miJOYttBUCgJzMfe1gLANWtWYb5jI2jDa2E19lsZvlUjUBw7BudysoYkwKfW9niUoc
         XxSeGrmcY8kWRbe9aFWRtlXOQhSBmtzjMjYD2+peIgNxNsM7gipKpjw9trHJDo83S8xr
         d+rpTpZ7IvO3zy02UFq6GnHg//xjKcU/mbqmdwC+ycNbmFrFWZBsna032pHf/EiRFHw9
         BIqsNeDs1TCawux8545VR0a8wuu+LkT4HCUCWBq2jD2R/1WWap6xjIHyiApec1kgCaD7
         D6f7GTtSrAyQ6A4f594aDxwIzWa1jWXav6kv5RdL5UCQ/yCcHtUHoI088xVWfNOp0tND
         wzlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=g7mI0xRQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id b26si1374026qtq.3.2020.06.28.23.18.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id d6so7567469pjs.3
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
X-Received: by 2002:a17:902:8a95:: with SMTP id p21mr11636474plo.230.1593411527513;
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f23sm17736216pja.8.2020.06.28.23.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 03/17] vmlinux.lds.h: Split ELF_DETAILS from STABS_DEBUG
Date: Sun, 28 Jun 2020 23:18:26 -0700
Message-Id: <20200629061840.4065483-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=g7mI0xRQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The .comment section doesn't belong in STABS_DEBUG. Split it out into a
new macro named ELF_DETAILS. This will gain other non-debug sections
that need to be accounted for when linking with --orphan-handling=warn.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/alpha/kernel/vmlinux.lds.S           | 1 +
 arch/arc/kernel/vmlinux.lds.S             | 1 +
 arch/arm/kernel/vmlinux-xip.lds.S         | 1 +
 arch/arm/kernel/vmlinux.lds.S             | 1 +
 arch/arm64/kernel/vmlinux.lds.S           | 1 +
 arch/csky/kernel/vmlinux.lds.S            | 1 +
 arch/hexagon/kernel/vmlinux.lds.S         | 1 +
 arch/ia64/kernel/vmlinux.lds.S            | 1 +
 arch/mips/kernel/vmlinux.lds.S            | 1 +
 arch/nds32/kernel/vmlinux.lds.S           | 1 +
 arch/nios2/kernel/vmlinux.lds.S           | 1 +
 arch/openrisc/kernel/vmlinux.lds.S        | 1 +
 arch/parisc/boot/compressed/vmlinux.lds.S | 1 +
 arch/parisc/kernel/vmlinux.lds.S          | 1 +
 arch/powerpc/kernel/vmlinux.lds.S         | 2 +-
 arch/riscv/kernel/vmlinux.lds.S           | 1 +
 arch/s390/kernel/vmlinux.lds.S            | 1 +
 arch/sh/kernel/vmlinux.lds.S              | 1 +
 arch/sparc/kernel/vmlinux.lds.S           | 1 +
 arch/um/kernel/dyn.lds.S                  | 2 +-
 arch/um/kernel/uml.lds.S                  | 2 +-
 arch/unicore32/kernel/vmlinux.lds.S       | 1 +
 arch/x86/boot/compressed/vmlinux.lds.S    | 2 ++
 arch/x86/kernel/vmlinux.lds.S             | 1 +
 include/asm-generic/vmlinux.lds.h         | 8 ++++++--
 25 files changed, 31 insertions(+), 5 deletions(-)

diff --git a/arch/alpha/kernel/vmlinux.lds.S b/arch/alpha/kernel/vmlinux.lds.S
index bc6f727278fd..5b78d640725d 100644
--- a/arch/alpha/kernel/vmlinux.lds.S
+++ b/arch/alpha/kernel/vmlinux.lds.S
@@ -72,6 +72,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/arc/kernel/vmlinux.lds.S b/arch/arc/kernel/vmlinux.lds.S
index 54139a6f469b..33ce59d91461 100644
--- a/arch/arc/kernel/vmlinux.lds.S
+++ b/arch/arc/kernel/vmlinux.lds.S
@@ -122,6 +122,7 @@ SECTIONS
 	_end = . ;
 
 	STABS_DEBUG
+	ELF_DETAILS
 	DISCARDS
 
 	.arcextmap 0 : {
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 6d2be994ae58..3d4e88f08196 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -152,6 +152,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	ELF_DETAILS
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 7f24bc08403e..5592f14b7e35 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -151,6 +151,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	ELF_DETAILS
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 6827da7f3aa5..55ae731b6368 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -245,6 +245,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	ELF_DETAILS
 
 	HEAD_SYMBOLS
 }
diff --git a/arch/csky/kernel/vmlinux.lds.S b/arch/csky/kernel/vmlinux.lds.S
index f05b413df328..f03033e17c29 100644
--- a/arch/csky/kernel/vmlinux.lds.S
+++ b/arch/csky/kernel/vmlinux.lds.S
@@ -109,6 +109,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/hexagon/kernel/vmlinux.lds.S b/arch/hexagon/kernel/vmlinux.lds.S
index 0ca2471ddb9f..35b18e55eae8 100644
--- a/arch/hexagon/kernel/vmlinux.lds.S
+++ b/arch/hexagon/kernel/vmlinux.lds.S
@@ -67,5 +67,6 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 }
diff --git a/arch/ia64/kernel/vmlinux.lds.S b/arch/ia64/kernel/vmlinux.lds.S
index d259690eb91a..9b265783be6a 100644
--- a/arch/ia64/kernel/vmlinux.lds.S
+++ b/arch/ia64/kernel/vmlinux.lds.S
@@ -218,6 +218,7 @@ SECTIONS {
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	/* Default discards */
 	DISCARDS
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index f185a85a27c1..5e97e9d02f98 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -202,6 +202,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	/* These must appear regardless of  .  */
 	.gptab.sdata : {
diff --git a/arch/nds32/kernel/vmlinux.lds.S b/arch/nds32/kernel/vmlinux.lds.S
index 7a6c1cefe3fe..6a91b965fb1e 100644
--- a/arch/nds32/kernel/vmlinux.lds.S
+++ b/arch/nds32/kernel/vmlinux.lds.S
@@ -64,6 +64,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/nios2/kernel/vmlinux.lds.S b/arch/nios2/kernel/vmlinux.lds.S
index c55a7cfa1075..126e114744cb 100644
--- a/arch/nios2/kernel/vmlinux.lds.S
+++ b/arch/nios2/kernel/vmlinux.lds.S
@@ -58,6 +58,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/openrisc/kernel/vmlinux.lds.S b/arch/openrisc/kernel/vmlinux.lds.S
index 60449fd7f16f..d287dbb84d0f 100644
--- a/arch/openrisc/kernel/vmlinux.lds.S
+++ b/arch/openrisc/kernel/vmlinux.lds.S
@@ -115,6 +115,7 @@ SECTIONS
 	/* Throw in the debugging sections */
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
         /* Sections to be discarded -- must be last */
 	DISCARDS
diff --git a/arch/parisc/boot/compressed/vmlinux.lds.S b/arch/parisc/boot/compressed/vmlinux.lds.S
index 2ac3a643f2eb..ab7b43990857 100644
--- a/arch/parisc/boot/compressed/vmlinux.lds.S
+++ b/arch/parisc/boot/compressed/vmlinux.lds.S
@@ -84,6 +84,7 @@ SECTIONS
 	}
 
 	STABS_DEBUG
+	ELF_DETAILS
 	.note 0 : { *(.note) }
 
 	/* Sections to be discarded */
diff --git a/arch/parisc/kernel/vmlinux.lds.S b/arch/parisc/kernel/vmlinux.lds.S
index 53e29d88f99c..2769eb991f58 100644
--- a/arch/parisc/kernel/vmlinux.lds.S
+++ b/arch/parisc/kernel/vmlinux.lds.S
@@ -164,6 +164,7 @@ SECTIONS
 	_end = . ;
 
 	STABS_DEBUG
+	ELF_DETAILS
 	.note 0 : { *(.note) }
 
 	/* Sections to be discarded */
diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 326e113d2e45..e0548b4950de 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -360,8 +360,8 @@ SECTIONS
 	PROVIDE32 (end = .);
 
 	STABS_DEBUG
-
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 	/DISCARD/ : {
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index e6f8016b366a..00a325289a26 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -97,6 +97,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/s390/kernel/vmlinux.lds.S b/arch/s390/kernel/vmlinux.lds.S
index 37695499717d..177ccfbda40a 100644
--- a/arch/s390/kernel/vmlinux.lds.S
+++ b/arch/s390/kernel/vmlinux.lds.S
@@ -181,6 +181,7 @@ SECTIONS
 	/* Debugging sections.	*/
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	/* Sections to be discarded */
 	DISCARDS
diff --git a/arch/sh/kernel/vmlinux.lds.S b/arch/sh/kernel/vmlinux.lds.S
index bde7a6c01aaf..3161b9ccd2a5 100644
--- a/arch/sh/kernel/vmlinux.lds.S
+++ b/arch/sh/kernel/vmlinux.lds.S
@@ -76,6 +76,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/sparc/kernel/vmlinux.lds.S b/arch/sparc/kernel/vmlinux.lds.S
index f99e99e58075..d55ae65a07ad 100644
--- a/arch/sparc/kernel/vmlinux.lds.S
+++ b/arch/sparc/kernel/vmlinux.lds.S
@@ -187,6 +187,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/arch/um/kernel/dyn.lds.S b/arch/um/kernel/dyn.lds.S
index f5001481010c..dacbfabf66d8 100644
--- a/arch/um/kernel/dyn.lds.S
+++ b/arch/um/kernel/dyn.lds.S
@@ -164,8 +164,8 @@ SECTIONS
   PROVIDE (end = .);
 
   STABS_DEBUG
-
   DWARF_DEBUG
+  ELF_DETAILS
 
   DISCARDS
 }
diff --git a/arch/um/kernel/uml.lds.S b/arch/um/kernel/uml.lds.S
index 3b6dab3d4501..45d957d7004c 100644
--- a/arch/um/kernel/uml.lds.S
+++ b/arch/um/kernel/uml.lds.S
@@ -108,8 +108,8 @@ SECTIONS
   PROVIDE (end = .);
 
   STABS_DEBUG
-
   DWARF_DEBUG
+  ELF_DETAILS
 
   DISCARDS
 }
diff --git a/arch/unicore32/kernel/vmlinux.lds.S b/arch/unicore32/kernel/vmlinux.lds.S
index 6fb320b337ef..22eb642c7280 100644
--- a/arch/unicore32/kernel/vmlinux.lds.S
+++ b/arch/unicore32/kernel/vmlinux.lds.S
@@ -54,6 +54,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS		/* Exit code and data */
 }
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 8f1025d1f681..d88612e3091f 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -75,5 +75,7 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
 
+	ELF_DETAILS
+
 	DISCARDS
 }
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 3bfc8dd8a43d..504d16968ed8 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -410,6 +410,7 @@ SECTIONS
 
 	STABS_DEBUG
 	DWARF_DEBUG
+	ELF_DETAILS
 
 	DISCARDS
 }
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index e53a2d4f47f6..c5d10bc53996 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -34,6 +34,7 @@
  *
  *	STABS_DEBUG
  *	DWARF_DEBUG
+ *	ELF_DETAILS
  *
  *	DISCARDS		// must be the last
  * }
@@ -784,14 +785,17 @@
 		.debug_macro	0 : { *(.debug_macro) }			\
 		.debug_addr	0 : { *(.debug_addr) }
 
-		/* Stabs debugging sections.  */
+/* Stabs debugging sections. */
 #define STABS_DEBUG							\
 		.stab 0 : { *(.stab) }					\
 		.stabstr 0 : { *(.stabstr) }				\
 		.stab.excl 0 : { *(.stab.excl) }			\
 		.stab.exclstr 0 : { *(.stab.exclstr) }			\
 		.stab.index 0 : { *(.stab.index) }			\
-		.stab.indexstr 0 : { *(.stab.indexstr) }		\
+		.stab.indexstr 0 : { *(.stab.indexstr) }
+
+/* Required sections not related to debugging. */
+#define ELF_DETAILS							\
 		.comment 0 : { *(.comment) }
 
 #ifdef CONFIG_GENERIC_BUG
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-4-keescook%40chromium.org.
