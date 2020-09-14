Return-Path: <clang-built-linux+bncBD6K324WS4FBBJGQ735AKGQEG22OUVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id AC083269321
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:04 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id i10sf139417wrq.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104484; cv=pass;
        d=google.com; s=arc-20160816;
        b=0sJhUZ5X6bsajSWxedYXPwihHInK1PXZkjFH2fqrRZwdI9rjQOkQmFHo/fAbsZ9UNr
         AX/3xKa/YBAs8KO02GEmsrVJS+hCCTBd7xOcY67nwFjWWOksc+cy6oFTabRXmJYi+LX2
         jkohmF6zEiH4m7ZB2/Lcy6L0n7jUt/acksFWwZKm5Q3mz1G2+lOTMkkMjtQQ9aPbUJp8
         ocVuts1FkVsWvb4uCAnWm35SJDwTFSijLEViknychKqmhf9RgzUs7YkDwwSq8Ebjr7MF
         uCOLa7mIQF7rxG7RpAR+3kTFi2FTyT6zvz0LfA3m1FDxTN9R5klQixDuNpPV2FQAvcDi
         FixA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=KPHf9Ukr/tLdVpy3JLaAzBWv65nAoDHAM055DkRfn9k=;
        b=JjOYqMjmHN47wMZPrIiFA/34JpFuTxE+unQHrJB1RdUIpAUZs1DfZUrDSJmRBx5Lhj
         BIstLozUNIYu93dnaI59aEU/hVYh6zBu75OKcn1RTJ9CKfzGT2+kNL56GXXu+cVoZXHi
         6Xnvfk6M795sjGXZiudeCWUy79uwXgtg0E+XyaG3PFUP8dOO8lH7L7H665oWIAW3tvMO
         MQzB3mhYewWmr0TUUYnu0scP1mXhJ4e+fHsxWcqTs2pPf6BK/cYHHvNLaJdGfGMdb2Dg
         pyOoXo+dkPvLeUTTaiizeODuW19CPtHvNlHG1XqgPtT+FZKaECjJW+KE3i//K4NHtKKD
         D0Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ccbq3bhS;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KPHf9Ukr/tLdVpy3JLaAzBWv65nAoDHAM055DkRfn9k=;
        b=BxQFyDVdlbfVrI+wqXHQl+K3Im4fh3dEUspILhwq7NSTszIFHeQYyk6PeWJwS64dfr
         +JLTHPjvOx3MM2qnJHRl8WxZ3JJWQod9KouUuBCCjv6o1xZGf8ihKHBrUg0OpxnvX8Hj
         hKgVls7ihBTymaL0oGa1gfjjvLRgdPzJPu6SxDWDtMQ0yxwMhVxPO3g11n7+iKTdh1B2
         4fBdiFd32LTWEAF2bZeL3TW+PFQXmEsDd++3edHNvWgzgSU/LCzbeUik9OrV8h7utrof
         roSdG4BWEFTCrdorXTun0LmH+Vj5PkgrhLU1AoMKD7xBuuGDMtsFmRc1NpvcjANE7Md4
         FG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KPHf9Ukr/tLdVpy3JLaAzBWv65nAoDHAM055DkRfn9k=;
        b=IMGMguSjI8mpuDRlyhbCGnVzz6EWlqOwWUzPMNE6PaiaIvJzcI5LihCa/M5TyF/EYr
         7/LvlxejgykATr6H44JpdlA7qNSXk/6o+L10WnAdvWvoDomSK6NE2aK+EU6O2FQ6nWJB
         78roQsH5YYsfUzbUqxNkW5xiNXKUZkbjL5MbxoYRGUKIjlIID0VtL41kkBWlLqoma9ZW
         dmkcwGw90CorlfXqbY3fJgjVvjUy+/3k3Bsv5HwkuSya3WkZiOYmaB/5twIILoTkyHxc
         xjd4Ckb/eV2shXS3bcfW3M7ZUk4Tneen5M1QwbjXcJdPLCj+CqnwMu0Wkdps53QJE5L/
         W87A==
X-Gm-Message-State: AOAM532sN72g5THEZNJo8M5oUBHaEXbAG1V/YpOHMXFZlcy7717CXH9y
	LJ9ka9lXhCh+br8NJAZL51U=
X-Google-Smtp-Source: ABdhPJy7da6DMcWOBrBIJsMBedXIrfYDOEeCHCb8E/vxVRtrE/ZqTikaqGZUNVffkP2RohW7ezZsMA==
X-Received: by 2002:a1c:1d52:: with SMTP id d79mr491521wmd.82.1600104484414;
        Mon, 14 Sep 2020 10:28:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:80d7:: with SMTP id b206ls13493wmd.1.canary-gmail; Mon,
 14 Sep 2020 10:28:03 -0700 (PDT)
X-Received: by 2002:a05:600c:210c:: with SMTP id u12mr439980wml.185.1600104483469;
        Mon, 14 Sep 2020 10:28:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104483; cv=none;
        d=google.com; s=arc-20160816;
        b=GYDGPpFdnfVZ/6teFMkyK0lH33D9VFfTVN3IsoyURsWNi3e+Ihoq8Oy//IB4tvgIhF
         Mrz35wgIxMlmRc62mLKFVnAzMZ8i6L27jG7NroBJx7zUm5m4ZPqNpHKMfl2eqyqaTjqg
         0nK2L1p6MMiSm4BI1/aYN5wUI5YdvsxFGd9EYYBXbjhelSmSXQI8jICop2z5axLNpqAn
         7Do4cT3NFcRk+7LXNsBDsipt4fxFVbmWGhZzlpMRt1fquhMx4p9KhfLWgzGFMkDsNqNS
         UH8sdp9q9xVCtfPzLGCcxMO2NiVpC9T63FJ2fEIf8Ff8U04Ja4agCiI4knt/zHP1xOBs
         dXoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=067z7eOkoIjswCFUZaQiAlz7Yh/C6SQlkfm83TpWTDI=;
        b=n3Qm5GB0nC5DIlTcl18RPCQVTln9i56G/68n5/cxHy7S6hFUXZeEF/oQsSVSz2Vm1R
         x4QEYyeRLpdSolmlQWrgLGZpXHph1ru1T57vRorN02aMIehjEWqvvSXZRqtuNZwBx+YV
         /YYd0k/fKrjoKE3hru35O9LSrfZIJR9oMXp56V7yosL2Y4qXcVbXL644hiTKc1KIBRLt
         vRy0leQQuFAsPGT8xrdeS8S3m15LNza8q65saPenfIsTXacBUkdxVfdtKgC1adBtqT/n
         p0dDh1t0m6MeH8RygPPFE97gTPLKEusuXK23AQxTey+BDnnbIiqt/HwX0wR7awnGkkZU
         pM/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ccbq3bhS;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y64si318315wmc.0.2020.09.14.10.28.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id a17so505783wrn.6
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:03 -0700 (PDT)
X-Received: by 2002:a5d:5281:: with SMTP id c1mr16890910wrv.184.1600104483118;
        Mon, 14 Sep 2020 10:28:03 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id y1sm19586977wma.36.2020.09.14.10.28.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:02 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	masahiroy@kernel.org,
	michal.lkml@markovi.net
Cc: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	james.morse@arm.com,
	julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	dbrazdil@google.com,
	broonie@kernel.org,
	maskray@google.com,
	ascull@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	dvyukov@google.com,
	elver@google.com,
	tglx@linutronix.de,
	arnd@arndb.de,
	George Popescu <georgepope@google.com>
Subject: [PATCH 01/14] KVM: arm64: Enable UBSan instrumentation in nVHE hyp code
Date: Mon, 14 Sep 2020 17:27:37 +0000
Message-Id: <20200914172750.852684-2-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ccbq3bhS;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
Content-Type: text/plain; charset="UTF-8"
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

From: George Popescu <georgepope@google.com>

Implement UBSan handlers inside nVHe hyp code, as empty functions for the
moment, so the undefined behaviours, that are triggered there, will be
linked to them, not to the ones defined in kernel-proper lib/ubsan.c.

In this way, enabling UBSAN_MISC won't cause a link error.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/kvm/hyp/nvhe/Makefile |  4 +++-
 arch/arm64/kvm/hyp/nvhe/ubsan.c  | 30 ++++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/ubsan.c

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index aef76487edc2..cc082e516353 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -10,6 +10,9 @@ obj-y := timer-sr.o sysreg-sr.o debug-sr.o switch.o tlb.o hyp-init.o
 obj-y += ../vgic-v3-sr.o ../aarch32.o ../vgic-v2-cpuif-proxy.o ../entry.o \
 	 ../fpsimd.o ../hyp-entry.o
 
+CFLAGS_ubsan.hyp.tmp.o += -I $(srctree)/lib/
+obj-$(CONFIG_UBSAN) += ubsan.o
+
 obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
 extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
 
@@ -54,7 +57,6 @@ KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAG
 # cause crashes. Just disable it.
 GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
-UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
 
 # Skip objtool checking for this directory because nVHE code is compiled with
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
new file mode 100644
index 000000000000..a5db6b61ceb2
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2020 Google LLC
+ * Author: George Popescu <georgepope@google.com>
+ */
+#include <linux/ctype.h>
+#include <linux/types.h>
+#include <ubsan.h>
+
+void __ubsan_handle_add_overflow(void *_data, void *lhs, void *rhs) {}
+
+void __ubsan_handle_sub_overflow(void *_data, void *lhs, void *rhs) {}
+
+void __ubsan_handle_mul_overflow(void *_data, void *lhs, void *rhs) {}
+
+void __ubsan_handle_negate_overflow(void *_data, void *old_val) {}
+
+void __ubsan_handle_divrem_overflow(void *_data, void *lhs, void *rhs) {}
+
+void __ubsan_handle_type_mismatch(struct type_mismatch_data *data, void *ptr) {}
+
+void __ubsan_handle_type_mismatch_v1(void *_data, void *ptr) {}
+
+void __ubsan_handle_out_of_bounds(void *_data, void *index) {}
+
+void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs) {}
+
+void __ubsan_handle_builtin_unreachable(void *_data) {}
+
+void __ubsan_handle_load_invalid_value(void *_data, void *val) {}
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-2-georgepope%40google.com.
