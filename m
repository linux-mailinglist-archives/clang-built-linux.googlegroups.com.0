Return-Path: <clang-built-linux+bncBC2ORX645YPRB74WXWBQMGQEVJZOYYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id EC252358C53
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:19 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id 11sf1627449qtz.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906559; cv=pass;
        d=google.com; s=arc-20160816;
        b=PGUxs/ekolWQ2W/Ijf4518l42fb2hkINyZ3dEEysGsfEvbc6cvvoZ34CjyolhPQ31L
         ks0rTzEijGo69HDyHojFgS6qMk5hYX/e3IMh1iSCZ+u9KJs83kxx6+b1hkfBWO4pmv10
         xfaAiEhF+8mSHeyoKdQr/rjhRfI/WULhkriy1KB+GibgMDOPd+z9LwCmgOAs4U/ApX79
         PgKMaIViAu4u/VoBhBWvJX6W+k/R1T8dCcT1dSP9gFz+RemspZW8GTdWryNjWS/fl3Yq
         ay/fAwJPctQLftCmZyyC8653DlY8dUp9W6ehMAX8Ez0AWlsl3Ef6nmRfvry6wjTMdbvG
         /sKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tvUTc9oTYdd5G3C34tWHk8tWU8mtjYboBX98U/SXRcs=;
        b=SuCKQwlQ5kfGhYwEn19crJf0sSe4G8w7cXxOXww7HAgikECGI/2POF/HAcPIUtNMLx
         OyqkGuh0j5w+Yx2TZznjcXn4rEMrhoMQOzu/6x/SV5eO7mdQ3jZSk3abZB8g4vDo4MNM
         PZpgzfovhNxxk3p55lWBjvBsjT+IccAJ+KvIDgZboJWRY5kdCzHQx8UQsLYn1v0W9OuS
         PGltmyJjMX6GmSMv/FF+fsGnYurm2tHzxZWqKNnKSOptkDwAcUjXJ2tYSg3TmxCGa4ml
         9TPqAm+3z3G5qczNzJzikyr7zEHHdsAMfHOqjiG71lobLxOf0ulledj+9UABoSH44Nes
         VJUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mRyvx1Zy;
       spf=pass (google.com: domain of 3fktvyawkansp7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3fktvYAwKANsP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvUTc9oTYdd5G3C34tWHk8tWU8mtjYboBX98U/SXRcs=;
        b=j03pAKYPf2rFm8nzUc9mI9PEEDd1HxHomqOF6ERe1Bc94A0oO/J27momArEmV8LL/g
         ToJA/wOW61akUtysJiNXWxVDSvNY3Kse+7t1axSFeoO9kcYaqQ8ulOQ0xrQPGebPj+Zh
         WHuAesFngHU9SKrlkTs+lfEgmrNQYifn2OPii0g3KesHK4QT7rzIAMtgX8P6jPHPGg5T
         sqB4XYZq+JGrekRKu43P7eloBFziiSK6kM+vQQpcS8Awt/5i9uJpsjql9ZZIP/7FCekl
         5I7EwkGti5BVsM02qow6FxVPvhKmj4lTZlf6n7F0jr/Ba+9Tg/QvGKRxbVTc4i5VVDft
         aJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvUTc9oTYdd5G3C34tWHk8tWU8mtjYboBX98U/SXRcs=;
        b=M3VNgHazC4rvYjh5kBpHZeWoc1gSqGgqzKrvTd3/E+/3FqrQfzLQn0ICBzRhbK5PU8
         jG3Ug6/tKG7vTtGQZeEgt08L7Ax+T4RRHuPty3MkTRqBxlopJI19SWdC8qtqYM0O8eYv
         a+f6G0n+Vuivc6Jqo1t7AxDQHUdkdpqOnCNMUR47ZpHOm328sFJ2Pu6HnloN/6br2bpA
         vrt4a/uLLaizDCeUkrrvnmtfCiKba5nUvVP6gnBDUM/Ml3m7fATSAHpvA8aQxwEk9Bhw
         64ioPfelcTF0fMoAOUqUBQjBJnfpPjWqIhnEnLkaOYj8TewHEcXu1TgJ2YEulx95CR9v
         rY+w==
X-Gm-Message-State: AOAM530mQXg/MzM7kQF5uQTfm2sXT+JRS1e9iuNm1VdwsA6biKB/K4rq
	BwmoUujLElaPDgFHEmRXemw=
X-Google-Smtp-Source: ABdhPJzvCQsQHjcVvzd9nYhak3gXnQdpQZHAuMQac0LNl9T0MGqI6jWAB4brrPc+X5cA9jQeqkcwwQ==
X-Received: by 2002:ac8:6690:: with SMTP id d16mr8928697qtp.312.1617906559103;
        Thu, 08 Apr 2021 11:29:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2091:: with SMTP id 17ls2594379qtb.10.gmail; Thu, 08 Apr
 2021 11:29:18 -0700 (PDT)
X-Received: by 2002:aed:31e4:: with SMTP id 91mr8980319qth.9.1617906558673;
        Thu, 08 Apr 2021 11:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906558; cv=none;
        d=google.com; s=arc-20160816;
        b=YnoYwP7l+9lD6G+NVCyUJCdBKZ9nHank7GRd0ycCtkKZlAYYJuPoT4n8yaD0TCCL9u
         0WAyV5Mlr7cu3VUYO5jv5dS9kYGZ3LSsagjah+FO71GgeGrq5JoBvnaj+jZHmvAuPMZW
         chgw9Xeik9mwkqTtk5uXbZnTBSyERUtdEnJyDooPmUH4Xn62Po8Dn9auHbwFSG998NLi
         SpSa4Ddk89omePtILKeSVjYE5/caMCvg5FY/C9eDhuUPD0cIp0H0prT8XQ06JWwiXkKR
         zRAZ11bkeiNBQHspt8kORezIKNM5oF328XBF+F1vB6qw6O6Df4lij6SRR0MHe+O4J/P/
         u3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/RFtNNq4R+HQlfABCrnOp0vGXtCZ+PdK4tYVAs3Xgq4=;
        b=fiygIoHY6Hj2ldxe3eBDoB3x+pcTW1UnhVD2+BBK3uhBecPVUFoiB8EuWlk+fHPp4q
         nMVZQlWS7kcGttHymWBJ7BImTAGC+ZJvFqPuFwo6iG1r/R7Fsujk+j/koJBq4eaL0eml
         fEUlRFgxIo+oKzJ/Np6y7AqvYOkoOTCleEM5qR/Q1NBOud9eVpECnEzX0WhpgrOq698c
         p+kLkj6qJlwKJc9OErOMy3dxsKE2v5cJ7sIJRxE7GIT8RtjDibg7FeqIzfJnE+H7NIAG
         /+CQECYVweCr5G9qEZaigqsu2qlg6tfLi5B28h0/1qpnLNpub9c/KhD09a4WvXRaM3S4
         05zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mRyvx1Zy;
       spf=pass (google.com: domain of 3fktvyawkansp7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3fktvYAwKANsP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id a15si35480qtn.4.2021.04.08.11.29.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fktvyawkansp7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id a1so1831692qkn.11
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:18 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b410:: with SMTP id
 u16mr10174868qve.8.1617906558331; Thu, 08 Apr 2021 11:29:18 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:42 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 17/18] KVM: arm64: Disable CFI for nVHE
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mRyvx1Zy;       spf=pass
 (google.com: domain of 3fktvyawkansp7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3fktvYAwKANsP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
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

Disable CFI for the nVHE code to avoid address space confusion.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm64/kvm/hyp/nvhe/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index a6707df4f6c0..fb24a0f022ad 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -75,9 +75,9 @@ quiet_cmd_hyprel = HYPREL  $@
 quiet_cmd_hypcopy = HYPCOPY $@
       cmd_hypcopy = $(OBJCOPY) --prefix-symbols=__kvm_nvhe_ $< $@
 
-# Remove ftrace and Shadow Call Stack CFLAGS.
-# This is equivalent to the 'notrace' and '__noscs' annotations.
-KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# Remove ftrace, Shadow Call Stack, and CFI CFLAGS.
+# This is equivalent to the 'notrace', '__noscs', and '__nocfi' annotations.
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS) $(CC_FLAGS_CFI), $(KBUILD_CFLAGS))
 
 # KVM nVHE code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-18-samitolvanen%40google.com.
