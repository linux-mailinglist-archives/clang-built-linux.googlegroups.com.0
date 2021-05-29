Return-Path: <clang-built-linux+bncBDCPJMFX2IOBBXXNY2CQMGQEXKOUIZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 532CF394A28
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 05:37:14 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id t10-20020a17090a5d8ab029015f9a066bc3sf3862906pji.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 20:37:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622259423; cv=pass;
        d=google.com; s=arc-20160816;
        b=neE6TFJN0LhDu0SxntDaC8N0pxd8+Hu7J6C7LaxpHQJ0hxghZyX16Z+K6NhKB2Uljj
         g9TiKeJ9bpeLsqBD7z07Ybo8OJeplvDtFBIIFhZoRvinQ3AeCeE3HGcP748/s1YvnVFJ
         OQI5+71R4sIhpN/51tQ9ic4Tp2sZewaEWdrx/AnnoYlsfK79CrArp9bhaBPOMygQPvL9
         sIXlgYwxoP0MrvhAoJxpWq1AZAlwpCuA8YWh7LJjEoUqmU+hH3BKm0a6YIdROyhO5Op3
         Kp7ZsOWySzM33omVGDhaMJ8CIxKSNe/TKzWd45KttvtfFHfIsvoHvMkcGF46q5oJOzMx
         WxlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=8DJegtB7Dmf8Aaog81Rwn2mx2tQdCyzh9EH9HHKZgJc=;
        b=ocCbvrP/H6/ypR5g1pVTUk6TTNMiHHgyzhF5HYJMtzYxX8LXufA7kfw8veZwsSQIru
         G97D0Bl1p1vmyNRVmVVOA2DiLagvyGE5Jki+QZHgVPk5R/5e5XgIGyJH9kOXJkcL1ft0
         rBECEvggOrDEK2jokiJnbzWNibFqHrK8NiTdt0kobDQkuSOm/zNKt6xFxtI4SdFWPEgz
         CmMmljL3aKoG5of1/Kzg6AlZVaSJYUfboEfOPDSwC0VT9j+dudUDneCu694cvL7lpKBV
         x9veU9RogrwEnivSapDawImhS67Y+D12lZkxNOLJguXuGIKgn4pn9snlVrayjuB8Wcvp
         tyfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=luomeng12@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8DJegtB7Dmf8Aaog81Rwn2mx2tQdCyzh9EH9HHKZgJc=;
        b=hsihdR6hd0in1ZV4HPIt5jUGkwpbXdvVg2K0oTb8zsDcSRY6LfJENTnvAprWZN7FkF
         nRcHEEL/KNYDq4KnODe6zDVW3HqwgpAZMgYFQeKGlRFB2bxnbyWoLMgtd8KuVi+RBdY7
         XffYpEFg6SV5r4lUlcpDFAW/TMzQRsBdAwqT2JZlQPTXaHzAOQ/VSbe7no9vH0MEtvVu
         xy1CePiIXPd46O0+OXovYBELvxDfNPua11yKtsvUIKr50sloSvII2wvGEBhwxHBg7igD
         D7mpQccIOajJCHlEh2+oYoFjclv/K/9cUkY3ZNB53OLfvHhr8E3aVSrNyBeyNEz/RNTn
         pv2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8DJegtB7Dmf8Aaog81Rwn2mx2tQdCyzh9EH9HHKZgJc=;
        b=hibluasUfveDhuHZ6Sx9Y4+leX7UTQyZ4TxrQO5EPgYpgI692QaTDfuyrMt3eMnnaD
         ju48TvJYkSE6A9E0gbZI4iRLJfnS1BdyyzFHik223kCimpY4+76CSZRJY2fkouWVcTXm
         XnoYIlN+zM5P+Eyndgk3TafIBBV5sZNzmFFquUwnro4i0xenCgrdj5yoc5wtv1G0gPOt
         6OwtshhHRkrHIo6BMHE77RnVvausaP2TbmUCjvQQdBiJuu+3hUGTVmltuEr3Aler4ny2
         ddqWphwQWxaoEUcb8WFiT0P0On6OfeVjzdrNY9HZnddQXeY4mZhkOX9xiiR9v2X7EDH1
         2shg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533L0SWN8A7x2v5bu8f9Rlyk8kufCinDN+CqCBxVRZwS1zrrJX/S
	F6dU4j+44hkryzfiEfBwCfQ=
X-Google-Smtp-Source: ABdhPJwIE/dYcWHMJb6pEHtq6+jFqXgDGtq7oSpeC+32t5V3t8dPGw5mtLJZYY5B+jUe/Hyk0TgiAQ==
X-Received: by 2002:aa7:8809:0:b029:2de:3b94:487e with SMTP id c9-20020aa788090000b02902de3b94487emr6915388pfo.33.1622259423073;
        Fri, 28 May 2021 20:37:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:164e:: with SMTP id il14ls5424092pjb.0.gmail; Fri,
 28 May 2021 20:37:02 -0700 (PDT)
X-Received: by 2002:a17:90b:4812:: with SMTP id kn18mr7748237pjb.188.1622259422522;
        Fri, 28 May 2021 20:37:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622259422; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4e5C2uLJ9eUTBrTH/lI3ehWYMA/5k0IAK8KRaHUF0W0AKTwePb7utXO2FY8TCN28p
         vVpbJumrTT9yVbHyvkV/67YoohhRxXZu+4jK7HD/Pn3XhOHaeNVqRx7WR4kVYocsk/6N
         nd5TBOWnw7noS+z9Uae60k8Adv3GVdguKMzPUbZroHxoDX0xujs5YmHaq2y4UJ27/+1K
         ESmc/8OP/8HqRVUmKHs/0xPm8HRp1LTpx79Gm5kWCWB6ovJ4sLGN5+R1NebiYRTKHX8V
         ykuzp0ZHWnxNeVX95YT4u3850fNl7Gvp6VEg3kdjhR3TCuEZn4+wrMAWlMwD47dSlsIP
         fM1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from;
        bh=DiFzBBvJYplATUBFf/4yeVo82ynV67E92jhXxPamN1w=;
        b=ZItcf5EC17jTRE4kB1mrkrAjOfQmSn72mf/OKHP2fdvLr90nE8GTpcTxPWUQVwflu0
         ue3I1K/KmSv3yjT4GJr9SmhPUsT+q6GcwayNM6BZKitMSGLOeHGEdilL7NfnOoq+2+7A
         l9KlBJb7FL8wWqNYh+nhJLg+K34fXfy474CZ82XlusfFrfXvdVjjDQCfiJ+cKO1n/ZdC
         +ThdZfmzD+B4kW0bEv56wKDnUt/NjSEhPTadx4rrfCpheuLd6MZFo2YRdMc3cLFnmz17
         NjHcPI8vDr/WAKImVmOW35Ht5Na0zl81npuRzGj+k2qQYgYK94TXvy0c9msleEAGO5lH
         yoCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=luomeng12@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id a6si566197pgk.0.2021.05.28.20.37.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 May 2021 20:37:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4FsRwr1FRXzYnVm;
	Sat, 29 May 2021 11:33:48 +0800 (CST)
Received: from dggpeml500006.china.huawei.com (7.185.36.76) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Sat, 29 May 2021 11:36:29 +0800
Received: from code-website.localdomain (10.175.127.227) by
 dggpeml500006.china.huawei.com (7.185.36.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Sat, 29 May 2021 11:36:28 +0800
From: Luo Meng <luomeng12@huawei.com>
To: <nathan@kernel.org>, <ndesaulniers@google.com>,
	<clang-built-linux@googlegroups.com>, <luomeng12@huawei.com>
Subject: [PATCH] blackhole_dev: remove unused variable
Date: Sat, 29 May 2021 11:45:52 +0800
Message-ID: <20210529034552.2740933-1-luomeng12@huawei.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
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
2.25.4

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210529034552.2740933-1-luomeng12%40huawei.com.
