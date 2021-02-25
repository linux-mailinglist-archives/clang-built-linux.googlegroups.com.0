Return-Path: <clang-built-linux+bncBAABBO4Q32AQMGQE6NKSZIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id AF696324F07
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:21:32 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id n2sf3695381pgj.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 03:21:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614252091; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+b9eXb5jZQiiBqTCAw8w3fN9aS3rRBDzWybwLctlxL3K5VKk6K1SmnYg0FUrMCW+A
         4AJ9fwkW1Gt+KD1E9M7QIPbgbwT2dZyHjjkvgcqlRNhHnGnAn6KZ35+vJpPYOaVYrssp
         7M1RBwFCo8AcCpIeg8F8G4GtGNyb+G/ejbuSAcV3fJrwSXERennG9jqbMlDsK+MlDw7Z
         /Hj3pUfLz2nV0AhwL217Nr0iYABWV/gOrEJm1onfq3QKNaotU0XhbtADeGrDrg1qf08S
         FYzMmLttzlhvf1TF9OpOyrttPwFuTzHm8FImTIBNPl7M7zHPkR78s4q248+MQ4tpIAsF
         yw5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CJuXL9bwV4xUNgWouqWK/DYa3yY77OxF0ml6jJDRbKk=;
        b=APPfndpW9rDMvEcNghhC4aIu5uLX+jo4essF2Pt3KwxumNHwwnRKGLQtbkppvJDY/L
         UDUB5+XZS/IMtfxd27GhcDBzSFP93KTB4MXt+NjYbei/li1ZZ6T8A/SDJqzTJCKDTPWP
         dFeT/gc9gjOk+iLrMFU2FaZKRCBkrZ3SeLZXS/IkG71BCdQm3VguBBAn2scSUB716UqH
         eOa4M5q0qsRvYGsOzoXRRqg1nPFPCCh8fOsD3fw51ZbkNWu+hFsPGB1vJfKbj1C0R6bn
         QA4UMG4PdO8WrmNH0jWUY5XO+SRmdxGcdDx90RK9lD/INemujjqLhzPs7L8+7L7/B4JJ
         1y/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="p/ZwyTzd";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJuXL9bwV4xUNgWouqWK/DYa3yY77OxF0ml6jJDRbKk=;
        b=nWJkmRWd1JOByc36OBpadN1JrSFPEDamarygdX5ayC7bbwr2EAtovF1d9UpOTsJE0P
         3zzoGN8vBeszQIM12I0+PmucjURPl4y/QrBGFXUN1bxQIJmfWOaRA60epH8wpj8t/bxG
         s+zZdquGN8hORBn8o/6mXF9ivYtDiDzZ3gLMYNHR0TlBjTbWDU/z9GzthG/Yj4Xaq3Q6
         TWRybVIWEcDtPtI7IbPhtIu8TDEtcMXx1Aeiki2o5PkXDDF0hWCimGdWxSBTNx0j8pWI
         CvHyrwH2X5qNFGYreYPT3pJEh64Zp4+8Au1oFQTOw534xkCCvD16234R/ZPVWsy7KrC+
         UoYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CJuXL9bwV4xUNgWouqWK/DYa3yY77OxF0ml6jJDRbKk=;
        b=PFJHKJK19kjPIBucz0fwnur9XqrL4ui1aUaWAu35TaAuToqDsR2m7f1LM8I2LDpKQF
         WbDn10N8xtqu1i4gC9beTstj1VT4w/PNpfa3uW8SAkcmtptgoxJ+KQ3Pg5DVBji9ktdv
         w5NEBlLgFpFerk9d+oxtvZMBF0h2g0GJUmaekQmsG2UMNKcnPNgFtHVMjGrEiFSi7hbz
         ccEwKhveiKl3K8BIhQPp/QuzMIduKN5B8BSfDA+LUrZnWHEMAxWTAGUGcWVvWix6tqDr
         mUmFMU4dHXtL7lgpmtycuPwQBTUU0JZ1V5vQdBQmhO5jD2NVJfKKcj7CghL4oHyBiokZ
         GNSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533neQm2WxBUzb4qAPgMRcBzOB156ttUbbpTiR7kaZkEjRO92ZL6
	EPQY+7uxDO1pTlVTbO1DP4Q=
X-Google-Smtp-Source: ABdhPJzUjNhZ6SWTpCvU5998MAVqUqVJ86O6ja1VobtnBrnnEh3LIwPCnaalA7+JxnK64OUVvazL2g==
X-Received: by 2002:a63:cf05:: with SMTP id j5mr2641750pgg.384.1614252091439;
        Thu, 25 Feb 2021 03:21:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ed0d:: with SMTP id u13ls2409945pfh.3.gmail; Thu, 25 Feb
 2021 03:21:31 -0800 (PST)
X-Received: by 2002:a63:207:: with SMTP id 7mr2527510pgc.346.1614252090994;
        Thu, 25 Feb 2021 03:21:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614252090; cv=none;
        d=google.com; s=arc-20160816;
        b=sWvkDrKokB/M7OE6jiQivC7AUOHSuddScyYbI+3tIhcAwjCsZADEobWVY8VaVMSl1Q
         Ldvl9pTzcVSKgtFaYQaMHTwy8Me9JTGAzqKstirbAJuzs4HKB5hn/0Ayx09N0MspauPi
         6YvH2VKOH3c0Qn5S1NHvc9S3pxACdUZNwc8ST6pkNdBkR6UaP2RatNUCLoSLqQN5n7Nx
         tupUB09S2pKej4YUK+ZqS3rHyK4WH3IW2P8JXatRfmL7OHZ6SMpZTJOsFN/0qBedS/jG
         T1wnD5y5wxzWBJk+Ngzc6wl39heUGIydkb9XO3dKEVTD8qb6lSiGtSDNlWMS+s0PC5cR
         lTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=IraJOlGfV6uaHDzpcYOffeDI6go1S0454CbXnvA32pE=;
        b=Mfl/v156ow/pn8n2s8bDBiEI9Xpw/zoNVXJxD5puoy8rahHrR6OYrRJed7JRKc6HkQ
         gnLOmW6I8YZ/SUlyle4laD+/KeLeWZJutIxKG+oUGey3tWATKJ5Ysqg5lstCHWWWwSHc
         bzJe4MnQzak9fvtUpd3/meMz4JN4FqkZ1+4oDQw46oS2OvAtWECrwqHoVM6wR/UZZhgI
         ZKLvzfseZScgOGBBMvehNqcaSgc0wJk5AUibYpYJROEB60f9QsSjIPtxFWh3ICXTH21L
         bUZNyuuLf9jlpkafcz/kgs7YPSPoINx/Cn+ZBCFb1kBAmjgVw0trMDxVnnhoS5q2J2wV
         D/gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="p/ZwyTzd";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si236136plr.3.2021.02.25.03.21.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 03:21:30 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A128964EF1;
	Thu, 25 Feb 2021 11:21:25 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Andrew Scull <ascull@google.com>,
	David Brazdil <dbrazdil@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
Date: Thu, 25 Feb 2021 12:20:56 +0100
Message-Id: <20210225112122.2198845-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="p/ZwyTzd";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

When looking at kernel size optimizations, I found that arm64
does not currently support HAVE_LD_DEAD_CODE_DATA_ELIMINATION,
which enables the --gc-sections flag to the linker.

I see that for a defconfig build with llvm, there are some
notable improvements from enabling this, in particular when
combined with the recently added CONFIG_LTO_CLANG_THIN
and CONFIG_TRIM_UNUSED_KSYMS:

   text    data     bss     dec     hex filename
16570322 10998617 506468 28075407 1ac658f defconfig/vmlinux
16318793 10569913 506468 27395174 1a20466 trim_defconfig/vmlinux
16281234 10984848 504291 27770373 1a7be05 gc_defconfig/vmlinux
16029705 10556880 504355 27090940 19d5ffc gc+trim_defconfig/vmlinux
17040142 11102945 504196 28647283 1b51f73 thinlto_defconfig/vmlinux
16788613 10663201 504196 27956010 1aa932a thinlto+trim_defconfig/vmlinux
16347062 11043384 502499 27892945 1a99cd1 gc+thinlto_defconfig/vmlinux
15759453 10532792 502395 26794640 198da90 gc+thinlto+trim_defconfig/vmlinux

I needed a small change to the linker script to get clean randconfig
builds, but I have not done any meaningful boot testing on it to
see if it works. If there are no regressions, I wonder whether this
should be autmatically done for LTO builds, given that it improves
both kernel size and compile speed.

Link: https://lore.kernel.org/lkml/CAK8P3a05VZ9hSKRzVTxTn+1nf9E+gqebJWTj6N23nfm+ELHt9A@mail.gmail.com/
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/Kconfig              | 1 +
 arch/arm64/kernel/vmlinux.lds.S | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b94a678afce4..75e13cc52928 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -2,6 +2,7 @@
 config ARM64
 	def_bool y
 	select ACPI_CCA_REQUIRED if ACPI
+	select HAVE_LD_DEAD_CODE_DATA_ELIMINATION
 	select ACPI_GENERIC_GSI if ACPI
 	select ACPI_GTDT if ACPI
 	select ACPI_IORT if ACPI
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index bad2b9eaab22..926cdb597a45 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -217,7 +217,7 @@ SECTIONS
 		INIT_CALLS
 		CON_INITCALL
 		INIT_RAM_FS
-		*(.init.altinstructions .init.bss .init.bss.*)	/* from the EFI stub */
+		*(.init.altinstructions .init.data.* .init.bss .init.bss.*)	/* from the EFI stub */
 	}
 	.exit.data : {
 		EXIT_DATA
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225112122.2198845-1-arnd%40kernel.org.
