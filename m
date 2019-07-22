Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBDOX23UQKGQEDNVPTLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FE56FF95
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:26:54 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id i2sf19056936wrp.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 05:26:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563798414; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZEbhMIbGl7En/JW2PTVzcM5WsoLR8LYWnkDBbeVVCpw//US3S12si5w8LpiHrd/krx
         Uyp6jNMDCB+cZ5SJgTuITFT3LquefTUn5VsLPqThKprQLS60+2sSm6cPPwAtXsR6Da9u
         UXnS9YVqHGByDzaxI/fC2SJ0gWpyhbdhyklxT4raK4sK+0FR89aVmiuttaAx/+36gjP2
         PBJKCdgYWaebYAG7f9WXWO/0d+FLYhpqRyUk01bh0FG0auS0IufYTWPehJLhGtzXLLfS
         aVffiYdZpo4aEmWR2jvL93KKDLV2VXHSwjhc5EUBeCxh+KdD2m+O7EMtmwIf1ahYPVKR
         bGVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XkaPcb3vs++5XGDPtDW2PywmwBl5iJGCQEoBDSsgvJg=;
        b=mp0/dLh0gkdyxGSp62XmLKGFm2hw5vC28cgOAFfh8CGWXmahTB7XhW7RFMLXBZglzB
         erT5YbXrRy3Wk20/w9AFTwxx0SR3kU/JPvhl0i/DKbP6E3BGjQih9JHBVAOqL9MSQMgS
         GAf64N7Pq1qaXpgWjm5HWtGCLHl4u8a4ikO2xVNmIdcNGY0hYaW8K4qETKTQaCFKr9GO
         vmvZnwPQCFebtZPVbcHlJ2avCJ3RAVLl8GXWZ3NVi6vwdjR168NndOP1CsdfsyTLJ0SI
         c9CpRz9K9FxJ/z081c67tPvj67axRHAbvEWC8nEdJZoJwoKjtg7ZSX20p2kRHhnt/oqy
         Rpew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XkaPcb3vs++5XGDPtDW2PywmwBl5iJGCQEoBDSsgvJg=;
        b=tS+ySnFfqGthQ89H6ExWwPznfyITr/1nDDJfjhWoyFRh5w0BzfFlnD3SvuxI1vRq21
         jzXfsdic8vdpfj/Tc+rO99KQ6G5/Tb9eovYtEZtdVNK/puuNLNidTWvTTnZzytjhHkDK
         3rz4TS5M3g29201gGySxFb+7fN7G+NuXWzx3PhoP9oYkk7CbDzTHhJzwHAs/2WRbsA0X
         sXkL4kQCzF/rj7WD3j4wgUdawTpm5RPI4/kSv/VOOAwx2m0k95QCGvaGIFK+igNUmgUF
         7AJ9OkrfZupZwryqeDw8fgHwXJ/3XQ+gU9kbMTRWCWkXAADWPW6wAR7RkmeG6Z0F6uN3
         fkJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XkaPcb3vs++5XGDPtDW2PywmwBl5iJGCQEoBDSsgvJg=;
        b=P5sMHB1Ii47G5LiWa3otStW0XqM2cN4wBcnPFUYdpyG5r6YvTnrIrXbQKXa2q0a2lr
         dRVD41k0ZjQ8p5DPmxircXO6WC4U9+thjCd75VkOvjJLDr92tdlMbxQY1HU7DMegx+8B
         fOegqsN8HuOAn7mq0nCOXSosr2Q8/1yjJ/oD6NxouLJ5vBS8oWI8bVqvbw7EnCYwJa38
         rBg3Smwnx4/ACN2CJMXPkFKaD2xZ7mdVmYD6zzLbHiCXoPkQ8mSXXoCUytmEicUo+ZJj
         SiI9dxZX5npbzSyOBaA4ZKR292W3EVUCV5RArsbHnOWlvVdubEmsmf9WHURjakB/L3BY
         SJ3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVaLCXMbS/Nl7CqnDJwqU/bPiNrbWkA9APm8d4JuuRZK3e863Jq
	sDSXVcJqlC130p0JkpOWLck=
X-Google-Smtp-Source: APXvYqzq+MdFNBYID0tbpSKAvfe8Kmx6Nqh7xN8gd1u3DwaHlMih2ycRF7FaTojl2dIAg0sc81yf8A==
X-Received: by 2002:adf:eb51:: with SMTP id u17mr31066672wrn.257.1563798413994;
        Mon, 22 Jul 2019 05:26:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:97de:: with SMTP id t30ls9178072wrb.11.gmail; Mon, 22
 Jul 2019 05:26:53 -0700 (PDT)
X-Received: by 2002:adf:fa49:: with SMTP id y9mr41792768wrr.6.1563798413542;
        Mon, 22 Jul 2019 05:26:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563798413; cv=none;
        d=google.com; s=arc-20160816;
        b=ct7t4uaoqXvAZHbh6nMRSQODIwpSQpsmLHPvPCZMO8HFBtFuNZBf5xsha3T1sj3OsT
         K87DvM1wi1Y8sjISIxxsmnMT+hkMrtvmeQpouVPwsG+DQezSZENU/EWiDYx6gk3s8H/k
         HihNQCSgYe5fTUa1gubn7+vjFEG9SMsDAr7e+HFZmyisa8oPqiK8VForjoNuiyl0w2cE
         p3ThfEHZOKgXSI7eK6n9Iw+SGaT7j3Xb2G2lC2TEBAZhT4+dtlHOVLC+i0UBapfyL3wm
         RkfWko6xKPOZTAsF+NJFviEAiLottyUkG+jy9RoBTnnhZsoiEgIzAZLa8Czj+HgY0174
         bTDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Fv8hugCBoIx/Q3Fy16D1zd2fZY1SOamgZUucCQcurVo=;
        b=lb48a+LeYTWdJGO2FSVhuQTnMx7UGI0Jv3y+dKMrlDWOXjE4hqBY+Kv3id/DpApoIo
         hi4pQCBSyAh9uKydQ3clJD4n+hRQtFFXikv2bzovWsbieTrRZQHG0bzyZGLsa2mRVGtd
         mgyletRflFMbJ57rDNRGQWDZMxeHEKIOjMqu+g+deovg+2VnWRwqrEuKFw/yf25ZSrtD
         6TWbkx2YJLxqDke10t3f9FqBsLbXJAQ2gpv4opXgzziNylpWdkniBt2r+apuvRzkTXkW
         RCrl22j3M3O3o7GZM/YA1cTcByAi9iTWXKRcEJP70bGfb+QB3HSjMdEmGM3oh7ANcB9X
         Tddw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id o4si1405132wrp.4.2019.07.22.05.26.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 05:26:53 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MS3rB-1i0ppS27tD-00TS5J; Mon, 22 Jul 2019 14:26:49 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Philipp Reisner <philipp.reisner@linbit.com>,
	Lars Ellenberg <lars.ellenberg@linbit.com>,
	Jens Axboe <axboe@kernel.dk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Roland Kammerer <roland.kammerer@linbit.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Eric Biggers <ebiggers@google.com>,
	Kees Cook <keescook@chromium.org>,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] drbd: dynamically allocate shash descriptor
Date: Mon, 22 Jul 2019 14:26:34 +0200
Message-Id: <20190722122647.351002-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:TUkJdt6WnOtvIKaR0C75bjyJONsAuTghX9dFPBuK/8hnMLggk3n
 oaimOoXAU2Z5zyElT/gELYVsGJyidfA2ExueKc9APQYmKTBUXBWzq5pdcaRaVmUMkwDM8eK
 3TBy71px+BMkF5WdicIU/qxkzYwfULo/cL305TewpfFFQBaqDWboMCadDAH4olBURs/jRw1
 q6sUBbFtTzs7Kvn0ZEUiw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c+P8+Y3Ft70=:cJiCb3/FiWtXQt/BwQwW7R
 NFYvnQ8N1hPvLKZIghEf+kKVLp7/kYyBTvTNO8WRdxBLi6aZP1xjhkRrR0kMmjCvamRDEfSMs
 gZJXxkU2vatLVaS2KQmDYMP4kGEuVjnlasytI3typK7ZlwrqSJ0NaCUqsTy7S333zZSGHs4we
 a3lsh2QvQ9+Jlfcdwp4v7OMZ6FEsjpqMaXDc/oaUbLiuh+19kl0pHsbyKASPN2c6+TCY25h37
 n6tWNAVq5qPl7ZWYUqCUpNg8bHxEic5Epqj2drDgWR2AR5syCs5UmqyyBf4puZkcwlf7ucH20
 Hdx+GYhU6FKYnr+i1WUNPUpKQCYSM6q2Zrx9MaYRxHg3ouuZYDuccKneHpBCS54imGAe21V2v
 ha+4JHczutkINYtlqy6nw/izraZz4BditGhG+wUcQ3N3LUDdt+FsixBVenTycVe4C4SlHiDPx
 7rO2CuGkxEe7xx9W8jU3EI9DjxPA9dte96y8Jp7VRRDTYgFnJ624Zn9GY7jnHggrs5plQwL4J
 c3piWuVfYT7abyUKKFYAd1J3URNK6RaAm9pWQKo/mvw8Shagyp2waz26zy8ZDYdpFE5J+jByH
 IsqSu8GRhkI2vZELyGUk7Ar/XDURoYk+OoZN4Myfw4LxBNIokSVNk/0g07x/2/5FsOC20P/5g
 Zc0ys9eBkBw/gcZfRv0XEfBZ+uZo+Lo6QuVzJOttdiEFxMlllL4gKq4yB9Bj1wnlh+aOP6rtC
 sfi5B0rcPguhvN9lACFtnrg2/8lpmleYob2zkw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Building with clang and KASAN, we get a warning about an overly large
stack frame on 32-bit architectures:

drivers/block/drbd/drbd_receiver.c:921:31: error: stack frame size of 1280 bytes in function 'conn_connect'
      [-Werror,-Wframe-larger-than=]

We already allocate other data dynamically in this function, so
just do the same for the shash descriptor, which makes up most of
this memory.

Link: https://lore.kernel.org/lkml/20190617132440.2721536-1-arnd@arndb.de/
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
- don't try to zero a NULL descriptor pointer,
  based on review from Roland Kammerer.
---
 drivers/block/drbd/drbd_receiver.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
index 90ebfcae0ce6..2b3103c30857 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -5417,7 +5417,7 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	unsigned int key_len;
 	char secret[SHARED_SECRET_MAX]; /* 64 byte */
 	unsigned int resp_size;
-	SHASH_DESC_ON_STACK(desc, connection->cram_hmac_tfm);
+	struct shash_desc *desc;
 	struct packet_info pi;
 	struct net_conf *nc;
 	int err, rv;
@@ -5430,6 +5430,13 @@ static int drbd_do_auth(struct drbd_connection *connection)
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
 
 	rv = crypto_shash_setkey(connection->cram_hmac_tfm, (u8 *)secret, key_len);
@@ -5571,7 +5578,10 @@ static int drbd_do_auth(struct drbd_connection *connection)
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
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722122647.351002-1-arnd%40arndb.de.
