Return-Path: <clang-built-linux+bncBD6K324WS4FBBNWQ735AKGQERCAGU7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CBE26933A
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:22 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id p20sf261799wmg.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104502; cv=pass;
        d=google.com; s=arc-20160816;
        b=zkK96PVNz6RbjP7heHWkW95RdcTdsfv4R5ySm8vDrRRBvjnB1NpMN9ZxCswV8BNUDd
         4+MNr1OGZxVpHTXbhs/g/zIbi60U+GEwUxqqwCGmzeWLhnYSCSjriBr3mDkmdGU/X8NA
         /O2MvX1gL7qB8MPyqHfXX8vQSJHMylDrzfIpY1gddnJQb9aqrHinQTiPMsSBW0iNTG42
         XnVeeZzwtu4qJWDVaDdZoMQKUvo9/bl+mGqy7A/z60yly0r6MSCwvAiqSHcg1MTTbVTL
         /u1MUVPF2RhNMnsA/yH4CBp5Nm34VWOZhuUoIlT3qVSRgf40TwJ8a9rm7foEPFfGdIVH
         9J/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=fxz+adFkDuLPyKD7YGNPr2SDe4RLqiA35VgPrVNXXaY=;
        b=w07PTeWJ+3YQbHDiwXaLFlQ2V9prHTJ4kJnWYWLCFTjLA2Wxx5/9ishWhFXtYzLtmT
         ZUx2UZriZspP+cHpTkzJ/o40r3bHT2fHvZonFy7GQx9dTAtdqZ/N02KevnLw03AwSGPe
         Zf4Eg7rNQrRBY2j+lz2OmmmFAfkP3wod+BJXEKHw/vihzoWLOrquseXo3uLyLhtttYxv
         92tBxLZdTUYHKjGIKvjr1oqtXG3yaHYL6BuQJQtYqy6wCB/0Zwx/ZUIV6mTVl3wrQYmy
         EIQr1Zx73VtZsZJJvha5EReo5A/AD9hLOptIHZKr/TnFAq+4T2ON6/YnpyC1W94ycFfO
         oj1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iEFv1oxO;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fxz+adFkDuLPyKD7YGNPr2SDe4RLqiA35VgPrVNXXaY=;
        b=BF4YJfXwaliV26+HEmVTatMPgvcDZvgA9DxQ5dabqqxR/C4rapWVUlgyr1FY8nknsN
         lPA/D7Z+gQQPNdM+t8IRvlbUG8KvuFhszlzVM53ZWeJCAm13uifORJgWvGNj34mtWYxH
         nzi0lvr8UJddVto5yFd8QzJKJr96r3ZKf0dLR+FnmLg9Fd2dvn6H6uT2GKJkP5bCAmjj
         CBOOrgz6RZ/lzXu78a1sILIdrkexAMAbM7lXA99dYOjQXHlFrciZfeZK8GfzAqkfygRH
         cp8qAYjag38mfniXNw8IEQPRrDlZCjxLxfHMJKV6Zvvit7zA6+laYUvYr03T9efxCSDY
         0prg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fxz+adFkDuLPyKD7YGNPr2SDe4RLqiA35VgPrVNXXaY=;
        b=rtWPsVUThxa65AGC3HfSFlZ6VmcF2Rj9iCuo9rmgyb5wsTpqQ1dUoMw9jfQ3/Fe003
         FPvlvVLvVTL3Ej4W3uHRC6/oRtDuoYPdPwJHXD4dRFL2MCfvpth+tTggExoQwJmWN22x
         /VSfdZn44sJtPTngHDJBdAOtJwKW1gGjpdgkK1Z4QyLE0kQBKmTZkRNoUNyAFwk+RDpi
         dsiOsuzUlpKL5T6BhtpScqB2W7FbbjBw3rCmLIwaHZY3W7tXLiLo/RzDgY4v5jJ0wIwj
         KrLyQJKJw10YPhpyVJZE6itDGHGSMqgDXkNVuNHqs3C+3khMwa1QrBKi3YQlhsECfNmp
         uqEA==
X-Gm-Message-State: AOAM532UtS1pn4mSaEy1b8Y4Bys+OJH7y/HOVfcK3sRDwGQ0zIudmjbs
	IuRR7I2AHsa1OfR+sqdYVW0=
X-Google-Smtp-Source: ABdhPJxbhEvYvNkW4/5I3J6z/Jv4/viEsyUk301lLSottsluy2OLkIiaFSRIscOoIE7aKGPePk7Scw==
X-Received: by 2002:a5d:4e02:: with SMTP id p2mr18468528wrt.276.1600104502533;
        Mon, 14 Sep 2020 10:28:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:230d:: with SMTP id 13ls14220wmo.0.canary-gmail;
 Mon, 14 Sep 2020 10:28:21 -0700 (PDT)
X-Received: by 2002:a1c:7907:: with SMTP id l7mr420880wme.89.1600104501745;
        Mon, 14 Sep 2020 10:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104501; cv=none;
        d=google.com; s=arc-20160816;
        b=kb28yxLhf4OXCbkJe2vAtb1WPK33j1TxQVEW9UWqBnhCXuqNKpXrmMVlNpsfz8xIha
         3bIq7gUdWuIgY29nmJVU6+lvYnuGi56vmrlE5peFc2cmQWnQq9DoBuoFlS6T8t5puSW0
         aqHZOtitwmXEbE7+YEaDSj3M3ROHTBidQvMsc/rYKUrqaJqxkUxHnALDC17mN3s90kq/
         nB2MGKcmZGBEuKfsBI9d5++YCWKNlhqnf24z3UNbyqxMtTK6CTypf5l8bohugXhlKZDr
         308B++7MiFftYyrow7j4wHVIkOs1ClM6wzky4xYa3WtKx4Ij6G+yqQPrsavNlRbRQRhi
         A+Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oxR4q2exhcBC90vTFTNwz9/4eynAbLxOPQRAqHe9Mw8=;
        b=w6Zyd/Bksxq3vTvJeU7/iYmKmTx06v1UyF8iWs0oo3kA+lHg4SeO53EMv63ytivjNj
         9PL1WRGvgaxjemHMCCgUXY0PTRd3G1vAZdInJ+ynG1h7v28ze/4+9YXXYD5YzmJ7miQL
         WRDM4tywsVJUUcTsLmbsaPFA+WnR3iSQIvtrQ4WXiR9kNdDQtva/xJWB7RNOo20PQdob
         nHWCJCMBnCgSIgRadgxgF2/+Hr0xpbzRmoBdL6ojwflAxG35PG32S7DV+xb9bv/W3+kW
         01aW2I91cBGbHL2VrWC9ApJ8EYdrhdAYBsXXYtD/82B32M8IcWQx7whnwHZyiYM2hnqg
         Q2EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iEFv1oxO;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id f134si665100wme.4.2020.09.14.10.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id w2so821936wmi.1
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:21 -0700 (PDT)
X-Received: by 2002:a1c:6145:: with SMTP id v66mr426746wmb.171.1600104501282;
        Mon, 14 Sep 2020 10:28:21 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id m1sm20204287wmc.28.2020.09.14.10.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:20 -0700 (PDT)
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
Subject: [PATCH 10/14] KVM: arm64: __ubsan_handle_load_invalid_value hyp/nVHE implementation.
Date: Mon, 14 Sep 2020 17:27:46 +0000
Message-Id: <20200914172750.852684-11-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iEFv1oxO;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343
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

The handler for the load invalid value undefined behaviour is
implemented for hyp/nVHE. The handler's parameters are stored inside
the buffer.

They are used by the symmetric handler from the kernel.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_ubsan.h |  5 ++++-
 arch/arm64/kvm/hyp/nvhe/ubsan.c    | 14 +++++++++++++-
 arch/arm64/kvm/kvm_ubsan_buffer.c  |  4 ++++
 3 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
index 3130a80cd8b2..b643ac9a4090 100644
--- a/arch/arm64/include/asm/kvm_ubsan.h
+++ b/arch/arm64/include/asm/kvm_ubsan.h
@@ -22,12 +22,14 @@ struct kvm_ubsan_info {
 		UBSAN_NONE,
 		UBSAN_OUT_OF_BOUNDS,
 		UBSAN_UNREACHABLE_DATA,
-		UBSAN_SHIFT_OUT_OF_BOUNDS
+		UBSAN_SHIFT_OUT_OF_BOUNDS,
+		UBSAN_INVALID_DATA
 	} type;
 	union {
 		struct out_of_bounds_data out_of_bounds_data;
 		struct unreachable_data unreachable_data;
 		struct shift_out_of_bounds_data shift_out_of_bounds_data;
+		struct invalid_value_data invalid_value_data;
 	};
 	union {
 		struct ubsan_values u_val;
@@ -38,3 +40,4 @@ struct kvm_ubsan_info {
 void __ubsan_handle_out_of_bounds(void *_data, void *index);
 void __ubsan_handle_builtin_unreachable(void *_data);
 void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs);
+void __ubsan_handle_load_invalid_value(void *_data, void *val);
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
index 40b82143e57f..1888a1f51724 100644
--- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
@@ -82,4 +82,16 @@ void __ubsan_handle_builtin_unreachable(void *_data)
 	}
 }
 
-void __ubsan_handle_load_invalid_value(void *_data, void *val) {}
+void __ubsan_handle_load_invalid_value(void *_data, void *val)
+{
+	struct kvm_ubsan_info *slot;
+	struct invalid_value_data *data = _data;
+
+	slot = kvm_ubsan_buffer_next_slot();
+	if (slot) {
+		slot->type = UBSAN_INVALID_DATA;
+		slot->invalid_value_data = *data;
+		slot->u_val.lval = val;
+	}
+
+}
diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
index b4a282bec91d..01bf2171af9e 100644
--- a/arch/arm64/kvm/kvm_ubsan_buffer.c
+++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
@@ -32,6 +32,10 @@ void __kvm_check_ubsan_data(struct kvm_ubsan_info *slot)
 		__ubsan_handle_shift_out_of_bounds(&slot->shift_out_of_bounds_data,
 				slot->u_val.lval, slot->u_val.rval);
 		break;
+	case UBSAN_INVALID_DATA:
+		__ubsan_handle_load_invalid_value(&slot->invalid_value_data,
+				slot->u_val.lval);
+		break;
 	}
 }
 
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-11-georgepope%40google.com.
