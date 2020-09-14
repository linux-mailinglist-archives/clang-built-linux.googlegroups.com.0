Return-Path: <clang-built-linux+bncBD6K324WS4FBBMWQ735AKGQEIGKBMVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 633FC269334
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:19 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id n24sf23257ljc.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104499; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZDPKmQOIGQ6KUjxU1LcsoL3prBD7qqhEjJGGrNvFrOLvFCgFd0HwqbA9bobKfscrr8
         OX6+7Rhvg7nrhw1DXI9voaXVvQ8a3+H7mTlyZyabv+PNJZ3G8CDiNzRPRSvVmBBvV6nH
         hCEbASVNZVBXOLIgpj/jG0N0O6BoaDj4ekCrBMemsflns38is3PJgs4+bqrovXC8VitZ
         3SdoIGz9nx3VB5Ess5fVguA13I/OOByQdyWb5fMWEMAu18vrYudUnb982CnsMMbo51cl
         oGgMPXRkdkUr0OtO9mNWxy0rs1mR8kQa9FKGmqG3NEbWjiQl6rw8r5zNVajkxCUxJPrB
         JQnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=RUfLbUdOxzKOQrsaVmk9YO3XXsMG7bBIJO5o9edld8M=;
        b=jjrKemWfe4QlL1c0x4t5Ly4enq5Nfbs9mx7OvahYvaUbXF0PZKrQUPaIHd/BWJLmXC
         88zGmCVhTBhpXp/xytNtlhaqpmD//lYYrNlEGZF4SJpHDdOmc0Epg069CWweOIJoy4K4
         6IuIqiVKfjc9KO6UQ1J74TRtGxgNJ1TeAoeNPsZHGEU4YlV8EJkZlY/JZB9e7pxgA0bs
         7d9McUQ4X+BYICbXh0RQUWln0dQFqT1B3O9BjuUaWZJnmFjyv72h8ollp8EG+SrOT3Wa
         lNzqSNRMN5pekhza8Sg4Eed40bS+h/hw2vpibGrVaJoAObyZcg3yPerakge4fzqgkw+u
         9PCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="LDOJW73/";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RUfLbUdOxzKOQrsaVmk9YO3XXsMG7bBIJO5o9edld8M=;
        b=j827TxoZ1dL6nwXMX5Ly2Xl04Vr0yFmlQwp09+HraEv8QMMk9XJlLmnlp/ETtfwXkM
         fR2V0AA5RIxH+v3/Hi0njb2rSePL2HAdzV6Je1M4hI2TnT/IeuPtm01Xhw7mktmSYAFI
         S2Q3XP4hgqzmixR4dOfSMvcmCjqtEAoC3qeBiPKm3eB5ARYgZnn+wr7dSpX4abd15Jr0
         WHqFTGRTr6HFPwnYbpVcfuXZ/UqScB3/GfCHZUbMgIDmXPaa01N22L8qA9idyths+rP8
         WhDLIBK9SQ0/RmGNgoBaalUerCI2N6MxRkqeoJAabjWnH0jLvfcEfAMxaFVTaS6wUiwv
         Z/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RUfLbUdOxzKOQrsaVmk9YO3XXsMG7bBIJO5o9edld8M=;
        b=oDYLxM6LcH38YHQYyfTcZPeChznJQ0T3Kemj8/PM8Gkn09z1NSzWUcvBJpTxB35SuA
         4Ozt9JmXH8isfAl+pmSh5XDW7wPsrf9qoFfQBRjo6iRnNv2J+our4L7PcMPhW9lfDnJY
         3SH8tbniRdQ8/wqwq2MgZlgeUzUiTbATty4T5GsIeX6haViLk+alhNDtF9ZUgQp6eeTQ
         aJWsc8X917JOJkKubtzEi4PD+gQoIDOaiPix2TJZBnOQnhotZxCTISGMuBSfxBv1c2I5
         QT3roF5VRkQdhlF8Im2mWlWHxAEm3sHVcF6LXWKPtZP4Jt/8gKe9UphVIYkVG/FqdVD4
         cDyQ==
X-Gm-Message-State: AOAM532t37zzu8besqnIE534yCoXWdEmeCAo9QChA2GLqVsPynWIT2eG
	hxFo7JXyDalFAjknKj8N6n4=
X-Google-Smtp-Source: ABdhPJxBg0kt0WiQYxGWS12XHz++6V9Uiw/AdEMSEDkKJqGve3YTzsIpGW6Qf+dg24/vG+xCOHk++A==
X-Received: by 2002:a19:ac49:: with SMTP id r9mr4838770lfc.481.1600104498958;
        Mon, 14 Sep 2020 10:28:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a93:: with SMTP id p19ls1524792lji.7.gmail; Mon, 14 Sep
 2020 10:28:17 -0700 (PDT)
X-Received: by 2002:a2e:970a:: with SMTP id r10mr5815665lji.453.1600104497892;
        Mon, 14 Sep 2020 10:28:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104497; cv=none;
        d=google.com; s=arc-20160816;
        b=a4v1xC8bnAjK19LDIJQbiBbQpz2dKWzRx//MCOPNQ0tDj1ZD12G47mhhKFQ8OrR6fh
         bNes6YBCfNThkPKZpTqo1R7wNELQs3y32QX3TIra2QrZb30CdiBUD4zuu1tt6/DzC3R5
         oOIjP4TMyZwhXlwqhu95Rdc1nwV703Bh6O4xw4JOaukB6p6m0Tms7Rao8cyP2vHybn/g
         pub1P9czfonEgfPJaChrO9/Tpx2L1t9v1L2e6z9DSJ8gmifigtoCXXWmxQpiG4JvgEkd
         aV25pfcKQstcvYn/oFmfhQVHyrn0kxPLGZFzgwWSsylaWwFt8fQLu9gKhmo493sofIV4
         X2IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/EjNih3r7ygkjYASNBWp7YtEX1KLL1OovUvtOR4yQ8E=;
        b=hlC1xPd/rGVynl8NsCbxS2l8PE7BcUJ7OWb2pgFDbo4RXYPCOHhuNSZxZ0v02a6/Np
         EFri3JDSQ/h+5J68gS1IrwJZeGiSltsXxQUrMDDXBKuab2Y+QlsKxXBHn680cNpq/Cn3
         vrMkvUPY5S5RUZ7v7XfHYB4fk9FRg+ubymrQvHZ/aPOVthbH+4qhOIw7v45fe/nNQozd
         zOVKGAJN6EexFVgxkLSLeBo4V6O1IZxjADY0MC6PPRuSrg1GgfB3VVGBKh/I/1MzLv8L
         ovcQ90PGDtzVEaibQMY4mhXl/nfqP6lD8j2LE7zoPCXKbrQauWBbneRszWp55Vwwetfh
         oobQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="LDOJW73/";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id k10si380345ljj.0.2020.09.14.10.28.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id q9so814792wmj.2
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:17 -0700 (PDT)
X-Received: by 2002:a1c:a551:: with SMTP id o78mr486952wme.4.1600104497464;
        Mon, 14 Sep 2020 10:28:17 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id a17sm22898300wra.24.2020.09.14.10.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:16 -0700 (PDT)
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
Subject: [PATCH 08/14] KVM: arm64: Enable UBsan check for unreachable code inside hyp/nVHE code
Date: Mon, 14 Sep 2020 17:27:44 +0000
Message-Id: <20200914172750.852684-9-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="LDOJW73/";       spf=pass
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

The data from __ubsan_handle_builtin_unreachable is passed to the buffer
and printed inside the kernel by its symmetric handler.

Signed-off-by: George Popescu <georgepope@google.com>
---
 arch/arm64/include/asm/kvm_ubsan.h |  5 ++++-
 arch/arm64/kvm/hyp/nvhe/ubsan.c    | 12 +++++++++++-
 arch/arm64/kvm/kvm_ubsan_buffer.c  |  3 +++
 3 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
index 575881e0bd5f..7fd0d0dfbd82 100644
--- a/arch/arm64/include/asm/kvm_ubsan.h
+++ b/arch/arm64/include/asm/kvm_ubsan.h
@@ -20,10 +20,12 @@ struct ubsan_values {
 struct kvm_ubsan_info {
 	enum {
 		UBSAN_NONE,
-		UBSAN_OUT_OF_BOUNDS
+		UBSAN_OUT_OF_BOUNDS,
+		UBSAN_UNREACHABLE_DATA
 	} type;
 	union {
 		struct out_of_bounds_data out_of_bounds_data;
+		struct unreachable_data unreachable_data;
 	};
 	union {
 		struct ubsan_values u_val;
@@ -32,3 +34,4 @@ struct kvm_ubsan_info {
 #endif
 
 void __ubsan_handle_out_of_bounds(void *_data, void *index);
+void __ubsan_handle_builtin_unreachable(void *_data);
diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
index b2d3404f6215..9497e7f7f397 100644
--- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
+++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
@@ -58,6 +58,16 @@ void __ubsan_handle_out_of_bounds(void *_data, void *index)
 
 void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs) {}
 
-void __ubsan_handle_builtin_unreachable(void *_data) {}
+void __ubsan_handle_builtin_unreachable(void *_data)
+{
+	struct kvm_ubsan_info *slot;
+	struct unreachable_data *data = _data;
+
+	slot = kvm_ubsan_buffer_next_slot();
+	if (slot) {
+		slot->type = UBSAN_UNREACHABLE_DATA;
+		slot->unreachable_data = *data;
+	}
+}
 
 void __ubsan_handle_load_invalid_value(void *_data, void *val) {}
diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
index ce796bdd027e..f66cc5f7878e 100644
--- a/arch/arm64/kvm/kvm_ubsan_buffer.c
+++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
@@ -25,6 +25,9 @@ void __kvm_check_ubsan_data(struct kvm_ubsan_info *slot)
 		__ubsan_handle_out_of_bounds(&slot->out_of_bounds_data,
 				slot->u_val.lval);
 		break;
+	case UBSAN_UNREACHABLE_DATA:
+		__ubsan_handle_builtin_unreachable(&slot->unreachable_data);
+		break;
 	}
 }
 
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-9-georgepope%40google.com.
