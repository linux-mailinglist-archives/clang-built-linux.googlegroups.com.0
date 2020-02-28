Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBGVZ4HZAKGQE526OOTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FED5172CED
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:19:40 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id t17sf185049wmi.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:19:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849180; cv=pass;
        d=google.com; s=arc-20160816;
        b=P2SW0sdBzi7tJ6eKsGYAcp78cv5jleK6B//WYBLucEArYvAcMI74mthQXvQHcGRtPH
         ca9xehQipknbq65kWpCv2R3FCTQn64YmwxrYTC5UEQNBiwy84DeORpC/gnI/xvbI9hHv
         wbqx56ZRj+f63MGtMXwzKAyOG0ehpWpaNmyhJLwE5yOyTJCy+zKWLr/YRJ8N/iKJfrQb
         ineVd70KPQ8r/mZMzqjeZtlxBtTn+PV5vXhmByAQUu5vWZ/1tljOtU7aIQw1eLwMtwdw
         LHPTINnYTlNGkX7AzguGyG1FFQU/ruQh79IwHomzbEkezreI5BbQsAlApQjSc7/CT09a
         o6TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=y6YiahG67N48eOEoN+bxawDCcHY1vGzlF271vzLuPHA=;
        b=Cm8/XfkFpdjtBRkvTCFXzo0BN9Nlj+OHGJAnRAgkitQD7CfXZF6T4CkclVom1bFWoc
         yRWFI+l49v+iN299Th978rfTdlvURO2qtGVqIkxGzRamSAj9uM23ThbMBzl7TBnQU4T2
         rxyXqhJx5kAY25fbWNpJfm8YX+xmQylit98bnmCWParl5Qg/fLF77g6uPW2s1kTisNyN
         tNShTzGaC/rDfilDAx3ZB2QF06jMorsTQaKMfieOpgYflfMukeCJ8951979IaJqNmMCc
         YDV2KbzuxAsvAOboZtX0yfpf9mwFPKsJyjg23ZcVt3h2ZCnGdNgvzpYDbVAMxjQftEB+
         +wiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=aTYpnGkw;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y6YiahG67N48eOEoN+bxawDCcHY1vGzlF271vzLuPHA=;
        b=cArSbDGy4M4UR4PnEDhZ2S5qUtuydh3jjFTmS1zbX1h2W3qwgY6TKrL73iM/bJey/4
         +DgLytEb+ooRPmF2MpIG4eM1JLmCoTvtAFvaiYw/TIJ5Vvhy4ZcnINCujaLUelZOCUEP
         6Prus3MEeHV2z0h6wUfnCuOGcC14nETjBCXox8ucuGW9NgRxdonAmP6+h9dp1Ino8qns
         xZl599DEd/utpUNqCLMHzfydwv6/ylOpEIPNluSj5jlhFEoTE4qEpVjgIp6WYLedCXrN
         yU7VMioFySwsd/xdX7p86F0qRh/NC6cTPd+ldVX79Z3yLVSh9lIOmTTW5ItL1U/s+f1R
         cQSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y6YiahG67N48eOEoN+bxawDCcHY1vGzlF271vzLuPHA=;
        b=jXpy5XurpQD7nuoKwJ8vb9YHcPYaZ2LbBqM8VmQVv5BWOCMgb6wI73Je804Wf1KmvO
         JJauJydbhFgdujkQk4murJVTraNUiWRYFJsFN/OioB2cLrs26F+ECGRVzhKAk9+fKYmN
         lhmoK/NCtg/D2BjDN1oFqUcmat+5RVunUR95Eb4TueuYAbiL+pEm2zFfTQfbatAo/qhi
         dVMhdDCC/5MAQCWFEMMEDACo15hq/FuemkMBbtTvAq2s1X0q3MRRopsGEJzeH8Mw55Jh
         IfagyQsMlWQ5oXkXq8hvXWYeVkB2yyve2vWGCG79oXaZYf85nhHb6i1bd5vPyWROJ/mi
         qz9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUdd+fzQOKstp1a+es/trMNzj3AeZPGlAtKsU/1bUqOFRVb7XEY
	1UFHNLiCFjKVDxfQY3e60z4=
X-Google-Smtp-Source: APXvYqyuAm4tb9jkWelCgQgVWwWfpp6vlzA6Hrf5Cg+GtLuSOcm4FzkBVkWshrRcvTmzSNFW1V4OeA==
X-Received: by 2002:adf:a19c:: with SMTP id u28mr1417138wru.221.1582849179928;
        Thu, 27 Feb 2020 16:19:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4d42:: with SMTP id a2ls477859wru.9.gmail; Thu, 27 Feb
 2020 16:19:38 -0800 (PST)
X-Received: by 2002:adf:df8f:: with SMTP id z15mr1443146wrl.184.1582849178347;
        Thu, 27 Feb 2020 16:19:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849178; cv=none;
        d=google.com; s=arc-20160816;
        b=S3T6IBQ/6GybyXBGMB2MG2z5QZ9DtNbCTPf1m3F0ZaU/vhYYLc0f5cqjlDIbo4R5uL
         apqSB24Be7vEFulBv07SIYzIMPIG5dRy97T1X6XpEKQJiF97grBcO5oJMcGXwb7142pg
         lmTs8SmeELtVMVouA0KEJ/4X6k6HOY4pFDOQSImdOZjEatTKHuG9W3GH6SD+cv4B2k06
         J/Vk2tStKKuORomRr/n7VoXYvjjZGRCbg/4V2dvtvusdMAbTlbsRS9+RTolvqOSPy3Cm
         Vv9yTpvvmlXZl0ZEUYfGXByoHIkUGsieqKmxOo5NaXqAX3kRtV57ZkZxJN2+I+3kfBI+
         cFRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TIjae1yYHkhLUHlgAhQROPT7jyNpin+f5lZbY7zzkps=;
        b=teCtG1hQDV314hwLw2ULHwckiv207ExMp1g+kuvsy0FJ6eCdiokH9RQxeg0HkzPVf+
         574qNlrclpnoM7/BCCYKzXnGpIJWN1o7DtUKbRl0cHU37bNV40DmfxTj4htxz2+H2dt5
         Brf4EsE1Dy1zKu/uGPDtGcPyjOLwfVuzBudm7kG88oCqXY7QXLNv4/V/P3qy0YPXijwy
         OmpLl9yZg7na6tRbOJxu2hkIFq5TZ5KZu63ZdEM2/1KnCPTWYDM090dbPNzs+ps/7wKM
         rNz58ki2zG53/7a2gy5knPI0gZA6aNbmlH4S+JFfOZJOiNWiRKXl5gThxjjjIHUlFBC9
         JO5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=aTYpnGkw;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id d16si63305wrv.4.2020.02.27.16.19.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:19:33 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id DA5AB5C0103;
	Fri, 28 Feb 2020 01:19:30 +0100 (CET)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	yamada.masahiro@socionext.com,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH] ARM: warn if pre-UAL assembler syntax is used
Date: Fri, 28 Feb 2020 01:19:22 +0100
Message-Id: <cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=aTYpnGkw;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

Remove the -mno-warn-deprecated assembler flag for GCC versions newer
than 5.1 to make sure the GNU assembler warns in case non-unified
syntax is used.

This also prevents a warning when building with Clang and enabling
its integrated assembler:
clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'

This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
divided syntax assembler is used").

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/Makefile | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..a6c8c9f39185 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
 CFLAGS_ABI	+= -meabi gnu
 endif
 
-# Accept old syntax despite ".syntax unified"
-AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
-
 ifeq ($(CONFIG_THUMB2_KERNEL),y)
-CFLAGS_ISA	:=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
+CFLAGS_ISA	:=-mthumb -Wa,-mimplicit-it=always
 AFLAGS_ISA	:=$(CFLAGS_ISA) -Wa$(comma)-mthumb
 # Work around buggy relocation from gas if requested:
 ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
 KBUILD_CFLAGS_MODULE	+=-fno-optimize-sibling-calls
 endif
 else
-CFLAGS_ISA	:=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
+CFLAGS_ISA	:=$(call cc-option,-marm,)
 AFLAGS_ISA	:=$(CFLAGS_ISA)
 endif
 
+ifeq ($(CONFIG_CC_IS_GCC),y)
+ifeq ($(call cc-ifversion, -lt, 0501, y), y)
+# GCC <5.1 emits pre-UAL code and causes assembler warnings, suppress them
+CFLAGS_ISA	+=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
+endif
+endif
+
 # Need -Uarm for gcc < 3.x
 KBUILD_CFLAGS	+=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
 KBUILD_AFLAGS	+=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan%40agner.ch.
