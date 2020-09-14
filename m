Return-Path: <clang-built-linux+bncBD6K324WS4FBBOWQ735AKGQERHAGHCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 7257D26933F
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:26 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id w27sf117429ejb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104506; cv=pass;
        d=google.com; s=arc-20160816;
        b=wWBBotBeEM/xzNKugcd0jYxysiygTMFj2Zh0piqVyQ/Jrp4X3lhOmWg+3L3Hrb1PHR
         j4iqw4LqtFgcj1vx2QJNlFNsO7EQgPHHyQZRdNi6TdTbiIZgH07XyZK64kRhxNY5CtcB
         lREVIkz9WUGsM1tOggSHr0MLFAvpcyu0/gh6SZPXS7D6JiFmHlIXUZRshqMazxJZCUB4
         k0/V8WXVnL+8xMl8o2QbuENQN0C8ao8fC+RtrjQ9q/+jqkwqhjxcRmmKstWu/fbAMU/J
         OyCdn1k4Li7RfOJABQhbQCUXVIVEbrT90PpMYFRe6CLM3ERvmuEKaoiTJaYwUJ79fRD6
         3iUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=7nSv9ZIh/B+JAa87Wu1rqc7T0GTGrPmb3RTn1HugxLw=;
        b=BkqH8H61lBH3FdRnTnxbRnyOINxR1Zhu8Z+GkapHWvQRNOnzPf7DRFtQAjs179g1sI
         iFlol7ld6gU/Imb8n5rZ7VO2WX07kMaorvXIa/6kkWACQ1bT7HZSMFd1Uf+vQyNJ/0+0
         98OaQWmnHo3gEZhRcTgITbrM4PDBIvYutCrcSPo+YaAv7XfK6G6NLVI5jiu+bLG7VHZq
         ck47/+9J1DRwLaXYulHepZ+ZYfEamVL3J0y7/waDuxH5QZOvkDkM2kjc9iW99nK0IUzz
         BfYGzaJ4og/eHsMYBkbKp9ZuZZ3IHRPHO26JubJ8gTHBeobElAJyKPiaLpKJ2p8+7FYo
         Hb1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tHkFPa0p;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7nSv9ZIh/B+JAa87Wu1rqc7T0GTGrPmb3RTn1HugxLw=;
        b=bbA04nHBbFVNe/lKx+r9kYFhgd+YTKFB6LvgcjqybXbyNv1ISldS90xvqnJNiBLOVR
         7ibjzyaLLBtifqDqN8/4tc9ZGyFQPHcEEl+Eo4xbmdZHG2LKbdEeREvtYetduJi5iasX
         hpAxddkPyi/gZFUtc7PKVFLafBnKH/2yTsBykVox3l47AIpMsYytaVMUdjTSqPSjMprP
         FP+QCODLqyCzIn61Fo9ThlAMm52Vq3LbkSAkpyDYhgvwPCz6cuXDKhv1zecTfryIvxMC
         /w1wTSoihFq8sbn/EHb/CSzwk+xbZ1VTp4DfCcKmOmNwOqYC+tfqAzyyUSi33UO5vTP5
         v2cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7nSv9ZIh/B+JAa87Wu1rqc7T0GTGrPmb3RTn1HugxLw=;
        b=lz6rPHHnACRzb+5nnS83DEecXpTNQzdr0HZ17kYojceLzHE3AsBtBdWsvZENhjmufL
         szchP9K75/LpqwevqMGPhovSq3dp6kku4YKNiyFSApJkR5oNodoNaqRMcbA8W+PXimLU
         jlNFGPo5aTUZeVwb9fFwYHT4/6vsiJCV6Io0eFqUlhwiCou0TySDY8/mk45CQ7CO5SvD
         Q3praP4hvxcnDRBdbRtm2hLvDKNZ5eYq1Xppf9Ysxio/HWr4IQ+482YcUoyMPsY27IKM
         s6p1OTJrSQOeCvq/ulrDv+wYx2TrBfA6Z0bESjrKM7G7ckvbN9i8b91yrocmRi5+e396
         cS8w==
X-Gm-Message-State: AOAM530j7P1wxrRHCdl/OIKRO3sccXU1SwyoMII4Wd4FT6IQex6+hyZO
	jjW8vLI3uDOjutuBWkNzdpg=
X-Google-Smtp-Source: ABdhPJzjacRUuHGhj+ysgvEOVQ8oRI3Ix9P/UYwi8PdtldBjfw/3oUQMlJaAyJtNFnjtJrIph5mPFQ==
X-Received: by 2002:a17:906:4750:: with SMTP id j16mr16500015ejs.143.1600104506223;
        Mon, 14 Sep 2020 10:28:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d0c8:: with SMTP id bq8ls4948312ejb.3.gmail; Mon, 14
 Sep 2020 10:28:25 -0700 (PDT)
X-Received: by 2002:a17:906:4e54:: with SMTP id g20mr16342166ejw.252.1600104505339;
        Mon, 14 Sep 2020 10:28:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104505; cv=none;
        d=google.com; s=arc-20160816;
        b=s0Y3mBDK0pSpPs6gfnKoz8fjHCzfj7f6zXvoiaq6iMmHKcOtmQSA+VVbB+DFHrdtpJ
         IZGHx1z+7WXatRR4qFIAfT+95JeL4q+k1Lnkyc3Ba6ZHiOc5Bg4rmo58x0nx6KyjedAp
         GLL0O+KJDtIG9HTLVG/bDFAtNxn6qtLaP2GrmadEcNgFUS9CL+218Ku+qzenwmtmLml1
         f7OtojrzLGsUQitMqt7R7gZnewnLL/OSLWTx5WBzHB60B3fLV7K9/TQa9OUubhSlnLqu
         Gua0Z0AXpdhIqrReYhSbcVTwax7bMLGoP3shuRbFF2lMg5rQcDXRhf2BWs6ZKoaw5WOi
         twxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iB4T9kLFB3iIR2Z+tST4GCiUmTN46viq6Nw4qtcThCM=;
        b=RQ+ZfOkAw+khKT+Bo9TeNANKkkRhm4NQViCMMj4O3h6BtfF0peP857xq2pliKOSX4n
         m+a+yrv8CWlqDGNvILThDGD5XZB785gHmol52EW+tRjUFB9OsPtLVripcoUA14QifH4a
         CW84q9gnUxcjV12foxFP6QQXe9y7afOy7K/JrLHDKpJQYCBbGBmEAIhL0V+9+wr2UblU
         JjhUEuYU8fatMl1tSIGbdWuHMbO6DbCSsekyxDrdYjVHQjmuCg5K5DIKj1oJ7B7sgZpF
         hipYX7qdjZyV0OTZA3fHAY/RwLCDjNEoFknjaueQWsi5JrP8Mmh63+l4Z+WM/Sm4lJts
         AMAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tHkFPa0p;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f17si359042edx.5.2020.09.14.10.28.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id z4so523239wrr.4
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:25 -0700 (PDT)
X-Received: by 2002:adf:cf0b:: with SMTP id o11mr16218454wrj.94.1600104504963;
        Mon, 14 Sep 2020 10:28:24 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id l126sm20422503wmf.39.2020.09.14.10.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:24 -0700 (PDT)
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
Subject: [PATCH 12/14] KVM: arm64: Detect arithmetic overflow is inside hyp/nVHE.
Date: Mon, 14 Sep 2020 17:27:48 +0000
Message-Id: <20200914172750.852684-13-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tHkFPa0p;       spf=pass
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

Whenever an arithmetic overflow: addition, subtraction, multiplication,
division or negating happens inside the hyp/nVHE code,
an __ubsan_handle_*_overflow is called.

All the overflow handlers are sharing the same structure called
overflow_data and they use the write_overflow_data(*) function to store
the data to the buffer.

When decapsulating the data inside the kernel, the right handler is
called by checking the "op" field, which stores the arithmetic
opperator.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_ubsan.h | 10 ++++++--
 arch/arm64/kvm/hyp/nvhe/ubsan.c    | 40 ++++++++++++++++++++++++++----
 arch/arm64/kvm/kvm_ubsan_buffer.c  | 18 ++++++++++++++
 3 files changed, 61 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
index a9f499f4ef6d..4abdbff38f79 100644
--- a/arch/arm64/include/asm/kvm_ubsan.h
+++ b/arch/arm64/include/asm/kvm_ubsan.h
@@ -24,7 +24,8 @@ struct kvm_ubsan_info {
 		UBSAN_UNREACHABLE_DATA,
 		UBSAN_SHIFT_OUT_OF_BOUNDS,
 		UBSAN_INVALID_DATA,
-		UBSAN_TYPE_MISMATCH
+		UBSAN_TYPE_MISMATCH,
+		UBSAN_OVERFLOW_DATA
 	} type;
 	union {
 		struct out_of_bounds_data out_of_bounds_data;
@@ -32,6 +33,7 @@ struct kvm_ubsan_info {
 		struct shift_out_of_bounds_data shift_out_of_bounds_data;
 		struct invalid_value_data invalid_value_data;
 		struct type_mismatch_data type_mismatch_data;
+		struct overflow_data overflow_data;
 	};
 	union {
 		struct ubsan_values u_val;
@@ -44,4 +46,8 @@ void __ubsan_handle_builtin_unreachable(void *_data);
 void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs);
 void __ubsan_handle_load_invalid_value(void *_data, void *val);
 void __ubsan_handle_type_mismatch(struct type_mismatch_data  *_data, void *ptr);
-
+void __ubsan_handle_add_overflow(void *data, void *lhs, void *rhs);
+void __ubsan_handle_sub_overflow(void *data, void *lhs, void *rhs);
+void __ubsan_handle_mul_overflow(void *data, void *lhs, void *rhs);
+void __ubsan_handle_negate_overflow(void *_data, void *old_val);
+void __ubsan_handle_divrem_overflow(void *_data, void *lhs, void *rhs);
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
index c99d919105aa..dd2dae60864f 100644
--- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
@@ -47,15 +47,45 @@ static void write_type_mismatch_data(struct type_mismatch_data_common *data, voi
 	}
 }
 
-void __ubsan_handle_add_overflow(void *_data, void *lhs, void *rhs) {}
+static void write_overflow_data(struct overflow_data *data, void *lval, void *rval, char op)
+{
+	struct kvm_ubsan_info *slot = kvm_ubsan_buffer_next_slot();
+
+	if (slot) {
+		slot->type = UBSAN_OVERFLOW_DATA;
+		slot->overflow_data = *data;
+		slot->u_val.op = op;
+		slot->u_val.lval = lval;
+		if (op != '!')
+			slot->u_val.rval = rval;
+	}
+}
+
+void __ubsan_handle_add_overflow(void *_data, void *lhs, void *rhs)
+{
+	write_overflow_data(_data, lhs, rhs, '+');
+}
 
-void __ubsan_handle_sub_overflow(void *_data, void *lhs, void *rhs) {}
+void __ubsan_handle_sub_overflow(void *_data, void *lhs, void *rhs)
+{
+	write_overflow_data(_data, lhs, rhs, '-');
+}
 
-void __ubsan_handle_mul_overflow(void *_data, void *lhs, void *rhs) {}
+void __ubsan_handle_mul_overflow(void *_data, void *lhs, void *rhs)
+{
+	write_overflow_data(_data, lhs, rhs, '*');
+}
 
-void __ubsan_handle_negate_overflow(void *_data, void *old_val) {}
+void __ubsan_handle_negate_overflow(void *_data, void *old_val)
+{
+	write_overflow_data(_data, old_val, NULL, '!');
+}
+
+void __ubsan_handle_divrem_overflow(void *_data, void *lhs, void *rhs)
+{
+	write_overflow_data(_data, lhs, rhs, '/');
+}
 
-void __ubsan_handle_divrem_overflow(void *_data, void *lhs, void *rhs) {}
 
 void __ubsan_handle_type_mismatch(struct type_mismatch_data *data, void *ptr)
 {
diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
index 21c242c92f0a..bd847ac1321e 100644
--- a/arch/arm64/kvm/kvm_ubsan_buffer.c
+++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
@@ -40,6 +40,24 @@ void __kvm_check_ubsan_data(struct kvm_ubsan_info *slot)
 		__ubsan_handle_type_mismatch(&slot->type_mismatch_data,
 				slot->u_val.lval);
 		break;
+	case UBSAN_OVERFLOW_DATA:
+		if (slot->u_val.op == '/') {
+			__ubsan_handle_divrem_overflow(&slot->overflow_data,
+					slot->u_val.lval, slot->u_val.rval);
+		} else if (slot->u_val.op == '!') {
+			__ubsan_handle_negate_overflow(&slot->overflow_data,
+					slot->u_val.lval);
+		} else if (slot->u_val.op == '+') {
+			__ubsan_handle_add_overflow(&slot->overflow_data,
+					slot->u_val.lval, slot->u_val.rval);
+		} else if (slot->u_val.op == '-') {
+			__ubsan_handle_sub_overflow(&slot->overflow_data,
+					slot->u_val.lval, slot->u_val.rval);
+		} else if (slot->u_val.op == '*') {
+			__ubsan_handle_mul_overflow(&slot->overflow_data,
+					slot->u_val.lval, slot->u_val.rval);
+		}
+		break;
 	}
 }
 
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-13-georgepope%40google.com.
