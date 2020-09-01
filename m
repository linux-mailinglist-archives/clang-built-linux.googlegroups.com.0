Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFGW35AKGQEYMTCTCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFC02584B7
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:18:42 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id q4sf4873169otm.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:18:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919521; cv=pass;
        d=google.com; s=arc-20160816;
        b=CAuQOvyw36xcA8tmRLorZsWFe3Hqnd35OMJ/hwHbexvOVS8s7dTQnMjEmHP55T44/t
         yq46PFj2UUnnsZnEErSjgkmavxHDUthzgoEGwzlknlMDJuztoFQurUbB6uHNZ3bprCtx
         GXN0C1kX2vTgIdeTHVnRWSDyNhytLbeZukaFHS0QMc1dDR+vaDn92bOTqcuQQuNNq/BY
         oQx+ycdfl7gI6IBNhBFZngdu7bBK2AdedaemgvNpTZnC3aOkftRpqmEK94wuGlZaeF7F
         GK+58582IOkNtDitKWHzXnaGve9ysbnbMDWLITBRxcS4V8m3qJvYIre8WfOkuVWsN/O/
         rMXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=CfGE1Gfz+hRFfuzzD9ConYE/1ot/C+X1NjOFhpOGIlk=;
        b=tMnQyyE3F43PJYO/miWNGJ1q9KnKkPQNPQOM+fJ1+1l+I4oZS21QMmih5Bl++X2KeR
         QHRyYyxZsme5VQUSJ643FJWJnBxZP3152RfqjqROpncUh6+2YPNmR2o5yAliGoYucZkW
         G9D+jsiHufaB9cyiSelGlWdMW13USBi7/SrB+/yBp/mFvHfaJPVl42GSQD5NLSM43Koc
         XqciAONPlmKEqyYxNp65zQN7G7+VkXWwkDRYC/35LDk4FWf8Q6YccmWvrkV2jluJENfJ
         x/olTF8UDleAdJyD3QX3B1OIFIkwfYpLkshAYEOz9x1p0+XZMLKvqtvFmpd/+Kyke8Wv
         l9pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BPuLatW6;
       spf=pass (google.com: domain of 3yjnnxwwkal0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3YJNNXwwKAL0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CfGE1Gfz+hRFfuzzD9ConYE/1ot/C+X1NjOFhpOGIlk=;
        b=F84fYz4SlJ2dzyIHifezIB1T7/TLCelQcZKXy6/XJIVKnDp12pc1fc9igeRNU1n8ZL
         Z3vMRx664V4mhufUdzsy6tBbpuiSRB7ZaVnw/WIpwGM+6huL9DQauwKROlO3UYAKQYB7
         V+r65i8aYROWsCltimzfj1ZnHuXTUm98/wS9XdEr91kfXRPxM8K6NPltFai4RXfDZCHj
         2iZKcr+we8lAYWljWxuAgyyNPCB6EHg1ZsOOjjYGjRPR3aqLY3gdWrWTZ3PdG8KJEcN9
         d0ZoI40PP1R9qm/wqqalxer5sJpe43VwuD5s4exVMjJRAhvFNIuQsdK89zqM9AlJ00m9
         YgDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CfGE1Gfz+hRFfuzzD9ConYE/1ot/C+X1NjOFhpOGIlk=;
        b=X0Z/4XHBxmC2RgPNDf8wiUZkLPRcKSlE9Lbdkjs0ObsK9QZozg/8xy6GybgVzQkL/d
         Jdig66oCd43InsZ001ZsXxGAI3AGOtXLzdyOnV1HwS+NgXbEkoyc5saDnWeul92lSJlQ
         TklfnFDjCjeKCbh7BVUlIOVyVEMioVgfntuWkX6oZt31Gk/E05kjMjN5t0w/+lx91wpw
         4CTpyJAaDDkXsRalrEvrbweZ0GwbOxzsavD1t08JKgl3rTuGG8OAYFfogKTyxQzor9cK
         0ym3MvJQ4SK8Pq9URJlCVfXDmhrkdtxDbDK4lsxm10DyPx0bWg3x0dKXQxg6tGcJF7mb
         Nf/Q==
X-Gm-Message-State: AOAM532pVKG4mCf14MSFwtd3cXiD1Qe/8SQpL/1nv3yL50xdQPAK+LFX
	Sstn2fGRn2EPnhSmk7Yn7Ao=
X-Google-Smtp-Source: ABdhPJyz0+z/MNim5f7gFQDMAdCPmTG68HJXvj91RMq2vxx5xLZ6/MpBBwS6RfwNpTEJkc/QIID/rQ==
X-Received: by 2002:aca:f54a:: with SMTP id t71mr1143012oih.29.1598919520994;
        Mon, 31 Aug 2020 17:18:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ca86:: with SMTP id x6ls234016ooq.5.gmail; Mon, 31 Aug
 2020 17:18:40 -0700 (PDT)
X-Received: by 2002:a4a:315b:: with SMTP id v27mr2508629oog.20.1598919520646;
        Mon, 31 Aug 2020 17:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919520; cv=none;
        d=google.com; s=arc-20160816;
        b=oxJhBot1/Yjx+ibJHO0LV6205CuL2kMnlZINZSo70oGFL3zV+d+Ur74WSXPfbOdc7e
         wwhh2on+8w1xmrdp2wf3bJNnVJ4FwgH6acgROGfPPzx5eTM7P/C4HBIhxyw5jnse6Jgq
         ToBcamz8WaMvoJXo38n8ydA7E5sNCS4rgl4OUnOCSs3+eIwtpT1BqcfLC+fLZ+TR/If/
         NT7SBcNmz4W+1WSWh42QwDkBWE12fKmIxGsoj3bkoU7UgQ2iDAeD/P25LNvLXNKdPVQh
         GJVy1uY05PRTN/dVdrRz4z7uX5Nn+Cm/CMJN9LphfnjBZkxFGmwrPfqoCqZvOGUPMvio
         uHkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=x7hoSHeAWK5P4oeCQGgLVlcI02P7mwgUY7iVKcw4mtY=;
        b=OFq+Yh368xiNmGP47WBWjL8UKifkeQ1AwCu816En5m/vBNFZrnYj57pjtOrNRQG37S
         wDrKVeWMFfbhzcoN7NByrGCcHSgAez9Rfe/dAYDHMkd1xOvwCKXRJNOrc/1i9g/+NHa4
         zKvRdYljtnp+GlqJ78QIaOX5kB+ak5Zh92wJRjSVzCJhURA9lJqQNc7lJm0DvAquDhsW
         +Dj6ISx4uHHUZ72aelFaIP1WN5yXUT5zd4BZvv54CRA7np3ZHhIXOgFM/gyifxZjJig1
         bOw9ANhVe1r3VjLvUSzKAcICwirQa3065huIZ/ZswGZwtPxwUyfoRPhxnQBEcSSpTDwH
         gUQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BPuLatW6;
       spf=pass (google.com: domain of 3yjnnxwwkal0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3YJNNXwwKAL0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id t74si597557oot.1.2020.08.31.17.18.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yjnnxwwkal0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id d80so11187453ybh.0
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:18:40 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:6d04:: with SMTP id
 i4mr5885265ybc.283.1598919520144; Mon, 31 Aug 2020 17:18:40 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:18:17 -0700
In-Reply-To: <20200901001821.1126189-1-ndesaulniers@google.com>
Message-Id: <20200901001821.1126189-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 3/7] Revert "arm64: bti: Require clang >= 10.0.1 for
 in-kernel BTI support"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BPuLatW6;       spf=pass
 (google.com: domain of 3yjnnxwwkal0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3YJNNXwwKAL0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

This reverts commit b9249cba25a5dce5de87e5404503a5e11832c2dd.

The minimum supported version of clang is now 10.0.1.

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6d232837cbee..2a70b85b1a61 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1630,8 +1630,6 @@ config ARM64_BTI_KERNEL
 	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
 	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
 	depends on !CC_IS_GCC || GCC_VERSION >= 100100
-	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
-	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
 	depends on !(CC_IS_CLANG && GCOV_KERNEL)
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901001821.1126189-4-ndesaulniers%40google.com.
