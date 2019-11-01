Return-Path: <clang-built-linux+bncBC2ORX645YPRBS636LWQKGQESPB6B5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF93ECB00
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:28 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id z1sf144791oto.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646347; cv=pass;
        d=google.com; s=arc-20160816;
        b=r3DxFN5veLEFKBcndkrH71JnOQ9pn2hXJtyM2k9W358iF/P4xDrCLyS5Ae4JsapTDM
         KRwFY0AGZmEw8QtQQTI+oVb6DNCuKXFud2LgUJFzj9lqeMBmvELWs6IadVwE9Uh3YJgF
         2LfBXYy3qURBBq5GRFVlVo20hgFIZoVDajwjFzQ76SqdBZwk+vLy8UnVQmh0Foh9srCw
         5w/fvAv/egQ7IusKXkJ0Xx6t56HiUjxc03FIKTdaBx7NLkGuBwrev9wj0hevTTs1etWa
         tMGDPmZZxph/BoBqXeqi3PN1FooaEPvgph2D7gaXvqp8Q1eHusTR8ZBSf5CcWyDsxgZw
         OtmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Za1JmX1jOl6cCbMFqQZ1gAJjs5p5zRLI8WKPcA+nFU8=;
        b=hPsNivtA2SKBd5wddgls2/MrgSdKZkMtUl4I5ljaRD+y14mLlrFz1VHXKq6YGi2hb+
         SJbTPFn49ZqDEfdTE0lzi3LzIu1Ul77i/tZvwlg+pNoc7nwBJDqBusIzSN6se8f5Z/uT
         7ok29Ue9ZYK6HdRIS8VFnOdahD6XfdlQURp25e0pDXxMPTRkYj216A9G3GLpGXBKjmoO
         SfqcfcTu+DGGYTcrjoP7EMVUh8oHjZWKqYdr/LP7AHVUFnw3slrESvRnSvdTNOVWBZRj
         aywdpylkyWpaI5FPh1chRlbiHF2JUQG9Ye1qNWzw5gqEx/tH+IFE+6JCITT9XW0LwAzR
         zhOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iJRBiSEs;
       spf=pass (google.com: domain of 3yq28xqwkaa05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yq28XQwKAA05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Za1JmX1jOl6cCbMFqQZ1gAJjs5p5zRLI8WKPcA+nFU8=;
        b=CSGDSIbDs8PjgmWnG3o3TRk4csqkvrVjaq4SRLYLi2Xdw3LSkDl/9yx9ii9w/Exjif
         vAqlC0F0BD7pyx2DSBJYUsIgHI8syr+XmA2Ly5Q4X2zERlmtvLhFVJMK/OI2bmKmn77z
         q/C8EPRrSWmHcVMGwLyUn96wwEOuO2T+3zD1egVIxm5HEfNy4FrOiQcdgl9nPmTSFgA1
         nGohpr3Pfca8rC3dDfnoZlO4HLiATZ1GmzouHpNTLzl7OZoduHRC+wN2EEWOZJ3sxpgd
         gbGjV2BRF+SwPrSAQg7hdzd8xn8gEGAV/yrNzsoOXtJxowboswvpSPVJttLCspB7YRFz
         rPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Za1JmX1jOl6cCbMFqQZ1gAJjs5p5zRLI8WKPcA+nFU8=;
        b=oU0j+obuDKDjDjUdKmMpLA6Rj8xk26IyCO7o8R2aWct0X4eeS+sb/y4SVfosidgli3
         ua+fBkERDkqhw30uIY82h9buUv7QFtIceJ+wQt2+ceU9nSwrgn+tZ3vqSSnwH8O+osmm
         xGBXhNeaACtfs/MozUI/k99jfCea0yaC1Mxc3LyjXOJdpkT4EXryRgH6bMiKhA8YGL4F
         c+QVDPKlX+iwUiG/Rfu7+3/xGh8MwUv34mW5O2QdZKC/6myRNz5+pN4hF65OM0fuDmw4
         K3AR7lJvQPtLHr2yjKRqmEsIaDDNkKQPwRxU8cNuUIjVvphcmbJHq9ws3wgGhkC9c5I4
         z68Q==
X-Gm-Message-State: APjAAAUxWfqkvt5RoJ+jqOt6FoJsRhYCuHPEOPtcbkUtT51iBPwpBhRu
	Kolq/iqnCCGCQsn/wUthhPU=
X-Google-Smtp-Source: APXvYqxIB8hLVWFCoYFjxTY2CKQP0CDfA60mibPtJHmKdrrGIxBtNtW21qSln7y1tCo9vT84VyG5wA==
X-Received: by 2002:a9d:6357:: with SMTP id y23mr10330420otk.86.1572646347573;
        Fri, 01 Nov 2019 15:12:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1211:: with SMTP id 17ls1809648ois.4.gmail; Fri, 01 Nov
 2019 15:12:27 -0700 (PDT)
X-Received: by 2002:aca:48cb:: with SMTP id v194mr4439892oia.156.1572646347200;
        Fri, 01 Nov 2019 15:12:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646347; cv=none;
        d=google.com; s=arc-20160816;
        b=dUcPIiGtLZGDvQszcV6BEjBwk8zZ3dcoHRdUXa56MLtsEXGmspvvT7aYj0mAtKw+gi
         Qq9RpoPxGES1REC+oNU6YMIy6Gf46p5rpSSZrMX0d8LSIC9ahMkFtf7scMqJioSRtfjq
         DL1dcYsqJKjTXcQ3dC2I5W8t9nqIjI6ujIfoNg0iqxbW5Nooop+DL/16/lP5/aEHSlzk
         EW+YCuNXb6uPZGCEB38Y77vRkKmdUclEscreuXbNdbpn089623sOQfsHLCyuQamjZwCG
         VzVV0BABOpvifg+iqYMTKUg9f73FtuVTQVNdpym/UdFYeLJD8ClvoKLcbbnzFR1gH529
         papA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xr3X122JfUZTOJ9HNPiJpW+Iyor6r4hGY/b4sjNxJZA=;
        b=fNKoSaM7h3NITiXbMxxLdusDc9/XtIUZhVt3MCA5G5HCWlllEXnGY3PZFio4M8U8yS
         VIxFTPaiZ7SITL/II6mHks2Gfa/i+VW+hgMfwBs7Pnq6DTbI/Cs/TTXyZrcltvJvmtKy
         jCSu3jwKFPQNgswCJNMeqOrxrGJwgS49/N4t5f4YVFeuvfEHlG8RylijJB6cnsv+Mf74
         dzryEby2p5iWINUDKXmp8AGph5qgqBJ6bfooMkojCb9nouYs9LNpc3kA9P/GJrGYE2jS
         ab340Uj4gZ2aHJHFJTYFeqOwztjH6aB1GHr87PQagD9nHvQSGcJgwbqHW+JCWPQmq81+
         xcdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iJRBiSEs;
       spf=pass (google.com: domain of 3yq28xqwkaa05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yq28XQwKAA05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id e2si417507otr.5.2019.11.01.15.12.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yq28xqwkaa05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id 13so2562033pgg.19
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:27 -0700 (PDT)
X-Received: by 2002:a65:47cd:: with SMTP id f13mr15511166pgs.356.1572646346250;
 Fri, 01 Nov 2019 15:12:26 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:45 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 12/17] arm64: reserve x18 from general allocation with SCS
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
 header.i=@google.com header.s=20161025 header.b=iJRBiSEs;       spf=pass
 (google.com: domain of 3yq28xqwkaa05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yq28XQwKAA05nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
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
index 2c0238ce0551..ef76101201b2 100644
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-13-samitolvanen%40google.com.
