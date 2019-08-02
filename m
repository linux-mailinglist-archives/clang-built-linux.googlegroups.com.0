Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBN7TSDVAKGQEP2TOYEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A3D7F915
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 15:25:13 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id p196sf32285123vke.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 06:25:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564752312; cv=pass;
        d=google.com; s=arc-20160816;
        b=yxRxA+3g7+iPQKDJywwiZW3Y+4Hjrd0tZBiYomasUrsdrKCKa/rQ32Qr8Q1TxWFj6D
         ArZ0Pmf+VDgoLsUHn0GvviA5PKUuvCkRbk8SThB3lwb5f6Kq5uwv4dlrhgVKF7+eusG8
         SePA1HeczypwX3XXFL0ki6Fx1dQBtSaSJdSdV796jrYgChYtskAtrqa7c/H/VH0zdmyI
         a5htuUaiCjSpgt9oKA5ag64g7xgb8+PdX0nTNkQ4nkzXYyzsj31OVF/DjKAR7u6MSrPm
         PZuqpDu8jlpGGyFAweBmN3Tp+m2xS2xkyToTDKOqravP9TP2fooKC/YJB3qPC+hH/BWG
         WzeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D2fikF1cRsPaGlgtNjCfAtGBRWPeWnjnqHffgmyIpnM=;
        b=VxQpK7gUYnyehHb3j+MKxRPfxrVAekUcGQFxMZy9A6LbIuDvtevtox6j5sTS53mRJr
         CwUqeImsxDsJPV3ZmcYG6HURdR6biRAwIyxKxzpyo2BwwXOv8X77n/oDfKGqD5kDsQ+3
         x9F0cUzIuH02asbKMmmHuVAfzqvKzuUaGrAY0LtwVOMuSS1VF+NDEmEee2wLsj6HComx
         6YfNpId+bOOnwvReoiaYJrLSMF/s3uwDNddemgLJRMMSjJdWCUXDQGD38wL9kQ/eP/Qg
         CqRhYKXjiXrms9htmpdUy/IUIHtAEGb5ywBkCkWZU/AfnJrsmGAJ/e8qy/Yl2zq+eskk
         J6Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0yLsSAG6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2fikF1cRsPaGlgtNjCfAtGBRWPeWnjnqHffgmyIpnM=;
        b=fMjh1ala+F6fo69ldofgncJrRtZCsEtRD7nS8QbF0UbbOMD/VRq5DODUpif0W+3yeD
         sPEvvsyB2qCi1NWPExgHI+2ZVTOwT8EhyT0sn9aJWhQxeBIu7/OGk5SwZ9bHu0zxQyMx
         LUsofzozwl4SQwr7ZunD6NUaqou61gTDDr6YuQ1Dj76nBKCBJMAYXEyFhKbiPpzQmuOH
         xN2JB8M8WZY8j837T4YpS95pyIhTrXKDtZlxSrIXL+qsdpFpPWCvblu7bgpUpFCzn95n
         Zlsf1HpPe1eJpaLiKxvHZUkjhuUBDEr3aiBofapdqEn5AvyZR+IFzqy7I5yv471nNKSi
         c0zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2fikF1cRsPaGlgtNjCfAtGBRWPeWnjnqHffgmyIpnM=;
        b=iGeeWDhFQmrEgqOFj6dsz9aQ9QHCPGSsfXxYUYeEjHmMFUmM/5d84mw6/WXAaUIZn1
         xK80bovMkRksiVVG047YzxAss+h6LxSFWZMECnMFX9xvxl/PGbdhQyLf6mysK/TuJY1S
         HV8EKKGgQiN64yLmqpQ8mIPAB+0XdhtBRnr28/Z3ZUPSx/TYs7QkhErn2kq8oYIqiw/B
         CpUr9ZZ/LwRizaCbKk1FAIZ74BHX+iaJFOXJJmgnp3UloEcxszR6KCUkENDtn41IuLlN
         xFFiwbjOgLDKcsNWCQjnHXifNhGell1j16zibFKqg0wUDkM/wxfmR4JoRJSllqnSnTHI
         2duw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQWCqr71D2rv9Jf+iNRxeFJCfsOOtjdZUwXO/yF7lfYPEQBuIl
	QHXMFy1I8e+JMdguN5YAueo=
X-Google-Smtp-Source: APXvYqzEvTCSYSdKbuPxvB5zX4+I6eWzgmntPkycq3OAe+zGvvB1LofzpZMwbIKQDRWyZpdXf6WXIQ==
X-Received: by 2002:a67:ba12:: with SMTP id l18mr30131660vsn.29.1564752311824;
        Fri, 02 Aug 2019 06:25:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6043:: with SMTP id o3ls5751174ual.1.gmail; Fri, 02 Aug
 2019 06:25:11 -0700 (PDT)
X-Received: by 2002:ab0:2789:: with SMTP id t9mr68091223uap.69.1564752311527;
        Fri, 02 Aug 2019 06:25:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564752311; cv=none;
        d=google.com; s=arc-20160816;
        b=HayEiRPc2xy2DfzP+AD/T3A0iNXHrLJcfX317iGgJyR+FLbs6byrKHVymoboAE/e27
         W2wJIqZ/Fqw9MXiylarhemOLI3KVC47wFyYq0A1HK0IV/P56g3IhYZYwG9hW4ZZAuzxM
         dI2+IxYGJOWR4s0S8YqmOmJBaF4BTe8dQkiUa9YmWXEZqZw2gWEF4tUOPpDRhsN2BuVR
         K4Gm2qT7HtFD0AloJKXeTbRhNJ5y7PN/yy03mbtLbXTLnXNWGp/pWuYhWK32LYUI4uwn
         hn2uuEoqLP9XkueN0TxFdK9cncTG+4cNBNNlM7HDxnz5JZ8Em4Y2+RLBNyi/Hc5JAdPg
         zeig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=y0sUgFK1R33xXSRCq1YwCJJ+OJIOh3pQv6fk9zvznF0=;
        b=G9X7fRgmcpXGiYVDFDT1K4zRuOiv+NpqOkjTe2oHe0y/eGma89iOwoQ6oU7HFeMBR3
         fzQlLDAFWDoTgbI0m4LhJjo4HEHPvRMRcP+UdjsXUVTUHzSxCA/l8EBz5xy2Kow5R+H9
         t4zORthHI1y7BD5AhySioZ6oPVmsmBJ0pb6lq4VDq2SnQaewxvL6gAfdoUXQMEQG20U9
         O/16h32PEn7uuI0/JR5s259HZy5bkd/F1rYo4B8yP5D9LavLn6ogP2ZNxrg8/1Nxpxg9
         SIkJfEo4injYpDfWZtyLsDP97atvfkpjwVH2cylfddKquiAX+52r2V2dieyJL5rSIjYp
         7KzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0yLsSAG6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b15si2839782uap.1.2019.08.02.06.25.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 06:25:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 597AA21773;
	Fri,  2 Aug 2019 13:25:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>,
	Roland Kammerer <roland.kammerer@linbit.com>,
	Jens Axboe <axboe@kernel.dk>,
	Sasha Levin <sashal@kernel.org>,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 21/30] drbd: dynamically allocate shash descriptor
Date: Fri,  2 Aug 2019 09:24:13 -0400
Message-Id: <20190802132422.13963-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802132422.13963-1-sashal@kernel.org>
References: <20190802132422.13963-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0yLsSAG6;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 77ce56e2bfaa64127ae5e23ef136c0168b818777 ]

Building with clang and KASAN, we get a warning about an overly large
stack frame on 32-bit architectures:

drivers/block/drbd/drbd_receiver.c:921:31: error: stack frame size of 1280 bytes in function 'conn_connect'
      [-Werror,-Wframe-larger-than=]

We already allocate other data dynamically in this function, so
just do the same for the shash descriptor, which makes up most of
this memory.

Link: https://lore.kernel.org/lkml/20190617132440.2721536-1-arnd@arndb.de/
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Roland Kammerer <roland.kammerer@linbit.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/block/drbd/drbd_receiver.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
index 1aad373da50e2..8fbdfaacc2226 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -5237,7 +5237,7 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	unsigned int key_len;
 	char secret[SHARED_SECRET_MAX]; /* 64 byte */
 	unsigned int resp_size;
-	SHASH_DESC_ON_STACK(desc, connection->cram_hmac_tfm);
+	struct shash_desc *desc;
 	struct packet_info pi;
 	struct net_conf *nc;
 	int err, rv;
@@ -5250,6 +5250,13 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	memcpy(secret, nc->shared_secret, key_len);
 	rcu_read_unlock();
 
+	desc = kmalloc(sizeof(struct shash_desc) +
+		       crypto_shash_descsize(connection->cram_hmac_tfm),
+		       GFP_KERNEL);
+	if (!desc) {
+		rv = -1;
+		goto fail;
+	}
 	desc->tfm = connection->cram_hmac_tfm;
 	desc->flags = 0;
 
@@ -5392,7 +5399,10 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	kfree(peers_ch);
 	kfree(response);
 	kfree(right_response);
-	shash_desc_zero(desc);
+	if (desc) {
+		shash_desc_zero(desc);
+		kfree(desc);
+	}
 
 	return rv;
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802132422.13963-21-sashal%40kernel.org.
