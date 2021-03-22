Return-Path: <clang-built-linux+bncBAABBFEM4KBAMGQEDYMR5NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE03344045
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 12:57:09 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id w2sf25831337qts.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 04:57:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616414228; cv=pass;
        d=google.com; s=arc-20160816;
        b=CIRZhPKh0InDH5nVZLOThFnGcBZksol5P6WeE74Dn5uHWfZAYnT7Vmd6aWfhl8RSLW
         oqGbPYl5QEvifIxtBvz0BJkI5eJyayfO2Tx8zuXHBhczDCaQuUg0ObfsS60ZK+wjzId1
         aFSaALcWccPG8Jc7HmwqHg42hvnKL0vrmP3tBhGnyDUlyPeaih7lXa5n/F6+3CpLvWwC
         8QfBC1KM2ojZ8S1RCnayG9yU1pjO1/aAquXpBkeGYFUgiezT16nF8eKwCVWwV/9K/zvu
         BND5pdi3K2kXd3k7Iiw3Y6VdTtPXGNq+m+YqB8y48uX8M6Z0AbgyDZwpPHkJoTbztDqN
         8urQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=sxLyo8ZbxAVHQjmrDtkbJhlyUsxyzkOhw8ltuFOjeSc=;
        b=ZbYIVT/Linvd0wjx9yv0UYh37+lUsqCX5IMXuqioCOKdWwr5bEgPMnxxu/1BC0W7mc
         uFKesQhMEszwYkC3ZQALv/ZhbG/eVRWAVFD/axiEmBaVKmFyyBAP4QP/EosXevFWcoy3
         iFEYcbUaw0G/WiTcVJkzXBk8bOEjTtMLhwji0kgMxzMXkGZuxBB0RmwlTEf09vDbhXFh
         GDlJntlyBCKqWIwvNU15jkREsxrWcBSPfUrFL7OM7+Rv+tKFicQDGBA02Xkg40XBO2wY
         Lci7HFU/J/tB9AuGTJ+I6XjrsnzaTPCOZKufpS/Y5gyFvEifXhd4Dw/JsMP7PawWDxdO
         1/eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Q3EO4JwM;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sxLyo8ZbxAVHQjmrDtkbJhlyUsxyzkOhw8ltuFOjeSc=;
        b=GuuBN4rKktUhzBj/muje/Xub91teynwywsGErU8206ccDiyhGEAGTyUY3UWkEouf8A
         wsg+DKQyPI0icOOf6uuOT3MuACfMD0EzfGn7OlEI07yY8FrzAOMy7sXPnTCbxdLsXwn8
         KKPUrD7Tp6OtWQXGeP5fAFUMqzgC5CX3EA/wqg2XiLn2Pm2USCs/kkxf0cmQBoT5bxCN
         3mP1Fa2NJB35mo+p/v39nQpSIOHm+Ia66mSV4SRWBJi+hI0rdQiHiXqpIsggZ7eORto2
         O55U9bQ9f/ucavCFFgDmDvIsUw0bQKy1GXGydOAG6jLg8Io2FKLYo0KMH9gwzNvxCT1J
         /7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sxLyo8ZbxAVHQjmrDtkbJhlyUsxyzkOhw8ltuFOjeSc=;
        b=EoVxf8j4+HPRTc2DPiphniCKvBtZ3YJaOeyOZHzxAQ04HOVDW0dOCIcQztgyy1zhec
         42D02t3NDn2AWL1dRTJ6rK5YjZhQ0vYHALa+HyKI3KyfGH5w361cC/hnHPWFSoGt4EAw
         lJMa8A8P/QuSaVUNwnJN2y11h5+hzRPiPloZbMyKFoCk09exuDb43NFSPC2THekNxnSS
         GYgYlzWGJENBDQBGh6OwPKnBq0aBWIWAquwJOk/W2KwSBNNjnCcXgrBPX8dZAjJCO1uY
         t4u3K08Y+ABne4SNp7JhQI2UWw23Sz1qiFxkCFKyWZo5PbI2zyepfYuRgPiRadKIGhp7
         GSlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305TquEH1TUInxL2vMlr6TaKJi+oYwoR2X094UR7qPVsK7G3BQu
	ZWvt/QgbsKgeoi/MoHPm6Ws=
X-Google-Smtp-Source: ABdhPJxMXiWSYHRlzf/j02j5nqWl3bZQ9dOPr1c3Xl/cs3vvdcT0CwkWmSgqIP5a6+M1BBqAkl0Z1Q==
X-Received: by 2002:a05:6214:1454:: with SMTP id b20mr20648586qvy.24.1616414228283;
        Mon, 22 Mar 2021 04:57:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls6662669qkc.3.gmail; Mon, 22
 Mar 2021 04:57:07 -0700 (PDT)
X-Received: by 2002:a37:b96:: with SMTP id 144mr10280978qkl.386.1616414227900;
        Mon, 22 Mar 2021 04:57:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616414227; cv=none;
        d=google.com; s=arc-20160816;
        b=AoBmxuDBaunhictB8LQxWZ9ktEI2fT4nUG2W+r4zff7vraTmo42S/T3zGlF+zxbSD4
         AMKRKU19S1Vf2+pIY4g8KcIVBm+KygOqpxFNvEaFjz5RorbQN83a4Ze+Er4j33UiEU1z
         +hSGEcZ3uflwJRvHJr0qCyizWCHeVZdJxTNuGCeNhjuJalRgG6JLzNxT7/YZFTT3f4lc
         65rvpOII0v+NjXLZloU0gpnE00mKJHp9kQ5djugkL08ofpvTbqko9nGLkmfS4y/SeIML
         ZzOEVqEl06wopTPEnaiUPgRCPDxTUeAgPIJNQe7ckKo2L01F6/SYlxWNz7f60bCkc8Zq
         L2EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=O4NuxnsuDOaSu5xWju2J9OXq0YagHwawI2knejq7Xlg=;
        b=UcvSPAi0Oc+cBoYsfb3hIBll+eSBb+cGItZDjW57WzjNDlissWIu2MYfmMdvrg74ho
         9RkdWRXMcPoX//PFCniQU7TXd68jVtSAxA9LttSh4aPOwElkYPb7f9Z7APW9Cc0/boaR
         BOKDMtqIRZ7haMacY40B4HJ+lCwlWqkYOcKnOngss0MWBGJ78tUd7WvtI5wAoMuKmLJB
         F+/quCcn1Zo06N/mrmJNgYJdY8JI/e21xmo0vbHqWVdW7kFgyuciGPZ5yyeayiFwUFUP
         xPqD2+BN77Kgfq6s75+mPKqfsFfVBo8S1QTueqktog4bqASpxQj+MbJkiC+APhY+nYrA
         WrrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Q3EO4JwM;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g5si138251qko.5.2021.03.22.04.57.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Mar 2021 04:57:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D6B3161994;
	Mon, 22 Mar 2021 11:57:03 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org,
	Steffen Klassert <steffen.klassert@secunet.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	David Ahern <dsahern@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Zhang Changzhong <zhangchangzhong@huawei.com>,
	Sabrina Dubroca <sd@queasysnail.net>,
	Willem de Bruijn <willemb@google.com>,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH net-next] ipv6: fix clang Wformat warning
Date: Mon, 22 Mar 2021 12:56:49 +0100
Message-Id: <20210322115701.4035289-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Q3EO4JwM;       spf=pass
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

When building with 'make W=1', clang warns about a mismatched
format string:

net/ipv6/ah6.c:710:4: error: format specifies type 'unsigned short' but the argument has type 'int' [-Werror,-Wformat]
                        aalg_desc->uinfo.auth.icv_fullbits/8);
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/printk.h:375:34: note: expanded from macro 'pr_info'
        printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
                                ~~~     ^~~~~~~~~~~
net/ipv6/esp6.c:1153:5: error: format specifies type 'unsigned short' but the argument has type 'int' [-Werror,-Wformat]
                                aalg_desc->uinfo.auth.icv_fullbits / 8);
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/printk.h:375:34: note: expanded from macro 'pr_info'
        printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
                                ~~~     ^~~~~~~~~~~

Here, the result of dividing a 16-bit number by a 32-bit number
produces a 32-bit result, which is printed as a 16-bit integer.

Change the %hu format to the normal %u, which has the same effect
but avoids the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/ipv6/ah6.c  | 2 +-
 net/ipv6/esp6.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/ipv6/ah6.c b/net/ipv6/ah6.c
index 440080da805b..01c638f5d8b8 100644
--- a/net/ipv6/ah6.c
+++ b/net/ipv6/ah6.c
@@ -705,7 +705,7 @@ static int ah6_init_state(struct xfrm_state *x)
 
 	if (aalg_desc->uinfo.auth.icv_fullbits/8 !=
 	    crypto_ahash_digestsize(ahash)) {
-		pr_info("AH: %s digestsize %u != %hu\n",
+		pr_info("AH: %s digestsize %u != %u\n",
 			x->aalg->alg_name, crypto_ahash_digestsize(ahash),
 			aalg_desc->uinfo.auth.icv_fullbits/8);
 		goto error;
diff --git a/net/ipv6/esp6.c b/net/ipv6/esp6.c
index 153ad103ba74..831a588b04a2 100644
--- a/net/ipv6/esp6.c
+++ b/net/ipv6/esp6.c
@@ -1147,7 +1147,7 @@ static int esp_init_authenc(struct xfrm_state *x)
 		err = -EINVAL;
 		if (aalg_desc->uinfo.auth.icv_fullbits / 8 !=
 		    crypto_aead_authsize(aead)) {
-			pr_info("ESP: %s digestsize %u != %hu\n",
+			pr_info("ESP: %s digestsize %u != %u\n",
 				x->aalg->alg_name,
 				crypto_aead_authsize(aead),
 				aalg_desc->uinfo.auth.icv_fullbits / 8);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210322115701.4035289-1-arnd%40kernel.org.
