Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHXHQGEAMGQEABGFCHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECA03D7FAC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:12 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id mu13-20020a17090b388db02901769cf3d01asf606841pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419551; cv=pass;
        d=google.com; s=arc-20160816;
        b=TbczmCboWX3wu3X5FNWqpE0gvSFJy0e6tAdCo4iC9/scft1lkGoMtskPuBJnCP+szW
         vqcF+1WfFCNavx59qcaktsnrsXZzSalylgGgtgGlL3wNu15xUjZ1sJ37m99tF2DdJAFA
         4WDBNdBLyPUVLFTn3d3J8vPs/raWFx7W+Tkoqqlz2Ysu/4QpMsoq6D+pyPTdPVUqEso1
         7/kGnk7p2AuojTVeXZB+fSmQe3Tgb51bmcvXF7LMLVhcqBvB/Jb+7d+XgpC7hNgAqCwB
         uHnKJb+gzj9ByPfmMiJH1vJrs4WGsAkcii9ltVgu3l3YxB+bCymrWZbFoNGUUTZ/U/Ka
         jesQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hg8TSjCBi44F4jbTnn37edo82x9qEp0SSWuvtfpuHmA=;
        b=FjNHW7AjnsGzfR6M0qt5/A6LqEW+2bTTSwezEDvIXMIzHWRCkNX/h2mZ+vPJd+NDKe
         2fVBNSP+6YEyPEF6jCUc8A1KDpddVWa/U6DWSmlyCnBUoqLdWVA6VEg65mWe5FTTI1yU
         ooVjx6mhMU/w78rfUZQvbn71jP3uCtvSqzBacttlRH17Ah51aSORA4SlDpU+x6MtWZkO
         8n9AngpNlYUlFl+DIHokA5sqwKU4PqHNSNJ+KvFtmckmgVgOelLYRsnNKtry8EM64ZpU
         ZZe/+0BLaYDGzz5DbrUildamJwgy3/Gh9VwCGFNOc/f7/O1+Jhc4KSc+fC6fQ+/aBl+a
         C6Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VRjvQdRR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hg8TSjCBi44F4jbTnn37edo82x9qEp0SSWuvtfpuHmA=;
        b=pH5r5LYWDgqfkIlYtjV32+fX3bHF+tvYtbaRd0AFYatIvuyixqUso8XiWZqMNoV3rG
         zhD5ZWEkn/oyzKYIPypCXJB0fVeTpdA02khvwZjGFSCgvAoPAmM45HM27jWxg/VOoJcH
         GSn27uo4NT20S1/vfyFs0pL1adsl/yoebPozYn3pmgnhZeB4rMjbKmZoIUo9XJUqdK9L
         kZZfWwYgd4zsGTKVvgeKvsWFQ5P8UBpJ6lAHEKGzXJ9m+PfBnYjUAkuIl1ipUc8NgQZu
         LB3l3rGlXtHvhsdlRFH+qqrf7aKDwPI1cpYTS5qL/6C7iB+Fbd6mPrYItg2lD6S8oO+W
         /NQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hg8TSjCBi44F4jbTnn37edo82x9qEp0SSWuvtfpuHmA=;
        b=J2Qt7WRrXtp6d+anjYlLQRr/EWcziUyW3kB0uC5PJ+wQiT1Cl8hMsjXiFiByww0On0
         xDBa0S6yBLq7EJ/HIDrQZ4lNSwZdG1cbzcRp3sfVKnGEUoNx0rbiDGD1+Q5YGIH40lar
         BiRR9VAmn1P7nwr9Zvs6f5C5mZIwnaprt4HI7wgM/y9Fzj5LXPU80Xf2XZd4ddb3Hs9T
         71ZTDlYyRnx2gpTeP1bkHTBWVIUCH97Mj20gXmyzjuzN3NLhjWdCBMfXIDxcUz8/zxZk
         VOAcBqBHOUcmtY6fbNobKXVWgNk3owosN/4MEo6zCE0RwPwIrI94mc/6FNKAzwUL+yvR
         RGRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PiISCps2LkNObC1/zEd4EKBTOpBGF6qqMzNe244iQUVtlpnM1
	OLJbUhKlFHuRGcQkwlOLC8E=
X-Google-Smtp-Source: ABdhPJwT+GxSZ/kWt6qBWjPi7LPmFfaLIDo5QM6IPtHpmO2ZD5SczDg4KvA7yqYl2j0tI4bZj/pVFw==
X-Received: by 2002:a05:6a00:158e:b029:32b:9de5:a198 with SMTP id u14-20020a056a00158eb029032b9de5a198mr25203749pfk.3.1627419550891;
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5256:: with SMTP id s22ls64539pgl.11.gmail; Tue, 27 Jul
 2021 13:59:10 -0700 (PDT)
X-Received: by 2002:a63:f712:: with SMTP id x18mr25635855pgh.389.1627419550389;
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419550; cv=none;
        d=google.com; s=arc-20160816;
        b=AwsEtrpYl1NkBxYaGZbGvFufOm3JhThW88lqtmGtT3B3jUsb/lGzTJD7BUUp2ZPFcG
         87QYDRuDbc//V5690PEs0uliEnrnQoGLTPOUCwElIPZSq9jiRfUKZZvHBPDUJfm0UOwi
         ZCsxFUD7z8rIkN139uTje28gCJsXIjSO1lESK/PjCmB/NYiFVKKIPqxZA2O5e10IUqgB
         579Gu816PYQ0kwSIaPX3/awTbc9RATtsq5dnzgwR0OdcfC0Wg+nlH4k0cloE37i3P28k
         U8g1dBbL6hGueIdD5a4TnnU30aUzjyJqVWpLQSNrBJVUqA3s5Eg0PX6+9egMM9vDMeWV
         vlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FMXWh89VZYemVKOC1nOMHXOf0EkNJ7d1gpgnv25tUVA=;
        b=R5bCM3UjO/d6J7TF9H0inBuv2bK5oBFazvf2vi2Vf9J9HRk0gsS928p+Vh/NmMn8X0
         BLnPZ13cFFeDnvzJbeILJ7OsZnB09fT2SHl+iHExdWwmhNUtsc2WNRX/xBH6FgIUDA3M
         O3qzbxyMgEcYzWUl7NDEKv2u/VdVylzGCEDuqtBSG4ZcL8zxCd15Ysi4qreQJQqYsmdi
         W+c0ILi9WG5FatrGv0fcGbgbruzNLIB+laKnhFd1gI8HdtZy+eOgW3t5Q6LEP/ycHUq6
         rqkzFeyFb6auopB9HYSEN0AJzwTnuAXVY/F+CqeioMMIlxduXXYHbxfgaN5EWSt+LTrL
         50vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VRjvQdRR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id o20si355563pgv.1.2021.07.27.13.59.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id mt6so1831111pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
X-Received: by 2002:a17:902:ce86:b029:12b:b41b:2e68 with SMTP id f6-20020a170902ce86b029012bb41b2e68mr20161809plg.1.1627419550186;
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f3sm4853027pfk.206.2021.07.27.13.59.05
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
Subject: [PATCH 13/64] libertas: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:04 -0700
Message-Id: <20210727205855.411487-14-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2740; h=from:subject; bh=aefCoJhV9lyPmgKpvdOWTp1eHgAAy3wtBLWPOfGvPCw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHODxcQA7hFiK/M9yqFXiZTlrkWV9wESsqNUkUC3 ENS25TmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgwAKCRCJcvTf3G3AJuWXD/ 9EEbIRmE0Sf3w/qtDGyQLeiBdvitwed0MqGCR54+cy4POmCGJEXkXMe+UsA2tUg7eala8PPngaqDKo 0ERL1ewBHx4UD7R+AEvkOFXcZagB1d42rFbOcpPOwrftFS6pqkon4FdosW0+MyMEf2BnIg95MZ48pZ 0dyeZPhVPj/CifetiJMIUTfVMkOMyMFLrj4I1QaTdWSnw1H4W62BrhGDAQc0wtIpxRE3GRSS+57J5X fda42m/AefAnCJ25BDnCSuL0nNlmXnB10fFKxeWoEU48gScMVd36kIeusvAI4E8KSAHUIX/SsSfg4B C6cdu9pXjtZk6na7YL3clAWf2vJ0C5dLpU7vyJPM1wtNB90psbKGHH8XsK/Wi5Hiz48C37rTTkjItG tWxOfN33ZRWxmjHBixtvVsX+hOU3m3jebrGd1IBvwiRCt1lQFTvO8wTdpkLEdT/hBZ37SfUrP7i2CN h/zVNAg6ocxkPF5UNjetoviDaRQ6L+oQKTilzpJlOBKdctAfQ7AqO0hQ5/FkXTjkMxSrVzFGsjpZaa uoeBKt0sZu+bCO/t4+qslxRaHXCvklEy7nB6J3q5w8GbuK2nmOkzeGHgppPq7LknjTN298gn73rfUn 3C7Wt5tq8d4a2uxndbXu1sQkSynV2tVH5+7XlKmxnZyCRO6ToCcX/c2fNkoQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VRjvQdRR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-14-keescook%40chromium.org.
