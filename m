Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBR7PQGEAMGQEYXOLU4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BED3D811D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:56 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id z96-20020a9d24e90000b02902a57e382ca1sf7981351ota.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420616; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vuyck86by0Vva4jGBSAWZn9cPpwR3jPQLyvh5liFQeQsBe0n/CFikZyQ7izVUBErji
         +IrH1fL5v0x3auF07v7ZBrs2AS0Ah5ObtXzp8UrMWjwpMsiJJb9EvXNoVCQbWZgDKrEg
         YDLAzLUlOmoP8u1aMwtPpd1rt8ckDonvVISp6hakrztIWwr8I7DAxVQnT243ijgAstKi
         q98YYo8CeVj4fy8ullWWvHSX7wNZWvcHbWaYtCaVPKJIJB2FvgL0+cX2hR2iBR1L6VuF
         /68+ivcda5DDghZhM29H2cxbWIjmYk45twtOqfC0GpsWLO4ZuXNFlOcpql4NpOIvkFeg
         CPYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1megmvdtdInzp3C9vK626w0GSQQqpuFTyJh9s6r3M1Y=;
        b=GmxQRgmYhfBn9VaOzV21J/bzyF0tjFFnY6/9WC0eAECEMfAtl06w9xgO2P3MgrOrc9
         rxSrazAUH8vDur65fDkQCUWo0iwndVXiyKSH6La3WpDpGMWwjZDs3onwbMjYxtQrAtH2
         mCaOfbUQNZ3NMTW7sycmtELjAEOTGKi/kjjz/AGOWhDJZPH5/+4oR/9B2rH5a5xWlW3P
         ZP34/KkUff3BPfFEMjpSy/IcJK3pljt39ximbIf7At2DOiu3JEojwxa9GqWH0EptrGHN
         SMMjN9Kb1Pry431k/RKxqCLcWYizSGeNqFt/d2haYGaMsKO5aYAvX35fUMlOxnWSvvim
         wXJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ok0JMPyO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1megmvdtdInzp3C9vK626w0GSQQqpuFTyJh9s6r3M1Y=;
        b=YLzAvvb1A1mxFNR0MhKoR52Wz6+6fe6EjndvKB4UlYcxstEJ7U8ek9uWzV3w6G/Qho
         iCPWOVp6z0rbHIQY4QrP7zy8F/czRYpbZhLwtCxz9HZ0d8oRcVq7hFsASoMCmEHYKZhm
         JzZblxBUx6zxp+6odmFQmd8R/2YztvkKjNncfKLaOaAUhpp6KVT2T4Xd1OuZzwYJTCha
         gJu4kvBaGBLSAKj9oUcEyU1rk4jsY0Q1Nn7o25Hux9P0DGgnhSFi9udiJLa/hCy7k7Rq
         SSX+lLcUrA9SW74j10eu7dqX2GhCCLev7FTwSGAJ5KOGwwQX11gO+74OxnYbDrll1AgO
         lo0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1megmvdtdInzp3C9vK626w0GSQQqpuFTyJh9s6r3M1Y=;
        b=dlQJz351H1Pzv0lMObiaa3916tdjayA2bjSzO942+bhB0pJ4aE1b5KaPbnSDg4DdRD
         UIPClL9sRHvrB4cxtJNj0rzFkToZ3yLG3Zb0B3sQZ3dRyGNL2mv532pAQTlWMsnbwwSw
         ul8xi9cWk5a5ITmnzvy3yBOsjfjV3BUE1EOMulVE7leWkwwcUzIhcp+iWqM5p34HbLYj
         88uO/cw/uMX1RckTVioquVcFJaezqSAsRYSArO1BK4Xn7hhltxILShym7XdJ8y3HkoIp
         cRwb9W53JiNHzxTi5I6KrkVsS804G/iYGVJPHzEEfMchCBUIHHtgszASNJw0rhKY86NM
         Drrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Foy+xeYxZbo+jdgCFu6lvfsXCSw/IOsxXumxWSpHehruWbYxr
	itOyib1sn+uQ6+eJGw8sD1s=
X-Google-Smtp-Source: ABdhPJwZfS0MkWYYtra5ykdBcacA88t7eLHyY/feuRgeao0lfsXMw69NWQ5K4+ldBKDokTJHmUh58A==
X-Received: by 2002:a05:6830:2b25:: with SMTP id l37mr8440806otv.324.1627420615881;
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls27958oto.8.gmail; Tue, 27 Jul
 2021 14:16:55 -0700 (PDT)
X-Received: by 2002:a9d:665:: with SMTP id 92mr6145461otn.79.1627420615517;
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420615; cv=none;
        d=google.com; s=arc-20160816;
        b=BrbfnplmMsWaJ8AqxDk9/lmIYs4E/4JuKNoud2AaO5oiyN4VPlaFnOEc3i+b44AKqH
         wQrqQHDAKDc/ZaJ/AHwEeuBEj6Wu/Q8GQURrWyR1qU7d9qShm8yBN8Ym/RgD3GT2xOmV
         hY6q3ezVby1z/7HtlqccJfztqQ6nvHA7ELAt0G5q3VVsKgSsov9+QJU8uZYML8zVUwd/
         Rs7J5VY3XkU3yQtjug6nR67nm+kNwDQObi0FDeihw6OtqIfd/HfZGw5ZFUTFb6UzUJb+
         3mYBBzbO4Yh0TDARiNMrwegoIxxyJStdmCLshlvQ7HQqA/zRXUgULO6KZ3xFZFlobO2v
         lwsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XdwAH1wi5GybK4WACckEvbqqM0uNwW2ti2D4UdHSPZY=;
        b=L2ZiYHwxjWJjb9gSa8U5JNe47cjiTAl0owLfnWyU8rMhMzz01idRj34kM5KXo/tVw9
         io+FVs7BPri+N6BRRoEkec8o7nZWnd/+fnvSdGUid1sHaVt3sZX+iD9voP3Rk/sMWGUi
         ed/dVYfRcCVJGCZjxHo5CfocUaWPud9tHcbK7ddlUR/GZYqmQH8+vqMA7lftbegnzSr/
         A7q4DpNUDL4FE/oBrtE8jgEMal6PQIzkPLph3cbHn4LGFMUSqwwHzBSl14ZeMIYjWmez
         FaHVFGPfMnXmh6RBKTI7k0hKfqn9UNZe+rHI+wDLapqrtN5BIC8ChWyW4eU/T6f2Jc0L
         YlGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ok0JMPyO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id h21si237159oof.2.2021.07.27.14.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id mt6so1910270pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
X-Received: by 2002:a17:902:c950:b029:12b:6dff:737e with SMTP id i16-20020a170902c950b029012b6dff737emr20365641pla.23.1627420614916;
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y9sm1353654pfq.199.2021.07.27.14.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:53 -0700 (PDT)
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
Subject: [PATCH 20/64] intersil: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:11 -0700
Message-Id: <20210727205855.411487-21-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2591; h=from:subject; bh=XN4EcfAHOcyqzqxgubXwSLF7jbqQXUd6RGr4EKrJNsA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOEPEvZgYdYMavqPMgeDE6afWty3UdJd13OmXSL GPE0C+OJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhAAKCRCJcvTf3G3AJr8VD/ 9xVNxDN0+Jpu0O3w+sAgW+rnCimDM7o6SG5YedgqLo9ucHl7vx4cyG9meVQGqMt9RqIGfOuGWKUhx8 evPPkXhtqKEjLE9v6VbPKbcPAdcxh53eNx6j/QQCiD3ESy8EJWHhyi/1KC67cB50MeFLrW1O9lRLib KKuFycwhUjoh/Yf8VpDYUfNnYsn14knw+crJhaBTBggW55XmcO40aq/5WJYXp6vMSfcz6ZP2EWHk7X A7aNdVQ0uGEpCjRX0mqgIVDJeNnFivh2USUz4PVh6dZvVtegtUZ2Er0Oci5RoOwxWyXq/b6Erf0u4T twTqUdOnuOxP4/90seGDGkAX57dqITIzgJL0r9ENwWqSQqsPbLiKa1/asyzzEkUno7IAG5XBysCpu6 /UTarLm65AFjDrqgWfoh5tW46HI6qD+TBBvzHaKyX7X+LpVAnSVr3JjkdVO8P6H8yhL0opZP0C0HrZ EM6Th8xtyqMF0uHuhxj+93uIAvn5I7EZMEpFO/cLBzH04SfZZHCiywH1/jb/LjBKyf0zPQJQ1Vzpq1 TjAcn1pDlmxmr8t8QsbsbCjiwVyi9itWGM7tEeZ6WberH/QZcolHGoIakzm3k6rcGS90K3xsGVrVNR iuzAs+ECABSmTkuBrwO8EFf2/FSBUsGUtUvVELOjF7CEOssim03OhfpzKyzA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ok0JMPyO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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

Use struct_group() in struct hfa384x_tx_frame around members
frame_control, duration_id, addr1, addr2, addr3, and seq_ctrl, so they
can be referenced together. This will allow memcpy() and sizeof() to
more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of frame_control.

"pahole" shows no size nor member offset changes to struct
hfa384x_tx_frame. "objdump -d" shows no object code changes.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/intersil/hostap/hostap_hw.c   |  5 +++--
 drivers/net/wireless/intersil/hostap/hostap_wlan.h | 14 ++++++++------
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/intersil/hostap/hostap_hw.c b/drivers/net/wireless/intersil/hostap/hostap_hw.c
index 9a19046217df..cea8a9ddc4da 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_hw.c
+++ b/drivers/net/wireless/intersil/hostap/hostap_hw.c
@@ -1812,8 +1812,9 @@ static int prism2_tx_80211(struct sk_buff *skb, struct net_device *dev)
 	memset(&txdesc, 0, sizeof(txdesc));
 
 	/* skb->data starts with txdesc->frame_control */
-	hdr_len = 24;
-	skb_copy_from_linear_data(skb, &txdesc.frame_control, hdr_len);
+	hdr_len = sizeof(txdesc.frame);
+	BUILD_BUG_ON(hdr_len != 24);
+	skb_copy_from_linear_data(skb, &txdesc.frame, hdr_len);
 	if (ieee80211_is_data(txdesc.frame_control) &&
 	    ieee80211_has_a4(txdesc.frame_control) &&
 	    skb->len >= 30) {
diff --git a/drivers/net/wireless/intersil/hostap/hostap_wlan.h b/drivers/net/wireless/intersil/hostap/hostap_wlan.h
index dd2603d9b5d3..174735a137c5 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_wlan.h
+++ b/drivers/net/wireless/intersil/hostap/hostap_wlan.h
@@ -115,12 +115,14 @@ struct hfa384x_tx_frame {
 	__le16 tx_control; /* HFA384X_TX_CTRL_ flags */
 
 	/* 802.11 */
-	__le16 frame_control; /* parts not used */
-	__le16 duration_id;
-	u8 addr1[ETH_ALEN];
-	u8 addr2[ETH_ALEN]; /* filled by firmware */
-	u8 addr3[ETH_ALEN];
-	__le16 seq_ctrl; /* filled by firmware */
+	struct_group(frame,
+		__le16 frame_control; /* parts not used */
+		__le16 duration_id;
+		u8 addr1[ETH_ALEN];
+		u8 addr2[ETH_ALEN]; /* filled by firmware */
+		u8 addr3[ETH_ALEN];
+		__le16 seq_ctrl; /* filled by firmware */
+	);
 	u8 addr4[ETH_ALEN];
 	__le16 data_len;
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-21-keescook%40chromium.org.
