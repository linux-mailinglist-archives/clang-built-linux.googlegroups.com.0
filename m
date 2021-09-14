Return-Path: <clang-built-linux+bncBC2ORX645YPRBUXHQOFAMGQEHNFJRVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 537E640B78E
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:16 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id b18-20020a92dcd2000000b00234edde2da9sf73845ilr.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646675; cv=pass;
        d=google.com; s=arc-20160816;
        b=qG22nEnwLjmAVMtwktbrrcvaJu7BlMKGhZI3pWSxJ0Pzo2IGzMwhVJub0jV4PXkISM
         uME7zU2uAOur1gByfAkUxy8IXtsG7xcG/qxkdRZ3VLMQ8+eR/xlpK8NeBumRnwElL47b
         RTJ9lt1sL0L29UWso0fyaxldu+d1gc6O4GwHFgAUqmE2I7kSv+FNJrlfal0hckNvFO3I
         4Jfa8F0vdpguPPJLpAx6wrqwJCw0R44XwN16rTOrZqXvMwJmrHMBAlJe+PT0ldAP8H9M
         HvQ22AwvOYy3W5488mLwFkkr9sBFHm8lBJ7IjoUU9xwahfK/LrkSi8vGdSL3pDqfDZkW
         r+Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LBxBv4Lq8c2g/a8TzpXpx+bI1W7sM8QEmUX3QG4R8mM=;
        b=HRgVWccgJsJZM4AwKklFx44tWaZ+CbHmXKLu94CpnKnJAdl80GBXgMm0vxdACPdiZ5
         1SuMaDsgTCnAfeH/QiLyd9tgQnGlbOQOwHcnImMV1gmXTe3EKwA0skzIB93lNnGu/oIA
         XMeK4m9Qtm5BYr/sY33N7Cfo9W+CcVilkZk//WkHsdmp437J3PuAYzKcpKCDitTL7O7u
         FEllwuRyFA6JCGgKLURkQ051y7MO0n6LkpvM4oRt4XjqNyCGvKEQOczm7kq0vPSBLRTp
         diG5NcrmJMH/Hgs/qoOdXG3W2YJQfONuBuVqRGpcgFVOmxBc7zowUyzAOE3j1Hsr53bP
         vwrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=DDt3LXDI;
       spf=pass (google.com: domain of 30fnayqwkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=30fNAYQwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LBxBv4Lq8c2g/a8TzpXpx+bI1W7sM8QEmUX3QG4R8mM=;
        b=qRpnX75BpZAT/tb90YxIA+IhZRiimvqPxzpZ90dJ/jewsq0v26WGgDsMYMNkfblU9v
         H1kkqnowjpbEghD2YnFGSTjvXj6A4c8GviuBX7j+CRTg28Vy1+xiHqLaQaqYq5SQXWc9
         6UVDw24LrV/lAlzQxCidL9XU03qbGrefKaaaPwpsx2rh+pqf0nRGJ1NXCvc6OpISYj/c
         OuvirXNKscRNX8bNgNvuM9J+4qi8XYbNxCqoxFfwXxNCIM9oIe+OJ5+QIBDgiOnQacVI
         rgGCl5vCg1l/xS89k70sirCX6KC5kiuOqCBVYXUZDBoB8RPpHq7yvYSswyAIbwnQo8cF
         oyQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LBxBv4Lq8c2g/a8TzpXpx+bI1W7sM8QEmUX3QG4R8mM=;
        b=YzRiV/njnqX1C5ZIZi+OgH3c0p9DtzHpHTRJmOrDi52IQoe1msOUQ6GHb0EwiwF86Y
         DXareVB+MwqQAOqbS4RNfgDPe11fQ9kxLWrHAkzw3WfZlPRp/9d22tUFV9lKQVrB9Pby
         URvB4fE9dz5yEh/itWOlPENX5z5bUQaJzmPhRrSKOX8vzwB3LWnRzwYCfb0Rrt2MaAGg
         7eOyv6yS9gUeIB/HBD5wwX8nB2N32O3vBWqbfzhyANsiCwEXA0fb4CfJroEZtd3XujWs
         i9C5iRIvzKOq9w9c1Vec1mR+BLtkgZuunibMzpxGu56hRtd9Jo+wE7yuCcQCEhoNC6wc
         G2aA==
X-Gm-Message-State: AOAM530oh2NLtozE5Tpu8PlQwLf6/bLs4XQPioUQHoDrTcAG1uWdDnDA
	hMjweuvpR5LisP3VBszjr04=
X-Google-Smtp-Source: ABdhPJzxV07A5lJ08SNg9d6d/PmGtL8czAgFYOc4uDEnnrHUyOuz48loLZkTg/sDu6Ts+6j3caXfoA==
X-Received: by 2002:a05:6638:339b:: with SMTP id h27mr15995524jav.118.1631646674593;
        Tue, 14 Sep 2021 12:11:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:168a:: with SMTP id f10ls2122133ila.4.gmail; Tue,
 14 Sep 2021 12:11:14 -0700 (PDT)
X-Received: by 2002:a92:7302:: with SMTP id o2mr13368979ilc.44.1631646674028;
        Tue, 14 Sep 2021 12:11:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646674; cv=none;
        d=google.com; s=arc-20160816;
        b=kw0Cj7S2VNZf3p/fcPXLJU2QvtyxzHUnc/hEfy26alwiWZwQ+lttECSAzoFASf6ryN
         IhyvVr0bDasO+v54ERRd3kgSuQep+y7cckBhhXfJ7rxjx6q/EgVK3HE1+R/YcZGgph6O
         H4cCpSz2B8TXH+FNv6WR+KVjTdFVVxbcm86++0blKRmO50O5iXLXShCA6j7LuvfV0byD
         8QRAZjGUc45NvTtxGYORTS6TFVKG1hs6MWlHkiemlAKdX5m2FvBBv3uuLlCdUDLIgOvp
         +ZwIWGK6OnD+q0cDwh1AbaR/RjSmm9noJiBWl0X0YmYe/P3Tp0Wv35S9r/CT/L9BOjRQ
         Dokg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Be3mh0Heurxu9hJFvemOYTuJUhV3+qi/M0uRvmj0wVs=;
        b=RlIIhkVJrXvnSO4zT/3ePyMY+Eyr1pK6UFR0dNoO9f7wn0irhqgFkmhnOyGxMTQO2i
         FMp3K3m3/3J+UQxX09DnLX4moLFz9tcdMgGrkB3IhxT0KY4MJy7/eL+5aSiMZRiJU9eK
         w5DismahwsxSFaw13R031I6M4fdAvOUDo9n7Lo3Npo5EnuDQW/9P0ONq/xiyNEqaqyE+
         JV8/Al0r/1BZ+pc4vfy5wRbJkagUbv0cZManNbBMxZQblvbFKdyOpRTKbKGL1A4CcPNp
         sPAmKMm9qffAEt0u16AneojL2Wd+y//3MGzlSjo2f7xfrV4qj22Qi6Rt4yYsfvkfziNL
         Q2og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=DDt3LXDI;
       spf=pass (google.com: domain of 30fnayqwkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=30fNAYQwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id z12si378134iox.0.2021.09.14.12.11.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30fnayqwkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id e8-20020a05622a110800b0029ecbdc1b2aso61517396qty.12
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:13 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b286:: with SMTP id
 r6mr7155507qve.33.1631646673546; Tue, 14 Sep 2021 12:11:13 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:40 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 11/16] x86/purgatory: Disable CFI
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
 header.i=@google.com header.s=20210112 header.b=DDt3LXDI;       spf=pass
 (google.com: domain of 30fnayqwkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=30fNAYQwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
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

Disable CONFIG_CFI_CLANG for the stand-alone purgatory.ro.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/purgatory/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 95ea17a9d20c..ed46ad780130 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -31,7 +31,7 @@ KCOV_INSTRUMENT := n
 # These are adjustments to the compiler flags used for objects that
 # make up the standalone purgatory.ro
 
-PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
+PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel $(CC_FLAGS_CFI)
 PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss -g0
 PURGATORY_CFLAGS += $(DISABLE_STACKLEAK_PLUGIN) -DDISABLE_BRANCH_PROFILING
 PURGATORY_CFLAGS += -fno-stack-protector
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-12-samitolvanen%40google.com.
