Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBNUO6HZAKGQENELKTWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id B243F175106
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Mar 2020 00:37:26 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id j13sf1289895lfg.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Mar 2020 15:37:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583105846; cv=pass;
        d=google.com; s=arc-20160816;
        b=C9ICg/TzvQvbGGQOgJ3lhNcsMsgIzhackzlXV5UixxjWTg29EI1YeWirwB2lKoPpbj
         SSqUrQjGjtmLwRFoj2moPI5imcQ4i3+lBD9FZp6oxvC/gQX4dp8ni3N7Efzx+6qg7zOJ
         sVFgcGuHMXFVr1gzYW3eP1sO7+7g/Saoc1mU1niK4voAPzzBho1F84exnLpr1H0QItRJ
         U0Jh+MrdkckrYGoNlUNppMqC+9+gTA48oJg1jZyrF9bDFAz2mDGOMUmgQzrOtUtQMMbP
         a0yEQKLziIAeR0atauNUp9BhWOihTZ7APm4qjDDqsTjqHWZlcuCD/VA5o5p3vXwNtI2Z
         i3IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gpZ4yFSWcI5xlcqoqEAbb2/2SYb6LXrIdrxaMkSftbM=;
        b=NqFbPaDvIthrx8rhSFWw5UJ9qPEcuQxbDSDM+2WO+LeFWg8RDm+2xdLeWsBEDo+aJv
         kMAK8eC6dNimSGTI3rW8fleaZuY4/Y3dsOb1AbhjmCLqsBqX4F4TRFy4U7w8OMwHg0Ot
         XdryqieNGWr8Uvlj5sGj375f4AJHsYK3JAB9A9eNywzPiHnVwKTj4RE8FVaJmzAdC7LG
         wJFBVco0yPmDy6A/gUGCNivo+607Jz/c3hwkPlR1o52SP818/cALS4G9X/rBSeoegkOw
         AumPiW3CS1OLYEdh8K6AdshGHEgzFjqMgyoFFiFh5YZNMN4+RoP4nwsuM0NLnw07O6Z1
         I1OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=KYU+jEIv;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gpZ4yFSWcI5xlcqoqEAbb2/2SYb6LXrIdrxaMkSftbM=;
        b=Jgbf1qc5n3DrVXHigQ8o6jymFGtwQPyly3uhEqBdHHkiDKZ7Ap1oQMvHb3f39bMtK/
         kB7bz+OyBk48+d4C94RdQhqmv0Dig4KVoeCOZbmfM0/q8vaqV+u30g8/YHlyj9iLbrHk
         KBj1jyEw7bTH9OtWJfZ3NSA8KgT+y1BWySwwd0gSmP0pEFYEfPFKmV9kaAVWEKNiOjQ8
         0mx7Rbh76nGLRfakFekITlGk0NYrqwP8V9VBvcvyFsXI98hOEooSPkHRPTWtPU/+12hK
         UtZgObb77gMCd59YVPIneMAfJgGJ1V3aXKD+dVIV37cKEjg+0BYwNrxnx1Oeb2RHZ4U1
         qi4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gpZ4yFSWcI5xlcqoqEAbb2/2SYb6LXrIdrxaMkSftbM=;
        b=YcwoYBeJQvGgK2YoqdTSMVWDBL9CvoU1GfR4ocd2mUALd2iRa4dJ+WZQ2ncax2tEdH
         Wnpbxxo5lBMSwdF9lRrBBhlnkI1jgmX92wpWZVbOaRvqntFV1BvwF7PGuep36pBle2N3
         Vam2pbOslkoOS1I2mMKnOCqQprV7VDYfBlJ3BqiqYgyxjOPo+4wfEU8cd8uIMAs7o2aY
         xwHqEUERSNVvVnNLqbGf6BdhrkbDbHITufRS8QwxxpiPMnr23Q4ChEBMepA74i0c3MvC
         TA6dc9L0TZTrh3rYfNi4pYCITQjuMA5QADuBoeY1tXBF1eC7hZW5MBJHGydSMyrX7RD9
         CvDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Lz4JVKmeJdQX2FUZMdf3rXOfTx1bPfqk2hCqmXaJwi5ov/HNN
	X+ej9VwQmFxuMhB0spIFJNA=
X-Google-Smtp-Source: ADFU+vsNs8H2iZuNNEuEJWUWSGONzoVnalmnckxBsULPjM4cLCSJRBEKEqx2qa80JVsDurI7/ZwlMQ==
X-Received: by 2002:ac2:4145:: with SMTP id c5mr8885647lfi.19.1583105846171;
        Sun, 01 Mar 2020 15:37:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a58b:: with SMTP id m11ls1343663ljp.0.gmail; Sun, 01 Mar
 2020 15:37:25 -0800 (PST)
X-Received: by 2002:a05:651c:505:: with SMTP id o5mr2721388ljp.78.1583105845502;
        Sun, 01 Mar 2020 15:37:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583105845; cv=none;
        d=google.com; s=arc-20160816;
        b=TtNLkyp+lys2/9INRXbpk79f2cGtWMrucSl2CL/+Uu1mbVYYbG5DkjU7HdxQrRoRYG
         jWARY6tPqG2nXIaSx+ojt8g8+2tUI65X3FYuLoTdFIssPjCIdaKE+vw4dd3KkZUhvy4a
         8DrX8yByNA07jBCAbSv9ntIOGmnTIi9D8i5oRcXnCM+FUOvkGq+ZltWa8g+uJvzhlHH+
         LXLKrL8MePD4Io53Cwe1sdCkiYArDUgC0UuujTwJ9OA4FqfuhbNAEagXcgCVB4/OEMI8
         alIJxXfSSPhJVLywK8WP6ZCx0Bvc+Mr+5ndyzlGasCsNXJdJXamkxZcZ8B7sKgCFSoP9
         70kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=uEXP2A+ZFevJutYapB5Olb+X7MOi5DcNCS5e20uoEP8=;
        b=lkbtTPj4dZIik7TR46/lrpGpFTBjTr9IYRuT1UNw3tSwzA3PmhkeXZHGPRDHCFjugV
         YeNvLztJWtlsd+MRIQleBzQ6n8SGMUDyAt9Ui5nQoKd9Xp7lArbLHyAXmxeJUsjj+hel
         gKOtooDhfw7PezFcqOoOJJBhMo1izVhqGY33l+ff2CFeyNPG6/DLl6h+IFi4YjqSUsKX
         EQG2PsWpJr3u1l4lj+5VFECVv0bpb8xuhIfZq3VruT0LlsMfbt9q2985MdhrrhB9Ftqe
         BcU5QDF8MYuel6UG6YG2R7YqHSYmIZTzQhwErT2Idlfpx22qU/SiJm4bSB6Ah/J8mP26
         RNuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=KYU+jEIv;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id w6si220094lfq.1.2020.03.01.15.37.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2020 15:37:19 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 17AB65C3CEF;
	Mon,  2 Mar 2020 00:37:18 +0100 (CET)
From: Stefan Agner <stefan@agner.ch>
To: herbert@gondor.apana.org.au,
	davem@davemloft.net
Cc: linux@armlinux.org.uk,
	manojgupta@google.com,
	jiancai@google.com,
	linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH] crypto: arm/ghash-ce - define fpu before fpu registers are referenced
Date: Mon,  2 Mar 2020 00:37:14 +0100
Message-Id: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam: Yes
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=KYU+jEIv;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

Building ARMv7 with Clang's integrated assembler leads to errors such
as:
arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
 t3l .req d16
          ^

Since no FPU has selected yet Clang considers d16 not a valid register.
Moving the FPU directive on-top allows Clang to parse the registers and
allows to successfully build this file with Clang's integrated assembler.

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/crypto/ghash-ce-core.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
index 534c9647726d..9f51e3fa4526 100644
--- a/arch/arm/crypto/ghash-ce-core.S
+++ b/arch/arm/crypto/ghash-ce-core.S
@@ -8,6 +8,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+	.arch		armv8-a
+	.fpu		crypto-neon-fp-armv8
+
 	SHASH		.req	q0
 	T1		.req	q1
 	XL		.req	q2
@@ -88,8 +91,6 @@
 	T3_H		.req	d17
 
 	.text
-	.arch		armv8-a
-	.fpu		crypto-neon-fp-armv8
 
 	.macro		__pmull_p64, rd, rn, rm, b1, b2, b3, b4
 	vmull.p64	\rd, \rn, \rm
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan%40agner.ch.
