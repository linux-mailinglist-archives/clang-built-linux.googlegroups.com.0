Return-Path: <clang-built-linux+bncBC2ORX645YPRBFXZWHZAKGQENIJPCLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id C538B163815
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:55 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id 71sf11072041plb.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070934; cv=pass;
        d=google.com; s=arc-20160816;
        b=KpGRiO4DQ8uho5AlPZnbN4/sUK41PpTmMp/pQ5PpjkhlY7U8LniZs4wiiMbJbQbNgT
         Rg3U8PrEsiyb7Ms7/UIdQmkFZf+lBsgR1bJAVbVaZyQDurjquqpD1wImLxPoFRrOaVZz
         ztvNbWP7wxKLNbMa08DGW5U8V3JYH1YR0NcvfmFltLT7nhwSxkshTUPqkBT2ejPdgFEa
         YDLAH97kzr8JVr7brTez/dB3mN+Al7d70XUPC7mCpfYEI6p6D3OuFqQfyydNFCia0drB
         HyX6ni/LEvPVL+B2S62QYSUfM6G5mxED73eGIhq4WMu/2MiqPgeLqpjNrltYh7MYnleK
         fiYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QTvEECIjgFlbrpv5gY7jyf5sZX3f08ELQAa8OYYsQbg=;
        b=yVcakjqLX4LUSajNVaz47BhZGrAmurJqwTxUMNNukFI/GN6GIAp64ODZSv8v/4hhlE
         Ium6dTTqNSSsOxMfA38LhEgNpNp5hihsUMwNIBj5AOsr022pYJJA49RDn7ob++ByCf1c
         Uwd0um6qNCBJSs+m8aHdSB+OA09Kx/A+0fzYf1DXXFnKKh0HgggBnFkON6SExlSxuXt8
         vxWp8u1eejAzYYEeLqdXkDvk1gjw2bd2l+M2gfPI9rcM9byKqP8H+840Wqe1BwvRPZ9F
         AgH9jiNz4VoTEWrVTwGoH9/Ek6tA/297ZBKf0XntwNe8VGk8SQiLiTYCHWnykF6NWL6+
         u1Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MLtcH1Zl;
       spf=pass (google.com: domain of 3lxxmxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3lXxMXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QTvEECIjgFlbrpv5gY7jyf5sZX3f08ELQAa8OYYsQbg=;
        b=m8MpMesSt7E6OAT69XzLTeUmcZ3+u/st0U6+bxm3IqmRHlIFsX6YNyKtdPmAWy3VtB
         g4AM1KtMvcKqLD6wY7Rvlol4Zl4P8hEGgZyIS3yO2UPpsgfFm9LAcMRbLAME5mnCaAxb
         nYJgloRkeEyuV0fPgv4B3KKzZUc/gptJ/O4zwrQNE1Wf4TNPFIc2xiOlNGzi+OkCtkp0
         A0n9VxzeNqHOU0LXv4U3gUyB+rL7fZKGbkNSHT4ICTZtp7sTqc7wNwdwVBag053LS1uF
         +IkJ3Pmsc8m0RNb6P1Iyb5M0FQncJpCPruVENs7qoM/LtCT4InacMyxm7XoHkwpnUtRo
         W+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QTvEECIjgFlbrpv5gY7jyf5sZX3f08ELQAa8OYYsQbg=;
        b=Pp6sBGcBrqC4jGguEW81SP45AadN9FobI8iZZ/PZO0fVfuEuwTgjlQ1AmDYvDxkxxo
         U+yncqwf/uqx8itCo4gCbOoX83LEbQnugduM+PViT2rW0J/Wozp2lVvcZxqyJvBFjbQQ
         fYmW3kxKZE7QG8Yfqvarm/rS/LXfdjzvNTdNAilAfIlE5aM6xkE8T5ynytKPK/sVXFK8
         kA33y4byVuoRoeIKDB4DMBeT8htlaoo2zcqhMsI0TMCQS+imI3VLKnP+V+sk/my0yzB8
         z+wf8h3fEogP3p18hAWFixA8WZdxjj4sXDvClnmWcbq+kqtgD2iUFuw1Sxnd2bISQhea
         YwrQ==
X-Gm-Message-State: APjAAAUUAnhCCSkHegFyg+zzRLEfCvHQDFdApb/bJs+5L1FXV1q1e65u
	9QBNQYGPEv9NBSq1uC5YfdU=
X-Google-Smtp-Source: APXvYqzHwf7xF6uOV/22lM4pXkmTYbqK4wccnY1stsRuqJEqN7C5s4O+QafuA74FbsRs0r378HU6Gg==
X-Received: by 2002:a63:4385:: with SMTP id q127mr23718372pga.404.1582070934485;
        Tue, 18 Feb 2020 16:08:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls7180095pgg.2.gmail; Tue, 18 Feb
 2020 16:08:54 -0800 (PST)
X-Received: by 2002:a05:6a00:45:: with SMTP id i5mr23634403pfk.252.1582070934013;
        Tue, 18 Feb 2020 16:08:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070934; cv=none;
        d=google.com; s=arc-20160816;
        b=MmDbVk39P3B6sSRnPb19gxO8XAYmfPWFgJd9tx1tR5HNiP8CTFE27EE43fvPYc/GKQ
         c6P8f6BdGsqqKjlhmJxOF59FqHGRkTT/xEoQuj2PjZPqDj0kIDkkk2TtpEGgXSLvb+GU
         n/s30XufGNlDth2Yuqt7eL1Pdp83pCheMUnEvP2OcNHUAK63nKHdrchVBWXQbj6klOGM
         8IoanO7e5KmSu3w9w+MN30kKx6qJ5cEK6bMLm1S/oBD93PxY0n8Big3i2pAmp+nipp5y
         vItIc8Kau2VCi7EHMrctFwkijuAo5bZDmvPkB5svbXN5a0aa6wMtGxI8FZfTT38U+6Ia
         AnSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=W8ajq15Euo0CBn6HLEY8Ur3IDCmQBKzronvmXuYJ1Wc=;
        b=wrq104awYPNbUwPUtHfaAiLGFnqc/PwX+EJJ6TovAV0E/I4P7wGNWtAgrfOvj5DkT7
         glnsFVydZKK7pBC1UZpXvTjCKEzUcth2+uatP4pCWUJSlqcMV9XHssRQy4FHUwPBmn4O
         pDvckkhCQ92CxlLLjbT6Dr9gUt9lmknTSyZI+K9uAeEWwQRSHOVyo9bFKuviGWdUIDc1
         bl/6GAwC0v/B8n5fHHNHwiWZ+tNo/fs2V+zkq6E4CcZSkgj84r7GviopsLqj7ffPVcro
         cZmvXoUBPO1+bKikZa1kJ07CC8ZovuamlXiHbjf4zPt7tPMsnPcfYR0LfJMmhx5j2kXt
         t02w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MLtcH1Zl;
       spf=pass (google.com: domain of 3lxxmxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3lXxMXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id r18si13060pfc.2.2020.02.18.16.08.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:54 -0800 (PST)
Received-SPF: pass (google.com: domain of 3lxxmxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 6so14303594pfv.3
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:54 -0800 (PST)
X-Received: by 2002:a63:d042:: with SMTP id s2mr25008924pgi.66.1582070933662;
 Tue, 18 Feb 2020 16:08:53 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:13 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 08/12] arm64: vdso: disable Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=MLtcH1Zl;       spf=pass
 (google.com: domain of 3lxxmxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3lXxMXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-9-samitolvanen%40google.com.
