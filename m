Return-Path: <clang-built-linux+bncBAABBGGD6HZQKGQEVPV5JIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FD8193A2F
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:33 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id e203sf4135155oif.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209752; cv=pass;
        d=google.com; s=arc-20160816;
        b=XYtdttWWIarM5Gbfl/jil6x5JsM+HeO5Y8gdoIEeCHzjmhFqDFApWMa21mQsGUxtZY
         ihhBaFLPYE3IRdhEan+/aahfPmT+6F+T82aT9+yEHMvS7AexbIzYgv8j8nughpflnPV/
         kMcLS16oe+5LpJfiz3h9XQb6BLRpmoku/PJJ+3d+iG9VPA2sVGXHS5T9giezoCbAQIe3
         Xroywpm/FIckPgigijWOoQhLyt1uLYZW5D+lS6D4XxUBOIfNSXskAA2ntl6PvWPL2AQH
         yAL2FVMR6zMeD7iqo7+mbuqHUdPEWLeggaJOVT4eqgPC7Rc02os+Flvd960EnDe8RL6H
         k89Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=/sBgLSLMimf2Fk0vhGbAsYWEWrmbg1p6L+oYUIAOfNY=;
        b=JGbs/MKGY2o+dJGrAMbdI1oorgmyKZBsm7m8GL+uiooLIDO1U3QoZWRG46cxXIw9xB
         kM6y+arbUgnnReNDcF+ERkKqXW9rAW7Dd7TUw5kS8Zi9rB/ii+I7rrOOWhvHR71wuH70
         VZll/lNBdRaOp+up6yZ0NEqsZH/Ck5yqqTOMu77Ws9cPIpQDCKFyrUXezAR4HZ2y95yx
         GcD9oKqx0O1H+2ErBN6cpR0bQ14hfvleezoqY5LUmNE5FQVGXUVnfB1aHjp7I0GN09uF
         YqkgxB1KVl1MV8PTExorMd9LLm2s/33yUfKGZV1oOuiUhB+1OD1XigG9P1ihmYfkEbNM
         5xAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GvWqaSzD;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/sBgLSLMimf2Fk0vhGbAsYWEWrmbg1p6L+oYUIAOfNY=;
        b=CeFPZH7ckkAWPGZXQfJxWBD1tU0o4gLfKPoRf3eZtAVrR1YIIyMJ416S5kCe/LbIIE
         vLOfUdRNnTgia7Rveb2xbwDEqk6+CpAxRQNViP65z0ddeqHyQuUAetTb4/ZB+Jbpydkv
         375hb7D4SrEnL9t39wjlpjqNdo5Y7QxA+bynddVY9DYuo8vPKVRWE/gxw00XFh1oLhzP
         HMkQi5JOlWcw+4lldmT1G0LzXLv6MlxAljMWOtxzX0oj0JboXjLbyjLLtjN+LOxnDVKu
         YytakoIctNbNqoQ4xkmzaCy0GymC1rFT4YiRcfmu+Iv80Tf1Fch7VsLpS3TErSkLpkIm
         2xSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/sBgLSLMimf2Fk0vhGbAsYWEWrmbg1p6L+oYUIAOfNY=;
        b=V6/hoPCWtv9uzuuG4zhbL8JgHLOwu0ctxbDYpYwql0plX/3vJHHEhYgguR6MOXsjlP
         ilpvIcbH7jdIQvm5fl6KXYgVpmIKA54fZjthEjyV4JiUCkUdgp47WqGCVkK6rdwU+7KJ
         g/UKxUjVXiEF3E8j0rCkjUXLchJNROl0wRh7f6s8zqQOJeXDOxAGvRrKEe1gMqhB4pXy
         bSbgcNV+9MpPIH+XXnrmpUbXc3Qdt8Bw+nWunFK/Rrv4K54ox6usMn8vU1BVxv/ioPSM
         jdaXXWeNMNSrC26/oUYOnbOPWDqQ0odpT3n+yG5PPnh/74hgtqf/IQPi6eilbnPJ263v
         G8XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0oOrWFWDqjHLDZo/fSNvTkTDlSKZTwqb1uF7C33vOef2xwDDn1
	DwJsFXXJ9yoAFnZbD1sitto=
X-Google-Smtp-Source: ADFU+vuswsIN14CEMLCvJac0vL3nwQ/dZyPmUUnfNTl3XTBW1/V5BBcGDFQNLCFRVzFfijn/alc2KQ==
X-Received: by 2002:aca:b7c1:: with SMTP id h184mr1003543oif.77.1585209752232;
        Thu, 26 Mar 2020 01:02:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls1779769ots.0.gmail; Thu, 26
 Mar 2020 01:02:31 -0700 (PDT)
X-Received: by 2002:a05:6830:2428:: with SMTP id k8mr5564501ots.345.1585209751901;
        Thu, 26 Mar 2020 01:02:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209751; cv=none;
        d=google.com; s=arc-20160816;
        b=Gawny/3ip95Z3Azame+tqLSQBWV/ey5jfs6SFa9ePPWi6Nx0jo/s7Ggx3J8eTfRL7m
         iNr0u2WlMCsWs4QiS0+rMHcT4+KpNEXiqLMiFI1rmalB/U+42JHz7KqANJX4Zlk6kQA8
         cBcn2QfcoePDkXhjjhLlXY9JLxdizIarTj8AJ98hg74LrsY96kirxvNc2buNT2pnPJ54
         231aMBVOW993BusByI5hDk/WDq1xBUVnieY+0MLrFFEhuvLsgQhCvk7SW1PoZQfkmZy6
         mm3UpMHAFnNLgJ/Zvk8sjs5pPlIb3m1tPVqKlYkODAWAB72yZGNtFkwLdZbrfb6cmB9d
         g6Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=hIsNK2mlczhM03FNvMHtWUtfrXi/KhhBhq2867qeZmE=;
        b=DRQURuBIS4G1fYwj1dIOcasuH2AjJ+/OAVV4yNQ6qxRrcKD/HC328hQUwoPH1A9QIG
         p5aBVmZrNd86LOQgkZgChWHez0EfWmKBckZgo4Zf29J4GyDHY5TGbVmytwzgXm2+ML9n
         NajPOMEXEwDUhrGGzpkyC7qBLdMwfT1kcYUaV8KYLpZBsv7qs0F2VytEVuZB8uvYNcna
         C3SdkUC/HHfTZTk72ACn/EJU0qTY8plt8niT2E8qqja2hAtUvPHUuKoT1ZDFC6SASftJ
         PhNGhMDdHueJn34p7OiedQim+b1abO0aYEvOM+bPPqIVBxMSRQeeUPwFA01zrBZmAODn
         jWSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GvWqaSzD;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id x23si130127oif.2.2020.03.26.01.02.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:31 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81Wpj002183;
	Thu, 26 Mar 2020 17:01:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81Wpj002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 16/16] crypto: x86 - clean up poly1305-x86_64-cryptogams.S by 'make clean'
Date: Thu, 26 Mar 2020 17:01:04 +0900
Message-Id: <20200326080104.27286-17-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=GvWqaSzD;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

poly1305-x86_64-cryptogams.S is a generated file, so it should be
cleaned up by 'make clean'.

Assigning it to the variable 'targets' teaches Kbuild that it is a
generated file. However, this line is not evaluated while cleaning
because scripts/Makefile.clean does not include include/config/auto.conf.

Removing the ifneq-conditional, so this file is correctly cleaned up.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
---

Changes in v2: None

 arch/x86/crypto/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/x86/crypto/Makefile b/arch/x86/crypto/Makefile
index 928aad453c72..a31de0c6ccde 100644
--- a/arch/x86/crypto/Makefile
+++ b/arch/x86/crypto/Makefile
@@ -83,9 +83,7 @@ crct10dif-pclmul-y := crct10dif-pcl-asm_64.o crct10dif-pclmul_glue.o
 
 obj-$(CONFIG_CRYPTO_POLY1305_X86_64) += poly1305-x86_64.o
 poly1305-x86_64-y := poly1305-x86_64-cryptogams.o poly1305_glue.o
-ifneq ($(CONFIG_CRYPTO_POLY1305_X86_64),)
 targets += poly1305-x86_64-cryptogams.S
-endif
 
 obj-$(CONFIG_CRYPTO_NHPOLY1305_SSE2) += nhpoly1305-sse2.o
 nhpoly1305-sse2-y := nh-sse2-x86_64.o nhpoly1305-sse2-glue.o
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-17-masahiroy%40kernel.org.
