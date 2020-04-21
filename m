Return-Path: <clang-built-linux+bncBC2ORX645YPRBNVO7H2AKGQETSHAJNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A741B1B9C
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:19 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id n36sf5818429uan.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435318; cv=pass;
        d=google.com; s=arc-20160816;
        b=ucpYMoghUYFwLtqRmn3PPrl1wJ9e0kg9/B/yMuurowKr3KvTY20s1oSEYt4Th7iiSn
         +le39n4P1D3hFPh+riBgSkrQPNzIo7GEvsULJfQGwL4f+69Hq5uwmHb4A5R2Uw612qrD
         Mc2iZYVKT2nLlYm8AQyPT9VpwzCGiE9zXDvw0Yn6Ib6xteYZ3E/toKcCJu5YeKANbqH3
         n8g/Iy1/ihwYHqxbhAnZom95BsDb1Azt8FOeE3DsmCxWCqGh8akuBrUMNXaFoZfxBqPu
         ACgIszeAk5K3wm7RmN1JlVheat5VeO+jPPoWGeil7nz6Rsr42AFXx80GDTaeP+/wc1yS
         98Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=xgNwPj/OQf4VvzQQ53mfISw0mvx4xMlaewTncK5OZ5A=;
        b=uqdCjMjCU6vbDGxAwE0PG4vL4Da3Kv5wvU8IURt4IMNEuJ2gYG2EPxLwnVp90VwnwY
         JlNgxe5ZpWE8Vqyi3cfOVzmLtpGiXR7BD8//vfSnM3k1V9FVTq2j6glVKt6+juKyiaLK
         cjDHoLnblwWdpjoMG7f5qfAdiHy0nc1vVt/QVkmHRS+Rnz1SO5zect3LqmFjLYrOlnmC
         HnRxIIKxP4C1ZCnkESHBYMt5zi7lmiMg+uUN2kI2/x+i97XMEsrXstM+AQXNXiQxWNZQ
         oGDlAnghGMV2RvyKddgwv2YzS8miIhHvc1OiNLBhv+JNtB1L1Z23zS58n1aawPk1OBGi
         g/iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Lqh/lP7r";
       spf=pass (google.com: domain of 3nfeexgwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3NFeeXgwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xgNwPj/OQf4VvzQQ53mfISw0mvx4xMlaewTncK5OZ5A=;
        b=Tu+MgyIR/D7fDRHegvmVSp/G5pfh7vxc0IOhz1jr7zUs9yWrM0a26GBn+jW9Zwt3Sw
         VZ/wPSDmEQ0ozLZF0jIhq3HFkkI3pWtb+LBb65/Ac8NiN5vXsGQESxGxaBFA2du/S3Rs
         aOUIR1zS2O1GF7+2hMVD5kuAmkWU/pADciMNpCP30ps8EJCVDL4kNQpdmChuiXWh6ysP
         4YIc0Yj44/YLfktdKI/g2YYmbt0V6NHZHoMECRX9DD30CfVmrk7of8XsnamrUjapmqu4
         mzfatVwpDNmDDmNfuAgK8GDpXN0foKmW7KSr55b4CL36OsrBvTmhYfy9BuTwbngcJLb1
         2cOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xgNwPj/OQf4VvzQQ53mfISw0mvx4xMlaewTncK5OZ5A=;
        b=jO0zGCcGFw6sQkOAbyRHS7fiqOfrgSSiT8wixU5hRfZfAZX4zsBzDGplDxhmjkyVTO
         sOW+OO4kN3+laNIhJP9PIX8pQgsQOEHZCQQ6SwkIMZzhYJC3Tx5KPAMOSbw0lZ1rzLrA
         yW1DQKsuYMcXf3C613qf6snKumKIvplLst4yl4gGaYogGG3Q508lx7rSDVoV4RXJVjqy
         XjyDqHUESR55hdE2KnnGgELefI8kvvrC1C/IsZNIZCuwFpJMqeal4tsOAXK9eQ2N+pF4
         UzJtU6uP1rTgKadp1v8I5M4tOAegUbt+s2Wi4h0CIUykvLiJDCEy4/VQIHF6P3jsA5tF
         xMXA==
X-Gm-Message-State: AGi0PuYtuwXW/W4WOLtQLiszLgGJUdXYuOVIjQFdS5SJSll8bnCb6RLA
	vOA0XPVJU36oGkdW1JY0rQI=
X-Google-Smtp-Source: APiQypJUrV4Pbrw+wp24SIBf/wiMuzrG44pgvBj76Qq1supXjKobQgezLXLFEgpjPflhHNjsdZyMWg==
X-Received: by 2002:a9f:27ca:: with SMTP id b68mr10469379uab.8.1587435318182;
        Mon, 20 Apr 2020 19:15:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3742:: with SMTP id a2ls358573uae.3.gmail; Mon, 20 Apr
 2020 19:15:17 -0700 (PDT)
X-Received: by 2002:a9f:31c5:: with SMTP id w5mr10147779uad.89.1587435317731;
        Mon, 20 Apr 2020 19:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435317; cv=none;
        d=google.com; s=arc-20160816;
        b=YtpZ3FiHMruvc5Pv4NQr3v66avvwpW+eNnTrYlN36wnZ6QYqo0KoM1XIrquDB5TyEU
         scnDaxp1NZ2xVxDX4887b1lBgEf4tFY+JlokKASn+g9gBIDOEQDtZIvB+AGKx3rdLsNS
         Hxl2EStXTkd1xdFrCBQsjI/Mw4RGoexds8R0zu81ZwWX+gQDGeH8ReWY1xBCaxOUdnhd
         LBygya7P5LcWuG/2VPD2V2Omm//xry0v7rjEfcC27tI319WkjibD6Q1JmRIZ3mgxoCVs
         gfjEHSE0FJ2XCEaf34UCrbuFm3Ys9WszFSUidlGLXoTOx41suk4KHySRWWsOlbGpRZJI
         tCJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=MhRn5bu5/kvUh5QzOzRXssMosuq4vthGJuay/ttgTR4=;
        b=ogvrJOMaQ4d/27uGEXduZnHeOMy5ywwycaLUW5XyHRoF5P/PgagjtYx2t0E6WNPy7l
         8ox8Hp9s2KSAKnwmG88ssSI9LYXm/571lYEyR8QjOOMrM7uqT1UNZn9M+Rd6i8dw5lzB
         Zqq3LvuBD1CXjKSmRJlM9rPsJmPLcfHUBBUGY4qQEuCQY1J7AzzTcktO3Vpj4saoKIPe
         HHwaBZCU81g4FYO44NoTerSvC29BtM8OV0WmPHy+kBOcz7WzBuHhzBt/vFH8eK4bmceq
         dcvVqqYQyqqUZcKgPN4JF4x/n6aH2ip1hljIgOCmXW9KyepwI87fOJLES2Wu521uObNa
         YwHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Lqh/lP7r";
       spf=pass (google.com: domain of 3nfeexgwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3NFeeXgwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id v22si39319vsl.1.2020.04.20.19.15.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nfeexgwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id j16so11802649pgg.3
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:17 -0700 (PDT)
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr2791728pjb.110.1587435316700;
 Mon, 20 Apr 2020 19:15:16 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:49 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 08/12] arm64: vdso: disable Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Lqh/lP7r";       spf=pass
 (google.com: domain of 3nfeexgwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3NFeeXgwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-9-samitolvanen%40google.com.
