Return-Path: <clang-built-linux+bncBDJ23X6X2QERBVPUW7ZAKGQEQCSOORY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id F416A165583
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 04:17:42 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id k16sf1427166pls.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 19:17:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582168661; cv=pass;
        d=google.com; s=arc-20160816;
        b=WbKkeEKM25ztybbk7i3OGwkZKzFDy8vzQ+pdmDggW6KvKsefEKzrTXKGaTL7bD2Pzg
         j0lHq3Mq1s0e81+J/7wSol6+so3RteF8/p+eLk13jukPU9I/nX9LqfHpHJA9e3onqxyE
         nDNRYOhY/TOnBIxXZ2HYJM6vWneZMbfIK1MuRFrk/KzPzUf9aDSBVuv2IAydDsK6Cz4E
         ANqM16Q0DhMyC94KT86EV9BufJQQ0l1ApyGBY9wVb/d//v2//Iw+dMe+C8ekljjyVvro
         kJZdcJuBFQrV/R7xSl2Ym7tsepKHLjPZDGUxVXeJzJZQgAfl7s82a9A7Zj2eUeBX6joM
         jcKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=6IwhN6fSvEk/bOfA+0HJaNfeuVfFIRyE6FVN2km4b74=;
        b=dpRhU3FSRhUXfh5Fv5+9Ofiq9oaMZo6OQ8rd/Y77WMNFDW0EUeuohFKez8IHpBfSIh
         elZauUnKZrC7ppD1eGipt5vEWIi1ZZcpAi+ClZB4q4NaXJY37XVkIpqLJqOqpvy4SLIy
         nA9sQBriWXsb25eGk513cCHnuQrB+2NFCZjL6JQf7vS4kiEVjhaiYDPGweTbQA0msmr3
         Eb7lmerkbg3i5DtHcuQfwCxD/A+T/3+dnCm8V1ZUqILm19tDcgdaNJjGC/6FOSU7qrv4
         0DVXZYUMWA5iPWOssw0cw7tNPKlv7rEO1j9rfevCswf7HpbnslaObnlyyAzSfQMF/Ry5
         dwJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dlpnFhTJ;
       spf=pass (google.com: domain of 3vppnxgskahkeltxoazerkddlldib.zlj@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3VPpNXgsKAHkeltXoaZerkddlldib.Zlj@flex--howardchung.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6IwhN6fSvEk/bOfA+0HJaNfeuVfFIRyE6FVN2km4b74=;
        b=CZsCrSSTEEJthwku4N/hM3nvyC7q6tY+UvWzkrz14ImvOVFnmLo2ZzlI0joTTVEgud
         nTq4scyNQUzavAsT51iQT7+o3WGEO/OsA29iQcubgWjOK04/R5QByH1Iu2jCnBFjKYLi
         ZMnGycrQUD8tDm50HE70qjSYv83/4EtWsWCUnTT9s5xowsWsx4yJ/96bJl+6tLQp0Kl8
         BWc8vupwSxAgCGGjwrH1BMrRet605shKwKyP6PVVPkgDRe1kF8xl1Phf7cFNubRX1ot+
         kr5o6Ap3o6o+sovXw4+zf0Z6tv9mVJeLpDMa/LEer9ll+rnl28/yuDtrdAM5TYn3oxQB
         0ApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6IwhN6fSvEk/bOfA+0HJaNfeuVfFIRyE6FVN2km4b74=;
        b=DBl9k27gQ/ic7G2HiX2lJ1Xi8tv97Z545A28v6JdF2fRkwjIDFLCb/eZ2fZFdIzOQI
         p7Ho5hivBHIbxB6MPfnFEVb7XGh8Lj2kXW0NO+57156rQxhOzIJw1aVdHP+uZquspjGF
         6vUWqptOqtmgJwXqzSZlE/Z+JqYOCTU+0nqdurGdWushYtym2/ALVxLlogYmodXUEl4T
         z3ZCD4yZnm8ojveSnY0dTm7HP9xUWWyCXGuB9pLvGXFsCSCOfTYTG0OwNHcKjjlnYxSd
         fDIJ9B/cnWeoLkjEdVCYD73n5XZLNHEpvk/jXRJFeCksIljzcR/k2PhJxXbQ+fwKa7EF
         NUvQ==
X-Gm-Message-State: APjAAAWOYxPh7v5J2luNTSdT/Olnvuarg2XJ4p+ZSK5+ImR8rtE5aqmL
	TqFxbxs+Fawe5XiesigE+zs=
X-Google-Smtp-Source: APXvYqw2L2Gq1RgAcX/77Vu30pJ2UNsNhnEXRA2Y0njrcaMpj+EcFzyX5enQ30MRBShp0aicpdVvIA==
X-Received: by 2002:a63:8f5c:: with SMTP id r28mr30865969pgn.351.1582168661248;
        Wed, 19 Feb 2020 19:17:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a47:: with SMTP id v68ls8171891pfc.8.gmail; Wed, 19 Feb
 2020 19:17:40 -0800 (PST)
X-Received: by 2002:a05:6a00:45:: with SMTP id i5mr29579017pfk.252.1582168660812;
        Wed, 19 Feb 2020 19:17:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582168660; cv=none;
        d=google.com; s=arc-20160816;
        b=Q30FW7fom0tNEgwmmolaYQY/To9dkbwLxTb8803umagBNI3QJNrlnMymrsbUDDIYuy
         hIRMupOUGcpznELrJD4LqGxv+sNCwFaUlbR1/uKEiZ51qJ73HCXtJKTQj3MJpl2hS3yz
         kbpcAmAzGdLJtizDnFl/8ECvXEArl73PAeAGQyKDEQTfCDErflqCktesMo5IKIXc9I3H
         ft1F9C6Gc28NQG0JWsGVxIC01uW73HEi8Kl6fhaKnhQE3E6A21HZ20P+wJ4uN8l+i5M/
         Q0nRPny5i9/p4UPJldyMF9WLX27YaYicfIOCOJaify/33DbZcxYxG/+44b76gNnpPVAe
         l7Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=i2O9M22wRHGvAOZAL5G1kwDrP71Yc5DXVKcI6ikT/o0=;
        b=YAzP3tjLqcXlCYSqM3WHDrMjcSAAgEGdIN6ppSd+XfIYQjB4y8Av/1ehMoWWwN4jEk
         mhTMjvHVXdMd2YZHBCIifjoYzzyqycT7Dex6YG4ZZabT48XVdkGAQEXAEfRLjgiQ56e1
         62vJThQ/Drfuo8JMDdvMOCq9xd4fp5A58mKkPIrOpD0uVb9l5UYuStXRoDv8bkmgsDhs
         f5UB+Z1QhvU9YPGqzS/b5HHVzOfno4hXS+aEHJsMkGcj4CeY+61rzHyky76goGWciX79
         sXoIV8jppV4LcayKxDx2dC7Squ3JGu3GJ1d08G78HFQbQ6MkshHqOhNI7WF1DdNNHTiL
         9AEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dlpnFhTJ;
       spf=pass (google.com: domain of 3vppnxgskahkeltxoazerkddlldib.zlj@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3VPpNXgsKAHkeltXoaZerkddlldib.Zlj@flex--howardchung.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id 59si133572ple.2.2020.02.19.19.17.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 19:17:40 -0800 (PST)
Received-SPF: pass (google.com: domain of 3vppnxgskahkeltxoazerkddlldib.zlj@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id i3so342395pjx.8
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 19:17:40 -0800 (PST)
X-Received: by 2002:a63:b250:: with SMTP id t16mr29658302pgo.18.1582168660404;
 Wed, 19 Feb 2020 19:17:40 -0800 (PST)
Date: Thu, 20 Feb 2020 11:17:29 +0800
Message-Id: <20200220111711.Bluez.v3.1.I145f6c5bbf2437a6f6afc28d3db2b876c034c2d8@changeid>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [Bluez PATCH v3] bluetooth: fix passkey uninitialized when used
From: "'Howard Chung' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-bluetooth@vger.kernel.org, marcel@holtmann.org
Cc: chromeos-bluetooth-upstreaming@chromium.org, 
	Howard Chung <howardchung@google.com>, kbuild test robot <lkp@intel.com>, 
	"David S. Miller" <davem@davemloft.net>, Johan Hedberg <johan.hedberg@gmail.com>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: howardchung@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dlpnFhTJ;       spf=pass
 (google.com: domain of 3vppnxgskahkeltxoazerkddlldib.zlj@flex--howardchung.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3VPpNXgsKAHkeltXoaZerkddlldib.Zlj@flex--howardchung.bounces.google.com;
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

This patch fix the issue: warning:variable 'passkey' is uninitialized
when used here

Link: https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU

Reported-by: kbuild test robot <lkp@intel.com>

Suggested-by: Marcel Holtmann <marcel@holtmann.org>

Signed-off-by: Howard Chung <howardchung@google.com>

---

Changes in v3:
- rephrase the commit message

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220111711.Bluez.v3.1.I145f6c5bbf2437a6f6afc28d3db2b876c034c2d8%40changeid.
