Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAOJSL4QKGQEIY77SOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EA6234DFE
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:50 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id k1sf11292095plk.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236929; cv=pass;
        d=google.com; s=arc-20160816;
        b=BI7fkLdoDXSY2aF/0OFDINC0J1aj7mnpf9yloX5SQusabd4g2km8rFQEWOHLAhlNDt
         hNwMJXGe0C+7S3WSIfQHJ13LO8+H3FAEZGfQe/gSs2pZ3l5KlCqRRwXdo0FdFUDHGPhs
         WDNLCf0mjOHOS/VHg89ZSnIES050zoM/gzF29Q0ZNHn2z+DxUiZSqBy0cpG4rvy23hSl
         oBtaP/bAXVldFN3NSYdHnB0Jxw0/FjP7h4bb81Z26RIIHlabvyI8EWnw5BoJ/5afDpJL
         cNAoQl0p52XUGjgJZr2hahjnZjC3Otpe7z81Odig13upc3L0LIFeJe5qhqUJzpEpVqjz
         0aBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1XNMzxPhfDmkDmdj59RoCG9QkJwU+WHZzIkKE217h58=;
        b=MIMXXG34U67rQGW8T26KWDxE+VgwV3UmMVk4cOHLlFiTLSg75+VlTU11g9R8TtCzF3
         yHyXJ+7pwTaa/w4I6+MXEsY0vin6j2baoZUNGA3iy9WpdIdzz/26koV8EM9dQZl/49Ye
         axF6bMRvEthNAL3IeKmqVRdFADbb+f9QJ4+lP5y/mzmACrPXPbSo6EWKvgwAhBFIZrJ2
         19g1prkADUuJqgnfq8iEWWc5NKtsP3qFVaxLweC6U5DRgKOJvhmVUbZ6FL3A/pt4ukSi
         QLE7zcWI8X4N/H9TwMsGBM4WNAOovP59ehInyYlViOkpEq/a0eye9jCzv3X+vzcgfYQ3
         h2/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="dE/Lv+CU";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1XNMzxPhfDmkDmdj59RoCG9QkJwU+WHZzIkKE217h58=;
        b=jiLDRuQ2QYBP1wSJtE2NPNPTFt8ABktc+eu/VPXrd54QL7tk3wJjaNSbqz+wjpBi3M
         pWSEYz3jYfj9Scsk+CDKoSFE3nitR5ZkP/pFHdna8ZmqLvA1VegrBP13WsPNsDCs1AfL
         ga269ViKstnD5D5L5IzPnWZdKJwGmX3GmLmZvgjDZ+7ujLHNjIGt/ZHuiyn7sFyWCa78
         yMxX+E4K2G/eeAynX0oKornhMN473TzVDkWzH+DlyOkoQkRNHRb6FoJYwthJPOQPDGR1
         w5jQrkTi7WMMNAk4A1OTunRU/flBh7Y8k8L+Ub6IdhCFtCnnrNThKloY69xT00mDiz4y
         mbMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1XNMzxPhfDmkDmdj59RoCG9QkJwU+WHZzIkKE217h58=;
        b=eksNy+Aakx7R52anHq6KXv6hWiV3DUHsGsY3YI+MQeWmxcMVCzIEmr0msyznxxvAuh
         /OQ/SqBqSgdXrWhinjHIauAHqNmalzvKTAVqNj+E85OJT9826J+dSvemN2b/Tfm44T9w
         d0P3Yqruv3zC8HJGgvdWKzqfrqQaf+SUAEMxEIE3j6H9Iqltgb7KCd8DClQeVRmkpRUl
         80UNmxgqBXHipz3POTcGPnRRinrT4wh1T0M6kecAKQGzBh9v5Lv2D/GljtqBjDcZc5yX
         OQQTUC9F0mveLnSY6utZojh3LHj2owv/xyRAzKtOJiOqEOTdLViu5LI3hzc5shJ3N1H/
         pAEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZXsrC0BjCSiixrIZ0K6mPXpXi7Nck59+mU6gb3rkZxuLZsPPo
	DmwLAf3OxdlRkJ6QNcAjUTg=
X-Google-Smtp-Source: ABdhPJx/MTHruZ7D8KseUC9f6PQXdTrzFtcgoMX7bIYmBeiInZZICKqanI96icSDVHJP4Ab/ycta+w==
X-Received: by 2002:a17:90b:2285:: with SMTP id kx5mr6417217pjb.83.1596236929584;
        Fri, 31 Jul 2020 16:08:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls4283755pls.5.gmail; Fri, 31
 Jul 2020 16:08:49 -0700 (PDT)
X-Received: by 2002:a17:902:d34c:: with SMTP id l12mr4325448plk.36.1596236929175;
        Fri, 31 Jul 2020 16:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236929; cv=none;
        d=google.com; s=arc-20160816;
        b=ow2q/jvGjL9VaYK7GrSsZ9aRKF9bKtlCdST8SUNt/6RIpoBUbmhn5Dqm1CTgXUcSCn
         EfcBQaD7lHwBnoVzFI1Nt7ZGIHIj6xcKo0ET6Wfumb868FHa6nqNLGE41cJxyGVtgVIY
         pxrlFNXawfnBxHHMasgG2lz5Wx6XT/vFdOvfygR3itITVqDBdITOaRgTATFiWjdK9Ycl
         OE9Ev/T6V9K4n6WvotFjCSay/cH7G/IcZ68eX1MUmcgmh+SCMHkOCmyRgGlnlKlMZ30p
         Azk+9x00yE91VYPWt+PheH7dKxVGMj/tg6rO0Oh2Uls5UxZyQ4+nrHYBAdwPUvvCt/yd
         vnrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jrAblmr6ozIS72tPylywn6+f+xtS4UhaP8bWtW4yv24=;
        b=q+4sJgIXnalv/Q3kKrmDD78D5FNRUvM9Di3E6cWwEPnHkulqChh1L4MRTP9EabFclQ
         I8gcqgKqnJJf4NPHVye8zWYs9i/mySyTPNAPsLcHrzwfEd3cUzVX4kN2KpFv+DBXhtri
         JyDOo0zhTDZ6Fdimmm+2jPTtNKDpznxl+gD4T7yP1FelsEi421Zcu4SKCYiLTb19HHE8
         ljLHm/tw2lRFKbzueTrjBESiPpsQsKAHW6VBusJXULkEzH6B24u4BLSmyRfYNUzxLCnM
         ORGxkjfL29uBnU+SlcX1BSg5qu6O4rHlbNhgpHzZI0m6bECKgG0Om9oqvDBwsLecfrDR
         Uy9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="dE/Lv+CU";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n68si514850pgn.1.2020.07.31.16.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id w2so16769420pgg.10
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:49 -0700 (PDT)
X-Received: by 2002:a62:6083:: with SMTP id u125mr5816247pfb.286.1596236928921;
        Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k4sm7192916pjg.48.2020.07.31.16.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 32/36] x86/boot/compressed: Reorganize zero-size section asserts
Date: Fri, 31 Jul 2020 16:08:16 -0700
Message-Id: <20200731230820.1742553-33-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="dE/Lv+CU";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

For readability, move the zero-sized sections to the end after DISCARDS
and mark them NOLOAD for good measure.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/vmlinux.lds.S | 42 +++++++++++++++-----------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 3c2ee9a5bf43..42dea70a5091 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -42,18 +42,16 @@ SECTIONS
 		*(.rodata.*)
 		_erodata = . ;
 	}
-	.rel.dyn : {
-		*(.rel.*)
-	}
-	.rela.dyn : {
-		*(.rela.*)
-	}
-	.got : {
-		*(.got)
-	}
 	.got.plt : {
 		*(.got.plt)
 	}
+	ASSERT(SIZEOF(.got.plt) == 0 ||
+#ifdef CONFIG_X86_64
+	       SIZEOF(.got.plt) == 0x18,
+#else
+	       SIZEOF(.got.plt) == 0xc,
+#endif
+	       "Unexpected GOT/PLT entries detected!")
 
 	.data :	{
 		_data = . ;
@@ -85,13 +83,23 @@ SECTIONS
 	ELF_DETAILS
 
 	DISCARDS
-}
 
-ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
-#ifdef CONFIG_X86_64
-ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
-#else
-ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
-#endif
+	/*
+	 * Sections that should stay zero sized, which is safer to
+	 * explicitly check instead of blindly discarding.
+	 */
+	.got (NOLOAD) : {
+		*(.got)
+	}
+	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
 
-ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
+	/* ld.lld does not like .rel* sections being made "NOLOAD". */
+	.rel.dyn : {
+		*(.rel.*)
+	}
+	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
+	.rela.dyn : {
+		*(.rela.*)
+	}
+	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
+}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-33-keescook%40chromium.org.
