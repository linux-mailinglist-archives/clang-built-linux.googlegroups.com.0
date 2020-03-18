Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6UVZLZQKGQESHYV3MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3953018A4AF
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 21:56:27 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id x126sf53899qka.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 13:56:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584564986; cv=pass;
        d=google.com; s=arc-20160816;
        b=ppmi7IFXa8VMci58zVmcZdF1YfVI2ejqXTfxzp/TGVCmYu6yKYxBO39jzxJQjZP0jW
         XccyoGNsdfjs4vqSDlPjpB0V7XX97YWz+sUkoMDOwMpRI1EpzMXZXBCR5MkYkD5g1l4r
         LYlzoOedAZ+nD3MjNmRQIFQyCy1XPhIt9s4PNc15kSHKsgj4x2Y0CkObIJ8SgGYz6SDS
         7YOXKKaPZ/sylx9G2etefAFAegL6RQDacXQg0umujv3yf+6Ax1PEEJU5A8P4eR9pJibb
         oihNiNmUKSGYwE2rHBLZ0MFjO0u31iXQU5KtyrCuCEIvsBjK5HybmvKruOR38/p2yhoT
         POuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dcolA3q23ZdAZ+Scnzqe9fzWcZhV8d8NA1NfMoYq8/8=;
        b=0QZHzaZjwUkSwruXwI1R74anhXd25yt6EYiFTNDK01zaflg0K6OMwnz5GKg52q9dIS
         2K1+7Xoeokfd7g9c77HaUNa6wVMTGhaLJQl+DbTDS8PDJkxZt96sIqu4UX3LTNLRgBiF
         Ajeoma1d4G/Q3X5dEHyYVMAgdjrU0w3PSL72bktcbIGQ27ik6+S9Wt70Kg66qovhlp5H
         fGdNu2AvTOyGLmiwlgmoaNQ3b+EUCjPQadtAr7BwxSLLv8K9Druu1Kme31NvwV8/RbNw
         Ip/tJl/RpU6gF6GEwFa8gcYaVjV/m1ariyUG2HVkHcF9mmg6FqVVzPte5yG1JDf0ymoM
         oR/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wGFtqFyc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dcolA3q23ZdAZ+Scnzqe9fzWcZhV8d8NA1NfMoYq8/8=;
        b=dK3WSa4zJL9eABW7hSrffa7jfbyWX492ndTF38ykR+QsQCSw2BBcZXidxBFdqR5GWa
         ViJYXnW96l1+5dTBQuocdN05dtXtvL2uOWrYs7ksghON9D2eFPoHMLGNv4vNSwOm+d1G
         8u41y2gnZHVdMOqUCmKyaqk5fAp5sgLi5QwAoqtIGha80mU1fcFT6zgpz9VEVEkGbxn4
         8DOo7cGI1Nu+1758+lEQTfP72HkwPfMag3pvoMt/1IikgjaZFLdbDuogImfkQDP8DP6s
         oXK8VKu2Z61V3qeBs4FpaiqhjWJvlQ3b/GCzztkngIOdjxRpD+ZuCkAUZFaXOj1Vlxh7
         DXpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dcolA3q23ZdAZ+Scnzqe9fzWcZhV8d8NA1NfMoYq8/8=;
        b=f5jgWPYsruAjWp8GZJmsvuNkvXvaBCzJSMQbvvxuWRfkJtl1abAJH/AFBEAlnPM0/A
         CNdvz/ZR8eIZLn8BiwTRR4k8x8DgGNCKjhHPqWtZ3zZ+lVrKPOTkjlOFPWJ8pwpyhjk/
         o44KstxVprkL4qmZiaq2lE8YqxAFOw98kmr1YyCYcYq1MBp6nU+0FD84Z57KQkYhXftS
         th9qlhjOsqDpBaqN3QvmXqyotUm4aLe/GeXReDPFOii2cm/ISH/ABm0bkA1lPjjAuV8G
         3TcA294XQwt+7fUAEveUHYa6qL13fuJPn/jm+LZEt2YYeRRYVXiVj/vrSRQWxewkUhG8
         jTAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3g+zIIqIQHrUJDRjNKSyFRucnmfjjXqOj4OJgg4epbGbokB0ZD
	3/cOeP1BG1Xz/1RI5uYTtzU=
X-Google-Smtp-Source: ADFU+vuak3OC7EfyDceqHhf07+rt2ZHTMaVKhEBIsRptztiBaph5JECvxOVGA42O+fGJzoY5Zh8uxg==
X-Received: by 2002:a25:dc91:: with SMTP id y139mr9932522ybe.252.1584564986157;
        Wed, 18 Mar 2020 13:56:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cf0a:: with SMTP id f10ls6994656ybg.2.gmail; Wed, 18 Mar
 2020 13:56:25 -0700 (PDT)
X-Received: by 2002:a25:6605:: with SMTP id a5mr9977903ybc.496.1584564985809;
        Wed, 18 Mar 2020 13:56:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584564985; cv=none;
        d=google.com; s=arc-20160816;
        b=Y1Jchl9XiAcxnxSNfpjQGszUntrKXtkqTlZ6fozHAWSOFIXRE3FSj988TSNl8n+wcF
         FIBCGe5duc/yLJjN8tMBbV7NxUkt0IwUTSuJBmIBTOTvTmCjKQtF+0H7xfAHLd0APUKE
         v9oooGW1T+VR+1T+98JxycZrOfawBdxFkblxeaVHl04jUmS8BR9pXkLr73kZf/P8X855
         axdy+vpES1VuWV8kbmiEl9BJm7lXvt/ZrW6LHu5RPf5Bnc/PwmFruFivLCaH/+zMWCIB
         fenGePDA+SbNW5arMmbQo2Hl4cjuhtN6pUU1QltE8lIZhzIpuD9eC8vscslSpRMiAGfy
         ar1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VYTyjW0KBdUymFvcSGU9QXFZmERZsw7Z0/GrJLd/coE=;
        b=CAOh0HMhGv4khoDTWgl061TXILElfkwbk4Q0q76P/fCdPcr1dq0SdAkJOLEyc6VmtB
         xRv9SdnHi+OIqh31Z7xJyJYP8k7ze/KKRVLeRNN28sL+OnNgYUKEvc8H06EwArBmgQUC
         G7queKZfOKtX8HKpGqANH3VNn7zeT0IGuKvdhEDpLD4I2tAIDubx0dDsui8K9C7zwouW
         by8mfyvuWXDdIKp5ADDyqjT13UI1iwnA09QH42VrCkxwMXTp4kxrW2ztoDWdNMGQc3fW
         3AredUcaDF7NYcjaKrPrtXlLc1JGpdsCFAtVQMbvRnd6h4jMwAR77uDfXNSkLMzUFteK
         bzjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wGFtqFyc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e131si1705ybh.3.2020.03.18.13.56.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:56:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 25D76208CA;
	Wed, 18 Mar 2020 20:56:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Madalin Bucur <madalin.bucur@oss.nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 25/28] dpaa_eth: Remove unnecessary boolean expression in dpaa_get_headroom
Date: Wed, 18 Mar 2020 16:55:52 -0400
Message-Id: <20200318205555.17447-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205555.17447-1-sashal@kernel.org>
References: <20200318205555.17447-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wGFtqFyc;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 7395f62d95aafacdb9bd4996ec2f95b4a655d7e6 ]

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
Reviewed-by: Madalin Bucur <madalin.bucur@oss.nxp.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
index 39b8b6730e77c..67246d42c3d9f 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
@@ -2646,9 +2646,7 @@ static inline u16 dpaa_get_headroom(struct dpaa_buffer_layout *bl)
 	headroom = (u16)(bl->priv_data_size + DPAA_PARSE_RESULTS_SIZE +
 		DPAA_TIME_STAMP_SIZE + DPAA_HASH_RESULTS_SIZE);
 
-	return DPAA_FD_DATA_ALIGNMENT ? ALIGN(headroom,
-					      DPAA_FD_DATA_ALIGNMENT) :
-					headroom;
+	return ALIGN(headroom, DPAA_FD_DATA_ALIGNMENT);
 }
 
 static int dpaa_eth_probe(struct platform_device *pdev)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318205555.17447-25-sashal%40kernel.org.
