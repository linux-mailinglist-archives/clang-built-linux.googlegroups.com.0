Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQ5OQLYQKGQEVQYPZGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F8D13E393
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:03:01 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id g69sf13313315pfb.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:03:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194180; cv=pass;
        d=google.com; s=arc-20160816;
        b=vxWilbSaJE5KmYCQyVgYIL7s1nqmsZxfDs3SL59zuL5AhaDaoBEc5MQ58Bn+TBxAHj
         udHgz2QWN66/KLaTThWmki005vpvcEQushaLiYNydtUNz/MNo/fZKUPR2IfGk8wHhPa/
         o+wahiVOx7L4redGsJFYbOYmEMK1gjEqFKbQrRkhGz2YnOGaixI70dlaoMvs0Y/GFRR9
         POLqX3yJWzkmqaaLSvAp+o0kfuUQBLafFY5yqjnWqEpARQ7Zfu0SaEoKLIzmSZZ1N8tz
         HZ1ptt5LSu4OsXxqOoCchaqZ/UESPLfxS2upl1X0RLO17jN/5UzoiV1cU0KIQy7Rm/oq
         JobA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L+5DiismzAaxKEf2LMnttjBd2GrFVcvcCUNSRoQ7ggo=;
        b=SxcElPJ8djmq2GewHLpYjB6x6DPrsWAmS1cjG5F05Eq4Xdo9t3FaACHHuQqIeCdJIF
         dPVKuVkdbnBdlp1jWkAbdJwdUMf3FqXqhg2e5b/ihfYfhttILSSngfN5i5AW4h8CTvNc
         F5pGGyvOIAfm85fqewS76uzo7b4zJ9K/eeX5HLAMuuJe3Ow/WunaYjint7M0rlohJ9dq
         hwY8lznr7mDW7Pu2WEpK4JRj7ppR3cMK1L+qlpcwe57BLcJKPhXA1oL/uDw9xTER5Pdu
         JuHULivmHgEJto0LC7UyJx00HC37Zse86OtUVB+wFA1HFbEETwqhWPuPxl6r0zdpEU+e
         EDlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MszLItXw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L+5DiismzAaxKEf2LMnttjBd2GrFVcvcCUNSRoQ7ggo=;
        b=g3UJSzoe7unrsWjmNYEMQuIgWPbo3vJTv38stuDwadv6PzYBIUbMuqKAQm6w/K2gQv
         rJrlIF8a5FFRFmBeH9LMivwM+e9nAivTeEBCG+HxwVWU1k6+vtaWAnbD8BxRjLZOQPEO
         WNhGC2Ay42iEtivxIkAXbiNtFZHhOQYb85+pmeTm7D6+zzvmUsYnjrFIzsLuqFVW/fuL
         VJnN4eXzbDxI1L1igeyH8cD9MuYMC6I4mNWj81yjlQ0RslOMHE7wJZ3+D2my+Ns3AD4H
         4JeYtolSWcvni4MqWeHenM/VZjkl6GqtpspifSjeAP5lbNB5Qm1fE7osSkAWJi6sgDG4
         AocQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L+5DiismzAaxKEf2LMnttjBd2GrFVcvcCUNSRoQ7ggo=;
        b=K77mgqq5NRiD/18rI+oOLTnvlldP+VPTHuWOQdMEA/wszG4l3ZmaS1CpQZHnKozv1m
         8Ii+r3YPnjqyceEvmYDavuqOFR8TgqmlXkUNcwwB8Fi6YbMiZIC3sDJJmIKEXlt6LIJ7
         4fBZWaPc0gduOTH+WJSdosZohklnaFJKAvU+H1m5Z4MrO+1EUdtdsw7Fs7nM8X3qq1wP
         dIyB0SFHOtttZ5+E+YP1HGLOsDscEb+gv217yRgFDKj5WCZTP8wpGAxxkgZFYJJaTnhM
         CrmWuAMdycI3M+TCvDAIFrd1yac+ZmSx+5uZTMoKcH6J++5N17KY+PpWRWWMlPJ68ZpT
         ww4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXfZB2+rMwByQRaa5kXR0+3qaoqNYWSLYa3PIP/xEhjzuxs8nnR
	Zasjos1m+4lJeuSI7xdUuyw=
X-Google-Smtp-Source: APXvYqzUFrtMqWTqrW/hyBBwWeif1cJHTK40hQjjzUJJJ+LtSpls55Zl7lWuSFgTVKxlv/bDlW5l5g==
X-Received: by 2002:a17:902:32b:: with SMTP id 40mr38291533pld.22.1579194179902;
        Thu, 16 Jan 2020 09:02:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf4a:: with SMTP id b10ls6118750pgj.0.gmail; Thu, 16 Jan
 2020 09:02:59 -0800 (PST)
X-Received: by 2002:a63:ce4b:: with SMTP id r11mr41276839pgi.419.1579194179456;
        Thu, 16 Jan 2020 09:02:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194179; cv=none;
        d=google.com; s=arc-20160816;
        b=liqxYM+seodhCRTakVaXVKmhvHNl7QfRbs0wCt3lrJM+4PXgeE8IbT5IzG9+yXSPJP
         hKqbwaXd3ndB4mVj+hEHoRgodrcYO2jlvLvfNHMuEl5YYQ8g2I9Abyn5zeI8fW6quWT8
         btLz1fKmPpnjIen01KZkoHnS2L24a83kkLaZNDolMAMQiYwy4tyxrsWwlPIa7QyXYaRb
         5GIZtnb1Oh9UeW6MCxdzHGjcqecAucdfYWWqyuyBWMCS/eGQE9q38QAwjKKtLqah1/jG
         yvQqUhewwQkg2czgZs3SYZkxvTjdEOJSFATUymnSy3CbqjfjopV9/aXJRWuF4ib71EUa
         inkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WCB81kTPwK0Aizh6+DQLy+u92VkyIlqViFiUYd/QQTE=;
        b=o99I23OY9t35VEDy1cHVg5GEiYOJzU4c4RB0HXHEErlanOERj+eujzmpoIZTG1JK5Y
         fPKiWPnwMXTpd8T6jxsnQyLeb0LeDwif7zFHGrDidndc3cYP0lFOMmyinIH3I4wH6ZIS
         d7lt/oyiub7rtKHRl+iBIIIyoiVXXlq7TX2FZbRIoJt8IruJSzGgiV15kJy27o990Ffo
         UW5FDTYBfm43fsgT6FKezHNT76w9CHszoUTZRCB3ASV9W97cPzcUf+Jp8vpkJWq3oEMd
         iwG0eHhYYq49vliRhUxw9st3Qm1cLyamnFoaSSuJn1TCxcKoTXszw8M8YMbLQg2abSpe
         kMxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MszLItXw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y3si177253plr.1.2020.01.16.09.02.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:02:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3CFA524653;
	Thu, 16 Jan 2020 17:02:58 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 255/671] tipc: tipc clang warning
Date: Thu, 16 Jan 2020 11:52:44 -0500
Message-Id: <20200116165940.10720-138-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MszLItXw;       spf=pass
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
index 32556f480a60..e67ffd194927 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -810,10 +810,10 @@ static void __tipc_node_link_down(struct tipc_node *n, int *bearer_id,
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
@@ -835,7 +835,8 @@ static void tipc_node_link_down(struct tipc_node *n, int bearer_id, bool delete)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116165940.10720-138-sashal%40kernel.org.
