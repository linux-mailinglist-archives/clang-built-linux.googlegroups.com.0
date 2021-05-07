Return-Path: <clang-built-linux+bncBDU5DXUG4MFRBV4O22CAMGQE4HRXT5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 9521A376A09
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 20:30:47 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i102-20020adf90ef0000b029010dfcfc46c0sf3955488wri.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 11:30:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620412247; cv=pass;
        d=google.com; s=arc-20160816;
        b=E90R5VpbtaXgeooK4pSCI9zQccM5DUmSdc8LnFXLyNutrhDH3ajk8HZNps7EDcr3Dh
         /EQS7ToM9T8Si4SHKi0nVGTxZ0juscbxJCMbiVrxwYqnHQ8S9+ORYDwSliwdfRq07NjW
         Y0uIAKJkCiA+oyqMqzmocCkBFrv+oX+Y/g6lMZf3M6+vYRZReusMJ2uNYfFt1k6pFa+9
         gHalrdtmR2Wpx9YmV2t+0qTffTlZqOQYrNCHMZqplyST7P6d/BpkJjMa/38AeeJ6QtT8
         Gw8eaQmeTxS8N22ZM3gVaxuFhcyTlJAqg81TWEqcGfRhm6cO5+HOzLagNuCT3APP0Aov
         SDrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=DFymuaVm8ZyuKBwQMIEVs68W5+vP8bhahCO11jWb9gQ=;
        b=xrI0hHwBStssU8JB4rQ0ikWuRjza0bLzkszdL/eUOirr2wjG2UTyB3VSXJyRxvnk8f
         mt9j0JSXT5opM5u8HcYPkQvbdKWRSZWPdJTqHolk3AmhtNLRNmYm1HR46EhqWPubhRlg
         Z65+agElOsVt97OkFGO63pjKh8Qjj92FnfTZbPzTJYnFvTVZiKfg8b+BWZhOzqJmeUby
         TritaTns78i0XUOoUFL/EuGnR3BzW8o8tu/mHUzNSRb+UcoXVgo/jpyo+qC7ZIt7SZyb
         tHMIUmZCRKx5/xwoFA3s2ejEP4RQaWnUIRJfYM+9ue5fi0pFin6nVsLAQMMgC34SWrUB
         Fy1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DFymuaVm8ZyuKBwQMIEVs68W5+vP8bhahCO11jWb9gQ=;
        b=tLYyDWNcQ0HhPhtiB2IM2zAulQ14b0ndg5zbtfqMkkgDLfJ/k6oiGYXGbghlhOMVYT
         WUu9naRtCOlvJ+kQmM9wGH2EYKpDvztgu1d5JiI92L5d/mVfgYq2g4BxrC7d0eJABlMj
         pP9MCVoVc2XOvFOhn2J72cB8rhqm6OYSOPPKhaUSZPk47Mc1IZjK+TxI+SBt2SPeKMQP
         IrrPA5nYUI41TyH3Z2L1h5JcM/uRUYOwzbhUopaBB7EJmobggJ9KOIKbswKEyeT6G1go
         loY/0h7dcf5KnNE/effVt2uduv90AI1dCj3UtnzG4oW3T951lpGOYEQgZ0vRdC7Yd+lb
         6BlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DFymuaVm8ZyuKBwQMIEVs68W5+vP8bhahCO11jWb9gQ=;
        b=Y4P6zQDmJ6AxHCZIExyFqXOQb8RNTGvd/QX9vnlRvrnWkse7C1AetkM7dLW7xKlWwl
         +otyeMl3bIDX8Ka3BvBXKahO9xZK3SDZdbytbStlY40dUFvhHTFGUIpuUoNW2f9zMZv4
         qUZbKDd5FDf2h7kjGEIuwj03B7ZIl/Prb9ekecpcnaHqfoIM1H9mU+nFDditcOQga2ZE
         G1Bw7Yya/8xm8R4NPFI4beO7t7siEt84etTCTbvwKoaYDJ6XRgR0bHjFmh0mn2py68KF
         IO7zT57KmeziMtV5lC+iLCkGsKVno9azbHsxuPbRcUF0B6xYpSEPnIwcDR/dJobBFNwr
         8Y3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NJ/vQPJdi6+JzC1KmrYYpTzwYeyq5Tg7B0wPcJYUzJOvwX0o3
	dUy1frrFlyPDcfmfZzv2wF4=
X-Google-Smtp-Source: ABdhPJwA7nBtGY9II7RN1uFNco++GLh4TT6P525Gh8wpJz6DlLeLkv+JwWBbme0jJ0Cj+BlrtjXC9g==
X-Received: by 2002:a5d:44cc:: with SMTP id z12mr14412968wrr.114.1620412247353;
        Fri, 07 May 2021 11:30:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6da1:: with SMTP id u1ls1191323wrs.1.gmail; Fri, 07 May
 2021 11:30:46 -0700 (PDT)
X-Received: by 2002:adf:e552:: with SMTP id z18mr13660404wrm.226.1620412246517;
        Fri, 07 May 2021 11:30:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620412246; cv=none;
        d=google.com; s=arc-20160816;
        b=OI0eKCxuNVKUkHfRBY0ueiKOMdIPDol8oDmL7VbRf31zJ+FOylTXPVWcPiQu1CIOIv
         Fi+wFh3RQI81x4ZMjrPjn0lWnmY2ttVaOkcW9lP9KlmSGFCoFJPqvdl9HqVf3ZOM23Kx
         oKhvK11rLsVHfRghNl+iICwvtcDqEgMYARs48rOwClT4CBTPYA6Kryeu0dQnLHAIf+7A
         szUljolzQISj9JqeCXb4CmS5POAFarWyCF+dk/A76djFiP+hnh1ZRA3VdwC5G/GzBxCl
         L+vjGQbKPlSj0IYk66DdbtTcOz/z+ZS5RHbFJTA0LU4lOnG+e5pSp5WhWdJA7GO/47dC
         xtzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=EV6rBz/aiTUdrxM95Igb2END9DpPA4OLH9X2DLqm+dw=;
        b=fcAFaXoRbLtBIOuBUA1X1NuLdFxwE9No4A4aCxuW6Lt66iFHXYF1NFZW8H+WJ5/20V
         K/pgap2Pe6rAo3huQ+58rKMKVUDN5E5jEReB+Nx3RDqwfcpdcuqAwL6H/LzskygMWimr
         vVGFZHMZTEBp1KmYg4og2xiogSFeL0XEZjVzZ0YvYosC30PNMKI7ZWHi37tZW7lCWAPS
         bWV5T6wK5AZ+d9RqUdc970jK4z6rXFNGQE/liG8cLuSrkkg+2OgAymYewjSRJcOhQTkD
         wiMty+Oa2bEZVTx08ZURlNzREOIw4Wu4oE9Dyj7buB92iFXektOE+v8jJkoU7I7DswlY
         WN9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id x11si329982wrn.1.2021.05.07.11.30.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 11:30:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <colin.king@canonical.com>)
	id 1lf5FJ-0002sA-Po; Fri, 07 May 2021 18:30:41 +0000
From: Colin King <colin.king@canonical.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jon Brenner <jbrenner@taosinc.com>,
	linux-iio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] iio: tsl2583: Fix division by a zero lux_val
Date: Fri,  7 May 2021 19:30:41 +0100
Message-Id: <20210507183041.115864-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of colin.king@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

The lux_val returned from tsl2583_get_lux can potentially be zero,
so check for this to avoid a division by zero and an overflowed
gain_trim_val.

Fixes clang scan-build warning:

drivers/iio/light/tsl2583.c:345:40: warning: Either the
condition 'lux_val<0' is redundant or there is division
by zero at line 345. [zerodivcond]

Fixes: ac4f6eee8fe8 ("staging: iio: TAOS tsl258x: Device driver")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/iio/light/tsl2583.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/iio/light/tsl2583.c b/drivers/iio/light/tsl2583.c
index 0f787bfc88fc..c9d8f07a6fcd 100644
--- a/drivers/iio/light/tsl2583.c
+++ b/drivers/iio/light/tsl2583.c
@@ -341,6 +341,14 @@ static int tsl2583_als_calibrate(struct iio_dev *indio_dev)
 		return lux_val;
 	}
 
+	/* Avoid division by zero of lux_value later on */
+	if (lux_val == 0) {
+		dev_err(&chip->client->dev,
+			"%s: lux_val of 0 will produce out of range trim_value\n",
+			__func__);
+		return -ENODATA;
+	}
+
 	gain_trim_val = (unsigned int)(((chip->als_settings.als_cal_target)
 			* chip->als_settings.als_gain_trim) / lux_val);
 	if ((gain_trim_val < 250) || (gain_trim_val > 4000)) {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210507183041.115864-1-colin.king%40canonical.com.
