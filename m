Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCUS7P3AKGQESLFMOAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id E65941F252E
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:26:03 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id a16sf14249572pgw.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:26:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658762; cv=pass;
        d=google.com; s=arc-20160816;
        b=GtUvQTqimwGxT7Uq8ymTt5cdFb81zmMHMYj7qrL6wAYhj9ArgpgqOs7DgthMhzhic+
         rgHv9Ad81CtqaDCdrPz79lV6NsQnV1GR69ITa0g7+uTVskzAdpLITIfW8D7xnSGSt+RQ
         bJ0xrPsZc2s/TjaX5Jbd5qGxYbDjbfxVZZIlNoNcv+gRBRl3ZhhVP9nL9QqfhVzVILJE
         bkGAm/DgOdn0e6lGFnliJr5DYYrkh2SFCY54EoSpEiw2JcARdpojmz9PW0pr5Vq0QxpI
         ENjO3nVqS2j2Uthg+QV7NWWuQE9YzxYbkSLgcubLSBIpuHVlPTYN653z+NC548rEJ4ps
         ZW/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KpW7WaKhZkaTf6SAs5nxbZOGSo9AC4aa7CbFvt+ipOU=;
        b=q2vmyO5tDasClAlI/6ej2xfNvRi57nENt0yMlakWEcUSqDpPOe6os84b+JVOnCqf0U
         yFYVGw8wIDftZQ2k9VYVx/QSD0V8E5evji4qBFTwAq9Z2BPp7KZi1bbIQcF6Ezr4s1xn
         WdVGSqygaZCszfyOJ25IahLo+FaD72Mjm/fmQXzohWkgMn6cvs/jVInSNm+kyjT+JJXC
         0VtpO+dNMzjKWxFyhFmfskfsKhQeRhIzJd7fLnn5zct/tEP6lfs54DTfofeF+OFTPEvQ
         6tjqAuTA81ksxRLgrLsXSb76GPXEIGdmR+fT72jQ5/skWAoxzhZS6CgXfRm4G1rayL72
         r0HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DDvCcc24;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KpW7WaKhZkaTf6SAs5nxbZOGSo9AC4aa7CbFvt+ipOU=;
        b=BDYuBM/zhTYRq87pRx3HPh41t2QhR1Xbb7Z2XwtNN0vHyXRiboONPQl9GP4D1ti5rA
         bsoRNfB8sscVmp32iLwFdASPALsk1stz9pG14rfd4yWLkvkKW8ibe7lg90cZxTSiggZz
         E+a+xaOv7evUfmA8NT9yNB4zD2Bm0c+l/lrBktLwnRQ7PTbNkQkr18vt1+yX3CtjbAWD
         vowsOG7O4IeYNwTLffOIGTjZ4mh5iKq28pIt+ClIc+gdfmO7G8nb+0J1Le+Vky+bbWMI
         bt0vxmijpmUILka3sRzNtESkds3EaPnhncWH+XdO48T20DHQMjw044Q3VxZ0yfsryOvp
         VRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KpW7WaKhZkaTf6SAs5nxbZOGSo9AC4aa7CbFvt+ipOU=;
        b=I7gZs8++NhwBPWq007Sbbdf6vvALJNJVVztyNnkp1m+hycpd4EN60aZtTho0zaLYh/
         H143rA5V2sO/Cq6jbr3Z+Eqa8uPCUOzNNyBB1Jk1dr8iOqITIrdavzQFuNfcO7x/JIqr
         wntso9ImnoE4ngVRWCMx7BXXKYpJPKc02lJHvghkMybs8ArSLu9Yf27OC7PausIS9+3j
         rcdzTtadjhLwbDsAdDcse998mK2+OF5MoRHQs+LRMUDM6GFpTQq39y16pk84S/VGkTIa
         myVtAF2CxYasz7aedf6GBmnj0uasH5XSIUDIS5cFDQ3Db0LcNSz+/ZJPratW3i0hOkey
         xArg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zFhyMh/M5iIrvG6f59RjShMRJtjzk1U8tpt6LzYqByBtApFhY
	ILj7efApbr2fx37sn39LpuY=
X-Google-Smtp-Source: ABdhPJxxzPGDkIvzXV1QDeE47DwkGvSRZMOqf2uNm6EV9itg/VR81ZCQO4U2rbQcA5hvGWpNusauIg==
X-Received: by 2002:a63:3c53:: with SMTP id i19mr21726447pgn.147.1591658762608;
        Mon, 08 Jun 2020 16:26:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b02:: with SMTP id o2ls6632257plk.7.gmail; Mon, 08
 Jun 2020 16:26:02 -0700 (PDT)
X-Received: by 2002:a17:90a:1546:: with SMTP id y6mr1746489pja.92.1591658762241;
        Mon, 08 Jun 2020 16:26:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658762; cv=none;
        d=google.com; s=arc-20160816;
        b=wY1P48grtPPh6W4/4MusUEZiiQYYUTv4Q3mNrMrdnUU60SV3mTtUKxFbYuwFtrXsSq
         hBEq7JlXYnD967aSBRNN95Qg7F8UN+zPYr9Ix50H/vWeZelTD4fmSM2MaBZmQVntAacA
         ij0XucpJVZbrBPxMyK6p0EaIx40hNPsmpfD2JCuHCZsAkVkdFrjczfhHdS3YJv9hhya5
         Ei5OCDN44HCbwC/hNo+iuLfKDa0+RNoWFI1v9EKlalNP52lWnKXqMYHxpSEfiNWs8NuS
         3Ll5cRh+DWpCLAsxPGPefO+aEZMeqvrEv4tUkRcSaSgkKBSOILXSzk1yioWV2/SmrX48
         EcFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jUu9W7+LjpN35Nam+nMJC9T3rzC1U/UIx4XGhEjEY3w=;
        b=WdQOu/+pul5oc6uLGohdMTICUL8QWYhY+rWzrUXZ0mnigIQMGkOogH7c/OwhM873k/
         wJE5JNP1Cq7G5LR/85aiyBMRvn5kc3tRCHVwkQfk6+7iUeKfDsfkneoNU54Yx7Tzi/nH
         QKcqhkJSsmzUN7y3kS9QrERDx/uBe7EoUXmVBu45I5EJLDy6nPaNkS7iN+uu4BQ4IpTk
         exmyMWrlqNj0dMJccnQaOXOKoCsAUGYYxMJ71XaapBx5bcbDJegDO2eE5RVdkqNUcIDM
         f08IBaFPwOKv3yohujQpb+wS4BpW6PnVORYV0dbJXsHLoFIxG9Kz0ICDMsoCtcTUjzvj
         XtRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DDvCcc24;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si425829pgd.2.2020.06.08.16.26.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:26:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C833820812;
	Mon,  8 Jun 2020 23:26:00 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 45/72] MIPS: Truncate link address into 32bit for 32bit kernel
Date: Mon,  8 Jun 2020 19:24:33 -0400
Message-Id: <20200608232500.3369581-45-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232500.3369581-1-sashal@kernel.org>
References: <20200608232500.3369581-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DDvCcc24;       spf=pass
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
index 5977884b008e..a4a06d173858 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -279,12 +279,23 @@ ifdef CONFIG_64BIT
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
index baa34e4deb78..516e593a8ee9 100644
--- a/arch/mips/boot/compressed/Makefile
+++ b/arch/mips/boot/compressed/Makefile
@@ -87,7 +87,7 @@ ifneq ($(zload-y),)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232500.3369581-45-sashal%40kernel.org.
