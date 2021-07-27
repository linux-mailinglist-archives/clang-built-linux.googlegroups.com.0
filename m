Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHXHQGEAMGQEABGFCHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2794E3D7FAA
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:11 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id h17-20020a92d0910000b029020269661e11sf283150ilh.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419550; cv=pass;
        d=google.com; s=arc-20160816;
        b=wv8+tK//QrPo2q7MePz15CkDXL9J1lJ03U+dbbxu0EiFKY91mSTWb+lP7H5OVVszYP
         KwdlgLYsXqlyA2uUfQQp1dJZTuB4wrkaZ0fru6syrUnrZm48L+zUejuEs20MNmyVcQe/
         uzjq0v9Kw8xCz++R/jiHgWITpDyZtxCLql3/PtkV6ZvHxP7zfYCgNciEEL2LOgibxqEn
         l/stflXBMtLT2d4nixqIos83cvYk3rBIhsg24KQWakZM6G+lpKPzPuiasMXpzd6Sgwoz
         qf1k3b+V+FguQbVFyTgr1QKgz7++v1xXGdyQgauW+/0u+usS69UNlKa4gf6WMgFw0pqN
         Qr3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=E6jWdcmqPDvTShf0dxwzBHSoto4tMF8pLaIdRyDwXD0=;
        b=EWzSxABNqdzqGL2bYutIsI8rm9EXHR3NpF2C7WEMeUTH6vxJJEKUt7dWgk1KEIKQpp
         B7aAmZKJ/yEvYaYa0PNlwzcC6mwcMW67MKdJN90garMXi3cdGuqA+SvnviVq1nTFiXwA
         5EwZRmRsxTQIScfxa6zieDabqP1hlNSyW4hQ+rUm1kODGFUhkJoYpGs0+NnXez7Le0zP
         yo9+qvaOgXNsVAf2fir3EW5lU1bzAw0ycjV7qpMyERdFZWgsnHYFb10/DrlygOjILIni
         GQfEM4fmHzsMRQV0zg1wWlj2fJ+4Xy5WjB5OwYVsdHQ5Mg+hohbQuGDOf9XioVZZbGTH
         VtDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GtYyBBbt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6jWdcmqPDvTShf0dxwzBHSoto4tMF8pLaIdRyDwXD0=;
        b=goj+PfPbSTGdL4H4CSuECJHcsIBA6jkT5kjjXWpbIZ+TmqcYD2pW7c4Q4lblleEvUB
         LQ3Aq3UP7iDJ8LIYQVE+GUcztDmtoqlYWD/P8mf0tnhkqCTe69m9kGP4kXZCB9584ORy
         /jNefXRMZi8en9NMHyZlK4ugDuLbM18lGfpQRRGCu6R8GzaBFJT2zjgGB4y0A1mYmg7j
         xXx7IZeBgfcE6U0Wh1owzLUv1TfAQkHreBu4BfTUP4hMFdscFgZvJOFuQYT+4BPoARf5
         lyJ6GWu2/WXqxyTuVqLrR1mhbXiwJjapNSKmKNmO+gP1L5pQm2uOqGizcRshU0jiOcu3
         3XXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6jWdcmqPDvTShf0dxwzBHSoto4tMF8pLaIdRyDwXD0=;
        b=Vz6UcgBvuu4uRUF0gcuD1JEjq50zHC7f4Y/F4MevukbCB2p7CTDiS9pbEXmnsihLIK
         9U9aZL2IQVzn9is7M0uOysZPsMnhDfTbS2fvJl4zmit8bGcqClUH63YDo3I8i3ohVn7Z
         ME14BfsFpwCM6PHwhm9xcZcOduRQNBBsfwmCTah2VEwFqUdXbC1FROlnq52Avr6jW7TW
         yI8HSkaCXMW+09YpA50Kzzji7aIza0zX42wI6uJs0mL1+bHkzd4wGh5S9lEbR3x21v8l
         Kd/sY3TinzLAukURGlqTHoxB4AtbWLixdmcGCYP4btTV9OJ8NRg3wQSndTdLrPCkeXaS
         qI8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+zyRUH5GBCNXHdv5dd6H/pjx5hL+CvSrXX7gQIlhm4F4tWM4q
	5pqpirSjc2jjQZmMLDPs7hY=
X-Google-Smtp-Source: ABdhPJynKYfSfH13F6l9+BtiKECBM+mRbQ8Y0RTRki72gX+hq3BAYH2rNYHwgwCIlgRxrjmjaFfeFg==
X-Received: by 2002:a92:7f03:: with SMTP id a3mr18088271ild.254.1627419550156;
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d19:: with SMTP id i25ls389844ila.10.gmail; Tue,
 27 Jul 2021 13:59:09 -0700 (PDT)
X-Received: by 2002:a92:cc85:: with SMTP id x5mr18921138ilo.266.1627419549787;
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419549; cv=none;
        d=google.com; s=arc-20160816;
        b=CH7YDlea8O7/ScmVpw0MLLuzxz05E0z/HW3dMsHPamec98EAhvMgIBVViVZynAcKX1
         Fs4HRtTBgfKSyX1qeaotTXqQpEdpEZzRhR6vkuKHE3FQKRBC0BimQr2c1uL7NWUgD+tW
         HPofpdxi9rzptNAvIfbHPYVcf0BOzd/ZxqV63rzQ3GfFUVAshYS3IFO9kUMYyMU5cCAP
         EMiQwHIdurGsbmj4KW/4Zkz8phZd0BCu5tiU4KdRrHiH7r3fQnXrv7Bx31Ep5+rKFcdg
         7RODciYjnqags4Uxu2noejSUx+ffQyjtipPGNk0679Cn5tq+WIuVABlJwr/3ZApKQQu1
         bIhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RbUTIPyfuQU3KvEwbLJbeU9iwD29PEErUjBhpe3f1nk=;
        b=pAx8wTLzjzqGVVl3aKUvs91AWVdy9Jeq9ApX5Gt0Svo7KUKhfoY2gTCUhup0Ah9NGh
         QhWcTmSzZp+/Ktynzx0T6NcUSxjCddwrRmvUNZL5nGZsnx6rnrh4nHG6JlkshA2w4BWf
         jDKAIlzm+D2vqQiCpLUD4QHSywTL8Z1TcloTsw+ak0fH6x4GVVw91MQtbspgBa3TswZb
         7ZG70GT5ja5zg4xvUMbcNtRQFibBGHYiVMYhoGaEqoSPHtvGdW7NGobVapuKfrrBcBFZ
         W72rbKnXsukTck3aeMyvrQCAT3d1bjc2e6T+jCxvHfUEJJ5r3Cg9Z44CK4Zs5Hu/GMVI
         TJdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GtYyBBbt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id q12si362287iog.2.2021.07.27.13.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id u9-20020a17090a1f09b029017554809f35so6564392pja.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
X-Received: by 2002:a63:4b20:: with SMTP id y32mr25282843pga.382.1627419549553;
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n12sm5264202pgr.2.2021.07.27.13.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 14/64] libertas_tf: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:05 -0700
Message-Id: <20210727205855.411487-15-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2474; h=from:subject; bh=aN5SRWSO0jhRLPZQ+xEXk4KxeSHDMCg25qp77Fv8hh8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHODeg0TURmPLYxq0mwE2hFWy/0AYNHuIKbeAQlp DWoEAlmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgwAKCRCJcvTf3G3AJjDjEA CAOGWMwUe/TqhcNNpZ+tmgfq8Zfq/oBEgyGg6BbrnIuZqsMJLAnXFi1FFsi5XiWdBd9wW2z+pWLDsZ Qk5cK3uqkczBfKd+ThpeYFCNe/sGC223YyA78nUC5LdHCnah148wC6VuU4iYiPf187zVu1aljWgPkP QgNCXG2oB9NqtBh3pf0JmaHSqgeAqqpxLaVaFEmJDH7QkNmA17wGfU899KFpdb3HVZ8CkncDMoZhn1 DPXzHpS9vXg9vY+WPSF5Taeau8VEyUmFL+4Pc4A2M2LVWkpNBJCyJaADuQQg6QJdEmd9Qr6GMczp8B kuQcY9rOtl7uJhxsUbV+WyMYzIHXeJTGYueZa//yzwGhHGliQt3xlVGVyKk9A3pnvgh3jDJN8uYVaj b/rYpFLFcaBGhaT1yXcgkFAyKZpXO8Vh/Pi/2cwO1Z5UW4BAcnj54ZvKyiY4BZaN4jeZ47sDe9ccuy Y2ISwX8AwsLUH5I50e1AM5SHgOwd6aFVQVGJ0mAJspEUB2gl2BWkH9f+9sQ4HHmBKVKFcOmb1P4Ax/ PyqbaIoRlAj521CKzVKPR5wMiaW+0R2VneaPhPljqaAoY8fgIovvOjTe7GjzsFwSiv1CtakSIvU3Td UV1MTQ9MpUR6nFelPgLKjEpZMPkFtJ/MjnG8kchV6cXWqyz8+t5IN5yp45VQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GtYyBBbt;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field array bounds checking for memcpy(), memmove(), and memset(),
avoid intentionally writing across neighboring fields.

Use struct_group() in struct txpd around members tx_dest_addr_high
and tx_dest_addr_low so they can be referenced together. This will
allow memcpy() and sizeof() to more easily reason about sizes, improve
readability, and avoid future warnings about writing beyond the end
of tx_dest_addr_high.

"pahole" shows no size nor member offset changes to struct txpd.
"objdump -d" shows no object code changes.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/marvell/libertas_tf/libertas_tf.h | 10 ++++++----
 drivers/net/wireless/marvell/libertas_tf/main.c        |  3 ++-
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas_tf/libertas_tf.h b/drivers/net/wireless/marvell/libertas_tf/libertas_tf.h
index 5d726545d987..b2af2ddb6bc4 100644
--- a/drivers/net/wireless/marvell/libertas_tf/libertas_tf.h
+++ b/drivers/net/wireless/marvell/libertas_tf/libertas_tf.h
@@ -268,10 +268,12 @@ struct txpd {
 	__le32 tx_packet_location;
 	/* Tx packet length */
 	__le16 tx_packet_length;
-	/* First 2 byte of destination MAC address */
-	u8 tx_dest_addr_high[2];
-	/* Last 4 byte of destination MAC address */
-	u8 tx_dest_addr_low[4];
+	struct_group(tx_dest_addr,
+		/* First 2 byte of destination MAC address */
+		u8 tx_dest_addr_high[2];
+		/* Last 4 byte of destination MAC address */
+		u8 tx_dest_addr_low[4];
+	);
 	/* Pkt Priority */
 	u8 priority;
 	/* Pkt Trasnit Power control */
diff --git a/drivers/net/wireless/marvell/libertas_tf/main.c b/drivers/net/wireless/marvell/libertas_tf/main.c
index 71492211904b..02a1e1f547d8 100644
--- a/drivers/net/wireless/marvell/libertas_tf/main.c
+++ b/drivers/net/wireless/marvell/libertas_tf/main.c
@@ -232,7 +232,8 @@ static void lbtf_tx_work(struct work_struct *work)
 			     ieee80211_get_tx_rate(priv->hw, info)->hw_value);
 
 	/* copy destination address from 802.11 header */
-	memcpy(txpd->tx_dest_addr_high, skb->data + sizeof(struct txpd) + 4,
+	BUILD_BUG_ON(sizeof(txpd->tx_dest_addr) != ETH_ALEN);
+	memcpy(&txpd->tx_dest_addr, skb->data + sizeof(struct txpd) + 4,
 		ETH_ALEN);
 	txpd->tx_packet_length = cpu_to_le16(len);
 	txpd->tx_packet_location = cpu_to_le32(sizeof(struct txpd));
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-15-keescook%40chromium.org.
