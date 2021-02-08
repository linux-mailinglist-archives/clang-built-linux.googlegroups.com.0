Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBX7XQWAQMGQEZ57QHOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E88E2313BD9
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 18:58:56 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id z20sf11298197pgh.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 09:58:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612807135; cv=pass;
        d=google.com; s=arc-20160816;
        b=F/y0z3wFk7aX/mtl+oGZyizPVn4x8lDpjaYI2PS7HNmqrcQBO1kqV1ZXlIKepQg+h3
         h6TvchnlmL/zS65RMg2zjyo/qxbT1gXa6dus/scT49HyRp151X5ZPWDCNNs+XIisjFy4
         uIcsUR82DynvJ/30JIhtSNYHlsy0r1eg9SnlKqPWx2ZFtWlP/NSPGAE4YZMRUhR524kM
         WzRqzbRfDf/BFAlGKtB+/Z8utjxAkaVbaGQQYMiVT9wlio3S/sLzfjzJKFdm+u/0NGwQ
         b8u4fEJcK480ooQWFy//rtrKY70eQ93qd24bBEao9BUISh2/0X61GZWDTNRT0h5zerr8
         xnKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JxbkgLm9QXmrJX1YQ11kXrOQZDQgCoOc4kOFsK93A1c=;
        b=LshSwO22J/kUWNAi5xDTPhGsYQS6nlY+4wkNic8r6zQrdY2beiQdK3lw5WpIjp9Zxh
         PV3/KQUdDVd82Jete6BgIfNuDzKgsBKaIA8W3V/+V1W9I5fnnlgf8xyllIe0fH+mB0gE
         6Qt3gDOEUrse8ppff0hlvW2pvL5S580yR9PytLLM6jwW52K67iGTfv1rnPGRenZI/P4S
         oKXMos3mXivVefmtLz2ScXReXVfml+X9oL0NaajIj5XhnxJyZf8Y1ka0517Jtzfibypg
         pb41YJ7m43+opuAZ6k5VmyNpASJy41fOqshctlpB/ioq27UOU0wQOJfP74InZs347Ssl
         lezQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iPuvdzXP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JxbkgLm9QXmrJX1YQ11kXrOQZDQgCoOc4kOFsK93A1c=;
        b=lsL1h8QDE3UaLdoZemI/lEBBdqhHnfRDD3CGfZGm2PstpI4NdI2Okaokxxzw9+pvlF
         6H8huzs6ui6Rzy5MgIERrZoAG7NjnPTW/zOUBbu6O1b6DSZPnYWpqZ6Lza7hdTDCy9/U
         PWXDPJYR7/9JNw8vtr+c29c4McwenKLVr1XdvDlX4BljJrVa4QWYktCIqCrtan2A4BCJ
         9r1z/3wjjzLwvbA9SG+MUbJTQ5T0XeHejA0VQNTkvc+eZkAYKma2cTEsGvfC3Cu0sLvM
         kRH8rX/gssPJCT2smp5mmo2GBRugK1+6AB16SCralOZqSn+xPjvEFMHxh8Wrf3J2g3Fy
         drew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JxbkgLm9QXmrJX1YQ11kXrOQZDQgCoOc4kOFsK93A1c=;
        b=uL1g2RPzxs4vPSk1ZyPaWJjApP2jcUmGEZQIuUTv2Zbs8oFNcIZF2O6W3e3KfwD291
         +bLX1g7xLZW5S7Aut38LB51jcjGQM8Pis82gh5ttvi1ptKvxPrgWF54dtEWKfN5Q88OB
         GvliI3wdYUS/PuO+WS7iy+fxQeCH0+Gft+ymBzJ0/eqeBU7S2RhGKfEHMK4opFyUHtbn
         NM1m0OW6QlnFoMDQ3vtprsvPQj/9fsW8LAXJhyoTfu6DTnfNfhO6ZLnbKz6y33Aw1RoC
         I075gnA6x84LHs4/Mc16cu/z4LeYtKQcHDK4fsV/6dJwDOpUuAOziDfi2oi+laMOUBAc
         zTVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320vn5WDvORcqNAEKEehrq/Yv2/1uBEQx3liE7KEYiZKBQDi9hD
	cnxAXdkK4bwdLfJXehxluYg=
X-Google-Smtp-Source: ABdhPJwIX158FdrxKdyhPtdVj3zaW1QKIa7OkFVoYcYv4mJg43i5oWikwylO5wntuSZKwssSNfIe+w==
X-Received: by 2002:a17:90a:4d88:: with SMTP id m8mr7102390pjh.45.1612807135478;
        Mon, 08 Feb 2021 09:58:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:da46:: with SMTP id l6ls1219339pgj.5.gmail; Mon, 08 Feb
 2021 09:58:54 -0800 (PST)
X-Received: by 2002:a62:7a94:0:b029:1d9:1b43:f23f with SMTP id v142-20020a627a940000b02901d91b43f23fmr14729035pfc.41.1612807134717;
        Mon, 08 Feb 2021 09:58:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612807134; cv=none;
        d=google.com; s=arc-20160816;
        b=0ks00EmGXYBejbxjbdrHvTgK92VB7NNUcNjPkok0VNnCs/4gJOta++VvjrK5Z0MLIB
         6bMLEhdp9tJXcj6+fX7nPRuyVYENP6hXEN0A6tmgmdYs5LAy2nqUCyS/boGN/saKCuiM
         rGT0k45GpCBeODZJomHpySxqEkFIlSj+oc3fHxuXD+D25V57jiIzLcPa3RtkBTxZq5ki
         MdtS3v62RYl3XKOFgF/D70wSt3SOPN2ZzHzspWrM5CFF9BM0FYQg3AAGcP/cvxx0gHVN
         xpo65pgTxx334grrLhuolJc/Bwv91+tXk3iAdXJ+ERS9dqylMXA0UkOmyKMbvEMmViQQ
         kh9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EMxHmAfCOml9QQ7v1XLdbbMvRu5c0N8igJALrwzthLI=;
        b=A5cJawAktTWlLyjzsFm+jFudioUpE14YYKO5wEBZnEV4mXnkEPABXjLed3hjc48YFu
         ooibqb3AQUPszOV3YkeCf0BR1ha8qjbCkgjmpoTH4P3cS/iOJTX+9D4tDVy53tRmY0RF
         QJ/mODHBvUC97zTJUWI/hDEvmp9PdimvUievStJte0nN8x+PyO90UKcIVFVK0XlpYrC9
         rXMY50nIfC7N+sns0/TklQpBevRz9ZFPXn5kb/KXiCxs/WCc3VyvvPFofnGqRf+wndyT
         B04s3/ZNEcHWjBL5I7Dxu2QUNCrJDLL9yNMqXmJtWaWzAM09CasPA3yDdKmTEl41HOxG
         WYpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iPuvdzXP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q21si748997pgt.3.2021.02.08.09.58.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 09:58:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 66D7664ED7;
	Mon,  8 Feb 2021 17:58:53 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 34/36] ubsan: implement __ubsan_handle_alignment_assumption
Date: Mon,  8 Feb 2021 12:58:04 -0500
Message-Id: <20210208175806.2091668-34-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210208175806.2091668-1-sashal@kernel.org>
References: <20210208175806.2091668-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iPuvdzXP;       spf=pass
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

From: Nathan Chancellor <nathan@kernel.org>

[ Upstream commit 28abcc963149e06d956d95a18a85f4ba26af746f ]

When building ARCH=mips 32r2el_defconfig with CONFIG_UBSAN_ALIGNMENT:

  ld.lld: error: undefined symbol: __ubsan_handle_alignment_assumption
     referenced by slab.h:557 (include/linux/slab.h:557)
                   main.o:(do_initcalls) in archive init/built-in.a
     referenced by slab.h:448 (include/linux/slab.h:448)
                   do_mounts_rd.o:(rd_load_image) in archive init/built-in.a
     referenced by slab.h:448 (include/linux/slab.h:448)
                   do_mounts_rd.o:(identify_ramdisk_image) in archive init/built-in.a
     referenced 1579 more times

Implement this for the kernel based on LLVM's
handleAlignmentAssumptionImpl because the kernel is not linked against
the compiler runtime.

Link: https://github.com/ClangBuiltLinux/linux/issues/1245
Link: https://github.com/llvm/llvm-project/blob/llvmorg-11.0.1/compiler-rt/lib/ubsan/ubsan_handlers.cpp#L151-L190
Link: https://lkml.kernel.org/r/20210127224451.2587372-1-nathan@kernel.org
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/ubsan.c | 31 +++++++++++++++++++++++++++++++
 lib/ubsan.h |  6 ++++++
 2 files changed, 37 insertions(+)

diff --git a/lib/ubsan.c b/lib/ubsan.c
index cb9af3f6b77e3..adf8dcf3c84e6 100644
--- a/lib/ubsan.c
+++ b/lib/ubsan.c
@@ -427,3 +427,34 @@ void __ubsan_handle_load_invalid_value(void *_data, void *val)
 	ubsan_epilogue();
 }
 EXPORT_SYMBOL(__ubsan_handle_load_invalid_value);
+
+void __ubsan_handle_alignment_assumption(void *_data, unsigned long ptr,
+					 unsigned long align,
+					 unsigned long offset);
+void __ubsan_handle_alignment_assumption(void *_data, unsigned long ptr,
+					 unsigned long align,
+					 unsigned long offset)
+{
+	struct alignment_assumption_data *data = _data;
+	unsigned long real_ptr;
+
+	if (suppress_report(&data->location))
+		return;
+
+	ubsan_prologue(&data->location, "alignment-assumption");
+
+	if (offset)
+		pr_err("assumption of %lu byte alignment (with offset of %lu byte) for pointer of type %s failed",
+		       align, offset, data->type->type_name);
+	else
+		pr_err("assumption of %lu byte alignment for pointer of type %s failed",
+		       align, data->type->type_name);
+
+	real_ptr = ptr - offset;
+	pr_err("%saddress is %lu aligned, misalignment offset is %lu bytes",
+	       offset ? "offset " : "", BIT(real_ptr ? __ffs(real_ptr) : 0),
+	       real_ptr & (align - 1));
+
+	ubsan_epilogue();
+}
+EXPORT_SYMBOL(__ubsan_handle_alignment_assumption);
diff --git a/lib/ubsan.h b/lib/ubsan.h
index 7b56c09473a98..9a0b71c5ff9fb 100644
--- a/lib/ubsan.h
+++ b/lib/ubsan.h
@@ -78,6 +78,12 @@ struct invalid_value_data {
 	struct type_descriptor *type;
 };
 
+struct alignment_assumption_data {
+	struct source_location location;
+	struct source_location assumption_location;
+	struct type_descriptor *type;
+};
+
 #if defined(CONFIG_ARCH_SUPPORTS_INT128)
 typedef __int128 s_max;
 typedef unsigned __int128 u_max;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210208175806.2091668-34-sashal%40kernel.org.
