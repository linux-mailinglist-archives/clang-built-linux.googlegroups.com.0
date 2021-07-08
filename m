Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSMZT2DQMGQENJKL5QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 724D13C1C32
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 01:39:54 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id n23-20020a0566022217b02905125dedcd4esf3464505ion.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 16:39:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625787593; cv=pass;
        d=google.com; s=arc-20160816;
        b=FgyGlEwJzg3Z1tEyHMrHwquwWdn7DKFmXRqKWWy/3jPmp/JO+Z1kjyNcCxFLUdSVDR
         Fv7cFTSWT2csOMJD0finb94RB9HHin/8MFllfEP4UmIeiHS8WGfCm3DBMgHdMSEGmDrD
         vb0l2mPuCFZx3cgfyYTo6G3b/XzaSFwrg2bvm+TaKfRmua076MCqQmqKVYy8bkZxp/rQ
         PCwXS82dzAuj/shgH7cCyj7jhD4ZdsVfi0qqTOa2bs2uY0+NqZwFh8TuSSx8FsYZHig8
         S2XXgrLCI8czRtmilivaCJZA6Tk1ckID2uFQ1oLD1Bo/HDYOD7ltTelY/HMp35qKxGqC
         p8gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=mSr2bBC0OSgfg6G+ANE0e39KahQB7X421ZZO0B8To2M=;
        b=thpROuide/afUPXNJNN7YmhSd6hjE5HREOxr6tgZSq0Bnk9J0JJ6lJN0MY850XPV5G
         uY51rzwMSc+8FaZyxI8pc6GNSbJ6fOH2IEKY8NmAXCu9NcL3fxM+Of9CgBaevCWdD9vN
         gblgyUbq1B8UQ0c7UwCN0azDIFEd1nByJT/pUr95M9Hu9a5tWXc/3Sm/SYaM6DLmFBpI
         tcqjUdCfolCEQho6h4M2XUV/IDsTWBb65Y21AiRg/Sm5XkreHULKTmT6uK3GtHG3t6Yz
         LGZNBMLKf8ng+xp+ACv/tUJBixzvMZeueAiK3jYJr6WazIqdPiRvTCXdQLrIzWmUxWYy
         DuCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lXpCmUHc;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mSr2bBC0OSgfg6G+ANE0e39KahQB7X421ZZO0B8To2M=;
        b=pB9Frfx97PudxztwPuomX3QHsJa53q2cye4SDBc6CN42YnKhnjxnddlCKVvnPpjRUt
         b6e5LS+/WLImzJGwtnvfDFgEapqCMjvqR23a0DMvfOVHGhPpzw6Y5CZpp3y/zq3wtpGO
         w8l44gbHY26pcm01sdps6HOXfwhQYeurhohJsWqBpnPPL9lisecTMF9DY4fH+gGF+u5J
         bXYEJ38XyVzNSizxrL5LTmirZbLBSmhWfNzXG9Url08O0alVnjiHaEJLQlNKjgBO/9+g
         KtDmwO6cC8q7uExmLUspGvb8oDygVl6wDd1Uyza52uD39rOrr0NpcbRjn/aShPDWUTIV
         WFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mSr2bBC0OSgfg6G+ANE0e39KahQB7X421ZZO0B8To2M=;
        b=HU2rXqfPQSg0gOr71HsxXxrb4zr9YexGnNfgi/NrRKY3y8VfPrf2x91rh1FcfMQ+Iy
         bNLUJt8I1MXOEZQ2GtqpNgeby/7tjarogS7zz9ofcE5qXWbZnzf/IqLa/N94wxnpewS4
         dza0Na72AWqNHmlPUMcxaSRXlXUQzDuC2mGeVWxI8W/bZ5Ki9zpyCQ3k2L+/0DWZoE7q
         5OjzPQYrff4qQWENGdkAeZmEo+1+c/yCH/+h6MGNnXVYiY2FSto3D2LRoD1HIkLp58sZ
         PcX44wHMe1VcpS+mL93ulKC+UJtM8J+R/uIoFTBmtQdx2UvP13d8pt5BejQCEdJ+PNtR
         wYbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xlkH0WSIPS/wIk0fs9qhCqJ1ifkwKscInw0e0WiVGbgYWPLOZ
	phK8iQgDkU/eFautz/q8xPo=
X-Google-Smtp-Source: ABdhPJx3Xvm3GloYQFkrICpFwV7O2DxulIOOCQ8TFrYJreGs/57SDVY8HUBtcg7VRH+UVqpOVihm+g==
X-Received: by 2002:a05:6602:2157:: with SMTP id y23mr10427120ioy.116.1625787593480;
        Thu, 08 Jul 2021 16:39:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ccb6:: with SMTP id t22ls476466jap.2.gmail; Thu, 08 Jul
 2021 16:39:53 -0700 (PDT)
X-Received: by 2002:a02:6946:: with SMTP id e67mr2527987jac.4.1625787593143;
        Thu, 08 Jul 2021 16:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625787593; cv=none;
        d=google.com; s=arc-20160816;
        b=EKbLklPQlpo5lMyt9V1IohnXCiklt6fcq8I4c+FZG0DtN2NNbMFW6/enjLar9C9wsV
         Hy8U/5E7oglGYySwuBu2MFtVg3hFKB56fj4uUztzP2HTv0pm7MM8Zve/F7FkJY/qcgnm
         ZqltyVLt6GcaxULWXiz+6QoSBsn7bsAjDN/Wv1sqr3pbcuby0dSoMzl3Ife+Maq9OqbW
         vDIZ84LsqpS3sqAwR9LRDutrhgsLS+2uMQfgcsp3s16BvdhpNbBZEcXMRVR0A5bX43y7
         2aoGGHvx1fCT803+b/BvcYF9X++R4mXw8beKFVuD1tZ5hYVZBj0HXhcJxqv9unTDUkI5
         nKog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UMDziYGTDLHuvtoocSRasj+CIBK4JS2WyWX0AKRdHHc=;
        b=eqKzE3YfzmwRUv5PhL/d1uvGADJVyV8CTgdpFd/fKNIBC/kpasvNE4VaCdtWQjbiAq
         4mP26ORJox+Qu9PS779nuQLNUfo2hTVd0nzCq1wCFYcWq6IFVUupspxBU7UMdDykp5G8
         xJSLC+iQ72kiMMCmvHWzwGd3NK9lEUE2vPI6D3ZRcRTS0pJs2DW13+fl+pW39Q4+OgYr
         9IGZ2k9yjYHgVxDz1UHSjHkvqQwsC753u2WjCjz27P7Gpg/1UpxxrVdm2C29JsgHd2Ev
         vbIIVxCSkwR+JaizXPV6ec11s2U6IkJRl/BMVAzpC8tGgQeL5maRTRP2apCjQACXwUko
         uHZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lXpCmUHc;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j13si221210ila.0.2021.07.08.16.39.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 16:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1BB7D61409;
	Thu,  8 Jul 2021 23:39:50 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Brian Cain <bcain@codeaurora.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] Hexagon: Export raw I/O routines for modules
Date: Thu,  8 Jul 2021 16:38:50 -0700
Message-Id: <20210708233849.3140194-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lXpCmUHc;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

When building ARCH=hexagon allmodconfig, the following errors occur:

ERROR: modpost: "__raw_readsl" [drivers/i3c/master/svc-i3c-master.ko] undefined!
ERROR: modpost: "__raw_writesl" [drivers/i3c/master/dw-i3c-master.ko] undefined!
ERROR: modpost: "__raw_readsl" [drivers/i3c/master/dw-i3c-master.ko] undefined!
ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
ERROR: modpost: "__raw_readsl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!

Export these symbols so that modules can use them without any errors.

Fixes: 013bf24c3829 ("Hexagon: Provide basic implementation and/or stubs for I/O routines.")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

It would be nice if this could get into 5.14 at some point so that we
can build ARCH=hexagon allmodconfig in our CI.

 arch/hexagon/lib/io.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/hexagon/lib/io.c b/arch/hexagon/lib/io.c
index d35d69d6588c..55f75392857b 100644
--- a/arch/hexagon/lib/io.c
+++ b/arch/hexagon/lib/io.c
@@ -27,6 +27,7 @@ void __raw_readsw(const void __iomem *addr, void *data, int len)
 		*dst++ = *src;
 
 }
+EXPORT_SYMBOL(__raw_readsw);
 
 /*
  * __raw_writesw - read words a short at a time
@@ -47,6 +48,7 @@ void __raw_writesw(void __iomem *addr, const void *data, int len)
 
 
 }
+EXPORT_SYMBOL(__raw_writesw);
 
 /*  Pretty sure len is pre-adjusted for the length of the access already */
 void __raw_readsl(const void __iomem *addr, void *data, int len)
@@ -62,6 +64,7 @@ void __raw_readsl(const void __iomem *addr, void *data, int len)
 
 
 }
+EXPORT_SYMBOL(__raw_readsl);
 
 void __raw_writesl(void __iomem *addr, const void *data, int len)
 {
@@ -76,3 +79,4 @@ void __raw_writesl(void __iomem *addr, const void *data, int len)
 
 
 }
+EXPORT_SYMBOL(__raw_writesl);

base-commit: f55966571d5eb2876a11e48e798b4592fa1ffbb7
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210708233849.3140194-1-nathan%40kernel.org.
