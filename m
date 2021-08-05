Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY7JWCEAMGQENLDJTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C6A3E1BE1
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:58:45 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id na18-20020a17090b4c12b0290178153d1c65sf7518069pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:58:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628189924; cv=pass;
        d=google.com; s=arc-20160816;
        b=tRlqjXEgV8FUP5AyE8w/0t85k14hen2Ic6O0X55zPlhSxkGZMb2NvGK27RqoSzodn+
         1n64xcF1Dn7WloajBtGBD2iY1nYGncGYTitwJXzDARt8PIJUVvk5Kr1hj5uzMYHCnl77
         yk0PuxQAkTyCQCmTkC217xNFiVwmc0D9az86nESF8Gq0BM7ngXwrMi17YDVuNjt2nJ9K
         E8jZRaTJa4ifj29sMM8LZ/bJHKAVQQvCbsWqIaSOxWCV+fArBwu8OuvKP6cTj8HKkBJN
         mz6j+X7RRvuCEMfVLdxthPGSLIKkEgTDN27eg1VrP6IQ+GmPBb4alqL6Yz87+c/1Mkug
         5veg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NruAedfGUUNvAQzEJATzrN1P9dSME14ZG6i7+DrF/xk=;
        b=GprAQ/Rdt1lD6yX5TjncE6UxDC5uIydhM0oc2iIQNSqxLGvHFrZpen13sBiyYMyJU4
         0J3ahvTDeWoLfCjoOGqyCNEQqrr6x67/V/e6T/7gB2BAWQPrIDrIyWmYECeKt0T4wVCP
         f12PlZrLkJboX0wyA8fOi13ykcQNg2aoLBBG8OKcI+ELI5TN+vCseY7TZRqRs1ZAS/1r
         XGw9ORcPhpsD5Q23vA09Kxic1mQTgrwf98w0nhTREjnE5gYE7cGmkuQ3+81BnTkQ/N62
         cDhTJCabBBqcw7cvhw341vh//2M1Lbs2tAftW2wmjiNyZhvmt068/+ScqdysFK0ESzBf
         fuLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ao+LtVb+;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NruAedfGUUNvAQzEJATzrN1P9dSME14ZG6i7+DrF/xk=;
        b=PCxSf0cg45yeGZG790Ol6C1kRC1FE9FGci3YnIJh/jld7Rhy1pReofnaRorsusII0m
         vF+UUGEbV41vow7969R4yH1OiB2E622JwSL8gRpQGwbHPjZTHU4nMxAqBDBJ27g6ltxF
         0ID7yUcnxX/eeRPR3lL7XRKA5wygr5ZWltfwFLaXHy/MuqjuMELq8QafGS+I+K6U0dOw
         q+6CwJfJqCsmQSAJn70I51zSHS/bFLrzQ3Q1D5ZK+flQD1J9gRxIDy1/R9qcaTIZrgOY
         Yrr9VmMFbuBigFz4zDazb4PAl7+sJvR7+Izel6AGyu9Qt/bKtz0Cfvq0BynMwYMpWeUT
         Pshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NruAedfGUUNvAQzEJATzrN1P9dSME14ZG6i7+DrF/xk=;
        b=rNMUlQ6lIKq7J9QVFL1JK3Ns1ft0lcwP6bQBHovFTzkjyoCKZohfFOOzmF6WVOfLnB
         LRsaJKyeaPoeOn+20+JHdzSHUGm/V8Jgi2V309GaPsBwo1mr11gEdKZit2Bmi4j8fQxB
         4yLKp4oAooSI6m5r/Sogl2ZPvDUcK3frcRJyNZEvADmNq9qplBcoWQYgNv94Y1S0Kw1w
         4oIBuMSERG+fFRWRO1ZrT/9wLDMIMyVayigsBnwN5biXyjrooI2z6Lx/UaJxnOwq69U1
         iV4PjeLJ5ORrJoztvhkRzdoVCfjAyLExUV+h87egj0yv6SKP2veEsyB51iXYJnRPilJu
         ZflA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531F3uALiwcjR8PdArXvaDobi15s7Dq1I8jmN6CFXQBiszTh+Lol
	Jpdp4knxy0lZKJbSNrAXXHA=
X-Google-Smtp-Source: ABdhPJwJMCqUSUxEBiwpo7n3hnCTBYqi4+tD4d+YcwXMGl/8h8AIXxbxROvSEY/n/SaYTpBCnoKXww==
X-Received: by 2002:a17:90a:f486:: with SMTP id bx6mr6059364pjb.26.1628189923735;
        Thu, 05 Aug 2021 11:58:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:cf09:: with SMTP id h9ls5896569pju.1.canary-gmail;
 Thu, 05 Aug 2021 11:58:43 -0700 (PDT)
X-Received: by 2002:a17:90b:1bce:: with SMTP id oa14mr6004298pjb.221.1628189923243;
        Thu, 05 Aug 2021 11:58:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628189923; cv=none;
        d=google.com; s=arc-20160816;
        b=ONFzVTuCfJkm7/FiIeQrHMCGwqTf9J6JD5+sJT2kmCMLQr+erOgqMWBQy202mlOm27
         bEx9WUG+BU0Vx5mfHYxjNhdud/OpMKR9hYcc3olia84tm3ILI6HQ2YuBAmXZupE+bGTl
         Igv5CT2L/ZoDPYfid6ZK7m8tGS5uadaUbDuZl0/Q+kAduKnB/afmqkcUFGpekcZp876q
         W001MiMJncTBdqmuq78NQbuyFpKE+g4A/p4Uj1QyYTRfKBfyWY6P5kEJpcIX4aSEmqop
         U+kswRNdMbMYqEcVjnRNMk83G/y4f/beJTVRawc04kRcCNGLi/lMgXF7GddNXVQLdhLE
         SodA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cZOPBArOP+AoA5ituwCYOVA6crb6lYuyH4nFp2RnHbE=;
        b=TvatM2ivsdSWIO5x5uhM9ccXLb7AkeRErvyGvleA3HX8BzSRt8KJq3+4xwxwEvMG7P
         F5jpOkAULdFTxUNlcl/XvyTw5vW57GYM8ElSjVzFNRgb2ehmV52U4nP6HrExi7gUxoA5
         Qq8geIxuUZgFXc3g8wLr9LuyISP0x2J/t8Cmsr5vdQTD2CqdnuXCUdQyhBO4WhkMNW/D
         IvWH9KGutL2afkwSvTEp+l3ePptKImdvW9YdqWzBqB1OCSQI6B+v983M8jGzm0jbCFiT
         zSrJNyF1+yQ87J67ogjU5t0lo1T40dzJmyLO8/G09NOysfU1Jfxu4cfEwefmzirvb6p3
         6jAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ao+LtVb+;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v24si399651pgh.2.2021.08.05.11.58.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:58:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 750F460F42;
	Thu,  5 Aug 2021 18:58:41 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2 2/3] staging: r8188eu: Remove self assignment in get_rx_power_val_by_reg()
Date: Thu,  5 Aug 2021 11:58:06 -0700
Message-Id: <20210805185807.3296077-3-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
In-Reply-To: <20210805185807.3296077-1-nathan@kernel.org>
References: <20210803223609.1627280-1-nathan@kernel.org>
 <20210805185807.3296077-1-nathan@kernel.org>
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ao+LtVb+;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Clang warns:

drivers/staging/r8188eu/hal/rtl8188e_rf6052.c:344:13: warning:
explicitly assigning value of variable of type 'u32' (aka 'unsigned
int') to itself [-Wself-assign]
                        writeVal = writeVal;
                        ~~~~~~~~ ^ ~~~~~~~~
1 warning generated.

Remove this branch as it is useless.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/staging/r8188eu/hal/rtl8188e_rf6052.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c b/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
index 335b120ce603..77889dc05858 100644
--- a/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
+++ b/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
@@ -340,8 +340,6 @@ static void get_rx_power_val_by_reg(struct adapter *Adapter, u8 Channel,
 		/*  This mechanism is only applied when Driver-Highpower-Mechanism is OFF. */
 		if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_BT1)
 			writeVal = writeVal - 0x06060606;
-		else if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_BT2)
-			writeVal = writeVal;
 		*(pOutWriteVal+rf) = writeVal;
 	}
 }
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210805185807.3296077-3-nathan%40kernel.org.
