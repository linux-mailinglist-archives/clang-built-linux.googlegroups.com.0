Return-Path: <clang-built-linux+bncBC2ORX645YPRB6VX2XZAKGQE26UBREI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 483C816ECB8
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:40:11 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id x2sf54182iog.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:40:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652410; cv=pass;
        d=google.com; s=arc-20160816;
        b=beoPySM3mRSFb2RZuvga0HI3ArA6iMw/t1Lc/fYSCQ62+Co2jTsXYIq0bkaR7w6o5Q
         CbrVviE3hg9D4dalbxLKeaiP+IWeS51YI28IWGxpATZIWrdVa53iwoTQafrc8vnOnOqm
         mXpMzVMWRJT5gcBbQh6y81Knw3vWuWs/J1LJR2n8U0JLCEnGvDmyI/x6B7Yg+4X4ldFz
         UFxHdikQnACXXiqVlLIF/7o0CrdFU6YtcfjapF1n1FES1eP5fdA//qKfaQQdk4OwQLYj
         Ro22TcfEEXFLxeRlsuuTNkATiD7IdjzpYKUP6mVsMP3rUO89cEY/PtZ3u1+t9lNb/34f
         DsFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=djFfNyCi7qwBsg6hwaXAhF2yv0y38/Pbg9JIDy/b+5Q=;
        b=Q+GbWHCsEa7GcKTJ1qgrfILSgvV0PlUUnLeENrbXZYYjNldUe/IVAWzI2K4OdtAtZU
         do9qoU61EZ1Ys8eW+Rpk5Mqrx2vVs5BqSzT3a2tFNjR8gPXX9sY5m0QkPQxL57bXWLUX
         N7ANGSL1yfagUUVdbvPqMmLD7kF7CxUmU5tWkRDMCFDJlZc5H79Rht2q/UKk8aNj63B0
         9VFAlhHs8M2tV4DXBQKLukiZ1fAvuGAvP2FNYjABTy2MRU6rRurBgkDJOSTMKWWMr8mJ
         9MQ2P8DTZsBfOiHcUVT+vIG8E7cDFZHTqtVzekfPJX7A18BnNKp0GcTHEhVSf/5H3Szk
         ZTJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xi2ZbcU5;
       spf=pass (google.com: domain of 3-vtvxgwkap4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3-VtVXgwKAP4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=djFfNyCi7qwBsg6hwaXAhF2yv0y38/Pbg9JIDy/b+5Q=;
        b=cghteG4it8LD1zjeJMGE4A6dVaRcL04soNTVGWltf7avPD3Owzc5EGVYA4OVutoK1C
         iiPkYo4r6MHuq9xtrk+URU1+vMTDXRQZIjMtNvulao6qSRlVXcGoLniujl2CavbyuUGG
         vnRrA9qt4gY5yV3USISXhn3qGMqDcL9R6IUjA+KjfO8ZiPNRcMgvpmds9annqNCM95sj
         rKp0cB1GXujURYT6DH/4kXFGGQ5/UGHyjdkZbnyZvOCsDrvgmpqhWS9+UHoJEag1ivLa
         kpNDweBbDLEWPo2zwUHXfBE6KWrEs6JBLV+5GO/0fO3d1lQYdxX342iUJDM56stMzhgG
         mHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=djFfNyCi7qwBsg6hwaXAhF2yv0y38/Pbg9JIDy/b+5Q=;
        b=FDJzVfW4UMeATPqY3n9Mo77rbeG7P5SGA+V5EFtxRJQWwxZxmohYYYfv1yRrxPdMFh
         JkfG1k5bgnbkHFL2F2Xkl2Ge5JPjQL6AI/6Khw5dUsA804BokA6rSDUotwPKfGQ4RFYC
         XuyMXNYX6l3bJVfk/OUVnJoYidIQL3KGFEEuQMkdjiEILetZFRftACs+lUj7H+3LLS0i
         /uqpJp1AhEMoHxv0DSLxH8MZBIUR8yICm2i/FFeea2osTtFv5Fol9q5D9f8lrnwqpViQ
         bpo/4JwRVlEgjf/pIhxVLWa0316jgaEXodvmk+Ac5VISTQR5kOnpKxQITFctyBVrpFvp
         NYrg==
X-Gm-Message-State: APjAAAXhJoKKl5imjUNapEL72VbdamaRl/KY75R/7Lgnh5ApK9YzRW91
	AqYJtu6oyUbrYb5FnMdQmvg=
X-Google-Smtp-Source: APXvYqxJG3czYpltRoR/VuhtA/yRtVm0URuRQIIOut8t8MB7afGo7cZey4GO3VDTsG/C9XdWTr6paQ==
X-Received: by 2002:a6b:8e45:: with SMTP id q66mr157436iod.308.1582652410258;
        Tue, 25 Feb 2020 09:40:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:69ca:: with SMTP id e193ls1247583jac.9.gmail; Tue, 25
 Feb 2020 09:40:09 -0800 (PST)
X-Received: by 2002:a02:cbd9:: with SMTP id u25mr61669842jaq.106.1582652409789;
        Tue, 25 Feb 2020 09:40:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652409; cv=none;
        d=google.com; s=arc-20160816;
        b=id2J0jiOyaQ8BPwkfNGYWSWFCLjLfLaJhqB3TKI/GS38+4U12wHOQxls6isp3A43xW
         fbjX2LMMgV4F0luujwQFQISrQ2lrtNgoTKjhjRPACNsYZjCdDmaIc1G3x2NdMl5Hfa6B
         ov08fXbV19Dy1TRW7rPLa7IuE5UBW7mRD6m9AWXM9j8fWCQXwIy1vlCZt5siYHr0ZPcD
         9PfNgczN2cNC5u34uDXa7VVzTLad+fy8Y6By4LiHnbnzLMbl5osvKONtrLu0764jyve9
         eUAaO6EFlrgKdFvBNy50lJI6cC6kHVVcLe/DmXZm5w4DPmFkbDfFxQBxhRe1baU3jDaZ
         KDtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=W8ajq15Euo0CBn6HLEY8Ur3IDCmQBKzronvmXuYJ1Wc=;
        b=B6T2a65l8OkralgDJLKs88tL8Vawvq3bTLN9cZHSBAs28YgG4HbzCPw04p0Mq004dw
         0QODpcaEwYbyZ+0p7aLb5y+S6OsQ9G/UXR1wKIq4fuXPmqQvud91BGM6hOvY7OaXZ5c4
         qE8uVSmHDGzojW+5Mcazq4fg1a8Fav90yO2bFsmDxDOkHOjtCTuIpnm2mSoYDAdK8Eb5
         QOC9iNTLSIzYutS6WaRIBJWSWfmULEI4iH++CYN9XEBRxb8xUJPrc2ZKzFgA9GybXZ0X
         9EQJfbFosq05cPYcABJ06kaTXFjG+9/zngd7U+EKVgFOAPN4wOgQHEMIfS5e85bjjInf
         DU4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xi2ZbcU5;
       spf=pass (google.com: domain of 3-vtvxgwkap4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3-VtVXgwKAP4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id d26si8403ioo.1.2020.02.25.09.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:40:09 -0800 (PST)
Received-SPF: pass (google.com: domain of 3-vtvxgwkap4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id c19so7868552plz.19
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:40:09 -0800 (PST)
X-Received: by 2002:a63:3207:: with SMTP id y7mr3943460pgy.344.1582652409047;
 Tue, 25 Feb 2020 09:40:09 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:29 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 08/12] arm64: vdso: disable Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=Xi2ZbcU5;       spf=pass
 (google.com: domain of 3-vtvxgwkap4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3-VtVXgwKAP4ygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-9-samitolvanen%40google.com.
