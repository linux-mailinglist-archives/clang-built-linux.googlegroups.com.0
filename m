Return-Path: <clang-built-linux+bncBC2ORX645YPRBKNFVPXQKGQE5OG2LDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6C61158F4
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:03 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id l13sf6410857ils.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670442; cv=pass;
        d=google.com; s=arc-20160816;
        b=ITA3MFIoVaqfOBzSldWzlaaKneZQYJekuE7sbLzYnIm5VCyXU3I1b/zt9aVjSjrB66
         1aZC+ieAoHo8GD8Y1h8dRrINAsxnRWXsm+5sai7TenB3amaynBNiASjIBTFcIhEOORTr
         AkUfPaDnZpiBV6Kiwp+2wtDHynL632YvwLqYYUsmBCuTw3lV3Cp/TMNFOrFk2wGs/opt
         aH9XjXxogKA87MKpnEBeciIV0LGdkmg/n54hOQrg6IwFu1FOOE/864t8OKxeruYo1dI+
         ZKjQXV3w5afYxQf0vcFrgwUssAiEuravI0SELSGGDZHUjc6ptgfZVcAB27SRx66PMmYK
         Ibhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=A8AHfdiOIcIFYn4cdLXmnVP1mtws737pc1/uoPvAhvE=;
        b=G1JNFjBP/XuDdr6fzv5pab4Ua9yJQ+21bgsSASOCTQNG3G5BdeVi8TiU+gyJop1OMg
         oRQ6qHwUOVOYJcUEVJKvg+/vDQmGbbl0p98mMtE3aXZVf+M9NovHJalMzJ+yV4f8ztt4
         0cNNLaSUScs3OyXJTBJ/oBEk+1WJJNavgbO/fQWNdr79XZH4yBXoiCe55AdjuiehYBfa
         b8KQVW4os1nnysF+Nugvp3cYcr8wGbt8hbFuXVMp+gA5q17eXkC4AmtCM/DPku7TEOMy
         pqaPJsLvm+iyl4DhwUhiRCmJMt0wjkMzZ/R/havpY5c8UdQKUom+NvvAXPWr/ocNL7pH
         sp2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CPqQmv4W;
       spf=pass (google.com: domain of 3qnlqxqwkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3qNLqXQwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A8AHfdiOIcIFYn4cdLXmnVP1mtws737pc1/uoPvAhvE=;
        b=dekGSqVdBltvkraHOSWYwM7piumJOum8LO9JWovLZNBN9Wll1kg2wWuCujnuAxizFo
         uVhEVEUmMJ7Bax0K+AvM8v17LkYmwR1Qh+KEN9/7HaPNSnNPt5By7QTpK63ueyEwciFD
         teLO8uxWpO7DYZhAIJowOIruAcfmscEOWXhY25kRizmJk6YjsjBc5m5osr85Lyj89ygx
         9MkfIPGNehntIkP9yhPWfNwJ2Sa9fq9RwAcTbIb5WBzmmW/6Y36kzonoQBxcKDeOH0p4
         kq3zEv6s1qDX0GxiHY4rKDwgV06DIYYW9qjaOSVHDlEquy9/fcgEoa02iaEWx7ri3X9H
         /gJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A8AHfdiOIcIFYn4cdLXmnVP1mtws737pc1/uoPvAhvE=;
        b=qyzc7nwccYM1YhOk6WWaqd2v5omGErC2BX+/8mpjEds8Aw3GU9J1EpcrT064QR4Ttr
         Q+dQz8jqdzSm3DJYRgSex5JzoXpdC1Ub5Ib1Uez8NsGx1+Dk5Xa9cb7beaCG+JPobm7l
         mKCvmlqptPu+6XyZQf6UnyTvAvS8LHxKggWXq4sQQJy0gph7PguGzoC24yL6Lczt+g+0
         2OYjISQkxfGFZk2MdcUKDWN8Em+/aa9kuR3K9box/07jj91TbU6d68BZhiizxOW+5ECJ
         VrektrAS/6k677zxp8rXYi0mt3Yby+WYp1mz59Lw4UGr5B7DFcstC4xkxpsI2nFNSIlf
         lNvQ==
X-Gm-Message-State: APjAAAUwiNQYh1gUfeurYSZk9RWMPAEduls297nGp/Y8sJ44WNJm0lhU
	kSDIwkYGuksu9LVgbhXecUw=
X-Google-Smtp-Source: APXvYqzRiRxksk8j6YYNPak59ACdoX4SWo2alZVBzL4/pGZ8VT9PygQfnzSThf/OzHYw7IaAOp7+Sg==
X-Received: by 2002:a92:45d2:: with SMTP id z79mr16583108ilj.76.1575670442013;
        Fri, 06 Dec 2019 14:14:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b648:: with SMTP id s69ls1365285ili.10.gmail; Fri, 06
 Dec 2019 14:14:01 -0800 (PST)
X-Received: by 2002:a92:c0c7:: with SMTP id t7mr17201550ilf.113.1575670441631;
        Fri, 06 Dec 2019 14:14:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670441; cv=none;
        d=google.com; s=arc-20160816;
        b=zYURIa11vr6pn15T2wrKTGqUN5DGxXnScA9XYqIIFIIQUBpUi6gN8J9HD767k/PNnS
         36PV894Qdt5x0N7431iDU3AqLQhrotNAi3o6NduFnB6h8M3oEMhgdoZhYqyBnAPy3wkj
         cpuC5epiX1ApQ2dMbphTPmxvx16jOU8X7XJ/ollq0od3XmcabZvoWi4hO3QsdDdj3HDm
         6K2A6wm39GW2J3NfOAbwjPP5d/eM3lfhNr0K4jftoPTxo9V/MNpF3uWBYiNzc/6Vszj3
         PuTRo15VDaa4OHUp5HS+wFnV4MUweIoKoAjV+y+Qo/3hK9UwqYzwLExqQWZ2Oleh3S74
         9/Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=8cEo3bnB2JOErtud3GvPd9W0QqVJKhLYL3PxcgBL0pc=;
        b=BgtjWwc84Fz8kFnTZZJaTfe3HbpIOHmrKpDHRwqT9rtfxYSie03+SnPoIy9D1amkqE
         sGf1roIb7zYDhU1+V/PngSSDlUVaz3UpM3hqnbHdxxFxl/pXgsqVQE9lUVr/CuoszTOZ
         KecqITNaztLXLJwIs+Aqh/c7VyLoCE6e0D9dRuMIdlZEKDzIcuEEFAvuwLx/O0hjompV
         rmQcj5SCO7GfaO+SsQNuQTkIYHQxPEs/qv2byD+qNLYaw5ARppBVeaJH9KrwIVe9LrQu
         +NBfk8AFz3T4nPCXT+p7Gp6sFGdaLWfJkQqnlCz08mNoJnAYkmScaFY6b/3KW/9Tvewy
         NZlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CPqQmv4W;
       spf=pass (google.com: domain of 3qnlqxqwkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3qNLqXQwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id v3si968023ilq.0.2019.12.06.14.14.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:01 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qnlqxqwkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id b8so4785680pfr.17
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:01 -0800 (PST)
X-Received: by 2002:a63:184d:: with SMTP id 13mr6053846pgy.132.1575670440912;
 Fri, 06 Dec 2019 14:14:00 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:38 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 02/15] arm64/lib: copy_page: avoid x18 register in
 assembler code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CPqQmv4W;       spf=pass
 (google.com: domain of 3qnlqxqwkao0hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3qNLqXQwKAO0hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Register x18 will no longer be used as a caller save register in the
future, so stop using it in the copy_page() code.

Link: https://patchwork.kernel.org/patch/9836869/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: changed the offset and bias to be explicit]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index bbb8562396af..290dd3c5266c 100644
--- a/arch/arm64/lib/copy_page.S
+++ b/arch/arm64/lib/copy_page.S
@@ -34,45 +34,45 @@ alternative_else_nop_endif
 	ldp	x14, x15, [x1, #96]
 	ldp	x16, x17, [x1, #112]
 
-	mov	x18, #(PAGE_SIZE - 128)
+	add	x0, x0, #256
 	add	x1, x1, #128
 1:
-	subs	x18, x18, #128
+	tst	x0, #(PAGE_SIZE - 1)
 
 alternative_if ARM64_HAS_NO_HW_PREFETCH
 	prfm	pldl1strm, [x1, #384]
 alternative_else_nop_endif
 
-	stnp	x2, x3, [x0]
+	stnp	x2, x3, [x0, #-256]
 	ldp	x2, x3, [x1]
-	stnp	x4, x5, [x0, #16]
+	stnp	x4, x5, [x0, #16 - 256]
 	ldp	x4, x5, [x1, #16]
-	stnp	x6, x7, [x0, #32]
+	stnp	x6, x7, [x0, #32 - 256]
 	ldp	x6, x7, [x1, #32]
-	stnp	x8, x9, [x0, #48]
+	stnp	x8, x9, [x0, #48 - 256]
 	ldp	x8, x9, [x1, #48]
-	stnp	x10, x11, [x0, #64]
+	stnp	x10, x11, [x0, #64 - 256]
 	ldp	x10, x11, [x1, #64]
-	stnp	x12, x13, [x0, #80]
+	stnp	x12, x13, [x0, #80 - 256]
 	ldp	x12, x13, [x1, #80]
-	stnp	x14, x15, [x0, #96]
+	stnp	x14, x15, [x0, #96 - 256]
 	ldp	x14, x15, [x1, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x16, x17, [x0, #112 - 256]
 	ldp	x16, x17, [x1, #112]
 
 	add	x0, x0, #128
 	add	x1, x1, #128
 
-	b.gt	1b
+	b.ne	1b
 
-	stnp	x2, x3, [x0]
-	stnp	x4, x5, [x0, #16]
-	stnp	x6, x7, [x0, #32]
-	stnp	x8, x9, [x0, #48]
-	stnp	x10, x11, [x0, #64]
-	stnp	x12, x13, [x0, #80]
-	stnp	x14, x15, [x0, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x2, x3, [x0, #-256]
+	stnp	x4, x5, [x0, #16 - 256]
+	stnp	x6, x7, [x0, #32 - 256]
+	stnp	x8, x9, [x0, #48 - 256]
+	stnp	x10, x11, [x0, #64 - 256]
+	stnp	x12, x13, [x0, #80 - 256]
+	stnp	x14, x15, [x0, #96 - 256]
+	stnp	x16, x17, [x0, #112 - 256]
 
 	ret
 ENDPROC(copy_page)
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-3-samitolvanen%40google.com.
