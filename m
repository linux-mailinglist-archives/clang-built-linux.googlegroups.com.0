Return-Path: <clang-built-linux+bncBC2ORX645YPRBIOIU7WQKGQETEN4RUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA9DDCA6F
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:15 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id 99sf4015887plc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415074; cv=pass;
        d=google.com; s=arc-20160816;
        b=t1EBUqbGwfRudOa3DIGVpkUr/fYwiOgyVH8g7DF59hzUvn7rf9Zxglw1FRknmedEzV
         s9Jst1UPKb593Yhyyh6pKluCCvYgVb8Wvch+IhqwBXLSh2BF0d0Ji8iP6aWI8jsG1owe
         aQAEynCe1bUraKvf+RgGs5Sb8OsCZJTc5A1Mvb4sOdwbllnIlHKWv92fR7yLnKiL31FE
         ooMM/mMZC6I7b0b0KRfqokIUxkNQA28p3nJuquU8lbnJBmp90VPGMlNL8efeiWkPjUD+
         0dSFhiMRhDroGMoHPBxulfqf6ito6k8vX39eUxflfDdj4E+WeyU+vj4M6Bw4o3fPm+jM
         1I9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TgvUBXY5IUR0/9ttbSKqgmrcnJBE8MRD3qlefswLLQ4=;
        b=BsiWV6oA7P30J1Iq6xFA+NC0uji+wa6OIqgia8iN6CAMk8IM9CdV5KGH/HikPVKSRk
         FSwRZiw+KUw0b1qe7Ha9w9eDQdw5DTzB1lkJIEznYWsWDcVtkgh/fHtnBwkIrHRHfGos
         AXlqLnn8uXimFAP3vtIFuY6IR9zpV/I+6w2zjNcavGsfG7uPOa7u4tLvKl9a9v84D6dv
         8G7qtax+JnKrIi0vBOv5/HpD9nrnQWQSje4GxQ1lQTrG1IcLV9YXZ+uL58ye/M3eL60v
         vzviJkYI9oQH74yBYnxARn5Tb0scM9lonJQgBT1jXe2CIiCPnz1BgHizHc4Vo7XdUu7X
         ueKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cCT9hs91;
       spf=pass (google.com: domain of 3iospxqwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3IOSpXQwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TgvUBXY5IUR0/9ttbSKqgmrcnJBE8MRD3qlefswLLQ4=;
        b=D0RIKhDO3o1dA0PdGTbLZfkr3sd6UZrXKO4MCK9eBdifpeHj0AC9ovI9N8eR1YE6y2
         vb0jF8GZUsOChgmkhu69le+OGaqO3jFpR3YVZCRCbk5vLZX6X0NwhvI1uSmY4i/E/IXE
         ArYMBNcj3Fgih9kPdlbk4Q2JtA6tIxRV14xRvsHYW2yP/XwNWwrPFTP9fPfeJayMZ+EG
         k8y3yfjWPGhJWmvhH7stTSjws7qgA1XBJ+cFUh4S/B3R+lkuXVCYYHhdgdVmfdQBMcF6
         ZHiSbXrCsNdE45K0N1H/SOXaWwhQOg2SwzxOaDUynZQg6AZYAcwVJAYe/4CC5wRAf8Wq
         ebAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TgvUBXY5IUR0/9ttbSKqgmrcnJBE8MRD3qlefswLLQ4=;
        b=QQq+Yvp7TAlMckyZtOYV7l2N5O0f3JQAaTXwYUyR/hp8Y7ij54BKoO6neFHlPWLDK/
         gAaLbKAs1jBzqtmtO0FpikL1LiklO04YvK6BPNOgZn0JJonvqT1El/OqXqaMA2jrlqA9
         9KXXPv02SbojRj1VTinsqnaifhtasNA4+aDtdsVX7YqIWbGDTnwfvrayyCh/RaXlC5Pp
         nF2jzDBi3EO+mdzNZBXqgm/UppVh0U6zuayNpcdAwzhAIghOEFUuXgR+e/tIF9XqX83t
         QFdkYT2AWftrUGULYVq5IdmhDKXt/7FEWduFeD7f48at3q4xydKUl6BNTz7qBISVnKzS
         aLnw==
X-Gm-Message-State: APjAAAV0K3A1W2XZxRgNHdlOwF5sYmtNDp6odsbgBGkJEW+sN1x6XWFy
	guFKfW/xtjxxVdjdgMuCGjQ=
X-Google-Smtp-Source: APXvYqwtRhwycKFR1uMqCM6zaVizrqVdtfau9YCPvSogjyhKFFH/lVw6YAhsMBW/K90OEq7fgQvpbQ==
X-Received: by 2002:a17:902:b606:: with SMTP id b6mr10898014pls.321.1571415073924;
        Fri, 18 Oct 2019 09:11:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:76d1:: with SMTP id r200ls2081101pfc.3.gmail; Fri, 18
 Oct 2019 09:11:13 -0700 (PDT)
X-Received: by 2002:a65:47ca:: with SMTP id f10mr11230667pgs.219.1571415073482;
        Fri, 18 Oct 2019 09:11:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415073; cv=none;
        d=google.com; s=arc-20160816;
        b=AKbauebVW3o3lEA9T5ctU3/aUuXttVYNCyO/cgcnggbNAU++/aXGo5CmLPShw4xbR0
         n0BqneaBW6dKSXpyYRvQn4jl9XSgwQK8UUIUK+XB8vY2a/XygF1Pce5/2Wqs/hmfoCle
         4xKYThwvhd3KIBQV0d+6K7UzppqFk3BhHErDHH5G118qtzDfy6izTsKV0gk0ISKWTGc1
         FPQaXbOcEtTtkpfepAaHs9Qp9v1rc7gBgbgAnvKfV+y/7lCOFANX1ukrKw/NIlc08a6N
         hY2qyAY9df6Ps9vzGKWuxpEJFLAc8wZr5KBUP5isIB973f2Yh4EQJWGPEoaelugA2opa
         a2Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xX5gUTsoboVAmCrU5x0kxTyEAN1I1znyOrkoj+71V3E=;
        b=qmH3IfBNNwtjnv9Ee8aa6bF9KSM2irysurqGPbNzPO8KbxLrhYzppdWGVxXrtAFPR4
         HCY9b1GYC7yrkdBGPDSNCWJqKWfcs/fbIZIFXHy6xvNWQ2FK1wyFM7po9ZiEQ7CuPxoj
         dPJibNA4tbhZC50G2p/wPoBC5fJ4hzKrty5ruBJKNCxI6GdfPTOO9vBZu/DYhzyCLh/Q
         kI7eEac/Y3kn49MsOnsyPuJ0pkTsI0j4Gi8NgQd0f+7+XjzmRaKj9FjZj1rsB7VDwG4o
         AkwxNTxV+LJ5Vm2D79c7J+V2/whWHT2U95CSGLxL1iK64UUzzBQP3A4R2xnuxsMRR9Jt
         yUJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cCT9hs91;
       spf=pass (google.com: domain of 3iospxqwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3IOSpXQwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id d5si343011pls.5.2019.10.18.09.11.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3iospxqwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id s139so4953703pfc.21
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:13 -0700 (PDT)
X-Received: by 2002:a63:e148:: with SMTP id h8mr10684150pgk.297.1571415072880;
 Fri, 18 Oct 2019 09:11:12 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:24 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 09/18] trace: disable function graph tracing with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cCT9hs91;       spf=pass
 (google.com: domain of 3iospxqwkaimzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3IOSpXQwKAIMzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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

With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
modified in ftrace_graph_caller and prepare_ftrace_return to redirect
control flow to ftrace_return_to_handler. This is incompatible with
return address protection.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/trace/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
index e08527f50d2a..b7e5e3bfa0f4 100644
--- a/kernel/trace/Kconfig
+++ b/kernel/trace/Kconfig
@@ -161,6 +161,7 @@ config FUNCTION_GRAPH_TRACER
 	depends on HAVE_FUNCTION_GRAPH_TRACER
 	depends on FUNCTION_TRACER
 	depends on !X86_32 || !CC_OPTIMIZE_FOR_SIZE
+	depends on ROP_PROTECTION_NONE
 	default y
 	help
 	  Enable the kernel to trace a function at both its return
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-10-samitolvanen%40google.com.
