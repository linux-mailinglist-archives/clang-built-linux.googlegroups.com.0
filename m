Return-Path: <clang-built-linux+bncBC2ORX645YPRBPVOR6EQMGQEFSYJIIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CCE3F4F12
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:40 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id h9-20020a17090a470900b001791c0352aasf6378703pjg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738814; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzipRjyG/M4WyLJxM6YtkCwVjMRln/W3pwK5o4pPGl1sQqShagCtliH44AM2MzVpMe
         TPRVU8Qk1X5k8jfb5kp7tCIYZpbF+I5n0n5KCPZid1h0HCkiNI3RJ0AoAOiXouEvzZTe
         JoUEhkgifJPlTO11r5tLH5X86fjsUjMql4H8FIbsRvTiNT5rZujRjPyPovzfXOD3eA4f
         IKOAzah6a7KO/Pk4VOlTZ14QKOfOCEyl2hquwddQOTi3Ttotxgv7FLP9N/o0EuzruTPk
         OtFdeB8gJU0F1oT3HHkVSw9auaZm8kIJlgA1hTflkdjZ3f0xJMvUGybqjCIqTHLQ3ENU
         9Gyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nZSrt5d+fAiPbB2c++x5E3W0ICF8jT1sFq8op5tRmhQ=;
        b=ARVQE0/YpggzUGRfKdnSg1vZDE0Vg01nlrPb4bv3GyCt22vdMu/MvbbGyKcZ9Gsib1
         mcy/Y6iHZ8QdM/MEgGz6GGZdDgo5o81YEX6ayGSKjIsmmcb/Hg2T0jfrV+aIEMGJz1aQ
         kcywRYjguzcxyPDvawnZytB1dIanXwqynBmLwCCw0ATpN1cjdBvqwHVmTj/wiAMCTD/w
         gzxtnBIxKQbxL1MyJ67///uATlTujQWddnSs0inijgZkLMSNuUXU5RAbCEAAMzx43WRV
         dlden19/ahPpIwWfv5bmzdOVIQtbT68gk5dEZmSL9H9Ag4vqwBDG5XUhw2urRTmvroJi
         Yzzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TefnZXsw;
       spf=pass (google.com: domain of 3pncjyqwkaik5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PNcjYQwKAIk5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nZSrt5d+fAiPbB2c++x5E3W0ICF8jT1sFq8op5tRmhQ=;
        b=lF3aNKhJQo0uF3uTMf6e0m78/B+Tsh3tL+QoUFLmlCZxhUGHIRwlQNU9heWAemcQq6
         DhgnFYypiJSYL3oSwk8ayqXVmWFCdQ9t7mxy6ZHyOqi2yLcVMCVPM/ljRypt+kSJYafM
         lZbeDPQOCDIMlfwY/UdoPwmB1QZvSD1zxW9BviiRp039sRd+vMMUmRcrUdlficQNNnbG
         SnojAtMMm97ZRx8I+6tlicSqyQBV8ZrLkCikPpsMFVUE479vizI17PQviVFAI97JQsmS
         DcPDp4gBhn3Gy2QP0wxBs5WK+3zGanGpivjJ0XfeSqf9ryHsGURA+YRs4ZRtdrpkq8lI
         jKFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nZSrt5d+fAiPbB2c++x5E3W0ICF8jT1sFq8op5tRmhQ=;
        b=Dgl/6oMi/BqIClDybb+IJD6BpI46xd6BFBdycdiU3PGHeZoE0LLMcIwCztOHPnUpI/
         F8/teVvVzDSQ2W8lc8RCGMLAFL+FyNt4+bE1IMm73/5XPPyJkUDVlBvmRdMt5ma/4bs7
         CMJqHihsflPuxpQL1VWJ5BER2X/M0sS1AAQ9wgLg+9ochEBBbe6ZRZTZnt1hiEO0Q4yk
         wi16l7XKXpHYKyQV2E75EoLxWxZNIXs35wcZSVMxU370r/t+LZwRWsko7392uDKmp+Uy
         IisbW3ovuX1PC//s6ZuFN13G7SOnw1Jz3kqoIuzq6XelprscPBizIt8XUmIxXsTD5aR3
         1iVA==
X-Gm-Message-State: AOAM532gwIpQBL6e/gQilH4GJ+G385NBiv994UJBc1bz2xclojeZjeZM
	rrJVcFCXTAtJcXBVy4/R1kM=
X-Google-Smtp-Source: ABdhPJw1SbJ+gL2X7oH4CGG6/OBVVein9kgsmtgsVPa2CBTEXvJacukgwtC8uTHWG3cayvlopCYYdQ==
X-Received: by 2002:a65:6708:: with SMTP id u8mr33282776pgf.334.1629738814259;
        Mon, 23 Aug 2021 10:13:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls8854969plj.2.gmail; Mon, 23
 Aug 2021 10:13:33 -0700 (PDT)
X-Received: by 2002:a17:90b:1c8c:: with SMTP id oo12mr21036206pjb.170.1629738813680;
        Mon, 23 Aug 2021 10:13:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738813; cv=none;
        d=google.com; s=arc-20160816;
        b=Fh0BwDWZ29cR3AcizNCBr/oGnSAcz+aZYWBAMVVTcob7wu16/9KIsZJXyi09941L/2
         p49JNRfPIYBiK5Bg5NDAY19F/4NbQCKEA5A2DyUHLP0ZZNtN7b7Bmv57B58fiHCu65hG
         2C2GdXUCMpyw39bZ/Md7tf8mh30xIFXZa1iyafHp3bZeDIAxBNUkGM52E82k6p2l4Mps
         UBG0vFdItdDf81HroLFCWritUtKuoHo3HkGV6XOrrWvblUCK8b0qCDV0XXxii5t1kyIZ
         2p9+SG0Ai0z0qv69yWTkpLkylI4DVfhq/ylE6HLTglXE9oSbgxXt1/en7BjpcXVcZR0d
         kkVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=k0Gm7u8L5tSmKVW+xlotholGa6yE9iw0uF/tHV2p52o=;
        b=LT0hcKGG4JExLcmcR3jMihyocEgnrrsU/JuhqxUXSOlSNVGgqBmeC3F8F3OLM3GgV6
         oJEw9peIfXifTpM7j3T5BtZpe/iTnJbfNxi64MJxl1tnXhW+PLbETMEgxqBBn/b+MyMw
         fHkiMZ4xPRqI+qLpDxE1AFm6s2d8PtG0K9RTepI81dhROxjGT4QdVV956sh2R1o3P+/f
         KnYxVDRLzVhWnkzVFOoI4P6pX2B1OhzGsZcx5xxGSIdr7xLowEhTKjrDYPIPot6EFqXp
         1O0wKGe7yhGkd2r1VONJJM3gqXPy8bdGtjzZ//ZWe7mPD+e9fH9QINRJmyuvl7kmI1jp
         5FwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TefnZXsw;
       spf=pass (google.com: domain of 3pncjyqwkaik5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PNcjYQwKAIk5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id p18si775500plr.1.2021.08.23.10.13.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pncjyqwkaik5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id f64-20020a2538430000b0290593bfc4b046so17017651yba.9
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:33 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a25:2b85:: with SMTP id
 r127mr44980616ybr.232.1629738812933; Mon, 23 Aug 2021 10:13:32 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:09 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 05/14] lkdtm: Disable UNSET_SMEP with CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TefnZXsw;       spf=pass
 (google.com: domain of 3pncjyqwkaik5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PNcjYQwKAIk5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
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

Disable the UNSET_SMEP test when CONFIG_CFI_CLANG is enabled as
jumping to a call gadget would always trip CFI instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/misc/lkdtm/bugs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index 88c218a9f8b3..bc3e54e580ab 100644
--- a/drivers/misc/lkdtm/bugs.c
+++ b/drivers/misc/lkdtm/bugs.c
@@ -366,7 +366,7 @@ void lkdtm_STACK_GUARD_PAGE_TRAILING(void)
 
 void lkdtm_UNSET_SMEP(void)
 {
-#if IS_ENABLED(CONFIG_X86_64) && !IS_ENABLED(CONFIG_UML)
+#if IS_ENABLED(CONFIG_X86_64) && !IS_ENABLED(CONFIG_UML) && !IS_ENABLED(CONFIG_CFI_CLANG)
 #define MOV_CR4_DEPTH	64
 	void (*direct_write_cr4)(unsigned long val);
 	unsigned char *insn;
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-6-samitolvanen%40google.com.
