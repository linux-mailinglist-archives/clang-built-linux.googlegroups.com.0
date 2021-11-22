Return-Path: <clang-built-linux+bncBC53FPW2UIOBBQWR6CGAMGQERAUNGKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A047459873
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 00:33:24 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id x25-20020aa79199000000b0044caf0d1ba8sf10677549pfa.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Nov 2021 15:33:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637624002; cv=pass;
        d=google.com; s=arc-20160816;
        b=ijXf7pJTTU+xljwrg3CsCWbe5E6CH8t4XhPV4UniT3qEcjus/4AdqIzdbhlPM9GWQR
         tX/ti/+urNkHnocQ2khLk8GK/psXvzQ5oI8lmq/c8DDJBqD8jnR+588/Y+x7PsiJSmAB
         Pal1uFbTilDvEVi5c4Zzqi+9k7QJkhIRu9iK9zpG5hyE/Grpsss/+a5vIshfKkR4Z+ey
         xQOoiiYtsdSuUpoAME5icgqZ+W0D70QsYp/xfzz0xF7a+ArKpIDzfGZJvu7X8vRXe9J1
         PfAoLJ8NNomN/7Y+cQi/1v5rdidgZ7x22ZF567hO41sMYODijIketGUowZ0NEv5CtRhH
         5AMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=rTQL4XkXA4lgY2SgTC7T9jV6wqf0oZ6by6euCn+gkSk=;
        b=FeZIYFLZnr/egMSRY1RNNXfkIo9pWY7//msWpoWcG03yLPQp/E7Hh9khyH1gDq0CMw
         jUhYv54kL2f74fop1Msj1zAsDX6fdeWOs7aS5JH8B+BFQWjtWo7l9lIn/1PXpO4nrU0L
         Nm7S+fDYF5QELrFqJUstnBVCNF8gEfGTfda4MOH0l1IKh6/jzwSJsrBtYgywx0IO1FFh
         ymZXY6VXZ/GmlmZMVf3mTwCcVuX6efBdytJN4kNA4XDdmvoRbAhE0F6LedNptXXVucYh
         tZPyD5nHhnUygNIIElr9ZkpSGXC2TRHiJkCzULGfCJpc5zrv4fbBG/IYvh2eYnWv64Lx
         kHwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HYZJN5nQ;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rTQL4XkXA4lgY2SgTC7T9jV6wqf0oZ6by6euCn+gkSk=;
        b=ErsdJsTUIIDj7gmeT2DnZiJ0ULhUMiwfBlMZcLIu1Jc179Cuju5N4yQM1VVhNHFgml
         /GACysl1m5ONRJ/HXwycaDzN4ZbXWhRFO4d2MJzJJHoaulBYMNrKotJkZVm8AqFuokYf
         ieoIJdUkB4f1xWHw6kq1KioK6/SS/kNK9eBoH/JSMddYjY/9hGVv4NROEiJKyp1fM4Jo
         DX0n7otietE3u6fuNKMqk8jTxIYjqDSd+0Xx+WtRM8Za4i+2phvjP2Kuhe2lgcl+HU0u
         O3s+hGR2AXmpRvjsppIWaigQhX+/cvap4JXO/j97U7+Q1w0KTR/DZTF9OMx/5zObozR4
         2kEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rTQL4XkXA4lgY2SgTC7T9jV6wqf0oZ6by6euCn+gkSk=;
        b=J1xjrbgLIxPx0bGXRh4IYS8HX4lk85KShXb5ZfLoN/MGod/DyteQ5vHkJugilCEvQ9
         wvnfxOedqzY3mUsqFjJa6frG7fH+6AvPdwfuD3tIQwSDbO/jsYbnujcvqzV+StIrTf3e
         zMVQykFCQ8rUGXUw2tV08px+qp+KBsDvL7X3lGH7KBBKjvhsWDU2qsnO2Ft5JLgYtHut
         W+WcOoH4DSIkHH5IqCf2pHGE5AAKDnhRVVU0RQnc6UCVIUqy7AN/vRnIxQ9WnvHustuV
         DcW/6LM7LpGDxi6F0rGpeQtJJ+eqClg2RQhdxGHuQ+wP94oxlqrWaxv4Izv+Q5oW/t0y
         oBBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rTQL4XkXA4lgY2SgTC7T9jV6wqf0oZ6by6euCn+gkSk=;
        b=SBaMoM2OCX7bZaAgHrKZl72sbrrJUQnCVlLP5uB1Fge80GMjTzKeqToY3sMvHfRBDN
         JvEsB7EQ3/+FhGsW0ErELE+5/ViLjAfhpRi6VGC0mFI4E05LU5DKj8emk0XlWXWb/3OZ
         IN7Z6B68eun25gealOUBniwWa4W4jqGS5RNkGCn6ePDpYMcxVs9bo4vdpCtqykmbPxcn
         pKjFi2427OTJ5CUVkBlqLT/K5qsqxQ7gSLqyFdP3jSHp1naflMcUUE8jH+SnAIUHNofb
         WNLlB6QnYR+HgqjEa+26qigYuEUknlHPLTLX0gkjhBUav7KCTlhPUAHNqivo1lKlas/E
         i6sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321CqiiOn10KuJgtaGKEFzOTGyXfX3l/BakG2h/7anA0fkjHelY
	b5O7UneVYyNYcpe2Nidf9ew=
X-Google-Smtp-Source: ABdhPJxhNN8RqMt642na4e1blCdGWReOs7eHNy40IKjEKXfN21eKwBV2s/qVXYZPRdtw5zYdP++xqw==
X-Received: by 2002:a17:902:c94a:b0:141:fdaa:59ac with SMTP id i10-20020a170902c94a00b00141fdaa59acmr1201063pla.37.1637624002489;
        Mon, 22 Nov 2021 15:33:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:cce:: with SMTP id b14ls1361428pfv.4.gmail; Mon, 22
 Nov 2021 15:33:21 -0800 (PST)
X-Received: by 2002:a62:b418:0:b0:4a0:3696:dec0 with SMTP id h24-20020a62b418000000b004a03696dec0mr682933pfn.73.1637624001859;
        Mon, 22 Nov 2021 15:33:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637624001; cv=none;
        d=google.com; s=arc-20160816;
        b=hIYFVKmQju5FZ+zC4q9bwKVwDPKwEKpHfR1gZE7IMegXUKW+7o3h2XeDmUz1k34iwH
         POwS/dw/Q0XEJR2t0szzxvx7Qxp/PGCyyJkXsccS9BJmUQ1w5PYkm+XGsLmcJTCuc06N
         OMUC1uUc9iXayDpXG0ixefUkzB8VdXcBsuItfiz31e+XNy1kCmRqw/Bq7tZq1LomgRsK
         xd+dQ3Vw13JoZ/NO8jF0he9hw0hMtVkrBHJheqyQXAO99j/xNhE1bQK9ISkpf/OZWcxy
         a0svDIt5QKg25vzJwDqb/rNtHOnb2/zuZb0uChl9cuE7aSDHauQyazyoTSZG94OqNozF
         LOUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+v7bjTJ4Q3k72mUckY/vna9r5hdbnIr+w4bsRguwuxg=;
        b=uL+2w5lgS2I2ua1CpH2fUD0ijcs1RbGrxsoetysRLuU9icIFjaSOYJSa6y9EAIDpQ5
         ev7tJnijWpg/OaKDvpzKmtKBaQtneYIpAjpkVQEcuugY9Ui4IxLjc0pRqvpsvVy2TD3x
         gphIRM0WDd6xsR85QPYXXBMWTGB0fGCRYdsr6rzBeV6p6EGKVrscCg/pB7K8qaBjx7Vp
         STsIIC+p1My4/D+Kk7GQa44uvVIodkvohXq/mo0YywX+C3uADhnntDXRajO1oz/93Uhh
         RMAnYkCZHPTLF1ZEKK3inoDVRm9PMBy1E1hNKhWfR/4zgVzVuZCgwHhF5tFd8xtLn+LH
         Rm8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HYZJN5nQ;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id v7si790490pfm.6.2021.11.22.15.33.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 15:33:21 -0800 (PST)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id r5so16590106pgi.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Nov 2021 15:33:21 -0800 (PST)
X-Received: by 2002:a63:9d8b:: with SMTP id i133mr571386pgd.125.1637624001644;
        Mon, 22 Nov 2021 15:33:21 -0800 (PST)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yct-z7s--tg8y8t-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:50fd:36ff:fe05:e039])
        by smtp.gmail.com with ESMTPSA id y6sm10195837pfi.154.2021.11.22.15.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 15:33:21 -0800 (PST)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Subject: [RFC PATCH 1/2] pgo: Update .profraw file format to version 7
Date: Tue, 23 Nov 2021 01:33:04 +0200
Message-Id: <20211122233306.155968-2-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211122233306.155968-1-jarmo.tiitto@gmail.com>
References: <20211122233306.155968-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=HYZJN5nQ;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2607:f8b0:4864:20::529
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211122233306.155968-2-jarmo.tiitto%40gmail.com.
