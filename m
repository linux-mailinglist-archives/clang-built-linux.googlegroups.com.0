Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRWG6KEAMGQEIW7QRUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 6372F3EFA9A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:59 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id l26-20020a05620a0c1ab02903ca414e2173sf1043861qki.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266758; cv=pass;
        d=google.com; s=arc-20160816;
        b=XzNfVaiZHItwYQeRjMcQLbo+J14KqHEQWGlApvDpNep6FoZOwtRvjb1CO6DOWQyPf9
         K7N4Ffy7c0/jNEPfklUl6ew9LSCFfEHoOLmwSehqxHKp+1wLNex5BNLRCjWvbcenr1l5
         p4YI33gaaDgznnMY3V14nQLGKNkRzGvDhvlPUjwUAH7lhTanzMl9fN3KdxyQAeJ9QbUA
         ah4Y5NMhHKNO9jnItiVrO0d6rjmAZDn7zd7ts2TZkA8+b3sqTLAWM9QhrTgjMYfT4zmg
         iFPUkZTnaBZjb+bpVGW6TAeTYIpHRQXrtwN5A8uTzrRzpJCXeFU6yFndvzMyKnRRJdGv
         oqAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cMtqlUI0bUKm5P8MUm98fx3OFU/Li43ZbHrBOFkKm/U=;
        b=l7yOP6cuBP5hdPAVF1aDDkUmrr7qyq0RGq2QZkMW4m9j2Z5+kuCRDIMSOThH9z/3Kf
         bAIzH1T4kRpLLfwB+kFAK0zIpvfShXYG/hCkPn/Q/XgC7ZOtWvS1TeayaRbnPrkvVbDN
         emVDcKuzzMMJ0y8OV8hYWkYA/IJ6f05B2STQ9uMlJXoEGlDN32Wg9N/7ndJby6DHd1FB
         3QSsQB6ZVanTdv6MZzi2/xzboMxU9OtaOFckITALHfRSRR0caHdVqntzlZ3LXozBEsjr
         /prQ1mE+d4zltVZZM2J6cBTuC6HWJhfWv6GkIUKPN4GM9rNOf/IKPAYM0n5THDLUAHUQ
         6GoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EyV8N+h5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cMtqlUI0bUKm5P8MUm98fx3OFU/Li43ZbHrBOFkKm/U=;
        b=NXv6PHGL+jG8pr1AFGVUYAmV6EF2ptJUkUR1u2lxYJacypw1EBsdKBoVIe0gG6lx5C
         beG+MvrU4Lax6NelgsDzYt0mYSqgKqBH1qzKaNHBs2mLMwBYWjJN/gJz9lYL/KyBTbXz
         OQe2ma8OQLKttT3rsrlWwYYhxg6HesjcBT3TjgwcQ0k0/fMGG1QRzYowiL2yRyrU9sHZ
         fQ0NJHgrzpSZvdC+lk/z4Zwnz0bCbcBvy0Jaw4mAP+aBtfC3bECa1vDevkTrGsus9Z9H
         oj1L23nCg5w3BIlsutDIGQEQHiq0MIhqydbwyVLLzaEc5IRR4aAGiC59SoN9LuWlb/Jb
         DjXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cMtqlUI0bUKm5P8MUm98fx3OFU/Li43ZbHrBOFkKm/U=;
        b=degh5xlYO1PPulwM5LUlbVBG/fBO1Weqb3X0wC7a+0BrRFg9BwqYQuJ7r7yqut4h47
         dHU+GMZRjRjIUqzuRoQAuio9k5V3GK7omfvnPrlfzHfoUYbiJ1YeNocYDUF2XYOf0FAb
         +h6MOAuukn59jObw5vwDXNSk9ikQT84CrLiW78uVcyvIHIdNkJg0pi6zSC6JQYIpSrNV
         Q+bxtdeF600WtifUF+hULPqc9uqr4PJ6mCMS9ef/KZqTRckcvK7q3VNbip/o6C2GIiAc
         hh8IHMFWanpqBR5BA39i2i9xOeJ1e65LT09OOdTKpNu8PfuLP8G+dz7B/apUAu1Kmqw8
         vJZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ykbUhc5PBTdIqL2jQfxVvjpZGT4Mim3ecULzzKeHsAyw0Bcfb
	Fs823H05kWmfRo5zgiSKMjE=
X-Google-Smtp-Source: ABdhPJyAffYbnoyHu4gLrh0JrE0yVXzxuvpQGN04wT4rJrOMM9sq2cVsjUHpKA9NjJU7yc2wDy9IFg==
X-Received: by 2002:a0c:d801:: with SMTP id h1mr7331874qvj.60.1629266758402;
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c6b:: with SMTP id t11ls323783qvj.9.gmail; Tue, 17
 Aug 2021 23:05:58 -0700 (PDT)
X-Received: by 2002:a05:6214:27ce:: with SMTP id ge14mr256485qvb.57.1629266757961;
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266757; cv=none;
        d=google.com; s=arc-20160816;
        b=NEu2Mz0HLBp8K5ONn89U5dX35BgDFLiBSw4Exmvfgxm16OuFWo7DpFBrMSlwzHAI72
         zsj4y7f3II6RiyUzgUW/HaL2Kp75aQt5ACzfy01rwGJ8KmMOH6GHww4TmPjUrvmzVeAQ
         2+R5OGJ9KnqCHRPHcsedOzmnxaJ3IzCFJQsjrSM3AzDl/dSIbWrr8ZOCx7UQiKqGsGs9
         xtg1Emss+Aj5pK60fOu9m/c3EjfBQeT/MeouZALlsvE3FORPK2q9vn9gfeRTJRf/vp3a
         BTQdpMbILBJuSSAj3jk1+eLqVJxAxbzMUi9bKD0EVnyyuWpRnjpl32umLBppCVzIuo8W
         CEFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LapL5yxDWiBgMKBil8lhP+Lg9k+myZeJSwfalBUcUx8=;
        b=iCFB11Kn0IE8TuROlBZfYusqHlkHvp2MxnBubFUdjqeKKRh6OQer/sk67/+egBNTgA
         ckQf+ULbPxSUsUNA6Y3TphJs9ISKOZI4bSUEVkIMzRnaZhm60ot0JzAs3KMiE7PvaVYT
         h5yXwbSs2BolGV4jFiWNYiCoRvM2W68ndWkLFmtiEEFqT7B2k8XRV+aEPRFb/8TzUamx
         +xZADYRdkvV1dTE7g1ZwxY9MB/wpvUQwaFyFNu6FSPyyNFP1GA3/s2ipdd+KmA0vMkTI
         RLkBSDWL7Jvu/OcwFfRxBxqCc99Odf4XszqYI9T14E0vpPOj3igbM4aJPuglh+20Q48B
         TNbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EyV8N+h5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id s29si231734qtc.5.2021.08.17.23.05.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id k14so1142824pga.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
X-Received: by 2002:a65:6a09:: with SMTP id m9mr7183122pgu.269.1629266757255;
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x12sm4588648pfu.21.2021.08.17.23.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	libertas-dev@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 10/63] libertas: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:40 -0700
Message-Id: <20210818060533.3569517-11-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2964; h=from:subject; bh=G7UVOub35WzvknmEHL7Jl7Jxuvzi8CX0QzWk7fVBrqQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMgWGY2S69iC9ODdZ0M8ZsaWVpql5uriqr4eine F4MboIKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIAAKCRCJcvTf3G3AJteQD/ 4r/L3852/rievd/HCtjIVJUoMOZz6SUoEoguqPYoCiczPpPpeKpJMB8uDD+k8S+pjXMuj6JicBICkI f2K0BDnJV4RbCkdpX2ThRmuC56nyfipIvGvFDigW3cXSGgwsbz+sMvZSBqlf3A1pleXAcEQPpEUoyC RaID84Ddzy1AYdiBi9pz6CgTIdaBUM1LkjP4wcrm0FoXf/cEt0LD4tmk4nHyV6lwvqed6AmtCyY9rU dkA6Dt54qMzRZnzJqBiq7ljl7L68N1be8kdp5LUpxq2Yyn0BE0ppZwnBgQtsTuzQfHJUcpTCLehjQ3 Danq5E5Wyx2wmZ7Dv35hsZ6+k0amIxW5DOQmts0adAHyTFUL3anYRSSQE/rKeQnfiedqVGfcZYGtUG U+uc+d0Zvs3Fa+Fx2t0fK0QcbvU90pwzNkIOW+T5Ohsw9d9Dq/azQaih3qPlTLdjjD8tLTboKMAaq0 hBeX108f8oS+tPAyr9Si5SDMTQ53AQcZXq5mYhf1zvsBBwERro7eooHHOnz7tjbQ/qKu4Si4UdGOjY 2oczS0+eITr2B5b9x+s3d/Ajm+ddM80FRaxskj0xOZ4KqteU578zDbWR6ZKyyOCWHiGHtWU56VNIpE IUv57AbMXBi9rAtXby90zuCBN5nHMWxPrySRevP8u1bKfuHgTRdHaYeaYxZg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EyV8N+h5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct txpd around members tx_dest_addr_high
and tx_dest_addr_low so they can be referenced together. This will
allow memcpy() and sizeof() to more easily reason about sizes, improve
readability, and avoid future warnings about writing beyond the end
of queue_id.

"pahole" shows no size nor member offset changes to struct txpd.
"objdump -d" shows no object code changes.

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: libertas-dev@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/marvell/libertas/host.h | 10 ++++++----
 drivers/net/wireless/marvell/libertas/tx.c   |  5 +++--
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/host.h b/drivers/net/wireless/marvell/libertas/host.h
index dfa22468b14a..af96bdba3b2b 100644
--- a/drivers/net/wireless/marvell/libertas/host.h
+++ b/drivers/net/wireless/marvell/libertas/host.h
@@ -308,10 +308,12 @@ struct txpd {
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
diff --git a/drivers/net/wireless/marvell/libertas/tx.c b/drivers/net/wireless/marvell/libertas/tx.c
index aeb481740df6..27304a98787d 100644
--- a/drivers/net/wireless/marvell/libertas/tx.c
+++ b/drivers/net/wireless/marvell/libertas/tx.c
@@ -113,6 +113,7 @@ netdev_tx_t lbs_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
 	p802x_hdr = skb->data;
 	pkt_len = skb->len;
 
+	BUILD_BUG_ON(sizeof(txpd->tx_dest_addr) != ETH_ALEN);
 	if (priv->wdev->iftype == NL80211_IFTYPE_MONITOR) {
 		struct tx_radiotap_hdr *rtap_hdr = (void *)skb->data;
 
@@ -124,10 +125,10 @@ netdev_tx_t lbs_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
 		pkt_len -= sizeof(*rtap_hdr);
 
 		/* copy destination address from 802.11 header */
-		memcpy(txpd->tx_dest_addr_high, p802x_hdr + 4, ETH_ALEN);
+		memcpy(&txpd->tx_dest_addr, p802x_hdr + 4, ETH_ALEN);
 	} else {
 		/* copy destination address from 802.3 header */
-		memcpy(txpd->tx_dest_addr_high, p802x_hdr, ETH_ALEN);
+		memcpy(&txpd->tx_dest_addr, p802x_hdr, ETH_ALEN);
 	}
 
 	txpd->tx_packet_length = cpu_to_le16(pkt_len);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-11-keescook%40chromium.org.
