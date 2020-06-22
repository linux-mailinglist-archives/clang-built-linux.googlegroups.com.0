Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3FWYT3QKGQEFVJBXYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id E9302204243
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:58:21 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id j16sf13792579qka.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:58:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592859501; cv=pass;
        d=google.com; s=arc-20160816;
        b=oCqfa7pdvTyJXgAWSTYplcqUy8V9t9qxPDcRHYM2QJKbPh/JlF24e0Pmb+6gQCMFBd
         8Vep1c2C5yc4qoFr4cArnUppHIzBcvTxER0kLZ1t5BAkDL6IngaCX5/CJikIq86/YKn4
         j59W62BHf6YGKxWAtc9nmOPGl33yGW3QMb9kut5OySfBfQD45LbtswBNGI7ju3H8Ea2V
         Q4q3XvAhZyfr1wddmXhhhMixVW0ETStabm95gBjYJ4hiohcuY40y6fxQ5RTS30Zr+yir
         4P0HDZcThwnDm5H1KYhCFDwwuoK7TWfQDBfwC7SuL00CcfVrakHmV5tmnxe9J7WnR8YI
         U50g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jBNx2LT0le1wEoxFdmmuqHPmcrnWFYZKGylJB34PNUs=;
        b=1H3wmB7THcYNziO8q0O6rmn3SrCzr4qfQZ/ArQdCnlklzSPl106lgH9PAKxqghPhmv
         ylbZtpz0AGOy0M7VMLschsK5pLmhB5nxlJRYUdSkbK497NyiHcqhrL35aJhku//6UytC
         8KdBKD8ED4m+JTWEBDzRVH8fpr6USSuJSFsLiL6PLD+sZ1Mec7WNgWWtODBVzl3yTOxS
         tt4KTv6/AZ+YpaU0GqAzc853zLkvRvtpa+mJ5GA0RNdwTgyNMb5kHxS5o/pw/UyzwKtL
         MThALOOkOUAReHUF0XO1IzSyMSfoihapmcCFjFimO+cMsHX9oRJGj3sKzaIu8aFE61QY
         BYdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lP9wwldV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jBNx2LT0le1wEoxFdmmuqHPmcrnWFYZKGylJB34PNUs=;
        b=eJGo7YHFFRijaKULzP62NAMYoa4NhxIB76mmkkBHSrZ0OQ1FuM123cry0817tUxYxv
         8jBieOTCmOLRM2HC9oFmmTuN4lKKXQL6SYe2UFfoG9v8UgKgtpDct6EGzGJHGIvEQJgA
         xN64gfGMyHgGPf+M23UU/A4SjsNmr4pNUBzfgsdJcLWYSJe0DXYVhX1YZ2s6mXxH1OS2
         D7c9QIhqfIOW8pI5gHw4TpSN91nCVNFY9IX6qhbFwPKLWeWCV5nGg5RDQ9NQQ0OGuMb5
         gP3D28km9HayMWejGICbgOAhiRk7HqS8kVpe3+Nw7SIKCR5Rz7P+T9Zj/+XvYUjrtZ2m
         s+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jBNx2LT0le1wEoxFdmmuqHPmcrnWFYZKGylJB34PNUs=;
        b=UPNvNJcpSC97lg8eabVyC67B9r4p6Ujk5/nKkq1Pk5z98Oh6wyhqEb4QkJQauCflgE
         f21IpLvLnDJAPenWqp93j7rcg4zT6TQNj6JHndVuIRM1KDWhvhTLItRlFqbS72yBrFqV
         yh23B1diY2nfkkCGJwAkjRB31kPApQJpm5irpmaLzhjFkuUDxaDsonSARExQsBIu+XiI
         ImNVnif5GvHoo814kYi6RjcpA+LLr27cnhXYyH5hMea+LL7bHQjxpiwWdSySjIAzQ+W6
         4ySZqFj7wEuKzW1kSnz6jzX2/mT6h4eWpqmUT/iH6Gqqy3gkOeaEy3k6mUJaVV0jhdOR
         c3LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/RQNZn7Lj9lR08vDo5JKb/69d/coPBGrPnLTKCPKXGuzTXWGg
	RDuJ8gXWjmDAWi7hT7/ygqQ=
X-Google-Smtp-Source: ABdhPJwHRE3FfhM9pgrxEcidhGXKUYw9EwexzGDRhCAN0AI/9QWl42pBgfp55vKh/UNmijtFWKv01g==
X-Received: by 2002:ad4:42a6:: with SMTP id e6mr22849027qvr.170.1592859500902;
        Mon, 22 Jun 2020 13:58:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22da:: with SMTP id g26ls7074987qta.9.gmail; Mon, 22 Jun
 2020 13:58:20 -0700 (PDT)
X-Received: by 2002:ac8:18a5:: with SMTP id s34mr11960599qtj.210.1592859500599;
        Mon, 22 Jun 2020 13:58:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592859500; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZjrkSqKj58Xkkcgy25WgvA/eMBwlaA4rJWNI8+sYVosoZ0K3mlau1n9Y4xM/bP0Zf
         1Gx4vxzmk9GEyOV2mygDTsxMkSOJbAsbzSoylABF4jCqhl48R0Up2TwA15awCJsf7vK7
         cGumy6s8XVmpJvaxPWGmXh1JEeW4JqiHGYJHlsw8XZ8Cf8IwqlOUTAk0ecf9ZEyrxrNI
         Xyq1Ccp9T6SGO7iDgyG3Qnsj0cJ0qjxlpvaKs1g9bJ0q0Gbpf+GnMc6MIlfNYjccpW5m
         BLu3PkVCPiaiy7siQYg7CIgez+UEik89lQyCvYnw5O4pTaB+6Dh0x+9LhRa4kbfuXvJN
         knyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=q1OBEWaxVovTEcB37uBYgE/K0BmOSSCdkkUrY0xJrlc=;
        b=MP+n9mLIdPdpQZXG2V+k8OCNOgAkBMlIs8SItycNr4Z0VsdJ8xGF56H096KDPjedyo
         d0/PM05l3TttF7YRI2buXn8M6lk4lfh1KjAO8TxoEil/0nB3OZHGoPViT/INRNg51HKO
         +c4ODW6sb6hQVM5CYK6z8xDyVugVcsu4emJAJQhIz7EB9avEEjVZfWYbsUX3a67eYTDg
         E6Tldk5QIpT+fuXUpHXoDmrkiieIE8cRTsdp3fhEEFjRE/BsKooIIMvNAjCJFdgGRebY
         /jB9UIqCa2nEOselTtNzv9BVxdQJCt4rPAfaqMIyb5kjSlqY+RzkCa0p1rUGDT1+MBys
         XWEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lP9wwldV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d3si645712qtg.0.2020.06.22.13.58.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:58:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id d8so8099795plo.12
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:58:20 -0700 (PDT)
X-Received: by 2002:a17:90a:e387:: with SMTP id b7mr20930337pjz.176.1592859499822;
        Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i3sm12146531pgj.52.2020.06.22.13.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 13:58:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64/build: Warn on orphan section placement
Date: Mon, 22 Jun 2020 13:58:15 -0700
Message-Id: <20200622205815.2988115-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200622205815.2988115-1-keescook@chromium.org>
References: <20200622205815.2988115-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lP9wwldV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Explicitly include debug sections when they're present. Add .eh_frame*
to discard as it seems that these are still generated even though
-fno-asynchronous-unwind-tables is being specified. Add .plt and
.data.rel.ro to discards as they are not actually used. Add .got.plt
to the image as it does appear to be mapped near .data. Finally enable
orphan section warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile             | 4 ++++
 arch/arm64/kernel/vmlinux.lds.S | 5 ++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index a0d94d063fa8..3e628983445a 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -29,6 +29,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 5427f502c3a6..c9ecb3b2007d 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -94,7 +94,8 @@ SECTIONS
 	/DISCARD/ : {
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
-		*(.eh_frame)
+		*(.plt) *(.data.rel.ro)
+		*(.eh_frame) *(.init.eh_frame)
 	}
 
 	. = KIMAGE_VADDR + TEXT_OFFSET;
@@ -209,6 +210,7 @@ SECTIONS
 	_data = .;
 	_sdata = .;
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
+	.got.plt : ALIGN(8) { *(.got.plt) }
 
 	/*
 	 * Data written with the MMU off but read with the MMU on requires
@@ -244,6 +246,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 
 	HEAD_SYMBOLS
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622205815.2988115-3-keescook%40chromium.org.
