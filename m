Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBFPY4LZQKGQEMXR5ILQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 632ED18F5E2
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 14:39:34 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id i7sf2486514ljg.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 06:39:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584970774; cv=pass;
        d=google.com; s=arc-20160816;
        b=iSsqDU44gre3wdKBuroZUptV5RRn5GL88lgxyMyzzpFeeJ4goKcGgY01Qz5yhA22Av
         1WWXAfT/RKE7ZSM+XDFoWMphfE6uw+Jwp1uovENoh9lAGvcFBVFZxeQehAJF1geSRefZ
         eNA9ihXOJ45DWSX3cPF5h63poxK/lwai9h72CfQcOZSyYLNkxcClI4l3JJuq0dn1oUl7
         bYVvW9Fj8r/nkI2ud+O4Xe2+Lmf+2nSNzAEvoT6yDma1EYgEgkNtponEcQqTinGIdttR
         m5/fr6GhIgqB8UjIXHL2n0MeM7eOuhQ/WuBSgO3+wVkf+F0CWLKPHGNpjFE7Y3mUOtIl
         4cHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=LtboYw9w/SyI2ZzqStarI/jRS7vv7vY46X1Hv/b/+7E=;
        b=e1F1hSIsbNYwHnrXhzLDr2LpUbMtNV3sFyVXlv/TKRhZbDNP/aYYATReH+GSuGjWGJ
         cpIhIKJTuYZf4LTsqu+qu1Av5dyPZbvdzd9nPtBCW8o9Xfm1qYO9YtVo5gPS3vm2R/zO
         5Ytd1nGtFtAepju+5PdhD1l6lmQMFDypJKWJOdTN1gKfHhlpao2vEN16Xhdtizjfi/3D
         9hhArG0/UjPLKTCwsex+jeaZOaJkjbH8QsNXJmjT2pTA0RPATiLhX6cOLR7zB0KGtDNP
         +5LBODNByKvzsaddWI1BaUwuq4940xM3f/CFBoSBfNFBPAHSOGqMQJK/ik5DzImuOVit
         YWog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LtboYw9w/SyI2ZzqStarI/jRS7vv7vY46X1Hv/b/+7E=;
        b=Svja1qw0YGB/lpfO7khSqGQwjIA41w5W3tfIEONA3Dgoj0FPsuMqY9YPVDn1e7NaKx
         AjPgj4i+Yz0GtioJH0+RBYQw6A5jBtwSXh0EzlTITQ/ifKkTHsnVhTDB3NpoYd6ICIph
         SOODmutzXELqv67vSz2ykRxU2iQBmT1cMIYOLBVRgS8i+nrcOKlqxkku2jBGzHg09idv
         sywFbaizvoXEhWdJP5yv7iRipNfO/qbhrxu7BfI8ms+a23pagr6waf0Tl2ksr0Rm3jbB
         KGabdxcMdUI0dNS+wnLKAI9KliNzgea6TJkCnZIyw/egxgf8qO0UnH8tAd+0Uptzrfue
         YILA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LtboYw9w/SyI2ZzqStarI/jRS7vv7vY46X1Hv/b/+7E=;
        b=OVSg4gOYSwAnUEF4vXy285Ya9If+hlZKELu6Aflz5sWZu7hNso3oOsiSeJFuf5CKGV
         6IfrRL9QpWmbYqmUCn1rXbLJcGh9AhKGbQGQbrEupX8n4IQX4kq2Cz/ZLQy9dGDGUO9I
         l6t14R7ER6b8PnmFxv7suIx8qxn+OfkvMbx1bqyscOrq/pdAB4TkTR/jiWfszHRoyONe
         FRjsABETODpnsqEM8wA8NNLSCjDq05XYApP6VsKSWfXVBHyKTI+GiiOvs2cx02E/XjVc
         wGZ87AuVrEu6O+KK87/XflVoF65U+2MEH+UVS9Gj6/Pgkjl841nZoWJa3KHDT4LBgqNT
         lztQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2zo9tnig5+GckOchKM2bMVwfOoRg9gwhPpVa9zNicy7ohG1iMf
	gaOAJq8HZ7FUj4OQjKMFViw=
X-Google-Smtp-Source: ADFU+vsZP+but2Jhb+lwZS69Og/1xQUiHvqx0GWIAf1KvkLg3t7z8WpYTkCfXQYt/JKluTbJhEApxA==
X-Received: by 2002:a2e:3818:: with SMTP id f24mr14035405lja.53.1584970773943;
        Mon, 23 Mar 2020 06:39:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls2830808ljp.1.gmail; Mon, 23
 Mar 2020 06:39:33 -0700 (PDT)
X-Received: by 2002:a2e:9099:: with SMTP id l25mr4576671ljg.157.1584970773298;
        Mon, 23 Mar 2020 06:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584970773; cv=none;
        d=google.com; s=arc-20160816;
        b=KvsFlvVw9gQbX9gOhnj7uWVIm58Gk1fPoCVSiZtHJDTAKVd1VnKTfilXWmYeE+hPJj
         yOxJW+oyfnl8i6tpRnbkpJM4e0Mtb+47LHGcViBLCSelqUSICB+9cf44cNxbo5T58eeU
         52F9bPzDA/RqmJzImJoimZ3tWjHhYWR/lvB1Tccu//lE+EE5NKhbOWRFsAdL46HREgle
         uN8uWAH1tWCKgkdRgQbzQ9k/p8Mml+ohLXxd1XcQzeFzRRSPGXbE/AWsqqJmWXa/vud6
         lkQCoKVLirBEOttTxpSHUke3F2S/SbdMGORe8wlzab8q2ekx0MWgNitLrHYgAEqFSx2v
         yQ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=UFObqkqB+7/M0vUKMpIUlLUScmZZHeQY2Qa4wN5nn8o=;
        b=lV3aO9HEnd2qThR+Kk9fyklpxF7+lC19s2nRuPXYzsumxdltGnzbeOfsWd9ol1yoCh
         j6uYQRCx88LXfesu9r68Vp8E7fsqbtnzBzUdGhgzdMyImpJNlezrmlzw5X+vtcB4oiuP
         enrRsszRx+aDA399vuKDjyyqblHD8/DrngKxLvqVvl7eH2MJ0x2q/EqMNoasVllZZSZk
         TWEngo52kRgiIBtT5RxMT9z0zsmOHhDgrsM2iHREz/zlqVz27coKp/TylbaFcX5UvlMb
         uPLhpdb6+zswOPa9CS73VxCvH09MitdSS8w0B2tPxOmthFKoXZevEJ3iKsG+f8aK/025
         YFNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d12si838502lfi.2.2020.03.23.06.39.32
        for <clang-built-linux@googlegroups.com>;
        Mon, 23 Mar 2020 06:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D790E1FB;
	Mon, 23 Mar 2020 06:39:31 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF4713F52E;
	Mon, 23 Mar 2020 06:39:30 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>
Subject: [PATCH] vdso: Fix clocksource.h macro detection
Date: Mon, 23 Mar 2020 13:39:20 +0000
Message-Id: <20200323133920.46546-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

CONFIG_GENERIC_GETTIMEOFDAY is a sufficient condition to verify if an
architecture implements or not asm/vdso/clocksource.h. The current
implementation wrongly assumes that the same is true for the config
option CONFIG_ARCH_CLOCKSOURCE_DATA.
This results in a series of building errors on ia64/sparc/sparc64 like
the one below:

In file included from ./include/linux/clocksource.h:31,
                 from ./include/linux/clockchips.h:14,
                 from ./include/linux/tick.h:8,
                 from fs/proc/stat.c:15:
./include/vdso/clocksource.h:9:10: fatal error: asm/vdso/clocksource.h:
No such file or directory
    9 | #include <asm/vdso/clocksource.h>
      |          ^~~~~~~~~~~~~~~~~~~~~~~~

Fix the issue removing the unneeded config condition.

Fixes: 14ee2ac618e4 ("linux/clocksource.h: Extract common header for vDSO")
Reported-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
Rebased on tip/master

 include/vdso/clocksource.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/include/vdso/clocksource.h b/include/vdso/clocksource.h
index ab58330e4e5d..c682e7c60273 100644
--- a/include/vdso/clocksource.h
+++ b/include/vdso/clocksource.h
@@ -4,10 +4,9 @@
 
 #include <vdso/limits.h>
 
-#if defined(CONFIG_ARCH_CLOCKSOURCE_DATA) || \
-	defined(CONFIG_GENERIC_GETTIMEOFDAY)
+#ifdef CONFIG_GENERIC_GETTIMEOFDAY
 #include <asm/vdso/clocksource.h>
-#endif /* CONFIG_ARCH_CLOCKSOURCE_DATA || CONFIG_GENERIC_GETTIMEOFDAY */
+#endif /* CONFIG_GENERIC_GETTIMEOFDAY */
 
 enum vdso_clock_mode {
 	VDSO_CLOCKMODE_NONE,
-- 
2.25.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323133920.46546-1-vincenzo.frascino%40arm.com.
