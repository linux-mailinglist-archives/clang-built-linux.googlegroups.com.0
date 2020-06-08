Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBP4K7P3AKGQEQRIGAEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD0F1F2289
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:09:52 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id x68sf15713620qkd.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:09:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591657791; cv=pass;
        d=google.com; s=arc-20160816;
        b=iAL+7TN014jBPZ0dPI8ubbNZpv3WSuh2VvVy2ZsPtA20fM8qAh2/AoZqFOqmI/u57Z
         taS7hFEgF0eXnse3HfTaL+Ky8v/R1BQi2WjesSaDNqUNA0lhXzpfhJV2IF32IFqGhL9Y
         hwKwEUm7yVRH2wr5Tt15ZJaLZPs6gZvD0LZg0uR0PJV6s5H0RKFhSDb8NnmOtygYFUv+
         1LF6kp9oz4mwXjtWWJDFarcNRD62fUQ00FqVVDCnUZbfdXiNA2jI52cK8xHWlMlkhxom
         XVs95skY8FIPkR0+T2oh+l9pQ/bWVBEUGcMt/rHUtNb74ik9SllDjr7ULyWMPz3fnGpr
         Jutg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SBTSYr4tROnP7k3R7Ch0hZ4G5NFVZRzLiTBpG8lrFTU=;
        b=SoX8BsXufZ58Lii8uMFiIjPgMb3s4QRBDJdhshsoBuT7eZj+lRTiD/gnve7dsNeQim
         E3UgHEKUyfs5pgKZdI3oapZgdETgfHkusnCEifyTl0JZdmnu74nrDwm53xILhaI/BOfA
         1+DSYNklUfjBS6jqTP0EXLWL2/GO3Iw8TeuN1zCDQNXWgtkmXpVt3dRv7ftDIFJco7qO
         qhguRrZMaTAHZgK6fm/M6qPsCm6kYE1Z9/aNKYqvNkyw8ePhPyp/w4FrMvIVt2iAjEUr
         MJPRQC/QNpvduCxT+0wkazcViDeX4QNMs9jMcpQsOYreekzwhsm+vp/xpRRwShxpuKHW
         YySA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FTQkXcE6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SBTSYr4tROnP7k3R7Ch0hZ4G5NFVZRzLiTBpG8lrFTU=;
        b=PKr1tHJLcStxl9+gLhgsI7KNyVGekvUJGrIh8ANLgGmZAc65xN7Pop7xiruDpo5tat
         OY+94+KYz25EJBHIouYyX+qvAWJMT7xR1Y7Q6QtN6DxUI+799rmsKjZ6ZZcMLSL6Crp0
         NNagnALNZO3nc1T2FPhpNiu06Syo1xqePyb/Q5fwWICmmfr8/FlSMLY4bNMioXOkKJjF
         S+rstnmx932eGqaTmK7jECUvfiTgmmabjm1mWf26QpuJYhCT8+1bMqiy9lkzHF48rS2q
         W2U5/+LMb0XGFxyz913gOA9hQk0h1UGidmgzv992w3HMtx5OGptyRPBgzkbbLm9owHms
         PI8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SBTSYr4tROnP7k3R7Ch0hZ4G5NFVZRzLiTBpG8lrFTU=;
        b=j2lFS1W/RaWeAHnI1oN51iQy5tLy9c7H7q8Qy8/+C3WVdyuzmM3Y/7CFZaLOQ17e9Q
         Z5j8rl/8CkhD5DhnZKGGLk+NmRWUEsyZ6B6W9tT1qD81sjUA0IzVJWnKASU7WDLkMEGf
         UR7wDmnrXSyZDebMz/1G9gY80kyWk/bIMCUQ3d/HANz2IPv0/2k/b6//Lcwr/P1YGFUh
         Ba49aY9reQSeuVGcWf1ZYDacv1G/UiBj4A8dGhw6P/uTBkAzmqceltB1tBr71BfVmP7T
         re+fD4UlGp1QSZuXzTbRmLN3yADk17WKUQo8gRWL+8QzFGSqQKfzGKJ0MskzjCnWLRux
         sIoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zvV8WCu/WRrQkRbihccpbgVX3THTdRvAsvoqQUYazzGHDxjsw
	Z8PLRZxvo8TTaYsff37z+7I=
X-Google-Smtp-Source: ABdhPJxQs2s205LG0YeNxwdiBkE9f+fgqWKiuzWeIz2dEIhKD8hKp5aXvwTJzcn6YwYnWvQAFsLexQ==
X-Received: by 2002:a05:620a:131b:: with SMTP id o27mr24573251qkj.239.1591657791418;
        Mon, 08 Jun 2020 16:09:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1af4:: with SMTP id h49ls2752864qtk.7.gmail; Mon, 08 Jun
 2020 16:09:51 -0700 (PDT)
X-Received: by 2002:ac8:176f:: with SMTP id u44mr27115476qtk.0.1591657791096;
        Mon, 08 Jun 2020 16:09:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591657791; cv=none;
        d=google.com; s=arc-20160816;
        b=XCQL/Ice1fGJBPesox4DKcYBZEgF2Z2nn3H2yGeQi6Eht34+Bk48QnqOewjPvKVOZb
         x7O6ijCMjdyI1J2FDqX7YedCgfKQz3+VFDUhXxXGulEeCkFoq8INGsHZ8lpcYH7QLAX5
         pqNdp/L+joS0Q9EBMsjkEGh/PIxCqV7N97+BKcOtmxCTVZtGNehiKFuopuHvaAz30ySv
         weCmqxco0EJGZVHruNCV32CO0AcC7RNAoqu9GGtSpZRG2rsH39iZvWjmgVroQ68O34V/
         cdxsuDiQXtRslxGu134ovKugHMpJfSA9W/vd2w8lF0l7NxK3ypds8zCFdU8XgiA+2GDm
         iIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pEMJJ7CAbuFCpVwQvUjAK/sVMsxgMKgm+cTVsqPXL0k=;
        b=QhicClVda+PsrPKNOWJ/3L6o1Sz0AKo9Q3V0KggLizRCiDRi+vFUU+XG3yYg9h9zoY
         kk/LLIX+9AFNZgYUVLN2G9xWqWqQ9lffBZUqAKK8ty3qbkWyLZtkNQ4aUecL5uzNcyWU
         40rlfpOV/5dZk7Dngs6D4txomf0DMiEY95wygZVgh2MB14TBR/oS0EaGoB+L1s9117X7
         f0FH2buEgG2bOKgbJMC65MrBL4amLDYWjik/kmqRfOWNthWYWDrQw2tM3UpCJlQ5q7D9
         20U8mlipvC1pLURZJB1xbEoPsyfxsAVt1zkByczypx1fr5ZCG2Kw5PELMlAvI6JNDJCg
         lVMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FTQkXcE6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w123si545336qka.1.2020.06.08.16.09.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:09:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 16B4520897;
	Mon,  8 Jun 2020 23:09:49 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.7 170/274] MIPS: Truncate link address into 32bit for 32bit kernel
Date: Mon,  8 Jun 2020 19:04:23 -0400
Message-Id: <20200608230607.3361041-170-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FTQkXcE6;       spf=pass
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
index e1c44aed8156..b6ee29e4565a 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -288,12 +288,23 @@ ifdef CONFIG_64BIT
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
index 0df0ee8a298d..6e56caef69f0 100644
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
index a5f00ec73ea6..f185a85a27c1 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -55,7 +55,7 @@ SECTIONS
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608230607.3361041-170-sashal%40kernel.org.
