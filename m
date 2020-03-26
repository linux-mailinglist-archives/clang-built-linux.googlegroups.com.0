Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBNPT6TZQKGQE6HO4N5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 103E0194C51
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 00:24:39 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id l1sf5615401pld.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 16:24:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585265077; cv=pass;
        d=google.com; s=arc-20160816;
        b=LRfgTaFm1Jzoky3VicUv67yxqkF9WxzMjD6zd8LPWSTN44lsyaMiY4dpDQD1PoDFAm
         7OZtdGK1l2YQdAqfjTiFb8og20QUKgBUY3pMDAHBo/1/JBcUDnyZhciFlTPceLBias0l
         l9aIkhQO4/g6XrT+qaO1oVAZHR/XBQjSKXiH+8QlpBbOkPpP8RgTmSo5CK3P8mYHl3lq
         TxQEOQv/G9R2N2/B/BxLtczHC7lNX2hDcirHj9+o1VQYdu+aU/lvQJkiZCHwsbRJKz9G
         3G+COEXvYIkrB/WF3jzRllka7HWwgU9fR65XRdga74dnhPwap2qO81PeBRmCuceQ2dOl
         njDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fsI5Og4rIn2XlA75J4SPtFy2xS5bb4bXQB+xZcluKHI=;
        b=O/X2kUHfT9W3rxvJ3h5mmP3t5UMF6COOmsGXuM3G/Ychtqp8eyZXuzEkPLCtgQW5rD
         TzvAQeZjLq9PWzB/vS/pvIGLnMKfYSDat/oNhXR3yYHqgBLyhOhtn1wceqIMwciqDQB2
         BU9b/o8HnwlBGcZKgAv4nxcb7MCMqkyXvJrY8tDSQtkZBMPcAXBcUAeTAaTBSicWBMYu
         2+LM8uHTme9EyNtyGbOn+TfJZGm32Cez3DBzD7FasinuXKHPnrBwZJ7Z8WzwplCCqW/Z
         JAy4OSUnnxJ6iPyzXgleGR5zAflgSQoc3aT9NzTn9tAZUvQM2OdTHLTI/ZdhF0gCUPBw
         Swvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LqtcyPkL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fsI5Og4rIn2XlA75J4SPtFy2xS5bb4bXQB+xZcluKHI=;
        b=qVt/fXEVAoPT+aH+TbVQi9VHgWTd7ZxoW/qtA+XuL8QlUVKzNWNA/oS7G0C/+0wqSY
         R/peqaNmaFU5do5IETe/9XQ8OK4/d2KPNfaMHNodRSwrgwcFDYF54oEvKtO3iWE3QeXu
         AaEErfK9UAw7Rn6hdQXEvLwOJF46tHi6utH0H3FmD9WBLSClNtUq/3do4hmhiYnh3aRm
         GEOygwvBLGlw01Gwhjhng5m77dOUoko5s+fmfRZVEsiUDiGqJKwsYhhLpey17xHPwpDM
         3Ymvs/C4R6/YOtnB7iogcap1IOfPvTj9E9VPbBKIcdfSvZd5BWLUiTj1TRW9TqfRU6D2
         XE3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fsI5Og4rIn2XlA75J4SPtFy2xS5bb4bXQB+xZcluKHI=;
        b=Kp4ikj04sLh09l9hJxRwJTsIkmThARInzbvPYeFlMqoNznfLOoe/NwOKTQ9f+KpQRn
         oG5hG9W2L/Dyr/08AwsWnpXt2kuWZFabBiX603uH6Q0wDw8u2Uuj6W+gGOaMMNyKEXmX
         +7TuJPyqn5tXbImLjFdCPfyP9x1Q+jhVO3JzQ8fphHJ/eLcMYDWCthlcZehMvAkbYSSC
         xkIfTG+a/EjEmCI1nk2sfp5d18loWs9Ua6cfecqFFIfSz3ovCzRLHECm/xhgzRTt1SDW
         QpqBU3nZhh0Vs1DZMFyn9PlBYUjjb4w6kpvurcZb0ftzyNehD447OEHVmAfKMj6wvk9x
         e4fQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ39BefRwuSGm5jCPaBjb7UyFcSU+N7AdX9FodKAnoRhhcfxyUIN
	3QY78g2tu3nNk/s08UYgRFA=
X-Google-Smtp-Source: ADFU+vuWcf0RPSRnZnsbJz5yT3xUygnN7hd6HUEkgdWVCsJItoAoCJ4L537Jjr6vuy+1m8mVdQ4sTg==
X-Received: by 2002:a17:90a:fb47:: with SMTP id iq7mr2748256pjb.191.1585265077759;
        Thu, 26 Mar 2020 16:24:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:150:: with SMTP id 77ls4795233pgb.0.gmail; Thu, 26 Mar
 2020 16:24:37 -0700 (PDT)
X-Received: by 2002:a65:53c5:: with SMTP id z5mr11600668pgr.0.1585265077238;
        Thu, 26 Mar 2020 16:24:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585265077; cv=none;
        d=google.com; s=arc-20160816;
        b=uGLgnX7z5CFPNYdhZVTcCL/1a2kGo2NEiiCO0brLyoFbfMs0UBlU/t84/YkKTGSQsv
         qQyMNwJMRDFOwiO0PXhNKDfg2ubE6+u+kmx2V908mABXRFWdvvt9I3aqz1JdyeMZHPnq
         MRr2Pfa+FDolrBDGp74Hwadk+7HeJr5Zw7jrPWvMWtTW9yDVTfqckPNDjKN7noOo5ixb
         iBrudFqjI6qJdty0btQ8vMEIh1/rDoMBK1LPfJFuzuWQvaY2rIhAquQ0EcIrZJL0y7GC
         /nOErFchfkimAjXvW2bOhZH+GTunxY5XY1D5+EGVoUPJXDtksvnGFhiq4RteP+G9BmJX
         TNaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l59Zf+P8oJMpwNJeufUgJnFvShqBddOuFPfzlRPD+XM=;
        b=Pmig+jB5Oy4LDNXIbKvPItCJS6elu40qW0hRnUb+uzTg9kUsaNQPxZJxXykiQ3YlCE
         m0K6vKkwn4njxlPN43bfHKpXoWqzml16X0mZ7KM6x52YzyrdfT+51IkvP91jEcXxGuSs
         Yk19HqbBW+cPb3xA4I1L2pxsEFRE6k7fGF9CvjDSv168v/aFm25qgcbtnaRVh+TIFDZd
         EYV9VPSZK6eZxwtts1MRspyPchKjDLpxVZib+Jy2xSj830inyrh4f5DuIUgOq1yJJy7T
         UGMp7uhqgpJn6vdJTxeBAaSEdmgBrLIt0k0ChNUAl/BwMlJ4sEhSvauoUQNa0ZIpw+KS
         StQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LqtcyPkL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k3si256389plt.1.2020.03.26.16.24.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 16:24:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 24CF220714;
	Thu, 26 Mar 2020 23:24:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	George Spelvin <lkml@sdf.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 04/19] kconfig: introduce m32-flag and m64-flag
Date: Thu, 26 Mar 2020 19:24:16 -0400
Message-Id: <20200326232431.7816-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326232431.7816-1-sashal@kernel.org>
References: <20200326232431.7816-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LqtcyPkL;       spf=pass
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

From: Masahiro Yamada <masahiroy@kernel.org>

[ Upstream commit 8cc4fd73501d9f1370c3eebb70cfe8cc9e24062b ]

When a compiler supports multiple architectures, some compiler features
can be dependent on the target architecture.

This is typical for Clang, which supports multiple LLVM backends.
Even for GCC, we need to take care of biarch compiler cases.

It is not a problem when we evaluate cc-option in Makefiles because
cc-option is tested against the flag in question + $(KBUILD_CFLAGS).

The cc-option in Kconfig, on the other hand, does not accumulate
tested flags. Due to this simplification, it could potentially test
cc-option against a different target.

At first, Kconfig always evaluated cc-option against the host
architecture.

Since commit e8de12fb7cde ("kbuild: Check for unknown options with
cc-option usage in Kconfig and clang"), in case of cross-compiling
with Clang, the target triple is correctly passed to Kconfig.

The case with biarch GCC (and native build with Clang) is still not
handled properly. We need to pass some flags to specify the target
machine bit.

Due to the design, all the macros in Kconfig are expanded in the
parse stage, where we do not know the target bit size yet.

For example, arch/x86/Kconfig allows a user to toggle CONFIG_64BIT.
If a compiler flag -foo depends on the machine bit, it must be tested
twice, one with -m32 and the other with -m64.

However, -m32/-m64 are not always recognized. So, this commits adds
m64-flag and m32-flag macros. They expand to -m32, -m64, respectively
if supported. Or, they expand to an empty string if unsupported.

The typical usage is like this:

  config FOO
          bool
          default $(cc-option,$(m64-flag) -foo) if 64BIT
          default $(cc-option,$(m32-flag) -foo)

This is clumsy, but there is no elegant way to handle this in the
current static macro expansion.

There was discussion for static functions vs dynamic functions.
The consensus was to go as far as possible with the static functions.
(https://lkml.org/lkml/2018/3/2/22)

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Tested-by: George Spelvin <lkml@sdf.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/Kconfig.include | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index bfb44b265a948..77a69ba9cd198 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -40,3 +40,10 @@ $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supporte
 
 # gcc version including patch level
 gcc-version := $(shell,$(srctree)/scripts/gcc-version.sh $(CC))
+
+# machine bit flags
+#  $(m32-flag): -m32 if the compiler supports it, or an empty string otherwise.
+#  $(m64-flag): -m64 if the compiler supports it, or an empty string otherwise.
+cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
+m32-flag := $(cc-option-bit,-m32)
+m64-flag := $(cc-option-bit,-m64)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326232431.7816-4-sashal%40kernel.org.
