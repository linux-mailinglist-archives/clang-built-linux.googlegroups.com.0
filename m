Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYGDVXXAKGQEAGTAUAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id EADA2FA0BA
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:52:33 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id l20sf343552pff.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:52:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609952; cv=pass;
        d=google.com; s=arc-20160816;
        b=aAFSUNXGfZdfIMCdXr6NxR4a9AUsIz+dM5lDH+wKndzGCArFBmyEEDQdL8PcbZ8+r4
         QyQ73RIoqDuNpCSaOpIGA94iSKw0L5umxVRsv5FDJC28mN+YXk2Sot7faa1ttX/ayEKV
         V9PezcvVSe4jnlVYkkAqfxf5jViWLuYwvAwzfoXI1Awlpkdnf56BvWiCCKjCdtRakbZp
         FN08fpKNBbSitpdkxlCxUBLTySoRIihuidr7nhCBEXc2f64SAJ21S2Pmkx49tzNxb5yN
         z1iixXFfFk9+dZ8cRCHTtkHZr1ubwYSm6+jK51gUKBgG55mdBx0m7A1wftVvHRtPC8Z6
         JiPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=s1PlsKyrBlXSLN9PXYlwWyPpSP4IeWjTSSb9rvZy9H4=;
        b=QkV91eHAgxISB075Zy2P/PuMbPXDELTm/xzt82d9D9F9sd5f7mwW6xYSF4WP2ZAEKQ
         PCgSbJwLUDhA8tnIsq8v/DTSRVLG4oo7OtL3fgYSfh29lHioBclk7oKRfk4SbzjTr9wj
         aBar+2KRp2UqevAlOWCNRInGLY4an7xhmYDrpwUBY3MB+Ie1QNSLD3NXNNAZgkbRDH5B
         fQeaQL1GjMIRTl9IKEp9Rx5c1Ki1btbr8O23hfjav+lxhntCjLLqBjDYeVMOOt/tvwzU
         WHpvMKvMGFOA2mtkOl63tqwk1AqYIUDKdl/kg9xmhys6FimDgRlpyWJotLQtNtZymP+9
         CztA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dSZgM8zU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s1PlsKyrBlXSLN9PXYlwWyPpSP4IeWjTSSb9rvZy9H4=;
        b=Ig5PqaLgIMrNwQyHcxIR+8nU9J+kmtlBY7i+NMDh1RA/EDS1JouR8ClUuhKY5J83nw
         OsGNSbnTriP6WTTTYffl+yQIG7+7S9hlE03Z8cMNCxWj/r4kwvEGc4U0ITkfS5WUzKPM
         3gqpWHbFdRN0hCSSZSbRSGEcf5XWN1Fz0sg9251cXVpb68EOUkS+BxEhskjMiyqkJ2rc
         J9+bPaRAchjSWYVFrYiGyv1N3IEdOetyV/yjrBDFcHom5tglCfKii2XryXMUOwS9Umk0
         zapVlr7Q+xaPssQESvzLRSgt7O4yr0OxACcuT6jYGu5xup7uYNnESpsq18fG5WPTX7H9
         0gMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s1PlsKyrBlXSLN9PXYlwWyPpSP4IeWjTSSb9rvZy9H4=;
        b=RTvtW/g6QO+ns77GrKO5RDGy7GmRW5iVzzHQBxiHzB03Dh+jHzMM91uPV53IrbyKMK
         VCaZldetTOZP34MOsd2rSnj1is1ccM5JxV4rLTZw6K001Dq6BB0j1YfkcOMF+34+huRO
         zCoeBuSRMKq30syCfJ0Ob1t0fl1C5LOENpePH2yjZQKIk9N8D1y4zVQ2SO1BgR+WecSB
         hyyKU+2ZiOs6EdE8Qxd8QEer2Z46J/V66CLrdesSilxDjxtEaShnW4fCztwmRnH3Z7Xr
         lGQyqOZiFL73JNiqaQEpp3G7goJDUO7PZ7fqWkjtU6K5od2UJNWxHJ5uQVjAeNiheaXn
         jC2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbtCsIrAu1fFUMzLz9Yswy5WcCBdCOV4sAODl/whAM1TPcjFxt
	iLFZtQGei9cxBQ2KuCVPsI0=
X-Google-Smtp-Source: APXvYqwq7NGLSXCSESTie9DrgO/xLEJe1hMlJTsAuWOoWuCthCwWmFLlzbZwLmqcDiCRVxdZSLHFIA==
X-Received: by 2002:a63:1c1f:: with SMTP id c31mr711476pgc.292.1573609952407;
        Tue, 12 Nov 2019 17:52:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c78b:: with SMTP id gn11ls179483pjb.3.gmail; Tue, 12
 Nov 2019 17:52:32 -0800 (PST)
X-Received: by 2002:a17:90a:741:: with SMTP id s1mr1253508pje.122.1573609952078;
        Tue, 12 Nov 2019 17:52:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609952; cv=none;
        d=google.com; s=arc-20160816;
        b=EY+QeHwekxKo0IOtwqlMC/xkm1PwSjJ1M5AnasWuSjnCbrgxPCu/AG82HYtohBuKt2
         b8JJLJXIYarywwA91kNCuml+LNbPv0CBZKEPR5MyJC4wvxSQXqVmjvOQeF1qUlkVxWXi
         RpeZREPlii/3aO0mQ1BvOLxKqtDh7dBXUEk3JDUtERtqRxLNtswXBoWq2cZmW8Y0EcUu
         UMu/7VWIxl/RXreG7YUk5Uz3UdlWAwdCoUqxR0Gz7DdgYRtmG9+L0cAJ26uWJxWGjvzH
         flCO7f7KFSbc4W7phHyCUJ8HIF3AeLDCGiW/QAt0fmXCfHUwxnoBLazHxRpBCDvGORuR
         v+CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1f/VIVEzAR1O9d8pqK7B1NiGpx4vR10f1+mg0PYWvKo=;
        b=oMBmYrLLDUS082P7Q3Gz6RK5QWK0iBufew4ChsZmMjGQhRMCWSUGHeBDGPMkzjrW9p
         w8/oGEAxQECy90XdXkQqDQKIGolkmGCejg/Ptj5DxWdEoowzmD7WJ+z23A3+FGmfLD4H
         lB7cV/o7dUADZqotZn4fiH33sMH5Vpf4uv/sr99m1quIddcqdv8KH2a2EhyVX+fJwg/y
         J4rgh0Gg0O5kAPEheQBAaNs30DWaFkE8zm35QyS8iBffti4Hxh54hzQHvP2Ko9WJHn1t
         T1haXExpK/diGCqoSF0qJzGlVypJgCY24q9TXFzjyWKY41HrKpC50WCkkoKayurqHBVe
         i8Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dSZgM8zU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 3si22685pfg.1.2019.11.12.17.52.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:52:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E6113222CA;
	Wed, 13 Nov 2019 01:52:30 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Tomer Tayar <Tomer.Tayar@cavium.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 088/209] qed: Avoid implicit enum conversion in qed_ooo_submit_tx_buffers
Date: Tue, 12 Nov 2019 20:48:24 -0500
Message-Id: <20191113015025.9685-88-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dSZgM8zU;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 8fa74e3c49204bdf788d99ef71840490cccc210d ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/net/ethernet/qlogic/qed/qed_ll2.c:799:32: warning: implicit
conversion from enumeration type 'enum core_tx_dest' to different
enumeration type 'enum qed_ll2_tx_dest' [-Wenum-conversion]
                tx_pkt.tx_dest = p_ll2_conn->tx_dest;
                               ~ ~~~~~~~~~~~~^~~~~~~
1 warning generated.

Fix this by using a switch statement to convert between the enumerated
values since they are not 1 to 1, which matches how the rest of the
driver handles this conversion.

Link: https://github.com/ClangBuiltLinux/linux/issues/125
Suggested-by: Tomer Tayar <Tomer.Tayar@cavium.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Tomer Tayar <Tomer.Tayar@cavium.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/qlogic/qed/qed_ll2.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/qlogic/qed/qed_ll2.c b/drivers/net/ethernet/qlogic/qed/qed_ll2.c
index 015de1e0addd6..2847509a183d0 100644
--- a/drivers/net/ethernet/qlogic/qed/qed_ll2.c
+++ b/drivers/net/ethernet/qlogic/qed/qed_ll2.c
@@ -796,7 +796,18 @@ qed_ooo_submit_tx_buffers(struct qed_hwfn *p_hwfn,
 		tx_pkt.vlan = p_buffer->vlan;
 		tx_pkt.bd_flags = bd_flags;
 		tx_pkt.l4_hdr_offset_w = l4_hdr_offset_w;
-		tx_pkt.tx_dest = p_ll2_conn->tx_dest;
+		switch (p_ll2_conn->tx_dest) {
+		case CORE_TX_DEST_NW:
+			tx_pkt.tx_dest = QED_LL2_TX_DEST_NW;
+			break;
+		case CORE_TX_DEST_LB:
+			tx_pkt.tx_dest = QED_LL2_TX_DEST_LB;
+			break;
+		case CORE_TX_DEST_DROP:
+		default:
+			tx_pkt.tx_dest = QED_LL2_TX_DEST_DROP;
+			break;
+		}
 		tx_pkt.first_frag = first_frag;
 		tx_pkt.first_frag_len = p_buffer->packet_length;
 		tx_pkt.cookie = p_buffer;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-88-sashal%40kernel.org.
