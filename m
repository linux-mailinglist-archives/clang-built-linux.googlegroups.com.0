Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5PKQGEAMGQET457M6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E443D8093
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:07:02 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id k24-20020a6bef180000b02904a03acf5d82sf149979ioh.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:07:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420021; cv=pass;
        d=google.com; s=arc-20160816;
        b=VzUsR0FpZKbktjVNJ4KJ/WO3seTtS18bn/INu5LkkdLH9Bcaf0aj1ec/+xKvzpAafb
         rNUjxcRZTsLLAu+MKzUQnYjRef7rXgfeyhKV6QRpKUB0IxhjdS+MZucvaMizpQkWLgx5
         AJdL9bb+C2xxy1+ak7o9yKk9pyZil0iGKdBVcG2O7ap7QayO+IUCj0CH7XQ85z8xuEjK
         B6JwSH2Rmi6tKIvmkwgRBeDbx7GvVt37QnoMZJBKixRqZf1uQXEx57G8yoezk4f3ORbO
         bdh5w/kG+ir2rsMeiAVMhTOD8+qNPrs8oGNmnGm6e7nhsM6Cqb6CbUXuhuNCpF9ygUap
         34xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oN0+8mQ8s53YgUMMvgt+Ew7EZULTBZdNlbxD+4D25DE=;
        b=TpiHr9GvdbULCF3hHKSjCsCege/gmiKFDXbykOeAwyGQzOdBu81lUNWdwTaGUPHnET
         mP9zkSOi+/3D0W01UaHH5W1b3SBpXUPSiESMi+wGtTbpzp4zRFurcN6UiTwvC5ed1as4
         hGJtSLS5o0jovCewYGJJ3Xk0w1jnhQcaBIcaXBLZQYLbzDNyfwXMw52CCzM0uLuX1AS3
         +4x3Uh2toxu7FrcC1h8kJV+W1I3+rxZmOVG7oUfLArPni+ogg08h1fsPWEegpBPMLMl1
         MssO5nqGHOHCbNEU+jZpsEz0Xe24PXLjMrLC6iRS7Yhsfru7rGEMTa5wzZLsL74ZNsKQ
         WDxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VLdolfVH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oN0+8mQ8s53YgUMMvgt+Ew7EZULTBZdNlbxD+4D25DE=;
        b=OCHXffFLQKwbN1bd2snvmR7gbibbIjzRIx2ssKdgNBKPfCA6iCGpToKMspuz0cypON
         mQup6w3aX4Qma0kt0YrkJisrbL2IxaYxzGZ2Qb2ENx8h93gsvRDRwYBlY3D2YD5VH8Fj
         GYVRku0/cV+dDiQJZIwq90jCsKUllTR5PTg0BwGKIQcAwrUg57fw608q+gPgvNlBPjvB
         +zxRctXxBAb2awlmqOFTB6BIwUaZIYadDJZxUXOxmahlT9Uv2Mebuu3dk/2J36yNgYG0
         7kwg8+u3w9OK05PVOzX62+b2K3fCseTwyunlmhFSR1xLw+saO7IB+VGdlk1hYbgaM4IP
         SJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oN0+8mQ8s53YgUMMvgt+Ew7EZULTBZdNlbxD+4D25DE=;
        b=UaIeQ5nu046K/YmT1Ez//3Fs/Ugm9f88Gp91OuOoh2mSABdnJ+RrQVzixZfo+WlkOQ
         RmrvvV9iGUuoG1711f4l57LEGY5kQkZVkqDiipx9jL9xJZl0gviiUgcsiRG8WkFvc3/G
         gGcUtDKCrQnnAEBB0oaN/2kALvb7lEOx8292M/QaErlM2H3W7KPdwYoJO6twwG2r/bQ7
         umGheWEEcq2JqLhCFLp2PHHDrNrM8K4bI87FtJ5XMgQYUQDu9NC3a9rlxp/14sVd3a5g
         3nys/xtcTMjW84Zj1bmasJItyg278jvvcKf2CWy5fMj+KYaRgn98Oc9eXWd+E99UPP8+
         aKbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334H50ZJB7qaVxon84W9J9nYHdz92WseZ/8c8KvWy9H7lTLDjCY
	zsuRf9toWHM6xXh7v67OZJA=
X-Google-Smtp-Source: ABdhPJwDsXQGmryo2jWeo3YL6fr9j0SJlWBdahnMRFDZTOHv3egAYdjSNLgTLONEESniziP7UeFjMA==
X-Received: by 2002:a6b:600f:: with SMTP id r15mr20977911iog.2.1627420021751;
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1582:: with SMTP id m2ls396314ilu.11.gmail; Tue, 27
 Jul 2021 14:07:01 -0700 (PDT)
X-Received: by 2002:a05:6e02:dc8:: with SMTP id l8mr18129599ilj.5.1627420021309;
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420021; cv=none;
        d=google.com; s=arc-20160816;
        b=SqtSOYb2v3E0S6bHAjDkdF1ku+40DhPBCpKTEd8Uro8BASoAmdlJbWXdg9txnfuold
         iURY39OgXx/UskU74VxS2EmHCWzbxmUKDZljUO/1rfcm2tipcf4t4qC3OAgKRY9B6oVD
         4+PVjl1X5pAAPtLmLg1PVjhO5C3GnIJ/584rAcvoiJxrKzQ7tFDmoJD8kGWFhWk9hddd
         tll1ZsuHs0ld0gKC9oZgSGNFC+JdzY08qkn6kSkqvWWjXOO2Sjeb/EuXjy9D4NjRW5Ru
         NML5pDpW7CEQFLKm0B5BfYNenuDZ70Zqot+5NrJGVTlD1/aLqbZMX2UT7y5WVAqpRALC
         9D9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RRl4QwGFVHrrGOIPdMRW7d1sxZ/z0xnxJ3QgfuV7q+Y=;
        b=wq2nvUchqvEaHYADu8vfDpemis/OUr6OpxARQ89smZCgLDLwio2juCw/xvjeKJma/I
         iAS1pnobFLuE//ISES7OKFpzmsFlHbJ96T0oSlPlODxnquXoDPHOTpFVX3LxvpJV50vu
         QIrFXIbs/gOFdK2dWjaxHjAUQs5Dl93ewNElOJ9zYXlUADEKYfM+j+UcsSuXdDD/zyJF
         JhmpzI8ObEDWJgca3RnOGvVV9e4qY43D2HQ0niGa5Vb6/s48rn0IwV2aJl1glvXpzWq4
         fQq2pEbr/sIcPHEcjG/hC1M5czfGA2LssGCn3vphiqLVBckUSl0ZlLxSq0RXMQi6qMEO
         jtUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VLdolfVH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id e12si282272ile.4.2021.07.27.14.07.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id q2so1823681plr.11
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:07:01 -0700 (PDT)
X-Received: by 2002:a17:90b:1097:: with SMTP id gj23mr24623197pjb.65.1627420020773;
        Tue, 27 Jul 2021 14:07:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k4sm1283492pgh.9.2021.07.27.14.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
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
Subject: [PATCH 53/64] HID: roccat: Use struct_group() to zero kone_mouse_event
Date: Tue, 27 Jul 2021 13:58:44 -0700
Message-Id: <20210727205855.411487-54-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1730; h=from:subject; bh=EUTv4O0nvngYWbdXtF9deGR2fwqq+6xUthh2+Rv4aLw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOMI/KVhJIquCmbVDokB41QtN0+bK1f1n8H1BjO /vI3XCGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjAAKCRCJcvTf3G3AJigBD/ 4xOpohWQjjZHlbRQQB4Xc96JEF9UrR/87ufDJ/LQCR9f7bpU5HN4prxvGPl+Gh14S3nTWDhs7tQLV8 lgvttBveo3P3wp1AEgc84pleIWnY19RV8DcusmvreDhDG62N4MMW91V+yoqBuqB34xAxKaVJ0z6h4X tMH1NjPo77yLscB15GrJ4m3R/aS/iaccGcVUCwTR/CdCDoI/vLaImBCCH5YwQovtUmT1k04HUparAv jTs0fwcc1LfmJGkpT/YOIJnJ2shh0qAzEBKxdHgAIYE1pJJ59NQ6IfNzbMcQzEeapQ0p+kJRjODNpd oBpl+VAcjcyG71c3NBYs64mHgmd7xQgqxrKHeTTPI73krFkwv0sjaz1tYf6t3wGr+MJBryeUc/XLef bBUhQQ+U2nmjxMpH5biZuX8R5fJd8K2A6iOdS4OCIgCexMIqdOf47mtYSGy6w/OqX0D0HulkNM6Ak5 /kO3TY/+btKVuq9e6QW5DQLMbCfCbRrCJHmWxOFI5GVH3bchbtyGtVnd5VCwHQJhG28UCjTcKMLd10 3FKyVUcll/fy3asrDwz923cHSGawsRdwuUUF+B/1A93hUfh8ZPHnbv0X2Rh95SGmSNd9p793a13Ftn 6BVstROxT8kaLKdvZkdDDu6WqpqQxHglko/wXhuVc2rwuMX8jO3UGuzQBK9A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VLdolfVH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

Add struct_group() to mark region of struct kone_mouse_event that should
be initialized to zero.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/hid/hid-roccat-kone.c |  2 +-
 drivers/hid/hid-roccat-kone.h | 12 +++++++-----
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/hid/hid-roccat-kone.c b/drivers/hid/hid-roccat-kone.c
index 1ca64481145e..ea17abc7ad52 100644
--- a/drivers/hid/hid-roccat-kone.c
+++ b/drivers/hid/hid-roccat-kone.c
@@ -857,7 +857,7 @@ static int kone_raw_event(struct hid_device *hdev, struct hid_report *report,
 		memcpy(&kone->last_mouse_event, event,
 				sizeof(struct kone_mouse_event));
 	else
-		memset(&event->tilt, 0, 5);
+		memset(&event->wipe, 0, sizeof(event->wipe));
 
 	kone_keep_values_up_to_date(kone, event);
 
diff --git a/drivers/hid/hid-roccat-kone.h b/drivers/hid/hid-roccat-kone.h
index 4a1a9cb76b08..65c800e3addc 100644
--- a/drivers/hid/hid-roccat-kone.h
+++ b/drivers/hid/hid-roccat-kone.h
@@ -152,11 +152,13 @@ struct kone_mouse_event {
 	uint16_t x;
 	uint16_t y;
 	uint8_t wheel; /* up = 1, down = -1 */
-	uint8_t tilt; /* right = 1, left = -1 */
-	uint8_t unknown;
-	uint8_t event;
-	uint8_t value; /* press = 0, release = 1 */
-	uint8_t macro_key; /* 0 to 8 */
+	struct_group(wipe,
+		uint8_t tilt; /* right = 1, left = -1 */
+		uint8_t unknown;
+		uint8_t event;
+		uint8_t value; /* press = 0, release = 1 */
+		uint8_t macro_key; /* 0 to 8 */
+	);
 } __attribute__ ((__packed__));
 
 enum kone_mouse_events {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-54-keescook%40chromium.org.
