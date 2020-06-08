Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBS4S7P3AKGQEOZO26AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B531F253A
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:27:08 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id v1sf15302870qvx.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:27:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658827; cv=pass;
        d=google.com; s=arc-20160816;
        b=pYe0S49nO+8s23OgIjGh9IFDPOhrTvUnZtFPKxP9Vqi+TXtzeYYnrMObon7VZooU/1
         HoTFym+YhHA6VyILHYFy/4bXF/xR8xqod2/9Pb1HAUDD2mkvqx0XUVf6hYkoZGK83GWj
         NqJTiqLwem8ZqoEj9PqqaINjfxW6UUP3+excOlg3bJbhtQuB5CvXhFF/q69Q611GJNku
         3r/eLIO3v2CkGtZX4dahi+NxEQtjSlcKbxFCUG2XJJOgB+eA8cKNNg0yRqlcZf00POBp
         5C42CjajnJAlosh31GyJ+Q53U81dAy+89xx/pbCr/K6v8gM8doBYJvq18dMzTuCaQCWA
         5Rwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=AlFN1WGKAz6bxqkRsnAFCediHf+f7cuva1SrsV0VwVU=;
        b=PBih3qMrVjURwp4Xu4kW4YwzJGLX8JVj5xPHMDiO7I0U3GCUK8oSBeg6SBNRgr+s3U
         tJXQvApwPhl+KZ43hk9KEODGWbJMLm3ufXyledF2gyDhRfHRdu+nzDIu74G4Hlx+9LQp
         KnNX+H3F33m+CJaQrR+p9ecorXl/MMsr0lUGl+3RcmgVtLuwHxc1nIgI0WtQWUXfu8eZ
         d82wYDsafWMZElJqadpmOIvKLuNNTKfC8HXPe/htcm+36T5HlL4sdteOpj+cGhUmPTHz
         eGty4zkDItNLULXVZ0fI67kX3nbaj6M21vXHRkdbRFOUW1PCH92/9KIqmxb5267RW5lv
         gBrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s+OLnPjg;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AlFN1WGKAz6bxqkRsnAFCediHf+f7cuva1SrsV0VwVU=;
        b=sVvFV59l/a7ZxNNS9uO8mH2xhBwbIUxxOxs3yX/qKbJYd6aRhG1hmcGH7M8f+BspWx
         3DOLZSOQwUB86hHIV0Gr7arzRpUgQJgZl1uq6OWy03VwieWdPQNYsAe+Pdr8BKKzl/8M
         SpFrcwxMWHVtbvo0kMGSnbbDw/DHreUXuyhkduveaeuaFq67XTHNBBGYhyjkUeno4DGk
         1dJ1tzBrT1gUVB3sfwy2u1Xexpa/oK4cA8Hj59QaPkrySkKAVsE4SCcU+ZanevCr05xq
         AxrtMuLKbRlI83CDEZFE1e63PHaXuTEdWztwgxdYZfnX4OqbpO3hrcZ91tbvC+gsuiAj
         VnyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AlFN1WGKAz6bxqkRsnAFCediHf+f7cuva1SrsV0VwVU=;
        b=s/r6flCsmAUq7sq9OURJybeSN+m1cuwa+S9d3vEif5B6ZJaR/B2fVZ022MG2zzl+As
         M8Lg7mEwg/ZJragCPd0uTlBQ7xTp2SlN1nN2cb/kBxNOFJP17rwngAKUl9hhNBFJroXx
         ssc+HS02I6PR0Oprh7Gr5hU7l/R29fP1HHTVjXnW23blDlZvVXM+x/swUWstFCZWNRDu
         W6K1FnO0Xa72M9hYOAgpc02T5lOpTsTxFWABDzorOsfotKamwbt3ullo7FsgQTTb8mxh
         Ai9MOh3H3RQHCjEurCIZ9S96OZdS9OA5/IOQytm1GTlw5iOHQwxzUiVVhy4ZJaY0gsGU
         jcjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332aSLFVOFtIOD49bGbXS9Pxa+CtpMvEIMZeuuVLXoyFh47w/UF
	gtR/MJ6Veco5HUddqtmxkBA=
X-Google-Smtp-Source: ABdhPJye1zy1MTg5mzQxn/M1z3RcfLkEGROLyjh0Cysay9tcUapymTiQxmB6SZQu3RZgVTfhTT/Btg==
X-Received: by 2002:a37:a89:: with SMTP id 131mr24367967qkk.92.1591658827770;
        Mon, 08 Jun 2020 16:27:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e293:: with SMTP id r19ls3207439qvl.1.gmail; Mon, 08 Jun
 2020 16:27:07 -0700 (PDT)
X-Received: by 2002:ad4:510c:: with SMTP id g12mr1099926qvp.231.1591658827449;
        Mon, 08 Jun 2020 16:27:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658827; cv=none;
        d=google.com; s=arc-20160816;
        b=KR1B8lwbfNYncaXg7+Ay++Z7jmAGSi1+MxpLcjM6byezMa5Q71vmRRyaYdwm91OyBu
         dmyG07U7HrWoN+94mHOWGSkPsXQAilsrY5pyNZ9xjGpwpYVuCZXLzhS7EEy8mry359cH
         gVWFfR/MXXZAM64qA2SSO0mZ4DuLqiFi1oR1k2PxtT+7aaQZgRVTA/CH0mO38aBgcKqV
         ZdKKb4w2mLObXUCSkEoCuLm1t/Bel36D0+nj4VuqMZC+JdHc/KLChG7g1qawcHYcY0gN
         1QQVlz2uCEIu7UTZM/d5LZTYOC9pfZRRnyiGvEmbpusyTTrFpT/uCaxsTXYx8xz3t0Iz
         7B5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hPCFxuuLVG1py7BEjz751Ft3HYkTbb86F6MtEgAutYM=;
        b=t5ECDJHs10+H3ubm1Rhy7Ws6w6a3iWuNRF/cXH3mW425IzTcnwtObCxcloGN8lbvkN
         lWyVgpltyDdlbthC7SyuRwKMD4hJCIyi838nf4DDr+XGvzPIZ9z1Czrv2fG1Tl1PqfUU
         yztkjBNRquAko+FervShxeNZxjNCl7qzpCJgeUIUamWQ/v+On8vYs/Zmd3o0+3JmSnzg
         A2csZFDim2iqyacauWEAaC82xTcPozT4OS1xRtkPTbC6LfFF6NEaV8tXXMLYWMvqatSp
         HUDJfYU8lkUaEeJBgVykzX/iFDDl4cO9RZHhioTGLVADZTS9MKYDSC0Uj1ODgNxhjh9P
         v/OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s+OLnPjg;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w123si548621qka.1.2020.06.08.16.27.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:27:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C23820853;
	Mon,  8 Jun 2020 23:27:05 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 18/50] e1000: Distribute switch variables for initialization
Date: Mon,  8 Jun 2020 19:26:08 -0400
Message-Id: <20200608232640.3370262-18-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232640.3370262-1-sashal@kernel.org>
References: <20200608232640.3370262-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=s+OLnPjg;       spf=pass
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
index 39a09e18c1b7..3b16ee0de246 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3167,8 +3167,9 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
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
@@ -3189,6 +3190,7 @@ static netdev_tx_t e1000_xmit_frame(struct sk_buff *s=
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
clang-built-linux/20200608232640.3370262-18-sashal%40kernel.org.
