Return-Path: <clang-built-linux+bncBDCPJMFX2IOBBUES42CQMGQEY4KBDPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB1B39B01F
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 04:00:50 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id v16-20020a0568300910b029032e3cb976e3sf4234542ott.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 19:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622772049; cv=pass;
        d=google.com; s=arc-20160816;
        b=zNmKF4gTILgi57F7E9LuQpgLFpUyix0Fc5+W4QOehlNizgniWL8fg8dfHZKv0CV9SL
         hqZC7yfiUg3jA09pLQzcwlpnR8l43cOTjBzddACLzcYj4ZvOEJEn8iZwt4L698gAiO5i
         B0oM9bbB7qs3FI6HCuyjBI7mwF/bdaFw4JruswzLHj786pl482b/IQF0sV/x2ae1IsDD
         Eo8mnkgH4QQd2UDfYoyKVZlzpI/W9mEshlCS2Gv9GbBRybSV+QMS4xg36oYgN48+BKiA
         tkaWoKTqr8TUVEYIVZykpE6zfmvrFo/p4SOC3qeX/Bj8gxgP58f/x4jqP6uBXazVHuch
         2ULQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=0lJztX/UbDWZJBKYH8ZaWcUZxebwdvP1LBiQtC8gBVs=;
        b=w/KQ7txg2Wkhs0GdtHCSlvu0iQE/VvQyUCzQW9Afi85A30T9T5CEi8aIvns9hUFbXZ
         WY5w+lb1c4wc8GOo7PSlZABZtG7GDC8hrBRr5u54iQ3UF1y5XH3tuyBsASoWqmBPqbOM
         ZPD5rqpeIV+O5o9N9HoXtzWV5ReCNYmtQYwvHg5caJBlNjGSlKIijUi3jxhUXrvZKrnz
         /oPQD2XkMxLQ/A0i7H0U+J91EXmjrqRA+ykEzLyQiJwMnSlNJE9NtyLdeVESPZmAna0H
         N0AndXHLu65SvSOXylT5I8Kc48jbqCBK2Lw5/LBtdEG/Efv19eYlDu/YcLeErZ4gu9wU
         I91A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=luomeng12@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0lJztX/UbDWZJBKYH8ZaWcUZxebwdvP1LBiQtC8gBVs=;
        b=RqcQqMN+aOs3jtfr4kb01b15VVaxGOa28owA5PO64CllzKyot+3f4SAc7GeRrVa2qX
         ibXQRTuQc0Til3jd6HXffH7SAkh1f7mXJP5DXBpry6dxHtZGA/mlkCzz+j+MK4GvEnyY
         qmwxVr464es1r+PewfDwHc8e3Oa2Wl+VHHxpl//FPWHeCXgwWEeMZmRVe3zEDiAFLr6F
         gjAziBEnV4r02XeREt3+1TsbdUuQ7djWkIQ4fz4UrL+rEV9EOzdWrQx36odb7FULPZo2
         UviLiRdUk8TpXqZkSLJp185NvYnl4VQc+dPTok3caAuAq5PQzLkxOBghv02MzOtGkBnT
         sBhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0lJztX/UbDWZJBKYH8ZaWcUZxebwdvP1LBiQtC8gBVs=;
        b=SMhuWy7uso6z2+8joa/dXUQcxboiIIArH2A0eKjbW6stBWh2wosoRWYR2dUirpxNbE
         1psLfJRLjtQbtDrq5C1j/v7PEPyP85AVxKC6ZVA53DLWz9wDy9+iL6qm/vcXiQKuSFoC
         58hXB9H3m26FVS//g28sLS6UgQE1l7q/Hgj1ytSRGckbHzfjbFPJtBe8UebsVyVS/Zn4
         J5AZsP4dbxRpIXcfpuOq0re5Fcuc0MLZIGB8J85OcqkhxOgXI6OpPLMrDzgd20ux/IHe
         SmVQa+0QoXBP8UcVRLZ1HnJHICe6zMhIDf6s83ANY7O8h2oZzjBdA8DRm4FnzXkQ5tCV
         N+tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ytNNEyoWRz3nd4eRQ3vIxZEslSdnvVk3PZuU7kumgcgGUuynx
	Pgs+wQFdvl7hOtSGGFCnSeY=
X-Google-Smtp-Source: ABdhPJzU92eYP478u/8+iDKxj9HIJEDEEKi677N5n9kJZ3+n/zEBZ9cAhnx5KmIHUq9RlsXJuU9iPw==
X-Received: by 2002:aca:1c0e:: with SMTP id c14mr1454679oic.8.1622772048924;
        Thu, 03 Jun 2021 19:00:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6959:: with SMTP id p25ls1765616oto.3.gmail; Thu, 03 Jun
 2021 19:00:48 -0700 (PDT)
X-Received: by 2002:a9d:6117:: with SMTP id i23mr1844060otj.28.1622772048572;
        Thu, 03 Jun 2021 19:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622772048; cv=none;
        d=google.com; s=arc-20160816;
        b=e1YUPfUuZ3d3+vz2CAeRIWgFbfRyZeS0DIUmTOVZ4JgreRE6jjk0GrHCfziy98ljYX
         T6vYCjpbteLIQA5J4jmuDHGNERpKnYmr0sqGrSspgqrPYiVBY62ogV0KQMS66juODu8+
         dmX6Wu1GiPn3MlTtrZMgaUcbwV0sJCSsxdTPmc7TDKXgCSG6/NoHvthyGneOVPi7mzwi
         +iGVILnCjx6Z4FJ0jEBep2OHRFZFNr3HQZ5VoNgCP4auwnjzXKpjf6OSqr2gxEhi11lG
         G5ZKN1ifkTINtoCugi9Ozug5TkPoVoiyfy37ZbjsC3f+U+M7hSPKH+l+qiUMp4IbrmiA
         sw1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from;
        bh=N8Nz86g9P7NaXfsz7D+Ra6qkeEamhzaRzZyNPAm3P/E=;
        b=MvIaORBNUFNdCvLdTf7thtQ1DjvVGlvewsqC7XxcD8sQgf7JqLEcWYLFJ4O+unUXtg
         mE04LaL+jgtVf7NpUg8xj0XyLlJu24w5S+tl02Q8deXfI/P/VIM+eZiUTb3NO7uxflYR
         AifhWXrZpElZ8MbJSjNzJvRvSESg5ekKo0Rk+zM2afnSPAWgrav1zUnDTtMNPn7y8bxF
         UskwWoAB8iOxK0GfG9HYdRUiiJAU/uyS8QV1EegMSO05zSWwWZJwtNXsPy3ul9rYgT7m
         VUwXBros4ZknIo186omslKdhvZsUOScMZIgYo4qbYLQuJZ8Si9TyHZetQDnFdXpNEw+w
         0C0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=luomeng12@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id c4si85798oto.0.2021.06.03.19.00.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 19:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Fx5Sf1sWKzWrTy;
	Fri,  4 Jun 2021 09:55:30 +0800 (CST)
Received: from dggpeml500006.china.huawei.com (7.185.36.76) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 4 Jun 2021 10:00:15 +0800
Received: from localhost.localdomain (10.175.127.227) by
 dggpeml500006.china.huawei.com (7.185.36.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 4 Jun 2021 10:00:15 +0800
From: Luo Meng <luomeng12@huawei.com>
To: <maheshb@google.com>, <davem@davemloft.net>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <clang-built-linux@googlegroups.com>,
	<luomeng12@huawei.com>
Subject: [PATCH v2] blackhole_dev: remove unused variable
Date: Fri, 4 Jun 2021 10:09:30 +0800
Message-ID: <20210604020930.3374506-1-luomeng12@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500006.china.huawei.com (7.185.36.76)
X-CFilter-Loop: Reflected
X-Original-Sender: luomeng12@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=luomeng12@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

Fix the following clang warning:
lib/test_blackhole_dev.c:32:17:
warning: variable =E2=80=98ethh=E2=80=99 set but not used [-Wunused-but-set=
-variable]

Signed-off-by: Luo Meng <luomeng12@huawei.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 lib/test_blackhole_dev.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/test_blackhole_dev.c b/lib/test_blackhole_dev.c
index 4c40580a99a3..f247089d63c0 100644
--- a/lib/test_blackhole_dev.c
+++ b/lib/test_blackhole_dev.c
@@ -29,7 +29,6 @@ static int __init test_blackholedev_init(void)
 {
 	struct ipv6hdr *ip6h;
 	struct sk_buff *skb;
-	struct ethhdr *ethh;
 	struct udphdr *uh;
 	int data_len;
 	int ret;
@@ -61,7 +60,7 @@ static int __init test_blackholedev_init(void)
 	ip6h->saddr =3D in6addr_loopback;
 	ip6h->daddr =3D in6addr_loopback;
 	/* Ether */
-	ethh =3D (struct ethhdr *)skb_push(skb, sizeof(struct ethhdr));
+	skb_push(skb, sizeof(struct ethhdr));
 	skb_set_mac_header(skb, 0);
=20
 	skb->protocol =3D htons(ETH_P_IPV6);
--=20
2.31.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210604020930.3374506-1-luomeng12%40huawei.com.
