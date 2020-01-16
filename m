Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7F6QLYQKGQEJQ3W2SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF8313E966
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:38:05 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id 33sf3379805uaj.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:38:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196285; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5a7olgjG0mh/epGUJ11XV6mfwT8YQcGwBplZHtgBFluqbdDhh5UXHZtez8JbsEeGq
         HfMhrAWmnA2mW/TB1YHKF/wlNwaPDvzZ4saOvEavSHH4rR+8pqVxwzqtA4wnguhBbn5h
         /FaIW5KpOl2VEDfeeeLtMXcX7fO/s90+Wv0LoPIoh+y3t4H++aRTOOltBYglEXFOFmcz
         VKDg/obyHz6A/EdLqIkcta2/CP2rIpEqb/kfbykgx4F1Wy5Q1tiPkf4uIS9DHTGHbiis
         a0+4mb6AdbcSUpEVb9tNA1ZqscOy3PRU9Wp0ef1FLLU3efEVVEKxdZ591FdfDBGc9EW7
         z6PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8RT8iAvo/AnKPE0ADlEKzoAGipadvUyOPvkxxGpJ8zk=;
        b=x+ozjmPsX3qjpjFKEE3lAn9AoH11nicJBrCgc2erZMWAFBb9WCICJKsaukib+1iFS8
         sHadAgARbucvrUDyT1jbLni/bX8j6hthNlJnJN6+gSW5LvW0WgymlDsdS7OwstSvsGE+
         sWWs2xGpnaz0hDRHUVU6lxmfmjZ+edGdriElkBLKt5KFXQRfHBjRAGzir81/jnvzn0mz
         Dz007NSqtEyTJE0u9Fv0nfv8l8o5wkQuyZlPqCh+Gk4M8w9pf1hA2Zsadd/+5Xm8kwqZ
         3l6ok3Q5AU77CL0eNDbZIKOlzDgIWqqD7f58UgiWGU4tngbwDdzGcU4paFz6jSjrQl++
         AV1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="i+4rR/2m";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8RT8iAvo/AnKPE0ADlEKzoAGipadvUyOPvkxxGpJ8zk=;
        b=isAZX1SGJnhGyAG+Fccs3WlYh1OULJJOilwxgApy+v5NEuH9gDLbz3SacuqI5Ve2wK
         4wmCbdLtXc0hGTqdnztuDRTj1Qj5YM8P4MHW6rn0vgXI2vO9K34jTPmVu43UTKVDO70t
         +TfB2WwP/CglmhXmuRGkK/R/YB2AMujmx5MXZUeoXmV8xtot4rP8hSe9XUAU2KgE/fgV
         q7LUHOZ8ABMiTHYUh30aMDtzH3erKu6Km0dZX5xXVqjCWnU6/KI9nsnZq5u+0SxqCt+S
         dODaNuGAOAb1karZrSqE9LWcTJqkzkV/OoH99WH0Jn1a/bqcf9lmQNJvi9B6E3dO/937
         LgzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8RT8iAvo/AnKPE0ADlEKzoAGipadvUyOPvkxxGpJ8zk=;
        b=b9uuvKEQgdBrYW4z4NbeZn+lSxh08IoYcw2hINvRC4txAaG4hZGcmzzYJlMs5YndJv
         sKg79tsUzhfxp9PJDE29VUNwXmjgYvauLuMpor2DmI5Z1S982M0Pu23BbXbWfyHGNyqr
         xevjbZ+n13R1RkCxs/qAoMDlsEInsRO1DINHQGSsbkXwyMW+OGw7thmPyBvfRG81TLEV
         WQSAlTk1YvJvHLSsjoyzFyJeOv6IvxlV88rG/lWX/9c0iYEWz9KZZ581YkOvUZjqNmjh
         OyH13CFzlWu37euVOEbAyolARezsgB16sF3aME/m9w/iXLnaDpY4DLXZY4JsIrn9jo6I
         A0xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHEWoFEi8pBzBhHerviqIEwcI7YQLGEdoVKlPGttvc8/oWV/8r
	0t+j2LMxsuW/cTySmwX49yk=
X-Google-Smtp-Source: APXvYqzQSotlmr9qwFhEr86ZTn5YxlQUnH+vRhLJ8msaU3EPUM9ZKYrwYxSpnKG9HgeB7JWjCfp4Tg==
X-Received: by 2002:a67:fbcb:: with SMTP id o11mr2283590vsr.109.1579196284984;
        Thu, 16 Jan 2020 09:38:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b41:: with SMTP id 62ls2001439vsl.9.gmail; Thu, 16 Jan
 2020 09:38:04 -0800 (PST)
X-Received: by 2002:a67:15c7:: with SMTP id 190mr2282012vsv.178.1579196284600;
        Thu, 16 Jan 2020 09:38:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196284; cv=none;
        d=google.com; s=arc-20160816;
        b=MYCsv9gODyAQWhVtTwXenIpYpPvjHTCvM//EuS/0nPHCGBL/3B2n069LY9xeS7hTp+
         XEuUM4qKPUsJax8v03ypfLWDbH72MeoaDK5CkPBiVeK0KOTL9EcD0/vPnFfSCiubaWnZ
         xQ3EzdsjTq3k5z+ANT6DTGr3bp/+7XXCP9l7xaTcrz+iCLpXpIhzrLNLD/gBWyaHSWDI
         yGbM9eRLHHvobWX/5E1eFLi9j1M0BC6ymR0yDgUa9Z8fEJEeNfwIZhm8Ff2DIe0l/RzV
         3OrzoVJkF5KEEh6EqHSLQnGvKcZxPRfh5HEeFz5KXXBYAiFd2T4wgmiOfjO0+gew7TdO
         GlZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5bPypwg+7dMwR9StokpS3KX8gfsdHDEjwTzX+dm8d9M=;
        b=qtU2tvRbrJGCHQmer7fTCl414/rOqBP92T7JDjw6uBBXNETGAEEkvixXH2aC6d1+au
         y/t/fo9ct3UZ4IiSiQdTlvW9MHlAf/JBhRq+nad3EFPQ0KY28r6RB8a2TX+P11mrjNFt
         xYj6MN5jnHZdWDF88KIb8yXuv3RTF67oAUkubMDQA/Ro2XILZwn43AQRJmrRde5r4jLg
         OHG6WDPHs8nkSJZ2Yz4XohNzbWp+JyT8W/a6ivhPHdTVQbkeN1/+aCdLHQjsa4fkRcT8
         /XIavZZA5VGsxiT/k+vHBDNyh87oKFd0qDTOEa8LTnlYUUo21Np9qivn2c9c1/IXjRo0
         EcIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="i+4rR/2m";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k26si1085929uao.0.2020.01.16.09.38.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:38:04 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F178246D6;
	Thu, 16 Jan 2020 17:38:02 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 102/251] tipc: tipc clang warning
Date: Thu, 16 Jan 2020 12:34:11 -0500
Message-Id: <20200116173641.22137-62-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="i+4rR/2m";       spf=pass
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
index db8fbc076e1a..fe7b0ad1d6f3 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-62-sashal%40kernel.org.
