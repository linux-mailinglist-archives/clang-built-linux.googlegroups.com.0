Return-Path: <clang-built-linux+bncBDJ23X6X2QERBBVTWPZAKGQEGIVF6AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C9163D28
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 07:45:28 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id x10sf14849299pfn.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 22:45:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582094726; cv=pass;
        d=google.com; s=arc-20160816;
        b=mQ+GFBGmFZ8dWLZ5pMpN6BgD8qL/FmHH2snizg3GkJBVyAFuwpznbFQogbTWA8GF+E
         VWglLOrxOzcRfkNJEarjAAZH0BKz+D+2T8sYbpGO3Lls4D0lFepSYWYHZnFl+tZ6MYj5
         DV/SoMVh/3CewdXMdCnC37hoI47HIlbXF2xDEY9YQBqhdnDCOwQdIBzODbw313FV9Rim
         QOc6o9AtObqfodLWtfIqGrUFaYjs8jHbPkOUDmQzQ0ik5Z4u3tvt6eVx31RchAIJ1oWI
         dXBNhDAlhvlwZsYGn2noJ7h4SS+BV8kzoySHLn+/lMxrqCfa27mbAdL5pgOIUhh6VLVc
         cUIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=lRaZdmWVAEhpx8Hv7s9+0rI2amn2sQOtFB2cA++STOY=;
        b=quyFbL2abYgLs10l1NXPmkFVg+3Qm/ozmFHAIJy5w230/yyj6Ds7eNiltoM4zNMTjs
         LGb5olj9b1WH84cLCtFN1Ktih+a7qOIVlYLVHJbtqdwzWNhCny4wLDOrplGKYw2OeBvd
         V8ge94F82EYrcF42WJmvIz4ydB9jhsxPyF7e9oiwahoYzfazRgaza+Oc3GWmY0C22/q5
         7ZVm3blGq5PzHhaxedAAKzRvkV61srIylWzPFLW/5oxjxoFWsDaFyj46pE/YgbHO6DVN
         1Dk/oqjVfIkjAshokVDXBQryWjWHXws3QfXQ61vZJEN0L/nBqdBFOTLh4A9BEJw1tVtY
         o/Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PnuQ7Svk;
       spf=pass (google.com: domain of 3hdlmxgskagqjqyctfejwpiiqqing.eqo@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3hdlMXgsKAGQJQYCTFEJWPIIQQING.EQO@flex--howardchung.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lRaZdmWVAEhpx8Hv7s9+0rI2amn2sQOtFB2cA++STOY=;
        b=f6DiAMc+ONmaTrh05WlPnVY8vCn5ra8mjiC/Z/VpE6DXRQVu8CegjXWlX1X6XnU5Mv
         tp/BTs+onbY7IN5L5S9DC72iwe186dcwKf6TeqKNOujnn/fYyZWloffLt4wUjh0hfptZ
         Qyt4+pRsQz2WbHewDQD9sLqvuOEzE0R2LXsjv6XcB7Ov0iimcEPFxrHFSuUcEaSq9urN
         RnXKlpJONbZlubIZTAcj4MgT2h562fFwkIuWY5UZK0hBhYUUn3qt5wl0sb//TP5weByb
         1QcEyiY2M3gps4dHdFzr7m2kyB7ZlbS/liKEAUurww3ip1XUFfVUgM3brUh2GW6/fJja
         wP6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lRaZdmWVAEhpx8Hv7s9+0rI2amn2sQOtFB2cA++STOY=;
        b=AryUy646foFricwM3r1qCqkTEHYt9o2BUvg3wpbSN+3gWV6IgHUJ/+eY/Xr3qBgcLb
         z+e9ZvoRFWaY0ZApJJkVECMwniFJtEYSja/D9O8B3hmnD1ygCmXiBKlDyuo4xVkB9J/e
         1lnF3p5gSj27qPuxgpVNzxbrSS+hY2Fo29dSo9ZlXxAAJ6d/+mbbaCzYurTAzpAk1Jjf
         lQKkT3JvN9ZssaVmG1D3M1Wr0P+QpGIEup3qagXiJdxdV3/oOh0YeqhvNZVX6esxYMHG
         j2rrU6bs+l20eQQSS03ODMLFH3Zrf8op5lGknMqPLSG0/upYVszHELg6i3d+0UXphUNf
         CfnA==
X-Gm-Message-State: APjAAAXn5nBeVBTahl9FyqiQpp+rZ9EA1gPsTdG150InbqWRsr5Tf9OC
	wmPSMQAcYh9ahPkP0my3WiQ=
X-Google-Smtp-Source: APXvYqx/Y6SksfVelyX0BnNWbRd3I0bWI1/2o8Zt5pmW5H1T2L2Yb34QCgjvm+veHq8XED0bJ+f5yg==
X-Received: by 2002:a63:1d09:: with SMTP id d9mr7555781pgd.117.1582094726470;
        Tue, 18 Feb 2020 22:45:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2a04:: with SMTP id q4ls7527293pgq.6.gmail; Tue, 18 Feb
 2020 22:45:26 -0800 (PST)
X-Received: by 2002:a62:7696:: with SMTP id r144mr25431961pfc.177.1582094725994;
        Tue, 18 Feb 2020 22:45:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582094725; cv=none;
        d=google.com; s=arc-20160816;
        b=RsxMHn2PaGqquN+76fnvKz9qpsOkx/7p1ZXqjY8/bW1dKQkk2tAY2NYW0Qq7rPdn2t
         k/ZyVtgVz1BCKpmrR7A1vSu+MXlSQb3Co4kN5ITK0TsbqE8WP3QuTP/+RsRQngmJ3YV1
         1zrnvlzYFGPqnrGGxnJaECQhYMX6Wky4d0frN5ccrAF5eUjTTd+ZDLUg/sggpVdYAkGT
         fwbF+dNYrzJ6+eruWqRZcVkbX8yOF9ZclLpFs1ToX+GCDo/FE2urQkbzitaWcqWgUdJi
         VOgbr1GphDUmFwfBmhrqvL4NAGPyyOzDPjo5fSK0LtdmSdlCvTDXlYk5oRmgxfXl/PzL
         vZCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=JFI3+kM1LWruGVLKeVPFO/XZwyOSYT/vDPiEnVdBj2U=;
        b=Bk/rMBou5xNFMPnm/HYuXn6BKx8K6dhZ1UbxGnWB9Mkaa80mJzS0MLu6wu/RnJS09C
         8yL7qbPMrdOcLerNmnNv13+dj/OeeSEEfdT4V4WK2XmRDrB2X2M33xPwjVHy8JFPo44a
         H0kL04DJFhN4h0BYCb88rR7Ka7UmhAvLzPLi33cCz5U0Q/96LEDZ/eC/6V20aFzOTThh
         PcC9VNJkvF5un2foEQoo+jUAAkkeE52tLXSmitEernZv/NGfB1qp5U5R9qBg4Bj2gOfj
         xJGKVLCs4GIBieVpi/YGs9aKWe10i7llsUZ4F2iII/zPHlDQx1vUgR7wPPh+hRx473oQ
         R21g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PnuQ7Svk;
       spf=pass (google.com: domain of 3hdlmxgskagqjqyctfejwpiiqqing.eqo@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3hdlMXgsKAGQJQYCTFEJWPIIQQING.EQO@flex--howardchung.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id d14si49598pfo.4.2020.02.18.22.45.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 22:45:25 -0800 (PST)
Received-SPF: pass (google.com: domain of 3hdlmxgskagqjqyctfejwpiiqqing.eqo@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id j29so15402077pgj.2
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 22:45:25 -0800 (PST)
X-Received: by 2002:a63:5443:: with SMTP id e3mr20602878pgm.245.1582094725566;
 Tue, 18 Feb 2020 22:45:25 -0800 (PST)
Date: Wed, 19 Feb 2020 14:45:19 +0800
Message-Id: <20200219144442.Bluez.v2.1.I145f6c5bbf2437a6f6afc28d3db2b876c034c2d8@changeid>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [Bluez PATCH v2] bluetooth: fix passkey uninitialized when used
From: "'Howard Chung' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-bluetooth@vger.kernel.org, marcel@holtmann.org
Cc: chromeos-bluetooth-upstreaming@chromium.org, 
	Howard Chung <howardchung@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Johan Hedberg <johan.hedberg@gmail.com>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: howardchung@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PnuQ7Svk;       spf=pass
 (google.com: domain of 3hdlmxgskagqjqyctfejwpiiqqing.eqo@flex--howardchung.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3hdlMXgsKAGQJQYCTFEJWPIIQQING.EQO@flex--howardchung.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Howard Chung <howardchung@google.com>
Reply-To: Howard Chung <howardchung@google.com>
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

This issue cause a warning here
https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU

Signed-off-by: Howard Chung <howardchung@google.com>

---

Changes in v2:
- refactor code

 net/bluetooth/smp.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
index 50e0ac692ec4..929e0bebaf80 100644
--- a/net/bluetooth/smp.c
+++ b/net/bluetooth/smp.c
@@ -2115,7 +2115,7 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
 	struct l2cap_chan *chan = conn->smp;
 	struct smp_chan *smp = chan->data;
 	struct hci_conn *hcon = conn->hcon;
-	u8 *pkax, *pkbx, *na, *nb;
+	u8 *pkax, *pkbx, *na, *nb, confirm_hint;
 	u32 passkey;
 	int err;
 
@@ -2179,13 +2179,12 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
 		 */
 		if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
 				 hcon->role)) {
-			err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst,
-							hcon->type,
-							hcon->dst_type,
-							passkey, 1);
-			if (err)
-				return SMP_UNSPECIFIED;
-			set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
+			/* Set passkey to 0. The value can be any number since
+			 * it'll be ignored anyway.
+			 */
+			passkey = 0;
+			confirm_hint = 1;
+			goto confirm;
 		}
 	}
 
@@ -2206,9 +2205,11 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
 	err = smp_g2(smp->tfm_cmac, pkax, pkbx, na, nb, &passkey);
 	if (err)
 		return SMP_UNSPECIFIED;
+	confirm_hint = 0;
 
+confirm:
 	err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst, hcon->type,
-					hcon->dst_type, passkey, 0);
+					hcon->dst_type, passkey, confirm_hint);
 	if (err)
 		return SMP_UNSPECIFIED;
 
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219144442.Bluez.v2.1.I145f6c5bbf2437a6f6afc28d3db2b876c034c2d8%40changeid.
