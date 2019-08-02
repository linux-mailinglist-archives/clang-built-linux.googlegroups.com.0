Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6HTSDVAKGQE7C7GXYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9627F91A
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 15:26:17 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id i6sf29382572oib.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 06:26:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564752376; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZyhAuuZSp24YTEzt8xAarfTO5P4DYlBwYhClI3CqJzcSJn1aHi7cV/jM5pxnWu+NX7
         QjW4coykoMMWVzDbCGZR9BKYoKp8mSrs6kD6SKGd3OYq+dRI0U1LOeiGls1dTxf3IpTh
         WgM4FjxTiZdXCzLgG2B+grjlXdfjyUeRhmBdixOw6+Py9dHMTFKuC2AEfWuyo+/HCDfs
         kOeetnjppR5NrTnW05MRO+TYPX7GTSSTUB0jbV9gEtHhiBmz3pICZqsrskKw8owo+MDY
         ZEPWNQeeNsUeALifQvwBvCYEH6Oph4eAzKW4uZzx7DKEGchEjlOxtUWye3qOALB9mRYi
         OQeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PgPZZMAYt2r7nSBxgWzMij7HjvRXmx2ACjlwcZU93YU=;
        b=JWpJ33N4gf36ZqHdZu5Djn7aSR7nmXYDIHT69+AmhZJzoq4sa6e+LvWjm2khaE12kj
         QHlSCP9Q+nJb3Z5fsT9Me0s/G45SF77pNWYz3+8sNYNtKw5+f+jjwq3HBvSXhN29VJfP
         XPOq0hCQBJdVR+eY0zCdcSio3LeCykZjrY9Ch4Wv/IT1z86z2M1m/1UDgvrhiUwmiM7m
         0GciSae2Qgxl0Y8H2ykQCE/D6XCRzu/y871KB9XBBvLhcDbk1BvjygSaT3VbZhN/tXmu
         StwqJsBF9mIkpZW2b2usynuSXw7nm8LQ+GlzPK1GgTbKOXha3NbBuElVkp7MHnUgn8t6
         zdXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q4k1GU1D;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgPZZMAYt2r7nSBxgWzMij7HjvRXmx2ACjlwcZU93YU=;
        b=AjaE2leRdZLlv1in99RGKcMGxc3e+NlTtZKgW3d1nuSIAWTD+bF9Fgq4Xwt3I7HcJ2
         3GoZyW9JQ9sFH1My97aG0XHIiUUEBue/LyJrB2NO9JYUuV96nCzHpoo3rdkCFpg0rOr5
         b5HDia2Ee7lMiOIjshgWz/diaiESh32RUcTmpp2MiB4sN9dTa1u+jsuaIKHf6SsR97+D
         P9Yn23OiIrNCNVRS64UNw0B6pNeIWUBNBBMlwgea1IHDrYK7x26rgAHzeMsppGi6szWo
         ZdVj1W8P975YvDv/qA/6g9Tw1wsYnCKx24jX7Uchb50ZzzAT1Up6Fzk4CIAe0aimGYdh
         d8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgPZZMAYt2r7nSBxgWzMij7HjvRXmx2ACjlwcZU93YU=;
        b=gpXfJ660D7hSJ3X2KJ+GZLlpMDCfTcNwJ6NM5PuxzpAZ2gXGeyDOoRTY5zKR150ik3
         //UG9e4ht7WBbe5qYbsxbQ/A2/1QLFicgz1/QdCFoCHv0Yvu6m4HI/dgObEd2+QPYTkf
         3DNi/BNrehczlltSqHhLFSZzmu0N5YA4MLfylZ6O82COB3sHcI4CZgn8RTMxgBcBjBKI
         zHp9FowgDUkuYy4QiVCuPGgAjD4fTFdgkJrWI4QiD/tLuHSf0nJqACiwxU+xaP+0a6av
         bgEzye3A1GpBdxoSETcuuSOpudftemgCQYPvZ5ACgYWVqGIF+R9xoiR/JB/YsbOSwvUz
         j6iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWnjEigdfVqR/T0sddexO35Q+UfNntreWmHw87sQL1F3BhjetJP
	26dLMaCxR+sOivI7ylm84H8=
X-Google-Smtp-Source: APXvYqyBcyJROFSiYL0PrKqFnJDbc+uOegEnb7j09t66VQcrUxOYnS2CIh+aio0u/34nfvOGFMfsBQ==
X-Received: by 2002:aca:b254:: with SMTP id b81mr2800534oif.53.1564752376534;
        Fri, 02 Aug 2019 06:26:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c78e:: with SMTP id x136ls11766638oif.5.gmail; Fri, 02
 Aug 2019 06:26:16 -0700 (PDT)
X-Received: by 2002:a05:6808:98:: with SMTP id s24mr2707560oic.127.1564752376164;
        Fri, 02 Aug 2019 06:26:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564752376; cv=none;
        d=google.com; s=arc-20160816;
        b=f5HL134zR4taZz7f2zZvdOoXY4AA/e/n+YvunQ2f1qoHncVhIw2c6QkKy3s5k4VHYv
         pMirvw3bozwbhmSq609DTgdOZRHR8/reW8hGadpsOPsA7hLI9kSYV0zjy8wNPIkmt9I3
         b3vxUMpaV6/wzcbAulJT1NSUEHzsWsvxUyfoAS8LJTRWcWDlOzBhj8rFkrko3RK9roI2
         RgVJY+do25QFSo/qe1KU61/c2I9cg5W21e01ZVtg1Vy0TIAqMnSnopXD7WrRZ0nK47RS
         KmafjRAvLrrxVvUrlMZiXFdqK1qg1NIsy7d/hN7Vz3RT04HLnQqg02X6NShdSiK/G8nh
         +IHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rex3CMTdtCHM7CAWplaJUUOU3mko7kdksIcr/Dd/9dw=;
        b=e2DMCCaohP3p5qYbXTkXWnuRnU+rVUnPkmd+1FwPvgVDXzUBMhyuUE/vAcgvOvO7vh
         6OxJYm+wfz4HOMnOSdXZ0L0BSC84/jHPV3z6T637INSLdCU/4Sx3LtNrBmG5jjA4u3ib
         XxMZaXtPEIj50FHSBV1yMbMawN844j6CMFlqSCHwRO3A2bgi9tgbXeEz9AQvcyD9bm/8
         2+a20ySEZunqCFKN6Q96A4aJevD9/zw8mXMrEd7LWxaJ34A4T/MQKbhtNkCb4IO0ZKJe
         +PQpaI1WC/fhgR/zftFlSwqvIjG5b8cO8uGvgj/HMnr4W/RNMd0EA1HwYfu0BZ1ugNCt
         DSbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q4k1GU1D;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d123si2946182oig.5.2019.08.02.06.26.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 06:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 565EB21852;
	Fri,  2 Aug 2019 13:26:14 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 15/22] drbd: dynamically allocate shash descriptor
Date: Fri,  2 Aug 2019 09:25:39 -0400
Message-Id: <20190802132547.14517-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802132547.14517-1-sashal@kernel.org>
References: <20190802132547.14517-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=q4k1GU1D;       spf=pass
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
index 83957a1e15ed7..8e8e4ccb128f3 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -5297,7 +5297,7 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	unsigned int key_len;
 	char secret[SHARED_SECRET_MAX]; /* 64 byte */
 	unsigned int resp_size;
-	SHASH_DESC_ON_STACK(desc, connection->cram_hmac_tfm);
+	struct shash_desc *desc;
 	struct packet_info pi;
 	struct net_conf *nc;
 	int err, rv;
@@ -5310,6 +5310,13 @@ static int drbd_do_auth(struct drbd_connection *connection)
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
 
@@ -5452,7 +5459,10 @@ static int drbd_do_auth(struct drbd_connection *connection)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802132547.14517-15-sashal%40kernel.org.
