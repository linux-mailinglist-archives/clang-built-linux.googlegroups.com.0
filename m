Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2MJ7P3AKGQEVWH42KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 088231F2257
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:08:27 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id c29sf12953742ilf.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:08:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591657705; cv=pass;
        d=google.com; s=arc-20160816;
        b=cCx5uyiA3xBaI1Ga9tVwFi9PXnnv77ouJcNDBxkEcmFiDf2lM9RuzBP1A03QzKrY6C
         k/+FGNZsIY8cIri/ZA1D5EDHc65tvf43VKBfWWaLB9OeIs4p4tE7VlRrTdI9I0KUaMhq
         5237cWEKmqUpikO58az5XYAs25/XTq50dHoVROnYu5FmhvLuYrsNrXNdeh2cFQSztHD4
         W1aiQQdIJiZfaXlnPlt43ZEzHf+Syz6EdttB2xPncBiHun8y0iazacA0LBOWvkZaoaI+
         djyRGMovLn/caOOiogSPZN1lndXnYVNeOJY2Mfze1udecMRHO6ULWVgzjwKjd6+tky7H
         EdBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=MGRoPzY8jdPNqlCemoQLwErViqoUb/daS3xgin+flSE=;
        b=iJzVWOSBtyEr8cBEWaMt4iuBq28bGmMOg+htSzaqd30xDe5lihWBkh9G7Dm3Fe/kgm
         xCc49hlRKUXjsV8qzdKGZeyJN9wwDARRDfKff50AX/YAh+fQKdNowcqL3VjWB6xsxFz+
         tSQif+dWRD77wAI9KYoSneZIqQC3+HHJLYZ+6tDrdey8i6t7HOFsaymPlMtAe3sNwcbk
         M2Yqnm2bbqUpFp3hDHd0TXo6JMzopT3xNs1B17Q+8Jmlawl/M9T1EFHXs9wS/4A8qMXE
         ep+i49EG4kV/V1TDhzFHFtb3IAlpl+Nfk72sygaTGiGQqCtXu7Xcu7li1xcH6OTmc3ui
         n4Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DOrNsObr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MGRoPzY8jdPNqlCemoQLwErViqoUb/daS3xgin+flSE=;
        b=HeHcewIdqCH1R+/kFpZhBm+IbU9AF4EzgQLAKi6wqDflkoQ0RkvBZnhDO99k6cq7WT
         MkAVFKPXhpo5xA1SOqHl+dCoHQZtH2wvebFdDiUAoCb00yd5plfE0IYITvmyHwBfS+Pf
         TwbFHAS6jHWVATNPbtyQbtxqfhGnMydhHY1Jl2caPBwymCeTTAqyhc7Bt/gERxm8CO1v
         6ET21qYqieCQXA/WyLXbvX2LAOWlGfC/Zm9SuOWWmCBPzIJ2ikc8GACt2RN0NybG7nm2
         2OASJ+mMm/ITTmuSEI9HLN4RjoyGydXlLIYcIYJUiF3dOcK6PXAN1wH9gi5ciS66siEv
         Uvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MGRoPzY8jdPNqlCemoQLwErViqoUb/daS3xgin+flSE=;
        b=c6jrXlp7WaUWlkL5AHCMZkYZTfT9OwOQ489O62cPXP6TX/cX600auFLq+KS7WpG1ZE
         wDwWM7B8f05x8Uqiwygfb3eBZ9rwfdD6ep42Om5R2rZFxqoyqxzm65s2ahnJfclz6Ebk
         NJwtH5a7aZLc9IMpACA9Rme52G9PAKcKpEgWOyZbasDv3CpCtJEjmqZXbn127UdedmN5
         8FuX/Eijk0GIwFZHOpzVS1eQa79qpFTxejQfsF1tRoYp/t+x85TUwntBRxszs/dBqxhn
         CXdkKPlXMXTxnfQcYvGuevvqZ35WcMFV/1i5JzaZ6hTN7o+pret+7khx4UwCDcLTqrfA
         huOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307h+p8cCFi/6WtvEeM13VpwNbC+geRZ4lWVP65zzblGhd9bB28
	IKND/niIZMCSxifcdLqkSIk=
X-Google-Smtp-Source: ABdhPJy7YOEosdZHiVDoSmhcO1x2nl1b+hX+n4owGCqLyYKSRcJIUpRCJw5HU3qGuUx+YsID3fUu8A==
X-Received: by 2002:a5e:8703:: with SMTP id y3mr12843853ioj.61.1591657705788;
        Mon, 08 Jun 2020 16:08:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1552:: with SMTP id h18ls1818505iow.1.gmail; Mon,
 08 Jun 2020 16:08:25 -0700 (PDT)
X-Received: by 2002:a6b:8dd0:: with SMTP id p199mr23537326iod.7.1591657705495;
        Mon, 08 Jun 2020 16:08:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591657705; cv=none;
        d=google.com; s=arc-20160816;
        b=zDlnUz9St873Ejb3nafqLkXgJ1/GBS1ni818ZSIDZgwsaR8mRaqhQgsSOwo3XNMSBn
         S4wTuwEPq7iu+oBE8HDdBimzSxdMmZXXrB53jpjKEgxwOgkTZlafQ72aLBnI4sRriums
         liBJzW+S7HhHbL05yKtVH/af/zi1vO/B34TyXUE9U4gmxNgwYoxH7pZammlUbtin6nI0
         v9Kz7yoqCRVuzLtitT37ae4culiBzVg2ewFBIYsUCj71lVtRvFErzpzNVF01ov8bMlyE
         VXvF3Bb632jlGOoqxcMXpi5yOqDzlSY/qj4MaZyb+rWAuyEm/Rpyn7ZJRMs+eSXo3mSD
         X+dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GR1UrV/tJAaUP6zo5a2daZFfLaAw9euWlkG8qgpI6qE=;
        b=hOPLqXzUkot4UxlJnv3Ni2d0q8KvsoIwWgTxdGR/ogFWJNDNCF3MugpKc2UU0bUVE6
         9zESIpRm05H0l3R2LAwMqdqr1rk+Y/dvmPtJ7seddOyCmsGE4fddESco/hVhsjoWiyAa
         EpqTHIwnK9y7iCKYTB6EvRYZuGxmCbBqefFlU8LfaCmK16rJgTlHrUwBfHFiNrsMQf2d
         LyR9vZ3HkC+rXZJZ3wOkODimmtt1vsHLgbR3AK5U6XL4OL8XQFrPlV99ffCeFr+YWsKv
         545SPDr2ksEHJTCUjazoBJicoT2IjYI+WNA2hncoobu21EpwLm7t9Ej79N4ihwcL9nDz
         uKZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DOrNsObr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z11si843817ilq.5.2020.06.08.16.08.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:08:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EA14920842;
	Mon,  8 Jun 2020 23:08:23 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.7 102/274] e1000: Distribute switch variables for initialization
Date: Mon,  8 Jun 2020 19:03:15 -0400
Message-Id: <20200608230607.3361041-102-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DOrNsObr;       spf=pass
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
index 0d51cbc88028..05bc6e216bca 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3136,8 +3136,9 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
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
@@ -3158,6 +3159,7 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
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
clang-built-linux/20200608230607.3361041-102-sashal%40kernel.org.
