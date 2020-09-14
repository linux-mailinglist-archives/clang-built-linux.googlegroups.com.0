Return-Path: <clang-built-linux+bncBD6K324WS4FBBNGQ735AKGQE7EYZWIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D861F269337
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:20 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id x6sf221286wmi.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104500; cv=pass;
        d=google.com; s=arc-20160816;
        b=ojRdcgRuklIDNfM7QWBezPTRiyDYcNsBR1AU/5d4gX6pqZa1xMVCO0bc4kfuDhn/Z8
         59nwacrLvYpMKJ1hHRsHqoGKxe3Q972NxKs66GNBulwXLCHUFKFfsPTKpBEjSsvxgd6c
         QBCKeUQ5b67UAGUPtzeREANdGXpG1RYq2bcWBLBxMZfZ1J1o9Z+uoe1X3qwwWij1OZPo
         bfGarYj2F8AgaqGvPZd41V4kzCayV906VRz15vBKuC+8Io9+2EdNaDGc9EPMgZ3Iw1S5
         ikNQSBQ4BL/D+hnur4uf/xjNa7zOC2wxJHE5LKlvsDuaxt8e71RCgnGyksk77XYQduDu
         nDCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=/gWlTEArvCCpUTssgO8NtR9S6uOtqBiDhsepDU+2Q6c=;
        b=io3rQ3eAHmQGjJIPuIOY7aAeBb9HPtd8sQVJt60FR3p81Xcu4B8p3/26cZ5CJKynSq
         oiuhxfcLj3eX8o4perKikTO7ktfcIWCxxz9aq9fd/4cugcSnHPbPrvInUuFrvcnvfwWF
         rkHgcOaySJ5wUQHPgXBPTp4O3W5R12jff8K1ZKfB7MHFf3b2cbjh9rMpyMI+8bqCGOYy
         QVGcVPoZDb+RQHubZERm54Nc4g4Ru7kdZVD/0HYHNLnriil45UdP+yT+dtQUTcl6+un8
         852Wfdztt6J61VZ1njVVR/uIgF2mnmclSUE4Ie+KlxRR9VWz4JfNbk+3UGditYC4/Sex
         46bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EYgWAcl9;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/gWlTEArvCCpUTssgO8NtR9S6uOtqBiDhsepDU+2Q6c=;
        b=CGkKMhQB1IIeiJg0RkpPqKBxDXMZTC3Th/uXr4eC2sABmWYBzEKpiYF7ju18lrs3iB
         lr8WJ1SHE/CuTFMrNbRnm1kYb93upO+jN9iwWhKp0RKUDqsRQPk7F/24rB7UmhZj4IYr
         1Oiwtku+oWA+LJhyyDOkbUhdnIWvWpYqJ5FlouZGWDcrn8diJJkd0NyW7QGEO9rhn1po
         Nej8lxhJCxdr9aDvrtlGBwawhoHOpuWgLx6S5isYwi9MMmviJozRJqxQGvk6PI1dZL3F
         6Ah0swjkpE/TYUCRHsfVwUqtxnBk0pCdwnA0RikWTyDZmW2Nim7EjRnZLs5Dgr2R0E2I
         TNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/gWlTEArvCCpUTssgO8NtR9S6uOtqBiDhsepDU+2Q6c=;
        b=OZG9fOLUzRc8UdQ2qSGnjLcnu5FuiPrdqA+A79GOiR2sMhwgxzgNMguOvlB76ty7O+
         qu8lQLaoYvc0lwMGs/fjyGr1iFaXoQJ5CRl25q/uUxuIzSl1znv6qOArpqQyyN/AbPTa
         p2BaSRB6t98LW7tjJw2snK7GzyC5WenDOGAnq6nHc0gnqh7q9xFVNAqRC0NIXmkZCiPp
         9TxK4C35E30enjkJ/1U7sQeLnchL5ALdj8S1RsgiaK71hXwovhamh9TcaGNAtRbaiKiB
         LASM4Ri6ibz1uuOj6oWZydH3+63I85eGV2x79qJPOGeA6IVRTWDFocIEsO5aQMQu0PRB
         hwbg==
X-Gm-Message-State: AOAM530isxmVDQHkPsrSjD6ioyI08QEUpvxxVR+yY66y1r2ZiGajaCth
	JV9G8VOqEsCIB02rKpTVMrk=
X-Google-Smtp-Source: ABdhPJwFpGrniTKJqZpCbzLr4E1gvnNfuI3f7IhEZoh4kkzzIf0uz7PFCnUWlYBR3FdsU1q5dt3t2w==
X-Received: by 2002:adf:f207:: with SMTP id p7mr18187321wro.152.1600104500615;
        Mon, 14 Sep 2020 10:28:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd0a:: with SMTP id a10ls28214wrm.2.gmail; Mon, 14 Sep
 2020 10:28:19 -0700 (PDT)
X-Received: by 2002:adf:9c93:: with SMTP id d19mr17331669wre.275.1600104499833;
        Mon, 14 Sep 2020 10:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104499; cv=none;
        d=google.com; s=arc-20160816;
        b=r6hRqBNra+/bcHan/4S8FwPpGTvOYh/aWRnMAu8kBryZUDj9L8Pkku6OVn5E6LXyHV
         7CgHdZCBRK9NdaePaAmprkozjv2ExLHALbN6gZd5B4O3pKFIINLfnIW5QuLoZ8gaP3/b
         71X71HNKCOktMFRPczsusWJQCh69VchmtBNBi3v7sJO0HuNtYBLVYRkQhvrAGd2yqL+W
         r2zsu3t6guNxHRMN4cu59bCNGr7M+oi3Cwm9H3itM0L65Elj14jo2HJoklDEPpd6lDRG
         cs3IICj6GUvwFD/QW5X4OU5XH0AT/FF0eIwHiB7h/sz4rRG2J44J1XmbU75R9MKVqdi3
         fFrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KftJRcollRLFMVov7TaPj7WtBHwyxRPUsiHY/UZT1fw=;
        b=xPCUZytGVndBmdeNyFp1OkdjpyJ8C2COwSs98mMHXujv+Sg+sQiQtyriK5u9xiPIiW
         Lki6b5JQcEJ+CZDVZtrXhqmzmaWO0ceNZ/rrVa/I8Ls41yT9RDxXZxjIPa6hZ93O/2zr
         m8GAPZFJwePNiQ0mBTzWgedI+VFO46OsAGpwi9aBhxHBE1S7DTvPBQq1MihkGOtSpd8M
         IXcvXKb6bYwpANZlFCGOajz4to2A1t5Xaz3vGjEYvuPY9JNAYdQD8PLQmfWU4rjnBx/8
         +R7Q9HPbIV98af2CFsuH2zcSLfvRlFDh+gWgG2LKIUp1UOnODU9ckB25/iybrcg1KJ0t
         jhLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EYgWAcl9;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f134si665098wme.4.2020.09.14.10.28.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id j2so499265wrx.7
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:19 -0700 (PDT)
X-Received: by 2002:adf:f10a:: with SMTP id r10mr16416565wro.86.1600104499411;
        Mon, 14 Sep 2020 10:28:19 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id l19sm19870946wmi.8.2020.09.14.10.28.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:18 -0700 (PDT)
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
Subject: [PATCH 09/14] KVM: arm64: Enable shift out of bounds undefined behaviour check for hyp/nVHE
Date: Mon, 14 Sep 2020 17:27:45 +0000
Message-Id: <20200914172750.852684-10-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EYgWAcl9;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::443
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

__ubsan_handle_shift_out_of_bounds data is passed to the buffer inside
hyp/nVHE. This data is passed to the original handler from kernel.

The values of the operands of the shift expression are stored as the lhs
and rhs pointers, so there is no need to dereference them.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_ubsan.h |  5 ++++-
 arch/arm64/kvm/hyp/nvhe/ubsan.c    | 14 +++++++++++++-
 arch/arm64/kvm/kvm_ubsan_buffer.c  |  4 ++++
 3 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
index 7fd0d0dfbd82..3130a80cd8b2 100644
--- a/arch/arm64/include/asm/kvm_ubsan.h
+++ b/arch/arm64/include/asm/kvm_ubsan.h
@@ -21,11 +21,13 @@ struct kvm_ubsan_info {
 	enum {
 		UBSAN_NONE,
 		UBSAN_OUT_OF_BOUNDS,
-		UBSAN_UNREACHABLE_DATA
+		UBSAN_UNREACHABLE_DATA,
+		UBSAN_SHIFT_OUT_OF_BOUNDS
 	} type;
 	union {
 		struct out_of_bounds_data out_of_bounds_data;
 		struct unreachable_data unreachable_data;
+		struct shift_out_of_bounds_data shift_out_of_bounds_data;
 	};
 	union {
 		struct ubsan_values u_val;
@@ -35,3 +37,4 @@ struct kvm_ubsan_info {
 
 void __ubsan_handle_out_of_bounds(void *_data, void *index);
 void __ubsan_handle_builtin_unreachable(void *_data);
+void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs);
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
index 9497e7f7f397..40b82143e57f 100644
--- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
@@ -56,7 +56,19 @@ void __ubsan_handle_out_of_bounds(void *_data, void *index)
 	}
 }
 
-void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs) {}
+void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs)
+{
+	struct kvm_ubsan_info *slot;
+	struct shift_out_of_bounds_data *data = _data;
+
+	slot = kvm_ubsan_buffer_next_slot();
+	if (slot) {
+		slot->type = UBSAN_SHIFT_OUT_OF_BOUNDS;
+		slot->shift_out_of_bounds_data = *data;
+		slot->u_val.lval = lhs;
+		slot->u_val.rval = rhs;
+	}
+}
 
 void __ubsan_handle_builtin_unreachable(void *_data)
 {
diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
index f66cc5f7878e..b4a282bec91d 100644
--- a/arch/arm64/kvm/kvm_ubsan_buffer.c
+++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
@@ -28,6 +28,10 @@ void __kvm_check_ubsan_data(struct kvm_ubsan_info *slot)
 	case UBSAN_UNREACHABLE_DATA:
 		__ubsan_handle_builtin_unreachable(&slot->unreachable_data);
 		break;
+	case UBSAN_SHIFT_OUT_OF_BOUNDS:
+		__ubsan_handle_shift_out_of_bounds(&slot->shift_out_of_bounds_data,
+				slot->u_val.lval, slot->u_val.rval);
+		break;
 	}
 }
 
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-10-georgepope%40google.com.
