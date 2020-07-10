Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEG2UP4AKGQE2VCF6MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3132221BFD9
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 00:34:57 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 132sf9029388ybg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 15:34:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594420496; cv=pass;
        d=google.com; s=arc-20160816;
        b=0tPJw8Tz3X0ZwKQJLoZPzy+PGySImGlATyllAaJ0ODLE88Jx5AyHX7ppytCeTC/MPm
         uUeGf0jP+/EiPWrIiKZSxVjo+0eY2xcfzEt4qv1lYk0p+DjPvFZruIVurlUnk/lcTYKG
         jAZabRiHPZ7ZmlAtYj5uNwW9VK2f4bUbrcOcSS3hW9nhAUoDrENg8jgcDtmtv0Bqhwh9
         YmNqrCAhnEn5SjfA17kbzdgwvay9YGdinfjjegkqUMZnRKB6brw5hwzzVt74v+zozFmm
         U9iz8NnjFzOs6wxOBGNUexFVTfJa/PmSSZjNNpPtH8aO7kBOHZCVQcKkqvtvgCKFMuHe
         m53w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Cx3VvL0IJVg4ptW8QmMe9yzYvYGw+xIKps/QeS8EGPM=;
        b=lHAKbeosXPnH4l/b+cv629CItQrRztfGoaIa08+UBY/DXbSbw55HshcR5LyqUINheC
         AzEKpTAcoMmxftbI93nemfOxAxmJmnv1avSx1ArQn6MagRjLebm4fRu5LTV6x1hExV88
         +D5g/brhAPpjHKF6B9juuxkpAoEDITQiCCpdu+87c5qlaKsepTxKErGhRmxoS2XG/JjO
         dUshPgnI4eeXSECRCC80/lnJImnJh4dTAuOelCh703ttw2SJH+CBexyDpYv2nOS5XqSm
         vdcA2zTsrgLi71Hyz82F2Gcl1xgfcPR5VU+eRx+6qqxMsqSGppzLoMzO1McQErrVEebT
         0ZRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEu3ivm6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cx3VvL0IJVg4ptW8QmMe9yzYvYGw+xIKps/QeS8EGPM=;
        b=d8Rmi6kp/Hra/99Dtif5dnq4FQLqqVeAjWpDBPTHbM7qq4MHKHklmH6+8pavtFKRRH
         FQg3/dtcvV7tV5cgXWYwip4aEmgbjMvRj9BUQEoPGCUKyrKvBIfaIhK1Pt6orSr8LxAD
         w84VMKV1mH1QGh7sGEEjuWR4362o+uDmy3Ikwg8UsRQHF0VB5KVQrS5S3xrab++y6loB
         IIKTbz/n3LMwuxHKVMs8FVusWmzXH+aScp53TLMsHSgDHWb7GCIiAKg6Giv13JZH8M05
         u1dwSi1fR5RFx5VnriINiwrorChILvoIugLtaCDFFIqpteR4ZshQveMoyEvsmPooxvWV
         fBbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cx3VvL0IJVg4ptW8QmMe9yzYvYGw+xIKps/QeS8EGPM=;
        b=uleQczb8YlwEtrR308h55ilRsMEf7/1UBePA+JVIt1JKob+sOScib/S2LfW1cNnl11
         WuQ30PgQoqN48Bx4iBuczuK4cKROlhghhGABuC2pOcnY8KzaSyQBjbTgzwsqxQTDpcQu
         hFIWtnYjYePVUKGhiXyF+gYDigW+PXjvQXtvdg4hFwxEbskwlmQzcc3rRGK0VKJiEWar
         oYqp/De56V+U/tzc6K3H/CY2209ZyfTJfp4FRaf6O0D1U1rg4yxO5+mULSMKe9N++gaJ
         KPs+dhOdk/XyrEwZihADXJp79jWRD6yQcjhfXs/89d23mSxwkm1Kv3j4eh3KypTOQoO2
         +PHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cx3VvL0IJVg4ptW8QmMe9yzYvYGw+xIKps/QeS8EGPM=;
        b=qgNEmh6vlye+kNXvQRqMso3MtDVOru0E/zY/kSON0zBWJxuqDu0zkAhWw/N/W6XW4b
         nlT208lhfyMcuSvyPsvc8AoO8Hv+ntKB5KE4u9+ed/BA+h3ZAR+qklYPyQaNYKDyPHMi
         Z0pDo5FsKuoW8yw3zFOVyQYXUR5V6XdTlKxQ1C9M9WpvgEllNrDuUA51KIJaBgZtqHia
         2ASs2OiIAxB6KOwd/0JbyxkifIP/6o1GW6jMfMR5cgN2A0cQTGkQT4cahU1rQRE+lE+W
         6xWvMiSGiswyyrJOXSqqJ8+7Gqa2va0blTis6QH+D/2bRhivmx7Hn+wavpoUtNCrc03e
         AQCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mr0rItvAenGib1hBCpzyK7y+WCPmKfbCOrkoKlMHwRLGzP8CF
	vAqVG+BtWq3jIZCFF3Ii8O8=
X-Google-Smtp-Source: ABdhPJzNJV9BVZYpAF+vXJFrf82kuDRn3TXRjuJQ5IvsgQP8V5pe7gGyhtJvSHUOcsRBuHdmnhwwVA==
X-Received: by 2002:a25:38c5:: with SMTP id f188mr118021216yba.332.1594420496131;
        Fri, 10 Jul 2020 15:34:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:500f:: with SMTP id e15ls507527ybb.4.gmail; Fri, 10 Jul
 2020 15:34:55 -0700 (PDT)
X-Received: by 2002:a25:ae88:: with SMTP id b8mr3523637ybj.151.1594420495642;
        Fri, 10 Jul 2020 15:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594420495; cv=none;
        d=google.com; s=arc-20160816;
        b=kKOY2D2IPRrOjCHdLOZSeF7hQc/TxhTlY316pqOFJvpsw+db8pouGCAIrpHVCxqkfy
         uV14zEj4cAftBcfeP/NN6x9Ynas6jzfU5ifA6a9LgVPYj6Nt5fpmLLPkd5AtrLPWwMk6
         VtkHxVD51bqavWnBdppaU0Fb0e6Afo0WBBkxggyI4/CKubgFK/ii2dltSedaFpWaNY9n
         yiobgk+O1jneV1nuupuis2upCvnFnPSZ0YhszjsUG8JtBmBFO7+WeAu9eyLYl9fSOD5s
         FdorQnqmQR4vrdG4eDJUKB25hCzZIAOswsNPRzAKeHObjN31VRb4mUilPqSyzO5C+K2R
         oECA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DivSEld72ml8UTqRFMIcUkbiemFCRo0SWplyKdIEijY=;
        b=KdzCLFf2FQ8bhzdCOJcU+v5TYaUNHg5vhEtueKWJ1wuls9iWdz73ZD1TRnfgMhRLSb
         1OygT0hMmJFIvQd3YyTOco7FzWHswPY+zOXiDQQEiBHYTnSjAkViTcrKLqxyNfYW3eq4
         uhQIBswG5BaExQGuuiAjpmasTLEKIX9q0KDsPIVKGPqg+eVD5RMJVE9QObW9X7zsKQhq
         5dwVzKh+rLuyeMEaohgvrDuYl+p74XtMnTQCZnyKVXiQKDoh+JnGK3yBGNcgeKKeFxDP
         qF6TmFpsmQURG1mJfjw/Jq50cimsfe/UVa1Gm8YRlZmRVvJw+Gb1pXOM9wpWPQ7EklHJ
         +YXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEu3ivm6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id l10si338910ybt.5.2020.07.10.15.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 15:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id d10so2829814pll.3
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 15:34:55 -0700 (PDT)
X-Received: by 2002:a17:902:b694:: with SMTP id c20mr61200519pls.123.1594420494803;
        Fri, 10 Jul 2020 15:34:54 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id u128sm6564079pfu.148.2020.07.10.15.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 15:34:54 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org,
	cesarb@cesarb.eti.br,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] mips: Remove compiler check in unroll macro
Date: Fri, 10 Jul 2020 15:34:41 -0700
Message-Id: <20200710223441.756320-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200709221102.323356-1-cesarb@cesarb.eti.br>
References: <20200709221102.323356-1-cesarb@cesarb.eti.br>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gEu3ivm6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

CONFIG_CC_IS_GCC is undefined when Clang is used, which breaks the build
(see our Travis link below).

Clang 8 was chosen as a minimum version for this check because there
were some improvements around __builtin_constant_p in that release. In
reality, MIPS was not even buildable until clang 9 so that check was not
technically necessary. Just remove all compiler checks and just assume
that we have a working compiler.

Fixes: d4e60453266b ("Restore gcc check in mips asm/unroll.h")
Link: https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/359642821
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/include/asm/unroll.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/mips/include/asm/unroll.h b/arch/mips/include/asm/unroll.h
index 49009319ac2c..7dd4a80e05d6 100644
--- a/arch/mips/include/asm/unroll.h
+++ b/arch/mips/include/asm/unroll.h
@@ -25,9 +25,7 @@
 	 * generate reasonable code for the switch statement,	\
 	 * so we skip the sanity check for those compilers.	\
 	 */							\
-	BUILD_BUG_ON((CONFIG_CC_IS_GCC ||			\
-		      CONFIG_CLANG_VERSION >= 80000) &&		\
-		     !__builtin_constant_p(times));		\
+	BUILD_BUG_ON(!__builtin_constant_p(times));		\
 								\
 	switch (times) {					\
 	case 32: fn(__VA_ARGS__); /* fall through */		\

base-commit: aa0c9086b40c17a7ad94425b3b70dd1fdd7497bf
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200710223441.756320-1-natechancellor%40gmail.com.
