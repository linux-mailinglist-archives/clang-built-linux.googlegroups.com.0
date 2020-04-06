Return-Path: <clang-built-linux+bncBC2ORX645YPRBVNXVX2AKGQENDLMU7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D0A19FA6F
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:41:59 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id s1sf274434iow.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:41:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191317; cv=pass;
        d=google.com; s=arc-20160816;
        b=N+lWXuZuIYd8NYF0iVwVS6VYytMJR6M9wzr6ivWmE8dU74vxtIh0x0aIU9NjezQTv0
         55LhRj8NEOAe4fGD+hwX5iCzXeezApcZ1pm3R1uXHGTl9wsj9liaLxhiig/MSvUhCncJ
         GGy7Jv1HN+/iAFArioeozCjCPM1pVKju5dpaALGrBjLIDq9wJ6X5NNCysybDJUhJJ6e2
         Rr5MLOZbJ2GGmCFd1LZfdik2HfOcYOBbEGbipGwP3uz5zxeI0AXhKULRqHJk1u5o7OoM
         xQtCtZ5mBa+LV/j6gxD5fUjaTYicz7WGYKF5XJ/7lQJOvO1jrc/j/6ZImXFAzY69cXnY
         j/sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cv830eIAE11PgxMXAaNmN80lMzzYk1eAJ6W5/WpFloM=;
        b=mtIWGmfG/MF+o9hoo9BL2/lKauxMKADaal345PpZF8xOl0u0/dZY1amyX6G+TSMYve
         X19Zk3VmTF0CYXsPxTSk1+UZBjrr+OsDat53CU4i65PKQ8L+70bwhzUAP9h8ZJT3tkSe
         RgPKblOpcWwHtPFnkU8rAo9x5jBwBVw3H92havN7sq7ckPeyada3N9wp3j1V5jYNiUMl
         oWdIvjyh5QcKX2oMuHxkjggahhVUf9u+bsTSfPNITDv6r7e2p/ApbIZeEpR5H5awo+pb
         ZuTRbOpCTQS+m3eIPpXcOuwn3IKIZr0f4jRW+6rj62DcxW06MhAk3WB3ssp9pzlsY2zj
         3fGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="H7r9/K1P";
       spf=pass (google.com: domain of 31fulxgwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=31FuLXgwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cv830eIAE11PgxMXAaNmN80lMzzYk1eAJ6W5/WpFloM=;
        b=Kj7GlCcNfQ8YTRJhx8dPga8i+j2Fd9lmcBacniusyqoCRlVLqx63SKoj7zNbRT6Xb8
         oDAm+E4Wzk9IYhtzscEGGYPGHO4/o3IUg8O37O5lqHyi2Ho/ZFTF6fdAiqHyfDq6Fb+R
         Pj8Vmj52S2IgaBe508JphOCLebuKlhvO9YZ5EubzUXmijYVgqoYGW/qotGK5XkrUwzYZ
         QhzedvNmS3sxfzuFXUkg6ipNz8e9i6MHx77gkiU+PT1WdARpIn0Gf8QuiP9L1gjJsZ7u
         2QKCG6nAd62hPanoUVssXTl6Z8o3yysqzDy2kRswccIR3yPIk/9ZDgHiOs9D54J22Efs
         ColQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cv830eIAE11PgxMXAaNmN80lMzzYk1eAJ6W5/WpFloM=;
        b=S7coDZc7mSFQAM65tbHY0fSKGr4H2RbjAmo+l3+nqxjy6VgfH0lRLVxVBeUn1zHFYD
         Pf00Mt4CllT7tWZFnETUKxBleV9hU71rFieJ2hVwJUG6jher2GMWFCeLRtSC5vSt5GyO
         vRnbh3+xTvaVU8+YAbUAtDMFckbnWh+PrzjV7gOpxWKqDlFg2VmmPLA4N2jF+4yPhNGj
         0dI5RRQx2aPrhci9z8gbrND/67dG5RGKzwQmS66FI2XT4XE4CV/9VyM6/jSOb48jzu6d
         RtSpgaXrU6qcTqZMsH5MJs7U+jZEg4CD44KW9lHEWU8t01JOCsMN3K82W9pnQCF+ajI9
         8U/g==
X-Gm-Message-State: AGi0PuYQL3Iu9XaCMa61bRhUnkBHU2jKQPehf6f27W6oDuyMgmPDUg2g
	pntKLv6SyvFQvP81WBimOhI=
X-Google-Smtp-Source: APiQypLtnNj8p7lGt496Zf/jyP7Rdh1fK4Bv5KAkgCZ3hLlUzoJypAz/jarZZ24z7QezrHMCYeZbjw==
X-Received: by 2002:a05:6638:3a4:: with SMTP id z4mr128625jap.141.1586191317638;
        Mon, 06 Apr 2020 09:41:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls79921ild.7.gmail; Mon, 06 Apr
 2020 09:41:57 -0700 (PDT)
X-Received: by 2002:a05:6e02:be7:: with SMTP id d7mr171913ilu.238.1586191317230;
        Mon, 06 Apr 2020 09:41:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191317; cv=none;
        d=google.com; s=arc-20160816;
        b=i+kimReEScYH7rL9NQOGxtM/ZBpFDAZsGqDCyZbhqrGa46i3aIn3QoT7o8MAC4XVba
         PQ7ErGIvirFCBudobRX2jxTUpeEfT2j8t+LIP/bPTOSi/nO2ltn+YpB/bO0cOsMmLhB7
         apo4dBAua0je6sdL4GobmbGQmimb8RYPSYVtCPXf8hkeftWG8SJ6pmNRga8ZabinzMbt
         bVNq1YGEoFzRHLWszGbINK07UEDqpxl/F2jcA79j1HCnyFejn5eJU/rUM88ZfVmT1WfO
         66Jbqf5QLK2ac1DR6uJSVQRIvRYYD6RzCnJGYucg1wNucgWQTDeH5MJo2CMEoGYVlgkZ
         GXGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4apKHH+0KXGOaGE6jTeN52LWOcENawq8hrV28HQBrcA=;
        b=Walx5iBagWqJYyWoUnHLm3lKhmZtTxfPTExy6HiBfB1zGafKYO2ZtGbzGMnHnwpK5O
         iWq3wC606EXYabP+hpZy51CMGBXdM1lNO2hhu301kbu+iartJS3fxVmL13KtT8SxYZ5Y
         bd/Gz8HqulfIu7iuj+7dr/Ga8QymCPzpsfgzjsts+GfdtVK+IfmfW/omlJWcVcfrD9Kp
         YDkEfsHhgQ+9vITlk8RADjGrjw6zDCTybFN5z3bYZajYRQ1NCy7a6oyIzbBim/mq2ZaB
         /T5TbY6cH+zIs+G2QznjoNHqJFsR5fLtlRm1vxBZIPMQQMldfFngrTglY1KuINqFFmVE
         1X5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="H7r9/K1P";
       spf=pass (google.com: domain of 31fulxgwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=31FuLXgwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id u6si16636ili.3.2020.04.06.09.41.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31fulxgwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id c33so13487115pgl.20
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:57 -0700 (PDT)
X-Received: by 2002:a63:9043:: with SMTP id a64mr22525247pge.308.1586191316557;
 Mon, 06 Apr 2020 09:41:56 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:17 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 08/12] arm64: vdso: disable Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b="H7r9/K1P";       spf=pass
 (google.com: domain of 31fulxgwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=31FuLXgwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-9-samitolvanen%40google.com.
