Return-Path: <clang-built-linux+bncBC2ORX645YPRB4OWZ35QKGQEDWGFXWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B61627DAA1
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:31 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id q95sf4564379pja.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416049; cv=pass;
        d=google.com; s=arc-20160816;
        b=CToc0wL/sI0Mo4SM7bZxP5HPRhb20fn7zbni4350zaQoI39NAI9v+RFSyRMV70SXvC
         CIjr3VSkbVTvSORq9eXC0uunqR0dgAfl3w+4Ok8YS1lX+EtIm3irLS9Y7Vvy7RJXYh8p
         M9GFjF6sWmQISzSyXoBIjPV+BOBllUcR+d0JczUc7o5itylH27Hzyg+KNtIKwSB0Xi48
         86qznBpO8Iwnk/niGa95eX7k9qlP9kKiSFb6Gc3fUs+e+IHAptNCJx740AD9deO1vgpG
         hUNuOcRvoLlQshn+LzD2keQN1WCH1bV5XNmjliHf1uJFpzFfR5Qy1gkR/r3xFEvoTTkT
         Lvbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=52WEn1JC0A+obkFzyPWxMOMGhViG4x2muQTC/3g6eMA=;
        b=FO2LXCXIQcFWv2BrGsw9TcSMaPrUP1A3mDQraXvkhr78voSO/Nm+KpmP8+S6fEGHqf
         a93ZQW8B9gB4w8XEdMU+dbcX3brw/phsk4crkRe8m6JTZ0/dCjE0ITBnpbQmKEuPhckF
         z3aLM6Nu3NKyIMWhDXdJ+xN9mbluD4cmcxz1WK+oTn1n/aD3WSyixrirZ/7EMTkujpql
         7++NX8YMoV/yoBejMlVpmgDkmlTPzR9sHbK+DwawAkvDeC5xNBfL88K2fnlwpExQvcle
         CDSYKGnD4HKkxUieYoqZcO3CD67wLwuB25zjjPVDZG+YKyhFkbx9L1RN4RPf9Acanhpx
         1EWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jeIjKmg7;
       spf=pass (google.com: domain of 3cktzxwwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3cKtzXwwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=52WEn1JC0A+obkFzyPWxMOMGhViG4x2muQTC/3g6eMA=;
        b=S2TSeOlrc6SGOs+kuX/mnmuTli2zAFb6+Dma98D+ORX2O+/WpdYeq4/Tpa5DNodCpz
         IvcED7tyUIVUxtZb4imbS17PvTZ3RgxIB0l9bLg/H0BnlaC/g32fGNJ/OIPlRSYAAIZT
         MBwERB7Y94OXpOe9/KPAyUT7mfiSs0p196fpj4x5FZoeV4v3EaHICwRhhJqoC+/Hukne
         09E/S//p6tvGiKfMsHwK9Wocdog8MsKP571lNdjEp2Jchm9re5i6X1tc2MJZbIdgXHAl
         GqrhPlx7AHoc9voEsXmZ2ao9Y3etOsgJYCmHLdnpXc24kbgmBUszxNWo+YOea/kKV5Jk
         QeMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=52WEn1JC0A+obkFzyPWxMOMGhViG4x2muQTC/3g6eMA=;
        b=MpsmsFjEPz0MHuFqxU9pYMg4R2Lyy7ZNvOCUi5HMIha24oQjsLyICFjmv9ocibSgbO
         wVSrqXaIYrODfGPgN3hCIdvNOGnaoGcUQvW9U5ysYdTocfE+WlZETAD9LB4gbkND87XZ
         5xrQGcrzBAk0eW1fVDZJWG/hdiHccW6Z/4PrYKEbjJckj41Ht82WsV9CX7URNkmRsFVg
         7CyzkhJ4+PgadY+t2Vp4aeefDRRq0b1dz7E1Cz56al2shrnu6KEnELw87ZhjzCN004aG
         3wkE2iLrDpkPPI09z5h3J1NjAujGsptzc0NWvjy6/ISQP3zpt9OjhfReUqHKnSBWymNv
         w5ig==
X-Gm-Message-State: AOAM531yZann1YzafX3+TS8gCMz3Vu+lomDqizhe8WyxHHKDk0viafKn
	RP/2Jblqe1d7cf4zbfT+PWM=
X-Google-Smtp-Source: ABdhPJyXjw0pGx6ODfjxEkkd2E/C0JCMEfkKwmxP8iXYYljosU7EGc2wUIDwELMVeM4CkXBDnKs8Rw==
X-Received: by 2002:aa7:9f4e:0:b029:142:2501:39f1 with SMTP id h14-20020aa79f4e0000b0290142250139f1mr5946553pfr.64.1601416049808;
        Tue, 29 Sep 2020 14:47:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a412:: with SMTP id p18ls128417plq.11.gmail; Tue, 29
 Sep 2020 14:47:29 -0700 (PDT)
X-Received: by 2002:a17:902:8689:b029:d1:9bf7:230a with SMTP id g9-20020a1709028689b02900d19bf7230amr6781038plo.22.1601416049216;
        Tue, 29 Sep 2020 14:47:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416049; cv=none;
        d=google.com; s=arc-20160816;
        b=A2RsPcyPe2iUoZf+0epp5BY9te248yVhEGsm5EGCxpCs7YGN+wI2VP+ez5yNPGpLhC
         IK/Wj7MydMEiR/rmOIQpl6oXIRPkOZmb3tICqM4HdE/WiIljMlTMEus9NHyt7t9pRrr2
         7+woH9q0PY+QT5ViiTQP3LbUwU9Ryfy0ojkMnQvE3MGe/TvPCvVkmeFINqs8wCYocd9+
         4syiBAmGD30xo5AS3cyxPxbFBWcFpr0zIRMPbYXrX+UEEkOfbF6IYZE2XKLAhZFyTVV1
         +osJlLjxZEO9FWeQkCuomArISjtd8Mb4qYz9O3FzldpRda7enQLqQXq7h/wc8KZLCJae
         Y7cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=DIPWfuOfjnS0FLqqhnzrIZ4jlncEeE+o+vZP3RuRCL0=;
        b=guQgYP5xKKGzkigeBlmjR4tr3+U1itJ74h8ctGPKploPXIId9gpT0wezwAByxByqqv
         21eyCYkovCYUvmUzj9o6UNBHRZO0juo/d5gt0EM97s8+e6yVAx+IvtM7gcLZE2gz2ak2
         Tyt3XJh/ZO3/XSVynb7CLztL1pLReYz0YNUbhzoznQMrQNeRb2SOCs9YJGcoGw8UE1Sv
         0HVSa4RzDvGf7xjGMMg/uulaz0BM1GvFptbuNSaczsQiHISQGPoa/y9VyWQpoIkTByc7
         2+Ei1y78oPcAVpOsHIutwAitXOUEYXLNSq/W0i3zjOpuQnTZUSEtI+HX4Esqx7XsGp/O
         5t2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jeIjKmg7;
       spf=pass (google.com: domain of 3cktzxwwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3cKtzXwwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id u9si650012pgg.0.2020.09.29.14.47.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cktzxwwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id f12so4097509qtq.5
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:29 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b308:: with SMTP id
 s8mr6728794qve.16.1601416048309; Tue, 29 Sep 2020 14:47:28 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:26 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-25-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 24/29] arm64: vdso: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jeIjKmg7;       spf=pass
 (google.com: domain of 3cktzxwwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3cKtzXwwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
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

Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
point in using link-time optimization for the small about of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index e836e300440f..aa47070a3ccf 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -30,7 +30,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv	\
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS)
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS) \
+				$(CC_FLAGS_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-25-samitolvanen%40google.com.
