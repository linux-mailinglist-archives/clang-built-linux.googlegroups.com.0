Return-Path: <clang-built-linux+bncBAABBTHI4D6AKGQE7GI3WBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1E929B309
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 15:53:01 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id f15sf1058714pfj.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 07:53:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603810380; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rc9TSOdq9H6GJZlBgflAFIuaB4One5lMHFfO1SA7D0tTSY9m26H3cP636phy7MZs5w
         YD38xKLrWCjgxe5xMsEL7wsDmoGtf11xFcknzjGFoGVNAesifwTjeZRhyil7TI/taam1
         3UCittV+kZcetluqTHBq8MKqENmqKgSmrSgBhQN7wQcq4wRDG5nTdTKgwcMQbsk72V0V
         eupajQy4aH2cLkc+Akr/hLG8eNDhJbl5N9Bgds2ANjmMNnnvba4xYll12YlxizAgAwv7
         wtb+U8tqIdn4rocrfUtDlo3cJdb6deGj8OFF/xKfZ/dS/dqfSbLhi9YuRvrCc85GXKF1
         x6aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=rZFzKlyqd5p6fQC0Vn5ERk/uFDSJ3wQTwb2sNbKt5qM=;
        b=cuhrM3GWPFlt817vR7ni0uRrZS/EBeIN4ihqmyd70LC74JEr3WE2bJeauFV0MC2ipS
         kqhEBbCdaD8YG2nSiAzxh+GYg5tyaKhzvg84iENjIfNm3/PMF8Pjm1vQdgwC4askNVZu
         5DUp4Mjw16NDDk2EzxM1jN8qvuxsRF6/841xXi3wgR7zwJZKKl8xCWxHW35KJMt0wvUH
         DWLlUHif74nDdddwhpOF3SgzuhnfhLIcCyoOy2OQ7H0MYFSBqMwBzKbDtLv4H7Jbardl
         cbjbQvLMRBhIHiKpUzgrIQbuFLq8smq+eDJsrxdxyrUPyNQaZgZKttXb/7fqsfkpO81b
         Aotg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vWHtUIU3;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rZFzKlyqd5p6fQC0Vn5ERk/uFDSJ3wQTwb2sNbKt5qM=;
        b=kkegcNjsREqTutOchupEvb/C8K3qcCv/B3XvqGUT3huNLg+jlVKIE4/lkZPb2IYzGA
         suVTf53XtHJiqoN+11N9ePwyAXGs5eQrw0h7DZOyVmH3YsSJCCiNTauNRhGx4xi9hr6r
         z4Q6/2Xb304e4wiGi5yTTrOghYaBITKaukjR0iGqvYfOuMiEgxmkExdEoaDCAPjHVLwO
         Fw0ZWOIegINmNTCZ+oN2UIvN/YCseVBUSXlBaaMUx1DlLEUAS6egruKUuLF6gnvMZTux
         LtK8M0PG3WyEvYoLpUYsm5xPeSdQXlcSQs8MTM/kXWLa+l42UPDORkr/g5aHak9PfNAV
         zelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rZFzKlyqd5p6fQC0Vn5ERk/uFDSJ3wQTwb2sNbKt5qM=;
        b=EgjtUmlUscNWFpkK5I70z1WmmGEkg6hoDsGzSh3GyP/q6RPamKesphDMu0t5zH9U1O
         Lw0TvYIAzEVATz8r7E+w+mjZzncS2lOkr1TBa/zi+b91SVqJc8B09xQmWRLVdwmoOpiS
         OiTus8HyGOcQUQ1Pv0vusT0XGjjTxQI/kQj8U2o8++JBSjgAT8vvhLVKhQiUPvt+kFm5
         AxfQWD5ZVJudDovzZ1md0UfUstnZ1pmhuUnnS8J8yebXODb5B1reAM57Jxx5/wegqOu0
         doFmXAoLX6IdMUv6PYtnJ4Hhfs0o5m5cpNsLZkE87xHiZCOw7DyEM/LO00EzChW6cERB
         XG7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wCwsoeBgAlNSNzSbAiAO7RVOlfgxnmTZ5J5waAvQaBnK6/m08
	sxrTxrqTODSTZTSESD4HKko=
X-Google-Smtp-Source: ABdhPJxpuuabJA15ewpCQynv6UYGrFyLPrN+3iY6HPA+xQabcGjJOIRcEh5OkquGH1/TCqqiYi0dMQ==
X-Received: by 2002:a17:902:342:b029:d5:ab9e:19ce with SMTP id 60-20020a1709020342b02900d5ab9e19cemr2749671pld.48.1603810380585;
        Tue, 27 Oct 2020 07:53:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d8d:: with SMTP id y135ls698089pfc.3.gmail; Tue, 27 Oct
 2020 07:53:00 -0700 (PDT)
X-Received: by 2002:a63:1d0d:: with SMTP id d13mr2282113pgd.269.1603810380005;
        Tue, 27 Oct 2020 07:53:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603810380; cv=none;
        d=google.com; s=arc-20160816;
        b=sDUI/CKGF0Z801LGcjmwvds+tczKEGgHkDbXi/rxfonMg46xX/WVLG74nfO6ghb232
         aSjIKIWxtw5KC1S0B5m4dm9LKnGiFybR1pN9CuBMT7a1q3WJyUE5I2zSPquGLZI2qoWe
         nZd1GjDcEgdlQD1tAftTkZnO3Ov/zC6uTiYZ91++gn9//+G5iDDkwMN3BIlZ1KYqiXjY
         Hz9hX60LZb+1GI3BpJv4fAX/XQlat5TG9vG40CdwzFKC1oxLvrXRM2g8lRRF2mVsA8kY
         3EQIsbAn2wEhR/Crh3z33/8++WCYjbRuWzN1/s2R/CR1ujRzZO5RoCncm5Neh+w4r5nf
         AdIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wQoyzYGG+4KbPuRo1kXj28jpCTRklDSLL6a9T9NJXE8=;
        b=bW1oZBjbEW7+CzkLVMk119LSr/pOSy0k3MmRiVjA7uCJCBT4wdlNxRKFegQ7xW7+Fr
         pt+cd+3qCbZXb+GLv/JiWoZI/705Yx+jaoJt133uabfqRca640Gb1n6ab3I7URMynCxQ
         5rfOUhCamdSwFnVRh2HVHlOH2iGU0tpbW5o+ffZeXxpu4NezXBdfWBhhlKIPgUaTIkfx
         /Cdt5WasJYwQ39Pb5M4AGexCXlCXmdm7E9HgA5mojXbz4kjTBXEI8gS6rF1MbQmeTR6B
         4GFWPTCEuEKdmrdoH19Hi2ME5kMkX04kZPVC/nEEHocrYWny6XaFmpcBas855wokimh5
         hQUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vWHtUIU3;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l7si119643plt.3.2020.10.27.07.52.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 07:52:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7D8B322265;
	Tue, 27 Oct 2020 14:52:56 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Christoph Hellwig <hch@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jan Kara <jack@suse.cz>,
	Amir Goldstein <amir73il@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] seq_file: fix clang warning for NULL pointer arithmetic
Date: Tue, 27 Oct 2020 15:52:23 +0100
Message-Id: <20201027145252.3976138-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vWHtUIU3;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

Clang points out that adding something to NULL is notallowed
in standard C:

fs/kernfs/file.c:127:15: warning: performing pointer arithmetic on a
null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                return NULL + !*ppos;
                       ~~~~ ^
fs/seq_file.c:529:14: warning: performing pointer arithmetic on a
null pointer has undefined behavior [-Wnull-pointer-arithmetic]
        return NULL + (*pos == 0);

Rephrase the code to be extra explicit about the valid, giving
them named SEQ_OPEN_EOF and SEQ_OPEN_SINGLE definitions.
The instance in kernfs was copied from single_start, so fix both
at once.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Fixes: c2b19daf6760 ("sysfs, kernfs: prepare read path for kernfs")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: add the named macros after Christoph Hellwig pointed out
that my original logic was too ugly.
Suggestions for better names welcome
---
 fs/kernfs/file.c         | 8 ++++----
 fs/seq_file.c            | 4 ++--
 include/linux/seq_file.h | 3 +++
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/fs/kernfs/file.c b/fs/kernfs/file.c
index f277d023ebcd..eafeb8bf4fe4 100644
--- a/fs/kernfs/file.c
+++ b/fs/kernfs/file.c
@@ -121,10 +121,10 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
 		return next;
 	} else {
 		/*
-		 * The same behavior and code as single_open().  Returns
-		 * !NULL if pos is at the beginning; otherwise, NULL.
+		 * The same behavior and code as single_open().  Continues
+		 * if pos is at the beginning; otherwise, EOF.
 		 */
-		return NULL + !*ppos;
+		return *ppos ? SEQ_OPEN_SINGLE : SEQ_OPEN_EOF;
 	}
 }
 
@@ -145,7 +145,7 @@ static void *kernfs_seq_next(struct seq_file *sf, void *v, loff_t *ppos)
 		 * terminate after the initial read.
 		 */
 		++*ppos;
-		return NULL;
+		return SEQ_OPEN_EOF;
 	}
 }
 
diff --git a/fs/seq_file.c b/fs/seq_file.c
index 31219c1db17d..203cd86136ad 100644
--- a/fs/seq_file.c
+++ b/fs/seq_file.c
@@ -526,13 +526,13 @@ EXPORT_SYMBOL(seq_dentry);
 
 static void *single_start(struct seq_file *p, loff_t *pos)
 {
-	return NULL + (*pos == 0);
+	return *pos == 0 ? SEQ_OPEN_SINGLE : SEQ_OPEN_EOF;
 }
 
 static void *single_next(struct seq_file *p, void *v, loff_t *pos)
 {
 	++*pos;
-	return NULL;
+	return SEQ_OPEN_EOF;
 }
 
 static void single_stop(struct seq_file *p, void *v)
diff --git a/include/linux/seq_file.h b/include/linux/seq_file.h
index 813614d4b71f..26f0758b6551 100644
--- a/include/linux/seq_file.h
+++ b/include/linux/seq_file.h
@@ -37,6 +37,9 @@ struct seq_operations {
 
 #define SEQ_SKIP 1
 
+#define SEQ_OPEN_EOF	(void *)0
+#define SEQ_OPEN_SINGLE	(void *)1
+
 /**
  * seq_has_overflowed - check if the buffer has overflowed
  * @m: the seq_file handle
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027145252.3976138-1-arnd%40kernel.org.
