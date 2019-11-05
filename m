Return-Path: <clang-built-linux+bncBC2ORX645YPRBQMYRDXAKGQEVZ2MA4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B229F0A9C
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:50 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id t67sf10877985ill.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998209; cv=pass;
        d=google.com; s=arc-20160816;
        b=FXuF1w3NMIqDgO05geAfLHMKtnW27zqKMdVlcwAO83nxHKDuJXsyMKX5uFNwwcaKas
         88LeU8BPoqv0FYFF8fbPpVptK6cZX491uNyyGB/jyjEjSlAIVCtUHQu2x/VofsgKfIRy
         ZDu9RWsY/W6zxattTMVg0fr8CJIqEPyD7pEW6w4U5tUeyWwDX1T00vwBhnk6qTH/8DhH
         KZPMGjaczUxS1qUW3mNfFbTnfivH6QbuGCNaQ46kfiOLF1dQzTn4ojEvoL3YDOqblSnP
         9TfeS7SyQWeTM/FZTOYsok/Slo8LbtBOPFUE89y+sxyBYEpzwQqo0raO8+Yc9Zd+fupM
         26pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=RP9zdYuvv5jqttckopnRfkHYObBL+2qzb3Ssb/PcUHk=;
        b=tZ7Lu/JwaR5sbKSANJ7jTIw8rR0sqZ8493AM8OhZCl0cFH+YgaLW7xIckgvkGatA4U
         dDKbLklo513+WkLBq5nhT4iNGAQkBL+eq5h5vuSoUI/faxvlFUCmTTYm0JXCZ9LeqLbh
         6VEBDxCT6Eg/dC/qjrNjbkLCjjXhHBGgDC05fBUFdis9TChBQ5Tnq5ZAcneqLor2qRXY
         vrBbK38zS/OaHtp//y9Y7JsuqkYAz4CctjcMQdnwpN0pAcCu2b49GEyRLFqz0owlYZvF
         wS/P2RQDgze74oHxl9k2hT6ObH5Fm1fZgsxpq89Khkupl5ILYCb0KVo36Tbgp8G/zJ0Z
         ASSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QfiPTkyl;
       spf=pass (google.com: domain of 3qazcxqwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3QAzCXQwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RP9zdYuvv5jqttckopnRfkHYObBL+2qzb3Ssb/PcUHk=;
        b=NNfyub9fm/ET9OJbBKoLRGyyFhXemKk2ohV8g7HsBSukvc6zsp2mXb8mS4PAeAlw5a
         JRwJEp7gqb3aNRZTkHDkLstGInwGcI44zgwN0hCq4xg+JQxNsk2VihJCk1oo2n24943s
         edYSCy8gZwIH2ppCtAXGKJPqvp/nz7lRfX+JBMACaP9sPn3SUaUWOWXCcfKAvGArbz+O
         ro8bhTIRch0Co/q+gUgQM0/bjaqLRxPiuX9mVjVs5tT7ANGLubuVNLBZr8ZMiRDIvznP
         Yfp9qrLYKZaxmB9MxsjFkVgP34TSAxofMb9OgBObqiPHJi+eSjJ93D7HOxpWL4RnEvCM
         pJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RP9zdYuvv5jqttckopnRfkHYObBL+2qzb3Ssb/PcUHk=;
        b=KEIkwwXq/qveCiqdsn2KmspjFJilYyzk3nzMXW/qSRA0aWLt68FXO2CIOVhONgq8gC
         BPpeBaYnWPWKZHOY+n3oJqiLc0W94YkuhJSwvYpGEewuhtlnijFGXGYr0y/Bm576qlK8
         6PN65pLrSRtEqenTBxoMqpy69TAVaNIcExH3bMeZt4RL8dCwn3IgdqdmVGE1O4E28ntA
         kO7RbWgUnvmm3jaoNlqDoy4zmuoPuf7mnXciUtSaww3oayLJduJY5yLrTKUpaXOzD3ib
         5jVGoXcokdPjqjhrSupcJGsQAnmwerdPLCcYnki6xu4zDlpIrMR62Aiw3B7ijMN0F+vD
         1HFw==
X-Gm-Message-State: APjAAAUcRf/kypBUUMMVdHBOQPca4pgmbh1C1J/n6p95+pUIPxlI3lkw
	yv6dsH6xr07jmfNNcxlZgQY=
X-Google-Smtp-Source: APXvYqxd8qw2IEI2HpHkRh/pOl6mw7/9lhNAuwUOeM/IFREay8xH68lo6ng14FwC/rcLtG0aINSsEg==
X-Received: by 2002:a6b:3b50:: with SMTP id i77mr5977112ioa.241.1572998209401;
        Tue, 05 Nov 2019 15:56:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:8e8b:: with SMTP id q133ls38104iod.4.gmail; Tue, 05 Nov
 2019 15:56:49 -0800 (PST)
X-Received: by 2002:a6b:b2d5:: with SMTP id b204mr5703308iof.137.1572998209116;
        Tue, 05 Nov 2019 15:56:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998209; cv=none;
        d=google.com; s=arc-20160816;
        b=AwkUnasVcbs6toUdh1NiwrnFmdwrOEzee7SE162tq3fi5vSU933PyWk6YduJEnDYSF
         jk+Xr+/K4zxoCtE5oe2Bl//zHlVkCEoogjhzjfgb5WXxJPok8aW/d/96lMSbCjCkAfa5
         okdxnvQ+N1dJKOzMh8e0RfJO9CTQQLaQS+xZLR4ptfQhbDrbDy+I0dEN36SF8XEtvqyv
         y9enPYOdKOs8QD5GoKaEx5xclNWIbGHo/wwdNHtRmHeUutucQpPstmUVSR93LI2nsMhd
         g79CpYlMDltgooHP8gV4WbUbAivDhRFLtni0BjA7mt5Y9C4CGAtM/OFXWGMGDf1O1Sdx
         tbZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=oB4lIvjzdBiHgRAUphuiQVPgI+jp2K5bMoUCGUiH4hk=;
        b=ZK4HoCx3UUJTf7RVEH1uRFKP2x3rvPrSu18AZbrNblQaKZhJ85wtXTXo8Edcz442Ih
         7e/v3iGBDIZre8Fq1kewg5sgnUP8QyR1/6c9kxgv+eCSABgM216a/OM8rixXdBKaWG0a
         lwMvo2E/uz2+p1ssfB7VxxhXiLlJcuVcFySiCM7R3hLQ+E2oaLIUiIkwaX8P+RxMURUr
         L1RTjkNoiG4UZXEhymiP6WlC7/5gnL1lDG1u+yrpbxAOeN4OqZJQVFdELyvTWLYvoDHQ
         sHcFm9VlAk4dYeRpi8wBt7SZakbRBqA3CLOezOowv/tx2BwrfCZV/G2yj1a+XoAEYUN1
         yqNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QfiPTkyl;
       spf=pass (google.com: domain of 3qazcxqwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3QAzCXQwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id z78si1504681ilj.5.2019.11.05.15.56.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:49 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qazcxqwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id v92so24230499qtd.18
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:49 -0800 (PST)
X-Received: by 2002:ac8:4543:: with SMTP id z3mr20376230qtn.41.1572998208364;
 Tue, 05 Nov 2019 15:56:48 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:06 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 12/14] arm64: vdso: disable Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QfiPTkyl;       spf=pass
 (google.com: domain of 3qazcxqwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3QAzCXQwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-13-samitolvanen%40google.com.
