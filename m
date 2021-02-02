Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBYP34WAAMGQEXRE43OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6449030C5AC
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 17:29:23 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id i11sf17660651qkn.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 08:29:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612283362; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/etUMqRby9maHvYTeX6ynzAzXZrRxmgqtjM6EBkOhwalB3dCySIpAdA2P4tpvMHoU
         xD2ovAqDxVVSFlorar960X9Vgx0K0hNNSFL6KRJ8Jt7GaZEgBEohnJJyvXCJZzc1YB9F
         2EA82EWki1SPGfVTgFuRwpyp9esTP+Za/9O1xTf/1+Zdhqsm1oYBEzTu8UvqUKNJjHxn
         tDmuWa6PJAwskhgyvTIQ3smkzmn0HWzpToxqkd8n8orz4+RZQzRK4j3SIBCOp9SazYN5
         SWxXBQKiWmIcJugQ9vdLFx2pDGZp/tdsyeRc3POk0n4VPkF3kwbsvWXrlmLM0tOWDPdG
         2ggg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=0onSffqBoo9kku//pcmZVYy9fOpjF1IwvVuV3ehRBo0=;
        b=sg7j6TEtWQCEC43lBf33+CvtvB52NwHmjd4sS/ZZLgfL56+V+zIK7cc4zV+zZd5iSk
         cqmBwn0PgeBVlFoex5++o4M2T3UCPuUu9l17WbNVPO2f2EEL2jw+KCO9ZXzSUmcZPh6R
         05ohBiCof2g5gGcDyuRaoTBNMM43zIyxQ2nHQlHK9osQfDtswChr7MqSS8ufz6R5Ckhl
         5TZfm+x72/Gj7O7Fckp80N1jSkFwO+ZPU643Qn56MBKmzQ8hG9LXhwUDUZi8oPmGHdtX
         /B+AvSYxOIlAP3enY3gCndKDd3ppZWMxxbUHStbpxs3xJZweuiOnkuqv4RN+uYqdFapx
         S23Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vaTAaaqv;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0onSffqBoo9kku//pcmZVYy9fOpjF1IwvVuV3ehRBo0=;
        b=Z6M4ZycnKNYSn9MiWnGpLMlXx1rI4UVwmh8E92gGL3EIn9YsIXU3wZgbfouQ55V26D
         m4D2drkiFpkV/+BTJdXgkC0h1CxFl82LR86CIadxiEM/5E+QX4WTnwPIRqwmM4eCivsF
         7pSgJ+eJaSWn9MOBO8SwdETdaWXGCb+7ge7Mq93r0k7UYUuzDgRuC61cZfVFaeM7IeZZ
         jccKWtTVutp91ibm0QEUUFaQHiw/ScKpLwxZZuY5LXljeGocJtbWZfvwYW/IxQQZX+01
         EASfhWKxtpMK5JRdeDHEXuMYQNGnk7i4E7p0NMpJ+g/KQiJmzzdfpr8Htzejwq8kHj/m
         lmuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0onSffqBoo9kku//pcmZVYy9fOpjF1IwvVuV3ehRBo0=;
        b=WfFg+R5wucLmG4p9+PgLSbCC1rfj2hUmKlHK1JUCQJQtOHPIkAMt43iEd00hvjuo3Y
         +F/ujd5lyKhL34uxd8WQQd04TNnoenkT2Lc3goIX5aI22nm1TCPET2LnPO4vKKhLRi3c
         8zOywQS2o/i8qXUu6VdWqcBlRGwRDOAwUW3J4NBWjzU4RsEbJioR0m5i9QhsmLVK5QIe
         mXranRsSKU3m6FERIzVs1ov3SJn7ZPGzg7zbO7QAooDbLr9Oo+3XphHlSxEouh+i3s53
         SonZIBmnVH4KcAt9Tp0rLJAl5sEZFdWbmM4AH57l99hhVIdXCYHrD5If+jroYLjoqFj4
         hydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0onSffqBoo9kku//pcmZVYy9fOpjF1IwvVuV3ehRBo0=;
        b=dWvj8oePI1pw5EH52ZElB9Yj28GxQaahGxdKhroXl41RIXOJLqonvTDrWn8IH02zeD
         ydSzEcCPnbo+7iMb5gF16cMXD6pUtaunMEtuY06X5WHYCr6l7XMm+NTN8DjzV3J2v/dZ
         YnpFzHMdAHQ+UKPbyFUj3JAeRzXpT4qC4cmImjJJBygWpH0qwXmc6tLAiNi4luxvb7EE
         QtgUyNFLoJce8/iqvycOylurljw/pubVuP/QED0Ftgdahu85GMliY9HObkPQ2ysdpdlc
         08jihCoorLiCWbQMDJRuRrR44yxsfu1u86a3bwSTHDEtNUMJv2/7TMYQmyMWTpbRejf8
         VcbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325kmiISsyePQRKGzuUjOOddozwUaUnbV8xLjZL2keM8V4H7mX5
	YPrcKPXlM6nsbzDZtjMsW5o=
X-Google-Smtp-Source: ABdhPJyUdTFiPIMCUAjlhGeuxKlnMqKxmhBREc8nwIAiNPvQIyfZmXwk/psQyV4E5nWvt+00U5XW+w==
X-Received: by 2002:a37:4b04:: with SMTP id y4mr11951163qka.169.1612283362026;
        Tue, 02 Feb 2021 08:29:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e904:: with SMTP id x4ls10393812qkf.6.gmail; Tue, 02 Feb
 2021 08:29:21 -0800 (PST)
X-Received: by 2002:a05:620a:2ed:: with SMTP id a13mr22410871qko.226.1612283361717;
        Tue, 02 Feb 2021 08:29:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612283361; cv=none;
        d=google.com; s=arc-20160816;
        b=pVCm9J8tO6RPao/45Zm7pOzDGZdzSGbeIJN+tisOTGxJdyv+4wFeulFGVTFrtkOZux
         fo7kYVdzp5KMD2wutFxZ5JBvvBRGYD1acSolPRKdLVMdIwfvbVYOUE/I/tK9lPh0yzDX
         Ix2YYDr8r96wkeBiXU6PJVtHVe7rsgCsfwZaIhtHqiR5U5hEkuxH7tH77e8c6X51vtOp
         F+B3ARKohHJveJyuVr1sbeo5bKvRjiWXcLsuSAwesfcLIv2c2xoRrWiciTbMbNSnx+uv
         VGZMIZ6R4Z0cWD3i+AEYm7UUg15BnaFkqAdNgP9ynu4zkKsiKMFtfmDwMArWTiA0G/RP
         v5LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=acTr1665vWrpkNtr60MLNyhztGeZCGtXmoVAckbTx+Y=;
        b=jNJy0wlaaxu8N/0eVFptkDHhQsle2GL+v/D5rfM0OwhDBp9oB9ZgSBFZ6EtRS0qLqN
         rR4Jcr4/tqmm8THA0m1yXovQBoJ227p2QXe8d28Y/hdG/2cOvI9xp11tGnTYB3bR1qjz
         1DJMGBWUAFyWHVIYuAwq8qI31M1Sn/x8HrSeK4AkqgaryD/xeAewy6Z3h7E242qOKvoI
         LD5u6LI6oqoiDId6b8pkFJMyLBYqj1M4KIucWmbxIPhdjktFtON6CW3dEbhV7SimW5+O
         iWCuY1iGTnK0fj6Qd4VuYbyH3Fe8lJD4fGv98XTVUWF9aDsaxHBm49X8oqyh2PU2xmvM
         tKig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vaTAaaqv;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id m8si751587qkh.4.2021.02.02.08.29.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 08:29:21 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id y5so19594901ilg.4
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 08:29:21 -0800 (PST)
X-Received: by 2002:a05:6e02:18c9:: with SMTP id s9mr20776364ilu.265.1612283361413;
        Tue, 02 Feb 2021 08:29:21 -0800 (PST)
Received: from llvm-development.us-central1-a.c.llvm-285123.internal (1.45.188.35.bc.googleusercontent.com. [35.188.45.1])
        by smtp.googlemail.com with ESMTPSA id k11sm10844005ilo.8.2021.02.02.08.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 08:29:20 -0800 (PST)
From: Vinicius Tinti <viniciustinti@gmail.com>
To: Theodore Ts'o <tytso@mit.edu>,
	Christoph Hellwig <hch@infradead.org>,
	Andreas Dilger <adilger.kernel@dilger.ca>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Vinicius Tinti <viniciustinti@gmail.com>,
	linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3] ext4: Enable code path when DX_DEBUG is set
Date: Tue,  2 Feb 2021 16:28:37 +0000
Message-Id: <20210202162837.129631-1-viniciustinti@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210202080508.GA3550351@infradead.org>
References: <20210202080508.GA3550351@infradead.org>
MIME-Version: 1.0
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vaTAaaqv;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::135
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
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

Clang with -Wunreachable-code-aggressive is being used to try to find
unreachable code that could cause potential bugs. There is no plan to
enable it by default.

The following code was detected as unreachable:

fs/ext4/namei.c:831:17: warning: code will never be executed
[-Wunreachable-code]
                        unsigned n = count - 1;
                                     ^~~~~
fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
explicitly dead
                if (0) { // linear search cross check
                    ^
                    /* DISABLES CODE */ ( )

This has been present since commit ac27a0ec112a ("[PATCH] ext4: initial
copy of files from ext3") and fs/ext3 had it present at the beginning of
git history. It has not been changed since.

This patch moves the code to a new function `htree_rep_invariant_check`
which only performs the check when DX_DEBUG is set. This allows the
function to be used in other parts of the code.

Suggestions from: Andreas, Christoph, Nathan, Nick and Ted.

Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>
---
 fs/ext4/namei.c | 38 ++++++++++++++++++++++++--------------
 1 file changed, 24 insertions(+), 14 deletions(-)

diff --git a/fs/ext4/namei.c b/fs/ext4/namei.c
index cf652ba3e74d..a6e28b4b5a95 100644
--- a/fs/ext4/namei.c
+++ b/fs/ext4/namei.c
@@ -731,6 +731,29 @@ struct stats dx_show_entries(struct dx_hash_info *hinfo, struct inode *dir,
 		       (space/bcount)*100/blocksize);
 	return (struct stats) { names, space, bcount};
 }
+
+/*
+ * Linear search cross check
+ */
+static inline void htree_rep_invariant_check(struct dx_entry *at,
+					     struct dx_entry *target,
+					     u32 hash, unsigned int n)
+{
+	while (n--) {
+		dxtrace(printk(KERN_CONT ","));
+		if (dx_get_hash(++at) > hash) {
+			at--;
+			break;
+		}
+	}
+	ASSERT(at == target - 1);
+}
+#else /* DX_DEBUG */
+static inline void htree_rep_invariant_check(struct dx_entry *at,
+					     struct dx_entry *target,
+					     u32 hash, unsigned int n)
+{
+}
 #endif /* DX_DEBUG */
 
 /*
@@ -827,20 +850,7 @@ dx_probe(struct ext4_filename *fname, struct inode *dir,
 				p = m + 1;
 		}
 
-		if (0) { // linear search cross check
-			unsigned n = count - 1;
-			at = entries;
-			while (n--)
-			{
-				dxtrace(printk(KERN_CONT ","));
-				if (dx_get_hash(++at) > hash)
-				{
-					at--;
-					break;
-				}
-			}
-			ASSERT(at == p - 1);
-		}
+		htree_rep_invariant_check(entries, p, hash, count - 1);
 
 		at = p - 1;
 		dxtrace(printk(KERN_CONT " %x->%u\n",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210202162837.129631-1-viniciustinti%40gmail.com.
