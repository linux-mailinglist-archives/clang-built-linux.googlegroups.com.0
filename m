Return-Path: <clang-built-linux+bncBD6K324WS4FBBOGQ735AKGQEOQE5EUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF1D26933C
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:24 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id b20sf1284455wmj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104504; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZmAAkIVXrQ7Zo1vIg+2aGNefy+kNPSyoyaAxtFPZ5mIYFhywcsZJoeLr/rQ7RJBXU
         /FBA1R09RzzT9j3bO9X0naHAEAVSqVxFhYEPod1C6zQng5CL1vCWhbBaFN3tnXksLxNR
         NmF68oIS1PgJoxs1zOBPqHSmZrzpVvaKZt5sO+7Lm3yK/UubWDiGDfARas2+gZdn2MeF
         aA4UlmX6rLo/EZCZ0NFmgss6SYnXovsaKTwsx8r/80BngjJDZTgTGlhKPsoAi/AecLxt
         swMUZmz1jl1jv5PZYWm8fN7MjEE0hAulXRUl22m/rOuUA6an6rRjsviM0OMl704bu1x3
         YP5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1F/JQ+9GYIOb07kMWK/gnmhwEGq2L/vxCpYFAVQc4+0=;
        b=TDr7C+RMNFQiSnQBNSPIcCz9Ti6lPgrmSzYVVknTUiwKvl8MJX4yKE3OrpCyN9vNdJ
         h26PJxiOCBjt8P4D12LIfFA3H+C83oQ3NTEyXQwA16PsLE0fb3uU2ma1oW3Gz4ZW/W+E
         L3zje0BqIeF6IsnavJdljV2fK1R0ZvNF59Jb3K1lyEmdYhtk39IlAwEdTy0yBziEXsdh
         9nFDtcsGDjCKvINI30LuMdnepQst1t2XYBVFGuqyzvL6h1RWkoUo704VoxuNHyKXyyzU
         NWc4R4MoywW3zke92kpAuBp1JDVWZIdCanxnuiP6X3DcYRb13b6m3WC/I5lyvYSCrih+
         fW+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MRgm2+rK;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1F/JQ+9GYIOb07kMWK/gnmhwEGq2L/vxCpYFAVQc4+0=;
        b=N6kbNPmPdVirShnKoydpZy64EWSV2IwRVd/1Um0CfQePUX3Gq7qpqJF45+/x7Guba+
         Q8oQOCtGPjy5xIgFxWpJp5IPqobvQkM5zE0FDVEpS2O1y8LvE6lt+cixBcvJ7Uhk3dvc
         CMXp0M8OIOjEZksRKJb4pliAzfEMl4CUBA+02raD1Epy78SVz/1Cggro/4P/z1UPKWzv
         NCcZ/uF5KOPQE9y6/f6ENY2wM2zCB67VYVOd3jEWFU3uZxoTd7K0napVZmP/Bc5O2Zat
         DNFvbwlEjDngeQHItXDg7TtZW5sPr4loeDHQnhqCFVQPp1BlJuJJfxwtCMHNs0QgdexM
         yDXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1F/JQ+9GYIOb07kMWK/gnmhwEGq2L/vxCpYFAVQc4+0=;
        b=QEee5b3W2mSSgLd338S+jmN1CFFwoDUmnY59R9cotHhlF3N6sLcKdoomn+wEBbtwwE
         MaWdVjicGYEciTRlWWwd+F4o00MAUwYBsjj5fwsxWzUmrP9G6ln6P1M41Qp+G4hMlAna
         ncERNtnqMIp2x0ylZaoRGsO2sYaa2suzvTz3wjex6/yu2W6Lsx39rM7Kfy93I3PEB1+1
         ZAMkiX8zRbe8rvW3wJ4fXGJJNqeDidLidbP1L3MtfmjDtAmscO/SK8ePZuKBivXWHTuO
         dWbk39l84Us2iPMDeI+L1l6COiqtXVo2KuzrFR4XJl1T14OsHSEHT6xwX69Uc8BG9xl3
         VPJQ==
X-Gm-Message-State: AOAM5316OpW6PTP/YCBuklTYcgr85azTPUrLLv+YD7UF6vyV1hd1lZst
	+Jjtv3gy3BNTsApRPE0vzeQ=
X-Google-Smtp-Source: ABdhPJwkafbj1HWIEpRa64BlC4ui9De/TZAQ0OV7HQ1KC66v9KBwVEt/9Pk0bY0y9bJWImTG53MZUg==
X-Received: by 2002:a1c:2903:: with SMTP id p3mr463078wmp.170.1600104504358;
        Mon, 14 Sep 2020 10:28:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls29389wrx.3.gmail; Mon, 14 Sep
 2020 10:28:23 -0700 (PDT)
X-Received: by 2002:adf:dccd:: with SMTP id x13mr18280885wrm.403.1600104503499;
        Mon, 14 Sep 2020 10:28:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104503; cv=none;
        d=google.com; s=arc-20160816;
        b=t+3bjmIjhou16ZS/AR7y2rRWcX6CSO9lJj8zJymXwrCgc5ngZnAYYlA6nIHfYoy2bs
         8pKsvSpdF/CGOrD3kyoaUvg7c/Foy3pRr2TIspPPzK5pHimcNzAXMZIMTW3J2atQFZIX
         pt7CRcBFq6UF1JCiIreFDhN40k8SOgpdsACZMmv/an9QYLHswomS+Gg559HvUn4Ki9wZ
         G9CkCYoQAoOwQ/wSRMor5an5hZ0uYl6y6tHhlGGnjjaKtEX/JrS4jrJzUJLVGmoIz6Co
         D7eM9duiT8Kdo9COLDI6L5KOqUvr6i5L6utzKHwWS7ev2dLsVPr/rc93uDfUl7XKkw5v
         sHLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CR8a6tMHdr0USdHEJnOukkMN6eSncqh9/9HspEdN4UY=;
        b=di9jm5c5jHkCLU/VAWeIw6OBSD/IqRkSvkmglPl9azUKuXMk3yoZKmSbvHHUaniRi4
         /sMxgVo9H8s2Oc/DGeqxDlP2NxsEqrm6ybd6EfPqxaeeOiuCwHnulLMnjqMZ7AclB3/n
         7Bkp4E2AFO2/sHvU7z6whFlIO5LZmX5A86RDAw/Xnu2mQB7pQu58m7EWpRPRlXKinv7a
         W0WY0T6VR/YMQZcLbbxpUPTADDWUVjL1CkBD06WfjJw9jJovER9Y/mkUL+tz9wg1uPz2
         6qchPwSGLm/ZbUVBNKR8gkKE14GXjEMHIi08FJHjmmU6da1hf14gTWJTAayYhpJQJw7O
         TlPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MRgm2+rK;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y64si318315wmc.0.2020.09.14.10.28.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id a17so505783wrn.6
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:23 -0700 (PDT)
X-Received: by 2002:a5d:6283:: with SMTP id k3mr17620699wru.191.1600104503135;
        Mon, 14 Sep 2020 10:28:23 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id k8sm21852072wrl.42.2020.09.14.10.28.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:22 -0700 (PDT)
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
Subject: [PATCH 11/14] KVM: arm64: Detect type mismatch undefined behaviour from hyp/nVHE code
Date: Mon, 14 Sep 2020 17:27:47 +0000
Message-Id: <20200914172750.852684-12-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MRgm2+rK;       spf=pass
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

Type mismatch undefined behaviour handler provides two handlers with two
data structures type_mismatch_data and type_mismatch_data_v1. Both can be
stored inside a common data structure: type_mismatch_data_common, which
differs of type_mismatch_data only by keeping a pointer to a
struct source_location instead of the value of the struct.

In this way, the buffer keeps the data encapsulated inside of a struct
type_mismatch_data, because pointers from nVHE can not be passed to the
kernel.

Inside the kernel call the __ubsan_handle_type_mismatch_data with the
data from the buffer.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_ubsan.h |  6 ++++-
 arch/arm64/kvm/hyp/nvhe/ubsan.c    | 41 ++++++++++++++++++++++++++++--
 arch/arm64/kvm/kvm_ubsan_buffer.c  |  5 +++-
 3 files changed, 48 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
index b643ac9a4090..a9f499f4ef6d 100644
--- a/arch/arm64/include/asm/kvm_ubsan.h
+++ b/arch/arm64/include/asm/kvm_ubsan.h
@@ -23,13 +23,15 @@ struct kvm_ubsan_info {
 		UBSAN_OUT_OF_BOUNDS,
 		UBSAN_UNREACHABLE_DATA,
 		UBSAN_SHIFT_OUT_OF_BOUNDS,
-		UBSAN_INVALID_DATA
+		UBSAN_INVALID_DATA,
+		UBSAN_TYPE_MISMATCH
 	} type;
 	union {
 		struct out_of_bounds_data out_of_bounds_data;
 		struct unreachable_data unreachable_data;
 		struct shift_out_of_bounds_data shift_out_of_bounds_data;
 		struct invalid_value_data invalid_value_data;
+		struct type_mismatch_data type_mismatch_data;
 	};
 	union {
 		struct ubsan_values u_val;
@@ -41,3 +43,5 @@ void __ubsan_handle_out_of_bounds(void *_data, void *index);
 void __ubsan_handle_builtin_unreachable(void *_data);
 void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs);
 void __ubsan_handle_load_invalid_value(void *_data, void *val);
+void __ubsan_handle_type_mismatch(struct type_mismatch_data  *_data, void *ptr);
+
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
index 1888a1f51724..c99d919105aa 100644
--- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
@@ -29,6 +29,24 @@ static inline struct kvm_ubsan_info *kvm_ubsan_buffer_next_slot(void)
 	return res;
 }
 
+static void write_type_mismatch_data(struct type_mismatch_data_common *data, void *lval)
+{
+	struct kvm_ubsan_info *slot;
+	struct type_mismatch_data *aux_cont;
+
+	slot = kvm_ubsan_buffer_next_slot();
+	if (slot) {
+		slot->type = UBSAN_TYPE_MISMATCH;
+		aux_cont = &slot->type_mismatch_data;
+		aux_cont->location.file_name = data->location->file_name;
+		aux_cont->location.reported = data->location->reported;
+		aux_cont->type = data->type;
+		aux_cont->alignment = data->alignment;
+		aux_cont->type_check_kind = data->type_check_kind;
+		slot->u_val.lval = lval;
+	}
+}
+
 void __ubsan_handle_add_overflow(void *_data, void *lhs, void *rhs) {}
 
 void __ubsan_handle_sub_overflow(void *_data, void *lhs, void *rhs) {}
@@ -39,9 +57,28 @@ void __ubsan_handle_negate_overflow(void *_data, void *old_val) {}
 
 void __ubsan_handle_divrem_overflow(void *_data, void *lhs, void *rhs) {}
 
-void __ubsan_handle_type_mismatch(struct type_mismatch_data *data, void *ptr) {}
+void __ubsan_handle_type_mismatch(struct type_mismatch_data *data, void *ptr)
+{
+	struct type_mismatch_data_common common_data = {
+		.location = &data->location,
+		.type = data->type,
+		.alignment = data->alignment,
+		.type_check_kind = data->type_check_kind
+	};
+	write_type_mismatch_data(&common_data, ptr);
+}
 
-void __ubsan_handle_type_mismatch_v1(void *_data, void *ptr) {}
+void __ubsan_handle_type_mismatch_v1(void *_data, void *ptr)
+{
+	struct type_mismatch_data_v1 *data = _data;
+	struct type_mismatch_data_common common_data = {
+		.location = &data->location,
+		.type = data->type,
+		.alignment = 1UL << data->log_alignment,
+		.type_check_kind = data->type_check_kind
+	};
+	write_type_mismatch_data(&common_data, ptr);
+}
 
 void __ubsan_handle_out_of_bounds(void *_data, void *index)
 {
diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
index 01bf2171af9e..21c242c92f0a 100644
--- a/arch/arm64/kvm/kvm_ubsan_buffer.c
+++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
@@ -36,6 +36,10 @@ void __kvm_check_ubsan_data(struct kvm_ubsan_info *slot)
 		__ubsan_handle_load_invalid_value(&slot->invalid_value_data,
 				slot->u_val.lval);
 		break;
+	case UBSAN_TYPE_MISMATCH:
+		__ubsan_handle_type_mismatch(&slot->type_mismatch_data,
+				slot->u_val.lval);
+		break;
 	}
 }
 
@@ -51,4 +55,3 @@ void __kvm_check_ubsan_buffer(void)
 		slot->type = 0;
 	}
 }
-
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-12-georgepope%40google.com.
