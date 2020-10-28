Return-Path: <clang-built-linux+bncBAABBS4U436AKGQEGYSSQTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CFF29D091
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 16:12:12 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id w192sf2344001oie.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 08:12:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603897931; cv=pass;
        d=google.com; s=arc-20160816;
        b=AS2BoCpITT3PY2Q9lLKXqPikpnpvyXwyBv0xVvDrgRkrFE+M6eNb0zyvx9SB7PwsaB
         W3o1Z8KpbS/AB/vdQpdHJORpgQWn6qgXb75DUiRxGI4qtMUhNxfCbV+H9ZVWQ/WbRQ9e
         RXCWh3hD+EdI2XS2n8FW0y3XC0P7ogvwx+2ea7ivR5uKqDohkBWzvrjIv7zBVOf208XT
         xFT2H74t7vo0G/TV4x07os0CsD6rUJVEK4d2IWq38a3dVKOCu35shGs5hpr+LGtKhuxX
         0Je9M4YHnOrrokm+Aw6BjHAQKeNqSFUqqomfx+rR3k/vaIZQveGjvkmiNJjkcNdOLYFT
         I6uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=1vsLBWqJ92wN6f97Hm3p3Erjie+C3TF+nr0Zacer6cU=;
        b=Mjva4vpxuXYYBHJfw6aKo7TYmW8HnbnpVPyqoFfWM4TGsr97LvokMH/csDzoYnq6C4
         uT31AVLwPvcTL/u8xETMOV2ukGcLoKcS7faOM7V0jBs/7h/cNkfDXuDIRq59WUtxffsK
         yXInTJ3KEeuq+yseqIjyBEeFmpvXWWwc7nIV5W5EkInCrdOQKCGA1vkjNebQpSIqurPr
         YlAXctg+dv5+YM+o+pLVbdKr8MrzBNYECIfiv4zpjFwUSlCfeiN2KbE+UFM8mkgGHEdD
         Z83E41Pe7595xDY9IxWoNpbpLWX+pOOz/TKFgJevFDL7qEFATXI8RxLCYLWmLyhDTfYV
         TDGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ym3WEmO2;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1vsLBWqJ92wN6f97Hm3p3Erjie+C3TF+nr0Zacer6cU=;
        b=esmqkLANDErm3vwiGHpak4KjbQNBMJ5rSUrvVq4wkBdZPXTo32pnyhCHYCkrKZuIa4
         3SKxqTal0tPDxFiblbeoaSY7gZyo3FNfoMEtSC5Sqrh2kDDq3NYbBWVtld+fFuspiddL
         0F/YmYxKacxT3p4ff4OLtZG6NqcLIjbF66txg8m4uCJvImROs66YHIjqRdyUePT4SbGx
         VJBbgAn+3B8YLfnNYPH5z4DhIa+rZLChsMi2F3Q2iSvS3AjjqLYkH4GMG5IJHGmDNqMw
         671ORCr7sMcq1z2rY/b7AI0/Ci2BDD1JshkJzd49mGPGM3B90FWk9VxPADc4S02Qr2GO
         MP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1vsLBWqJ92wN6f97Hm3p3Erjie+C3TF+nr0Zacer6cU=;
        b=CH620RHrmvVNBjJ3KP1Xhm5f1IYXkK53l6yqiCfKC/7si97OedkkngELFZVitj0PbN
         X6eS+kRZ5LSq8mQNCR54sfl8YErPc0bFUdZOjHly80ZmGRHFqgui4athfllSyBO0zaPz
         1l+o+gI9zGSQIq/9RDcI+owgZV23YF4N/bERA1Zy4XGqgAQF7yqCnIiCJTlklGfDm8qr
         h/fGhIvH+TqlqtZjp8QaAWX2jWnK1s6ULOFQ/wtkSodSAEiNhM++0Z8V7NLEInm4YFaA
         YzyuoZkKnoGFaUDI7ra7VDIxY9CeQH16XE+SVgJEuMte4sTRwCILTK63E8jm+SUxcohg
         d6bQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530c15h+qDq0Cgsv4ToqaSBdPVCPAuZ8akizto/6Fy6RiHKkQE6X
	9AWpMtCHi3tCSbT68AP77CY=
X-Google-Smtp-Source: ABdhPJwK5J9x74z6pTxqdn27/dgrzSCOrW3fsll/5v7rdoAwIwOLEogiXBUC0LFADNwyVujwKrWIpw==
X-Received: by 2002:a9d:1b48:: with SMTP id l66mr5138301otl.349.1603897931542;
        Wed, 28 Oct 2020 08:12:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:13d8:: with SMTP id e24ls1326425otq.11.gmail; Wed,
 28 Oct 2020 08:12:11 -0700 (PDT)
X-Received: by 2002:a05:6830:1694:: with SMTP id k20mr5939673otr.100.1603897931116;
        Wed, 28 Oct 2020 08:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603897931; cv=none;
        d=google.com; s=arc-20160816;
        b=knalOh6AZ6b3TVcx+L5LBWcfF6CKqBFywZ4rtVO1BIe4rb245pXSnNu2lHREYpwWMf
         N5uiJ0q/gpjLVZuLfmrSXOybSi2u4F62novSqis/h57GeOHkpUEQU0nRw/OPbNjw+sbZ
         e/1d/9INrxoKJ/aHqwyOuKNrtRC2IjBW4UbHO+fofz1X85+ZeNAYmZXB69+BNOXlrfdA
         x7C53X0AjFmlNnIO/pJlwjOI5QmO2XxTNdyjDPp81qT64mQ1rruTRkJl5RqLUUlQXtg8
         9nCGlNfSX0hCeaGKOYzB4GAWDcg4Yq+UDyQvKjvC0dCN1I+f8alycOMI7b6rFNTS/LSj
         j15w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RgHxtQ3UzjNGSyxKwFP3bMtOy7fxMY8vk6AAJTgWlsI=;
        b=CgjvOi6X4M9lgmzQU3/ZmPBtso9SAyAOAgrABTIghlhCg4TM1OgLLVi4KWhURszzdh
         FzbceUthmsHZMyd0TLZBzDFNwlR/W1LjCL78sR/iPT0rHnyK2LyLfXQAXBOXV4wwpjQV
         SdHy1NYwbS7FwdRLtSCBbYhh8YjsbB1CEJazkTLVHZv/ITZkhxyOeR+NEKVE8X0jJdPn
         V5tUupiBBWdtAhDkKKECkd4plZjQqvOipu6FJKZvd9GE9D1QPfqkYrTDcAxgyNro+NKO
         nkDJPvFKhunmV+2MKic26LRkxEKUDTCXr1Mmun3CYJ2jiBkQiYfq4HyM3dBUoFGEvIJg
         bV/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ym3WEmO2;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n185si436256oih.3.2020.10.28.08.12.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 08:12:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 00CDA247B2;
	Wed, 28 Oct 2020 15:12:06 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Christoph Hellwig <hch@infradead.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Christoph Hellwig <hch@lst.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Amir Goldstein <amir73il@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v4] seq_file: fix clang warning for NULL pointer arithmetic
Date: Wed, 28 Oct 2020 16:11:36 +0100
Message-Id: <20201028151202.3074398-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ym3WEmO2;       spf=pass
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

Clang points out that adding something to NULL is not allowed in
standard C:

fs/kernfs/file.c:127:15: warning: performing pointer arithmetic on a
null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                return NULL + !*ppos;
                       ~~~~ ^
fs/seq_file.c:529:14: warning: performing pointer arithmetic on a
null pointer has undefined behavior [-Wnull-pointer-arithmetic]
        return NULL + (*pos == 0);

Rephrase the code to be extra explicit about the valid, giving them
named SEQ_OPEN_EOF and SEQ_OPEN_SINGLE definitions.  The instance in
kernfs was copied from single_start, so fix both at once.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Fixes: c2b19daf6760 ("sysfs, kernfs: prepare read path for kernfs")
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: add the named macros after Christoph Hellwig pointed out
    that my original logic was too ugly.

v3: don't overload the NULL return, avoid ?: operator

v4: fix changelog text (Nathan Chancellor), add comment (Christoph
    Hellwig)
---
 fs/kernfs/file.c         | 9 ++++++---
 fs/seq_file.c            | 5 ++++-
 include/linux/seq_file.h | 6 ++++++
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/fs/kernfs/file.c b/fs/kernfs/file.c
index f277d023ebcd..5a5adb03c6df 100644
--- a/fs/kernfs/file.c
+++ b/fs/kernfs/file.c
@@ -121,10 +121,13 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
 		return next;
 	} else {
 		/*
-		 * The same behavior and code as single_open().  Returns
-		 * !NULL if pos is at the beginning; otherwise, NULL.
+		 * The same behavior and code as single_open().  Continues
+		 * if pos is at the beginning; otherwise, NULL.
 		 */
-		return NULL + !*ppos;
+		if (*ppos)
+			return NULL;
+
+		return SEQ_OPEN_SINGLE;
 	}
 }
 
diff --git a/fs/seq_file.c b/fs/seq_file.c
index 31219c1db17d..6b467d769501 100644
--- a/fs/seq_file.c
+++ b/fs/seq_file.c
@@ -526,7 +526,10 @@ EXPORT_SYMBOL(seq_dentry);
 
 static void *single_start(struct seq_file *p, loff_t *pos)
 {
-	return NULL + (*pos == 0);
+	if (*pos)
+	       return NULL;
+
+	return SEQ_OPEN_SINGLE;
 }
 
 static void *single_next(struct seq_file *p, void *v, loff_t *pos)
diff --git a/include/linux/seq_file.h b/include/linux/seq_file.h
index 813614d4b71f..bfa34f5578b9 100644
--- a/include/linux/seq_file.h
+++ b/include/linux/seq_file.h
@@ -37,6 +37,12 @@ struct seq_operations {
 
 #define SEQ_SKIP 1
 
+/*
+ * op->start must return a non-NULL pointer for single_open(),
+ * this is used when we don't care about the specific value.
+ */
+#define SEQ_OPEN_SINGLE (void *)1
+
 /**
  * seq_has_overflowed - check if the buffer has overflowed
  * @m: the seq_file handle
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201028151202.3074398-1-arnd%40kernel.org.
