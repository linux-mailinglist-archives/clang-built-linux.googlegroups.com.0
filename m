Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFPH7DZQKGQENLRRGDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A3A195C0C
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 18:10:47 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id a13sf8429468oii.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 10:10:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585329046; cv=pass;
        d=google.com; s=arc-20160816;
        b=vdKSlyj3l1/bW+UcRtM/toJ+sDOzh+EnOWXFBVMMPQIcp0P35eDspZyMnIGYBlOtRs
         2OZUuVUYtJga4Tg+nI9JtHR3qABD1tIPHy4zRAFVQDHgbdS1TjNxGB/da6R/uVsFAMut
         MHPOUPJNMPrfnz+DTapLV/Hl8SC3D7c9ieX9NFJufZSgpiCG7XA4eNDWsd8ob/F8v0UO
         kiY8cBV8GjA/Z1sbZRzd8eQUaSs3RrX/AKYCMvaJvg3Mdxcz9qs4HQucM+rRZJAaKixD
         7jsxspTyiREjdcJ6zrR1pn8q9Rri5In2JuOYXfcbWWEBbrpTDprxax0DQ/+Nzlnak/Tw
         Ahig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=FhLNLGEd1nHGnU+b5HfvxrVA4VATVk65h8L9Nv8w6k4=;
        b=wSqMyee9W105H7F79+56km7VC5UDt0lfwN2A2X8MYUY8C/cyvdl0wkb/D82WdIMfzs
         CF01zpqlqkka9Okfqkq1KNi63PXetOdF8leuKo23ldUMbWqxX4PSmr877PQMCbV3qPq0
         GEegZW+SM3Ywzp01LTt8kg0TDREtnhOEIaZE8vC12XZZ6joIeBWYVPb+6ym6l0BUw/t1
         E3Ooxq+OIdsqJLL/png6wQK65LmwReDUg2lccfvMI14kdXIUgYtWHnCALqhECfMMyjbB
         bRTtk96DnnBY31KiuDtc6fU0aklDRK5wo4aPZzJIg6drYBR5YwWxH+yJmzEd1R54WZTC
         vbCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AmJeA7jH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FhLNLGEd1nHGnU+b5HfvxrVA4VATVk65h8L9Nv8w6k4=;
        b=dbUVhuhrwO4MHv/kZdRGd7Dw7UiWHZMpkg2dC/fKsGXVTv4d/vFjt1eN6JiYzqNLHF
         WZLK8easzRgpxpOcDF+l9zfSIkV9vNJw2AMaM8L1DrhLayd39xMByUNEkhStTH9kj7re
         wfzs8xkL4iiNPTDNQWl6UYt/2ea+qbLv+UmKsbpMJN46YnfOEdlrEPvqhOXWcN76Ci6A
         +TD9Wtfh9Inc25A32Kd7FE9kwwEEVccoyW0SiwmpSJc+tszI8mzBtUJQ4/2OJEH1JBl4
         /F8tec7AnmljKyDic3Z+h/IUuj0GH8K/OjaZshUnJu7MtABDlIfQnj/fl2sctO5fOdGn
         ThiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FhLNLGEd1nHGnU+b5HfvxrVA4VATVk65h8L9Nv8w6k4=;
        b=grUnMUIh778EkZ0O6oSWkbHjSfmd3hcCOCeuZnsWjHLEAPFTyTm/HhPJhj5YGA7qqp
         yBe75CYISc++GIe3SEOQAj0OuuDUgH6sj8unavj8Q6i5g7GHY8GeYlV6rpQ9a+siYmnG
         KgR36BJYltyErAIoGUGIgO1cXDpEkO4aMgFNA5t79xKWwpU6ZZ2mT2mXefEowQBYF2dX
         I7JWMUzvGR9erkFJ4fC8DYb/4jtUQT1ZfHG8prUI/w2jEEVpCjlnEiYSzGcmaZXSgoiQ
         /+MJmkjYx5oraC1amQBEMobJruXKEjBrvaD+RfDJ2Qqts5HmU6XfZ2EOhQWgjejxSB1b
         ewGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FhLNLGEd1nHGnU+b5HfvxrVA4VATVk65h8L9Nv8w6k4=;
        b=oiYw3YXtEC6sQfmZXvEFKBv/TjSZvP4Bm4VH61+kTQHSy/T7IwPY7C23IeIGClRFLV
         foRlNzZZJYKj6rgYadzWFKrZyG0/PoqNiBq9TU3/pD7uFI2lN/ttAk8hy9CwK2lPs9dK
         f3IAd2QyKu1n9Gh0WvLREakocHUVK+gUQHyPuBYqFhXrrQfDCzFeMOWrcV2scl3hAati
         iK/R+PrYYFxMmfL6+SAfRy4W+YYvAvYHhFAx2Ts5Bg4qMrYIJa8stXLGbLOQqZ0ZLaFb
         Ei3hF2F90TcvfZv5KoQIjOWMABPEbY1mHeBvIlRkXhnLL66l/bBhsjborMcPxIzgynTC
         KMSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0l4i/opS4wYXVfbsDITcHUh1vHBkaKYlsvxIjCQII5/Bx/hVvf
	N9ug5TvKCu7N9LWM9a19s1s=
X-Google-Smtp-Source: ADFU+vuKIq0Nhb68plzprTH/ocsUB0LzEnOkrCiVycDSjRD9xuYnw2jdTOmsEmysG0aDYBp5tGnViA==
X-Received: by 2002:aca:c596:: with SMTP id v144mr4768099oif.136.1585329045878;
        Fri, 27 Mar 2020 10:10:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5606:: with SMTP id k6ls4004022oib.1.gmail; Fri, 27 Mar
 2020 10:10:45 -0700 (PDT)
X-Received: by 2002:aca:a9d4:: with SMTP id s203mr4824040oie.106.1585329045546;
        Fri, 27 Mar 2020 10:10:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585329045; cv=none;
        d=google.com; s=arc-20160816;
        b=VT0FI/MtXiNLZvJihmrZsfeEB6bi0suD3O6KJ7GyDMCNqVX5EU2zrEz3vtFbVl0JTA
         CDKycL3pp0Cm4y2lvrLTmma5axh26ihkgYd7eCCsmboforh1OZKm5w7Gy/dqh+0M1wq1
         yTWVOmp65ASS7/HRzw2PZNs0cLUGVopyd7ror6J/osiEOpbmadmxUkCf4kzaUPuCyb63
         gLeOEzbsr35OW8SdhY/6BmlTM9rzkyYwvm8Yu/KvDrSUKUDgt3jd1cbkT6bNFnsP2tYt
         zRo+t9zEhAkVtU2H5sdeJvFbdNuU7hSL1NfG7FT7wTx9IgvBtmDcYcNIli5xK/ME1A9i
         4h9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8Uz+T/mHoGv3NzPZQFttOck1KCbWaKiOsJFWw1oiNn4=;
        b=IcyGURk877KEKEPzkaSYcZSIqz5X+Eqk6NK2x7becbxaTSz+2xYyM9qAMprrk1f4lF
         eQHi4in+zE+VmY5u13V680X9jq62vKZNReolNESJsCkzHFVEH0RGOgyBl86z3Pz8P5W1
         tAY6c5A/sQQMr00821R4+fEA1v4vpq/xELHyruoVWZ9DctcRqroXl4ob7gROJBX6Ys8R
         AgRnEPqck5eV/PE3942mWnDO5oFackU5dc3cAWLmFoFpZlbcOm4mbE1esRK6xuuyyZAD
         5NJ/DKPx3/0iNE+uZlPWEf4FdGgNgb31KY9GU3PsIEC9DS2aWU2G3+vR4sE3FIzzsfIc
         dJlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AmJeA7jH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d11si403282otk.5.2020.03.27.10.10.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 10:10:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id x11so10489157otp.6
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 10:10:45 -0700 (PDT)
X-Received: by 2002:a9d:6857:: with SMTP id c23mr11129155oto.224.1585329045188;
        Fri, 27 Mar 2020 10:10:45 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l188sm1967881oib.44.2020.03.27.10.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 10:10:44 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jan Kara <jack@suse.cz>
Cc: Amir Goldstein <amir73il@gmail.com>,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH -next] fanotify: Fix the checks in fanotify_fsid_equal
Date: Fri, 27 Mar 2020 10:10:30 -0700
Message-Id: <20200327171030.30625-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AmJeA7jH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

fs/notify/fanotify/fanotify.c:28:23: warning: self-comparison always
evaluates to true [-Wtautological-compare]
        return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
                             ^
fs/notify/fanotify/fanotify.c:28:57: warning: self-comparison always
evaluates to true [-Wtautological-compare]
        return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
                                                               ^
2 warnings generated.

The intention was clearly to compare val[0] and val[1] in the two
different fsid structs. Fix it otherwise this function always returns
true.

Fixes: afc894c784c8 ("fanotify: Store fanotify handles differently")
Link: https://github.com/ClangBuiltLinux/linux/issues/952
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 fs/notify/fanotify/fanotify.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/notify/fanotify/fanotify.c b/fs/notify/fanotify/fanotify.c
index 7a889da1ee12..cb54ecdb3fb9 100644
--- a/fs/notify/fanotify/fanotify.c
+++ b/fs/notify/fanotify/fanotify.c
@@ -25,7 +25,7 @@ static bool fanotify_path_equal(struct path *p1, struct path *p2)
 static inline bool fanotify_fsid_equal(__kernel_fsid_t *fsid1,
 				       __kernel_fsid_t *fsid2)
 {
-	return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
+	return fsid1->val[0] == fsid2->val[0] && fsid1->val[1] == fsid2->val[1];
 }
 
 static bool fanotify_fh_equal(struct fanotify_fh *fh1,
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327171030.30625-1-natechancellor%40gmail.com.
