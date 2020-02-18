Return-Path: <clang-built-linux+bncBDJ23X6X2QERB4EJV7ZAKGQEYXJKPZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C9C162535
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 12:05:22 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id d16sf12168416otq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 03:05:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582023921; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sp8p9Z8LFw8B6VL/Au9P9eJnFAnyUxlWPNqCfHuENqPUHLDkg0EA5johI/Hfmwbur4
         de141kxdSYHDN6crIEY3T9ip1R/D+2UX3LnniahueZMtHFlM/WusENbGJTVg6Gh6Es/r
         Ad6pco3mj/x9B94DI75HjUXsU0BMVIBATkJqC5nb/RV6GK+voC9cTUMUJ+2YCOS3W57o
         lUht8xbmSMabJ/SjU2qNyE4Gl87h0KJ3wTGi47eN3Z7j/qfRgLoJr/L+BakCXi8vjdQy
         vAdp3tc1cWru79+24oZmEng99qlszS7MsAnuSSPC0oyuFQmYiH7/XI9rTgSRLzTKC6W8
         A9aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=me8zm8Gf5ImWYcC0+OIWT8OAUT51TVpqXTfH8xAj5iA=;
        b=J0vZgGH9oeOtHdf9ax4JOZzPPwb3Z0Lcv7lW7PUaNzR4FVj0knP8PBcTbWvXpze6qM
         VcCzSZ5GdAHYZys6wEXY96x7ianf1SfLnHfFXgQYopPdpd7ASya2a2w0r1eQsJO5BMCT
         zSxHSua4142tHjwRCQ0ai5hj5C0HV0Ok7HRJHQAshRXWDR4FMDGzDWB4ihGY3QVgMbXC
         00FN/KFf1dAYl87XfXtxbECsUoKiZaSwSAZfGhkx6XtdJnf1/r9C9yICngMAI45/6DC6
         gPMHElTmNgx4x2B2nS+TKw0UQU9GuaobMbw+uqMbwL23OKyeqvsNFc83VAxeL7ys9Pvi
         wAdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o6TrpqGw;
       spf=pass (google.com: domain of 378rlxgskakahowardchunggoogle.com@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=378RLXgsKAKAHOWARDCHUNGGOOGLE.COM@flex--howardchung.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=me8zm8Gf5ImWYcC0+OIWT8OAUT51TVpqXTfH8xAj5iA=;
        b=O8ZN3hPF532/hccOxR+bc+IF4U3SFZdQ+yrCf2VTdQnlWXbe3cNxb1RThzZZ8aC9DQ
         tO7QaNMCL9td3/MdU+FhMSkwZkYZ/VhFwzBYXRIet+Rn1W7Q/mh8iS33dtG3i7A31+Lw
         LeKykIxFz8PK3bmmvOQi+BapqGsxKIi8UPMjCbi3/QJA6ktgpnno4D2HjN5uL5J79ZJ1
         TWNyVajLxe1UQ0uxZZhvNdGTkLh462aNkqMv6DC322CZm0zGmm55TsnwWfB+jWdtjCbP
         lchjgy51ZDYFD2HfBwWlHcO3v5gcrvXpKIGkKk71QscH6zYGcaM2S0ySgHYkoXcn+WMD
         p2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=me8zm8Gf5ImWYcC0+OIWT8OAUT51TVpqXTfH8xAj5iA=;
        b=q8FJaqtOQ3fBymjeLVWB8Lxky70dmYx8SKKQRkpRz7Tvb38cJIV2hvBHrSlZQR07Kn
         cGh4bfuBlKw5uVR7YOV2Lplvj0CH6R+rWPClIN0XHfmRC2yy/q+oyCKvw9P3arSgCBNk
         +9gnaXvVRKjKoP1fZ1oQAUL2l232lCQQWwrInQdsI5wf3Ir2K7tjFzJ7/COUuZ1P3mhD
         d4pIK/lP/qx7oHayQQiajYtmrXR07NvE2x6Nl3/TYAcM4TKRsLc2s/2wBdwU0jADhySM
         4BPIuE5wdfuH/cijl084X9UtKXsv9fkr0St00T5BVZ++ad70bvUDXiA+eXHGetiu+UBq
         70Ig==
X-Gm-Message-State: APjAAAVHSvKu9BSyHXTr84jIRJq7Ro3D21obZZD0e9rMQ59M2M3x5eGb
	gzJGAAMo6UCaiAP9bz3jEOk=
X-Google-Smtp-Source: APXvYqz65jXqFBQNqnsH5bwUYhv352J6k95KqRkv4ZTSxYOwHhKe6q5Nv1fYE/mSySSp3rbZcVDLPA==
X-Received: by 2002:aca:c646:: with SMTP id w67mr805400oif.171.1582023920759;
        Tue, 18 Feb 2020 03:05:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d549:: with SMTP id m70ls3276870oig.10.gmail; Tue, 18
 Feb 2020 03:05:20 -0800 (PST)
X-Received: by 2002:aca:ad11:: with SMTP id w17mr873861oie.85.1582023920374;
        Tue, 18 Feb 2020 03:05:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582023920; cv=none;
        d=google.com; s=arc-20160816;
        b=uXOEl3nOr1ANl+tW3Nn7rpxW10pgLuXmdvAExJdSTeNycsK/6Ju5ygNfSmP4Rax9gb
         3mpFGc4wwW7qX+lVRIMPdV5fBoPmuchFmw1kC15h2AIAtb4n4pcdf3fOPvcLP/o07wK7
         /s6iNv9XK6c/NJfTtzhDPdTBuI3RZ7KfNqnRECfBle+5zhC41czNCeW+fB8bLcq3EFvn
         x5IZELglV7J+qqCclfl8tvN+gzEYmY7vpjzAbkcLhPmOTtuaepT2zqURSK2DMFEvIrAR
         UMME6Xspb9QigiFfbvhl6Kmh0ZAY9BY4xHLcadRB0mB0tVUPnT1jM69e2nJo3qDurxwe
         Jlmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=CAoGK0unI+k/xLNKWQdh/lAz4VEEtKso1RLerS+jz98=;
        b=jaYN6suoWvewhfB6FTT6sB7/x+86lcA3KSg5J/e/G6NjOIWlvIn5pVj90Gcs74jdND
         3gx8R+cewdiSdZ1BwS6LU27JLDwjTJZjZita0n0grZFKK9VB5DZynroIGEFrYl0nUvBs
         15eCqdVsz7bf8/1VS/j5tmUmdEuwFDek/KIZn54kh3FgK8kdPGL8Z6WtlojcyMSHvcrT
         Nv+q66dYiSjRN8QDHa3PEtJ3vsE2fFywZf4snMpi8Vuqux3KSZdapwIvGDJa1uQiqS71
         ysehyAHoHXOPlMO5/iW1H/CNp32IJKhrLz4AVYPOtu3p4zrnEaudhYoVq3PfbHeO+YlO
         QdKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o6TrpqGw;
       spf=pass (google.com: domain of 378rlxgskakahowardchunggoogle.com@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=378RLXgsKAKAHOWARDCHUNGGOOGLE.COM@flex--howardchung.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id o11si175932otk.0.2020.02.18.03.05.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 03:05:20 -0800 (PST)
Received-SPF: pass (google.com: domain of 378rlxgskakahowardchunggoogle.com@flex--howardchung.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id ev1so1202594pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 03:05:20 -0800 (PST)
X-Received: by 2002:a63:6383:: with SMTP id x125mr19783198pgb.409.1582023919543;
 Tue, 18 Feb 2020 03:05:19 -0800 (PST)
Date: Tue, 18 Feb 2020 19:05:13 +0800
Message-Id: <20200218190509.Bluez.v1.1.I04681c6e295c27088c0b4ed7bb9b187d1bb4ed19@changeid>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [Bluez PATCH v1] bluetooth: fix passkey uninitialized when used
From: "'Howard Chung' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-bluetooth@vger.kernel.org, marcel@holtmann.org
Cc: chromeos-bluetooth-upstreaming@chromium.org, 
	"howardchung@google.com" <howardchung@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Johan Hedberg <johan.hedberg@gmail.com>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: howardchung@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o6TrpqGw;       spf=pass
 (google.com: domain of 378rlxgskakahowardchunggoogle.com@flex--howardchung.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=378RLXgsKAKAHOWARDCHUNGGOOGLE.COM@flex--howardchung.bounces.google.com;
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

From: "howardchung@google.com" <howardchung@google.com>

This issue cause a warning here
https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU

Signed-off-by: Howard Chung <howardchung@google.com>
---

 net/bluetooth/smp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
index 50e0ac692ec4..fa40de69e487 100644
--- a/net/bluetooth/smp.c
+++ b/net/bluetooth/smp.c
@@ -2179,10 +2179,12 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
 		 */
 		if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
 				 hcon->role)) {
+			/* Set passkey to 0. The value can be any number since
+			 * it'll be ignored anyway.
+			 */
 			err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst,
 							hcon->type,
-							hcon->dst_type,
-							passkey, 1);
+							hcon->dst_type, 0, 1);
 			if (err)
 				return SMP_UNSPECIFIED;
 			set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200218190509.Bluez.v1.1.I04681c6e295c27088c0b4ed7bb9b187d1bb4ed19%40changeid.
