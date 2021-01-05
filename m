Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5U22P7QKGQE6UCGHNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5912EB450
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 21:35:03 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id 189sf803870qko.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 12:35:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609878902; cv=pass;
        d=google.com; s=arc-20160816;
        b=KNq/rzlLorwyMH8Q5tvVYju2tpG8SI1BAOsdy3P3EOBKSTMKjteJJbnCrZFb8Y95Vk
         DwDxrsdV9WNG0OzEIqU3fL+oCiXhvlS8Te6YVp/OT40N9ZQli2StkriWkAXaqqb5sob+
         /L/ZAfseaPh0nWvOSEtumLVz2n2QpusUyRDCxQDz7WvnIvgBPagDBib/PfAcX78vgcRs
         1nagttfOjC55MMzwj7fc/m7DhTzqupkRZHu8IJ+5W5mpLd5fAspMNiqF7zOGbFX5Xu+4
         J1FsJxKbWRZVZlXZ3o2usHsTvW3rvot5/Sy6FPoSdwk7cUySHUHjnfRVhwM+94VV41kd
         EioQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=KzgrXi3J7SgFO+AM/kicnrvlDkZ+NvbYnVA3c003hZ4=;
        b=WL7XZvHgvSc8zPOPHQWx8i3BQCY3cJUzZtfvkXWR3CPAqzITWDDwWvpFTuYLoP9QvY
         Oo4dyBuxU0HBs4PY1Q5LyhBNPgds8F0zp5qAHG+6HHxxrvoLsVShW6y6bLPYwsn2d/jw
         3G+O854Ml1A3eWzV6jPCYIKSSmrBKGk4rrgBnoD8VYlrLu7rP9XsYO6GwUv5nR6CpEVO
         GvT4Ts2K4UqWlX53OkE5RLUu2g75+M4Ss48EStOxvBqn8lAMvmo1ryiIdyfblpaV/GWg
         uz3TA4BY+ohFiWpFgO2YsUfmkTzee/u5d9oYYgypDwL8LQ8dD/wL9t+sILkcaxiCsFln
         5Tpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gF1bawST;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzgrXi3J7SgFO+AM/kicnrvlDkZ+NvbYnVA3c003hZ4=;
        b=bZqDFsyrLqCjpAXZM6mEOJa6/xhVDxZ4T+H/tD93Qv3BWRmJyxhf7Ru8AloD4hDQHR
         CfbbN7Th1ALV3ELvAykiDFsAWVriLSfthSWynrbdajJl6X7whKgxTDZoRLu2w9LsQDvf
         xNWHVoohv7+Fq7uFBpTQCz4vhxSCtJduPjuB6xHFizHeM2mkkV0w8yGpQ6tDPX8L/UTH
         i50eEUkWa5GCqJo1mrZA2OEEP0/TK1Qt8p6BB1fVWAWZW2/8KAsWoPrSSLju7VaLcvQe
         oOZlXZJHRCgh4Wv9llQizhWFFXRdHzonTQ1LdzazDRHIlPGtIL43qOPwLBro47HQmPDz
         PMVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KzgrXi3J7SgFO+AM/kicnrvlDkZ+NvbYnVA3c003hZ4=;
        b=Qpdpgk3Zo2y3JCGYyoRXEDd+zWIA0EbUMjIgfNjJG+rFRepNOKXGYYnkm1hwb6YePc
         KrBeuDM4zPA9dzkxsJ/nh5oUrQA/ej9eCW5aueEoJeGLLaXrjN+KjZKPUgGCkS3TWXrd
         9eIch40KRtzJ4gr4WYSH9/lENYSjYa5pVIkXsZYXg7noeusSyPWSV8Ng8GzDfUgrzWUl
         a29CapdBZ1yEOQCxxV0Y6vj9C6x3F23LeZrVNCvDy8vsQ9OoCivl0IMEWNAuPrzTaK44
         WEUU8/qRw4d0hbiJI3yJIqD9EgqKtmhw+EW/+2ETA+dF893zuu8NI55DksnjxX1mf/30
         qi3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KzgrXi3J7SgFO+AM/kicnrvlDkZ+NvbYnVA3c003hZ4=;
        b=PUi1L72nPLnhfsdAAnHyT4YXfJTNa5d3uy9bsgEIHKJf/dzscQJRFqf08DqvX7XEOA
         vYEUvfhRZqDrnn8vuoSFHmjhlnc4OIsHAr3PUtjOdVR74Lkrt/KvVuvQ1kl7sdFaqoBq
         VXUCwKRjG22TLfD9FYW3RxfxMEhrUnK03MseTRzQmHoJY2mQvgri5e4ROE9VySelKF/1
         1PenEG5kIYGfxEUAfJ7XgFK0W+UAMBsdF9YZmDYVqlN7501YesP9vq6RUMAg4oi04GYx
         kAvCCZY2vCcCJ6+Lljk+JU8hDRpDEVkd726sc0xZyMkxengQd+L5VbZ0B0S4X4hT2Jwn
         M3LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531R8GXEnRLSLmIHQ/Me0cZQYD5+Sq9dU8ogaEGXm3zp+tR5PmHu
	d8dmMCclxKBZbfgt+RNNzkM=
X-Google-Smtp-Source: ABdhPJyRR4wWFGa5B/btCUn1by9cltsVzDVBQy5onw3pWB0+fTxJoHsEQiCLmGIzRpC7vBwdEVrtRw==
X-Received: by 2002:a37:2f82:: with SMTP id v124mr1299243qkh.212.1609878902333;
        Tue, 05 Jan 2021 12:35:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:702:: with SMTP id 2ls557505qkc.11.gmail; Tue, 05
 Jan 2021 12:35:02 -0800 (PST)
X-Received: by 2002:a37:4848:: with SMTP id v69mr1383497qka.62.1609878901971;
        Tue, 05 Jan 2021 12:35:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609878901; cv=none;
        d=google.com; s=arc-20160816;
        b=V0jwURV6L2fTkRU3qbtpYhxSP3nxZyK+KXvFYnaJtD/VOfSBMzJ4E277G1lfjretNT
         QwO6pl4/x+siHErmoYCOv6e2nZetEKMvv5JpMuGnaRIHwC8fiy5xoF72HQnK4e+LNTXn
         peJAJZnCt+W4bjaK/oPtWSaKSAICtuKjL0icXMwU/cx61rySF9/FWpN9hE81ZaE+RmWN
         6Df4lJo3m8zD3RuD/3QVQ5+dGZdz9qwAvtpETAVIWZzLdW6dwmsfANZKpckNHwOSGwKB
         UUPRJRkRbWuPr7E6l6NQTepuCKk/nDIXhZrSQPIsQjCR1HvTB+pBDG0imnUXFOocgePF
         1IEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Fxhczrrnewt21nxO1uR6gSDuR5cXjQC5Qv2bp8P5/qA=;
        b=GXqQiMrVm72399OWhCepMhujnPKIyzECy/AtiwLGhjoXBZGqCNGfyblfvZPQpnGZiR
         352JhKpNz8/ubIPYu/nlydkMnoSRxLYsfTb4jGS79DAhI4LUdFbzxE4k657OEzIb/SC7
         wamajS892+w4669nrDUrI5aGPqxBkRQPPqBjt3gotia4Qe2fQnO7n3ATQCVX3J4bK/L4
         wHm7W51jcyqSkA4ZdYgdkmmTMmpPYe9dW/gU8i9muBH+HvxXcpngWoYov8HOZHCxg4Ao
         XBrIR/e7mDhvjlwO01eLY7zjO1f9J56DV5gabEapQIk5J1GOtRpZOuUYIncPxaAESVwZ
         7L/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gF1bawST;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com. [2607:f8b0:4864:20::82a])
        by gmr-mx.google.com with ESMTPS id g2si14779qko.5.2021.01.05.12.35.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 12:35:01 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) client-ip=2607:f8b0:4864:20::82a;
Received: by mail-qt1-x82a.google.com with SMTP id 7so713500qtp.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 12:35:01 -0800 (PST)
X-Received: by 2002:ac8:4e87:: with SMTP id 7mr1238831qtp.310.1609878901673;
        Tue, 05 Jan 2021 12:35:01 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id u65sm259481qkb.58.2021.01.05.12.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 12:35:01 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] MIPS: c-r4k: Fix section mismatch for loongson2_sc_init
Date: Tue,  5 Jan 2021 13:34:56 -0700
Message-Id: <20210105203456.98148-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gF1bawST;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building with clang, the following section mismatch warning occurs:

WARNING: modpost: vmlinux.o(.text+0x24490): Section mismatch in
reference from the function r4k_cache_init() to the function
.init.text:loongson2_sc_init()

This should have been fixed with commit ad4fddef5f23 ("mips: fix Section
mismatch in reference") but it was missed. Remove the improper __init
annotation like that commit did.

Fixes: 078a55fc824c ("MIPS: Delete __cpuinit/__CPUINIT usage from MIPS code")
Link: https://github.com/ClangBuiltLinux/linux/issues/787
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/mm/c-r4k.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mm/c-r4k.c b/arch/mips/mm/c-r4k.c
index 4f976d687ab0..f67297b3175f 100644
--- a/arch/mips/mm/c-r4k.c
+++ b/arch/mips/mm/c-r4k.c
@@ -1593,7 +1593,7 @@ static int probe_scache(void)
 	return 1;
 }
 
-static void __init loongson2_sc_init(void)
+static void loongson2_sc_init(void)
 {
 	struct cpuinfo_mips *c = &current_cpu_data;
 

base-commit: 36bbbd0e234d817938bdc52121a0f5473b3e58f5
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105203456.98148-1-natechancellor%40gmail.com.
