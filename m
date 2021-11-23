Return-Path: <clang-built-linux+bncBC53FPW2UIOBBV4E6GGAMGQEANVK6KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D88B4599A7
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 02:22:31 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id q15-20020adfbb8f000000b00191d3d89d09sf3455853wrg.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Nov 2021 17:22:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637630551; cv=pass;
        d=google.com; s=arc-20160816;
        b=Re+6prNKSUfXM+K/8lBzoXHUxd7/nWwBhr3e/N2Kced9+z+GyPq8T0PiOVXr0o6f/6
         SCN2yeuvc+MeS5cfHbt2iE651ih4O6uG18k2yvyWQpP60uZya2kRnaOF80uRnyy1RdRw
         z783R/uwzks5jZRwvlBKKXpfPDqgzSG6nmdW0c9DMdXetIw5vUqD26cVUHaSYf2143fc
         /Li0G1d5INtqgtVCPzg4z2tSKJCf1RLd9560dK2HEFU/yQIFX5UxhCqaUF8OvgiBtbn3
         qX4ijliHLHBWrnSMF/TTw4UkB9hz5EGYUiqv3CYSE2AdohyPM5NgnjS9zQXQqvmenASY
         fqwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=pzyjao9Z1YYuuy6DLlRDi37/mw9UP22uC/yGXeSS6J0=;
        b=mUzWUD7i0/BWRzcY5wV53dFp8VQL2d/XZ/KT851Go2ySxK8Xx7JCORCRrb6DbpdrJY
         IBdaue32f3F7OpK7kJsyekiTrVENkp15F90FjcLupfQIISQKeOYeFT/l6PsLVjbkk+L1
         UkrDawZykIGF4JD5gkfnrO0ECpXjkUumk86SGsd0M5yAza6tySwzjN90VS05arqCy1TI
         yaAdh2dR+srGpuKRu01CvyM6O/PX3qWih1yDT6r11gs1W3Xu1UhzTVG7x3q42jt8Wxj5
         wQTMSgjSxjiS/wCrnHg+YLTQgix5D9oCczqz9bPacyzBGV8bUgqzuAz5B5dO0USuR0JZ
         Yw+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=KHUf30VQ;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pzyjao9Z1YYuuy6DLlRDi37/mw9UP22uC/yGXeSS6J0=;
        b=EUBquiYeOB4UbOGNt/3pzutjOpAZYf2dwtTOoPsepaxc9Wu7mqCQn+znOButTRtO7b
         WBjv6OACRkJfMIvT1xR4KmxIf2smZjdSuHZd+D3M+nAFRytGt5wByEm8SNiz8Eyehcu/
         JUMnGBl2e7kblNh7ZQ575hEuJsYZyammBM8Q9Y1P/eSwQE/sAFCER+8KG/xjcKJFX3tm
         wSxOkGspgvyU5u6OZ2t4YU/b69VAsjqd86nCBr+OgjxsecuGUFN3nEJkyaIJYZccJD/e
         Cio2kJ36gNDVv8SCU1/EW1jK8C4MWPlhkf/LkqWV9/51H/cIrHjHzXJlrb7APkx/EOmU
         F+XQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pzyjao9Z1YYuuy6DLlRDi37/mw9UP22uC/yGXeSS6J0=;
        b=YjbyyV9bO87rcrLaywxmtqr+xdWd7Es/gM8mQG16+rNq/tJBH6+N6isYwhf48gu1P/
         3R7xONhbtK3gm3MUvx/pCm17dourh2VMnJGbEG6Y+d0vScFifh5INFBl3btMgQgr0vmM
         9Kf/UzGbJ+JhZxrAzkKtla8bKGga0B8xh1P/qmV+xDFf12uPHx3n8fRUGChXdCl1ii3g
         rtXYqL185T/jfBohAeb761wqTEbOh58VTqt9MUOUaSK0hMsuA15UWQT77wXTLZoPz/t0
         NVSszGonNg4MJIvl6mbD9krDTTYKcHJ60cUHAo2sDHjZgCpU/vQrJ04uovBAhkFsr1mI
         z5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pzyjao9Z1YYuuy6DLlRDi37/mw9UP22uC/yGXeSS6J0=;
        b=FlmQXqhNoKfCnyymUsP0oXdHxeT8ynGRTSF59N5JoPkPKUYOhEgu1W4D+rwSkRJpaw
         ezjdfialuU1LJx46FCdScfG0V6y++8sBZ1tLYuYmRnQc5dEAys2k2UpmFNPsVgrDH54s
         rin824pOB74nQGTCWKVNZ7h8AblDvJKwLWEbgsdrrnsv5SezAG56Fd69Ms6ehT7c+ktT
         /Ccl6bpEtWC2YS9PenbiPkMgJ7XbSTLX3S/nxRV0bcTPsT+CCoXmeFXtw/ls5gOie3WP
         ySRfCMgdCJ15ynU11GVKS+n0YlMkm6o8xFd+U0KtkO1ODzB3bi3Yw6I8lwRv5BLw3lDV
         fSFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324WhzJsNNDxZRm8H8w/1r4uDBKPH1psPQ8NeF9POthEmJdCXRl
	aWXFWT1jBBKrqb33qYUBakM=
X-Google-Smtp-Source: ABdhPJxNCSI4fb9SwJdZqRRrvihNi+HkX03MiNfPvemnk5MdSZ0xTkl5F3CjsAWPkNf0PUfgaHguuw==
X-Received: by 2002:a05:600c:354b:: with SMTP id i11mr37072374wmq.61.1637630551343;
        Mon, 22 Nov 2021 17:22:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls1096564wrr.0.gmail; Mon, 22 Nov
 2021 17:22:30 -0800 (PST)
X-Received: by 2002:adf:e109:: with SMTP id t9mr2157877wrz.387.1637630550390;
        Mon, 22 Nov 2021 17:22:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637630550; cv=none;
        d=google.com; s=arc-20160816;
        b=dy+whxWdM5o0NudxJg5bVGXWECkCNRIlQRdSiGgycq332Zfuqzdzr8uekjLmhjKs7h
         v4HRvI12GV3XEr8KWN8YehTXpsIdnEnxs8RfyOdp0CRNebHJwSflAWu3eNuMt/IBDhG8
         jK5e+0z4cS2G5dqNQAwi4DU0KqYM18bX0zKF7AH8p8oPsliVXgkaqSm8YAqmURhitfJa
         33nfC/R4//58PXqj0UTTkuvxMXQHkItud2VktVTOF4a73p2AAkLuJphud1AuQiKP/LCe
         dv233fE/tVvTqrJz0TAkhs3kDdz5CQPv3Ts9guanUZA4qiiEoYuhN4apHmxrawahkQgr
         mV4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+v7bjTJ4Q3k72mUckY/vna9r5hdbnIr+w4bsRguwuxg=;
        b=RSSVbacsGuF4Wl8He0C8hB0F9gq6LhdDZ6LEIjPtaqzznqujQ0Ga7nPfx7T1T3eNXE
         5su6W26PNvZiMawHS43Hxiy++yknZaZO1YJFCvgYeLaf/Zvm4HwMjT0q2Cnj7OZlNqmY
         HYkJ9TeuzkG/lZpTaTTLvG0mDwc27hKxrJXUrHXIjbp2JXjxTPJU4+2sBvDWwVksyy2d
         r+tZX6uI4heSlgSgOUWpEwBhVgig7+XhkcTp9Spi1DTXTYaD6gNCexdY4iXmrLgQyFjB
         qLIfhZ1QR9xRiRom1vT6Xa89AsJGX6cO0GXEgfolUcp/cKzmGv6zYYoBwo5Dra5GuBda
         PzLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=KHUf30VQ;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id o19si1079358wme.2.2021.11.22.17.22.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 17:22:30 -0800 (PST)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id u22so7639160lju.7
        for <clang-built-linux@googlegroups.com>; Mon, 22 Nov 2021 17:22:30 -0800 (PST)
X-Received: by 2002:a2e:9217:: with SMTP id k23mr800807ljg.267.1637630550152;
        Mon, 22 Nov 2021 17:22:30 -0800 (PST)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yct-z7s--tg8y8t-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:50fd:36ff:fe05:e039])
        by smtp.gmail.com with ESMTPSA id c15sm1304038lfb.40.2021.11.22.17.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 17:22:29 -0800 (PST)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	linux-kernel@vger.kernel.org
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Joe Perches  <joe@perches.com>
Subject: [RFC PATCH 1/2] pgo: Update .profraw file format to version 7
Date: Tue, 23 Nov 2021 03:21:36 +0200
Message-Id: <20211123012138.160532-2-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211123012138.160532-1-jarmo.tiitto@gmail.com>
References: <20211123012138.160532-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=KHUf30VQ;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22c
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

Recent LLVM-13 can't read the version 5 profile file any more
so update the format to .profraw file version 7.

This version adds binary_ids_size entry to struct llvm_prf_header
and it is output as zero.

This is enough to fix processing the profile data on LLVM-13 tools.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/fs.c  | 1 +
 kernel/pgo/pgo.h | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index 3c5aa7c2a4ce..77d23f869503 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -62,6 +62,7 @@ static void prf_fill_header(void **buffer)
 #endif
 	header->version = LLVM_VARIANT_MASK_IR_PROF | LLVM_INSTR_PROF_RAW_VERSION;
 	header->data_size = prf_data_count();
+	header->binary_ids_size = 0;
 	header->padding_bytes_before_counters = 0;
 	header->counters_size = prf_cnts_count();
 	header->padding_bytes_after_counters = 0;
diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
index 04fbf3bcde1e..45eeff9ab6c4 100644
--- a/kernel/pgo/pgo.h
+++ b/kernel/pgo/pgo.h
@@ -43,7 +43,7 @@
 		 (u64)'R' << 8  |	\
 		 (u64)129)
 
-#define LLVM_INSTR_PROF_RAW_VERSION		5
+#define LLVM_INSTR_PROF_RAW_VERSION 7
 #define LLVM_INSTR_PROF_DATA_ALIGNMENT		8
 #define LLVM_INSTR_PROF_IPVK_FIRST		0
 #define LLVM_INSTR_PROF_IPVK_LAST		1
@@ -56,6 +56,7 @@
  * struct llvm_prf_header - represents the raw profile header data structure.
  * @magic: the magic token for the file format.
  * @version: the version of the file format.
+ * @binary_ids_size: the number of binary ids. (since LLVM_INSTR_PROF_RAW_VERSION >= 7)
  * @data_size: the number of entries in the profile data section.
  * @padding_bytes_before_counters: the number of padding bytes before the
  *   counters.
@@ -72,6 +73,7 @@
 struct llvm_prf_header {
 	u64 magic;
 	u64 version;
+	u64 binary_ids_size;
 	u64 data_size;
 	u64 padding_bytes_before_counters;
 	u64 counters_size;
-- 
2.34.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211123012138.160532-2-jarmo.tiitto%40gmail.com.
