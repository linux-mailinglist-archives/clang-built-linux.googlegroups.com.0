Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBV4F5TUQKGQEAARID6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FB5767D8
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:40:40 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id x140sf14172148vsc.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:40:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148439; cv=pass;
        d=google.com; s=arc-20160816;
        b=r741NDZZjQelSe1rmmylmeTLkkOPxF1YeLrU2xSds5JXt5d3ta9TrJ827jU11x6r6L
         BPufucBnWmZta7TeKWay1S8tVNOq8m4F22ayho5weV3hea0TPuaL/sqLdPl9lB51BVIb
         vGK0P5LC1RsCKkSpy0pANzBHxnbrDQEy5OQx9BWQCzjgv8jNdT7EMHxpK3e7SEm2CD02
         CirpROMZfbHhM8HALGwfPJHo9akcyYdIJ+n4mzGs5eBgLdcVPE6681/VH4SfIwxf6H2k
         u7H215mJPS2z08fPfzWDMlCLWQkRGXUnUrg+IpNlBuGhbXbX3EqJz2TSHSbtiMyd96EZ
         zLkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AAhyLM4LPSJK2TsMMcx4rX76nPDVEtinNvXWDWfBxp0=;
        b=VYe67hNzJIzhUBRyZdgI6ITR7hHb2RV6s59Frz1ZI1nSrxCm1IH4BSKk3+23w8mYW/
         3GW9frmCmBlOCgC8Sc7CVhKxRAd/0Ntt4EOegkYitCqlnKQYVIRe1LTjzvkL0DxPgmq0
         U3313lt3kmEMDXfeaGL4k7OrvBJ4Mhoey3MbI2eYmvBp5Tvm47MzXth7rMDHc8L0moaQ
         glPZs9gCYMP7t/xF6gLrTAxWDGrBV+4DC/dZXet8oY0uWeguz/1CNx5tRnb8I8Bjx/i2
         LeC5n2DYeNL7pmbU4sXR2Y9eZAJTTWr9lkh/PkHN0+FNwKdpOs5mLWVqzXXu7j+5d+Ue
         f64A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TNrErPOU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAhyLM4LPSJK2TsMMcx4rX76nPDVEtinNvXWDWfBxp0=;
        b=N1lG0vGjklF/IlsfXZLNaO+LJajEpjVz1oqJjeBkW358hIEMaXVm8mYvpf469IlWQL
         ejAAzQkIRI8SimFZpPgbyrJtjAa4w57PibTucHXE3BJ9wN7WBx04i4yE83QgaGFRmQRS
         WBCmQL29U/fGO+e7HEJIT9TW+PtOXx/MJfWfHGNpZ5UoGsDc9/zy44lKnSS4lvNsPFgW
         e6S4Pil4Lby3GWaNBuzUTKbMsAoM+TAC8jOJO8N9yOjr/Q3X1GzA3bvMYXhDLcCDFcnG
         dg+CxQiwyE0ITr3mp4jOZYTcxmWT+QFv0Yp/dPo6QOAAoW9B+JtZpZafErE8ZAry+VQw
         ZwHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAhyLM4LPSJK2TsMMcx4rX76nPDVEtinNvXWDWfBxp0=;
        b=JSMj2bB65j2KAhFM6nH98SNzwDiF5uNtitoIxtljzbOPIGyeFHThvz3VqKW2oHeh2y
         lK8n6chopNHTQi8DURmKSngxMsPYAmw1gPMYEFt6excIUu/rcTy6l8prVbhhZH7QVqNr
         tIcOXLWecru7GtELyXOhuZN/P/1M86pYPx8Y14frP2XukUmwQt5n23EzxaspORR4ej7t
         OBpQtrNK5IiWzPI5eRHh+NUlDTXwPCxv1qMaIEh94Jl/OIlm4pShyDj6lrCwqZmr81Af
         /1Z/RZXNy/41DDDz/gDlWmXOyR/5TP5s+e362c9gdT2TnkyyhCkouxnd+VPYwNBBkRZN
         rP8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWcKf6XV70odC65CPTdXDGknxPuegmh4cWFSOj2mE1wysdzQcS6
	VAqzbV9XRag1MABfDBFdCNk=
X-Google-Smtp-Source: APXvYqx5NQ7GjJKQRkD2wqqKagQLflzbD755BYEHfrXMSwY4/Kx/CKNyMbs9Sv/iBVPFNiBjp1IAUg==
X-Received: by 2002:a67:edcf:: with SMTP id e15mr59502502vsp.75.1564148439249;
        Fri, 26 Jul 2019 06:40:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:29d6:: with SMTP id i22ls4089238uaq.6.gmail; Fri, 26 Jul
 2019 06:40:39 -0700 (PDT)
X-Received: by 2002:ab0:544:: with SMTP id 62mr5763455uax.94.1564148439004;
        Fri, 26 Jul 2019 06:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148439; cv=none;
        d=google.com; s=arc-20160816;
        b=itC6Ho16/f3tErEEcCPQokOiryM8V1h6tutITITqHfHwrgaBgHaYqHRReqe3s+yqHI
         194qNZoJ7RX0zLS3d0mucdmRZW3vZ3C7gRuGhO9tuPxet4lJWFtgosLDlbDppb1De22p
         pVLES9hMhR11VIomiz/fSW34ZQ1ZpPTrYSa6zsw2tImxOOtAhv59s8u/AGSWmZzR8dfC
         Iuo0JiOD8tQjPUE4RKhI6AX97NJl3S/t+n3a5dEk3dmKPi9LU8eWM4/eO32UH5bnsWpX
         mgfbJubv3vGXFPJil22LPslCpgXMlA4GURoTCSUQwOZKSVnoJWc2pdHWZwAkS9FrgcVb
         VYWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BTspVGCfkXPhx/SWI/2VqvrTcGMMaLkMamXWmNeMhd8=;
        b=MvnoUfKuIMfOAbKn11EGMAVVVoPmYAI9f5vds1NmVoUi3eSnmoCYrX5JYunSTiNW5Z
         3t6JLpdQ59claMTO3/gEMuccgqtzL0/ViiU0jX9QBwSAjchBoqkbl8/YJMEqOg/XGwlG
         QwVuFfhA9D3k2lCE1tAHuWw+nhzBZojDDAzoGIWBV3GXFi1566dg29X1n9cz0ZGxdCpr
         rDmo2ZIuyZP2juH6AYSAmTGKiaCAVhPB/9ZeGjosayg2wT3O5pc/Yj70v+NYbJqB8BN4
         s2kpiG/sWKgfubYmlaz0ufcgEtNUhrDEuMrWwV6bLOiPnCSVoBqU7R02tfpaoFvWjqN+
         rfRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TNrErPOU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i9si3461333vsj.0.2019.07.26.06.40.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:40:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EF14C22CB9;
	Fri, 26 Jul 2019 13:40:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ilya Leoshkevich <iii@linux.ibm.com>,
	Andrii Nakryiko <andriin@fb.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 39/85] selftests/bpf: do not ignore clang failures
Date: Fri, 26 Jul 2019 09:38:49 -0400
Message-Id: <20190726133936.11177-39-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TNrErPOU;       spf=pass
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

From: Ilya Leoshkevich <iii@linux.ibm.com>

[ Upstream commit 9cae4ace80ef39005da106fbb89c952b27d7b89e ]

When compiling an eBPF prog fails, make still returns 0, because
failing clang command's output is piped to llc and therefore its
exit status is ignored.

When clang fails, pipe the string "clang failed" to llc. This will make
llc fail with an informative error message. This solution was chosen
over using pipefail, having separate targets or getting rid of llc
invocation due to its simplicity.

In addition, pull Kbuild.include in order to get .DELETE_ON_ERROR target,
which would cause partial .o files to be removed.

Signed-off-by: Ilya Leoshkevich <iii@linux.ibm.com>
Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/bpf/Makefile | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests/bpf/Makefile
index e36356e2377e..e375f399b7a6 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
+include ../../../../scripts/Kbuild.include
 
 LIBDIR := ../../../lib
 BPFDIR := $(LIBDIR)/bpf
@@ -185,8 +186,8 @@ $(ALU32_BUILD_DIR)/test_progs_32: prog_tests/*.c
 
 $(ALU32_BUILD_DIR)/%.o: progs/%.c $(ALU32_BUILD_DIR) \
 					$(ALU32_BUILD_DIR)/test_progs_32
-	$(CLANG) $(CLANG_FLAGS) \
-		 -O2 -target bpf -emit-llvm -c $< -o - |      \
+	($(CLANG) $(CLANG_FLAGS) -O2 -target bpf -emit-llvm -c $< -o - || \
+		echo "clang failed") | \
 	$(LLC) -march=bpf -mattr=+alu32 -mcpu=$(CPU) $(LLC_FLAGS) \
 		-filetype=obj -o $@
 ifeq ($(DWARF2BTF),y)
@@ -197,16 +198,16 @@ endif
 # Have one program compiled without "-target bpf" to test whether libbpf loads
 # it successfully
 $(OUTPUT)/test_xdp.o: progs/test_xdp.c
-	$(CLANG) $(CLANG_FLAGS) \
-		-O2 -emit-llvm -c $< -o - | \
+	($(CLANG) $(CLANG_FLAGS) -O2 -emit-llvm -c $< -o - || \
+		echo "clang failed") | \
 	$(LLC) -march=bpf -mcpu=$(CPU) $(LLC_FLAGS) -filetype=obj -o $@
 ifeq ($(DWARF2BTF),y)
 	$(BTF_PAHOLE) -J $@
 endif
 
 $(OUTPUT)/%.o: progs/%.c
-	$(CLANG) $(CLANG_FLAGS) \
-		 -O2 -target bpf -emit-llvm -c $< -o - |      \
+	($(CLANG) $(CLANG_FLAGS) -O2 -target bpf -emit-llvm -c $< -o - || \
+		echo "clang failed") | \
 	$(LLC) -march=bpf -mcpu=$(CPU) $(LLC_FLAGS) -filetype=obj -o $@
 ifeq ($(DWARF2BTF),y)
 	$(BTF_PAHOLE) -J $@
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726133936.11177-39-sashal%40kernel.org.
