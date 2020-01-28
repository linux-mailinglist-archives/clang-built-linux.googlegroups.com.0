Return-Path: <clang-built-linux+bncBC2ORX645YPRBWUEYLYQKGQEDYOHUQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D1414C03F
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:50:03 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id f15sf1627163uap.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:50:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237402; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uv7s6uJEhLn0cRFitKz4Y9EZNzcXwE3qit6pswqCwkTXfIiJj6ByKWrv3w8oCoaEVw
         a4MJfRZA+WCoemA5XNAfE2C/2p7stAlBvYij0OCs6rpZCXe5lRsUgSywc5o+4lKnvzd5
         zAs+kg3spBPO+zy7QW7QZBRdsTYQeOU5ItgSB8YYuxBTIWmwKqddr2HUs2phjy25/BdH
         Rt2RUOD3w/8uEssKOkQ1Vr2ePcsQ2sGEIiDR8oDSn59EkM4kfxFNdFJryKO/R5rSnYAF
         jDXw0X9NuMmlYPMIhNvjx5sSbbJGj6MdIqEtSzqpuuqYDzEXIiTwljodI5yzp+GSmLhe
         ITuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/QufaSZZz3agZJPH6OkF5Vttr1msk/nR+zh6TT1+MJ8=;
        b=OB0e7Nm7YMWo1N+/3jKCvLkXuL1csEKXnmxsjKpCuKufRQj8AwobgDuCWD45Cbipep
         SfgFPT0JuKvak6VplfXAPUlhki5rGe2TLK1qLq6S1iGlRh8Ztdqob0fwXRWd4PYP5R5O
         dt8jIWr522iYC2eF/XCv9RzV/xr1bSVV8lS4Hwi3QEKWgmASCHxT7LDVjDuipSh2EIW7
         eoMvJU0hOpK4dMnsDfTL4/8zeXrouGB4yIF/YADiN2BfftGbSVM58pTB0frFY5qLmIkL
         von86SE9OR5lb27ABCurhKMF/0+equRSe+gi0RsaPqaizWVniPKSLOQWDALxDpcroOm1
         oN2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XUGEKZAh;
       spf=pass (google.com: domain of 3wyiwxgwkabggya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3WYIwXgwKABgGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/QufaSZZz3agZJPH6OkF5Vttr1msk/nR+zh6TT1+MJ8=;
        b=spJyiLVma0+CoUxqLWGOFoGrd2EHsGFr0V5G1qumbcd49iS+MjPYioPmpNLHSC034B
         55g2Jc3BEXeYOo3zRMBcxrOaXh3fp6MitCcusKJI5DucK2hJcMLDXL5C9yDB+CmfiTDh
         rb+lOjw8RmWu7nmgPtQ6fky07+KWOvrHKUXJQyyvwB8EpuPKsZ6z/GCDRCz41O3mhrmS
         CdcbnSUY7G1Y5AXYxp2i5wGxwzWAARvphTtt//RMgPoMBHsPxLXVFqPvPRa5eBMmrOeQ
         r8LJy1IdrMAFCI4ZjCYxn2HXzXCvCe5esXntPkHG9nG2mr+jLGb3ZDaIuBDQKuIth3eE
         hJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/QufaSZZz3agZJPH6OkF5Vttr1msk/nR+zh6TT1+MJ8=;
        b=p/T3lHIFASAKv/NTW9sCsqlUT8KLascaCpuB5e8mtuV7GmB+BQXqKuaRdkNzZHg8HM
         jCPiKRs2BAcjpdf1ukjmW25Bwd+Iwz2kOSbTLrYwn3sbW2qfmnn7tpYgXjC0jf6kiUoF
         1XE1h623xjbOw2OvxdKcgfMp/5PZO7ZGfPYyFU7GLnMf615y5G4tel3EOb0PkxU75KOT
         TJPENohI2MXlzPka9QU0GuFgn1sYxD54rQd/lpjaa2vuS9QpUBeLIjPZPX5EM1EKsH4X
         UGdizrzfOHgXxCERZrqV8B9xu8aYz3xWJ1nB/4iXfV13qaqhd3LuPnk7s0JpB3AlOZYF
         K2sA==
X-Gm-Message-State: APjAAAWj+iIr5zyyBi3r/4dScYNfWyirJCOfNAKCUVGzM2BtApQifsWI
	F4HJGvM9AtQZUlzvSQelUMU=
X-Google-Smtp-Source: APXvYqzl+66KWtLdGH9hwMakkvb4enUADQ/vthhsnCCEYU3dUqYNEF7TJg9qeOBrpJ0GycG0PQugIQ==
X-Received: by 2002:a9f:301c:: with SMTP id h28mr13531659uab.7.1580237402217;
        Tue, 28 Jan 2020 10:50:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:64d6:: with SMTP id j22ls949811uaq.2.gmail; Tue, 28 Jan
 2020 10:50:01 -0800 (PST)
X-Received: by 2002:ab0:4ea0:: with SMTP id l32mr14155733uah.69.1580237401801;
        Tue, 28 Jan 2020 10:50:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237401; cv=none;
        d=google.com; s=arc-20160816;
        b=D05qA+VqPZKhFrz3yv+m/9t5EUAdp73gGoTdmtobMW2v8WB5nB7TjhZ/qWytLsmjU0
         1+uCqtAqfW3OsFJCpvtb2FvOq1e4hnSX2psc9uIg5tsr3NymUzKTtJs9mOTEpXp2cBtH
         SYzdispAve7yiwPPIIpN21kSpSMon621Hi0+XUB0UbtrF4MuC+B6I5rBvG1seSodRiA4
         CoTpfhCmr+NAx7vy/oySgw4eHT6lK2dig/s+AJ3P9Xi+iPTPRcbC5Mom1RGRHEvqaW1z
         T/h1xa1DAYQcbH0cWftcl6415e+wqnzuiiivzgC7ww/ns9SC2XCX1Z3QKdpSLIPNj5rL
         9xEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=g0WhvzNfeF8IPmBIIuRbqPpME0iXsXClcoR+8QuQDeM=;
        b=VYRXLiKr0s1ZQ1XWrSSp/xuiCycL6ibbI0gInDC41ci5KRQpJ+FRJpo8nIRHYG/q6v
         hNLiz7Y6BwHLkrL9T4kyPypN/WtWLdGapmFaYnwiXpCztKYj4H94BFhhcp5llI9HLuZR
         oWN9fitla+hjsSPk8pHfPqb0Uxjo8XMlinqBVXV6UiqYnLNcyQk2H/6iNOIeXynbz5ZW
         dVgqZjPSj8Dfj2MjH4n87WEjJmrTDdZSRXKL41fiy4JhEPguK4w5URAb4ARZriNsBFPN
         LlRRZPS2+9TgIx9TJnKhrPeRF0ZhbL+yg8G4mMRwu2j8+btAaD1/REARd0e2FZRJFW/f
         fC8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XUGEKZAh;
       spf=pass (google.com: domain of 3wyiwxgwkabggya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3WYIwXgwKABgGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id o19si1014453vka.4.2020.01.28.10.50.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:50:01 -0800 (PST)
Received-SPF: pass (google.com: domain of 3wyiwxgwkabggya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id r2so6027235pls.18
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:50:01 -0800 (PST)
X-Received: by 2002:a63:d90c:: with SMTP id r12mr19771294pgg.106.1580237401355;
 Tue, 28 Jan 2020 10:50:01 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:32 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
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
 header.i=@google.com header.s=20161025 header.b=XUGEKZAh;       spf=pass
 (google.com: domain of 3wyiwxgwkabggya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3WYIwXgwKABgGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
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

Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
different exception level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..5843adef9ef6 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+# remove the SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-10-samitolvanen%40google.com.
