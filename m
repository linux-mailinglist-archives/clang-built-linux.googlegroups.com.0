Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXV24HZAKGQEBQHZ76I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 73369172D08
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:55 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id v14sf716897pfm.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849374; cv=pass;
        d=google.com; s=arc-20160816;
        b=pNL5n5gjajZX5R6/UrH83jy3XfGmtTbfT+LPCx4qeixQn241qLwEiGpo1bFRzdeejb
         lnA/iTnMGwgoibJOeLG8dGivQUVgfZT70wKdPzGa2rHcx9uYPGJ8fTZyD0Yrfgyi0z1B
         2rlL+0CnwrxoJPnGkP5zV0e4451aHUFLSKZ2Xwpdn8D36eWfyBkKXD0mQxZLdsqEynOU
         0XfOdDVhQfx4XdImyzGuHTd1lgiWVC8/GldqbrkD2bHi1vr3dKbMC63qh+gEF4gKscbC
         Tolr7iQPjt6xnouLVHns00179cNM4V8xle5mALWeSVdXMD7zOT6cnJSYdsDQq3zbxP/p
         rGjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=84ICDw+YtwznwTbN0zYkX3WDUbVNeQM8gOgPA3dPdMU=;
        b=kSfLjUqaj07vPn5dpOKzyJhaqwQidp2UAy5T/hsJzAHk6rT6RK+wpud7740v608b1+
         pCOm8YvArlp+MN4B+fHeIacxONjdHHTOP5gz2MojbmrGfPaslOZUCxswTiYxI8PKQzXd
         cUujbxxdEjIogym4711ZK+9w+LFqlLweq894bZQn74/+dJ/hcLixdK6jG5iSh5WCXbqX
         XBvmOiRXul4eHQdZYvHHp8ofxgBYrmCyvcQxm7wUpKepIs+p6DP4KvkoK73ML1fHojhK
         8xSKLNxp4jhWnwMRIOzulYPcvqk2vSU9luX578ljenxm9j8E74RrR48llUfaFj3jhI29
         lkMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=krC6xmNg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=84ICDw+YtwznwTbN0zYkX3WDUbVNeQM8gOgPA3dPdMU=;
        b=clqzaxe2GrNH8rbDcvkIQTH8AV0+ZN61Oi8OQxWosuvQGGyYWEYjBFa3aHYZ82BV8d
         13xoTyYe0cZAsEBNdaR3uAxQO2/NVBBVhb7aG9dIRIVpwoQjJENSzl6yebST+y3qtp+S
         G9xZ9BvDGoV2lwiiyEcBnCNQynZ1DyOmYEwGawWGsu6Igv/roTF4LdARK2/6cfFG9P1T
         WAeZK70xLFKXRbFQcq6+Lu2JKK8dY0+hnLjsj17/Z1jSwDrNi09wz6ThStYXqgBXleoQ
         9pMCV6280uOOki8eWBcNSkF96sTnrsryYTANV4pFRWEdRFOootqQmzsVl9oOJWXjpXM2
         t4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=84ICDw+YtwznwTbN0zYkX3WDUbVNeQM8gOgPA3dPdMU=;
        b=sPQjZMLzQbhZQlynZRQNZZoNNDhuxFzOHQ8SC/is7gXsleV9pmw+9jptN0AuniA+OD
         GM2ozCMe2b/dH9kf6OXGhb086jlg0J8R6S1D8WzXi6jkzHoJqUGigefuhYw9DzmFQQW/
         1g9UL3swDGAwfK6MrZ2OLYYMlvh2sjxu73zPdFl5Cl8f9tnHPbZepOHruDOAqpisnfkH
         topNEcKFIPDB9ZTBTQUL6yoforQQfVITt5fy4v9Pgo5XahEph4Ly7dtvgZTpZALIejJ+
         PW9mcyYo4P/0a+rLCNbgRE+uaPaUTbYZ9kPY8Hl4SDzG7Hse3AOT2VFalg1m8Ru9hYli
         oX3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVV1ydVJNnxZkBFsdY6jObKZlGtpQpn/rhftyHYfXzUlyOnR7J
	iuXylhNyHf4SLV3u2ESGLXE=
X-Google-Smtp-Source: APXvYqywYoWU1OHug5qgM2bjQsfqQSKwwZ/nR3nGdQbTgV6m4y4863oe0OqInZAAYxSmd5PX/5wuLA==
X-Received: by 2002:aa7:9789:: with SMTP id o9mr11677pfp.138.1582849374146;
        Thu, 27 Feb 2020 16:22:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls351143pfn.2.gmail; Thu, 27 Feb
 2020 16:22:53 -0800 (PST)
X-Received: by 2002:a62:53c3:: with SMTP id h186mr1679641pfb.118.1582849373723;
        Thu, 27 Feb 2020 16:22:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849373; cv=none;
        d=google.com; s=arc-20160816;
        b=aCxN/vT99I/jy0kKqzTAktgkDGpwxV60duB38ZmI9As//z3sxCtdIpCyU7ZoINEMME
         1LWvM9xmWVv6B3QXLFBJV8P1kbYVmfCCsIzg+LmVl6DF31y2wzSEkFVHdZq0L1xFrKs2
         D+pc20V3V4/ckk5BdhY7Nu+h8n5NOV0kJnNe7QmDUF3++vN5q+PLgodoTy40DoFlx1B8
         1nmB/kXXtDbTOF8PiT1RVUZG+Cxfmy73oswr6W2OB7Hde3+qcCDgFdvYyqIpczRCFJru
         7HZ+XmYYlXqZx44cYb+I3pG878SuUD7vsEnLp78/rnlRGjmZM8T7BfwI8qSv1UFM0ofY
         XZAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zVpHeuxipIPK/qd0iCdiGqFiQMqEhmX8CGXx2I34f0o=;
        b=UcOoN5JC4Oxw2qQnOS3md2mUpHqMhla2IL1ofFfOxFxnyNqCYF3DqKToziNpGtGQ7f
         DwxSHawuVtRvrERsi9FlmVTwN4/+ogQUleN3nXffh9O0kWuJBcaUDCv68JfmmxjOWFWH
         p8RXLqXJnkURheCmXWaqGNk9wWKSdWwO2lzeVY0/9jTtgv47fZ6tDxgLvb/YqAwLLOQH
         y2RL3cH4zYhrC+VDfOvlkeNvQA96KB6J/v1ZDba7wMYGSHMz3lTKQ8C9QV6mRsLYJ1vc
         YCFGDasjHwKH4c77S9EFZJN3vWXLYQiGKgvYlxp0xG4vmoe9LmJgNIyH3VzEb8l+BoNd
         UvVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=krC6xmNg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id y3si53594plr.1.2020.02.27.16.22.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:53 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id m7so3736691pjs.0
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:53 -0800 (PST)
X-Received: by 2002:a17:902:a588:: with SMTP id az8mr1413232plb.123.1582849373376;
        Thu, 27 Feb 2020 16:22:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e28sm8072097pgn.21.2020.02.27.16.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/9] arm64/build: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:42 -0800
Message-Id: <20200228002244.15240-8-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=krC6xmNg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
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
index dca1a97751ab..c682a65b3ab8 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -30,6 +30,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
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
index c61d9ab3211c..6141d5b72f8f 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -98,7 +98,8 @@ SECTIONS
 	/DISCARD/ : {
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
-		*(.eh_frame)
+		*(.plt) *(.data.rel.ro)
+		*(.eh_frame) *(.init.eh_frame)
 	}
 
 	. = KIMAGE_VADDR + TEXT_OFFSET;
@@ -212,6 +213,7 @@ SECTIONS
 	_data = .;
 	_sdata = .;
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
+	.got.plt : ALIGN(8) { *(.got.plt) }
 
 	/*
 	 * Data written with the MMU off but read with the MMU on requires
@@ -246,6 +248,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 
 	HEAD_SYMBOLS
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-8-keescook%40chromium.org.
