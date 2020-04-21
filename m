Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB36T7X2AKGQEU4SHZYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DDC1B320F
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 23:47:28 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id h1sf108539qtu.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 14:47:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587505647; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gd4ZSpoguRa6iHbjE2NOFz/Dpeauvckb1PDARSc6XWVmVwM75NDfyz6FQSMjOTYHWF
         7XvfP8nxDYSlJBu1lbs2TEz1W//0twM4eHI8Uef4G57hNO7yZjAqzSE6BzlVoFKqFIxm
         oMlZqU9OhmtJ/NgWxNfsTCGeLAplFapx/Ft81jLItQ3Q4Zr/VbZ55mqeIX4vaBvWi7LS
         j281vCVJNuulJUkqwM4KCIHZdI+vj4/SN+244MxfD+CAXSrln4SqtBk9ualiXNPiMHTn
         qfzmWB5YcgYXjY+mIClB0yHIMktH46RrFGLPwDA9ZarABlUKDCFtlkHC+btnnEKpOqvS
         NP9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=CjJq1Itexz4JUR/YjbRBdmbLHt4hNI0t8ndqqf1WU5Q=;
        b=ZMmNJx3w9r6YC9Dre1Vb4xtoHC+D1RZ6SeLUx5ABnSoEHbwkigJHVPhIck5lBLCaR+
         B+SiCRkt2dyNr4HZQvO+kdcM9A/1QbJxaZs6ONGBOA204bNI7EImoBEA0c0lF5q4S4zf
         NzuUWWbGDztRASdDjMSB9951eTY/lsLTVl7ZvZM2oOqYVAl0la9Cn9L+WuDuY9Et18k6
         EViLWJF6c4iXcWfeQn7kOJ0BpIYB9JzWpidn/l50Rm0nCfx6kDtIugH2PRBzXds0sIIQ
         pHsVkTWHAqoOiHZcig0ie5IB2d21TEH71D17l+hU22Pcarmk2vIiPrPaqNNvRyRosj3/
         txxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Gs/3/cWE";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjJq1Itexz4JUR/YjbRBdmbLHt4hNI0t8ndqqf1WU5Q=;
        b=MvNzwr8Ct1ve5vVis99Nhq5iMrLYzqHSHnyhCFHZx7WLq+uFrpfOCckUB+f4Vl/+yn
         1l1NZuqFQn2YKagyW7frcIeUJrN3tTywYWauLKkl2NJzwkIPlHcnhWKqOpX0FRRFAiqt
         wfM7iBvyvk11dHV5CPisnbZM0kJp/GD5yEaKETe92heD8tvf1udYZfpArzN3B+XaA3n/
         lUgMpt8eo3cszbqpq07gfOxoliOp5UiwrcJVMokAUINm7t7x2grmpzbHlR/bQxVCQPfP
         Vne5wRxXe3tQULgQgPpPZRZ2z1JltiST1vTW5GbGhienJ3V0jO3CsG9DiYG199R8qydL
         UQtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CjJq1Itexz4JUR/YjbRBdmbLHt4hNI0t8ndqqf1WU5Q=;
        b=XI5jhuPZvtYaGDMyVmg6ec/uem2HtXIikSi/q1RT0dglGeKp9qMqBM0/sogMEqaiOB
         LWMJnNdQW3j+EdYtKuzCjw3bWs7oJkosihCCzVqPVlx9WmJA7N2eNstDjNfADZkC0zyo
         M0bHIkI2yCN1WRY4JJT47bXwvMhJQMdEESLcdHyHL+dqhDbBhIwdY9IDFTacJcnv23Dz
         B354kn2REtPLmxIqXmvP2McY3pqVg/pMyv4MuQj8K+p8s6YTPzAdUI8daS/XFAwUyV8y
         IA5B1V7mL+xLV8Bvf3NRom4BQBy+rc4NGQbcJkZfVOw69i36phQy2BSkdkntQXVDiaQo
         4PzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CjJq1Itexz4JUR/YjbRBdmbLHt4hNI0t8ndqqf1WU5Q=;
        b=o4eOVGybLbzY6w18XcK35XIDUHcZRlmiVxu4nq0FRFVfAEzX7VT5odd0xPHPVUF1YH
         2qo9pyXP/gL8txp5/ccFflRnm8rsW5Wv1mcapHvWTfV0kj4oPzahQ6m+gELIhsRLW8cz
         OaxgldXzhcoSKL8MuLX641K5ucgpkVzWRuhA9coxq3Y4RlflByHj+1DJeci6sQCGUB5+
         2wGpJki0Del26KQZslw9OPIqDg3WkFLOLtOLwacU9wvH2XVAM3P5xHwXjR1uOqx8I3s1
         jGNLb2Mouymrz1ZGVpuL1QxfybTXUlvtYs+MBYY3pemZ4TG1V4OH/O6ykK5zwDtncwn6
         /1rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua3+smDgwzrA5cV5LoJTNralkYtgyKmTyJyKwN1KHlmr4r7RlFE
	90MNXhRg6Eyj88pfs7uHC8Q=
X-Google-Smtp-Source: APiQypLChSteoXMYa/gyhHgo5NssRl7Nm5kqUwrWoTUYGbO5qEaqlF1axWoNv320FelObB1ciKwXGg==
X-Received: by 2002:ac8:bca:: with SMTP id p10mr21653326qti.243.1587505647647;
        Tue, 21 Apr 2020 14:47:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c97:: with SMTP id 145ls107749qkm.4.gmail; Tue, 21 Apr
 2020 14:47:27 -0700 (PDT)
X-Received: by 2002:ae9:e011:: with SMTP id m17mr24069014qkk.103.1587505647327;
        Tue, 21 Apr 2020 14:47:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587505647; cv=none;
        d=google.com; s=arc-20160816;
        b=nEAJzgVBcF/b3NgRfCdsCESZUheGqapAGLwr1rN5uZkBZy6XN6Z2Bu6gNptc3e6dFY
         M3QxlhdGb2deaFX/+wAQHlFGrFObCGCxGZLAi9Kp2lafnfgxUW1nZWWws1DeBzq5xaDZ
         MsUD7hCwUuUxijpdWioP/7LFJwyxUYqM5e0bX9ej/Wnm6JvT0CwcPiszADLYypmUqyIA
         TBzfTnNoUTMRKSq18tXoGNhqqEfucu+viShOMfBzjIABqTOpuJf82xQ2A7x2ze1vbkfj
         qBkEvThCoi8eaxJTFZ+GuXUvFQgcmOKZ9AEeib5gNmMKj3pQd1SiFbA4ac8n2PN6k3qz
         HqQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ciFxuebc3h6Mj9upZD+rKZQRQtufTSVOmAvk3Fhrb+8=;
        b=m/FM9n4d6rJS9Q3McUX6sp7wjIrk9M4lZt0wMswUccH4wBKr9YU0AyOOr5qk0ZX8e5
         ZTheRa/3BLzvnEZNpC56zg+LOV1RXZX4jyQcoZ5Aaf2NsCskZS95EezOdi5iu/zmtWh1
         L9V7Muhu18gy2X22txCrJKtRiJsa6rgB4aJlvTt+uu3sCxQzgmHrBh5+wZA3W0oEA2Zm
         63l84DCs03+pmFJLSxQZtjLMdG6CXcOF5ht+1jorDl2YnY8lz/7k5A20JD7l2b4KYqDp
         zW3W/RolDLJmVgFHUfTlBK23KQ06b+70Bd55uemI5WZbFuMbPZjnVliT3he7mv2T/13Y
         mSkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Gs/3/cWE";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id d11si292530qki.7.2020.04.21.14.47.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 14:47:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id a2so77917oia.11
        for <clang-built-linux@googlegroups.com>; Tue, 21 Apr 2020 14:47:27 -0700 (PDT)
X-Received: by 2002:aca:b104:: with SMTP id a4mr4908325oif.103.1587505646764;
        Tue, 21 Apr 2020 14:47:26 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l187sm1042137oig.0.2020.04.21.14.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2020 14:47:26 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>
Subject: [PATCH] lib/mpi: Fix 64-bit MIPS build with Clang
Date: Tue, 21 Apr 2020 14:47:04 -0700
Message-Id: <20200421214703.47883-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Gs/3/cWE";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building 64r6_defconfig with CONFIG_MIPS32_O32 disabled and
CONFIG_CRYPTO_RSA enabled:

lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:664:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w0))
                         ~~~~~~~~~~^~~
lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast
or build with -fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:668:22: note: expanded from macro 'umul_ppmm'
                 : "=d" ((UDItype)(w1))
                         ~~~~~~~~~~^~~
2 errors generated.

This special case for umul_ppmm for MIPS64r6 was added in
commit bbc25bee37d2b ("lib/mpi: Fix umul_ppmm() for MIPS64r6"), due to
GCC being inefficient and emitting a __multi3 intrinsic.

There is no such issue with clang; with this patch applied, I can build
this configuration without any problems and there are no link errors
like mentioned in the commit above (which I can still reproduce with
GCC 9.3.0 when that commit is reverted). Only use this definition when
GCC is being used.

This really should have been caught by commit b0c091ae04f67 ("lib/mpi:
Eliminate unused umul_ppmm definitions for MIPS") when I was messing
around in this area but I was not testing 64-bit MIPS at the time.

Link: https://github.com/ClangBuiltLinux/linux/issues/885
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 lib/mpi/longlong.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index 2dceaca27489c..bfff2e398ffed 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -653,7 +653,7 @@ do {						\
 	**************  MIPS/64  **************
 	***************************************/
 #if (defined(__mips) && __mips >= 3) && W_TYPE_SIZE == 64
-#if defined(__mips_isa_rev) && __mips_isa_rev >= 6
+#if defined(__mips_isa_rev) && __mips_isa_rev >= 6 && defined(CONFIG_CC_IS_GCC)
 /*
  * GCC ends up emitting a __multi3 intrinsic call for MIPS64r6 with the plain C
  * code below, so we special case MIPS64r6 until the compiler can do better.

base-commit: ae83d0b416db002fe95601e7f97f64b59514d936
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421214703.47883-1-natechancellor%40gmail.com.
