Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHGIQD5AKGQETBKUUSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id A641C24E0D4
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:29 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id c2sf1681474plo.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039068; cv=pass;
        d=google.com; s=arc-20160816;
        b=EXILZX/03RrnJ26I2jePiSX+KEXlQ/C7pbk8NZABpLZEElPrwvAJjXcEPri0EqebhV
         Y3hw4rWBbySVBhisq0RodGFMUlCJggfwd281b052gB7IDnCz3jZmSNb0naOMwVxdPuG3
         PdD3b6Vzb9Ly28/+1Se3kvuF8Nv9HFDjMRxEoTL7WyVO88jWbXX6UlDjkd0zhwKK7dKk
         icXN/YJv4WNEt97FyncFFyae6WTLNg0bAqwwOz/lqV5CY2GJ8+52+CYdzj/RhccnHxKK
         xn3HVXy0ZPxf23JhICMql53MGW3nLycncAjFoHTlGRzlGRU+C/WXUJVV+ClsLkDfEsaL
         Bb/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=J4iVVAEfXn0YWC2XtRt+ma3HneG+j/tAD45HjtC0nWA=;
        b=pvHUiD3QCyi5ciNWsnBVRsaFdTbDXdE77Fu6f4WdKzIoq24Tzsi2epyvOi7/FEyscT
         E66wrZulwNNPd7jvF0vlKe4hah0vltAsuRKRaB67jC65qEdPCzGITpgYJaobuRp23hPw
         bYqLhBpXEnYKZMItzpvwUnqjmz8B3iNVE/SUo2G1ETu58+RWCEKAtMhGQQS96GQ7wUOr
         5+KAD0DyjGHwM47ycmyr65hSm9zAefQAOHT67leZQgChUo1Vzrpv766NboDcZoVxBpkf
         +wvgrRAXIsyOJCnAe6J0qPzAMyXQpHhWd5CC58IlvhPH7pJCcFmwhngzGY9LuvYGocyc
         50MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dwH4hSFn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J4iVVAEfXn0YWC2XtRt+ma3HneG+j/tAD45HjtC0nWA=;
        b=LsXNQCSL+pmGr9LvsHb66H1T12CR4FM8GK34rHwnXbSJp8pIxTDSByqm1IcePFNAaQ
         vcPJo2noM+jPB0/+2mXq1TwOByfqgPBpBNZybP6OBEHLYc/eF9+LcYh/xRiB/4IBFWIL
         fnzssI46s173jxc29W6ieVMsvrkTFF0E8IadKPBeZW6BPswn2PudD2wzPX3nv27H+7JJ
         1C0JRBkN6fiT0l+9FL30l4p9cGBHNMMWk+DYMitN3hBNhKa3FWSAyx3UY7md1V4lYmd9
         AtcIY2MQ4xU4Ag2b4fEj4l+TBQMOmsOc5XToGnODRw07Qf4LYH00Uo3gpuXuaqNluPMd
         zvWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J4iVVAEfXn0YWC2XtRt+ma3HneG+j/tAD45HjtC0nWA=;
        b=ScaFZAL+9uIoTcTAx0SEIyrTnRUEAZfiy8/IeNXAcJvOt9GLsiSpT0Q2bYDc1NrO8j
         BlDq8ofdyiPfqH1a4TRA9IvBZ3HCwLPBho24tO8vNBUGWaJp5sOhLRvHHtrW6YyIBJid
         5fYNIMTyyp0tceDiXQkJhMw80yAp0bO+JAnqPa4J07Qz1Y2pwLE0l7PvekDSo4Em5D2X
         y8wkMNvXOjUg1ZWDrQaQzH+ODMBhJeCLZtLcTDgntha6Spvjy3FLZBYxSweC2mj5WcjL
         MJXhpff1k7yZe6MbvRELPJDFinv1np0zB2dJWNvmCazBoCs/oth5bpxeddOnKmdfPmYZ
         vElA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V99O4eyIIphvcu3x8fTnUWVDDAzNc585A2yurwhK+VYzfIZs+
	y/6rPYXyX9HureVWS1yOmDU=
X-Google-Smtp-Source: ABdhPJzFWTYw9Td+1rj2ZyV4dO9RbKuFn1Ys3Sa2beeaA2Zq1mRpy9uwGFm7i38qMSzz0UoqEjw5qw==
X-Received: by 2002:a17:90a:4dca:: with SMTP id r10mr3568518pjl.200.1598039068349;
        Fri, 21 Aug 2020 12:44:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b12:: with SMTP id b18ls1093791pfb.8.gmail; Fri, 21 Aug
 2020 12:44:27 -0700 (PDT)
X-Received: by 2002:a62:7f0e:: with SMTP id a14mr3788820pfd.320.1598039067827;
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039067; cv=none;
        d=google.com; s=arc-20160816;
        b=aTywVk5kIyRzzO3rjzcjohHLeWWlPNfjuPqwpEKE22jWOjgwyHao5wJi4QUvOit5VI
         R3Q73sPDi/9HgryYP6W8t8H8NdgirVx7J+2K02x4qA2A899h1yswph8emhzy9J2DLfvR
         zO54Oi5Xvu6JbCWFXGvpce5kP/N7jhyFjpMKuuO/ZOt52VeUlRpUQZXNe0R5rgLDoLiR
         sXOCVlOhrj4+d62ud1cAIkdvGNCq/6TLjWEfX6OIEgLG3wFmLqNgBQCzetU1TdYvPCOH
         gFlHrI+PEdMVzz3/1A7rFHbn7T4lz+En7s2MUpCIuPObl7gPsMzjDM6eusEic9XPnnpe
         QWlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5FUB3tjALH2XvfA6zdfdUjwI0GuDEI1l9XpW++dZco8=;
        b=FCi+x97Ei97UQak0cJqSQ3NNd/ExTZsNN5NX6jRFnn5P3gV+rUECjtNP4oCBM+KoYy
         YKKWHGPjuRKQeKQE7B7khb80edK7c9buY2etoab0MnNBRl2WhCZ5UysGbyfaPgzRAXqe
         5jVeXGoBCrAQ6l7fFdxIAeRAP1h6uxgKzrAMo04XN7L5K/56G29LjBzkEWmVyafnf2QC
         i1DMi40p6n1X1xzpZDyLUu0XzMVq3tRyeEGi+OoOUuF3zop4nBjmNBqceJelPKm2YXBA
         jaPok1/Ogg53OvdQsS5jWPtwhzoN+ZYxzirV7RJ7PJOWhXlWTkWtM5s8qu7Gxod/Knah
         DMfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dwH4hSFn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l26si219119pfe.2.2020.08.21.12.44.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id a79so1562273pfa.8
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
X-Received: by 2002:a62:2ace:: with SMTP id q197mr3509274pfq.77.1598039067613;
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u14sm3393575pfm.103.2020.08.21.12.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 16/29] arm/build: Explicitly keep .ARM.attributes sections
Date: Fri, 21 Aug 2020 12:42:57 -0700
Message-Id: <20200821194310.3089815-17-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dwH4hSFn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

In preparation for adding --orphan-handling=warn, explicitly keep the
.ARM.attributes section (at address 0[1]) by expanding the existing
ELF_DETAILS macro into ARM_DETAILS.

[1] https://reviews.llvm.org/D85867

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/lkml/CAKwvOdk-racgq5pxsoGS6Vtifbtrk5fmkmnoLxrQMaOvV0nPWw@mail.gmail.com/
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/include/asm/vmlinux.lds.h | 4 ++++
 arch/arm/kernel/vmlinux-xip.lds.S  | 2 +-
 arch/arm/kernel/vmlinux.lds.S      | 2 +-
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
index a08f4301b718..c4af5182ab48 100644
--- a/arch/arm/include/asm/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -52,6 +52,10 @@
 		ARM_MMU_DISCARD(*(__ex_table))				\
 		COMMON_DISCARDS
 
+#define ARM_DETAILS							\
+		ELF_DETAILS						\
+		.ARM.attributes 0 : { *(.ARM.attributes) }
+
 #define ARM_STUBS_TEXT							\
 		*(.gnu.warning)						\
 		*(.glue_7)						\
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 904c31fa20ed..57fcbf55f913 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -150,7 +150,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
-	ELF_DETAILS
+	ARM_DETAILS
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index bb950c896a67..1d3d3b599635 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -149,7 +149,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
-	ELF_DETAILS
+	ARM_DETAILS
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-17-keescook%40chromium.org.
