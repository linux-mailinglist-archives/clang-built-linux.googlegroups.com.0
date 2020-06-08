Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBW4S7P3AKGQEXY7BBIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E68741F2540
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:27:24 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id ba13sf15278675qvb.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:27:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658844; cv=pass;
        d=google.com; s=arc-20160816;
        b=AG5egYMfjuhWYWxh0gaeZzQoRi0gU+D44nGWUi827Ya5gR/rfmZFp6AANjqI/6UryD
         0PFkolfGkfkaMZO/CrCMSibz70LEGUQGNXUe7MTeeoRgQ01LBVKPXgBQkdxRcF9nM69I
         RZDuSqaiIVbuNx9lSFIwzCY47CyNRxMHjlOnifhoQDlDwKBoE6nEVZtQmyNGLsZQ34Ee
         U2R6GQlhaPWSduCOSxP9yeBTMb64ZPuvzRpmAw3yrGYWZ3rw/XHjN6+UlMpCWl4P0w3k
         FI+PV6Ao8S521AtqBv/vS9rLmahVBKmuqT0OpIhkFA1K8GTR7c64z6FSixrXvpZThL1u
         MZWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=km/NreUYAnUTjpFruBT/T0dbvkq3OXFSTMxW5F/tB8E=;
        b=ZYJCEATJkJhmgHkuzcqTdxptpqj8CpK9Tzan3Ot1VuHMjGPBZxAxFF8dae5VWoNbO6
         0KHLWUI2BA4ueJSLQb8pDA1GYFTUaywVWGQTKgNZ9JNJxWKiDYY7DLCh5U0hNsODpfCT
         5uiTBZ6BcDd30dbB3lmTvwCOLobqH4uUwHhSMomqNUNDt+xv3V1tfH0aGiiIn7j8IMkU
         +5goD6CUvqtENr//4iGR67WGA6+OhI8IYp3JPeXVbDIM2X0tWx+6pOsZxJXKq4HjcmTz
         4bmDFhXX/w8vZ0Uqe+cR1JzcDiJJMOS3cyDOaz6GWSGHjzvrmnrAnw8yGYV28/VSx6H6
         oMbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hkyTOvJJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=km/NreUYAnUTjpFruBT/T0dbvkq3OXFSTMxW5F/tB8E=;
        b=iJAql3YppMPdfc8UthtlmP+2zrHuvi0gnC2QY7YmPMsKrrJyHPxY7Tz8vFzewNFMRy
         XG+3lVkx37gIbFFOG8g8Zbl5aQSRxKZ1Dh4WKS4lLn6uX0KjDgme2kps9XeteN73dUpq
         4nbYrv0ZNYV6B4/lJG9R0eaEnMa3ZyvnMMpVWFtZgEpyHXwtLzLezTjZQjVO1paeeYjL
         5cMsQTXBLMblCXwQG4Mt+Lb9XAYscD8TjFsU1IHvyRtCxWKC85c+NbJ3ZAaVKnmC9Lf+
         CvG+1Dq4XAxHc3XRSlkIBU5GnRJ74wk0xbI7rH5l42aMEPTtJ1PpsFkOKseLucEgCMiU
         xmJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=km/NreUYAnUTjpFruBT/T0dbvkq3OXFSTMxW5F/tB8E=;
        b=r3cpKC5frXTJaX++Ad8C1WGx6RZwwS7nDEEAx4lC97Vq6wnlAsd83eJbL5Kvx/ik2R
         bcL9cYj4gZf0s+GuDOYVfZCnBNOgXqijMngq7bgX3jUyafMMYVapchzkILb5JlgChIE3
         rXggdyXueFYFhMkIqAtqzOYxBBOrub4VC+21iY4ZYgeMj16adQa4nxbw2fy8HOjZcIMF
         XyIqu1D9+/NBs2+6zMfDr7K8Pfpq8LqqWIKBPDGpkTCAXvhnToPAZLBzB5U6Lt/YhN6g
         P6CO86XGSpqDvP2TbEM9pDGqpH6AoJGKUMqwH7/BmglqbHyUj+Ta+p1LbDVHlqfY+0AU
         3U5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312PZXtetY5l5mteenih7g3r3o/6xBg2iu4kN/jkD6Lge0a98VT
	3vfZC7BJh89utMpoasKYRdQ=
X-Google-Smtp-Source: ABdhPJyjGxMgGzBQGZA428pWlcLwgOJ4HF0IKcIy8g9ihtM5U5qI81UD2x9lNZmu9zYqxrdJaA+Rxg==
X-Received: by 2002:a0c:b791:: with SMTP id l17mr1182228qve.44.1591658844011;
        Mon, 08 Jun 2020 16:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:78d:: with SMTP id 135ls8577559qkh.8.gmail; Mon, 08 Jun
 2020 16:27:23 -0700 (PDT)
X-Received: by 2002:a05:620a:8cd:: with SMTP id z13mr25259462qkz.198.1591658843663;
        Mon, 08 Jun 2020 16:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658843; cv=none;
        d=google.com; s=arc-20160816;
        b=sTPxnQg6YmlFUldu3q/fg0j/zBsCcPazSkI2ujdNM73JKYdNvL7BRqaUapHxJzM2wh
         fJixGwyNVMKvl3QoPGs/zWwlREzVcqmxVxjACELCdTuHsor+AsXZDoKdDnZ9HMm20vej
         CJOBpJiFy6VQoVlabFoyDlxYMltmSTGLmKMT9NyFOJhNwuwfXQvVPhnNrrWsqt+SuvXH
         ITkuFiulHIJk23idYyDp6aqTJcBZZnEQYx/bjCv2ajJbBmr6od5DV/waGvAAhcR0TWO5
         lrHXCi96/HSM+oEG4Mw6BxxvQGm/0FGcE0/81O9om5pS9rVf1iCRTj6jnd8L1k2CrVke
         hANA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xTMM7aX4KCOcZqJWcM2QQRehWQy8MqW7vnkhzmEQ4JE=;
        b=0U4g5gb6euLFhSXTzidajkaoq/5w0APCnPRWdPlU3hvjvyj/cgczvBMoRI1IrQkeGT
         mq2gV3CHmTWAMQ3ntwSFpmN8UR394fUJs767e6hxh2Kfk1+shHr9sNx/KTQ5OfID+UIW
         telwxeBXDHTlR0FA1GGrqREvQ4U0haGasFTF+mWdyQFPYc+2aXa5j2hVIMbEQAwTMj1E
         +i/6AuRjSxJkPlUvZI9sOUUpCoQoDuOHWS0KNl0r6JiyFSuHgdHmoeFj2TdRhYdRnYkA
         CvSMCX1Wu2g4ErJPRLHAC2nq7K3j2wmW+b+TpKnBd73KDpswMnX3HHfLRDS4Y/sNas+d
         PNKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hkyTOvJJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v16si476081qtb.3.2020.06.08.16.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8963B20853;
	Mon,  8 Jun 2020 23:27:21 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 31/50] MIPS: Truncate link address into 32bit for 32bit kernel
Date: Mon,  8 Jun 2020 19:26:21 -0400
Message-Id: <20200608232640.3370262-31-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232640.3370262-1-sashal@kernel.org>
References: <20200608232640.3370262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hkyTOvJJ;       spf=pass
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
index 1a6bac7b076f..25f3bfef9b39 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -256,12 +256,23 @@ ifdef CONFIG_64BIT
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
 		  PLATFORM="$(platform-y)"
 ifdef CONFIG_32BIT
diff --git a/arch/mips/boot/compressed/Makefile b/arch/mips/boot/compressed/Makefile
index 2f77e250b91d..0fa91c981658 100644
--- a/arch/mips/boot/compressed/Makefile
+++ b/arch/mips/boot/compressed/Makefile
@@ -87,7 +87,7 @@ ifneq ($(zload-y),)
 VMLINUZ_LOAD_ADDRESS := $(zload-y)
 else
 VMLINUZ_LOAD_ADDRESS = $(shell $(obj)/calc_vmlinuz_load_addr \
-		$(obj)/vmlinux.bin $(VMLINUX_LOAD_ADDRESS))
+		$(obj)/vmlinux.bin $(LINKER_LOAD_ADDRESS))
 endif
 
 vmlinuzobjs-y += $(obj)/piggy.o
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 2d965d91fee4..612b2b301280 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -49,7 +49,7 @@ SECTIONS
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232640.3370262-31-sashal%40kernel.org.
