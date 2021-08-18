Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBP6K6KEAMGQEJT3ZEZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id D67863EFB98
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:24 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id f5-20020ab024050000b02902ab59347e03sf365112uan.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267264; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJzRHoW0DjubmPRcF9mX4MIA/Vgl8Kh2HGikkLYTg5KXUmUyhYnK9eSq5TZyiW0T3m
         ClDQmS9DcUlsnH62GvagdbYPhK+jfc+Lc4j2ez4PS2zfnmamsryZuUT6pBFzI/f1YgN+
         x5aJSoyZ+MfOh57RQ1HY8AewvUSqUnXuHGZ7/K5x86j36E1e+p9uHK+wt/bJaz8mPIqN
         uJSGL8s3NYZL6CnhnB1Q/9/7ityIqlARFlWkphEHkqvEf7HJgYzOyQTjrqqwDCWn9rG7
         li4WFH1M9+fhT95mRBtXSKiZz+E37p2uvPVzDXz/Q4ok0ByOJ99kI6UCm2Zdnhf177iS
         kqHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m2DWRwq6dpzinOHzDy2DvfRNCjKaw9xV91NjQHhRDcU=;
        b=VxI3p/k8Pq3heU7/00kLs9Dq2JHhx/xlUBc76n9LCYnAM6KhE/5kk/q3XVUKa1oMAe
         NafeV/AHV51yiUr7kgAlqRCFRoiUaYefjPGqVsT+SkE5+2/3/i49nG6Men4E5py6LSBo
         R56Gbn2hOxKYQeZkZl4oZ7ieYvjEhPBYkeYMzyGB+rWUXaNoWNqmHzJvjNsDOxrWqgdW
         nJ8UY072vrmKqIsSi0Y76UjUR/GC0SSAjq9YIjRiul+mDTkcoEV25mZuhEBdUR/g6eOw
         ibFGd2zyN5YY4ZLcXTAioG8kCp/vztKNHdEL0p7PUgDR/Hph891m508nW2YxjuCX5kv9
         v1fQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="K5/QOCQ1";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2DWRwq6dpzinOHzDy2DvfRNCjKaw9xV91NjQHhRDcU=;
        b=UjQZnCUiRrCIAJhPE1wy/SrcjdN/n7Am4aNxoj7rsvYPQ4izmgZBjLiPTp9cXDLoot
         v7nNoy/RmfPAUW2x7Bog6it9scU3IuG/pFjhnsujrZXyX/Zn0CCkCpHeC1jqRGXQg7Nc
         79RZRoVF925ymeQBE8j6ghzt6TaQIBuE0HmNiX/c1Q1IVkm19GuJP97Z5IZoDyA7mq2U
         oLXioz5swdbWKkeYkHvTPz1i3lEy8Umx8d3pewX5JIvY5tGDtdKtQa+A4ynsrEAv0B+1
         HpzJvQKsL6k8u6SL+KJvUTwPPbUcaIKx9iOxOMpXaQAY4txPFNbDho10Mij61nNdx20J
         Rn/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2DWRwq6dpzinOHzDy2DvfRNCjKaw9xV91NjQHhRDcU=;
        b=C4gcc/ikb/dE7eCB7dzUQf3G8qrlf2PZYDjtiezkIZVcj8RRicQSRjMSoOhzK1Cz8c
         bcOr0Qxl8znl6Xvdf6LckeDdN/zUAzy7yAmILjwii8SxSDPerwcVR50fJfbZfco9blGX
         8XvL8NywjT+iQG+s1NxbUpzruoRaPvl+W8ifnFxBdDUjhTGEu6cY7H3YXO4edav20BEp
         p9c1IhDu4bt7C6+N9q1vhuezsIwvLfuDlEiWECIbFpN0JPL0uaVlCOF9hqm30Gyge5y1
         FhVzJMQoLqJviXOE8k12A1JcCbtMsQmQL2L7RCGhhtMiPtVs7HNh7R2nOkJu0DjlkC/L
         6w/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cqICPoH2nnM8KN9Vm0cSaI3b+aHRKGEqU0f5TJXDIEuk9zWNw
	XwlSql3bbZBHTXMhCbYeJD4=
X-Google-Smtp-Source: ABdhPJxUGQfqP731mJAIngVEDx1JyMKBUPiGxlnMV7U18IDtcvNNMte55BCk/O0LmZl9femNsgigPg==
X-Received: by 2002:a67:ec98:: with SMTP id h24mr6326063vsp.10.1629267263954;
        Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls109385uac.2.gmail; Tue, 17 Aug
 2021 23:14:23 -0700 (PDT)
X-Received: by 2002:ab0:1e08:: with SMTP id m8mr5220833uak.140.1629267263461;
        Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267263; cv=none;
        d=google.com; s=arc-20160816;
        b=jsItFEq+Kh6EszUyJEbCsgeUMe8UaD2n2lQmmMtIJP6JGyc9OSFVBN/CHMhX3TiFxB
         Yc3fLrOWh7/763e0DU+vqRQ7Fv1R0bQV0P9KqOUmYKYfLrWRC3E9Ogo31PU92QmpHDJK
         tlCXECwbHFlLPXQhygMxKAK9bozZyRa+T1PqgcbnUCaPn63pKP6icnQ9zmpNgvbjUcVm
         8XT+77O3YRTQ/XHJTb9yCj9Ze7mK9XybZMXM9NpWfUnJJ1k0V+y6+iHQmUMZysFxdyYn
         /O0BKRZsfF6mKiwLzCXkN9wanntCUxnVMXEWYgIeFHT0Mnw1KijYzJ8yAbrVSFTxEplT
         qb7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OUj8oRrB7MxugyxrrPjBU6cYuiAw0IG2BHh9L0frR4M=;
        b=I1t9aZW4LtUXibm2McAjY+thPPORdkV7N22Z8BzJgWaZHauxuEnYPF4ekOGUIH5jGf
         cO5BJ6a3RGAcwCoy9Vpnv+4oFejY3cKedbaEz+7kox2FnX3wd6Daw5e75cxkALmqFf9D
         y2IbiCirrPEa/6b6DyR6kS8wFr88pfJEDcQRRDq1Xhmn1GYe0oUBF2LLSZk6iPOchDkr
         mQTlgRZ/BuRzGL/KJJb0mG4mxC8kOGK/IAVX797QIpo4rw3ClYvGwJ2nriMcE2xLIJea
         mnHM/3Dnc4AQt1y/juy/5PxwMV3srysR1fJOeIf4hiusNAMu1Ao+Aw6qNOU3KZcQ37Nr
         jiSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="K5/QOCQ1";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id x4si283565vso.2.2021.08.17.23.14.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id c17so1170693plz.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
X-Received: by 2002:a17:90a:ad07:: with SMTP id r7mr7764155pjq.110.1629267263131;
        Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w3sm4782286pfn.96.2021.08.17.23.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Lars Ellenberg <lars.ellenberg@linbit.com>,
	Jens Axboe <axboe@kernel.dk>,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 51/63] drbd: Use struct_group() to zero algs
Date: Tue, 17 Aug 2021 23:05:21 -0700
Message-Id: <20210818060533.3569517-52-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2518; h=from:subject; bh=Q2Uw9RXFjMIXKo2IteRobBuJ9t0Fke5gpQvhXOFkzbw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMpAyrkrjCd9Sudd2DfvVM313Dv4J16Pprur7BE R2yLw5iJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKQAKCRCJcvTf3G3AJllsD/ wMjgK1D0usgaVPmcG7ap73L0KQ/QF2TmwlTkN7ZYJNbPcOUTgH5qCBiL4kXD4qvPRMMk0z6M1MOXdD ad40Qjj391s1LOtbrXKzB6J0ACE6yMl0izT0iLKpKz+DHNtX6SXR4SCElIRw7Oe+D3OKvp8ncq6h/L m13yHC4gKfbb79IqU0KWkeB5qij4Ou7trqxTVeSvJLXgH5H6vMpMIrwWdj1jMXJgy2G8nUmOkFIh0c 0ivZjFBnwVNyQGo2OJAUvyz7W+qHXTnM5y/SfhabHHCHfGMD1LGZjB64ItBJUK+pcOykcIH49b9FnO h5fpUcqYNY7PRCXpb3rxN6MHOUY3PGy+gXlfy1Vx3CvXI1nI+OvBPvO8wi/whnPXp+BTOePiw4Blh+ 8bAGX27nZlzfW1jE3Y0VKrvKEieIn/i0YS3XfaCmMPn2OjPgaFjZMQTtKm9F61UAlxVlnSXOyRWiAa m+Binjs5N0XDni6qQxE+PwYb4X6+L5pWbOSWdiBOGY85wCWrqAF6DrTw4mXIB61ww03FHpMrwNH9ra 8yuAKhS3W2V+UbAd/ToTq0/JvDMwmWZGu/z6EIbBy/wAWPT3+RGq1gfMcM6HmInqPQk3SfLeIsEZHe jsEogyBmIWFi3hcxJwpocYVxG6KAlMgJp3sy7ctAUBzS5sy3VSG31B8l/x7Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="K5/QOCQ1";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e
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

Cc: Philipp Reisner <philipp.reisner@linbit.com>
Cc: Lars Ellenberg <lars.ellenberg@linbit.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: drbd-dev@lists.linbit.com
Cc: linux-block@vger.kernel.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-52-keescook%40chromium.org.
