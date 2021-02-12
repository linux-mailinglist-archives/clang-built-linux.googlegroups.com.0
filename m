Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBWM5TCAQMGQEHVNEK2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E744319973
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 06:15:06 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id 9sf2138650uas.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 21:15:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613106905; cv=pass;
        d=google.com; s=arc-20160816;
        b=wv5ZfebLb+D4sa/k+LJIo8bJPQxJE8Mr2rJ6Bt1Ii4EFJNJgbq6X1yPUrg4Zt3y4JJ
         hMXRoVT72YoimTh0iuFMxmW/pyaP/Ehh4OFVBodjxEj6XgaR+Lc2cFahy1WElcaRaGW6
         QRG+y871PooYzd5aY4um2ajuXSF8iQIf3PdzgpePa8lVzWnCQVfBexQT02wuZQlqHo9c
         fZTIq2+vS5iKD7OrcoCdw+XaEt+3fqh1ykSjr9SC59CbsZAX2/iUes5KgUvzbqy9rPOe
         iMD8GqSObe+Mrnlf2m6EC0W//JsUnutnTx2jjIElJQ9FOXRmOF+Bzo0ausNsfoYQXT39
         LpCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=BBnI9Y9CU9J9zco9/ade2u21Et+Vx2Uk9wIyjJCFBxM=;
        b=xmSaNQRAj0TebWVDJnLJphfK5PGhaeakf/1FJgANftYvl+MEZP9AeepHDNk5ae+zr6
         hEWdhRd8RG2jXGNIf/wCQ2XEBxR+02tB6SW5Uh05hj06I7vGpq7Fwi7EZbZ5M41zy8Jc
         tc1OxqSNaDfCcf5zslW5KS861ZDIODzqU/k6ww3Aq+SHoFT6//MwkIJpIW6XLalNZyZZ
         OaCAS3poE3+EPXTapBPXyqAgoWw+JeJ8MJkCTx12c8JzgIi6WJP/N45iWiH90rUbWIz+
         RMF/K6go5O3R+mWvTQuOXCTIlR26RLI/oULGQdf4otilJghzeWVjFLYTyZ04bsgZe186
         agFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SzJL9vBy;
       spf=pass (google.com: domain of 32a4myackezu87zc1z75dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=32A4mYAcKEZU87zC1z75DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BBnI9Y9CU9J9zco9/ade2u21Et+Vx2Uk9wIyjJCFBxM=;
        b=YrnXysz9nsUf6ZeDdZpWP9S6M1sdRjTS1yV/S6fDq8q2PvBPaAYsBE5G6TihRfRE7Y
         kyoe0F/4t+nFuwkwKCbo/y0A51PJtfrd46aR/9WwWmV8kRSDBoFSHT4aCJlnlirlmfxW
         Z/E4RHkpe2uhNShCszzmXlI541grmDzBT1CbeWbCX7XIbdLBrGDSiewbkyLHUZW7/M1p
         EbNJSc0HHFNn1z/UjMrQkCDIarYB6iFdkE5UjAcrrG4+ZC0waXncNlQadiYg0CmYd2dl
         lMSKFHHho20znLhKXcmlmOXDsR3aqWevfoR+Lj+q7QPFQLEGYsbpuhpxyKEXNqVodhmW
         dvJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BBnI9Y9CU9J9zco9/ade2u21Et+Vx2Uk9wIyjJCFBxM=;
        b=EjYX/Jrp9AAUWhuPa+mh4lAS4oxxjKgDXtHhaNIvGwNd/9RpKAPI4SVm95Quhay4x3
         6LKHRm0RjQLj3SI7UZl/GXi0zwvEfEYe+jbxhSvu97OKsz5vinem7lRokh87uJi6ibN1
         OPCPKhnF10TIuTr5ORRs3Ns69zwxydGmvlAQpNkyPi4Im7qldLjyA+RFUrdFTbHzMg1g
         wSRtcRleBs3VxEIMCDUhMei7R4xipQPRaPdlhHc13Copj4QVG0AjdzZzvGYxb0sQeSAw
         zEhzYQJ/QHyataDAJbKEfKSrgdStQumhT3YNl3lpVYAOYRKEyOyVSxtzyLBPBLOkjr/m
         28lw==
X-Gm-Message-State: AOAM532Q235UuNS7ItIQWt0Y1uHB6UyjvwnIEYP0WNulW44nJdr3CHJi
	Ce6waJ37CkiywuA9/iWELFU=
X-Google-Smtp-Source: ABdhPJyXWZFeQwGSdKqxXDNCM2oPyLum6dS0YUuhypNcNvXdvdGXv5Yw1snnizjmcq2mGkv0iznCkg==
X-Received: by 2002:ab0:205:: with SMTP id 5mr676828uas.117.1613106905719;
        Thu, 11 Feb 2021 21:15:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1c41:: with SMTP id o1ls205705uaj.6.gmail; Thu, 11 Feb
 2021 21:15:05 -0800 (PST)
X-Received: by 2002:a9f:232c:: with SMTP id 41mr700559uae.120.1613106905242;
        Thu, 11 Feb 2021 21:15:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613106905; cv=none;
        d=google.com; s=arc-20160816;
        b=bdWAcaC2RmIDDoF8AqwcaNLwYkOivroe6BUmNXsRSavkdDWVeHz6SYRo1I87zzhT7D
         mf2eLnqZuA+6HFAdPfmYNwmoUH1x9zKlTKhs+iG7MNrk/O+A1CT16yAzQ+CsMwcl1IJZ
         7yms6Avog2cF0539YDUwFIFabUcxgI2yX3+Nj+KQKYrY9f0AqHgeY5RRC8o5fka3O5O+
         lyYDX8MlApRMv7Td9vlpMYmm9JNXwjWVP2ZkYT5JNXVoaiVV3RjKgq7hL5vUuPBxZ45v
         xqmKeTski26UIhEQE+8CxMh+9u0Z9eGdKPhJGDYSNsPpm84hogTLXsBvGbslr7BbxSeP
         uneQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:mime-version:message-id:date:sender:dkim-signature;
        bh=UsZfh0ugYXVBA8yeF7pE4YFwStzOHtAmek3RdORCX+E=;
        b=mN464H9pChvSNgqjuKJeaUgTS+NIPDDtBLZbCqX6R+X/wryV/PqHh8fF6Iat87cg76
         lhB8/qTyTnwziXeFoXNZVCm+wHrn4+iNLCf3WwHoIScKZOPj7wKhiG9gS27VBji/ZC/e
         LkQkw0v0jjVfRSReDi4Eh0kCHZPEC9H+HBcaH50kE+28jeJdJVqITjiHZGfoHsu+Irhu
         RKA3aKFSJ96A65zZymif6SSN6m9wFANRkysVGsVeVqC3IkAN7Dp+P7RKppgm66ielfOs
         n2/IObIa50gbh8Ck5btvGdziXp1HrhAxp2H0FfbdpmDVX85zeidrKQceUbMq4WF7Q2ys
         tj8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SzJL9vBy;
       spf=pass (google.com: domain of 32a4myackezu87zc1z75dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=32A4mYAcKEZU87zC1z75DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id f203si428032vke.0.2021.02.11.21.15.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 21:15:05 -0800 (PST)
Received-SPF: pass (google.com: domain of 32a4myackezu87zc1z75dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id l197so8619256ybf.17
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 21:15:05 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:9923:3694:46ec:d62])
 (user=jiancai job=sendgmr) by 2002:a25:ce51:: with SMTP id
 x78mr1842451ybe.198.1613106904807; Thu, 11 Feb 2021 21:15:04 -0800 (PST)
Date: Thu, 11 Feb 2021 21:14:58 -0800
Message-Id: <20210212051500.943179-1-jiancai@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH] ARM: Implement Clang's SLS mitigation
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Daniel Palmer <daniel@0x0f.com>, 
	"=?UTF-8?q?Andreas=20F=C3=A4rber?=" <afaerber@suse.de>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SzJL9vBy;       spf=pass
 (google.com: domain of 32a4myackezu87zc1z75dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=32A4mYAcKEZU87zC1z75DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

This patch adds a config CONFIG_HARDEN_SLS_ALL that can be used to turn
on -mharden-sls=all, which mitigates the straight-line speculation
vulnerability, or more commonly known as Spectre, Meldown.

Notice -mharden-sls= has other options as below, and this config turns
on the strongest option.

all: enable all mitigations against Straight Line Speculation that are implemented.
none: disable all mitigations against Straight Line Speculation.
retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
blr: enable the mitigation against Straight Line Speculation for BLR instructions.

Link: https://reviews.llvm.org/D93221
Link: https://reviews.llvm.org/D81404
Link: https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
Link: https://crbug.com/1171521

Suggested-by: Manoj Gupta <manojgupta@google.com>
Signed-off-by: Jian Cai <jiancai@google.com>
---
 arch/arm/Makefile          |  4 ++++
 arch/arm64/Makefile        |  5 +++++
 security/Kconfig.hardening | 11 +++++++++++
 3 files changed, 20 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4aaec9599e8a..11d89ef32da9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -48,6 +48,10 @@ CHECKFLAGS	+= -D__ARMEL__
 KBUILD_LDFLAGS	+= -EL
 endif
 
+ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
+KBUILD_CFLAGS  += -mharden-sls=all
+endif
+
 #
 # The Scalar Replacement of Aggregates (SRA) optimization pass in GCC 4.9 and
 # later may result in code being generated that handles signed short and signed
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 90309208bb28..8fd0ccd87eca 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -34,6 +34,11 @@ $(warning LSE atomics not supported by binutils)
   endif
 endif
 
+ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
+KBUILD_CFLAGS  += -mharden-sls=all
+endif
+
+
 cc_has_k_constraint := $(call try-run,echo				\
 	'int main(void) {						\
 		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
index 269967c4fc1b..d83c406c81a3 100644
--- a/security/Kconfig.hardening
+++ b/security/Kconfig.hardening
@@ -121,6 +121,17 @@ choice
 
 endchoice
 
+
+config CC_HAS_HARDEN_SLS_ALL
+	def_bool $(cc-option,-mharden-sls=all)
+
+	config HARDEN_SLS_ALL
+               bool "enable SLS vulnerability hardening"
+               depends on CC_HAS_HARDEN_SLS_ALL
+               help
+                 Enables straight-line speculation vulnerability hardening
+		 at highest level.
+
 config GCC_PLUGIN_STRUCTLEAK_VERBOSE
 	bool "Report forcefully initialized variables"
 	depends on GCC_PLUGIN_STRUCTLEAK
-- 
2.30.0.478.g8a0d178c01-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210212051500.943179-1-jiancai%40google.com.
