Return-Path: <clang-built-linux+bncBC2ORX645YPRB4NKST5QKGQEDWTRGGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C5911270662
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:46 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id q2sf4353206pfc.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460145; cv=pass;
        d=google.com; s=arc-20160816;
        b=BpsXEckj1c5INacKDPBDWaTkL9RK+FPT2+gqSGx219MVVqzjVoiR//7MMfO3QKvofk
         lXwbzWCyXj1mqsqjhYbRFdY6XgtT+/jHYdjvvJFDYEdBo4HtZLzB4U8fuTNXqNAgT21w
         KsqK7wehOM2kwTkXbKFULOxcnC1AHIx3gtjVIKmuDJ3hzAgu9Hg02c1O3GlkBF3TlhK7
         VMUlXTrfRslNoFJAPp8DMx2BqSTRdw7m0UmR/HGxPANWcbqtMy1UF08AlWwnLMRSHON/
         /b+1TKrS1wEEMGsfHDWk6tdrTih2dTg7bCbq1e8E4PdHTP697bps9ByJCH0KkZCezAN0
         txxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=CbHmWn0u69GJehfZB+IJIvRJj2tk62slnnlEuDhlozc=;
        b=dmCZ4VfnYrFSoB0rG98+bQFuuvRGwY4no4aPgym39P7XZHkTMJisDXITbPswRG1kTd
         EdSVVeee1CKGel+qyeN4CJDQagEx8GoT4cCgUWxhxUipl7Fybx+6WbjJSBRMuMyMaBfU
         BMsw2Qf4Qduudn3axU3CsMdX0ACLaPLRqm7FW1AJUacY2lWM5zOBZ4yqGsHFwgCe1pVM
         RYmq/EUt7L20DjTWbND+ogEvUCf1oi0kgKo497PepwvR7evOo9B6JIy8rMVkSIPg41vW
         jJgM5rfq11KrO72ypIzb/eDlhJ2ScHxEJm+s4SB0QWPzz4yLxdoMi1vpe98xpHguk9cO
         UPOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qivt17C4;
       spf=pass (google.com: domain of 3bxvlxwwkadaemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3bxVlXwwKADAeMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CbHmWn0u69GJehfZB+IJIvRJj2tk62slnnlEuDhlozc=;
        b=XMrgtZV30dvvOAqwd9LumLRT+yRy60IWjQlcPFCC68eoktp4mkywu7QzZf9bmsbczK
         hSy9iWU+TU5gvCFkC2PKrxhxXRV+RaieO3rAqU5MqrFvYjzpxyn3kaDm0ObCIQn9VNib
         WzIUc9DskjyiDtA64QafpUdHuGEsMARdgzd/nbnKw7r9sxt6BoZ/1RF3s/wiKsPK0dEj
         VJohnLwdbu4frJSWHSg3SNbr0xpJIX8lIXDXtrwvg13OO7dxDEtXokNEV6u42YkShQ8b
         Wh2Z16Qhh9nOEEPFByzvEWwKy0Yl1zVj8KoOSFkQ7hSzaWBH2a4wCcXKRstiaVxgnMp9
         vHJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CbHmWn0u69GJehfZB+IJIvRJj2tk62slnnlEuDhlozc=;
        b=WJTOwl4aW/BXZMMYsPmUFBCskTL7Zrd754r+3137yqw9IKGtVYnTp8Qz7nPldrlD4g
         scqfKBrsPVaCbdQ74tsE5tKNuZUktDQ5r0UMznVo7aZzLeYzBFFUnq2fJjgubyB7Wm2l
         DixFS5Bp0/As8G5WKsQy7LgCJdB9pmiWDJWY6UNTVOyYYDmysPabExTfuRQHWTo6fDvT
         mniIiAA7IGfA/peArBvENF5BYKd3jioMAw9X44tjxfs8jwQ/Pj/+a+Lk6o+n0mB7v5aW
         op5zECsUFtcDVhYfnksBz9ZrlQoy530an3MU3QLXFTI24W1r9zzhwr3oQW+e8vGqD8mB
         gU8g==
X-Gm-Message-State: AOAM5327TSj+qOt7+VjTqpUzQAjp1QgQEopILss5BDeHpw1N+0xJFDGe
	hU96/s6C+NIu/DUd2rpj4IE=
X-Google-Smtp-Source: ABdhPJyB1x/xC3YDX9bz61ruFymMtXFPiZ0X8xp0Jo6aMz3hlgMvaj2MvNrYjRLLI9z6KaPldQQkjQ==
X-Received: by 2002:a65:6a0f:: with SMTP id m15mr28180536pgu.93.1600460145471;
        Fri, 18 Sep 2020 13:15:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls2970162pjr.1.canary-gmail;
 Fri, 18 Sep 2020 13:15:44 -0700 (PDT)
X-Received: by 2002:a17:90a:4ec4:: with SMTP id v4mr14306891pjl.62.1600460144816;
        Fri, 18 Sep 2020 13:15:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460144; cv=none;
        d=google.com; s=arc-20160816;
        b=Xm91FWRLAfJxSAzSZRR3tleSQXDq/s5ZKX4iqYdA2CmnhYFcGdhOLdv9eEgdHYG9WE
         1Kf2sVwNZYnvvq8fpT1/9lUyK8lCVumoM1a8r2IFmH//M26LWvUPOvGPCobskTNds3UH
         mXxD4qwQtlg02kugxt3A+Djbclzi09g1yrAD647ZM5nqYDzhQkw33Ko9E4K4qri4vNQn
         EobGEt8CIgYiZrhVMLrvC4BH67nhwYeO2LUq1xMQz+UkXJH+xBOkpxi3sbL38i0DWs1E
         yAy7wRGwRH7W2rmUnkrv15DL451+lQ5rQjl8TRl7E24vV7RHMnDmk9mjkHPsnAnfd3Ip
         IpTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=vY4wvL91lX+XoPJtjETBJ0Jod2fr7hSe9gEwviH1PQg=;
        b=0P9Na9HOwgm5O2vtC8WlvuyAx7PeTuOLXPuxH3uAszDaxjnSkjWu5kZOlxkofS6Fg8
         lWGRo1emP2LIqsrkbYrGvWCxheDZ2iUW68cemqacHRpQBfIGbhNbw8kTOQxcfBFTVUr3
         exkf+u/bvVz6thWgVk5EDQB/UQQrqt6I4YP/ZKNpfSlq4MpWaAICPaqob98bnVFaRXyt
         nR9kElhUMMNKh1pRAeLfhYS2gne7N4lhYzKWk87Wtbh7XZhyGA+fc3YdbSsX6k3YgTHD
         V5Wnx+FeaDY2xL5iBv5kmRcAsoiSZx0u2YEb0mXjV3JsXKkcngXKdTBzQ2VqDPE4yrFx
         c3cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qivt17C4;
       spf=pass (google.com: domain of 3bxvlxwwkadaemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3bxVlXwwKADAeMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id d60si902195pjk.0.2020.09.18.13.15.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bxvlxwwkadaemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 139so5565741qkl.11
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:44 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:55ec:: with SMTP id
 bu12mr35584454qvb.0.1600460143930; Fri, 18 Sep 2020 13:15:43 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:33 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-28-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 27/30] arm64: allow LTO_CLANG and THINLTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qivt17C4;       spf=pass
 (google.com: domain of 3bxvlxwwkadaemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3bxVlXwwKADAeMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
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

Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6d232837cbee..2699fc5d332e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -72,6 +72,8 @@ config ARM64
 	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_THINLTO
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-28-samitolvanen%40google.com.
