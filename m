Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBC7AYX2QKGQEKXKDW5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 783F41C5781
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 15:54:19 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id 14sf834170wmo.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 06:54:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588686859; cv=pass;
        d=google.com; s=arc-20160816;
        b=fu6P47xOwV8nptECrA+gJcPrrpV53mQtX3QYF7tEpDLjcdLYsVtaqokz4Yq6gwNtnE
         hPbRsGX/vYFxFFAtalmwOEe6CfPCEqp6BNQND3va97sRvkKxXeyKUFFWHrYEbM4sKb3h
         yiDz9lYVe0GhjvKDzJaB3dGACHaWIPNbPHpMiFQE4ddd9qncneuWo6k1fCSAwlciu7JX
         v438XZA+Hif+9a3ivaHadsFH29t9gYIhb4O6fCtsIdgi2Zt67nkp57D3fr/oRt39DILz
         84k7MmdRHI9tVivnV8+wiah/kUM2CEKXXTwd2U3qc/2BidQ6rNVGjsKn0FnNoGShvAw9
         FWwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2/VNHsnOrytbDWbSEwPwVbaNTYR+snxT6YuK37a0rNE=;
        b=hNluf9GtCXzKjGh7wSYk8NKd5OdsRX3d1lplvB1924uoJwwFwyGrQrHm4MMjIhgcON
         u66wx5ZPILb5/NbEPFM9YTqZAcLpPwayqugd1vempxDiU2v633UAf1kwryzav8tnVy//
         Y3FgV1jnHf71bA/zsJojYD8qQ8wcRQlJ194mU11xX8UW3ECesjZuKX0FtRBD9CB63J42
         fswyq4s2jVmlclFdTkM6OBT8J463qQayWbw5zoDBuBmJna341QaaNTUFiLeUk8GGZjlW
         kedyFoW3MHC2/iQJdxFKLB7kUriNA6yY6m7k3EcsnCqXqSdWNBcFhItJehIF88ZR5LHj
         pJLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2/VNHsnOrytbDWbSEwPwVbaNTYR+snxT6YuK37a0rNE=;
        b=UVp78SooMc4fu8tqqyTQ5DUSzCePDIa3UynYGUbPuiliQFxLa5OkuIIWWrFZKz3Zyi
         DsGz9tEuflCmVTDMbXMbrVQxHGJ2Tarex6vTudeStTO01HFE7h4KUluwk+I+Dp5HzB6Z
         37PLRvSERyo+gppewVuGQ+vNYBcNbhqdBT3Jw9F/hE6e67myGi/UNz2TBdCcPiY90nHX
         xvQ1bCOB4yDXkReUYpMkN9K/pf4dOPl6+mwpFxXqxvLM0msp+FIb94rfJogHxEuDh5xk
         xAODd5Bx9n+xdSJjIGaq4xvy25mG4MVVgdPgMRXSzk/CkGPgVkaCXMsLsq8nWRnJDBSW
         JRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2/VNHsnOrytbDWbSEwPwVbaNTYR+snxT6YuK37a0rNE=;
        b=G8wmLYERy9OtNvT9HbfYPnB0khgGJd1ZE22U7VsSPLT1GoextfTKYMdQuxqpktq9Qt
         ircNsgHJ38qULGDLsIbun7rJyzuARpFDOfWDXmWf/F3GeHBfEGH5UXLMNhTNNUjb5w97
         X94w2yE977nxaZE1E2sR/jF0jhgP68nZMOf2nLPpmW2vENus1VDyPUMpMgogY652SUch
         vxnHkpCv/5UJuL8z6iB39f8F4oE77+SgU8i5+EXxlRZ7DJbenRriGHL05e8cHRR7ZC+e
         3diKXdm9ELGDvnLXKGKXEVVAo99O93tpm6wK4rqODCEqOA7W6q22I1v/8rsTnhQr3JjM
         cD7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaymdL078IqTm2BdA55WdCqFPeO7E5o4RZgbXNk+6y/7llkbOPm
	5xyk9HAFAuc1ugOoyUZLNFY=
X-Google-Smtp-Source: APiQypKCb5A1FbPsFX2sJE/D9RQSwofvPPF+zaCfdHI4dWqkHDBqrqWnEi0FQJQp4Pyi+uhABcMuTQ==
X-Received: by 2002:adf:f343:: with SMTP id e3mr3725937wrp.51.1588686859263;
        Tue, 05 May 2020 06:54:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4411:: with SMTP id z17ls3493248wrq.11.gmail; Tue, 05
 May 2020 06:54:18 -0700 (PDT)
X-Received: by 2002:adf:f1c4:: with SMTP id z4mr4226929wro.25.1588686858836;
        Tue, 05 May 2020 06:54:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588686858; cv=none;
        d=google.com; s=arc-20160816;
        b=ekg6RUNgeKgiDnYobDIVPjxSHUM3LYFpQ2DP+SFqD5zoiwyIiut3CDo8ZjDw8BRU5E
         xRimI+kWI4VGnJTznqg1hH/DcyHOifg8HDAT13FFCsvz3gFdYU0CqdtFXiQHM5ski9lh
         skxvEIMbnH9nh5opPlJUcn42GttklYfThbvYuB9ATwQPDz1aKZaZl9lzFRJv7ntb4JYi
         Hj89QKPJiOeYMHh/4Lpc4hPNj9sqNUyRcgZTPkTP3wNUvOf/8/EFxCpu91Bco81IWr1W
         4Mn+f1txbtuwop5eYkNHICbKcBP3gEG+5gJSJ/yngGeR3SpDDwZXHUoAUdJdcQPlwk93
         H6Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=HeOdA2on2hSskGtDWs/xhcXIleU/3cozA+yDPf2gCeI=;
        b=wG9kzR6HObKB/XNpuQ7Jt4s4BVYWc/HA0rMrmmj6qo63hSJnaUiiYrKxT/wEVsYuXL
         sSMK+BTMVUkW0DKyyfUkOm9VZRW3QVJuAWpRDyBm8geCx9dwMJvdYpXzNzloru+aBptv
         WNff/YHMeXAbs/BFabZZ2x4vIyW+8qQ/cY2WiRL/VhqA37rqfUgleSOXtFmw82KPDqhW
         WMx671E1Rp6ofrTWuiMfnKylMW1MBNVkiiHg/DB4D3B4mUq8STovEJq3Nmu280aIdFEk
         4R5WqMMmWNZx7kLTWiVz03MFG8Mjf+0c4Aw79j3KS9Qa4VLEjmDBQLGb6fhEQfmsRh30
         dWbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id u23si217180wmn.0.2020.05.05.06.54.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 06:54:18 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N8nnU-1j2qMm3NRe-015q6x; Tue, 05 May 2020 15:54:10 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	David Sterba <dsterba@suse.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	=?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
	Eric Biggers <ebiggers@google.com>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] crypto: blake2b - Fix clang optimization for ARMv7-M
Date: Tue,  5 May 2020 15:53:45 +0200
Message-Id: <20200505135402.29356-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Jcy6N4TaUxzCTLGwDtoilz/VHBm8v5Cw2d3wSP9VaYY8DkkSDHc
 IjwbOhFL9N5vR7J3y8bL/HUgEQnv+/SEY1R6u5YlCOKSjKCeyDhZKQbc7NIMiMLvgLL9X0M
 ss0Dt2APwE1Lac9XpGyvrEmmt3SkvzgIZ/aqUw7TCW6ToUqhFuq0wwYhBIdXnNsP3ZbzwWV
 MVb8xIdXIzPH3B8jw2rpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FPPapW6OwyU=:sEXclkv4xPKGjOnt9Uta2g
 hkqp13EKC3+UOv0CEpd3Yxb8ku6UzK4m/CBCOryA8h19RJPscvHigxY6u5s5trj+X6OTpBzLa
 cP8nvCiII6HHi0fqR1tmrDAakapg24SczjInVPUkWOfxrq7ZU0Yjg81RcahSuenhO3KcF3U24
 RZ1NIKhkiRTxshPT8cfU2ILWholcmBtT6T5BDpgyyojL1hEsXgNpMGqR8vqnRwNDIUMucnN+h
 UG75soVBhGog7nkc3POBjgMMoJAFQGxcANnsv5GQcfZDied5/ov7luD5kLiXinGakUi+SnXK8
 CXKhlNDmNUktwMj2ezTPm/iQbfEtXGDqK8sW7ugqUaNl7hXZSp8tNq651fyewNk3HWpsnOgUm
 C27a/IyGBQPFe/lLgnPoX9kGhjENlTLLbESf+ebr2K0XgLzNWVttSPSd4qsoZtJsSivrrWfkG
 UAuoQBzqlWibuGEXAtw8LhI0l63m5vMK+H9EF5eSeEKJDkI3pWMKdbigaeHJOeFBddyLfxmbZ
 Wlz7q2qXPuFk9xBv2mUJNoW5MBehuyGwWv34y89Qqm1aKVPHOqX8olmTVGoE+sotqmwxYDayE
 SEvRyDZiepoEOehh078W3aoVC5KuTJuxUJSyjOdbQDnihCDCXN2pmSoDXA/gq11JjURDzDZCn
 gAk9emAk/PGP+pV2hPQ0mq2kel2UmqjsB3Gssfa6YjWyIZas/gy9PsqjCuys6bStZLbzOyiuL
 sFxp2GRdvXm60XuBgRprUAFyWZ2L7+2ujJSYBl4W/AY7uqSrl7jsj76o+DM/KV9HedOjLoARp
 zB0ISZaI95xb6BoxaptJWDjFl03AaYhkaWDVOezyZF5/FLzwWg=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

When building for ARMv7-M, clang-9 or higher tries to unroll some loops,
which ends up confusing the register allocator to the point of generating
rather bad code and using more than the warning limit for stack frames:

warning: stack frame size of 1200 bytes in function 'blake2b_compress' [-Wframe-larger-than=]

Forcing it to not unroll the final loop avoids this problem.

Fixes: 91d689337fe8 ("crypto: blake2b - add blake2b generic implementation")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 crypto/blake2b_generic.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/crypto/blake2b_generic.c b/crypto/blake2b_generic.c
index 1d262374fa4e..0ffd8d92e308 100644
--- a/crypto/blake2b_generic.c
+++ b/crypto/blake2b_generic.c
@@ -129,7 +129,9 @@ static void blake2b_compress(struct blake2b_state *S,
 	ROUND(9);
 	ROUND(10);
 	ROUND(11);
-
+#ifdef CONFIG_CC_IS_CLANG
+#pragma nounroll /* https://bugs.llvm.org/show_bug.cgi?id=45803 */
+#endif
 	for (i = 0; i < 8; ++i)
 		S->h[i] = S->h[i] ^ v[i] ^ v[i + 8];
 }
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505135402.29356-1-arnd%40arndb.de.
