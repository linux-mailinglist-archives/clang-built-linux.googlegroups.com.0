Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3GYQ6AAMGQE5XNVUPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 167962F855B
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:26:38 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id a1sf16698092ios.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:26:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610738797; cv=pass;
        d=google.com; s=arc-20160816;
        b=xiJcQNRIhS1MaDISfqM+C2B9mQz4Ed2au2U6d+lpJyIqce+Sl+cByaAx1wipZ6QLFn
         n4JKGb5h67hDP+X0Dof1fSDIs3QcqXHswqgYpC1mPDvmFLDEkZ0uG0pdEfMqVA3O0/OL
         jQ8LfoQYofEeba20vJp9qRQKqDzX+XvUqCVD8N7c00p9g/Z6s403HdoPsPpK4IPX7b1x
         CADd0E8TBom9MaVDsRuInd7aNWA/GLLGiJxkNhDnOGWTttIIFLYlHl8sYe2kvLG+tvpH
         /Tc5n5HJFpRAeuphlfg9iG3MUfjhVH96aCLVwWAeru/CgZRaERqmm/1jOGZ0wI2I3Dpz
         2ZUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=m/dJ+zLwlyQvB4HVk/YPWKleHjIWfd8EcyhhatlBbi8=;
        b=nJlXDoDdKmHwQ35qhx21fMU3gHRd7ub7O2ZtRiN8Y9tgdA9spyCWfif+0xOXK2mTmM
         3n/PRBWqAkTHAtiWli2ML3kTq0nGMXYXuDiKM6fyutEEMx6JtGNEddAZima1xZixKjYB
         bmxDOgm3Jmozw0zhOeI0fTclNRwA+AgDk9gDAWB94dnf5hLOV7MABu0bnq8N07xbCe9f
         w0JlZOp9zUVc6xrxZtnuppu2d8R6LNtuT6T5CWfHjeLsfKkqvcLVOnjvAuZ5sAsqN5o0
         K7SYVxScag+Or3yabN0o+n0Bz8E9QSeL4oXcEeJ3iv3i4BVeLjn+Ei6o7gu2komY1Bai
         O47g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mf3PqmEp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m/dJ+zLwlyQvB4HVk/YPWKleHjIWfd8EcyhhatlBbi8=;
        b=axSdMUD8MT8X0wr2tY/nkWa3Dlq2Vg93WYJytAVS41Cp4IG1eFGWtT8zwgqHS7rxAu
         paxQXhiip0lXHXcuG4f0vSP6r5DgQ4x77yBcFgphWJscq+C1TXKIfRvW3fTs8doPtpur
         pkL0fU5q1/0OK9UmEwNXx6s3kw+bwtM/M9JWFBITF1jran+x6IjZKuTfCPC2EMfq8SoM
         /VPY2+pidXnpuIjos5IFODY0MF+NLq+URSvgZEm1ujcCCwp6an9YBfG+uxBZf2js9wje
         3o7JqSp3TvcjMCug18YPuB4GgEYMFm5PPRjpYB6e7GJsl7vxk+DQqtmNiOfx6IQdvGGP
         KvpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m/dJ+zLwlyQvB4HVk/YPWKleHjIWfd8EcyhhatlBbi8=;
        b=DEJaiT7jidMGEQ5CHmyLcX3fNSgxYpabj4EcGmdgoT0dL8ihJ32JaQOG43XhEC/O5G
         6FYNpw+hjW+kOxtsYz4sk+igb1taOI6UQIFGBWe2ZouorMTk00/eY/VuA/S81Ahq2CGl
         6UT5D3nk6b8K8c07u0k3J67E/xYBZ7L+DO45wiieF0fXwS3Eipm+V0cBLIW110PNSqxp
         sOhvUm4uBGy/DDpsFhwvDDANoO7O8tq6b9JbXh7e0KKgsPv8NCER0tqk2ptLiEkRTl7N
         Do99Bo8PVUCqkU9j9EINBWemmsrdlI8IiCn9mIiqlu4xx8d1b7v3Od86R1XDlRlaA2k8
         PVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m/dJ+zLwlyQvB4HVk/YPWKleHjIWfd8EcyhhatlBbi8=;
        b=T+hdJSnK5j98TwCq72HkG5hUv30PsLR4MmLUQZqbDCFdeS4C+6dV7VTXYurlv1XD0R
         fqFmqzegMBIp+Cz/wkSlmaIeQLuH87589fog3/PIXgox2IkKli7dRTBa8JGQVZXLSYmk
         I2I22+xxQy7TIdJYYfoFHkg0Hymg2zgBHyTz9Hccabe5eHVTV39E8b20Niz/ClL9OBx4
         tGm727D26B35HPRYtQ2KRIDNIE3934iRhJqOgu6VcjXeeYQVlZ85Yi6KdIw/6RZHgKWM
         wiK4kp4J1d8V3vI5yOhcLVBVwZZ+xKPFZtAB0SHbky6zOdQeR/fMDLy3CQXRw0D7lo7T
         ByWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gxXNv4dJ+HwneH3iOOP5kumLk03vxRIntL59YbMTwJsrx7HbM
	g6hFElaVlGHWt1sXi3j7EHo=
X-Google-Smtp-Source: ABdhPJxhIhgbihCMOxtCv2CgEPD8sbr/GFyu5Ytj1u1qOkemjiOc9WwBvu0j1Y3Xk/x8h8xhNBFpCQ==
X-Received: by 2002:a92:bf06:: with SMTP id z6mr12119629ilh.174.1610738797107;
        Fri, 15 Jan 2021 11:26:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls1542194ion.0.gmail; Fri, 15 Jan
 2021 11:26:36 -0800 (PST)
X-Received: by 2002:a6b:dd19:: with SMTP id f25mr9615862ioc.205.1610738796649;
        Fri, 15 Jan 2021 11:26:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610738796; cv=none;
        d=google.com; s=arc-20160816;
        b=OiDPxHBYMc+egifEhaAKuvnGgfUXDA31EzwNuc2bCHppcyRgHeo6aIfp3YGbvkZiBC
         zp0DzCttDdib8GZfcQ6YHqPxQRC1AvI7GVAnpTjH3T+2sDonFHlygsBVrWIGDI89YSJy
         Db80JVbQUalQNes1cRKU/GVBuZFWVC3a2BvZ1193l6tMm99dKtaf9K76HDEU0WM0TfK6
         gDfbPyhxR7+DATDxcGs7FbG88IwOg9BMPjhOWMmmyA+dVWAOaeS8/0k+jvLsS3/H+ecz
         5d9NgwpaaBq0FEJICfl7TA3SKbndhsJipITrCqrzudEB6f5LoXZhy+s544FN0vtcaCkG
         1oVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wI2uI3+2FzYpX+KeqH6pO7iQOIAE34VnV+1RkmvqBfE=;
        b=JkjQ59iWy32c8CBSfu/iLctbe9pLdDrfeRHRdVESSOu0rSCaIognR1EWroRKMT8FOP
         lrTPDqo46PjGtD8gPIf1UQAyDGOaVjHiJUG/Q96ZWxRNNR/in8iWeegHh1cbduV/zSsO
         FdjdFGceYqV01xmA3lcnePdgsA0LH+Q3SChXzPWBT01/1rufIq6SBb8JEjN1YwFEbR8T
         VY5CaUXmUk0jep8alzW9IVGx8+sWUD8OKFnz1NTS1FIiIxBMQJaYEn2cdYNAEGDqJB3u
         1f1Ks0fmXT9NCtnJBf9Avv5KX5FaG+wcbg4v0ClrS6+HmZD0rspAlTaf9HV/GXM06SFL
         arjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mf3PqmEp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com. [2607:f8b0:4864:20::f32])
        by gmr-mx.google.com with ESMTPS id e26si669147ios.2.2021.01.15.11.26.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:26:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) client-ip=2607:f8b0:4864:20::f32;
Received: by mail-qv1-xf32.google.com with SMTP id et9so4487156qvb.10
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:26:36 -0800 (PST)
X-Received: by 2002:a05:6214:533:: with SMTP id x19mr13839323qvw.20.1610738796075;
        Fri, 15 Jan 2021 11:26:36 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id w42sm2557457qtw.22.2021.01.15.11.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 11:26:35 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH] MIPS: VDSO: Use CLANG_FLAGS instead of filtering out '--target='
Date: Fri, 15 Jan 2021 12:26:22 -0700
Message-Id: <20210115192622.3828545-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mf3PqmEp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit ee67855ecd9d ("MIPS: vdso: Allow clang's --target flag in VDSO
cflags") allowed the '--target=' flag from the main Makefile to filter
through to the vDSO. However, it did not bring any of the other clang
specific flags for controlling the integrated assembler and the GNU
tools locations (--prefix=, --gcc-toolchain=, and -no-integrated-as).
Without these, we will get a warning (visible with tinyconfig):

arch/mips/vdso/elf.S:14:1: warning: DWARF2 only supports one section per
compilation unit
.pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ; .long
4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
^
arch/mips/vdso/elf.S:34:2: warning: DWARF2 only supports one section per
compilation unit
 .section .mips_abiflags, "a"
 ^

All of these flags are bundled up under CLANG_FLAGS in the main Makefile
and exported so that they can be added to Makefiles that set their own
CFLAGS. Use this value instead of filtering out '--target=' so there is
no warning and all of the tools are properly used.

Cc: stable@vger.kernel.org
Fixes: ee67855ecd9d ("MIPS: vdso: Allow clang's --target flag in VDSO cflags")
Link: https://github.com/ClangBuiltLinux/linux/issues/1256
Reported-by: Anders Roxell <anders.roxell@linaro.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/vdso/Makefile | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 5810cc12bc1d..2131d3fd7333 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -16,16 +16,13 @@ ccflags-vdso := \
 	$(filter -march=%,$(KBUILD_CFLAGS)) \
 	$(filter -m%-float,$(KBUILD_CFLAGS)) \
 	$(filter -mno-loongson-%,$(KBUILD_CFLAGS)) \
+	$(CLANG_FLAGS) \
 	-D__VDSO__
 
 ifndef CONFIG_64BIT
 ccflags-vdso += -DBUILD_VDSO32
 endif
 
-ifdef CONFIG_CC_IS_CLANG
-ccflags-vdso += $(filter --target=%,$(KBUILD_CFLAGS))
-endif
-
 #
 # The -fno-jump-tables flag only prevents the compiler from generating
 # jump tables but does not prevent the compiler from emitting absolute

base-commit: 7b490a8ab0f2d3ab8d838a4ff22ae86edafd34a1
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115192622.3828545-1-natechancellor%40gmail.com.
