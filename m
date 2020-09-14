Return-Path: <clang-built-linux+bncBD6K324WS4FBBMGQ735AKGQELZQJXLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 40852269330
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:17 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id f17sf127218ejq.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104497; cv=pass;
        d=google.com; s=arc-20160816;
        b=oIm5jIcpZpcBrkGgxwBpz5gQAp4AI3CnFUTO3Gfo+/G04m6ezbQts+8N02i9/8EXf7
         2Up8gcKhoXshOOm76ybsUqeNOOCWv2HtyIz9QSnzaq1hyFtXZZGHJ8tsymLknwbKGV/z
         T0umXFJbfY/+OB1uqJoU+Rn2YpzelFn4nswgMPOVrdvC4yFxD4RoGky3VHXzvwNbnA9/
         O1pxUSjSRA9FE0ybrIj6L+LNC1KF34syhBwfzaRwAnpl48xoFb2YyHY4aymPW37SksqY
         2+d3T9PvUQvhO04gdkGS9T8ZFQq4sgyL3m5pUfCORTXnf5XV6RVGL0K4EpBWeJc96U/y
         1U3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=dYj5gP6NpuaTS5AMOBMycWIeJlpypKTx2yYwKvADPfg=;
        b=zGRKFoMtYEQvNlWQNs03wHBaE3Yq+IB9H7IYqQ+xdJf305uDIh3L0gyY8ZytQR+82h
         F2D3XOPQZd4wSU1u8vZJpn8jhLHOP6yHdQikLAOI66gyJFbvTcf8Jl2Ky5WajCgoNmb3
         9lGYHv+wrLNWo8DQGVWifFl6SER6jHP4F39Z+Q/lMpKCjL+IDwUTiMaxve2psFjxFqn8
         y0WH9t9+V0+GmmXvhoLQrYnR+v7TwYNLZbNjAarfferK/2bq+DULgmMD1lX4hlggJUxF
         O+IERh2RVWzdr4O4r1jJEeSKGOK46Wy5K3tavZOcqcM+25M6wtPseubst6IXFv4+uhFA
         2Guw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tSsBMUWs;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dYj5gP6NpuaTS5AMOBMycWIeJlpypKTx2yYwKvADPfg=;
        b=mbuzx9A8Yl6r4aj9BRFgJbXzSp7yrby3e33awf301+G4WjcioQ5rZOiE/iz2/Qvdzv
         9NfU62o3NC2CNjRrPpvNk+Djl9vy5oJL5BPVGxa365JSiRKmlozixGIwL6T9rdrjykZO
         BZ48smplJ5ukVUhZgkWFWQYWFIH3ZGA6wNwMu7Dj6T/sW4OOQErx0YMlQs8beNpnkSQG
         UJ/g0mz1tBq4wF+m5lBSfL6+GD646NyaPI7Y6mPOLA1eSGldVjBzTMWy7HMjIXB1SlaF
         fYuviIXkXJAcj4SrzryrFG0E8qDVnItP9L7ugGJZdFxlCKYo6Z6orx491UqIwFE1ZKAc
         z6Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dYj5gP6NpuaTS5AMOBMycWIeJlpypKTx2yYwKvADPfg=;
        b=DrqsxSftfF+mrRR3qHoEiFFNu8X8bV1ZIKurl8c3Hm6TUwHHSTyno1UmtGyrObkKVU
         pbrIT4dTdOihUfZxDEsJko+eqbI+ckXy0X0RrLbusueGl+AME1NmkEJxe0QehXCIoMge
         JP4dx9ffuN/hp9Kaa8Ez6nXj7H5EhvGv0+DfTGdkGp4wtEecuBHN+EwhSO83802BsRK6
         fPs1FGdN3mJJGrmCIWpAYrN+pTDaxkgVM3svx4R2ZFn6VqOEBXpPHnhpXrMINqmOlQtV
         iHrYkISfibwOSdnFI3eCJ79bL4BLlfmtEBTWQsYfGSzFtzlWA4hnoHSWXjAT91mX8JrJ
         r46w==
X-Gm-Message-State: AOAM531GP8SL7HJmybzW9siKN9K38m4/BzDZ6SKSJh4KcTa2/O4IoU1j
	5nAT2RVwMhN0ckX/6CsCUsA=
X-Google-Smtp-Source: ABdhPJwFrHGowHcY8FX8cvFBYWaiaCpUHDG82w+IBz/VZdEiYRm4xZcw2INH3vWcX5XT5USHqZHn2w==
X-Received: by 2002:a17:906:3bd8:: with SMTP id v24mr16352514ejf.509.1600104496959;
        Mon, 14 Sep 2020 10:28:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bf49:: with SMTP id g9ls30054edk.1.gmail; Mon, 14 Sep
 2020 10:28:16 -0700 (PDT)
X-Received: by 2002:a50:d7d0:: with SMTP id m16mr18654237edj.105.1600104495899;
        Mon, 14 Sep 2020 10:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104495; cv=none;
        d=google.com; s=arc-20160816;
        b=WfhUtkK2zAleVNdKGruqSFpbKUcxw3nio27n+O0W6xqkOS/ja0m/TlHYYQBUnkpT0x
         Y4kp3AP+BKQruDl63lsxP2hFiTN1Fe7vPerTZ6l5VFpUYY2EvCF3etu+4vytR1w7V5oX
         Wlv67mq/iYYW0Dz3YXJA9XSw2iicqVwGRnOWXaZIVh/T0i9L7Ioj5ZRVq+DPPTBZ0mjr
         lmXewkTrUL/Klms8bmpQDwd6sFu1g8kx8VsKS9LAVeuTlzWJH1J9vXTUcjxRrHNBK46R
         nOyJPtKvRfxeawQSwrlqNJjZw3Rh9A0UdLA83q5OTLKZ55WjM78fmvRrb/ZWlvu6+52J
         bXMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VE4tiaYIO2WH178ygWtKyTutOHC4+8KlDDbyhHM4F14=;
        b=VFTbDziP5xSTENCDWOYy0w/NAFTvl7qZkh29KfH5z8KKQaR3vPCSytnouIwQxZ+zI3
         xz8QF46/rCxZ6XgJrSFKh2YFfDKrn2t8mdvb3ji8YdH5Gmpp/RvVPdjb32CIBUajZctz
         nwvmMG8cnyCcXrqGH0gfYejCLwa72p1w8hjn9KetGFagJrHihoZ2A5l5hcG9Iog+5Beu
         Gue1cXpFDmE4NebeJHnSQpT3i7Er4ZQi47UBp2h3BnvtwkhG3rCjmucb9iw62ZITq3sP
         O9+Ip/3tJ5omuEcnZhQSJg4gVCrWiM/kW3mRaGKtWCCRufwCbb7zgXr2YIPjX165phpg
         p+Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tSsBMUWs;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f17si359042edx.5.2020.09.14.10.28.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id z4so523239wrr.4
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:15 -0700 (PDT)
X-Received: by 2002:a5d:50c3:: with SMTP id f3mr16765517wrt.125.1600104495500;
        Mon, 14 Sep 2020 10:28:15 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id e1sm15404359wrp.49.2020.09.14.10.28.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:14 -0700 (PDT)
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
Subject: [PATCH 07/14] KVM: arm64: Enable UBSAN_BOUNDS for the both the kernel and hyp/nVHE
Date: Mon, 14 Sep 2020 17:27:43 +0000
Message-Id: <20200914172750.852684-8-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tSsBMUWs;       spf=pass
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

If an out of bounds happens inside the hyp/nVHE code, the
ubsan_out_of_bounds handler stores the logging data inside the
kvm_ubsan_buffer. The one responsible for printing is the kernel
ubsan_out_of_bounds handler. The process of decapsulating the data happens
in kvm_ubsan_buffer.c.

The struct kvm_ubsan_info contains three main components:
-enum type, which is used to identify which handler to call from the
kernel.
-struct ubsan_values, which stores the operands involved during the
undefined behaviours, which can be one, two or zero, depending on what
undefiend behaviour is reported. As an example for: out_of_bounds there
is only one operand (the index).

Accessing a slot with no type should do nothing. Each slot is marked
with the UBSAN_NONE tag after it's first usage.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_ubsan.h | 19 ++++++++++++++++++-
 arch/arm64/kvm/hyp/nvhe/ubsan.c    | 13 ++++++++++++-
 arch/arm64/kvm/kvm_ubsan_buffer.c  | 13 ++++++++++++-
 3 files changed, 42 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
index af607a796376..575881e0bd5f 100644
--- a/arch/arm64/include/asm/kvm_ubsan.h
+++ b/arch/arm64/include/asm/kvm_ubsan.h
@@ -11,7 +11,24 @@
 #define UBSAN_MAX_TYPE 6
 #define KVM_UBSAN_BUFFER_SIZE 1000
 
+struct ubsan_values {
+	void *lval;
+	void *rval;
+	char op;
+};
+
 struct kvm_ubsan_info {
-	int type;
+	enum {
+		UBSAN_NONE,
+		UBSAN_OUT_OF_BOUNDS
+	} type;
+	union {
+		struct out_of_bounds_data out_of_bounds_data;
+	};
+	union {
+		struct ubsan_values u_val;
+	};
 };
 #endif
+
+void __ubsan_handle_out_of_bounds(void *_data, void *index);
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
index a43c9646e1e8..b2d3404f6215 100644
--- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
@@ -43,7 +43,18 @@ void __ubsan_handle_type_mismatch(struct type_mismatch_data *data, void *ptr) {}
 
 void __ubsan_handle_type_mismatch_v1(void *_data, void *ptr) {}
 
-void __ubsan_handle_out_of_bounds(void *_data, void *index) {}
+void __ubsan_handle_out_of_bounds(void *_data, void *index)
+{
+	struct kvm_ubsan_info *slot = NULL;
+	struct out_of_bounds_data *data = _data;
+
+	slot = kvm_ubsan_buffer_next_slot();
+	if (slot) {
+		slot->type = UBSAN_OUT_OF_BOUNDS;
+		slot->out_of_bounds_data = *data;
+		slot->u_val.lval = index;
+	}
+}
 
 void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs) {}
 
diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
index 28dcf19b5706..ce796bdd027e 100644
--- a/arch/arm64/kvm/kvm_ubsan_buffer.c
+++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
@@ -16,6 +16,17 @@
 
 DECLARE_KVM_DEBUG_BUFFER(struct kvm_ubsan_info, kvm_ubsan_buff, KVM_UBSAN_BUFFER_SIZE);
 
+void __kvm_check_ubsan_data(struct kvm_ubsan_info *slot)
+{
+	switch (slot->type) {
+	case UBSAN_NONE:
+		break;
+	case UBSAN_OUT_OF_BOUNDS:
+		__ubsan_handle_out_of_bounds(&slot->out_of_bounds_data,
+				slot->u_val.lval);
+		break;
+	}
+}
 
 void __kvm_check_ubsan_buffer(void)
 {
@@ -25,7 +36,7 @@ void __kvm_check_ubsan_buffer(void)
 
 	init_kvm_debug_buffer(kvm_ubsan_buff, struct kvm_ubsan_info, slot, write_ind);
 	for_each_kvm_debug_buffer_slot(slot, write_ind, it) {
-		/* check ubsan data */
+		__kvm_check_ubsan_data(slot);
 		slot->type = 0;
 	}
 }
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-8-georgepope%40google.com.
