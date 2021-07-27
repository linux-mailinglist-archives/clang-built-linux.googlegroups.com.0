Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB47YQGEAMGQE752OXUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C9F3D81DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:36:53 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id w8-20020a927b080000b02901f9cee02769sf336873ilc.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:36:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627421812; cv=pass;
        d=google.com; s=arc-20160816;
        b=X5KoILv9/QlLihZaOwYzDl4f9xxqTFy+tyFCr4QVRgPz/hHs9QkISqmihHOjUiL234
         K6WOFVh6wOO6G/bEz2Tz4Wdxua8kN0hCj6NBV8F0ys4V5O2838busTiP19X6ZotrMPQG
         LsZTdIuc9zPkUTVNhE+7XLr49lI6kQ/o4Q6rNKb8d5UxHzp3wdjbht76q+zXAhQ0vmlB
         rIngmiM8aSHqNYFPmX1AdJwDiOtUrzbRLzzMoFAdVulYjSwAUh7CqEFybqDciao89rvW
         ipWb41Us/9s61e9PUV414UgJzGqbqtzsXWI3atA7CfkgFYXXl/BnKGvkyX7PTilix8OK
         lpuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RTAvg+Y5UkuRc1OYWDuPC2D6KcARawQGd44z9eeX+p4=;
        b=hANbkYW26easY+XvvXTi7tXNXP0QSoKcBNy3EUkW3DTvG7LVscArOsHHrCOMJP1//h
         s7FlJZBokYVqsgAHddM0qveHeuAfeW/HkpsLFv7ROKkL7dAbr0huVCZ3wHXlrHHCiacm
         nYzMY3KdioarCx131wXZ/hitW/xvV/HClGwO+P3irIjtcoCHV43rnvJF2UEtUvcKqQSS
         qzste3jGmfQXezMO3qN8zSFeYPaSQxhnAKHrCJJXNRcsbwBAOGPlwii5NgWc4ggq0VDo
         t6VzjOBHenVX5+80RogPtlu3ZHmhUlt5pJSsBpvhEk9o0KYwhYbNgnF+gYrWmZkaiwMS
         z/Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NTFTSGna;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RTAvg+Y5UkuRc1OYWDuPC2D6KcARawQGd44z9eeX+p4=;
        b=jhxMy2KmQZO/fwHgzOPNa51gLZhrkUAV3EpZnWTVMYUIyfCvsPehxNvHqzPMUBTh/Q
         Tw0txysLZyscdA9IK1Ii5L87FoIBnEaKW7aMoW0lBhJRKlhvexhBy4Xbkzs/pBfh42gS
         L3U2XY8ftGo3jYMLlF/6M4myntXsjRrrEB/6ypqYfwlnuka5TEioVOja0jqQnhS3mR2w
         wsWiqz1C9Rgdut5ThLroOfZfwLc0W3q2LHBI78+jFM0ABmXN7bijtfd3JYwOesPtIqcL
         dZjkoe9mFTdRXjMCDcdI0a8f41AnekUR4BdNBJJcHMMGFTgwf7gxeAqAzyqHxZ3o8O7d
         oScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RTAvg+Y5UkuRc1OYWDuPC2D6KcARawQGd44z9eeX+p4=;
        b=TQo6ztukUmIZ0jv7Pzn35d3URcpD7o2ciEAGpw12XKX4gR0gUbfHJGTgYrnRrulxfy
         jFAyvfcNc3/NA7qVQwIcs4xPsms9ZareszBtcDU2R0qfcJty0z1TDks2ufGOUGANTJ0o
         JukN9mijdI1wH3CPP/9LVC/vYboYvFMi7AG5YbmB5IECCP8Gh8/HTldbGZCUbp+3fxzi
         QWuUs3vKANjyKs83z+Mfd2bomrhqvuHy+g2m/YEDQOfHJV/Z4xCbLBPpnqieFZhmVSJ+
         airIe1eghUX7ySsvgnMs039xE771SU+gGwZucKAX+LJjsICHUA0+TuHcrtDCQlpL02Mc
         Z1bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VdWRcrd1hT5v5Wj64rKZgC9uSBSDAFs2yAnapvsRhMrtLkLew
	6Isoa9M2zHyKRRIdhhlKw+Q=
X-Google-Smtp-Source: ABdhPJwZafz++v8yx8o/SzC/xgCCRoSwrKasdjCvBd/nqC2qXfgzntGshe1NVesJwI3ZEuja10Ws3g==
X-Received: by 2002:a5d:878d:: with SMTP id f13mr6797638ion.83.1627421811947;
        Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:17cb:: with SMTP id z11ls45693iox.0.gmail; Tue, 27
 Jul 2021 14:36:51 -0700 (PDT)
X-Received: by 2002:a5e:d905:: with SMTP id n5mr16095431iop.136.1627421811618;
        Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627421811; cv=none;
        d=google.com; s=arc-20160816;
        b=I+XH1qxiCqc+KdcvkU7rLsA8BPUkA41+mwluOENYv8NBjX2Zy3sXsWyMELnfIzFR2V
         hw99pkynuOTSNF3SKsaYBrI9qNWCU4xvLqLCUVd+7oHT2RB8aGJMP0zbusCbJWbYKgsp
         hORCP1eRWA4tMcAXD2HYlcgTRAkH40+k92q6AP9g2ThK+NOebkkrtu5oItMbXb08igrG
         S9Z0DXM4vxVexDuVm5EVrQqE3LWJNALL7hRRRxSKCNSCLNx0pofS8VU1HBtrw8a9TWuv
         FTqwessNFuYCkPEJ+jKD8kCs0NFL63QKu2ljllScePa7d9TS69birJq5sBRIyG1mXLLv
         2cHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4BnfRKheoEyJ1stoqG1udFT4VTgOpqL9vmyJJWgrwhQ=;
        b=Wu73MtRjWrBuDCU3nfdxXx24r1ENlF7XFfOxHHA53ECtF3V4qu76LyT2/XvQfNuD8H
         Qtqo6a7suTJf1+HxM1EmPyKqsPnBJgZjD+uBnIGkw44JG2pU5QrlCaIU3GBscEz3Vor3
         520KOKqKTeTpA9UVymA0zs3kxJncwvzdSe9FxU421QMUOX/Ge8xUjhZ5gGGOLlPYWNR2
         eWMLtY769Y1Q0bZ6n3SW7wMZw1y5BE9qxZSjOrWoiOJqa03lv/h31gcFZNUhRSp3i6Dm
         qQ88HnpR/koESnk6gfjDcU2CmcvK6h8HuMYbtpmkef817bAGBYta6efmZPUIcVs/VLXx
         DFUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NTFTSGna;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id e12si286983ile.4.2021.07.27.14.36.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id a4-20020a17090aa504b0290176a0d2b67aso6803258pjq.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
X-Received: by 2002:a63:154d:: with SMTP id 13mr214806pgv.116.1627421811222;
        Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z9sm4890526pfa.2.2021.07.27.14.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:36:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 48/64] drbd: Use struct_group() to zero algs
Date: Tue, 27 Jul 2021 13:58:39 -0700
Message-Id: <20210727205855.411487-49-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2322; h=from:subject; bh=1syui6IaJX/LeKhpA35yXKLKiDQJbdN3KjOA72sb0yw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOL7jOa6t9HnTRkat/yBLQ7dAwkDK4D28V8dSKs BckHWDOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziwAKCRCJcvTf3G3AJjzYD/ 4zCOLV8aaPBAT/bUiOjvDCTgLgraBRaR3pGWcZHMGJANYM2EkJwwuDhYBGkXFsg/LT9+C0FBP8Y/Zc 5zPMr5Ck8KK1vkPuvxC1XxLeWJhbO7Z9IV0T96RT6vedIbwG/X0HJaMaOlT+1avad2HTRLXhAUzKf9 gxK4g4ZAvz/FXSOFqfOu4JDUZkbvgdqXKTRl1Ks3V/KGyA9ON1fkJKujv9YXdTGyFFudWFZewLc3BP DZPR81LSq8W/amm31XbR+stxT3RkRdzalx01+vXbX9LJoiC0gu7l/6U4b5J/VpCStcDJGVQl8FIhTi V+1401vurSluzntSGK22z+Cm1SERyXlJmS441MJeAecPsqSCnwghfDjdjciI3UKJWO/K9Qg++zKSTX Xg46C2C1CDENzVc/BEXLX4bRTM4AwyujZVJ2hRQ7bxl9SnluGtBytRpsMg8Msnryyvs3X8cmlQ9bUl XRrL69gqQC1H0bptqlRAOSNMxXAHdZVeI6VwFfJlkcw9nlt77JLmR4IN0CztbMsOydMgnp7kFIyOow V3/czlAK48y8FIgtBvWH5SaTNQHjO8KDpB/sU7DTiAlRVmRb+H9uM3KcdDUwf+cI08Yry5bLkSot5g ggAqgBoLiqeU0j1EpwD4W48NHRYgozq2B6FyI6ymPjBsMY1DKp1cRWhDZRww==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NTFTSGna;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add a struct_group() for the algs so that memset() can correctly reason
about the size.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/block/drbd/drbd_main.c     | 3 ++-
 drivers/block/drbd/drbd_protocol.h | 6 ++++--
 drivers/block/drbd/drbd_receiver.c | 3 ++-
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/block/drbd/drbd_main.c b/drivers/block/drbd/drbd_main.c
index 55234a558e98..b824679cfcb2 100644
--- a/drivers/block/drbd/drbd_main.c
+++ b/drivers/block/drbd/drbd_main.c
@@ -729,7 +729,8 @@ int drbd_send_sync_param(struct drbd_peer_device *peer_device)
 	cmd = apv >= 89 ? P_SYNC_PARAM89 : P_SYNC_PARAM;
 
 	/* initialize verify_alg and csums_alg */
-	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
+	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
+	memset(&p->algs, 0, sizeof(p->algs));
 
 	if (get_ldev(peer_device->device)) {
 		dc = rcu_dereference(peer_device->device->ldev->disk_conf);
diff --git a/drivers/block/drbd/drbd_protocol.h b/drivers/block/drbd/drbd_protocol.h
index dea59c92ecc1..a882b65ab5d2 100644
--- a/drivers/block/drbd/drbd_protocol.h
+++ b/drivers/block/drbd/drbd_protocol.h
@@ -283,8 +283,10 @@ struct p_rs_param_89 {
 
 struct p_rs_param_95 {
 	u32 resync_rate;
-	char verify_alg[SHARED_SECRET_MAX];
-	char csums_alg[SHARED_SECRET_MAX];
+	struct_group(algs,
+		char verify_alg[SHARED_SECRET_MAX];
+		char csums_alg[SHARED_SECRET_MAX];
+	);
 	u32 c_plan_ahead;
 	u32 c_delay_target;
 	u32 c_fill_target;
diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
index 1f740e42e457..6df2539e215b 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -3921,7 +3921,8 @@ static int receive_SyncParam(struct drbd_connection *connection, struct packet_i
 
 	/* initialize verify_alg and csums_alg */
 	p = pi->data;
-	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
+	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
+	memset(&p->algs, 0, sizeof(p->algs));
 
 	err = drbd_recv_all(peer_device->connection, p, header_size);
 	if (err)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-49-keescook%40chromium.org.
