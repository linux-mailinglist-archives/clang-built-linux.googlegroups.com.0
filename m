Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBKXKYX2QKGQE3RIHUHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F341C5882
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:16:10 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id q5sf1097602wmc.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688170; cv=pass;
        d=google.com; s=arc-20160816;
        b=nfJleArbR3lNO1C54CexhioKwoKw+FWUwB2O4BxJZyaVAUtOsifWjm43jXWeFkan7e
         JfnFmmsIxl+5jF6IOTF3m/77nhiCDJgLT3H9SfKJZ6+p6Ip2Hba9aJivx2ileye3kvnl
         k6gPkGUGzWrE/kDu0cN8upIWSZCVcuPCLfEgXX/51FnNJbf1lkgR+2f0upheqsenueZv
         +QhtBs4p73bhRYu89BroUB8DD0YQF5vkKnKEsLdcFIz7w7I0mASNq16iBlyR4BUheoya
         oQsN1NUqzGnplTelx79iHaDImu4+fYTC3oBvNzQeq0T9Rud1uNjEWC/sZpT12v+1XbFn
         v/Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=osB0wR2JmBciOACKAm75a65CU6XsoOBSs5hovqyQA9I=;
        b=Axd5XPpwPagYoxgio3q82LMOomJdXXEv+tZ66+uxwtrozvIZ9Y9E1KfdVXnhjo6PUS
         IunP1mxg7pUTkuG5z14mcx5z0bPpyIwgUkOEZQuKZm9hXIQqR0Li1/wHKP8UtCjxhRuD
         NgKGbwBKp/egBJ2Yh2TU0/cltxn+8Sm2yT0awE50sCTExQwtlsc0KzxhgKD27UMQJ7HZ
         6lARbKZoA0TKM3sGonFD9hnLBZgnOLT0HYeQR02CuE76C4+dW9m5hXipecxViBPbnqDI
         Xv/yCEKoaWax+xl7dKof95YdszxZPZl6lXJNTD/zeQI0Ge9Z7IyCTEIuDKO6d4zHlMos
         W/8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=osB0wR2JmBciOACKAm75a65CU6XsoOBSs5hovqyQA9I=;
        b=oP0sjdyMK4ArnONi+vnka2yFlG3k9L6VbyHtwOobjnIzmwRalPxU1PxURfX038Aj4u
         dDiR4U5JFYvZLtAKGG9EP3Ijno4xvP8P6+cVTH+4MRTaQMZ/syJRtLeCd8Yu1ZuTwF1y
         iZxDop++pHEj+E4JNqDHVdMhd+Kql5F0n1v7mSkG7Gyno1XRuMh+QETJiC5mn+buMdKR
         h9IpWq/V+5K4aNZYJA5FeZkXs2wDjlRYysvMLPDqEwxJ1mBqTL/jZ8ZGtGbhU/0v4UkD
         YFT/HrPPJ0vNHbj4fRjexitSTFIU9R1SnkR9KsOghOWdwxSEBp5vFydxsoc2lCXsdueC
         Uq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=osB0wR2JmBciOACKAm75a65CU6XsoOBSs5hovqyQA9I=;
        b=BN2ou6WB4s47WcgjeIE8+NFcXNN5VewFrJzTYEClPeAYnm4EeoqBp1ZcVVyxzZiCK/
         tKqNjXzMjwdS3uZGzPFQ65p6KuM4nfqaUm2XFkl5n+aF1mMyLYMsQUxoFvuoIhNdyR2q
         twvFwo9J9zt5MLuqWKQ7emURCqtbD3a49psS0GZ2eXvINwR7eAQq/abk3eD9FOGGmA+E
         fbnQwDaJwWINzrH14+B5RKCU+b2+PK3WulO5oSoQ6xwX196p/SyyyMDg5QDdrP2TQquE
         gAYH11cZ4bg3x0pZvL97HXWCWjHLAvdS6KVvlOUhGaghxhcplWKMHvYTzjzLcBjJShL8
         am0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZydP10EUL3U5A5cBtG+oK6Bim+xwPcQMeJjJdu9oAjYzZos/EW
	2nwb2ZpAS8HZ1hBkPqIilOc=
X-Google-Smtp-Source: APiQypJD1FDi81FQD9IZ8PgUJvIn5qvAesSWz8IdW4cmuYyw/wXGPNv+mxlsnl1GQPryll2wW2Ip0A==
X-Received: by 2002:a1c:e087:: with SMTP id x129mr3875884wmg.127.1588688170168;
        Tue, 05 May 2020 07:16:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:224f:: with SMTP id a15ls4631299wmm.3.gmail; Tue,
 05 May 2020 07:16:09 -0700 (PDT)
X-Received: by 2002:a1c:a344:: with SMTP id m65mr3764191wme.20.1588688169708;
        Tue, 05 May 2020 07:16:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688169; cv=none;
        d=google.com; s=arc-20160816;
        b=cIuh6SAS0f0ZqJ8uQFyGYn+oh3TiYENRO8j4cp2IymDBO+rQfMqURRyjna0D031YPz
         DcHnz+08/lzPcTaqMRUCf0ttyvPt1siFKPdyu6J4d7PzHrOcGHuT4oxLZ/iqjSy32Em6
         8I09ZrqBvnVJzG+f6U/cDg9a6sxQLIVPbTquPgc0vgG9ANTY8IqKTsJ6E78nWXAjR8z7
         xVRDF6G+6oXzvH6iFqUurhrc56AoS2UnrNfx9apChAsU2VV/qrbkos1ukvk0DUjS91Jy
         IgRGbVuSh6diPmLTZ739iZdXg/5jbsxiLaYt+hXW9on5+l7YmlNJjVWSKeYQGxwDUNQ/
         krjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=/p6Cq50mjG7P1gcYRlWDbOTsGtiidAjiZXqdBLbsXTc=;
        b=0T77HEjWz7ZpW8dOdTQ44BRoeX/ouSIoJTL+xZEmckfXBSQcLx36psYEop4/XJFAFq
         VL857WXBzvVTiJIp3kedygdndHYQpE8DQ5bxITLbSCx40IzZMKJLmkXJR7xyK5n0sjkd
         YDNpnxEPUzjBcqiNviXak/SQnqSKgJh2xesSzGleB0smSyVROh8t6o4ZKOrIr7rzCWsP
         e05x78tXHFRUrnudiNZncWOEZYLpf6QJ5AjtY0qOHgnLqS4/9LTiKoGPhh1OBz+5GPd6
         OTUDXhCA0p4HW8wnY1KF5NRngPLfXikxHcEkN5FBYicsowHnISlAptgMqv3hYMCoFOdz
         Ehig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id i16si148428wrq.4.2020.05.05.07.16.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:16:09 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MBV6n-1jQid641ol-00CwN4; Tue, 05 May 2020 16:16:08 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Evan Quan <evan.quan@amd.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Hawking Zhang <Hawking.Zhang@amd.com>,
	Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
	Monk Liu <Monk.Liu@amd.com>,
	Kent Russell <kent.russell@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] amdgpu: fix integer overflow on 32-bit architectures
Date: Tue,  5 May 2020 16:15:59 +0200
Message-Id: <20200505141606.837164-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:AkHFlSmgzp0jc+4llNiW+N+aB5OAyViD48sJ9HgEiVEF6fHsqQ/
 my7xScjJabhxQy51veqRxDGj468ZcU2Y1qyA/vAWUNneRt7mAboEJtEMSf0s2KYcuIhxneJ
 Vvf4HOqoO+vV98lY8TcGZhyq9Jzo8LXqSdQyDu6cAIZQuJO+ec6Z2IyWzTOXqFohOIDYfGl
 XToXSuqrzN3OY0YATcdag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4EQ5IcEC00E=:KlLlWj4vyVL6/3IxXdVlFy
 iRqdSEEX4aDUpKxY6hg6N1dWPK43VxA7TZYttNGVpXIpyxawAHjee1HRvrqb+HzATJWxvxsGD
 Q/Tjvr6CEfoY+1CP7lT1pbzw20DbbUMsJu2ebpvFm5R/ic3GWJKvgGe/p0ofkxkWpOM4OKDIH
 hxJmw+XvBJpM7ne3kn/a+L4dN50kueITd5SmkXEBt7OuVyQ+kKNkasA6WcLsXjk6/ZD/b1214
 I48BAXqy+VTn02bnk7G89hi3P5vo/ZuQFLZU93xeHm9fdvoU4vyLBpzzq0+nwoOTH7i0l/xvO
 FPlrWrrCGmvXr5aRpr9A9pI7fmHP6K2vhghcS1uTrg87fL9hKnLh8g7XysYxqlidjgbjiN83B
 62Dh3AEihexlbYZeA1dpOPvlsk0XlaZen6yD1HW0gTTIyEn/1r1n7eaanrG1fZViKWknI72/f
 qeGhH3uU4RKyP6TZa2qCIDVQ0SARl6hTHvC9P0HvdDA82zVjqRx3AzT10hesKq8x1czlRJeKY
 rSSzoadO5ogqzgCPAwBs7TFv4sS1K2Mc8AysvvqrZpb3QPU7DSX0FYp3NnM4OOcGD6H1ewxjg
 b/KYBsyphRkgKHn7bLGznymg1KPOk2hotz9lzDrV7vKFtEaJ4wDaEabkUagz8JYKeKcdBDL+K
 yU465Q5L24SuHzhfm/8Gjw0ZnrNXvMiNsbikd4MUZG78MHvHvTQEGD0ijwduMmz3Dkz4Mm6aQ
 vlELC3mDFgcUkOQd1ur5gleJJsf4wCHPumesooBI3ccz9dqyU22QpvOc5st9PjX60klfXyMh2
 xDDdQIRdBZ3gdeCaNzJCDgaP6leVG1gnnJlXnYpoke0b6J3R5Q=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Multiplying 1000000000 by four overruns a 'long' variable, as clang
points out:

drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4160:53: error: overflow in expression; result is -294967296 with type 'long' [-Werror,-Winteger-overflow]
                expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L;
                                                                  ^
Make this a 'long long' constant instead.

Fixes: 3f12acc8d6d4 ("drm/amdgpu: put the audio codec into suspend state before gpu reset V3")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
I'm not sure the ktime_get_mono_fast_ns() call is necessary here
either. Is it intentional because ktime_get_ns() doesn't work
during a driver suspend, or just a mistake?
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 6f93af972b0a..2e07e3e6b036 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -4157,7 +4157,7 @@ static int amdgpu_device_suspend_display_audio(struct amdgpu_device *adev)
 		 * the audio controller default autosuspend delay setting.
 		 * 4S used here is guaranteed to cover that.
 		 */
-		expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L;
+		expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4LL;
 
 	while (!pm_runtime_status_suspended(&(p->dev))) {
 		if (!pm_runtime_suspend(&(p->dev)))
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505141606.837164-1-arnd%40arndb.de.
