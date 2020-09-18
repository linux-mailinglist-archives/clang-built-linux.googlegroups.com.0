Return-Path: <clang-built-linux+bncBC2ORX645YPRBZNKST5QKGQETWSFL3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 71055270651
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:34 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id g8sf4386258pfq.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460133; cv=pass;
        d=google.com; s=arc-20160816;
        b=DXFO5mJl9ZULsxkmo5wqjyJiKtU1DKN/wzTyvH/e+TiM8+3WLTOvgYIitPtCkg8bXd
         ZNPHGdRNObEpLS7nFS/FEuK2gDdB/wfgWxncbNiQv6gDAiZTfGCJoycb21Tuao6mN98u
         yMMHbH8PT1aE3eYsgYM5x6I1URbni6WbtKDRir/Tq5mPTTGJsg3OUSfcCRkvcfHPxXDo
         Ps/ekM/+npUIK6WuyUo1tlN9L7314bWXhIuz10YiB2z1q+6hNMhyxM9Jc3bXlVH7sEP6
         hUC7nDyKc6mQhwhiy0yy3KZgLw1dxLO+ehdwZBVl0zzqWQVkCNIr2sb8yoAhUbBky8ty
         3Ggg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=FA4FVt+DgaYpSdwQKrBmEF0wo2wK7VivUKRi7Pujw5s=;
        b=KNqD9L8nQuNDxDQFfwylsvnFhdHAaUIOuH0LPTRFijHYuUGMZMO6UkfVrhu30levM6
         20vDJHsoXFR/Cboq2tyJExWCI1HZY4gHHAAK6v8fAylWVRQ8UWtBm2ayJiuGVF5eBrOD
         2NC/g/k9WkrWBOlIlTTjC/dTDeRF8FBPnCk1ufSKVQqG94r8KKGsjfK1stai1/BxQRss
         IsyN2KVboxZEtGWHcm0Hv1n7drSWXrc2/clSuiBK25vdjNdYIHTvzgJR4z+8ivOE8cmI
         E0KShmFNfFDeaOHMe7nv6R7nhiJgvpl/PZrO6q3nR3gOMga47j3AEQ9AzclkFHRV8HpP
         /qaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UfHLbm8n;
       spf=pass (google.com: domain of 3yxvlxwwkacqsamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3YxVlXwwKACQSAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FA4FVt+DgaYpSdwQKrBmEF0wo2wK7VivUKRi7Pujw5s=;
        b=EP7PXtAlIqx20OPdwSJhvPAmzl5qZsS0bvERgFTcEbZrEUV4BJCjI/l+MZCuI4VPoR
         HbgTdYRNAaOP+lGCx5lYgI1YnKYQRTUd+J/V54v6hQ5jkQyD4PilcujFJpmTbtnwpqZz
         48awy5KHgkrO+FHkNz5juyta8Kmmwv1aO+DqF1Uz/iJ7+17P6bqc+oM4XZDPQ1+OqmCf
         mqCTif95T3lZVn7oIsDp+Td5291ZY144WVCryQq5Q3+9akmngHJMrvMjWu0CKcx9TICK
         sC52GZPKbVhweQqkt2JSsdQzyfxWoF0yN99PCbyIS4T/c2AcnTooI0g8hnTN/KufOMA8
         tYKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FA4FVt+DgaYpSdwQKrBmEF0wo2wK7VivUKRi7Pujw5s=;
        b=gQqiwxBvRAm9670LtZ3eBcDyQGCzRP9v3R6lhx+2XZuBYPPSm6V3NuqTAChE0yopKN
         LuwyO5aLyFYVcjMVPqFCgRiRajXZP3JSxyYRvsSu3CT1hft5I4aezBGP/UahNb2Z5nnr
         hSAfc4kmfv6pBcwD+WivYaWdT/roq6ysMQMza7IDdV/p1saMy+V0WsqqA2jj6dsYYFks
         ds8DlzkC6ZkZZiArtaqWqZHKiTbV5Hlb+SoKxa/SuUyksZoKUp2/h16+wIuiZeGf3JMz
         KBPSJtymWA7VxeK3GoC+URC4mJ1GNQ04jsgwuyk1Unw1p8LK3j1rwp+6IYpDMim/W+Tj
         TrHw==
X-Gm-Message-State: AOAM531jhi371bj12IKN808WC+qF3Nj8S2nwfG0Vv5zAIi0vnmqP4489
	qlwWt+ZNrleep2dmn9X/PP4=
X-Google-Smtp-Source: ABdhPJyfTndemKaRjgu0gf6vJSxI+8oFV28rCcADXTpU2lDZEJ40CIhzrKd7c9lA2LO8LI3ySed2yA==
X-Received: by 2002:aa7:9548:0:b029:13e:d13d:a08d with SMTP id w8-20020aa795480000b029013ed13da08dmr33137892pfq.36.1600460133172;
        Fri, 18 Sep 2020 13:15:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:551b:: with SMTP id j27ls2385320pgb.2.gmail; Fri, 18 Sep
 2020 13:15:32 -0700 (PDT)
X-Received: by 2002:a63:f441:: with SMTP id p1mr18649926pgk.453.1600460132597;
        Fri, 18 Sep 2020 13:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460132; cv=none;
        d=google.com; s=arc-20160816;
        b=JpFr28Q2R1uPeUlOEz9dT/3ZfrwWXpIuoh9nCCz+nQRiriOmmChJ0sGJkLl48/Lc2T
         LDOljtpA6wbwR7INc4mr52Mw6SpTnu8YR5uc3UUpvnBF4rlx92vq/Uq2rXyCyTSjRua6
         MAFOdPn+ZDSuJ1rNv9fRm+ptdVMsQSNVekG+GXwUi3qgzncVxew8eF8c8v4Z3Tupotkv
         1Zzo+zX19T7QieH8lixa3WM8b7V2MjMqq5+tthH58siROCtdeMfFrtdpGfKVwJUgs1pi
         zC6FDQLe3iYSGOn2Ymlw0lcF4P4ApbXNcAHMmf4ijfwA4uFlV8MA9W68e5P6LDjZfm/T
         YjzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=X2rJBbb/dAb+yfnrEjkjEFh1Qlc3T9c6r5OVY+2F28Q=;
        b=LQ5ZlU1pCeNU3hyUGetAtwPiLwEhEMyjBJfg38Znn+Rfnyw5eLk6yNsq5ES8xWdWlN
         o4/EhPcGNGexpxcKYBwk6AyTKAZuOSPtFARcXj2ceupix+mK0lHmUL4B+tKnOW3ehhMV
         ezTKO6o2ipr1dhJ6Fogj/9FPOmeLEw5RFfpS6VdyayRZX5AmavngSOuNuOm8qyjQXLbW
         7MLCO+Cvs+6UJ8TamZy1awoi4poRjl0fS+40QF9Sdct8ItV4cyUvr2G5jrb0v/bLdcmf
         IxU6o+zd+dHh78afGyJWJUKr2F5Agq1T3wjAJrMNrZ4hFrSLVxbGcSlrc8ZMGQVIQnbC
         Uijw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UfHLbm8n;
       spf=pass (google.com: domain of 3yxvlxwwkacqsamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3YxVlXwwKACQSAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id h5si105312pfc.0.2020.09.18.13.15.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yxvlxwwkacqsamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id t4so4542836qvr.21
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:32 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5a0e:: with SMTP id
 ei14mr20725499qvb.15.1600460131755; Fri, 18 Sep 2020 13:15:31 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:28 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-23-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 22/30] efi/libstub: disable LTO
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
 header.i=@google.com header.s=20161025 header.b=UfHLbm8n;       spf=pass
 (google.com: domain of 3yxvlxwwkacqsamitolvanengoogle.com@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3YxVlXwwKACQSAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
files. Since LTO is not really needed here and the Makefile assumes we
produce an object file, disable LTO for libstub.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 296b18fbd7a2..0ea5aa52c7fa 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -35,6 +35,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-23-samitolvanen%40google.com.
