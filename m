Return-Path: <clang-built-linux+bncBC2ORX645YPRBK4DTT2QKGQE5FW5TJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BC11BA980
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:44 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id m6sf16978371pjo.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003243; cv=pass;
        d=google.com; s=arc-20160816;
        b=R7mDuXxw+I8obTbkBpyYE+2FVZf6kKly8nHOukuZbic3Cyf37foDlM+QaUqsB4lQsN
         M5C1fkvplsnsO2OMffM8sk9JRo0zFJcYU2fM7YF2mEzjfANebPD1EOH4KIfxvXTwZwb6
         aeu0G7CM+l1la8y4eX2Oor3uLGZDkE3SqZzKFKKjFvJIpBoE78FTgbYylMpHO1cyI7e+
         GQVqquvBprmiA8w6JgU0x6jm/i8nLQU6d7SYfbllxkFNuPKE0FHvSTxmApNd/B6lP05c
         GKJmi+RClduTyICMOUYrjg7s7jTIQM06+G3AZiTt3scCr0gYXzESjN1lPmieuxSDlGf4
         WsVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=XZTfhdT7geG/U6hcD0x4tES3gT2wttAUAheH28pXdFY=;
        b=v5D1oyt5UfiyHPeZpOYz6TIiFlujho7vMdiFIZ/ngGcy5eAc1ye3YLoj9SdusYCRly
         LskjmHQvywzNDShykMIpiPa3xmWxpVZb4IGnoFHT9VYgiVQK+Myf9ZXoIg7iA4ETIvIr
         PQsZ/KR1m+/glVm5k1lgmWGWT8RnXkDcTbxLzD+ggwMEGPSw/qKB/Jry3lsdQ9yZFXja
         zjo6tnZ9Gotz1Ng8JQBQ51Sqe2HTg4qb75cHbeQbh30WcB2Ttt9NeFjQLv9vPzuc7lwU
         Yr8f+Z7YeZ+Nvpy0cOZa6m+NuirlOoJwlrwanYtUIqJVyH8DXva0X/cv7Kuu5vROFqf6
         QucA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kiSv8CiU;
       spf=pass (google.com: domain of 3qqgnxgwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3qQGnXgwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XZTfhdT7geG/U6hcD0x4tES3gT2wttAUAheH28pXdFY=;
        b=jCn+QXhrnoNqiWa2dt1wGtSpTN82ArN/e6VGHqDNEY1iHgd4esBLPr2fiPEWC3AGvo
         U9X1Y8NTVGocKCMhxIrZF76lVby7CiNLfPKKrNjKhPdKU1qEYGuQTmLEifIB1aycApII
         U8jo8utNGoWzf6pPL0Oj36XebZ5gP75S8WdoQ7D7e/zwG03pNBPQPXvO8eUVaAAYDsKq
         qQ5gAl/5RuZdRO2IUuYhHmbDlrR6hyEJg0UzYzW62L0IZfl7y4cM2DrvJzM4SrZxBlBg
         1AB2SbNeNyHnH8AXwwyLhkySJy8T08SETuyuuy/8010fdRuW3ApyLvCshBL1aDN3CFTL
         aTUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XZTfhdT7geG/U6hcD0x4tES3gT2wttAUAheH28pXdFY=;
        b=mk/taYcwIG266QXndRo74eagNlDs+zh5FsX4vfzF/reny1alCx4E35+cqaRFPtl0DL
         e8krXATFl8ca32GevPzDFzb9tk6lSB+1GeF4a7OMS/T15eGorna1B7mwsp1KSOpoBAhv
         GzRXJJ6ILgJSGxtgJIrLQBClUtQkAj7LjITvogCDiyeUf7ss/H7smrlE+fA1pM7qI/qZ
         oPXvRv4d0p7ccEHK9gxlHJN6G3Knqktpe0GUPo4M51ae+eiwdPHc7pNBZGhRcLG9N0fR
         MjR1hU36IryW+zhpor5Ed8Tj8AswmDpRCethN+BwZOYabnIEQbmEv5uBQjv0jpt/9fNo
         IxmQ==
X-Gm-Message-State: AGi0Pubtozs1lP4SJWtaZaUw5C4UAHxvFEbsM14Mfwvmxi2E+QLDpBPX
	GAwZWV2idIIDguSGdWZE/ig=
X-Google-Smtp-Source: APiQypIz1Z/hmhZ7ZsjAC5zA5x5AZg0JRUyAQx+p9BzcYy83mvFIBC80iXxlk8LgwvvN+iawRGv+Yw==
X-Received: by 2002:a63:b302:: with SMTP id i2mr10910861pgf.365.1588003243178;
        Mon, 27 Apr 2020 09:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b488:: with SMTP id y8ls16230080plr.2.gmail; Mon, 27
 Apr 2020 09:00:42 -0700 (PDT)
X-Received: by 2002:a17:90a:1b26:: with SMTP id q35mr25267174pjq.149.1588003242737;
        Mon, 27 Apr 2020 09:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003242; cv=none;
        d=google.com; s=arc-20160816;
        b=JtelAueMr8srPGl7ocXGVh2OsgYOl3EBSooC9EYcxNBlowFuWcc3rUtZDfQJpCWV3r
         dlcWuxCFg7LRWABZZUYsyw7NcdklkFjtlnea/96y7MxG9DNftbbROyMcNXbPFWM3+Vee
         g8OHd69dmHFyYsJ4lKuLfxGR5h8emnL1fRBgJryUZuIewPcxe8d6inisbXD/H5AAw3Eq
         do/MP+BCGFn5wMQsqNT1MiUcanOepoWZ2aZ1CFxgemtyjWbaf9A7AgrRPcJRkpgGXI2s
         bcZKRN9hzu5AU1tLNLpiEe+iXciArjIrASgsNg5KiuHGdC8LkT+Q2A4Y/0qoaSHRGUG2
         bmPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=vWKjMu4YpZkMxmoaABUBOKf1igZnxFZ9c3Ig1J3O4Og=;
        b=dRp/1jvGWpbIhB3JLDV694IwFDXSTsG5JfbLu4fY2y3kr558kKiEUa0zZ2DR6TsV9M
         Rm5/g1zkx5NGT5PcIrAjavRf9x38aGQ7cDp11kJOzf2GZA39Nbum1vB0b4so5GRkZykw
         fsMDtgeQMdFghnvE0AgCyxmIlS31i5bN38lIyvtTZC9McwiUxWnBukUZAAuLNUC0Le8v
         enNmdea7/ummjraiqJ+oalAD6iOhZ3D1PGsyfXlML+SaXReQc1p9b8UAx1gemG4tO+YO
         NLQuYx4IfqBN8aqf/Ur/dyKKkwvABvC8BY2WrmL5cVNNuCe6LyMM8Shct/6StH0vy/vv
         yJoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kiSv8CiU;
       spf=pass (google.com: domain of 3qqgnxgwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3qQGnXgwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id k3si53967plt.1.2020.04.27.09.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qqgnxgwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id c89so18434635qva.2
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:42 -0700 (PDT)
X-Received: by 2002:a05:6214:150e:: with SMTP id e14mr23211009qvy.65.1588003241754;
 Mon, 27 Apr 2020 09:00:41 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:11 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 05/12] arm64: reserve x18 from general allocation with SCS
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
 header.i=@google.com header.s=20161025 header.b=kiSv8CiU;       spf=pass
 (google.com: domain of 3qqgnxgwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3qQGnXgwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149cc5d5..409a6c1be8cc 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -81,6 +81,10 @@ endif
 
 KBUILD_CFLAGS += $(branch-prot-flags-y)
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-6-samitolvanen%40google.com.
