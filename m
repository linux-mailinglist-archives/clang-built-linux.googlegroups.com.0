Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBEI43XQKGQEFWYDOZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FBD123C8F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 02:42:29 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id 198sf320156vkz.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 17:42:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576633348; cv=pass;
        d=google.com; s=arc-20160816;
        b=wgsiWbfVcnffGQU4xYRxsaz9kyoCz11Ipu+/zU+dFQg5xfZJ3UBhtCuMNmv++vhYJc
         NDr+CvJh6nZVAEuDtI/6fQvmXcz+ov9EMJfaKIol5p7erUzFAe6ZXxcK32X/IMXiWp6X
         Q4h9qjwELO3VC1e6RxyxQTv/QIpfpUTJyXZHmMImflJIxgdHs0EtcTn15lFrh0o6HlNc
         aHc3Yd5/XSJfHpPv2hRiFcxcfL23OUsAjTWZTTiM8ZTQXQaDTJt5NPBbkCbkvQQ2CClk
         TFTe3iQY/+3IVruokOkEG6vl0Fu2IsgXtn4ctuJ/tEWntE8SEFV7RGOWGp4Kpm1KgXHY
         C8hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=hMHrldl9+3vXoxdu+X7+AhDuYy7xCdJs1ZHX/uhiNjw=;
        b=Jq9wG7NHKXO5amZn5K0a+29bpXnOwDqW2NrTx5/y9I9RkakkOCQBF+RbSUmznE+sMt
         ovatlPZFTiAArQBBvmlHsU6iXm5ssK/+HETaTdFyyXhyQmZJbFghb4FSLAD2Dt9neHmz
         TfckRgtjGtxSDSFJ2/Q/4SMsm9KcVpns2y/2m9XT56o3YJPqX55l+MiEo4spR3jBlGGA
         3RQ9mPpAzGas1qmgwUkJiTlKyRQwQ72cRtioMzz67zDMyrI9BzctQNjZPhIblB7EePAt
         wm/44iYmdFjBlQpCST/m9kbE9XctRT0yT7uHEErs0mic0NeeFRWIin66A0JXfh1JUk98
         b5ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecRHVN3Q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hMHrldl9+3vXoxdu+X7+AhDuYy7xCdJs1ZHX/uhiNjw=;
        b=Jn3cCyx9MHqpjiA/dsBsrCQ2lzZXhIz756jxvpwr3s05H5fdnsMCkm9cDtdAb5lObH
         G8xgPVHzXqhqvgglNOrUc2v7LtDoNzpDUy+BqzOVr75+4eKNrfsQk3BeIiweQIhHgzLN
         V/W5epez484jK6wUDTDKsvKRuympzMi6CeQk85McwASOZ5kdiQ9MZRSSYxgkntcDYPhJ
         7lKO1hrCGDiVzryyDqmbDynRLJCy9DfwQHGZxMFrAY/UZvKO0IUNL6XvwpV7ZaEojplh
         OkngdNgS3U3dSSJNhW/KT4f8xwXW2ClRR1xI+xoGqik6EcvBnSa+EfCcsI3SYp41OIt5
         qBxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hMHrldl9+3vXoxdu+X7+AhDuYy7xCdJs1ZHX/uhiNjw=;
        b=TfZhOB6x7DyRxxr5yBDP7/NvToQrI4LjBs91OqqA07gcQea6Hh2DuJqUXdYig5R4sE
         0y/ppCdImbnl4DZDCkNnM7mftTb92T7m46engYD9jEZLRARB2LGIKg1jhLCSRkK9cVbW
         bLqFrhZtzvD08z+174ngrRrhXLiwFQpWpCGEf09Bw2uoW9XmGs1sPv548dVmA23Oqdx8
         0D5LthuWFxkv/8ZHq0z1PQEefwcXNQjPz1WlQUWRC/0y/Yg7rQOeLAKSt2N3XqnqurY8
         oxnv37RDVrUt5GouFtrl+Xv904312Xq/AYos9vV7gI9OfIHS2q2CB93RuCni+ginEVKi
         SZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hMHrldl9+3vXoxdu+X7+AhDuYy7xCdJs1ZHX/uhiNjw=;
        b=GTtOpvA2q31rcjnMOfWRKTXyHIhDKUKsbLvzB0FEkViSyanJ+81S5B3kYRgQ2CXvZ/
         TaJWkUnBPlFox6dt/8pMtqQXvaNhJQXGziSQMMfmx2/0CQetZ956crF66sGi+cXKNQeB
         0ltrIHJjxBXuOqJhXkhJJPFXbUVSJOVCn3EW0AGk2K7h/9eHnU1kTQJCjcSplmG6yU4Y
         yKalGG7ErFx0iWK9mQxnzY7MgEqoskhBSs8Cu6Yb8Y9Wy+gcMyrKo0A29KxaJ8sbCZKF
         i/Aw6rEoNr9Op9k+/Vgc02dJxhOKvWjYLyNC1gM/Jca7Jm8XPAsRgJR0n1XfFc02kEqn
         FvFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNnf9zrhtBJq6paf91kDZbMK+GhsVdZPPfLcSdHBgbmrAblAvH
	YgpRhkiIluMZBWOEYZvRLHU=
X-Google-Smtp-Source: APXvYqxJvbtQN2efCp5GFAFXFgzQm+RZl6B4sVkqZ06N2xqu2qCLZEf/uehy/sVSc5eXv0GeALyIOA==
X-Received: by 2002:a1f:5242:: with SMTP id g63mr552775vkb.36.1576633348345;
        Tue, 17 Dec 2019 17:42:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:20a9:: with SMTP id y9ls33760ual.9.gmail; Tue, 17 Dec
 2019 17:42:28 -0800 (PST)
X-Received: by 2002:ab0:6808:: with SMTP id z8mr59619uar.131.1576633347922;
        Tue, 17 Dec 2019 17:42:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576633347; cv=none;
        d=google.com; s=arc-20160816;
        b=OZ+3jQahM8k74RCVkaTbYGgbvAK7Op16MPgGN/WxJoAoSPbWSbcZmIqt6fZAiCHqK+
         d8wE5C/eDlfjBblGM7sx6HBU8OTy+90FO/kN6tAyMuNf+U3aq9O6k4dLAVxCHbLXYckH
         eZNVKXtRGmKIOCLEDqmyK+bxPGZMJ9u+o7KyixcckA5MnJj0vz4wUou9/H32wIYBpWmZ
         56tZmfrswnWo2DcRkz5V9Puog++vK5VfBHMN7b+A7G+3DWf2hErjYuMrECRVbjdbeoTt
         EGoHj+iNAza4rpjZ51mgzXhnYJc2eKw0py41K8z3uXVeWOQUROyERIfDoCNlbD/ksMjT
         RRBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=N+bs2iNFWfw8K4kc9VbekWaGMeOdYHefRD+wtZgGsIg=;
        b=c41jsL9ZKplxNwzWe6segtFtLS6MlN6PoJnMC+dgaJB9ygx1YSQb4XopnUH81iS0k6
         i0u0R9uDQ4PswZ/GJHrBUey7RCFbErJRBCQ9+AgDD8oiCxG+Y8h64JrIVOpfJ7s1JA3m
         x3mumHP+ghboBI/X2bfTVR3qRH17XhKYTEM+3i7TA/hFviYkA372XjILYnfl73dMnLFR
         hZ8TBqOEoMxTeWzPMBHW21XmWlTSf7iNPTZsKCq3khkwtsrUSYRP0rU7b2XRS0btIXkS
         7zkHvWzaayWXX/5Jx5yIVNGtefoSFgwxfrT1+Ixd5CSJWscHmr3FKaeRGI4+ki9ZrRtN
         h/bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecRHVN3Q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o19si22720vka.4.2019.12.17.17.42.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 17:42:27 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id l136so291597oig.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 17:42:27 -0800 (PST)
X-Received: by 2002:aca:5f87:: with SMTP id t129mr115076oib.36.1576633347229;
        Tue, 17 Dec 2019 17:42:27 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n2sm248564oia.58.2019.12.17.17.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:42:26 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Hannes Reinecke <hare@suse.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] scsi: aic7xxx: Adjust indentation in ahc_find_syncrate
Date: Tue, 17 Dec 2019 18:42:20 -0700
Message-Id: <20191218014220.52746-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ecRHVN3Q;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../drivers/scsi/aic7xxx/aic7xxx_core.c:2317:5: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
                        if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
                        ^
../drivers/scsi/aic7xxx/aic7xxx_core.c:2310:4: note: previous statement
is here
                        if (syncrate == &ahc_syncrates[maxsync])
                        ^
1 warning generated.

This warning occurs because there is a space amongst the tabs on this
line. Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

This has been a problem since the beginning of git history hence no
fixes tag.

Link: https://github.com/ClangBuiltLinux/linux/issues/817
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/scsi/aic7xxx/aic7xxx_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/aic7xxx/aic7xxx_core.c b/drivers/scsi/aic7xxx/aic7xxx_core.c
index a9d40d3b90ef..4190a025381a 100644
--- a/drivers/scsi/aic7xxx/aic7xxx_core.c
+++ b/drivers/scsi/aic7xxx/aic7xxx_core.c
@@ -2314,7 +2314,7 @@ ahc_find_syncrate(struct ahc_softc *ahc, u_int *period,
 			 * At some speeds, we only support
 			 * ST transfers.
 			 */
-		 	if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
+			if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
 				*ppr_options &= ~MSG_EXT_PPR_DT_REQ;
 			break;
 		}
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218014220.52746-1-natechancellor%40gmail.com.
