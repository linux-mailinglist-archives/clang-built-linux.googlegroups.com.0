Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDP5TDZAKGQEBQ3HZ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C01715D224
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:30:38 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id t17sf1471260otk.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 22:30:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581661837; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sk4T/ijnrS81W1yVFN/eemfHkX/BIC0pYP37ZEZZaXr3AvyCkyWk3ntVhDuEHPVwRe
         xXd4Sdr/vPWjNCHw6hDElNE/wzlWLNd/ncEwZArQyDwpPbMwi4hFaHuJDOn/RHs1irl7
         K2q5KSujznhstwfDQNXob2voIIBFG86XK6O2aE5+0BzFYFjLcuCEf0vYiecuX06T0XnQ
         rJzBVXV1Z2/+6j7Woo6/qUbipGywvTxPqPVkje29KOgXu7s/dRCqi5v88fgRUH6XgmZY
         r3byX/1zL6iEC4xA5b/758H3ubGaFMgBLOwxS2aDQGujYJ+X2CJ9+B63fdAkjrQ1lk0v
         UvkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=yNZ5vyA0jHW1th96J1bMYsfap0HvlOvhVYKmSdzy+yw=;
        b=Nr3dEDGnuWMD5W4VlhbbncTpFTsnOWe2zsY7/61uW+LEB4rLYp5bWYLdZokWN1p1qK
         0ErCMR4nLsyUaOpP0UXEHgt3so5r3pI6WAeZxzMrhVlaHob3JMbLDx6kDzWSPe/1S3Eb
         BJ9wzVbBpAQxwzfrmLXMsH+Web8fnvEolsw74zC2Wp7JJbs0MToTyYZKlO1RPwjcMjpR
         J/ouFTY2DkGIV2YhXjT7PyXHYmX9AuduSkO8dwcUOgo2RkZ+ik9JvnPdJHjM1sv+hozd
         3/bHfEMpFF/Nun+Bv7DMgot2qRJONV65QUXc3VIW2OlQs9DqfriB9mWZkdvj8v2xeEj0
         p0Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bl2+RkZv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yNZ5vyA0jHW1th96J1bMYsfap0HvlOvhVYKmSdzy+yw=;
        b=VaF/c+kOfV/NQlzc0J8d1rrVNIiDApwV35EuJRKtGKwuhh13pe0tr91U7Doomisj0N
         ctZ4YZUr3+Fh3NNBFdena7ay5a5P/2TJLlZBm2RZtY7WSLAiKnAySrHQTMQ3Vw7roQlG
         jiSJBpA68q3LGYguXFs27YD3JcuSoKT4qK/g3fCI9UJ+cf4Q+pMKxy+EOEhYmpNFfp2f
         U+nhVWzk0Ovb28GQS4llHnbzdGWTwuHP5R3pasihdw+yYCoi9MNfN93EuK9XgCYEVvVq
         NmEyAyZ8G1GR7zKcEIVoxHy+g0+o9oGI9y/+jszfBbOD5YbnNztH3g3msg0QSFe7arJT
         ApKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yNZ5vyA0jHW1th96J1bMYsfap0HvlOvhVYKmSdzy+yw=;
        b=kXdvgsEvOISoBVaepl6ij7S4mf3kST7qPKyJRFfe9c6kqdcuvJDQHCxbkqcTns8pzW
         /XvVSSpg5vDJPYKv09mvR1uLygZl1uUTUZQ22igLRYfnfyYiXVQmIJVSB3pvQDYAmJEG
         /vfFfVQd+POG6vXTsOZquIQHIHJrnCypOQeOJh82MotXsyQxTMSUigUxrfCPue3fxIOg
         VIlEVAr0/tWCkFpJdubr2M1bmrBHfI0wm/o05w4SFPpyfQk14Yyu+CtxkOhJVeCSHH2P
         AHPZdTwcFIg3u5vZD7fh/l4ct9b2ZvnqWiLc18ahLDCJdsrzUXr34GzE7QRWuefvW3tw
         3q/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yNZ5vyA0jHW1th96J1bMYsfap0HvlOvhVYKmSdzy+yw=;
        b=o9VRAcuuxc5f49uGu7bPcgC0+IFpCAWlgGc3fkrpTJw8Vb2AbnB9fg7HwX7GI6kHyL
         koBASUqccIAjS8L8gRPX9I24uZI8K7Bry2kSbqBhVxMKvy33gEV047U3Gxi5xX2Vd8US
         LvP7v4nQGaWu45eTD0chUZlGIyC7OysTCFRA91Lg0t934sh/00zSd4sF646lpAo1tGdQ
         entMey9ISqvk3kCQEJM1HTUYAuYjHOoeIoD7N1059IFxXQdwibnLPJiMcbVyRmABMoei
         tXlX6QwijUksjaHXh25M1c0iaClfygk0dji6di/BQJMU0Bt8844e0MduEG/V3L43qxag
         DzaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW8swX4C34s4Mls93Sa1SoVKcxAw7krzRmVgGuVHx2iCnQrurN1
	AZi4JzUuEu7o3zcXz55QHkA=
X-Google-Smtp-Source: APXvYqzd+qxSpoNe2vVndNGV9Da2pjM4+Lu624rCuh77FX7u7qEIwwbEZUse5HOAH8XG59hl/h9cUw==
X-Received: by 2002:a05:6830:1607:: with SMTP id g7mr1043083otr.320.1581661837248;
        Thu, 13 Feb 2020 22:30:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c694:: with SMTP id w142ls225656oif.6.gmail; Thu, 13 Feb
 2020 22:30:36 -0800 (PST)
X-Received: by 2002:a05:6808:b29:: with SMTP id t9mr857009oij.69.1581661836932;
        Thu, 13 Feb 2020 22:30:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581661836; cv=none;
        d=google.com; s=arc-20160816;
        b=XSPXAwCN4cJD9/D7qAozMbvWZYXjBb7cvvIiF29c2Qc9hdInBrDockBQHyFyxaJL+e
         yuPIB7j3nPIzUB3A2iv6bWfzTiqJw8snP2Gk+6TUeVeYXcycmu1uBK04ELoEOwzM7mL7
         6RlHF4cL+OsxM9YUbx069q1Egv9bvt/0p6IBZFwFLKn6sgQ2uCSZdGW9vxhhH7bLUKsQ
         k0+A6aWl3jVYNnRRzWg/uL2WWmppuU6xA1oNtxP+RkB3sDnLbf33oo0ZZFrKAvdIVz7/
         Dhn+AlDwM3MRCgF8DKMjcUqilgZ1g/ukIMztBRzlpL7fyuwFqo+MjPP9dzzzSSpJYOT0
         uPEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ntwhmb838HNdG68VgBkMbYUyn9XVt7puNK0dtc2mxiU=;
        b=TaX5SBChg+j/HDqdSnqMwcV43YRhbfNh2y+TX2SsHtDT83ymY/d3Ezf8kEdpD/bgak
         9QdDZBlsyVdHDP2ZJ7fl9lk8Dbv7APpocSHhyE0uy4cMD0RntKRdpxiPnNE0uYxy12Q1
         qqwG8NAwBl28DYU39hAWrJKJdmNTZzQj5P+DxKs3kTW6/m/1LGnN0kMRs19Ty/JYAK5d
         EkAdXkFPbBOP3k7bro9eLhaMvPzcc0LxpXlviMa3tpACRp+9PoYfonUeQA2Q9JMJLLR9
         ctHPBjf5O/jFqtOJlNmJn5lAyS4awYkXNyD8yS3lWvrwi6J+HOFdcyJC5fmFJsK6vJUT
         tvKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bl2+RkZv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id r12si271878ota.4.2020.02.13.22.30.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 22:30:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id p125so8413048oif.10
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 22:30:36 -0800 (PST)
X-Received: by 2002:aca:6542:: with SMTP id j2mr873096oiw.69.1581661836582;
        Thu, 13 Feb 2020 22:30:36 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c123sm1483599oib.34.2020.02.13.22.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 22:30:36 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amd/display: Don't take the address of skip_scdc_overwrite in dc_link_detect_helper
Date: Thu, 13 Feb 2020 23:29:51 -0700
Message-Id: <20200214062950.14151-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bl2+RkZv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c:980:36:
warning: address of 'sink->edid_caps.panel_patch.skip_scdc_overwrite'
will always evaluate to 'true' [-Wpointer-bool-conversion]
                if (&sink->edid_caps.panel_patch.skip_scdc_overwrite)
                ~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
1 warning generated.

This is probably not what was intended so remove the address of
operator, which matches how skip_scdc_overwrite is handled in the rest
of the driver.

While we're here, drop an extra newline after this if block.

Fixes: a760fc1bff03 ("drm/amd/display: add monitor patch to disable SCDC read/write")
Link: https://github.com/ClangBuiltLinux/linux/issues/879
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

As an aside, I don't see skip_scdc_overwrite assigned a value anywhere,
is this working as intended?

 drivers/gpu/drm/amd/display/dc/core/dc_link.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link.c b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
index 24d99849be5e..a3bfa05c545e 100644
--- a/drivers/gpu/drm/amd/display/dc/core/dc_link.c
+++ b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
@@ -977,10 +977,9 @@ static bool dc_link_detect_helper(struct dc_link *link,
 		if ((prev_sink != NULL) && ((edid_status == EDID_THE_SAME) || (edid_status == EDID_OK)))
 			same_edid = is_same_edid(&prev_sink->dc_edid, &sink->dc_edid);
 
-		if (&sink->edid_caps.panel_patch.skip_scdc_overwrite)
+		if (sink->edid_caps.panel_patch.skip_scdc_overwrite)
 			link->ctx->dc->debug.hdmi20_disable = true;
 
-
 		if (link->connector_signal == SIGNAL_TYPE_DISPLAY_PORT &&
 			sink_caps.transaction_type == DDC_TRANSACTION_TYPE_I2C_OVER_AUX) {
 			/*
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214062950.14151-1-natechancellor%40gmail.com.
