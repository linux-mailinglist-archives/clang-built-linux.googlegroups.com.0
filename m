Return-Path: <clang-built-linux+bncBC2ORX645YPRBPFFVPXQKGQEZXZNPGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4EC115903
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:21 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id o5sf728558oif.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670460; cv=pass;
        d=google.com; s=arc-20160816;
        b=X3QbuecETUx6ijDgvJy4FqgVQyTq8dOgmR9dDmzUQRH46/27qxX/+Wb+q0arqzgquU
         Q/MbNDX1O13R3RxPuAGpE0vcpIbj5HnGWwgcYkZl+n6/6obb9vbHsSXgg6N6QgaqYl0q
         JaAs7+/+XLM6LGcxwfxriQSvtiEj+eiVUjHWKGWHBfInLbMdzPIp+TaE+8nn/JzF+nGL
         PafQPcRy65nWPHNaNw7OKbHKsn35shu8NLOukXZ9wONshcC/d+WA/XDq5j9e7m6zs7Z9
         O+5uP/sLc8cGnA7YJHKoFcYTuy5KIZw8AVSlNTeb1GzfRNGsiaFftjbBOEDPGvEHAzNp
         us9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GnfE2t6Kj3t19CicMIrfcnLbhg2yqKUNay6riBhuibo=;
        b=KlwFYOsgEgneUabai3P2HTTNFLomUAwuIuoSfUOKFHA1DwTLM5nhaCCDSIgL16ZIeN
         lPIs1wzfKBnqq5pwvZc3t9a6MzfctqvkF87jgfliJCtVC/fJiDBT/DbzUUFoUXzkq/WS
         2LpSmcsm5IaH26xAG5DiQz0SVzLt31pdxUnqM028hD8MaQGO3AsEdSAnclyAHGflRm7j
         MJ9GXUKBrI5u0ocYoK5v5wf3yXWBm7/dIBqoX6B0x5yYAtLt83euHRah8DzMt1EO6oj8
         aePNr44SpfUhD98T1n1TbF+sJzC87uwMP1Ith9aDkaxqh80h5CIk9wkEQyj8iPpahqDJ
         b7DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=au1NZhTF;
       spf=pass (google.com: domain of 3u9lqxqwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3u9LqXQwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GnfE2t6Kj3t19CicMIrfcnLbhg2yqKUNay6riBhuibo=;
        b=DoL1BT05T4bfoDlh3oPbFUd4EK5dcNJn+rc/hjmH+dOzLGnTeNkVb6QqJHilA1IyRo
         kar6MvMITRtlgH3H3Vn81zF3SSy0WzWk2JR1p8I8AwC1OfDLGfonGkHgXsul8/ePCCJ0
         F6G8sSqhhI1GA3/KDi4gd0Kz8EMBsvLUwpFgZF2tC3O9yoboi2ASMMG8yeDvw7LnEjap
         qVnzpWKhcMpr03sIojb56by7klxg/FFC4xXlmo9i+VNXp+HeU8s/WSYwD0LzUv9T8wvB
         wPRkgJlqCsWQ8Wo+n9HwwW4vHIfV23S+HsYZGlFLBwlQt0y0oPLPqbIXkHtI4MPIAJ/5
         ReZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GnfE2t6Kj3t19CicMIrfcnLbhg2yqKUNay6riBhuibo=;
        b=WwB2UKbKoWKuGUL0hKPk+yLtcXa44mqGBq7WZ+mv94dIznnKutC1viWbq0UcsQkWir
         6+G0nUiAOm0ypuVl/i5IWu1DY7A9K1MjtOZ/+N5b967lWzs1Vj6nQ9DOeNnlYSGG/L/2
         Qv1R3FyIJfIYQ8T3Vvy6XLX8hvCr0jNHX19a2N5TktVYPMSdowyyscRKHirFWKxgxE3X
         G9PEBM86AqBXDzIy686RtHUeSldQamUfG8gxogsQrwmCDfMJSQsTdXZdMwU6IlRN2Dui
         lkHjtP683wyLnlXK44DqVkRaY2sm1Z4LATn9cn5tDBHp4KuGLLwl6qa3Gh/3OCY6UobT
         x6kw==
X-Gm-Message-State: APjAAAU2U4Z06qEpWg3b2ex1MVLgQtZ4H89GpcGv0Fi09GKu9VKjTwRG
	Ih/N4AK5wTCp93Rb26WT8oE=
X-Google-Smtp-Source: APXvYqwOSHpbQ3TzEg1zF2JNC/xQSH6v8e+DJ22VctpTzphL94uoiMVIJk+8rnF8c7gqdU+CgpdnQQ==
X-Received: by 2002:a9d:6a4c:: with SMTP id h12mr13250826otn.81.1575670460118;
        Fri, 06 Dec 2019 14:14:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c694:: with SMTP id w142ls1562345oif.6.gmail; Fri, 06
 Dec 2019 14:14:19 -0800 (PST)
X-Received: by 2002:aca:1e02:: with SMTP id m2mr14667130oic.81.1575670459771;
        Fri, 06 Dec 2019 14:14:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670459; cv=none;
        d=google.com; s=arc-20160816;
        b=FdvAwRLAqnFkA0nEdZXcdJZqmNv0HTUB72IW2N6wpex6qumR2Phhu83o594qORqwzL
         giL7HRs+cfvlfkP0yQ+IEhbXzO+pHg2WTzBzxWfAyG3aOVSAsaYXQy6QwLdayTblMOKr
         3j9R5g6ehFiyrh0M3aRq3drvW4tA2C9f25YogvKhAV2nKAvPpHGwTnvhzH2NrztO4DsM
         N6VNoDYtYsfXVVBJme+FOV/vO1XmWQ1SWI7uECKbKqK66yz22E8S/4eRuLVZu6WNX+nz
         t7NlUjN0BOSijci5xhrpoL28BEFppAnqNrxn+M7czmqEqLhPI56c1RI9GukgOG5wAd+J
         9SIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4aDgrw7n3sKpB8rlb4e1FXGpnlGkWbIPMM9nhNp+jXs=;
        b=k5iiemU35RETLuS0LHgVUwN9L530uG86WDO5CQ7Ex+yJB4/EYjCX/8cq/1Zi9/Et4Q
         NlphixNelLfl66EC2goFA1yzw3o8JuO89e2JhwV9/I9Zcke9WfOTba9cF5CVdoxffia6
         /h5MfJMN2EoV2i4AngINyZ4SQC2qDPdklw17fv5keZp2jux9BTomtEWNCVyrjzkse5rb
         vK7Xo1E4yqedG+PfA91aHOtcbSzz47ouKgyaFdh1BqDIADM6P8fisU4VajbMMtkY7Sba
         LQBQmWkq9WTDqQFaL7Dzfezb/LH7o9um5fJhopNeZTGkqsQKl5L9QPrNXv8T7Z9FTsU8
         9ogA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=au1NZhTF;
       spf=pass (google.com: domain of 3u9lqxqwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3u9LqXQwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id w63si745949oif.2.2019.12.06.14.14.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:19 -0800 (PST)
Received-SPF: pass (google.com: domain of 3u9lqxqwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id v10so4562610pgg.3
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:19 -0800 (PST)
X-Received: by 2002:a65:518b:: with SMTP id h11mr5968857pgq.133.1575670459027;
 Fri, 06 Dec 2019 14:14:19 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:45 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 09/15] arm64: reserve x18 from general allocation with SCS
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
 header.i=@google.com header.s=20161025 header.b=au1NZhTF;       spf=pass
 (google.com: domain of 3u9lqxqwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3u9LqXQwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 1fbe24d4fdb6..e69736fc1106 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-10-samitolvanen%40google.com.
