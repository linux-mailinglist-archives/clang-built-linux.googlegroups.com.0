Return-Path: <clang-built-linux+bncBDOILZ6ZXABBB6ERZX7AKGQEIJOLPNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C149C2D73DF
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 11:24:56 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id u17sf4597059lja.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 02:24:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607682296; cv=pass;
        d=google.com; s=arc-20160816;
        b=eiWtUwvmkj2hH0lJAutT/6ThkbQ/ULJ6rWTQLLQ8RNFSvFMuh9rfk6okl4RDCOKozx
         8dnA38hj5cz6vaFfuJKkmoBIh/5hz8iEy9KFZjLRNNKq84Fvl93XsySQzQsUPQg8c61c
         1hgayW34w1EMPKSRjSnPjpCARF2xh0feAdV0uxlz0Z2qYncVHkh9Ji4ETV3aecvZR9OE
         WaQUaH0ahG/ScKuU9v9XIba7DJF/zAqbYDdl6s7TvIVPxOLP5Pg07Bf70ntt1oC1RVHp
         dVkRj+FnohXSYj2SJxKrrsKa9UX7n3gsNghY21q7XkBqWXlkQathZD4yxkh2LWeaU4w1
         Fd7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=DPbgGTwu4kgoiCIjr1Bns06E3nx7W3zCaW1q7LOm4SQ=;
        b=rCJ+kN5OOhr9RweKTQYG76z/1G8gY9dx7EEwJZAwPQczkoMDGzsqQqbDpMgrn947f/
         88eFEqvJUOWbkHQDYZIMZPirtA+RmygELyYqMrfhbpyvWBJOE+7iVKAY4mKeQHLPeW6U
         Uc1TPoKU2S/WuARKR3hMkKrK+NCvP0j5EK0FFff9r2HSWKQQCwED3tMqJg8/iCBMCEqg
         Wlr3p1HziczXbwbs9bzU4ePPnxERDeVOB+2LMc6KwwhvovhOd8bPVL0HfZx4t+a5NXDA
         fAfTDj+mw4h6QaJOwmMZw5ZefYuaT6QvKdrDjSe7ETsL+9gAtxDSQNTA/A49fUOUHYSh
         IcWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="byCsg5/D";
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DPbgGTwu4kgoiCIjr1Bns06E3nx7W3zCaW1q7LOm4SQ=;
        b=OjumsElPLKXEXdW3zJr2D1z7WVSw5T1MpLN7dmm03fGXyMMSdr0l/+wIhrMeVBR38+
         HXm3l4gJuqom7gD/WlCQd8jZA3cE6LS2ZLQv1y+sIptAOfqbAICZggyTrM/LV8sY3wwp
         Vg2fS9/KhUimOn4YXJFITdBXh6KAUS9p+kc0NI47yZ/+T7X1ICIpLPi+OaUV20Fo/YX6
         gN7M5O3zbKm06J7ZR4repPT1qOdAcJ5dEFTIjmcjQaTW+Amz1ML5cbX0i/FbnEntVluE
         U9Z00Sgpu+z/rrlKR7tjijSb4YXwtOk/IPPVr6ZCsIdA0/QlL3Q4ulfP0h6BR8N81lsO
         sY6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DPbgGTwu4kgoiCIjr1Bns06E3nx7W3zCaW1q7LOm4SQ=;
        b=EEAFCDRjD8PkFVozqsZDfhPnX/9KORbJ3Walb6OLa6CXaFCRaApiu1ttGvVFKdZ0pO
         4iMPWO3+bcQfnjGrSX+YYQ4UH4cFc9HD9MrfqENhv0eU1TZ1q/CfyKWqrq27zmKKfmqk
         077nhwmlSdhV5ax4kTx1M1+yxqy731XG15ttActMu2DlwAxyug6BPgfEG1CnsKAB8e9Y
         IKfAHAUMOjy2fNBcUFfWk0XcIZjf6P0IqvRu8FWZegodBggZEXN/kKvD+PohpUJLvaYN
         8JTPpwAJEn1cpJxWHVyt/qwn4t7wNfdDnHjV8GfbxRrV+V1GcNULlfnRgcT4D1SLn4nd
         xhXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qPz8Xv/qcCQ4WInf4s83WriIorqAEdv/e2sHwfCqlVmXih025
	6BhX1ksQw0IH+UHvaMIoLXU=
X-Google-Smtp-Source: ABdhPJwiqkk5v8Jt4MAoJnU5KFXekcd2Wj6ZnNBbPxO4YNSZA+tWMYt9NBXK0e66OXQ5XjLNLdEz5g==
X-Received: by 2002:a2e:8e3b:: with SMTP id r27mr5065185ljk.196.1607682296362;
        Fri, 11 Dec 2020 02:24:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls3184152lfs.2.gmail; Fri, 11
 Dec 2020 02:24:55 -0800 (PST)
X-Received: by 2002:a05:6512:612:: with SMTP id b18mr4980095lfe.598.1607682295379;
        Fri, 11 Dec 2020 02:24:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607682295; cv=none;
        d=google.com; s=arc-20160816;
        b=rwzXIPsPx3BNTSDIMZpk2BGCUM583dTrALyj/x8TcPW/i4VtPXzPVsAl/mca1eT8va
         08E9nnTxI6aSeBtFvVMnKWnw1M5jWZF6hpFYQsbiOM81JizsayD6tc+1sIJLVzqxm0MT
         iqrKxIIXIEzJwOFZWw/7gmAcVKTMeqGh4Ts+tII1JcrlBy3jmQh6MxoPkaI+wfm3Hjlx
         FYbbF56R2/el5MqtQJXaH2HEYfYar4ScYn2PNbggvx4GQLN4hlqfB9nOICmy1XS2axWg
         GhJW3e5uEkQ3oTCtoN90V44mTAhfuVHzYknu3VYF3G1jsUQgECAAS6k+ny5gn4BZvQrf
         535A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WBQx9xO5u4u8XZlcf1cIHxx3BPtxa/Dl6Ow9KmNUplg=;
        b=pkJinT30eMMg7ebJ32M920fPGbe7xnZpnWJJcvB7Yimy87KBwMjeWlStANdYL/uK16
         abzMIhaQFrSPn/YLlIvBTb0gcZn+NiAztbujyjkH7e/W27LsWubkpClzOeIefyOUwhWc
         4okOWu3FH2ZPz/dW4fVgcCzKq5Sl4vcOZVyLYahQgD3k8vN34gQ0rCvGRVuV7/qmauvt
         SDGUTGyoeRM2SdS0uAlDEyX5YY+iVMJgcW7WM15cTxF+5mLjWZM3uTyrMwY+gtsFc86C
         yYRUdNlOp2D9m4Bmla6uKFp8l93mglcEiCaTHA4sCblPw71L1s11IJmr/6vF92j4icVt
         Sb1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="byCsg5/D";
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id q18si37239lfc.5.2020.12.11.02.24.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 02:24:55 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id a12so12626440lfl.6
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 02:24:55 -0800 (PST)
X-Received: by 2002:a19:48e:: with SMTP id 136mr1997511lfe.357.1607682295088;
        Fri, 11 Dec 2020 02:24:55 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id j1sm826622lfg.225.2020.12.11.02.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 02:24:54 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: tsbogend@alpha.franken.de,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH v2] mips: lib: uncached: fix non-standard usage of variable 'sp'
Date: Fri, 11 Dec 2020 11:24:37 +0100
Message-Id: <20201211102437.3929348-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="byCsg5/D";       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

When building mips tinyconfig with clang the following warning show up:

arch/mips/lib/uncached.c:45:6: warning: variable 'sp' is uninitialized when used here [-Wuninitialized]
        if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
            ^~
arch/mips/lib/uncached.c:40:18: note: initialize the variable 'sp' to silence this warning
        register long sp __asm__("$sp");
                        ^
                         = 0
1 warning generated.

Rework to make an explicit inline move, instead of the non-standard use
of specifying registers for local variables. This is what's written
from the gcc-10 manual [1] about specifying registers for local
variables:

"6.47.5.2 Specifying Registers for Local Variables
.................................................
[...]

"The only supported use for this feature is to specify registers for
input and output operands when calling Extended 'asm' (*note Extended
Asm::).  [...]".

[1] https://docs.w3cub.com/gcc~10/local-register-variables
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/mips/lib/uncached.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/mips/lib/uncached.c b/arch/mips/lib/uncached.c
index 09d5deea747f..f80a67c092b6 100644
--- a/arch/mips/lib/uncached.c
+++ b/arch/mips/lib/uncached.c
@@ -37,10 +37,12 @@
  */
 unsigned long run_uncached(void *func)
 {
-	register long sp __asm__("$sp");
 	register long ret __asm__("$2");
 	long lfunc = (long)func, ufunc;
 	long usp;
+	long sp;
+
+	__asm__("move %0, $sp" : "=r" (sp));
 
 	if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
 		usp = CKSEG1ADDR(sp);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211102437.3929348-1-anders.roxell%40linaro.org.
