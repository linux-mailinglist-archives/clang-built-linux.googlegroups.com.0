Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3PSSDVAKGQEBOLQFIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DAB7F8DC
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 15:23:59 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id l11sf26009923pgc.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 06:23:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564752238; cv=pass;
        d=google.com; s=arc-20160816;
        b=iR0sZEqpTKqtAOZW7O//WvPnrNcLgz1m2H16NfB8/s9Y3MliIZTgjjYPExxQKjmutP
         mFfCZKj+vjYIdwL5Sz3/hkakpa+xofh7bKmaCjQ9OsdQNobmSALkJNTigNCGX1pgRxS2
         gOYIpU82NBebCEmmXyVQ37Tu9BK7v2Qq+4TR/ugwmAZCyQSjQBKi74PxX4AdwMERC5iV
         LPp38JdjzRFDqje5Ttp4H0ZIkGeX+pZkGz1TRvm5ei4O4vfKpDUBjym9mrPc4L9xMco2
         NnEGj/WwowHyhDcxbOuDbEo3TC+CqNju7u+Uws/ptGZbOfxy4TRRjU6ORHPsw/cUdsSp
         79Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KzxmqbTZxWvbI61PdSQ09FwZmQ4EeQImMCnIUKJV5rU=;
        b=vP1nESZYEwXxUtYiDIAzLlq/uX/6Y8pzgqj5C6IgiYKGBLlm4M8wsxFn5imSbrBdhT
         gpFMFJfUzoeb8zQqcqEBxkLwJVdSVtL3fvYW7riGkqXDRKEvEChLB+Pu/ic7biZE6p7R
         4a/XuOVeJ2ErbXxwIK0kvo6Fe7fqEALwR84aiRviw0+Zbp3Q5/a6/KuZgwtcbaAG3on/
         U6jF5aOLp5pb1HL6Ldyab0GSXtFPRYuw6kF301TZznvlHQ6Ig9Wqz6awBWaWya4s1s+0
         zyDekB3AvnzP+/FdS5rMb9HfgVThLmm0x13yQaXJ0ANhmtNNxTII0hU77DW1K8uwvCAf
         0hfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iaIkmwfw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzxmqbTZxWvbI61PdSQ09FwZmQ4EeQImMCnIUKJV5rU=;
        b=o9ihfYnx51LUgPN0YZ3TulXwdRmB+dpWK+/nB8o7qMH8pTs9ZYQCedoWQxD2GmBo5R
         KL5foGOJfv6pamaZJdRrdQCezhVmWBxmfIgOPo7WslfaTpc7XPtRg2k20mKqzqI+XpK0
         6xKFo+BoEkItGEfOsJfrb2mx0p9ns3cwzdmdVhIntLgCV3nP8NquFuWEICMqWVJVKOe+
         KEk1JXtbtajEqDwBKHvFaF8hvwQRTFOqpj7yt8a6RM7UmhnpGBOYso6KHjm85KzCxX+n
         FkwiThl5EBJ/CqeTXiyiPgmqzQKP53l/VTVgLn+ULsMYfkyMP7DM55M2VPTOsOrMOsdk
         K/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzxmqbTZxWvbI61PdSQ09FwZmQ4EeQImMCnIUKJV5rU=;
        b=qTJyanYi/P/NgWocqIiwUvCGqbN/DU4DeZHf4NonKNe4W9w9CIYw6ZinEj7bNpllTi
         yhmxXIrwdjpxxcRrJCRH+2TdoUdBJ/xugcU/iWqDOAZ3BqkaW8zEEFRVlINjenDv7o4x
         e1aj/u1OHsqB8CJEzsTMbwDtQRs/wA60S8ewueAWoZ2373983SwKbWoVdIe7++a7o/WH
         KTQLpcMVCYKSgSitbUzRMvU5Un+VeQIpq4CkIoFWOI5k6tSOlPLZ+g+M/1O+V29V24+i
         VxdBrSKKUCcjCGaZ3iSJdpr8A379W/PVLFbJlLKK4lj0GcbhCglBrybnCMBydnwnlJNF
         K8Sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWdHEdlTXrqUvu47qibC0FAWhLlX13xaPEKX90j4Bw1I+HEInGI
	e4L9z6Z8NNhB9OkIbO6djQA=
X-Google-Smtp-Source: APXvYqytj/IOQH2PXuMLT+StAkVYk7OnLaXuVnJL3hucr5YVdgIwZU4ZdHti8rQ1Ve3IF8QLOi5VoQ==
X-Received: by 2002:a17:902:26c:: with SMTP id 99mr135966786plc.215.1564752237827;
        Fri, 02 Aug 2019 06:23:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5619:: with SMTP id k25ls1489822pgb.0.gmail; Fri, 02 Aug
 2019 06:23:57 -0700 (PDT)
X-Received: by 2002:a62:f250:: with SMTP id y16mr59419197pfl.50.1564752237547;
        Fri, 02 Aug 2019 06:23:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564752237; cv=none;
        d=google.com; s=arc-20160816;
        b=gCA05cgpQq/31/ivE7Xsxpih0iK1enmB/E0czlWxBIiZsRkQNxr3+yo1oH8wrkXwLo
         rJPjJCgM5Klhuen+wU/qQaW2ft92Z/1L2csJ2XYXc/EZYCrnkH1IFHfVRReq6nn0yeFx
         G/a+Kzo2QudHPBWBNiCyFtNwfQymImDig3romNItUDspY1ddsI1eksTORy9bkYMBv3h0
         4oFqjQVG+zAUnVSLX/v3mRMo6iWGCfF078kNE0StyiOM9wRcgsOuTlNXIi4NJV/uoWHF
         5hMEvKXtppz/nQf4v3hvhB+8VuD3g4NyJ698pBsNVR/dV/WC6ZqW5AuP7F31p6DF8dfp
         SCBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=R7aN6+NJwCXetYaqe/8K24E8RkaOM2Ef6P0fvKHd1bQ=;
        b=XaGWpHAOcHGuJ9Zzrw2O49J1FXJFnFuduvnTgKZ7NM9lqoMkLG61wVzQ5SXrAzTBqJ
         zjSgnCH0hihbUlX/EQXQ2LHnfMDYsUxP4NFnC/w31VPEE3qHP1ythntYdV+/7fVbVitP
         9DWQkqg37h12fQdvXOLmgcUdEPDU4pLlvRwY1XDqyPNQ/uBAQpsCjFCy1v3Rvbg31mrG
         DBAchklLuE+i6IaukDO7cJGbdMjcqRToj81kcTB4kbLaEl/laD42aOCHTIgyNaMbQo1T
         X37qwksY21zqjJFdrCRq2rebCQlNezxJ15csAuDHa/SAT7W+dB8p6g3gApiLXhQO4Amc
         jmlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iaIkmwfw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f125si3547985pgc.4.2019.08.02.06.23.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 06:23:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4FC7421871;
	Fri,  2 Aug 2019 13:23:56 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 29/42] drbd: dynamically allocate shash descriptor
Date: Fri,  2 Aug 2019 09:22:49 -0400
Message-Id: <20190802132302.13537-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802132302.13537-1-sashal@kernel.org>
References: <20190802132302.13537-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iaIkmwfw;       spf=pass
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
index cb919b9640660..3cdadf75c82da 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -5240,7 +5240,7 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	unsigned int key_len;
 	char secret[SHARED_SECRET_MAX]; /* 64 byte */
 	unsigned int resp_size;
-	SHASH_DESC_ON_STACK(desc, connection->cram_hmac_tfm);
+	struct shash_desc *desc;
 	struct packet_info pi;
 	struct net_conf *nc;
 	int err, rv;
@@ -5253,6 +5253,13 @@ static int drbd_do_auth(struct drbd_connection *connection)
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
 
@@ -5395,7 +5402,10 @@ static int drbd_do_auth(struct drbd_connection *connection)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802132302.13537-29-sashal%40kernel.org.
