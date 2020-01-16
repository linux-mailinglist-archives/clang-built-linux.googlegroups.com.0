Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBINZQLYQKGQEPSF5XIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE9213E76C
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:25:54 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id c67sf4666454pje.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:25:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195553; cv=pass;
        d=google.com; s=arc-20160816;
        b=lCp5KJxEZFFC/lTf4VbcczFquyY+ENtMoI5yQnB21TlhzxKDQ0fge1QMEtbjxhiAn9
         s17gnCLXA/QsaOkL1lGwtBxzJwoOaIJg9NXa6NHCFpkhEpdOw84Ig00fgMTRGLL8sje7
         Jz9SAOGVmkSlapdoO1ksAVMON4sXIQWwhH081KpTspStD7VJpTBsS7qZfnRz5EVAq/Su
         kR3OFuSzPBClCsVawhqoM4X46gljxn4WmoFqK72CtSsxBnDIYL3J7SzbMnaxcqACyOAi
         ncCbmWfy0eRgQtuzIsgsIJkd/HFDhMillpjD7qG3LRbaZB3mfpRnLIcmW2STBVgJyyW0
         YAfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9g172WqkIH1O+RTo66IBjLmer6iNxv7HPhV03MuE4fo=;
        b=Ex0kq3VKzlnvxfWpnX4beT/cRXMJ1yhXeeL4QvXdNSH7fyaavfyanaoYK8tlxx83g8
         D32P76nHaL+RlHKcD7bBD5oHvp/gNgMc5FX5AiXby28wft2VuLcR8zou5m/P4Cq/UkX0
         diQOL/apKF9eSObnbu/aTmgyA9EAI6+cGehfTgEJy5/xEK9GtgDr6/LfQ91ByInubGOm
         Zkg2SsFPVIhINGZkd3v5UZdLz58FVzHXSeK9uFIWFw2ZGg2ggtb9QD6OpB/VH98J1qBB
         fnbNqPjK37kGF7Z7CXtQu9VVZdoQM6p46cp+CTwIPbYODoFGIubMEe/3R4LnjKZhfKYN
         sWgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uhvpTdGW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9g172WqkIH1O+RTo66IBjLmer6iNxv7HPhV03MuE4fo=;
        b=H7eTKjNkytiiciPTxKnuRyYtcqvZ5Y/+F3NefEE0/8plCbNBidTzEJRxGbsdEhSE10
         fbBlk1TSO5WcUqFS7++aSpq4cRdWwQ6FWqlWfHTmDHu34kI5t6jEApTBG8VGvgKjnbpF
         67Kwfo0HWwawNpMdMVK0rXokgvE0GZDCAu00A6PHe1EMgGUOfkOI+gOwVmLIFDVjG7XS
         PUPhXkYZyJf4dpaml34wCGI0w+gOw6FsP57R1CAC5QvlD/Gqtxty5vGrPQteY6sKDaIa
         /ygoIChyc111A1JOCDfS11C1sb6+TxKJNSAjn1WPUUYRh2z6QtM1mMIIO26x6gTDWRp8
         ly/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9g172WqkIH1O+RTo66IBjLmer6iNxv7HPhV03MuE4fo=;
        b=cuOERy0NRUBgv0hzQWU1J1ilGDjemmowZ/PtQNYoRDRQ+SolVaQbOb3cwNWAXxX7Un
         l2ekdBpNt+XdpWF1LUV7q+Qgfbcx5SAURSAXWhWoGSAPx+ANeN3sdSdkEoBkO+jKXBcg
         edussEg6wmDkMX1NSggu/h9smEYe4l4/WM0G1qFxuJkoX1sq8rBNoKQq1ZUcXLbqqL2f
         V+U/1gv24QKbHy1kkWsjDN6vN91tcOYAHCunWrUzmweYSLB+6cbYG5QaMXdBz6Pt0G+x
         JOyetUs/SLGkqCuYpr7wAm4Sz0zJMmT5XtONT8cwuzHf5d7111iP0aEygxU69NtTsofr
         7Ixg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgju7wQYzLu30MHmuhYWM2CiGJAyoAuZ4daDdrOxNof9Lj3HgV
	y3LHUdNVcsZJTiRPg4ZCKjg=
X-Google-Smtp-Source: APXvYqzRULnYfKKeBo/t+Dc+sJCsq3a5YcQecZpOG99vw5ZznlYx52Z9UnQ0mn3nsJ79c8awu6LBtw==
X-Received: by 2002:a17:902:d210:: with SMTP id t16mr27344243ply.45.1579195553303;
        Thu, 16 Jan 2020 09:25:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2223:: with SMTP id i35ls6130415pgi.11.gmail; Thu, 16
 Jan 2020 09:25:52 -0800 (PST)
X-Received: by 2002:a63:c207:: with SMTP id b7mr40861138pgd.422.1579195552859;
        Thu, 16 Jan 2020 09:25:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195552; cv=none;
        d=google.com; s=arc-20160816;
        b=Ez5PXccJbom1mgsmYN04vSzsJPSqJjl1R2WNCsgUI8fukTpZbqDKkEyf1nWXrrhCMs
         bCPfEPV5K50ZIEltkLHGScjq7DxUVAKxm8NSQQOpOb0ZuQH/QR96unepBSGYWx9EQmjh
         uZJ7QKUV4ST+IJeW0/D5IN8SFSjN/KXttxiTDrgMvyB5UbtdHv72yL52xRbj9tTWSt+s
         CvAPtsTjkmvcdmlt55Q+TfuLmi23aA3Mraj6HyH21wBFIj+jLrHY/IjCnIOoj8bX4nH7
         KF7AYDHbPlcw2vL+W4qTbyfml0OzvspchV3TivBAxtDiwMi7r3Sf8Y9qKjPebrvm2kyv
         jGlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MQKi7fVc7M6SoBNA25GgVML6PGMFue+laR+h8w6T6Ck=;
        b=SttLuFpQlyUpwkRl5XjNR+rTKglCfdj9PbdJmR+MNgGLo1IZg7xOIHcqzCOHlwSAFj
         dVpCHV/N5GzxjBF1UUdR3+5DWMaQ+U2IKFbR1U9am3oAgN1yNqEHsTD6EnXtwraV3b57
         OIDLo4Ce4YOiESKHzfuCArQdjnxreGZSzn4DB8tM6deeIH5mdrifI6Ab4OOOxf4KLgli
         fuXDD+16nzHlToY2/BPBO2NQRJWO4QYaPEkPHD9GPVlcw1qXJ0rgKDIgo6bn6BISxATu
         meg5wemGr+eRNbwOp0Zj8KSKOZaNtqc+SLl7pzOt6pUXcjaqBk9K8V3yqxi+YacfWpMg
         guzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uhvpTdGW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v13si1129448pga.4.2020.01.16.09.25.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:25:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9DE2124653;
	Thu, 16 Jan 2020 17:25:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Maloy <jon.maloy@ericsson.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 143/371] tipc: tipc clang warning
Date: Thu, 16 Jan 2020 12:20:15 -0500
Message-Id: <20200116172403.18149-86-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uhvpTdGW;       spf=pass
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

From: Jon Maloy <jon.maloy@ericsson.com>

[ Upstream commit 737889efe9713a0f20a75fd0de952841d9275e6b ]

When checking the code with clang -Wsometimes-uninitialized we get the
following warning:

if (!tipc_link_is_establishing(l)) {
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
net/tipc/node.c:847:46: note: uninitialized use occurs here
      tipc_bearer_xmit(n->net, bearer_id, &xmitq, maddr);

net/tipc/node.c:831:2: note: remove the 'if' if its condition is always
true
if (!tipc_link_is_establishing(l)) {
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
net/tipc/node.c:821:31: note: initialize the variable 'maddr' to silence
this warning
struct tipc_media_addr *maddr;

We fix this by initializing 'maddr' to NULL. For the matter of clarity,
we also test if 'xmitq' is non-empty before we use it and 'maddr'
further down in the  function. It will never happen that 'xmitq' is non-
empty at the same time as 'maddr' is NULL, so this is a sufficient test.

Fixes: 598411d70f85 ("tipc: make resetting of links non-atomic")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/tipc/node.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index 42e9bdcc4bb6..82f8f69f4d6b 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -688,10 +688,10 @@ static void __tipc_node_link_down(struct tipc_node *n, int *bearer_id,
 static void tipc_node_link_down(struct tipc_node *n, int bearer_id, bool delete)
 {
 	struct tipc_link_entry *le = &n->links[bearer_id];
+	struct tipc_media_addr *maddr = NULL;
 	struct tipc_link *l = le->link;
-	struct tipc_media_addr *maddr;
-	struct sk_buff_head xmitq;
 	int old_bearer_id = bearer_id;
+	struct sk_buff_head xmitq;
 
 	if (!l)
 		return;
@@ -713,7 +713,8 @@ static void tipc_node_link_down(struct tipc_node *n, int bearer_id, bool delete)
 	tipc_node_write_unlock(n);
 	if (delete)
 		tipc_mon_remove_peer(n->net, n->addr, old_bearer_id);
-	tipc_bearer_xmit(n->net, bearer_id, &xmitq, maddr);
+	if (!skb_queue_empty(&xmitq))
+		tipc_bearer_xmit(n->net, bearer_id, &xmitq, maddr);
 	tipc_sk_rcv(n->net, &le->inputq);
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-86-sashal%40kernel.org.
