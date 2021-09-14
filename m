Return-Path: <clang-built-linux+bncBC2ORX645YPRBWXHQOFAMGQECXTMNZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAA240B791
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:23 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id 20-20020aca2814000000b002690d9b60aasf263806oix.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646682; cv=pass;
        d=google.com; s=arc-20160816;
        b=RwiErDcez7TdYFwn7F5TSdcF43l+goDl4lPtJTWMR4qqOJYd4WLXYH4ErZEAevXtBC
         z1IlE8sfxr4YP3RW9CHBaBcYewDvvrjaKT04SKU3h5J33B/vMBS8opQIcuDJ6eBmiFWm
         JVMUjQXI4DLnjEJBtXVA2EkJLFXdzPOJGXGjgS7oWjseeNI8Fyavg1scXA3zWuJhSFN/
         aJVm43y0nj00Y92u1wbq95hMc/KybZZvlK2ZhyVjHEcREGjJ2/sxOKXAIMdeT8n4B4CU
         VFFRlQj9YByK05em/YvuoV/DbRip/5L2uMg/e35JBinnV7WSW9jbczgX3t8j6+6mfHY/
         ueKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=rovg7lmj4ujyC1XnKX5NQYmcNTgAUZMK59+XbESLfgo=;
        b=q4vKxxIuw6xEn2Gh0dvHl5RvsMNVP25pIDBOiQwjAaPtqMIbLf+TxT7J5+coDIqPmz
         TszCa+wB/TjFNDfbB1bwLV5dyDgat5TxXzHOulbnKGKIlGTuEQDEijUFqGXVsZuz2vnb
         kAGhDnts+hG0VD7MKwwpch+ur7LiQnYPeGnJDCL0SgtT4dFlxovQFsst00nvG3wauEq0
         Ijq8L61kp3Aeyg5tNlM1HKbHyLK2szhCyMmkS4oNcs8B4Mb0EbPog56GdU8+Rs7NMx+B
         ytvucMvvbQSEYeuRXQP6N3XKM3QP4l1NIzuHDyyrbKDc04RG2wTF0WO5Yq3255+cvCe4
         eFJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=nD5XzlTy;
       spf=pass (google.com: domain of 32fnayqwkanqi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=32fNAYQwKANQI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rovg7lmj4ujyC1XnKX5NQYmcNTgAUZMK59+XbESLfgo=;
        b=ozb2/ygbFLiQy6BS+Og6NSYbrCfVBJ5vQmFgbLOLvTCRkQXSMP2J858cWbJ0tfi/J3
         ulZ8a0qAfoi9Ry1Oru9yMIjv9DRnKU4Vsihr86R+KFU9mOfQKtVFuvkgyQXLolR3Nhau
         25zuNCQ4ISMLk5mXBvLWSqxcWzSJz8xQBdnsYDeHeoGjr/lZfeiVjNku7q8TMnVQSniA
         NF74Pr5mWDQ1HlM6atT1jRt3fku/8VDsp7SHn++GeqkVfIWXWbHYqqjOZXEpeud5dqBf
         BUiS3vSCjtKnf/mEJhNRd1XeyglFb73X6BqvJeIPoSoONvJjsm9Rd0Bq1vF0Jwv6xcqZ
         puUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rovg7lmj4ujyC1XnKX5NQYmcNTgAUZMK59+XbESLfgo=;
        b=rbc7/NAvd9/mlcMcoNj8k7PKPYWgKjJacq6msmP4jlhfCqyYmiiK7eOTUHQ+Yy7n/O
         4FLOhr7v5UXEd2ieFdOT0qiJVqemlxMX+/WEFBWPp/rrLP6UcK+1gELm9VGNiqiZrxn6
         1THa8XRkR2ZewoAE01eyYR5FqkIOimFSRSZyLbI9QAUZbl0l6cryI6ALuO8PG5E4eiKU
         bCvVNQJGmQQkFcJxmSbiAy6phNaedec8dkd2gSyofe878nRy7v2lLVugkI+pB9m/bkE0
         oDmiDkLDpIhgXc5H1o5RehnZo6KG3tUkoXCHI9t27buf3tBhTFVntEr8Vsg9d5XnMB1y
         iW4Q==
X-Gm-Message-State: AOAM531kRbrMkWixtskUQ/UwZjNQj7GTKKdSEER9dJ6+KmXwXHMQfHvs
	mXINolUEo5XJncczdmW48R0=
X-Google-Smtp-Source: ABdhPJwQygVhaTJ0F71g8CvH7thN8iXY3gFbHEna+Vtyvkxk/mefB9pOg+vqqSdz5cT046R0NxuTgw==
X-Received: by 2002:a9d:6143:: with SMTP id c3mr15918363otk.135.1631646682524;
        Tue, 14 Sep 2021 12:11:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e2c4:: with SMTP id l4ls1504oot.5.gmail; Tue, 14 Sep
 2021 12:11:22 -0700 (PDT)
X-Received: by 2002:a05:6820:502:: with SMTP id m2mr15626527ooj.47.1631646682133;
        Tue, 14 Sep 2021 12:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646682; cv=none;
        d=google.com; s=arc-20160816;
        b=F84dSqQzLnQzMYFfw914Wy0gLvvd6eEQ1mQgIQTL1F9MXpHkPC5ZPODzl7aGGIexvK
         omk7p6+UgSv9+h5z8fBse0+iB3+34pCOD4rcH/OL8NbsA8ygQfywy5HMEnd2wMyh4P4S
         sONdJXozdGtULKt7iyjroHTWwNqeZqJBPvrVIOrZ90jilnMGzpyqiC9h7Kq1h3XkGdbb
         x4YUlkHGvXIaGgtb5ZmMceeX/pW8Fjxg9VLycUCUmk8ax6pqaqhZWYLAoOe8cfTxqPtI
         Osgst9t/Ee6aXFFIHXDfWtc+d4b8/Ezvv1o+i/Thyo6xOpGzxYQWLs+rfziugJHfXXVJ
         EOoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=fFCvJWug7bauvAerSk8DsPanFpmiKREnwLe0beFIomQ=;
        b=nI0Kq2ulMhtcvY9IPLudhexYtQ6N4OZ5B5ynV1+ir+DAo7VAV7c4WtIP7Wm1/lmTn7
         dl7MI/YiIoPMDy85/BLtU4k3cEn380hydqj54z9qV2kLSaEMGK48/oeLsOqbNDbjR0zG
         3ciuvV6ynhxiEhUkultZWcvpbWIgLPcV6Ffjfw7PVolcBYHmVlwLOhnVwdUnTfLqn4YK
         BrruNdbJJVQVAzw/zLjAXk05B8F4FDfPcqv01W9s+0ldmduW+6A9aTVaG8kM4d4vhWot
         AqjGkjj2N3lAvVJVQ+9wBPxC00LCYSE04+9RN8Z2j5cP2PAxbKMmSzIs5QFgakeNff0B
         ISMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=nD5XzlTy;
       spf=pass (google.com: domain of 32fnayqwkanqi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=32fNAYQwKANQI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id b1si1540058ooe.0.2021.09.14.12.11.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32fnayqwkanqi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id u6-20020ad449a6000000b003798010ad14so755946qvx.10
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:22 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a0c:9c8a:: with SMTP id
 i10mr6916385qvf.59.1631646681262; Tue, 14 Sep 2021 12:11:21 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:43 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 14/16] x86, cpu: Use LTO for cpu.c with CFI
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
 header.i=@google.com header.s=20210112 header.b=nD5XzlTy;       spf=pass
 (google.com: domain of 32fnayqwkanqi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=32fNAYQwKANQI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
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

Allow LTO to be used for cpu.c when CONFIG_CFI_CLANG is enabled to avoid
indirect call failures. CFI requires Clang >= 13, which doesn't have the
stack protector inlining bug.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/power/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 379777572bc9..a0532851fed7 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -4,9 +4,11 @@
 # itself be stack-protected
 CFLAGS_cpu.o	:= -fno-stack-protector
 
+ifndef CONFIG_CFI_CLANG
 # Clang may incorrectly inline functions with stack protector enabled into
 # __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
 CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
+endif
 
 obj-$(CONFIG_PM_SLEEP)		+= cpu.o
 obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-15-samitolvanen%40google.com.
