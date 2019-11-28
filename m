Return-Path: <clang-built-linux+bncBCSOLHMX7UOBBB4E7XXAKGQELF2CECY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E3110C2EE
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Nov 2019 04:42:01 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id r9sf4543224qtc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Nov 2019 19:42:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574912520; cv=pass;
        d=google.com; s=arc-20160816;
        b=uY5701VG9z7JH4rrxpdHMQZYw9j8FZvHMdkTzLA4DX4BlSFiDUwtqMkjTTZGgUpXJj
         uWobYBT86z99PTjkVpE5tn83SjjyrHg2pxOReu3GmB46FjwYwzsQ/TZkihm38EZ2zBod
         VvFAyD8YA9byCCAgjPfwRHr/qh9JVG4T77b7KFulpoJfm8m6rRRaYvnUIihuoJecZZ37
         3EsQcMjoTWD6s9lA4ae9GBGbbZTtaafRUnxJylquTXTYqn7RdCW2r2HE6tUAlc9ICpmP
         klhDOE6+OTn1OOwE3I+nXis6J6PYQyzbGWMwdNCt6wbfs4617eMYurzXCbBJe9DaCxMz
         uvrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=7sLlSHgN0RnXU+8+09FkwfkwU4MJD9UaBCEbZuS1Hwg=;
        b=iVRRWa9IQn9xvghsJiaN34lBxqGEIrY9HjqV7kZQsFh01LId5XIcbOhxRWbw6LYXSD
         FrPN1w4wPtFxV0P9Nyx5Y5ut8amRTBRrxyXWPPh35w4Srk8NGebaEhZGHqeNwBDdlA/5
         dlhcN5bdlHHZZC0NExgX8pZ84TvRxyiNbXhSwpFLi9rTvQQQmSCfaq8gKM5XDZg4cJFH
         exp9GFxIo0v1z1NyHwIlgKG+JmW8tYtisMPl3R5koRlfCYtHDxq7TuWS94eAMPHM+8y8
         e/5VFb8UsB0dXdrLNAhHvnCTvcPYnQpmfzP0iiCO0XwDRftwatqJ1qMByPaPZPtpbNVE
         wIsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ETU15TiA;
       spf=pass (google.com: domain of pihsun@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=pihsun@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7sLlSHgN0RnXU+8+09FkwfkwU4MJD9UaBCEbZuS1Hwg=;
        b=PQttb21enjvHlKhjdpaOckmrgXG1epoRUczI/59ZYyhXLFb3dc3NHj1ZqY7r/mPoAH
         JNaKOHzkvI1kfa9tAmwjx03Z3gtmRkZ6aXBssAfQVApMxY3XmIM/yPHsMzUxjOrVUNjX
         cLxc4YalBH7qO1WoBJaLU5usWgXBOsGHAjVwMBmHUprQeqGp0C7lWkGl2LbuCkNkqBg4
         rpP1ybD+itraTNaAv9CONUXYhh9+KCeLSJ6P6qLhvWfn90JZ7gsV6k08pfBbHHj7Pw34
         8zgXYbZQlda+NAuIf+OMO+OtIn62Sg/mL8IxZLmQ5Xk+6k2rIOID7vrOSY9h2hlj7b5l
         RSUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7sLlSHgN0RnXU+8+09FkwfkwU4MJD9UaBCEbZuS1Hwg=;
        b=NGoX1biukmu8tQU4fwWVWGxS+fzoU6UEon1B8/7TjtkNJW6qLI/CToxCdMHcQJCGjC
         RtJvw5aKmExSpKMO30VzU/rn4yqGeFmNTH85aMcaKOEB0Q29SJBnJKNc9JRHAEhZIeqx
         xD6UYJagi8VdLH77IXDx5AN0hny3nqkzmXavA0qTzn3gECPZtghvCNwqIsvLAMHFGL3V
         FnCihrK2BgXsKh//v4kwg9Ghe68e/Esso6lK8jdiHEc2jM3SSs32xZc+YItdMNuPs9SV
         Ou52SbKUgovnEKG7V+S3Y0thhM8adN76iHfdTeU1Bvffga9E9xTZNJElou0r8bnd18dp
         HrTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUGHISD0dOkWxSmVlO95bcrvx1QAY8mSLkeoCAo/TOOSd/yXZBA
	uTSH5v73YRXKhZbGOABbGww=
X-Google-Smtp-Source: APXvYqxTGtw+OUyYcDBrGU678biyYdIzE0QFW7uOBHi2BGzk1EMpvA4UHlwe5w7BPk4w4znwVUa0sA==
X-Received: by 2002:a37:a48d:: with SMTP id n135mr4767610qke.336.1574912519972;
        Wed, 27 Nov 2019 19:41:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1b8d:: with SMTP id z13ls850802qtj.16.gmail; Wed, 27 Nov
 2019 19:41:59 -0800 (PST)
X-Received: by 2002:ac8:1828:: with SMTP id q37mr3409076qtj.13.1574912519673;
        Wed, 27 Nov 2019 19:41:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574912519; cv=none;
        d=google.com; s=arc-20160816;
        b=AL2BxBf6rtWHd5FDQ0kYS4ttW67pjwyUwekpLZVGMuKxHZdNEQzyGc2VcLlWBSy14T
         cH+lwaHIr2SxCj80nqRe42XKW8NCW0DnbE4R4Ymo53TY4fKe+BcGdg0bYGkM7M6jHu7Y
         8eS2mhGiol2bRttgBVjB38DvFLz1hEW3CKaOT92+Kgko9dU5bsKi5ffslzgJuJohRMG4
         dnLLvKkW0rpgiK/2hDXrxHg7SCT+X2hHRuzwunLRCvTcN34xPI0PUCTqZufwfDBE4YQU
         dyGiMtKxW0+FZ7RnbYl/tgj1dDi64PMXY5qlzLVLHqF+Wn8KdxqagCC+nGOHxp+QUeRt
         ebgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hwr92oLWatoGx3uzF+7NwO91jSr/7W7A5PP5SHm0/LQ=;
        b=fMk0e7p1/fD28JZQgidqDxYWahznZ/6DI1nwJv9i3oLHVasMf+Z7Ecd6aYVfxNWjIh
         HaL+gIdBnKu/RU8WpNtzbbHxkgHh9cX5pk4VMMz1knOdgwLBVS3BC5mKDsXapWA1Ni8p
         nmhAV9CnXGF9J8ne1HQzp6rZHklg+wCvvWwB+XQo3o6D83n+TUwhtUHbJNLBLZg9mWlw
         QDm+enLxOnlF7xSpES6jH1nzf8T7YzDRrKUaoWw6ReKOA3r51vSBOLqPSZ2Y2Ndxq3B5
         LOL57FLqN/zAdHQ4T8ztt3/7OoNrbxp8vJopXZgTg1T1FbJnYnUz2Y7DbdlVc+Hb1w92
         UsJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ETU15TiA;
       spf=pass (google.com: domain of pihsun@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=pihsun@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id a189si683674qkb.4.2019.11.27.19.41.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2019 19:41:59 -0800 (PST)
Received-SPF: pass (google.com: domain of pihsun@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id w8so11206400pjh.11
        for <clang-built-linux@googlegroups.com>; Wed, 27 Nov 2019 19:41:59 -0800 (PST)
X-Received: by 2002:a17:90a:8c92:: with SMTP id b18mr8211986pjo.7.1574912518618;
        Wed, 27 Nov 2019 19:41:58 -0800 (PST)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id z23sm17607567pgj.43.2019.11.27.19.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2019 19:41:57 -0800 (PST)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Cc: Pi-Hsun Shih <pihsun@chromium.org>,
	linux-wireless@vger.kernel.org,
	Johannes Berg <johannes@sipsolutions.net>,
	linux-kernel@vger.kernel.org (open list),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)
Subject: [PATCH RESEND] wireless: Use offsetof instead of custom macro.
Date: Thu, 28 Nov 2019 11:39:58 +0800
Message-Id: <20191128033959.87715-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
MIME-Version: 1.0
X-Original-Sender: pihsun@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ETU15TiA;       spf=pass
 (google.com: domain of pihsun@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=pihsun@chromium.org;       dmarc=pass
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

Use offsetof to calculate offset of a field to take advantage of
compiler built-in version when possible, and avoid UBSAN warning when
compiling with Clang:

==================================================================
UBSAN: Undefined behaviour in net/wireless/wext-core.c:525:14
member access within null pointer of type 'struct iw_point'
CPU: 3 PID: 165 Comm: kworker/u16:3 Tainted: G S      W         4.19.23 #43
Workqueue: cfg80211 __cfg80211_scan_done [cfg80211]
Call trace:
 dump_backtrace+0x0/0x194
 show_stack+0x20/0x2c
 __dump_stack+0x20/0x28
 dump_stack+0x70/0x94
 ubsan_epilogue+0x14/0x44
 ubsan_type_mismatch_common+0xf4/0xfc
 __ubsan_handle_type_mismatch_v1+0x34/0x54
 wireless_send_event+0x3cc/0x470
 ___cfg80211_scan_done+0x13c/0x220 [cfg80211]
 __cfg80211_scan_done+0x28/0x34 [cfg80211]
 process_one_work+0x170/0x35c
 worker_thread+0x254/0x380
 kthread+0x13c/0x158
 ret_from_fork+0x10/0x18
===================================================================

Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
 include/uapi/linux/wireless.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/include/uapi/linux/wireless.h b/include/uapi/linux/wireless.h
index 86eca3208b6b..f259cca5cc2b 100644
--- a/include/uapi/linux/wireless.h
+++ b/include/uapi/linux/wireless.h
@@ -1090,8 +1090,7 @@ struct iw_event {
 /* iw_point events are special. First, the payload (extra data) come at
  * the end of the event, so they are bigger than IW_EV_POINT_LEN. Second,
  * we omit the pointer, so start at an offset. */
-#define IW_EV_POINT_OFF (((char *) &(((struct iw_point *) NULL)->length)) - \
-			  (char *) NULL)
+#define IW_EV_POINT_OFF offsetof(struct iw_point, length)
 #define IW_EV_POINT_LEN	(IW_EV_LCP_LEN + sizeof(struct iw_point) - \
 			 IW_EV_POINT_OFF)
 

base-commit: 1875ff320f14afe21731a6e4c7b46dd33e45dfaa
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191128033959.87715-1-pihsun%40chromium.org.
