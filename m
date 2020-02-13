Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB4XMSXZAKGQECLP4GMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 633E115C79E
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:16:51 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id t23sf2288797ljk.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:16:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610611; cv=pass;
        d=google.com; s=arc-20160816;
        b=AhiTS9oGr/MRWIV4jXNDty3lSkljgL2pXxuo/6MTlyy57XYpSlgCNp5LHcqvVNsWnn
         IeDoqG9mJmGxctZEafvX4g3DD53pLsQ3QHQRibq4u4t2hQqoMOYkHavThh6nWY6JLbXY
         esWIu3ackEWpyUb8L9IV7pZmF2PAJl9b/aztkjhPIvQFrhi7VKl6fCbmQJEcTX65eqqR
         APx8mSlzbQu1JlKz9oXVRoZRasni5b0StPLJUJDXo1/GUnsJWUWFFnDrLj/1wmPg38IM
         wBmwhvzzygM/6iIGFiuTZokF4DR/NxuOHqebrgj80S2JdQ9D4ZdRqcFnFonD/tDBpfSU
         OS3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nMEJouf4R8HNv/AEGCuI7/KdscbPhYHUqt7kSsDHXbY=;
        b=ZQOqzw238iVgVMlsV7I9bEmgTrRXtrrgqau4x9mYqF14C8FheyOvxvB4E4XP8znIvt
         2Oy44uSV6rAi+eOC85NjjmDfhqw0i86Wx9Fkr+kNH+kSMWnUECyhNde+wfzCCbaMowQW
         bj6ZWQAlHdHESQ8Sujm0eIaMMTfU6DmbWQ4WaLvpF+AsUsYNVzSfYrFzGnOO2OnRY8P2
         Y4Y5yN/DOw8Hi0BRxYn7wSNpem9RRlYYYQPJ4ZG6wGNl2F982l/fYJgcehroF6H68JWk
         /bKxCWoDBg6g4I8QFoQ3I9QxNq0p/gvNKKOGWs3zhV163uD2rULAMluOY8oryPHPN/PX
         /V9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMEJouf4R8HNv/AEGCuI7/KdscbPhYHUqt7kSsDHXbY=;
        b=oyQNUa7DVjN4EVIgQIC5JfzCxM7U6mBho5BUWDHuN5OyqGWscXdwJmn3FaUEFRk/1T
         F/dOBe3aHJYtIUjvTwPWlmt8T9SGfwj75Pghome/HvyCvi8D1vbslK/KQusYCYWBSu8A
         q8YQsT+Z7K1bwd2QKaeKqwwKgA7xeeLXFFi+I6W3iIC5vYuzpTgZdN4+0Gx3m6XLYi+O
         c+7bhFRO6F9nWxKJjK1MAZswz2fi4Sw9JlNEQJ2XjOxJPPk/4Y+XspUQmokqbeS3TXTx
         uqJ4V04+Rj8RLAsP1raZUgpW/Z6FUywfolz2N3simfcZTWxs7QFIKwD76f6bcGx948tY
         IwcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMEJouf4R8HNv/AEGCuI7/KdscbPhYHUqt7kSsDHXbY=;
        b=QZ9f0RCJRoffO18hcX3PCQBy5fdezCNWoqj7YIJE3ghir1sieFYVhxiduNpmeSzk3u
         UyQQT5e9GDTHl9kiAxndwFU+5n/Nmm+IBAPfPLc8HE8dLaIOeOsQhTYYhFzlGYWKvYcU
         hqxL2ZkUHw0Tp7fXnBGtgvww3kFSFEvnkBg62YjEdxo/hqn2yGmu4QTNA280NQZk9bOq
         CEHtajKYvPc4hptWpdh+4J2Ayv+zdBqzVgCrCin6r8wkGw/SwRSVJINNKaiALMzXHR3G
         syTDSngeSUo/AbPSbSE5yIbblWSi+0HiRePmgvStNrgqxH6Pmotc17Cr/3DtCL5MnyF7
         YKTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWw5lQyOq8xUilOHIlU0mm2H/SADHqyR2wkQdoZMbUqiL1NO/ji
	qa1G0MkPmxWQZkqZQnvOKHE=
X-Google-Smtp-Source: APXvYqz+7WLoH5kgzbzZxpL2PfLYlvBLRk/M3uw8PEK8KBM1pqurrlD5vChoQgoNID4WfIatLFkoHA==
X-Received: by 2002:a05:651c:102c:: with SMTP id w12mr11653261ljm.53.1581610610406;
        Thu, 13 Feb 2020 08:16:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6809:: with SMTP id c9ls4309413lja.1.gmail; Thu, 13 Feb
 2020 08:16:49 -0800 (PST)
X-Received: by 2002:a2e:b4cf:: with SMTP id r15mr11585997ljm.52.1581610609694;
        Thu, 13 Feb 2020 08:16:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610609; cv=none;
        d=google.com; s=arc-20160816;
        b=XEMhbsTR6rcR6qiPeSdBt88mBG8nx3VkZBHZ7RYsl5U8WJBjTSVPuLCTuXRUQdXZwi
         KCSB6Hje4IO2R7jSuR3pg7KcTcX82pC7/BDLr7z1Ca6HrcKMdBS573EfcJGyCgWsmh7Q
         EQVM4Wu0NfqmPWfXET2jlhOadxwfLNhmrHI7/9Iu8IroXXsaQGib5QcIyftV4pQZvwLf
         olE59OchjejvsYTi36R4t3rQuqepMNmSN8mxCbXMCEOitnuCTLObL38tvPvXQbhBVuxP
         yAtkPQ+dGEAqhB2j6KBmikSTbhWJaQkezHTx+CwTP0C1WyBvfEscgj1GGVCR2WEVFUX/
         +qbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tbY0hIwMdHW6S4zydfOo6/6VnKgteaI9qv+4j+THMJc=;
        b=ECm759wlM3GlvNFTT9GqLKzyDwqlQV9nmBvajnE4QcZGjoewo2rjdEO5STH5Mzhmq8
         sDyOuSZq0Agy9AJ67jrQgV0RNc+xlWpVanCI72uUf+VucbyNrzz/hqaHEwAAewTvslxw
         c/sgT5H/7WdJL8uMe5UX4KF4b7LFBjs55zXgVQY2BF7sZ04dY3CpjI7u8ZNXSfm49Ej9
         Bx7fULC0w4wSBC5WBASizN0xQQ1zCeL1UZnkzdJsQOJs2x6skP8Ski4ux+BrIyYxgpEb
         yfBx1/89TmFnn6uFKoJY+K4gdBGVrEONe5CYBejo4C5VNNTut0BaMGsI+AparHpSAVQP
         rKWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a11si145637lff.0.2020.02.13.08.16.49
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:16:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 680AC1063;
	Thu, 13 Feb 2020 08:16:48 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB9DD3F6CF;
	Thu, 13 Feb 2020 08:16:45 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 02/19] linux/bits.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:15:57 +0000
Message-Id: <20200213161614.23246-3-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Split bits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/bits.h | 9 +++++++++
 include/linux/bits.h  | 2 +-
 2 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 include/common/bits.h

diff --git a/include/common/bits.h b/include/common/bits.h
new file mode 100644
index 000000000000..6da493992e52
--- /dev/null
+++ b/include/common/bits.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_BITS_H
+#define __COMMON_BITS_H
+
+#include <common/const.h>
+
+#define BIT(nr)			(UL(1) << (nr))
+
+#endif	/* __COMMON_BITS_H */
diff --git a/include/linux/bits.h b/include/linux/bits.h
index 669d69441a62..aeb76fede77a 100644
--- a/include/linux/bits.h
+++ b/include/linux/bits.h
@@ -3,9 +3,9 @@
 #define __LINUX_BITS_H
 
 #include <linux/const.h>
+#include <common/bits.h>
 #include <asm/bitsperlong.h>
 
-#define BIT(nr)			(UL(1) << (nr))
 #define BIT_ULL(nr)		(ULL(1) << (nr))
 #define BIT_MASK(nr)		(UL(1) << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-3-vincenzo.frascino%40arm.com.
