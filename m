Return-Path: <clang-built-linux+bncBDDZ5LVW4IHBB342QWEAMGQEVZ5KW7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E953D8DC7
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:28:31 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id r14-20020a5d4e4e0000b029015409d80a01sf630438wrt.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 05:28:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627475311; cv=pass;
        d=google.com; s=arc-20160816;
        b=AYFvvqNzCOegWHpxFY5IkkVwDdbAA9Zl1k6eT2muywLWxkMtQrt5bH31581wtTSWHC
         kN+9xHi+/afnHLoMCB6TOzApuObZI/59T/yYrgpk+pGIvd2OqWbEO6hZ5ZLiudGYDg2Z
         F8PC3ybobBSo61U1T55iTvaZXbK8YOdij3J4glNfrtaemgDwosYGlGI1ql3ePP7m18Lr
         yRJPodp82lOwu3OINzFSR64fexMa5XeE2rchaAcxvMWPpb49OwTl26ajts8A3x5V6al3
         j6Th7pky9bgJsdPkfii89G9Ebdj6g9MdYBEutkEK+vZjjrt8xzONGJZ2Mj/qszqHU23U
         MiQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=NrVVPYwN9K7zrnvdoQGGETtv2yNwOo+4MbW5UPdlRkk=;
        b=KvpFXeqQ3axdDD2gtV2JR9ev1pbw/8MFp2nuwXBHf3PUzgqyFq2GdZgaRdW9jIgwD4
         VDN4t3LLPquAhqAWc1YmkIsVUNJ1q3ZSXMwGWmhse0/wJbm3sXl4ChZaOF6Px6+/tlSM
         DGCYx+jqVSFVd0mDS/b0BDzaQHxP2aG5++87MzpuDR8P5oNgEhLL/ukhE33W0UTMvulT
         X0kdWhE3onbhHJZMDvQD7GG+2EESsthEqoxW0myM+fC6LNwg0pD/bBe/EW9Y9MXpDav2
         mTJV+DE5Ft4fOK35UMY20pSxjHYLbHhyucOvFy0LKnvT+bIgJqIfiMusX7p3f4DW10g5
         Rpag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=vXoJy+PN;
       spf=pass (google.com: domain of krzysztof.kozlowski@canonical.com designates 185.125.188.121 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NrVVPYwN9K7zrnvdoQGGETtv2yNwOo+4MbW5UPdlRkk=;
        b=YlJDHykJVEX7MzFH2plHjjWpXHJqqi2fYe3vnhHczdFVJWICR2C1wzCJZw0dSvVZoN
         xGN3gcrmqizEWhFje469G2VQXjPI4nKHyaYwmoaR5FBbuyciNuFgfr8nWDAfuRxFMGY3
         yVYYbbRQbt+wP13256NOiZK8ahFtk47pWPJg5eBnvkO/s/DDtmSzCPX1eEljFCx/bugT
         U1BR5Spx4Bv6m3be6YlzQSzrmD/xc0/FthRybjOYBrmciutagRz0dhp066qwnawNPQeD
         NTIK5WXU+vxIojkewRq+s8NWaVAFy5uuFzxycCCeDPLyvrOt82hz7g1LWP7zpm9eKlr5
         isCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NrVVPYwN9K7zrnvdoQGGETtv2yNwOo+4MbW5UPdlRkk=;
        b=aoAaBpUfYrCtofIFu5rZgWbnOq7gkbMkZxnmNtkWpj2ZR1eqrPiBrIxHla1c1jsKhW
         E3xyIc79qExMEOdqcxY1Qs6iJimFT6HZLTgXIF6bfP7nkiaiIrAlu3YC2vHdKBXk8PdM
         ON2/0z8WfbT3TQPz5cObp+y8OZhMfJjNGgXk5+XehBU9yqKe0s9o72JJe5TQHmZLg0Ey
         IHKcyFMLouYL+78lc24EvNwf76ZjIuq/QmNaX6r2BQkClbSkoX920aggL+jbzBX5JFuV
         vygsYpzmeVrIjWSLkfQSJF6p5RIZTHmY8oX9Dg3GwqCjC29bJGYEPnu9cO/A4o50pE6S
         KveQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vmhWpzZor7lMwuwah9hm/c1n2D2UU6WrtfZ1TooYuECoTQseL
	4k03ZsQAXZ7gysDnoqpL+a4=
X-Google-Smtp-Source: ABdhPJwxP8m6uBK9bNzphjXjSub2IKQulgNGsRXjeoQFF5t0KAobGOLGOtFnQjOtiVhBPTtke0lNfg==
X-Received: by 2002:a1c:f705:: with SMTP id v5mr9212947wmh.69.1627475311247;
        Wed, 28 Jul 2021 05:28:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:511e:: with SMTP id o30ls3170542wms.2.canary-gmail;
 Wed, 28 Jul 2021 05:28:30 -0700 (PDT)
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr9228689wmb.142.1627475310339;
        Wed, 28 Jul 2021 05:28:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627475310; cv=none;
        d=google.com; s=arc-20160816;
        b=QHE/w00eN3CXf/sKYzyfQ/Hz2VvSCEHZ/UXqooQ/LNjbOgXYFrtEcChSz+V4JYhq3Y
         bZC5e1k8XaUaq7G55eZ7VWIdBFIRyfudeO+zv+mWgZTAHAVwXKhCtdBDy6KyDRi7oAHe
         QSxeXbMJhgdYtaqiQd34YTiP1kvFwAPislxA6iUWpPfK/oXnC6pPMiDc0E0Y4P7KR43t
         IeizThWF2k/aN1VvPvwCHkG9DJicJif29PM6vpNLAdrK+TiF7ugfmsHj0ohjby20qets
         AznEOcer5I6wLOfVNgqRvj1qpwHFJaODOZc64Omfl3RoJVdtRKcv+BDC+3u4MQDR+7oL
         OhiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pjz5ZlEXm5/saRfrb523NAHPbJDjlGI5vzYthqGvyTg=;
        b=q0+qPm1gLHZ7w6DhO8neOEQWiwXNkxhu0XD1wVLI03bL92KH1gJzlxOZJrIFl7IyCu
         +rohD4DoF/ihxIC7Gshb2w/3xrFCvNrbpc1h+5eI0MorIrJeZHHOyQnlWFsCrfM/81lU
         lThORZDG/Ajj5yAh7O+mGuUsxPkCmVUlWZ9NBo00k2A+8WlMgsukeyfrZWj0R28Ezrc/
         Gdlom34Fd+JOg50Nwv/lsgEaccNW3nETu30z65qhjk60kSl5ACH+PRYCvAvOpHCl1ZmE
         p+jTcKakrGPjdIlqospzutP82m4zRRwNTT9+5fNK3492nUxSHJe+U8rMEC5EQjApWIHA
         1Rsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=vXoJy+PN;
       spf=pass (google.com: domain of krzysztof.kozlowski@canonical.com designates 185.125.188.121 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com. [185.125.188.121])
        by gmr-mx.google.com with ESMTPS id x13si280443wmk.4.2021.07.28.05.28.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 05:28:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@canonical.com designates 185.125.188.121 as permitted sender) client-ip=185.125.188.121;
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id BA7AF3F327
	for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 12:28:29 +0000 (UTC)
Received: by mail-ej1-f71.google.com with SMTP id gg1-20020a170906e281b029053d0856c4cdso753767ejb.15
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 05:28:29 -0700 (PDT)
X-Received: by 2002:a17:907:1b29:: with SMTP id mp41mr27084488ejc.459.1627475309453;
        Wed, 28 Jul 2021 05:28:29 -0700 (PDT)
X-Received: by 2002:a17:907:1b29:: with SMTP id mp41mr27084478ejc.459.1627475309295;
        Wed, 28 Jul 2021 05:28:29 -0700 (PDT)
Received: from localhost.localdomain ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id mh10sm2006470ejb.32.2021.07.28.05.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 05:28:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
	Krzysztof Opasiak <k.opasiak@samsung.com>,
	wengjianfeng <wengjianfeng@yulong.com>,
	"David S. Miller" <davem@davemloft.net>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: kbuild-all@lists.01.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] nfc: s3fwrn5: fix uninitialized ERRNO variable in probe error message
Date: Wed, 28 Jul 2021 14:28:08 +0200
Message-Id: <20210728122808.156961-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: krzysztof.kozlowski@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canonical.com header.s=20210705 header.b=vXoJy+PN;       spf=pass
 (google.com: domain of krzysztof.kozlowski@canonical.com designates
 185.125.188.121 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

Commit a0302ff5906a ("nfc: s3fwrn5: remove unnecessary label") removed
assignment to "ret" variable but it is used right after in dev_err() in
the error path.  This fixes clang warning:

    drivers/nfc/s3fwrn5/firmware.c:424:3: warning: 3rd function call argument is an uninitialized value [clang-analyzer-core.CallAndMessage]

Fixes: a0302ff5906a ("nfc: s3fwrn5: remove unnecessary label")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Commit hash a0302ff5906a from net-next (not Linus' tree).
---
 drivers/nfc/s3fwrn5/firmware.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nfc/s3fwrn5/firmware.c b/drivers/nfc/s3fwrn5/firmware.c
index 1421ffd46d9a..1e506f6be96e 100644
--- a/drivers/nfc/s3fwrn5/firmware.c
+++ b/drivers/nfc/s3fwrn5/firmware.c
@@ -421,9 +421,10 @@ int s3fwrn5_fw_download(struct s3fwrn5_fw_info *fw_info)
 
 	tfm = crypto_alloc_shash("sha1", 0, 0);
 	if (IS_ERR(tfm)) {
+		ret = PTR_ERR(tfm);
 		dev_err(&fw_info->ndev->nfc_dev->dev,
 			"Cannot allocate shash (code=%d)\n", ret);
-		return PTR_ERR(tfm);
+		return ret;
 	}
 
 	ret = crypto_shash_tfm_digest(tfm, fw->image, image_size, hash_data);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728122808.156961-1-krzysztof.kozlowski%40canonical.com.
