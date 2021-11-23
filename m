Return-Path: <clang-built-linux+bncBC53FPW2UIOBBXME6GGAMGQEC7EAVKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC834599A9
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 02:22:37 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id y21-20020a056512045500b004162526955fsf5541385lfk.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Nov 2021 17:22:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637630557; cv=pass;
        d=google.com; s=arc-20160816;
        b=uzAmk9BI7eVqPf2NCOn658wzaeXJa2wZ5a2W5CO8+HuxNXe05goUOf0lduIALV1W3E
         bqyDoGoOueuq7UnO6Gzmj0MoU+xL93D6mLzTdGJIJZptNRrN2qSYCEGDrQmne/zTjzwO
         GtgFBertYH/znRo4lQh0BoiXwO1BdcwOw+kS25s5QEOSz1rpoSzp2LfKh5D+mLDIXTkF
         mcmNsue5z8MhjTHgo8MoOjlnytBdtwR3nDaqnt80Sd19EqjZ9+ixWDjF+Rww2fNFqBk8
         434LhH4g6AM7nuNegIqn2tg9CJN1wZdyDX+IgLTjiAuavZVPJEnLjX14Hh44qobxw9R4
         UQ1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=FbpfsV5z6SYYlCfgt8rKC08wND7G//OSadYU44YdmNI=;
        b=hYmSGaHinr7s/Gxv6MSkEsh0l6svbA/Hh7NhrPmvcO6F4gD4HprRrxWhfj9gyVwyzv
         i9hGyEPu3NoRMYUCi2bmCvk82H/7wR1WZd9AxNu81eeT3OxZp76Kwwul6o3k6AAKa7Ct
         c5PBXuyTXp8HjUtMlA0Va8UtCTu3rpqca0Z4wiuOUclRH88zYlZONyDanBZTnpNKPZpW
         /5emc97I3Ndf9zUT0JWpZ2Du1uWKUtUgtH37TAVLRz/S1wYInbUkQlf8kWXpXI5hjJBI
         ACnb+dVHvQIxir7zocJGqZfhEpKFtKeTQ5ClvjDBBHksXByxT0eeRGAGlgOTYym+7dVd
         xoYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gfBDsWIa;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FbpfsV5z6SYYlCfgt8rKC08wND7G//OSadYU44YdmNI=;
        b=pIpGmTVhm5uRM/h9VoPu4OlqpcfRuJwEmt/EOgaN8Cn1+m2/S9O391Pq4kFSCg2NuC
         Gn1dujEXe7spEPhspbIZ9cYhmmAexcCue6E9RedcqwFR/CFbOudPYDD8MThNUXw7Zfns
         YfSLYL16HpebWlF1MYFE1O1+iWm72x/n9Jn6yowNgMzjZXQgmBdDEGrhp25l1/+xon6h
         YUWr3pJYBPSAIlYKzcHRfO28upO2Aqb4gAmsJRjcOSZ6Gk76DdiZT9utKfQB42pSkvlj
         P2Q+qANm+f5tdJuqHpJmpFVmciNKqcAfUUFFuTHGryKNzRDH2boFIJXMnZRDAqOSWkWO
         DT/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FbpfsV5z6SYYlCfgt8rKC08wND7G//OSadYU44YdmNI=;
        b=qoGXO7aoghmzTyn1tfPV0EpEyguZvs+3i2L76fsiL/eLkFjb0c8EIsc2D/SQQ7AmF5
         GhUltMPIjALQqwMQKJw/DljfEv7x/pernrqEBgRBd5QF6fWjOdWH/JVNJ2wVP+StTF6H
         pc2cNuc4BLbRzEQL4qbGogAW4eivuxN/6oOb3lBrdgcJJEbb/HD3ZzKbFh3I2Umw9ahI
         8fzWlzz8XQPdb0d5oTk8eFtW+ui42qCqDTVfsrEzDu4WYERZQti+yqpAaK0Xvc7kMzO5
         cLm3IqH04oJYT+ctFHK3g/2mu8DgnKNXZiZr/bXHNUVntWtlkNabLk+4DkvoqPMNCvYi
         /NSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FbpfsV5z6SYYlCfgt8rKC08wND7G//OSadYU44YdmNI=;
        b=E6H1ZEXhVX6e6ciifH+g2FSAMT+oBRFtRtN6HQaTCC+mAwpZq1S7V5JaXzYttsU5B0
         ewyKSpyDjm1mwpNYIz+z+dBSxY0g2BUjnVVqQRRtisJJho3CYKfp9RQm4zEnxJYL4ApH
         o9GPY3XEay9l0Bqj7Ahcd+HgpAw545wVsh4JtOMhmI0r1CAY3u2Mc4zRlgS3eBBmOdhX
         Oq13pgzicbX8YU2xHs7DwNt0C17z0+8wIXitGK1lmV8hPTCiDhj/cpfIbrbt+bCCTfFf
         rDketBKaaNFO/kndiHjcJlOTzmPu9ADHpKsW09GXLynxDQleILYXb2CX3GygAhk9BZXL
         a25Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sGTZtyjmko7imQYzcdLlGtBa35fe7aevw2ERQ1qc+sqxobocp
	0lHeloHq6tXuwDARN4rbi4M=
X-Google-Smtp-Source: ABdhPJzqPFQP6yKsG36TODkNkwNXQge/h60PVICV1cS4dgV4YwxR7P0mPpKNazt95QAs9yhvoQIseQ==
X-Received: by 2002:a05:6512:3410:: with SMTP id i16mr759695lfr.113.1637630557562;
        Mon, 22 Nov 2021 17:22:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3499:: with SMTP id v25ls1774994lfr.0.gmail; Mon,
 22 Nov 2021 17:22:36 -0800 (PST)
X-Received: by 2002:a05:6512:3084:: with SMTP id z4mr761322lfd.583.1637630556576;
        Mon, 22 Nov 2021 17:22:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637630556; cv=none;
        d=google.com; s=arc-20160816;
        b=cMLWD3nslV2p1v/NWmzB1BhY+i2B8QyLUTedvU09NPgHyj6qc3YO3NVECIuipK4E9X
         coaEv4MldclfQIvu4FbCZUHuwf8UjLVYSFATXbpCb3dcZuyjoDbUboiz5+aiXmbUC8SP
         oqVzgsZB+Oh1Vq+v7dWarNnYN7vFFt9cOxWfUp6tjxNYJde6EU7oJSkeP6hU3qqf9ert
         ODvH8bdMyPRwxpCjj8p36gTTBqx2mirhhBsEunyN4jmgBVKdWjyHAjv52DDWKXx9wc3X
         lKrAq0uvYXx8ZaQi1A/khsbG2U15+ATSZjDIzxKye0lKDfriZsQ3FeNAHZOXk8iYQsTY
         Mbcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=w8ragH9mrm78TEDc0slgjQMbYNAP4RfkPoqdokFyY0M=;
        b=aUgBoAVElwopiHqqgi+skQKN8nwRHR2JH9K9lfGAwFccPwo4nA3k/iwIbhlJb6nap3
         MTnUKJcT16K1A0obN78gj7x6tON0EuWVCW68AKjjWPRK6zhAez/Bo5K6U0HLoRNqoCxv
         aJgUgrg3TmvECho6C8CA64C6wm9PklkKCTfeuin25UeK+scKygltxryvT1lQpU7kdDS4
         iAKdeDAqAFRIkUKNWTK1QyQAOX6QyP1WTueUtPe8pgh1OY2oF32jIvC05/sLsCaiYxGt
         /aSZDtQ2NkSxMOkMmutRkusCrFCx4eZUM79mYr2J1/Gbn6YUViBrkvjRxOdM2KabT0XM
         lz9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gfBDsWIa;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id u19si690953ljl.5.2021.11.22.17.22.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 17:22:36 -0800 (PST)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id k37so86911638lfv.3
        for <clang-built-linux@googlegroups.com>; Mon, 22 Nov 2021 17:22:36 -0800 (PST)
X-Received: by 2002:a05:6512:33c9:: with SMTP id d9mr745890lfg.615.1637630556379;
        Mon, 22 Nov 2021 17:22:36 -0800 (PST)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yct-z7s--tg8y8t-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:50fd:36ff:fe05:e039])
        by smtp.gmail.com with ESMTPSA id c15sm1304038lfb.40.2021.11.22.17.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 17:22:36 -0800 (PST)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Jessica Yu <jeyu@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Emil Velikov <emil.l.velikov@gmail.com>,
	Miroslav Benes <mbenes@suse.cz>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Sean Christopherson <seanjc@google.com>,
	linux-kernel@vger.kernel.org
Cc: Bill Wendling <wcw@google.com>,
	Joe Perches  <joe@perches.com>
Subject: [RFC PATCH 2/2] pgo: Make module.lds.S linker script to merge __llvm_prf_ sections.
Date: Tue, 23 Nov 2021 03:21:37 +0200
Message-Id: <20211123012138.160532-3-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211123012138.160532-1-jarmo.tiitto@gmail.com>
References: <20211123012138.160532-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=gfBDsWIa;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::129
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The compiler leaves many duplicate instances of __llvm_prf_* sections
in final module objects and they confuse the kernel module loader.
Fix this by providing module.lds.S linker script that merges the split
sections like vmlinux.lds.S currently does.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
I'm not sure the linker script is entirely correct and
it propably needs more work.
---
 scripts/module.lds.S | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 04c5685c25cf..83ca5825c0c3 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -60,6 +60,39 @@ SECTIONS {
 		*(.text .text.[0-9a-zA-Z_]* .text..L.cfi*)
 	}
 #endif
+#ifdef CONFIG_PGO_CLANG
+	/*
+	 * With CONFIG_PGO_CLANG the compiler may split __llvm_prf_xxx
+	 * objects into multiple sections. Merge them in final .ko object.
+	 * However leave .rela__llvm_prf_data sections as-is
+	 * since they are needed by the module loader.
+	 */
+	__llvm_prf_data : AT(ADDR(__llvm_prf_data)) {
+		__llvm_prf_data_start = .;
+		KEEP(*(SORT(__llvm_prf_data)))
+		__llvm_prf_data_end = .;
+	}
+	__llvm_prf_cnts : AT(ADDR(__llvm_prf_cnts)) {
+		__llvm_prf_cnts_start = .;
+		KEEP(*(SORT(__llvm_prf_cnts)))
+		__llvm_prf_cnts_end = .;
+	}
+	__llvm_prf_names : AT(ADDR(__llvm_prf_names)) {
+		__llvm_prf_names_start = .;
+		KEEP(*(SORT(__llvm_prf_names)))
+		__llvm_prf_names_end = .;
+	}
+	__llvm_prf_vals : AT(ADDR(__llvm_prf_vals)) {
+		__llvm_prf_vals_start = .;
+		KEEP(*(SORT(__llvm_prf_vals)))
+		__llvm_prf_vals_end = .;
+	}
+	__llvm_prf_vnds : AT(ADDR(__llvm_prf_vnds)) {
+		__llvm_prf_vnds_start = .;
+		KEEP(*(SORT(__llvm_prf_vnds)))
+		__llvm_prf_vnds_end = .;
+	}
+#endif
 }
 
 /* bring in arch-specific sections */
-- 
2.34.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211123012138.160532-3-jarmo.tiitto%40gmail.com.
