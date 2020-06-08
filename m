Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYMP7P3AKGQE3XWP3QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6469C1F244D
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:21:06 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id d16sf8859477ilc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:21:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658465; cv=pass;
        d=google.com; s=arc-20160816;
        b=V69LMH9jwZnTIDM3N5kE44yHnhfoFJjkSVlL2DVMlXzh5LDBkWreMAXLia1TFX+nEE
         o+da3cAaCv/ca0nH8uVO8R3Ho9Z3bi3GZ8XQt2YW72mfO3U0lqDYuwd1gSK3maeZc/Xx
         xHiBWZ9aZPeaQru4PghAi8M1IZpgMJJmossvq2yRXvi9+Qf+r/JmXZzrSwGVYhqGkiht
         4nhUhNsjqitvJXvUAGqA/v6mNreI02JXnkUxNEhSsLPEguIYEMAxsQEwiupq8Y/epOFv
         wpKRfHS3DuohcyKkIAoefava/Ajf+WBUMULlJiRUJFEL+tJKQHiRqEbl4J8Y2uI6/rEe
         YuTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BSnTJ+z5ar5blmAHpnV/n+TbwP7ifP/X9E+g9bO1eXk=;
        b=FscdRU+KV5rgQ6e691uWlltcy3y39u9YAaf9r8VeSxTwEp+lVMgsC/gsXN9Cp0aBTr
         /z+KFvAxYVDxJsLbZmj0bX63OrqllX4SC+W/0RXIxQSE0UNRMVcjUdeDZqZBXNVW4zkl
         4BhEIxBaUOPeyJus0yUnsdmJOAupKNzM9xVE+YNJqmtFibPfPexHkOyH6RCR+BQrX3P8
         057CtZ4McbnRIdRHNlCKjLq2ILPO0jgKckKtq/MCbHUnM8BKs2tBNab/GbF62QegiRyt
         EBoEcU8n8YCWw5geiOmbvizU4oTgKt8+mMUUJ9oaGZv7WuGn5qnTQxCzx/juD0Lw4Lsb
         6sqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bp6fXYmP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BSnTJ+z5ar5blmAHpnV/n+TbwP7ifP/X9E+g9bO1eXk=;
        b=pp2JojREVjOYdsi7vbVBfTuW1YF++T7/64bYWDODNVGdrA9MQMZL0B8TuIkEQYvXdy
         NH1UQhfYthk0jRNr1Y7rze4c1+IO7qLwSxZx0ZLM9JZHahUMypqsPDjkhNXD1gPhpZBk
         n0OZbn0EXrXnV8sztBX6d6bqNQ5CaAvGdahE8Cucp8liviXrEOsg/1+uxrIODyBd2nNo
         tx8aVAHpziS6BBz4cMZCaZ2NAmXZgQqJRdNeQXxX1QG1FYrVEQclxicslnt2xvAQQgcM
         WIW9YoY6xxF0d92QdOwy4B5IbKtJ6r9hL4PxUPhqDq31LyjfpuRIozj9w/MUiab79BV3
         2lew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BSnTJ+z5ar5blmAHpnV/n+TbwP7ifP/X9E+g9bO1eXk=;
        b=GoYIgT6hbI46xvnJHKgXV2lniJUKrpaX6761Kd/6CNy3XbdR/r57sNHUrOpOOZzxm6
         4h26zyuXFrRegsYWo3ztLetmRM9U0QGcbovJq2lj0pc7tNu7SxiwocckolTX/EBqBEVd
         dbomvUUBEe8i9JDAMl7NwL8etm4Q18tdxF7gMSd6m9CUFlh4uuSnA/9dkP7l5eogEeQy
         FJIAG5u4g/P7A/7uwWbqyv+ck+1AafBRXNFANa9WvjbVvouKIknVODniA1VYNEVOcSs4
         jjcw5n4AXld7xMNM25k0sRks0X8JiL7kvJo5lE754WQVH903TyD9IODtxm00Af7iI8hN
         lMvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53002aakKakiqnUdpPL2rEGJkWVw4Y8OsCODXzuPWczs+8IcDtdX
	vof96kpA9RTP9jm4uvNXjIM=
X-Google-Smtp-Source: ABdhPJzesoV20sCwuOt3IvBu2mS6jnl48JTEFCR2nBrw3TItHUnLGdqPH+zOHY26cypRi/kxaOJUCQ==
X-Received: by 2002:a02:cccd:: with SMTP id k13mr23603127jaq.135.1591658465277;
        Mon, 08 Jun 2020 16:21:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1350:: with SMTP id u16ls2336216jad.8.gmail; Mon,
 08 Jun 2020 16:21:05 -0700 (PDT)
X-Received: by 2002:a02:a91a:: with SMTP id n26mr24523456jam.104.1591658464995;
        Mon, 08 Jun 2020 16:21:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658464; cv=none;
        d=google.com; s=arc-20160816;
        b=f8TOYVGRUUWkuPv9N4gmlV4bAAIv9BNRCSBd/goB3zFDyjflzeKVPioO3IyMn4Ak2m
         m4okBIywOfT5sFZzJRg6ZoeTKTFZSO9Z4gOIIpD2x0HrMAov7IG8G/CEihD5qVF6x+Tv
         Fmp7iFisQ/adWcu8o/Sy/lTCANMjp6qZMHM5SXJBoqD6MwN5gM3PSPVpMuZcdlpCnGzc
         roPQNFD7CuMCUnR8aos4cFHT/F+SyxIBy0hSkFPFi3n/ZLcyLEN9rlmtECunJi+FARL+
         93g13ezZ4y+vLnydDeiTLJ1mXISUTDqU71t79eFbxd7ovrCTfkEESbPIJVQ8Gmp6lOKw
         Nvgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=y++rkHmhumhOAwKDnbxwRK+ARIO9Q225ka0KAy66GjA=;
        b=aBU7Rma/ImgBF/uDyEzA3+38lZS4MXOaFQtxR04Q8fUcMB1tYh4FtvrYrQQKgp8inI
         vUoDtBZGuiQGLiuYetYVpnfbF9G6YddbfW5hdr8u/3q7PwOwpjb9tCJ1aizXy3cTLf/V
         A5YV9LnK5dGszVawF7hDLi2EqmLET+vLPWQn70pdsz2NFW5yocZyUgRKrFLNfAyoWRch
         bzpxcJjf9FE1x6Kf5yAPKZXmPJHuLQme/vRvesLGzZhC+fIk917ar84b+inANBtEiHES
         V50v9/2ANPmwykIeDrLi3uNVU+1OEE1A/g15rG7rcJyz7mFwfhuXoE4SNPen+3g59f0Y
         ld/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bp6fXYmP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y22si812549ioc.0.2020.06.08.16.21.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 330B220870;
	Mon,  8 Jun 2020 23:21:03 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 103/175] MIPS: Truncate link address into 32bit for 32bit kernel
Date: Mon,  8 Jun 2020 19:17:36 -0400
Message-Id: <20200608231848.3366970-103-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bp6fXYmP;       spf=pass
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
index cdc09b71febe..5403a91ce098 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -285,12 +285,23 @@ ifdef CONFIG_64BIT
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
index 33ee0d18fb0a..eb9d7af93836 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608231848.3366970-103-sashal%40kernel.org.
