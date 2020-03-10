Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCM7UDZQKGQEEUWHYRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id F334D180B2C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 23:07:06 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id b5sf397915ywf.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 15:07:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583878026; cv=pass;
        d=google.com; s=arc-20160816;
        b=p0c/AHHNRAhRO/iO1CLjTxxpUSeGwj1XFf3XcHMWTaXagSI1iG6CxJAshO7pYLns6o
         /DGgWuWk/tRo1vzLBbzsvUsCqYc2c8hWvFgu82suWV/mrj/mhnoYldhUhZ0YQMKe1E2w
         avk86PWMwvNxV/ejwFNLWAlvDINIflxcTrzpnYAGfHCD164FXA/QuEe2/PRHJfrhyLMj
         3bPTtLzt3gqUvGhlYv3EzlrbuY3yMlteexYUvuv5N7DfFV2tR9hapNKIreHsyJahIbY7
         l5Phvxy99RgVXhFeoWJ+XazOD3iorF8diu8z+t0Vb/FZ+6hgTY/P3PAipPcmLxd5TvFk
         PqaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=WNhm0CEl+MX8NszVdlXiNzf/9gAsXbzwIN0siz/sRsM=;
        b=uIpsmK5aTTOWnWWtiW7yGdtOXNFa71Fw3TNrsBPPogB18kBNTAgPR/0X/4+7etYuos
         dm7Vn4iV2Sx2djSF4oLgv+jLtCfgWpLfjEz2bXVQEKitGNCn39ZpVGl4Qvy12J/oSxRw
         XQ8pPvA3mlhVJ5xCPEnG8vs6jK1SQYcT5pFJc05JPvC8mb3Up3ZUX9vXLDRp2Pf4DvoH
         8WvnSDcHrLtJ33dejPrPnvI4RBcOLfR+cdP996bkWuWMGCmjwxHDXsSSnJMIrIKmwCW7
         cgoDsN3wCTwsUZbJpy2QVuE1jxfz3v+dkZqb6pIlhAq9/Ly98Zo4i4Wtcyjdk3ye4Ora
         WrOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vuq4Ru/c";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WNhm0CEl+MX8NszVdlXiNzf/9gAsXbzwIN0siz/sRsM=;
        b=NlgxB0eaO/cCnji0b2yVlabDKBWOCMNEmDrgPHvhdq5cNdwVXpPX2SrngAn/bA51aN
         5jy6d6nZXu2gC9wjto+JHE5EWKG3ZnaRVMraqOAJv9nXE05nbZCck6sxwC6P/TgUvuI6
         QIVrvP/vFY94ok1mkCRFL8iVBxo7mtIfl3WQ1n/Ua1x/xr/CeHZCMpV0kpmSvoY4e9Xn
         yLTU6L4QDpQgDYijmn+I8ZZiKeDSTsnRNeguKemDfWt0gg98hLk+y4PS1QYelzGw1qN7
         tKLX4oWSx+Q/10QQBlbje9Yg8CCus4S3pIZyirOQHrJ98PaTAHeEJMxe7WVJKx250BGP
         YoYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WNhm0CEl+MX8NszVdlXiNzf/9gAsXbzwIN0siz/sRsM=;
        b=uOPbWg8BlS2h3plbNouybxK12Bn4e76BhlIawQpUkz3QyAuBnjeIKEVWqseqhHwwqU
         g+3Cgeq6aqsu2Lg3D/s0qknupGNw/Ozh75+TBzdUXuncu4UtIym4kHQLWjvW0Pj9O4yP
         1U8hZKa6qRkSPLybxZQf5K9UNAX7AAsCetIpMh0mSl9Q1ep2rJzvX/7MyNLNmcUaxvxA
         lfoWWG+NbFmN7AJoawOBl8G8EKlWCWq3xMeOPfH1ekNFzbFFD5AzSgIEvZbHGPbK7Z0H
         Lz/fJiuCKry43RGhnX5AxBuOkAp8MhGagaXWnu77H1U7TGBwYr1ZIKazY4i30Y6P5uJ/
         Y0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WNhm0CEl+MX8NszVdlXiNzf/9gAsXbzwIN0siz/sRsM=;
        b=jht8yUmZcXGREGGnRJptccSCpbGLVAQA7TrafmUvI3VOFf6MsAGSYpNTkMSI4MHqiY
         Tg89Ayax3mPN6399k5oyeSMXjc2ztIotbDwVWnLJm4CehEiGsG3dY9Z9N2OBjHiZa3Zm
         F2Gu4Qv+OURggeVDDJ1DSHXtM33v+TzjgEEQLJj9PUPpxNSlvmF8qFiz3XkJy6i7GM5L
         ArYcZlVrHvU4nk9xaHOsPNxsfKjMAmcPC71f3Upw9LZeklwIwj4/0VnnyqaiI6IEFgnC
         0GlndINuCgMbspc6H4vXLgJif1p4w8yMMMmgXQTbgZTrmyKw32ATfBlPYVno/tm6y7j2
         0E/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0YfVOcTPF6lweFo/hFGZB3kPeiNvMwIew3CwvxLTXNzJQhfo5N
	5MC7Ot6ZYvt8f/jbgMHpBy4=
X-Google-Smtp-Source: ADFU+vv+sZGrcOetR1orlTkfdTOqYXPSwRid9oghKFM3RikjSidXPILJxb80kS0eS9JsLyUJY6fY4g==
X-Received: by 2002:a25:f208:: with SMTP id i8mr24842247ybe.482.1583878026041;
        Tue, 10 Mar 2020 15:07:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:883:: with SMTP id e3ls1842055ybq.11.gmail; Tue, 10 Mar
 2020 15:07:05 -0700 (PDT)
X-Received: by 2002:a25:ce4c:: with SMTP id x73mr25798222ybe.399.1583878025601;
        Tue, 10 Mar 2020 15:07:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583878025; cv=none;
        d=google.com; s=arc-20160816;
        b=pjbFbK6ky9PRjX61tTNPBU+m3LgUQqu+n9rwB4dfVjN+CzOsR99ZDJGZDD/5O9+ovC
         vbJiXGWwVfITKL1MnjDfG1YLlQZHPWFHBGqp/XSz0UMMMqVfSo5X9X4oh80jx6EVIgJH
         7p9lxB2dGh1qTxzm4HIq3xC9sECGxcGCicRxuLflyAkeB+IlcbfYII09hX4AaXs4NwLX
         JrmpTm8aIeVHZ9hg+lM6Nn5aKOAx+yPBRedLI/qTKwFRdf9koWyYIWn+FkrrrdUwFVEf
         H/j3JSIzwH7RolsipbgWImcpCYqX53L2u+4WPDyJ0BohIWY4AUXvF5KyqP1khTMlFmh8
         EcjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Y38QgXkGtAvFVzU6lmPevVw9h1a8jj9S/o6E0neojR0=;
        b=OKQZNg5CiUX2k1DAOJUfpFijnt5y1xHqyImngKRpoXNf640rJkPPvghEXhkxJQjhPy
         Xzfn1KNmok76i+/SSxGrMJD+SPul5CVdcXC6wOaKNPfkEVeyapmgWsTh8ft3DW3pUP5Q
         upLDE58LUWUX01NQibds/epiGqexMmhTGYWf7csRB0gk7Auj5RqOp3XrjLUZ0PLAV2wR
         9yaGBSuqq83FTCrmXi8COQDj2jK8SZNw35ssCSxMeAvuV+3cl7hVUNhpJJAqpC9qI06z
         KYS+VaaFar7gOorlL4exRG7Gs2WuKHRZwbUp5kEuyyop/BQ8Lt4vHfOlA/jBzTZ4m/Za
         Hl4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vuq4Ru/c";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l1si14630ybt.2.2020.03.10.15.07.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 15:07:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 66so14783654otd.9
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 15:07:05 -0700 (PDT)
X-Received: by 2002:a05:6830:23a3:: with SMTP id m3mr7323386ots.265.1583878025091;
        Tue, 10 Mar 2020 15:07:05 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c12sm4733153oic.27.2020.03.10.15.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 15:07:04 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Madalin Bucur <madalin.bucur@nxp.com>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] dpaa_eth: Remove unnecessary boolean expression in dpaa_get_headroom
Date: Tue, 10 Mar 2020 15:06:54 -0700
Message-Id: <20200310220654.1987-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Vuq4Ru/c";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:2860:9: warning:
converting the result of '?:' with integer constants to a boolean always
evaluates to 'true' [-Wtautological-constant-compare]
        return DPAA_FD_DATA_ALIGNMENT ? ALIGN(headroom,
               ^
drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:131:34: note: expanded
from macro 'DPAA_FD_DATA_ALIGNMENT'
\#define DPAA_FD_DATA_ALIGNMENT  (fman_has_errata_a050385() ? 64 : 16)
                                 ^
1 warning generated.

This was exposed by commit 3c68b8fffb48 ("dpaa_eth: FMan erratum A050385
workaround") even though it appears to have been an issue since the
introductory commit 9ad1a3749333 ("dpaa_eth: add support for DPAA
Ethernet") since DPAA_FD_DATA_ALIGNMENT has never been able to be zero.

Just replace the whole boolean expression with the true branch, as it is
always been true.

Link: https://github.com/ClangBuiltLinux/linux/issues/928
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
index 190e4478128a..46039d80bb43 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
@@ -2857,9 +2857,7 @@ static inline u16 dpaa_get_headroom(struct dpaa_buffer_layout *bl)
 	headroom = (u16)(bl->priv_data_size + DPAA_PARSE_RESULTS_SIZE +
 		DPAA_TIME_STAMP_SIZE + DPAA_HASH_RESULTS_SIZE);
 
-	return DPAA_FD_DATA_ALIGNMENT ? ALIGN(headroom,
-					      DPAA_FD_DATA_ALIGNMENT) :
-					headroom;
+	return ALIGN(headroom, DPAA_FD_DATA_ALIGNMENT);
 }
 
 static int dpaa_eth_probe(struct platform_device *pdev)
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310220654.1987-1-natechancellor%40gmail.com.
