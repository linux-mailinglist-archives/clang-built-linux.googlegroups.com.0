Return-Path: <clang-built-linux+bncBC27X66SWQMBBJUC2X5AKGQEOPMMISI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0199425F06F
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Sep 2020 22:06:00 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id 139sf6632898qkl.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Sep 2020 13:05:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599422758; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPkIbMUtCEH6z6BfbwA39USaI/EqgpPx/00p65wwyN6OmbHcVRi+KaDTDJHHbyHA1a
         h/9PS9xabqmcHPAu0oO/vnSi1wJJpAKdsTeSXfYFI9kDYyenyolQPO0yp0qGOA2oHb6b
         pFMWqfjXv05vjUZIvwTvTEmqPctoAeo1rFiEEZnKBfvWZtjOqSuL6myrU8igBDh0NVi4
         mhudAg1UYw1S4y6w++mcBuvHHkGx4Suo5k0AlmD3zsrTb8vuv5emfHyFLpVo77Xv28+l
         0vZSBZ38Ot/sn+GtFLeHj6BbHBQEhJTdncPh4CI7pzab6AoTusz02YnwMacGpZffHxht
         DsSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=fDEUDE+dVdBHUx4zpymNrzZDnO6wDD8Bbj0cysfmKiM=;
        b=OVVjOlsDR7bVmnHnnsp0ogtNTk+fsUexF4nyLOTToRLQrnNYq5ozcC6Hr6NNbZ13i4
         klQF3HA8PGYBzc9DmGmN15aS4o2EGzAFAPCUB2Bxd24ZslILnmsCgOr9vUDvXmiiAJRQ
         TDUnm/UFkVG4wX33qcrgdR4WvW05tg+SZkluDMp9iclqO5f+zIUKfUmYNY1TeMFwZiXy
         0yoql45GUCPwvjgIHevxBT6ibBkpp6u+AHuDjPJo0me+9TYK0WeYpBxpdqjSyXXagoK2
         kiV4EQyDfl3EN3TEZCmmAitGKnE73QxBNtfL0fW3+D4BwtotYlg97kvYGqJTBV6Gfdbl
         IITA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GyaZQEfP;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fDEUDE+dVdBHUx4zpymNrzZDnO6wDD8Bbj0cysfmKiM=;
        b=PvfUympAG4MEBc5CgZJ48Uv26Y34jp+tz63EaRV0UvRd1uIH5O/ZYiXzfA49jsL6oo
         EdC1NSUGm+Q1ITZn8gq9Y4sn51KmW0+WsVkvEoCwAgPvIPYlem2PlO0qmpznKrW2e2PM
         GLm0bbxhBJRn5fokc6plRHAQHHy7kotYcPx+wVWQwdoLwvqXiUqTCOPXrBp/phaji/ZY
         FohEgb8IYS0FtoIgHsDuKR+0LoS0a9h0v0tB9l1EiRSJONYc5BD9r8PjnIcotYBoLFGf
         9zVqJTQHNKNLGDgIrHNv1leWzMCL0Eu2kvWrX+S6C4deK+nicmWFltvp5p+wzQuLnrfp
         7pzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fDEUDE+dVdBHUx4zpymNrzZDnO6wDD8Bbj0cysfmKiM=;
        b=Jcm062GVpEc9alhRP4iEc6FLDiJ5IMGj6gDmuNnu5VblwMtQfErZZlD5tDJouoTadL
         J4btKwC8CAyu3zlWw9+40e05WI7o2dTxJsmMT6mazGOORb4j+wYO97IsAyMYRSdGBCtU
         VClbAg17OV030FqjulxDolMjt2Srs6z6B43yUrHB4xAyTKnTubeU9KgwiTEMZGBZqiJF
         3eoQ541PxGbPRVK1PIE60N+LScC253z8dMI/VEby4F6DK1oLjtMikXg1MpKyKE+TpZ0N
         Ur7bxWG36QQJrdtXixFMKSRtbAXjxfvQ4W+mQMU4cTLX/XqXx1rkFg0UvJ/OXnc0ly6l
         vG7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53187K2DZq6jjbqMYhopAA76wCvmX+p6vSeEjN8EU+iRcsq8tJeW
	NhDeb7PTMZbcS3sX9Y8tNEQ=
X-Google-Smtp-Source: ABdhPJwL8YISQGy7NEk6aZ1t+069GIUZzg9OkZt8JY6iNenKNpWPmyQLPi50e53Hff5toLMbEIRxRA==
X-Received: by 2002:a0c:b791:: with SMTP id l17mr17442306qve.44.1599422758324;
        Sun, 06 Sep 2020 13:05:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:146b:: with SMTP id j11ls6707532qkl.0.gmail; Sun,
 06 Sep 2020 13:05:57 -0700 (PDT)
X-Received: by 2002:a37:474c:: with SMTP id u73mr17664540qka.45.1599422757857;
        Sun, 06 Sep 2020 13:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599422757; cv=none;
        d=google.com; s=arc-20160816;
        b=u8vOZ9G7iwDo8M5oB3x42ApRRbs31+xOarTXAgtb4ymLSjfgcvUzgh5QRFcO9sCQYt
         8UACpZjlEqKEpBlA7PKJnXtxRztLZ1u1d8p73C9IGk/WfS0P1EEDr/kKZpr1gDJa3dj2
         EzI9TzKoKDOaYYaUMUtHiqynYv4mvQu7zZPJcJnEAcMCTltaL14QF+tzcCx2WT8KT4/K
         cmPWBnVXwarPnEaDYw3VlZ5GnRkRmCZSJtaPQrN84r67tln6qmncmu6l8/a+i/B9FxNG
         UhvbNRhiE3lxSFToNZ0dcdBcszaaLocIUeVAo+c4MD1KuZ8qfZvFcE2SUdGSot+d+cc8
         zV7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=22GEKdlDGamdrcCdfxHjJVYzr9HNsngs+YDvy62bHWk=;
        b=SjI5PkjCGbFTD3Ind2v2c681/DlDdXi6XK276om3Cg2s8VFsQtBjZNxn5C3WzmyKde
         FhG+CDWDUmDxIeWHfUGxdY7F0RG3z4ycIw4hDl8pC0DTmyfiJ30AZWTbfc9tDrV65RVb
         ufX+R5SZMi2K78993+d2sLMbqNvQFfgOx7Voq63H+LfH2V4avA7ugPlO96CL/v8e1PMr
         BLRAf+vVczL28/EwqVsNdmyoX0hi1ExIrI8uHMUz7AfwmC3PxfdSUC0TqSHPTEl3Sufq
         zJ6o7MrKyGhrZqswBQaVRKoP4V1n8TP5+kQy263qM5cdkkhSDyoN/jaESGeeydQrTuFv
         wZcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GyaZQEfP;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id a2si654707qkl.4.2020.09.06.13.05.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Sep 2020 13:05:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-452-_a97ahxiOzCFTKcvqxauPA-1; Sun, 06 Sep 2020 16:05:56 -0400
X-MC-Unique: _a97ahxiOzCFTKcvqxauPA-1
Received: by mail-qt1-f198.google.com with SMTP id x10so7789147qtp.18
        for <clang-built-linux@googlegroups.com>; Sun, 06 Sep 2020 13:05:55 -0700 (PDT)
X-Received: by 2002:ac8:310c:: with SMTP id g12mr18097158qtb.281.1599422755464;
        Sun, 06 Sep 2020 13:05:55 -0700 (PDT)
X-Received: by 2002:ac8:310c:: with SMTP id g12mr18097140qtb.281.1599422755202;
        Sun, 06 Sep 2020 13:05:55 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id x3sm3727737qta.53.2020.09.06.13.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2020 13:05:54 -0700 (PDT)
From: trix@redhat.com
To: amitkarwar@gmail.com,
	ganapathi.bhat@nxp.com,
	huxinming820@gmail.com,
	kvalo@codeaurora.org,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	bzhao@marvell.com,
	dkiran@marvell.com,
	frankh@marvell.com,
	linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] mwifiex: remove function pointer check
Date: Sun,  6 Sep 2020 13:05:48 -0700
Message-Id: <20200906200548.18053-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GyaZQEfP;
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analyzer reports this problem

init.c:739:8: warning: Called function pointer
  is null (null dereference)
        ret = adapter->if_ops.check_fw_status( ...
              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In mwifiex_dnld_fw, there is an earlier check for check_fw_status(),
The check was introduced for usb support at the same time this
check in _mwifiex_fw_dpc() was made

	if (adapter->if_ops.dnld_fw) {
		ret = adapter->if_ops.dnld_fw(adapter, &fw);
	} else {
		ret = mwifiex_dnld_fw(adapter, &fw);
	}

And a dnld_fw function initialized as part the usb's
mwifiex_if_ops.

The other instances of mwifiex_if_ops for pci and sdio
both set check_fw_status.

So the first check is not needed and can be removed.

Fixes: 4daffe354366 ("mwifiex: add support for Marvell USB8797 chipset")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/wireless/marvell/mwifiex/init.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/init.c b/drivers/net/wireless/marvell/mwifiex/init.c
index 82d69bc3aaaf..f006a3d72b40 100644
--- a/drivers/net/wireless/marvell/mwifiex/init.c
+++ b/drivers/net/wireless/marvell/mwifiex/init.c
@@ -695,14 +695,12 @@ int mwifiex_dnld_fw(struct mwifiex_adapter *adapter,
 	int ret;
 	u32 poll_num = 1;
 
-	if (adapter->if_ops.check_fw_status) {
-		/* check if firmware is already running */
-		ret = adapter->if_ops.check_fw_status(adapter, poll_num);
-		if (!ret) {
-			mwifiex_dbg(adapter, MSG,
-				    "WLAN FW already running! Skip FW dnld\n");
-			return 0;
-		}
+	/* check if firmware is already running */
+	ret = adapter->if_ops.check_fw_status(adapter, poll_num);
+	if (!ret) {
+		mwifiex_dbg(adapter, MSG,
+			    "WLAN FW already running! Skip FW dnld\n");
+		return 0;
 	}
 
 	/* check if we are the winner for downloading FW */
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200906200548.18053-1-trix%40redhat.com.
