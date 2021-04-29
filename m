Return-Path: <clang-built-linux+bncBAABBOUZVCCAMGQEXMGYK5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id D01D236E2FD
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 03:32:43 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id f20-20020a4ada540000b02901ed9e4e045esf13699474oou.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 18:32:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619659962; cv=pass;
        d=google.com; s=arc-20160816;
        b=klQddpid5CZ9jjT9eLuj1jy+tivoCKflVhMoxetjFs8p0N5yA67R02pmZ5FMbcKkYq
         UNxwlgwFs2MEnY/LP+SDhl/jriaxl1ahmQ54aJ1IWSb981IEs1ObTAn/Rhl28P5wrK/e
         eqR2FkqBgRmaJHzNPiBXSkpfbdnZyFQskUVCpeOYXbka8NnDCiKA0xK1t2NtVGmk6OB/
         3FlwGijW+30cAnI67vMDb3Td0djnPvQv8DUSB0+ltvBbpDu6GZVBnmU8g1ZlDt4Ffqc6
         VRuYMVUDdRjV+9iSseXfIc2QgfNXTEIX9PI2WvAP+mTqzYAzK1td/2ljT6rdA+HcjhjQ
         PRbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=HsMJHD3vmWGICbQviZ7EGKnTyKHHOWKUY91RY665QYU=;
        b=A0Mqh853lYyWISkaw5fggqFJMLPVaDvu2SygLmUTm9CmqDH20t9lyrMV+H/q0qVHl/
         fvFUFaF7z0H3upQdGHrlmc9wtORaBiOM5TQunf6Ngxq7zL/rFMXaZWJDkIQHwowDc1kb
         kdRSVR3pBTLeaMidtTuDR/MNk3EvwLwEhHN/VA5QPdDYechfUNUmFjFMMG0V1bjOxFBw
         eFDGwiK5Sr9fyzx2GRah73A/e8k/TrkT4DjEwAPpCXdfXQyidXIIKlPf/UhT7mv1wzbO
         Qr96N+QRMOsqzPI9DOhwfIgRunIcqE2aUfPNCD5a9L5TbDq4Zom1NQV8CfVZ1auBJ7z5
         JhqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.131 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HsMJHD3vmWGICbQviZ7EGKnTyKHHOWKUY91RY665QYU=;
        b=Xuh6ejxyaMWkmQ+TvmGb+CI1BmZKTSRBR7InfWxwXpsK2IG/vYRYpKhEho2dZuAoX2
         xYVY/ddfRgYwL7N8/1YUZ9wjKoe7ZYjXlKIyaIkaSWSbPQ4P6/zSLlHmEQ9OqRimMIQU
         oA9Fk2iCiIG0SkYfJOMaiEYZ/tQZqWx9IBAkokqslf56q6pE9C6OSWiFIM1r7imd9WJr
         BVLpAL6LVNV2oLyu9jKniNjLagaLmhefk/NEEf65oqdFshQjzNE9Hs4pLXA1cnrZChli
         4/bIqLjs2+gocbfkYTUgcGAWuF+K6xvw/ZayG827MlaYV2bcUGTas+O6+JW0oJrC2Xb6
         nMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HsMJHD3vmWGICbQviZ7EGKnTyKHHOWKUY91RY665QYU=;
        b=TF9/tQkI0lBdQ9quTogldVs61VhPHV1A+BfX3FTuyI/gqBKY+NnFCutmxaPyYdWwX8
         BeCekUP6LLf3SvstElmQ0CE3rc6Elnw3owD/xDLkjEZTdsRlsNW5qVeWNIFIxJmXblwk
         JqWpQyKHGPL+E2BoiW0Kku8kuTsEm+6MdxsMZcQAbkumo1zkF8evi2YQNGrBMRNKqShD
         5Xchh1cTgz1KrMtld2QPDTiasuAZa6yL7cIFGo0GNmZoUT43mRbeDwtU8JqMd4GIZrY/
         xbkH0Lwz8m5pEvyzltY2tQQdNecLjC5R//5+mO+Z9yhDQJTa82pxqZklROolTyDJgjyE
         2alg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ze/w+5PHe5oLYUvWHPZQ2uarSuw5NR8TsSUtSPJo+Lz4/EbH8
	6H9KHbKNlHkHuqpODRgb/KM=
X-Google-Smtp-Source: ABdhPJxD9wdIiTEUZSXUCwZswSzIkPpDIkvhJ7506x0V8DH/OWnLdWefxZwztUnVnGh2ez4goNucjQ==
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr20019432otr.169.1619659962815;
        Wed, 28 Apr 2021 18:32:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4958:: with SMTP id w85ls449597oia.11.gmail; Wed, 28 Apr
 2021 18:32:42 -0700 (PDT)
X-Received: by 2002:aca:ba09:: with SMTP id k9mr22611847oif.178.1619659962511;
        Wed, 28 Apr 2021 18:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619659962; cv=none;
        d=google.com; s=arc-20160816;
        b=ESqSAGE0EkLUsiKEV2Yz4ogvsh0J2/8h13uJ99ygTOffp+5BJeeoIIcOU597s0+J67
         Huz90NkdzWw93C/E3ZUjNs70A0l0tzWUrTlrYOOVdrPEAYgttoOlBT1FE3N8fsVsh2Ci
         lPDXNTZvm87TE7RBF9g8bnzgW76GZpnLaI3JWoC9pv6I360HXiB87kbta7R+17x55De+
         vnUYgQMQkzgP20hsj1Bt8KAWp3ORm5IFZysahnBG9RFv4OPpQ/7817QUcIIGeiEdeqTx
         div/kgqkhcykj8wXVP7PyTq7o33FjmS01oyJAyTnSeoQm1FND6zqzL7q7dirzCxQZgWG
         XW8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=ivnoIT4mKu1JcEaUrnWsyHJGHti2w+AmLDxpjERJgN8=;
        b=gIpQI9TGVOfIVMRrBLREIFbDqsda8pCSaltvZ7xbfVSQt9LhDz2D4dj6PZYjUYl7JK
         U4ABk1K/bOAbXedQKVKESdChgFG7axDl5lf7jR7nBJHDQVEbtQOW4zL08mG205p+x5Gg
         A+U8q3MJDAGWYI5xE5o2Eo/skhJMyIs558gOHJyDebZwh9/dkY7lIN7J+b1wo9HCdEOs
         zCDCZPFL+mo4txGip8WS9jE40tK0o+JAhhSp9l124Nr4mWGi+G7xZkncNDTBHUteNZ02
         F63g01Ki2a2wPPXBhE9wU5AIJ7zudj9QO1SB8meUrM8PZHiuwWSDxYPHmAlibK4MkQov
         1GsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.131 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-131.freemail.mail.aliyun.com (out30-131.freemail.mail.aliyun.com. [115.124.30.131])
        by gmr-mx.google.com with ESMTPS id a5si119250oiw.0.2021.04.28.18.32.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 18:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.131 as permitted sender) client-ip=115.124.30.131;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R141e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04394;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UX6f0qb_1619659958;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UX6f0qb_1619659958)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 29 Apr 2021 09:32:39 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: davem@davemloft.net
Cc: yoshfuji@linux-ipv6.org,
	dsahern@kernel.org,
	kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] net: Remove redundant assignment to err
Date: Thu, 29 Apr 2021 09:32:36 +0800
Message-Id: <1619659956-9635-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.131
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variable 'err' is set to -ENOMEM but this value is never read as it is
overwritten with a new value later on, hence the 'If statements' and 
assignments are redundantand and can be removed.

Cleans up the following clang-analyzer warning:

net/ipv6/seg6.c:126:4: warning: Value stored to 'err' is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/ipv6/seg6.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/net/ipv6/seg6.c b/net/ipv6/seg6.c
index d2f8138..e412817 100644
--- a/net/ipv6/seg6.c
+++ b/net/ipv6/seg6.c
@@ -122,9 +122,6 @@ static int seg6_genl_sethmac(struct sk_buff *skb, struct genl_info *info)
 	hinfo = seg6_hmac_info_lookup(net, hmackeyid);
 
 	if (!slen) {
-		if (!hinfo)
-			err = -ENOENT;
-
 		err = seg6_hmac_info_del(net, hmackeyid);
 
 		goto out_unlock;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619659956-9635-1-git-send-email-yang.lee%40linux.alibaba.com.
