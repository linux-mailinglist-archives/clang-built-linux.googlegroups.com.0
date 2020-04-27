Return-Path: <clang-built-linux+bncBC2ORX645YPRBPMDTT2QKGQEMJ7QYKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 651661BA989
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:01:02 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id c24sf9988973uao.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:01:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003261; cv=pass;
        d=google.com; s=arc-20160816;
        b=ekryxn6DcdpFqCR9rX7TwDydzHxMnW8FBkhcOacPNX8EG7VnzJvn74vkcMLYhqUuso
         uJMHyUEcPJce+JGIX4dQZwCSKzpnHw3GpXdlhGB6aqXhXMOkbMzlfdzg+8Q+4QnGRXqu
         k1ji7S7Bb1WUbRHw8AkGqRYCZWcGjeTsY4qFE3Spvn21MKPXMKn+kzcigYUIHnbpbqPL
         8XE1iu+s+rCVwf8cotfr+HqtM4bfoMrRq4VcbpLu3f1lcgb2dvqPVTuC+cHNC2S8veBu
         d8os44n7FRHkQcN/pK6y8QmloEmYrVjiw8zA2Byytw6KJ0ySX15o1vT7b3DsDBDxfaqI
         tKfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7FDruYaEHHgnEhSqNOOaBeTpA+cgRgbovBA1kD4KybE=;
        b=Tjm3UxV0h2yFbrtk45kjzLzoyh0KPgUjyKxhFER0iKs3rdFlZKwoG8J3HbR17WgOta
         PohK0qExA2n04dWb+I1mMKKWtHHzLGLPyt3IuaEGx8g0q1AqxmWqZztJfrKSyt0mg6VA
         3ciSMdAtvQfE6HKliLE8Sa4uISLFalTdy+LbjUl8jJwltJgVcxKwqDwfOuBO1UO2zT4e
         hOuDduhy9CJnID7SdRjt+gOqsYyTjBS5+A9IPESByOhuWR87CrCGNcq3LOdpyruiND8Y
         CeMMA9B1UyxiNyUPdMCnvQmWFm+kl89UUimBh6V2onic67IrLygemX1Nzs29KFeN+6Py
         GHrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ijnQ0fnO;
       spf=pass (google.com: domain of 3vagnxgwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3vAGnXgwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7FDruYaEHHgnEhSqNOOaBeTpA+cgRgbovBA1kD4KybE=;
        b=pCO4sOznMWNgC7ihrpvjC0X9NZbji6xEnsRStlezWwX2pSVFP/fOLkE3oQMGGyrrae
         5XxIqgtSY6MCMjmMKSd0wccdeLHWq8g/dqGHmAxZVrgrIhdfm0SyUy88l4IEx0AW02+R
         uX/gKnVv8m7z1NdNuI1I9T9cLJ3SHgUYFpsAg1JunfZYZq3EZMPDKEb+SHs0lpdaThXw
         nM1xh9ViL7BFLuIfb1jDpW24QPYkZ/AyvUvbGHSPJGhjy2DgivADqhpb3YQRrAmWVdtb
         IjiRLqopGlCSE3wjI89CPVI5Z1StV9ZS84PqenKcr7fEtKjKbDeT1PtN0djk+IpBvb2d
         HW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7FDruYaEHHgnEhSqNOOaBeTpA+cgRgbovBA1kD4KybE=;
        b=OIegf41UTittMV1xIzX7YUFyJb1NdfU4+bwvHoKw133hwEIs0/DyJreuYfDbEwk/R9
         tyIiig8FBc0Qkz5v/QSOmzUIxL+w0HXnn8ZQqqa5jSD5/8VHlaxKORpnDpFB55GpRCMh
         ch+YRIQHh/ILald3QjXCMDn9GIo25XCFkUvt3xwPkDBqUACa5L5r4d2PbzKUPjk7kpJJ
         tnfEbc5CEE1M0lm0PRMnAlYFKp9s3nxKa/fPWgg6BweL4KSeN+q7Ln0zTyqFbZhdn9y8
         SKzShZTdxBrxhj3mm8s/75vBhoE35eQsXtr++d8mBDwEN4cY/3/uYPWcCNhA+Tm4qFzq
         rIEg==
X-Gm-Message-State: AGi0PuYHhPiCFRJsCpi3sbcl6bVMQTxZXi74pJQJOJZ4+QyOrvs3NURQ
	SH4tmcjcD4Z3rnq4HUvTehQ=
X-Google-Smtp-Source: APiQypJeL2Kj2cjr2YZXa2cEmVKEMHsWvTI6Grw0mrGwiyfXBvgr3D7AMNxfXTu3IzzHNkx57PDPcA==
X-Received: by 2002:a9f:2802:: with SMTP id c2mr15688585uac.48.1588003261407;
        Mon, 27 Apr 2020 09:01:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6601:: with SMTP id r1ls1611045uam.1.gmail; Mon, 27 Apr
 2020 09:01:01 -0700 (PDT)
X-Received: by 2002:a9f:2907:: with SMTP id t7mr16106681uat.4.1588003260999;
        Mon, 27 Apr 2020 09:01:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003260; cv=none;
        d=google.com; s=arc-20160816;
        b=caSrgn7d7uNWnrI03y6BGfseDfzvE4fDO9k7gwST/qzHPC+LyGHqp76ZpjjPBCKL3i
         hoNZNQO/ewHGAjPBRT6Ne3mcZV2wY28i753DTjySSYUNalo25tji6McNvAG4Vdwcj1Pr
         FXQ78UOXB6dB2SCusX/R9lmYWnW9nXsxHCr7f0WZFSWj2UdKXRSaErhZbDvLuvlBGl4R
         A0uLfnQ8+TmcPN7ZArwXoTia1yfidPwTq3e5uVy0mzlLBegONuxIicP3lC4iRtdO2JYD
         MpHmpNZZODWFqx+fFFR1Vq0wE0lVtgn/hxBICTFoh+S2Qn3HC4oaGTdAhtoN7IKjqSTa
         mHxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=aF2klQa9rRamHf/M4CeCxFGtvwc1mZVJXnokoniINw4=;
        b=ygE4C1pEDhKXRrI84TVoJH44rv7LVAjc33GDzZmFN6T7DM3j4W2eEHtBcp0q1tLQ3o
         L8xSM5uhk5e7lfEvY6AgzoM/vD4ZzJQD459bg/Xz6aKjk12lP5cpe8qiQUKienHdGDWb
         3EgsOOiL/lW6ZqT8DaZDptgoH7HCsUGZFY3EDdngWjL369fmXlseUmKQL7rxWc/Hs1hn
         hTkShdSbfE8pmED6oMxY0WZPKE0XyVVLEvhJHcXT584MZR1gQ2MpfFf+VvY5pzYCACMa
         gzJVcbq16+mTh3fUewxjSmAPxlCE+gGrAjNXWKfzeYrZRNpaM4D+gjIpNRls2Zi/VtFH
         hYsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ijnQ0fnO;
       spf=pass (google.com: domain of 3vagnxgwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3vAGnXgwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e22si1292734vkn.4.2020.04.27.09.01.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:01:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vagnxgwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id y8so20985363ybn.5
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:01:00 -0700 (PDT)
X-Received: by 2002:a25:23d4:: with SMTP id j203mr35345989ybj.97.1588003260531;
 Mon, 27 Apr 2020 09:01:00 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:18 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 12/12] efi/libstub: disable SCS
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
	Sami Tolvanen <samitolvanen@google.com>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ijnQ0fnO;       spf=pass
 (google.com: domain of 3vagnxgwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3vAGnXgwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
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

Shadow stacks are not available in the EFI stub, filter out SCS flags.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..b52ae8c29560 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -32,6 +32,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+# remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-13-samitolvanen%40google.com.
