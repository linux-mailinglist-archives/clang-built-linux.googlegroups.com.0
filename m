Return-Path: <clang-built-linux+bncBC2ORX645YPRBLNFYX5AKGQEXOBC7QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FEA25CA63
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:42 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id f76sf2717259pfa.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165101; cv=pass;
        d=google.com; s=arc-20160816;
        b=rdQWiUGLRl7VD/tWt1q/PpgAifG5+lE5Rmx2nCqTKB09JFUG248FW7zQ5+M4Ysmgtq
         Hz6HOXOiZDxhmKWre8H6teuHgB+g8YozQmk8yRPSlz5qONBY7G6cqZqQp2bcQn/v6hHG
         bWPm0cPzut2vo+GYYd8IOForOJbvK6vI/C3ad416SSXTwKOhDvGyktK3zSfrORQyB9W4
         ShEKZI5hAYTDc9k3qHOH8r1x92uLDdxix9U8qrBsK/WzbWKk8B9oY8oUe6d4mcNJoQ3a
         fUOnPCkUXs0k8A7bPlEA3rjMnHmOZH5VMvR7JNoFUcN+3yrRwLtYCZBi+MQTQDlhePe/
         Fk2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=oeStoyHEQu1nEDZOZIHhOXrpKa/zxszs//79tFFFO8E=;
        b=k7M8Ud1epLfLBhAaBhJLZHWxSIL5K0HpKjeNyS4+AzA4nwO2rNZo4l7eYp6WFLlicg
         gpMssTtlVjSefiabMjqdhnTys1KiO7ONjDMKCfRUHvvVXxnzcZQZUwjQYD0g25lJdjnq
         9hk/7dsgH/pSe6W907hgx2Egt0wD9oNyo4q9SP0E9MZJg/bI1SLIm5ka6C/agPzi2H+P
         k4Z5L/bDOeNYqjAxYOb+UGVYpT+yDuTJS4ZGyalzhl6OtbnJRGZsH2y5wlFl0Y7581Tl
         WJXR3/CNEVmVmw49GZ71OgEGqElvoqDWhYofkjOMwpfN9VLE77CUPsAntwRWuaNxPSqc
         Aovw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=foQd1ccG;
       spf=pass (google.com: domain of 3rfjrxwwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rFJRXwwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oeStoyHEQu1nEDZOZIHhOXrpKa/zxszs//79tFFFO8E=;
        b=NHrpDoo2+om4wjvJUReEMrByGhyz+YFd081chw0yhxtTCHYsKxz+TZR8UrwU/hTN/O
         tqwmRTXUfbSzMewsdQmIeUZGuWgy1Q0faubbMQKuuGsksR+OU7X8GNfyX+rfSfRFRqBj
         78AYP3LEB9QHBk/mW5SxqzB4tXGwWPixX8iOxC5uY15vvczxT1Ku60VtUhhUpYXJR3dS
         B8Zj0tWBxdeAFY6B38+soW2b4rfNNUBJKmQjje7jvZlUh8UQz0PJOdcgLv6MMU1PJmWS
         puzJM0kQ59hkaClQgSJcjHu3HHQS/B2UJ3sP0r0dhb8mMYwEcx/xCQopXYFp98kdd9PB
         hCOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oeStoyHEQu1nEDZOZIHhOXrpKa/zxszs//79tFFFO8E=;
        b=Uq0ujmkBJrwgJoScVOZ1Jy9Eun9j1blse4RPD4iKtJkDQ3CVum+0O7WS0HFq9kHCEw
         9QjvN9SjLeAesl4BWl2YCsfRO3WUBnGd4AIlyw3CyYduYRP36ZtL6O3slJwkXOOJowVN
         4qhwj9EMaFc831M4bAxNLIys4MEVCMsa1rD2Wc/XgvTjC96TVKl3tVCFgXbwP/Plo9Ti
         lPjgLvqrT7uTtSR43DN0QWErbGrLNw/V0RkpwTCAOMUc6R3d0DGPWVeieZBjGy7ewOPS
         VsT37Jg0cxqTlwpj2bXew/VC4eOUrsTaiVlvJvnWRxLuodvQOgCWV6kLuRoYEbp0zQX6
         7njw==
X-Gm-Message-State: AOAM531fbplnCZhbXUCdOAtNuX6bWQyzNk4hzzhVAVxYyCoSOsF/ZRXH
	dfdnoznEFF0ZBj2QiCAlt/E=
X-Google-Smtp-Source: ABdhPJzBKhLX1H2b2KcOF2JUsA60ABJ5+Ti1wzJE+1/KA+W6o98vra6LB0Zdxy57s7K5/d4Ya1QRag==
X-Received: by 2002:a62:3007:0:b029:13c:1611:6526 with SMTP id w7-20020a6230070000b029013c16116526mr3742254pfw.6.1599165101459;
        Thu, 03 Sep 2020 13:31:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7596:: with SMTP id j22ls3497466pll.8.gmail; Thu, 03
 Sep 2020 13:31:41 -0700 (PDT)
X-Received: by 2002:a17:90a:e016:: with SMTP id u22mr5125866pjy.178.1599165100975;
        Thu, 03 Sep 2020 13:31:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165100; cv=none;
        d=google.com; s=arc-20160816;
        b=sfsJzZDscM2l5HAIs56vladUMGnseHgz/f1S8bkLPB1wLroJvCc583Z5XGa6NyemCW
         5z/cMHoBAbzrCR/YHNQwMBbZrjoiyzHXXMmj9Blob/3Rx6YzbyKea5hVyzbsdndxfLvQ
         /SSsSEMDH/aGnW4F+KmsfUlTUfDIblzqL812gmbQaxoXc3prsVIc/crDuZkIVWLi2BN5
         C1XdRZKQemF5mgpkMiTBN94BNZp10fc6VrD7d8QtKtfvsKrWFleEtfp0Hv48WL+vzBG6
         i7KWLGDHcG1OED2I2CZOR3K+3zWlgC6fKm2+kEaOopAey5fiOYViTImfAr01m1srZgBn
         sKsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=gZC6Tdrs+v21YOKu6+arkvfjaZ3DhZrnypdcQEca1D0=;
        b=yrBDrFO11BhvVHor2z0DrwQRMR6QdSCbNkN9/kYM2q0uo6d/VNR692+InCUdnIXTrL
         JubpqO+zQcScV2OEOtfr9V8dAT/yoNKwhFF2xxtXVqMm1yoaKQd678xK2xrPYKaaDgxv
         A/JW/LlL4LlKdHuu8QgK48cydVQ7Hg+HGw/KnjrebqYiwJEr8f8o2snpyPFGJEsP2bPm
         6QhQSjtSE/4CpueuOCFB/xQZj0eWL6BBxHA+04StaG7Swz/Dvn4NMYm2uZ6h5D4+bV1C
         cFzU4da06yMvAJUAr+JmiHGMs9gxW/sA5EJNfzNU/8REKO0X6pqMOIBMRX1wRXIZdl1F
         lsqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=foQd1ccG;
       spf=pass (google.com: domain of 3rfjrxwwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rFJRXwwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id p1si228573pgf.1.2020.09.03.13.31.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rfjrxwwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k74so3980439ybf.23
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:40 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:d84e:: with SMTP id
 p75mr5687011ybg.94.1599165100560; Thu, 03 Sep 2020 13:31:40 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:47 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-23-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 22/28] arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
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
 header.i=@google.com header.s=20161025 header.b=foQd1ccG;       spf=pass
 (google.com: domain of 3rfjrxwwkajcj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rFJRXwwKAJcJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
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

Since arm64 does not use -pg in CC_FLAGS_FTRACE with
DYNAMIC_FTRACE_WITH_REGS, skip running recordmcount by
exporting CC_USING_PATCHABLE_FUNCTION_ENTRY.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 130569f90c54..eeaf3c2e0971 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -127,6 +127,7 @@ endif
 ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
   KBUILD_CPPFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY
   CC_FLAGS_FTRACE := -fpatchable-function-entry=2
+  export CC_USING_PATCHABLE_FUNCTION_ENTRY := 1
 endif
 
 # Default value
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-23-samitolvanen%40google.com.
