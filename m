Return-Path: <clang-built-linux+bncBAABB4G7QLZAKGQEQHEL3IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D610156D5B
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 02:20:50 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id 107sf1960179uau.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 Feb 2020 17:20:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581297649; cv=pass;
        d=google.com; s=arc-20160816;
        b=B7RpR+Gz+/vOOne0+gEKpF/2HT6JD2ZvUJDw/k2LHKkR1GYy38M7MONPaYCkn+xai0
         wxpBDibPEoeKuznvp02S1mTEAojdm2Xa1043En3Mj69AuRPs+S48N73m+MBhOPE1io24
         2vnmO5oeDYh1h1DKRP4Q99He3jyU8b3xtui0MpkvxbBj4zD5tSy/Wlf7mb61gOXohi6a
         n00AzskewbFm/Pephgl/BxDmmHJ+gr79TGcsKa7zSuNX14/BNEY6vbJtzK4jXi6VkPN2
         78i1ftI3A4zSkT5c8f3KrvPmR7oRD+YDuSOY+sbjZIntZ60eJcWfQjYX8zeYQKDm98ve
         O55A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3T/decvLDz3I1rEnR7KvjRNECMekl9nuvm6hEN3zwPQ=;
        b=gLe44o9SjwMrQvQL+/e+ETezcFA/cKnO7NwVyiBzUnQqbvn2iQtc7fUgadi3ezSlSV
         L5cyfwI2tOQmTIShIVtnGGNRv9bNRYNmKzdWT2g5TBmexwTc52XS1kItaDNN+kmn9Zg5
         6boYhpsCEEYDPjjVYqveOpMS8ZUVI76VN2GLdtdx7kgKS2Kds08ZDUuoWW56rSjlKVUx
         EzRB1fEVcdlfNyibqlio5Bcxw8jboso9YAoAAHunGL190uCf0wLWCLKe1P+WvbJt/Uvi
         0sP80sfL56Y33LzE0u3YpVoLy4uzutAkHbb7jfApZM48joEbkvIQb47Uju0FcK2vpgrP
         prMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yaohongbo@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3T/decvLDz3I1rEnR7KvjRNECMekl9nuvm6hEN3zwPQ=;
        b=SZYlCH0XNhYPSmMSyNE8kVprc8FT2pA+FDeLMjDm107jSHq6nl8FcPivV4knrt08A9
         XXP7VEeOpuWGn/ITytSGW64dlyQmPXQK+34bvBCRew93XRzCgtCVpGM1mvwFy1f5XDu+
         UYrsIVLVhRCYr/QvZ1zo0YqdZ//YW6iYEJThc58lalPQXfWLmsonObT/A+MefAif2nFD
         JgXODXN6/6SgmzzqqjU2ufbHN4IhlLQYdPxwW3rRdbEUkri1F7MgwcVggB6eLdnsaXAB
         wb4ahKSBdgVmbxuc2oA7kfvO2YTsFLET9ZhwUQXWiq58uzjcAFhPKkiZViWMER8Jdujm
         9kgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3T/decvLDz3I1rEnR7KvjRNECMekl9nuvm6hEN3zwPQ=;
        b=YAPArgmZmKqBgqcDLCoUbwoYzm7wnHSrFj8MrHJyK7KfsPd31wpm0FwZZejJZrfD3Z
         KLjmwcIh/ZD7BM9b1mLXTqsJEFP/t16uWblj1eCLny836Upyreke4PRONUYdJPtcpfUo
         hFZ3CNTnMbAPjQds0SBPUacF8eKtEUallsZjfdKND5Tp/9R06hRd/LxI/PZ5Rz62qOjs
         j+1RZCyM3UVG59xGOkWl7v87a2P4tLhGAjD0cAA5NrtjoWEBhFYQietAVIiaPBq/M2yH
         PNW0Xeb0FBJHZ+Yh2GHcX/c9ALuISWKXKfwG9NZl8N16TqzR64Eswmu1A9xE66pxk60m
         R02w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXD4PXED4rWzwijh2Wcdg/PxB3SxuL0fWhUWvVwZtApsuerU24y
	LnYH3O4QLc1T3UK41+I4pNI=
X-Google-Smtp-Source: APXvYqyZAV3FBYscqCcljRa4QDhnAiehPQC0o2QZp68baVHpQRBEVg8jtXoOC2TtQ6kiblio6r72Bg==
X-Received: by 2002:a67:af11:: with SMTP id v17mr4668171vsl.99.1581297649017;
        Sun, 09 Feb 2020 17:20:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:804:: with SMTP id g4ls529429vsb.11.gmail; Sun, 09
 Feb 2020 17:20:48 -0800 (PST)
X-Received: by 2002:a67:bb19:: with SMTP id m25mr4890119vsn.68.1581297648731;
        Sun, 09 Feb 2020 17:20:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581297648; cv=none;
        d=google.com; s=arc-20160816;
        b=T6oHrANiRR297AlyoE1s96VFw649LRiza1XJzp/8ky5TEXYRf6EponNB7PaobSsvx/
         LLP4cOgNdunq7xKOXEfcfzL+6TgTIga+yqp6x9Pu9hXCoZal2nesdiPYwmFYNDxO3VOH
         xxm0jJSPFlsVGL+tBd3L4tVxbKwDSvLyufhSoco8lZmZXFarOPztG607YvF7PtZR+S8p
         ftQC/jk78GfED3WochPlPsIJyg7hcXe5+IPb37G37VOy1vLt4V4E2KyLXrGKOjHOK01M
         YgwW1Z/yaLAgh94IZGHHtIAHav6BIpuTtkxwzdzjt6VxVrhqRlvhKQQu0IXKK7vAPqaC
         VCiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=3RZ/JiYZBBAOwoMI0mqtMEp9/czGmILq/vIegtgyhZo=;
        b=da8QGasy7sQH5h+d80evrtdRrss0j5Sk1UX7/2QB9naByVl0ewzhL0X/n0Pfcg3E7w
         2c2ABXNgKqpSCcetk00qI+uriruJCBkv9eXhZ5+4XcYnWfsykDbQApw3lgo0xHOPKfWN
         iFvhn4Yf+/BUSqafFSc2M9WGS1LDKVd6oHPwuGiV2asTxHxOx/hHrBoL7qDiPCR+lyra
         a9MQR3YtLgRvT3xa+c36GbuF4+7gdQjw+yG5s8D97giyh0OPuDDRJstkyJWb3jG8In+r
         vsf28LDT0SlMiO+okiyyfmQYT9ymBpHuOAWyLIzYwmIJ1+pPlv/E4RliHnEL4ag6y1O6
         YDsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yaohongbo@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id k26si333327uao.0.2020.02.09.17.20.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Feb 2020 17:20:48 -0800 (PST)
Received-SPF: pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 2EB9D8629322D0A65290;
	Mon, 10 Feb 2020 09:20:46 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Mon, 10 Feb 2020 09:20:36 +0800
From: Hongbo Yao <yaohongbo@huawei.com>
To: <ast@kernel.org>, <daniel@iogearbox.net>
CC: <yaohongbo@huawei.com>, <chenzhou10@huawei.com>, <kafai@fb.com>,
	<songliubraving@fb.com>, <yhs@fb.com>, <andriin@fb.com>,
	<netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
Subject: [PATCH bpf-next] bpf: make btf_check_func_type_match() static
Date: Mon, 10 Feb 2020 09:14:41 +0800
Message-ID: <20200210011441.147102-1-yaohongbo@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Original-Sender: yaohongbo@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yaohongbo@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=yaohongbo@huawei.com
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

Fix sparse warning:
kernel/bpf/btf.c:4131:5: warning: symbol 'btf_check_func_type_match' was
not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Hongbo Yao <yaohongbo@huawei.com>
---
 kernel/bpf/btf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
index 8c9d8f266bef..f24868a4176a 100644
--- a/kernel/bpf/btf.c
+++ b/kernel/bpf/btf.c
@@ -4144,9 +4144,9 @@ int btf_distill_func_proto(struct bpf_verifier_log *log,
  * EFAULT - verifier bug
  * 0 - 99% match. The last 1% is validated by the verifier.
  */
-int btf_check_func_type_match(struct bpf_verifier_log *log,
-			      struct btf *btf1, const struct btf_type *t1,
-			      struct btf *btf2, const struct btf_type *t2)
+static int btf_check_func_type_match(struct bpf_verifier_log *log,
+				     struct btf *btf1, const struct btf_type *t1,
+				     struct btf *btf2, const struct btf_type *t2)
 {
 	const struct btf_param *args1, *args2;
 	const char *fn1, *fn2, *s1, *s2;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210011441.147102-1-yaohongbo%40huawei.com.
