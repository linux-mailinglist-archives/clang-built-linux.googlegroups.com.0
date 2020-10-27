Return-Path: <clang-built-linux+bncBAABB3NZ4L6AKGQEBSTM5WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A8329CBE6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 23:19:26 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id 65sf679042otv.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 15:19:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603837165; cv=pass;
        d=google.com; s=arc-20160816;
        b=cEYL4L0UB0S3PZYcjMRAG6jcMkgSwVEHXEVzePDS2d+c27kMXRj47C43nSuDIyZU9O
         7LFmAAAwdaAuV1y3zLGMcNbJECSe2uCbcv4JZxMGpvKFvUVmulKNxPlBbW7b1f38MOBH
         V3bq09497yp4b8C4XFOI95/vQskeR9NERYQg1pbxCiTEkojBX52DC6PNALBZkX1YBA3r
         +glKtGDsO5SnTB9rTPwNgZNjiTfZtkDqjsbW1d6WClj1xYHVDg020qBQfdbE+d8Rrlrm
         fRvfyqBN5r5j7Clk5s/EQq6d6A9votWj13n36A9mZGAqdlGfX85OZySKTem6jHrMarE9
         SAHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=SNXsbiTyWLR8CoViOSS+Rl9TqN497uzyB8bDKFT77XA=;
        b=AW77qVIJ3h8W7I7N0u1FgXxiqwEg8vU/2SO4KNqBslSkr/50MEjGDGuc+qXNH0ikXb
         LtQUlfgmSclYwa62Lis/wCgt64llNw6azxQcS1F5u1nvTcLrg3LGxznRYZflypxJ5Fb1
         l8b/SqxkXhhGWxMlZ1C/+v9kbYY4aLauPywb2vSXIb6Xho/xIkbv5JZ1F5i1/eV1gt+i
         SZ3MY4aBQMN/QBu+1IsYS/C4DGRe7eiQHPgFakCANykcYWWa4MappaThz6UlIkV1i93p
         ypkhphmUiaXTgMVduiT+EfWBbJ7e+FLVtSrEElsu/euyKwQESE6iK+cu6k5jlGyCDmaf
         Xl4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=R+yq+59v;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SNXsbiTyWLR8CoViOSS+Rl9TqN497uzyB8bDKFT77XA=;
        b=Yf8JUtCNv0lNSlaE/OZFr3OByrP9Q/Cm3y8civZ34b3knTU5FM5pKWo6Hk4lh/KTjJ
         rbA+1Auv2Ii4Sb3gX0w07A9QVXWP9/kWdafRNVf1k7t2Wdeut1nY9Y3edpQBJMgb0T1B
         C0ozAzLSqCkbx05a0SoWfOqDmrZOgUkEqr0sd9IqK0s4C2eabZ0wjqxJi/D5wPY15rEf
         aWgl3DwbPmqwCBYAW9dphB2QdlER40+enECTD5JwvzQD3HxLbjo/ZgGbmseMl+KCPQpg
         tYb65J8IKRRW72+iYMOIz8osv39gnJ4xdYnoYdA5wwedQnuIZn/2I37e3eDpxJObBx5X
         rXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SNXsbiTyWLR8CoViOSS+Rl9TqN497uzyB8bDKFT77XA=;
        b=bS8yuAPSTnXgmsE4KvNfHZMT36+Yzclkc8gvAZZap11cM7ijt03trbNXjPclAGJ+fo
         88o/acflyTdRvzyrOqUx6+IhjWYLgNLrbBruKCv9Y7lwnjpXdep8RGzJqC11TWXrpI31
         ibUp/xfRS6bbWmz8KpenUpeaUdW9MErBhwf7CeYvyTJLPTBg60AT6HT8E20uxTfnnLmf
         eHAtWp6IexcYqHe4NAD0P9qEm4pfZHaDNC8jjOa5h1h99YR2jVgTl8T0tLQ35D7xJIwX
         ob18q3zIp2jUJBXFjFhd/D4fyfsokOgVhkcILG1pBB0OJQQPN0vW488PqJQG/OCjZZ1H
         V03A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Z5cF+PMoZQnFAA018K94yD2Z+Fv0IxSSVHkvDb3thLZMmB6iY
	4RpmPAY3akLXOLxxm+ccBPg=
X-Google-Smtp-Source: ABdhPJw4KMZmaANGWNeKuKNG8ZLnPeUdulto9m9dMcqliZfOYDlch9JVS+mv01TpMdsFk+xbV958Uw==
X-Received: by 2002:a9d:734f:: with SMTP id l15mr3195174otk.260.1603837165812;
        Tue, 27 Oct 2020 15:19:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls845310oie.2.gmail; Tue, 27 Oct
 2020 15:19:25 -0700 (PDT)
X-Received: by 2002:aca:f10b:: with SMTP id p11mr3209997oih.72.1603837165578;
        Tue, 27 Oct 2020 15:19:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603837165; cv=none;
        d=google.com; s=arc-20160816;
        b=b8yiav3L/c0hs1iLsjVOYmpCECILZ4GXHw/3CaCV3z6ZwzaKQN13OppBEo+oI2OXgI
         9tEu5lHC9s6P2jrst1lhPkYL554BZUtVPNjDwYbQYTmGUeNLozwGannLlQL1E/oxTs5S
         p+/s/Tx9/9bLnGaD7c+3bbjQ70J9QNWmvakru030kICxpxuoA0JYSP7q+WpSK2rvssBO
         fTjD38ja4TCh3aPENeDD58IWmy+kdiW58WjZK9Bjp0Fj55QoXbg4Vg494PHpe4ARH3Uw
         BmQEz2UX7l5qkHNHc4p7uYE2dJYo4+ZNSeGbFByyahodUkGNm6A0R8gZsHugnLm/H9wD
         /knQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=boriP+oEHmZANv3lT3NC9LiqiLic8XURuq5+XUwUTCA=;
        b=WOkqIl7lYCaNvvGAR5+DE4lFvzkqyftrGCaLfBYFAakRRyMPmXQ29yUCblcmvMWS6X
         MuzTTXOGimMoFwL/53Vtky6UI8FMSooyVAuLVuG4cJVRB6CM30x+obOx/7r3sy2SDIuG
         csdIU6Y/1xd1R/izR3wimRaZbjjEjNVcjNfwdKACvoMWFmbeTBG3hBu75Ol2lDKbY4Xc
         WTO+w7SFG++FeAadLvWtwPAg3cX+czUb6dZCIqh9yHyLAOaOprAWpTvxLrpvxvsC+zgY
         KX2RGcz+bovbN4SBT+ecie2k4efPtG0BbFKMqG/If4rWiGaPaT6JcFA/8F/vTRtCO9cw
         i0/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=R+yq+59v;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p17si279532oot.0.2020.10.27.15.19.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 15:19:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 14B4E221FB;
	Tue, 27 Oct 2020 22:19:21 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Christoph Hellwig <hch@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3] seq_file: fix clang warning for NULL pointer arithmetic
Date: Tue, 27 Oct 2020 23:18:24 +0100
Message-Id: <20201027221916.463235-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=R+yq+59v;       spf=pass
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

v3: don't overload the NULL return, avoid ?: operator
---
 fs/kernfs/file.c         | 9 ++++++---
 fs/seq_file.c            | 5 ++++-
 include/linux/seq_file.h | 2 ++
 3 files changed, 12 insertions(+), 4 deletions(-)

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
index 813614d4b71f..eb344448d4da 100644
--- a/include/linux/seq_file.h
+++ b/include/linux/seq_file.h
@@ -37,6 +37,8 @@ struct seq_operations {
 
 #define SEQ_SKIP 1
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027221916.463235-1-arnd%40kernel.org.
