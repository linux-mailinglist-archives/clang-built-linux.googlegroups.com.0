Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOMP7P3AKGQE4POIUSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 827A71F2420
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:20:26 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id f130sf22922096yba.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:20:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658425; cv=pass;
        d=google.com; s=arc-20160816;
        b=e95+ML5M28qBBKfDvSNKEDoh1LVnCf9/Yoz9tYhItk2q5kIQtLT8LGbr4VjtMBXole
         Hsir7As5b6tdUbfo4Emg1EkJ+QFqUOtPabMHb0BISRspU15Zj4ztCkjfNp99REMnlvnO
         f+CTQ3lrS/0E5En1246A5hnZN1Y6m0V/E8l3zV8kMkoeGCjN14aQ0NWmX/wz7MlySPs+
         OC2eECHFXttT6sCDFpuHtbiwxgmqn54OmSA4cUnnOGDTpKgY51qNYBq5DtIgpjhMHbe9
         5A8XE7dhqAzcWjg4p5eEDgkY5ULMUtBgFd7oxYTWuVEcr/8V4UTi05Eyse0UL5YbzBDd
         JNBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=a414RDcADNrLg8MThuIL+cyZ5E0qqU09JOA+1LQDqlE=;
        b=HRNlxa+3LFVCI/j9uZYDgowhMGhTgjsLM1HviNkY3Qe3CXcOkwJptLMWFZRT6hPNm7
         rq5d0REFlkNaiQq0juZ2VSXsVojkZP4uLPZuliY4bEa+p+a8C18UE+Tz0ehlW2OaypOH
         3XOWkaV1rrn1OhwbCK++UyGJlC1IGnAi9bTEW76n4DVXZfzK6rfssNyo8t3CJ4wjcrz1
         Jh1VmtChIJlhQq8B3+ifS05BCPZ3pc3hOY2HAEQUnvF1WsBDwNrFcXgRkstyRT+JcQTM
         JCKYHwflhpShYCKK1Bmq22eLFv+R0kT6sdqIdG2/fwPPrHsWv2Dnf0MlZxuPgJpwZo7s
         EG5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CDftZJXT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a414RDcADNrLg8MThuIL+cyZ5E0qqU09JOA+1LQDqlE=;
        b=Wr4W9R4XkrhzoFGYHDCZS0PgMGJia1qi6+Syk50+/90Mm/IIXRnfrL4FnKgljcyBWY
         JbJCtgt6NVWih7KsqLQ8i8ytKEFIz38GCRbWKvvMPnHHyyvCytzX5IPxp16b2NUCD5lj
         0QB9wyKZTg1QTwS930DO1On+H8uuQrcGLGSLcorB2FnqDkyjqfsY2IKb4dk+Z4OJuNsI
         Do/fKMmVjkwMJiRCy+9xUb6Lbr4Hc/4i59pwB421prVPyNpurW+CcsEAw3dOAqXhxsfv
         1qqbTMy/dejNuIt4k9Homs/AGDzNz0jo9hea+SODZA3cZccYQs/oqHeHGg893w5ug8ax
         vu0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a414RDcADNrLg8MThuIL+cyZ5E0qqU09JOA+1LQDqlE=;
        b=ZfwAJpSt6qLJOhBR+f0umh9MmoWzFyvqeZIgcwbQW48gmq0BDmLsoavSz9KzGUpgOS
         sk3gsn72isyn2MlCN/Fom/8wNTF0+NsAkscF8vbdq+7a2D9rMUDdeoGXQtQ8DAdJuyxI
         6Nf/9JzWejZu3fWPJb3VjhabUTG+Uw5/JWfUL1T/4Lkksp3VvJiN2yhTl8PTkS+CrQlM
         2wOn2IBfsLSrIKpZ0OHr0rlCSx7RqNQt8FJx9QrRZ6MxMm3RuRV9ZZPpyaps1PW+x9xM
         uUBgO9L49+CuzPdM+JTizG/4CxAu5aXEiic0aUp3qXJHWxf/NwPHsTTGG6wqe8LILE/G
         ps5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rBVDeobySs8AA2zhtY99ZDoubT+RL69IbykdnqaZZKwnO9TlZ
	PmPeecLhtKoGQw9mWHNMTCo=
X-Google-Smtp-Source: ABdhPJy9VY6WT18+RcjlfhU9hu/LP2MVLQzk7+e8yABOwNGxqmDwdIjEbuv7knDVPhnJuLdME49J6Q==
X-Received: by 2002:a25:9843:: with SMTP id k3mr1865782ybo.444.1591658425572;
        Mon, 08 Jun 2020 16:20:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4d42:: with SMTP id a63ls2964571ybb.10.gmail; Mon, 08
 Jun 2020 16:20:25 -0700 (PDT)
X-Received: by 2002:a25:3302:: with SMTP id z2mr1924106ybz.352.1591658425335;
        Mon, 08 Jun 2020 16:20:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658425; cv=none;
        d=google.com; s=arc-20160816;
        b=mInGwWE1mWWy2ZWN/vredDImRlKXdHTcBHhHf7T4z1On+I+FhjdoaIL+Qc28EP902x
         Gkw3P1/Lor45vFjWtwEec9Er5GUV020iw9JiEN14qTQZM7QT+Z0EZBTlfpqXmDAB0jyA
         +GHY1+PzIwN3zbEUeywVGK7jY3/ROmJeLzEDTq5KYG4ajKnQSwhqs/n+KdaZWmuq2CAr
         RdL6G7G/UO52ZW/pXknf7Cj/5W6CJVN2tJz2KHxvHAxk72pu4zlGtHaClnB5dsZnY9fB
         YKS/cJWj5ylADVPqoIClyWkL1CtrkBMs7Lx2f2jaUwJqrcfzRdEyAc55baPYgDg5vph6
         /sXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=e9k+Z93ezUaoHXJ6sJ2IO1NsjaE+hwbk6O0FT788+4A=;
        b=cIT9xg4fdTwAypBHYX2faHeWVqhRSb7tGYTGbyKIhMcxonC9t8u7yA3hVWExbmu7/J
         NQ7evfvoDx7+eInyGq0/5tPfVKj1hZ8zMakhoXI1SIHO3Gga5CDiHonR6iD6Xac0wQ3k
         juDu6fDIbPxpR3Gk85Cbb33jhnx1JNB3UmQjuNOaP2gbdcDJE3CFyR07GArqsCkkQij1
         YVqQNSXhwL5TTWN9l0JVq+bWBtGCSFgl0cS5x0Y1dDL1u/nQzFiLq9ZZXGNiTbfCxoxT
         QQ14PzXJKyZsPmDP+kJ9HIa1cmKcjzmAflL+pD62r7mJvLYKCvQhu0+NFnD9tqVPkiwe
         qJog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CDftZJXT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k11si48418ybb.4.2020.06.08.16.20.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:20:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8F9042089D;
	Mon,  8 Jun 2020 23:20:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Aaron Brown <aaron.f.brown@intel.com>,
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 070/175] e1000: Distribute switch variables for initialization
Date: Mon,  8 Jun 2020 19:17:03 -0400
Message-Id: <20200608231848.3366970-70-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CDftZJXT;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Kees Cook <keescook@chromium.org>

[ Upstream commit a34c7f5156654ebaf7eaace102938be7ff7036cb ]

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC's proposed automatic
stack variable initialization feature, this triggers a warning (and they
don't get initialized). Clang's automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=3Dy) doesn't throw a warning, but it also
doesn't initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they're used or lift them up into the main function body.

drivers/net/ethernet/intel/e1000/e1000_main.c: In function =E2=80=98e1000_x=
mit_frame=E2=80=99:
drivers/net/ethernet/intel/e1000/e1000_main.c:3143:18: warning: statement w=
ill never be executed [-Wswitch-unreachable]
 3143 |     unsigned int pull_size;
      |                  ^~~~~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=3D44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/et=
hernet/intel/e1000/e1000_main.c
index 86493fea56e4..f93ed70709c6 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3140,8 +3140,9 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
kb,
 		hdr_len =3D skb_transport_offset(skb) + tcp_hdrlen(skb);
 		if (skb->data_len && hdr_len =3D=3D len) {
 			switch (hw->mac_type) {
+			case e1000_82544: {
 				unsigned int pull_size;
-			case e1000_82544:
+
 				/* Make sure we have room to chop off 4 bytes,
 				 * and that the end alignment will work out to
 				 * this hardware's requirements
@@ -3162,6 +3163,7 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
kb,
 				}
 				len =3D skb_headlen(skb);
 				break;
+			}
 			default:
 				/* do nothing */
 				break;
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200608231848.3366970-70-sashal%40kernel.org.
