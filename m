Return-Path: <clang-built-linux+bncBCG4DNXAQYPBBFWBZGAAMGQEKLU5LFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 87911306DF7
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 07:58:31 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id j12sf5032600ybg.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 22:58:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611817110; cv=pass;
        d=google.com; s=arc-20160816;
        b=MP/OX8qEmoKTYilNNNlAGEpioNyxoV2Lhrl2FE2+6LlhgyJX3shJAH9ebgNl3TDhtf
         5ShH3Q1gYL9O4MO3c3Wo+Usu0lYrXZfak7Y5J9yy37tHsDnFULSdD9cx9gKkOrPL1ZWr
         OdzfYGI22X6vwM46iDeFubnuDRgdSRJOktiV1aHUijTsNHAPMV2HBInYIqfnoxDUlHdg
         4gJmATKh1cRuX0G+8+SS/mn/QYkALB6glsn0khcAWukAauUr1PJpJ0p66blexmGEWBhS
         j3rkaQve3mfVq7HrMGq5qx0NvBfKTGLNmd1I1ADTlNKzTluq8t7j94SyRA4NjSy2dFXd
         DQGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Pq1UvvHn4xjNZKluzRZG+1R3y/gx1Z2FaFKcNVoyQuA=;
        b=t5f71jRBLfylcvX4J5TC4QN86O5q3hXc2B6Q6KNAXuYpo7IYUWubuZcZnmD3CuYqpt
         n42ckL/r4LycJPSIa8GOkbeTJxuoqtgMGsWw0Jy+yLSNTOV4poiZyl86Oi6AZrwkFqjj
         e7MsCirWqQsczLBwh/UZ4Zac6a0SvONdYW5wfkhqiy3FfRdcqZACLDMq1bCzDXxayEFS
         HSJefnT6SCNr325uKQ/g5DeGNBAk3/UMk+thpDylNp0pLNhD7CLuDbyF6tu7zpS+r4YX
         c4cbyQLyvC2AQgGWYnyh/10D/8TgKJjRqZoswOCK0o3Pe9ggMch05nXxQGiaHZrO2Fw2
         hYYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XRYOapf4;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pq1UvvHn4xjNZKluzRZG+1R3y/gx1Z2FaFKcNVoyQuA=;
        b=CAJ5S7ZjmfgEgUKx5EOOy1g53OxCyvqwhMML2TZ8y7O6ZKXJtfM2kyt2R4yzLy8RJd
         9c47AkC9I7LlmvVNrdpqP5gSN+RtdPfIaF/eceubDCp86OGlDEX0RQySM8H4ajPu6Y/D
         taq19JSkiQ59OaGx7cp1eCBR+5S/YPuNkshDsV+t7S1KLNsNWMEjsip5IZErqkJKqN48
         D5j8Kr+DJWXYVm+MBWq6DM7FJ96F6G3ZBWMsoVIq955n71P9JiUVqik79XDzE+VXiIHD
         gKo8CgmjyhToJzpGJEnYpEkdaaq9UFjXwUuJDMZXu+TzZIUQ4dGL2Myohf3/OaHzJU6d
         YyAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pq1UvvHn4xjNZKluzRZG+1R3y/gx1Z2FaFKcNVoyQuA=;
        b=vLr1glGzQXqwRqs9WRquUnmMw66VwvqdDSV98WN1hTSB0Nwk103Tfl2DiZonBE1sg6
         JdW9LkPki7r3baXntm5Lcc2zoMupgHifcDvlFrU/qWiboEPPy9Z+wMkfKuZ8lwLdVkpO
         FlUgPyPfOWQhzOYfSEqgAihEzBsvTRPILNyEjKf/xgVmeYVcWguIZ0CPmXfxRkwdQO/u
         UOpSpVZsVDyWcQ/M2RzVNzv0D6OMMFIeWlLrqOELeJdeV2Zk9XNJO6kHCMX5aWq3AbJd
         qvyQ8usRPL4Hbdt4JUZdJFedCAaCWGnMs3a30J04zquc1skGvV5O6qBQa+FC6gDw2LcH
         Dwkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pq1UvvHn4xjNZKluzRZG+1R3y/gx1Z2FaFKcNVoyQuA=;
        b=pMlB3WJtlVAObGR2ZrX7fPeBGftCa0modDSzPnKY1fRKx6pttn5mLa5LGzp41rxNR2
         8D5AiYwHdNjqykQruByObE/9nmjyN44qg8K/CfhknUUFvEh9INxEZ/Uu9gjXOZdje2YB
         KOnvTmnMt2l23pugqCy4tzGa7sSMhM6PqH04mH6BcP3RnTpxV9HglA6FP/ao/Z+zB6UX
         /f1yhfMWb8jwAPp09IeEZbl1ZELzxs4fucgK4D4Vhb0/giK9ngR7+FHe9viF/YAncgWS
         8JB0Nhwm2+PSeEbaCidiyVLEf90AhEbupCCuqvWrJ5did7UlGKMlHz8mtfp5p+4GoJrI
         S2Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bZqeRpU+ahIjMavUiO7ci8WGDRryk24pvY1LDxexJ7Iu3Qobl
	Bdr3dCVX/9kpgllHS3Z7vFk=
X-Google-Smtp-Source: ABdhPJzQm4sR8TWoijXjJdlYSsZYCyD5f+44TGChoRyWMHHLoMYLR+ciII11hYKgYclC0KPzKDjgDw==
X-Received: by 2002:a25:be13:: with SMTP id h19mr601772ybk.53.1611817110341;
        Wed, 27 Jan 2021 22:58:30 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41c9:: with SMTP id o192ls2229949yba.10.gmail; Wed, 27
 Jan 2021 22:58:30 -0800 (PST)
X-Received: by 2002:a25:6ed7:: with SMTP id j206mr20921880ybc.312.1611817109966;
        Wed, 27 Jan 2021 22:58:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611817109; cv=none;
        d=google.com; s=arc-20160816;
        b=CBSddd2zZfNa/LvJz3hEPhnP6S6V4Ad+VcpikJ6zeRFyrA3Tw1IHTHR1tQnx66aXay
         b8Mhmk257dfn7VWoESDpnE/ogCLwepm9//k4JdnsasppIqnvuUe1tM0LysR6PYVELLYl
         BYcm8PVHTdVYDNcGAA1Ni7OQreK0DXkWe79zEX3hOqPQAFLai+fnJpIVP09OR7a+j9k9
         hsZl1lS6yC12ELP6ALk9+axh5b86bfMVPw2j41T8dtWeZV91btQO0IJ15/M2ZhYwCl+i
         88ewIJKJ2obGjeMMZK1v4DIIQEoCWFfKeZgErz99w+Ss7IZzTk1a9YIUXG1DR5/Ya3Eu
         Ey/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=o59VmeBiIuFDw0ib/euYCaS+FPmTbZ3Wy7mxU6VxEFA=;
        b=S+bGGTQ50oLDKGbPw5gEhdvUU4m39xrXwjMd3g1Pm6Lk9mwO2T40/AHAeQggz0PyPj
         J+T28adrMugIYwD+wwc+Ri7kjIwtXMeIM/XkNv2VqOZ6nvjSTWOcou4xJcTPh65KqHkh
         xfs1XLNtStMbIKVQHEt5bW4IcP1PmzJDxA83kj462YgioYxRY1+zuxChYk+Hwgpqe/gA
         J6M86eDDalTobjTMqi5BQXahlcUCoof8fq/j2hNOq0Ch58zoIyUuw15CIcDq7c+Gwr6O
         kuWPtKvqQAxcZDa9yx0Pyu7Q4jVgeIxOhkbikjynfapXlGnJo0iq+l8wYJwC6QbeBrpa
         qgug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XRYOapf4;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id 197si244678ybd.2.2021.01.27.22.58.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 22:58:29 -0800 (PST)
Received-SPF: pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id m6so3403772pfk.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 22:58:29 -0800 (PST)
X-Received: by 2002:a05:6a00:2281:b029:1bb:15d2:3b9f with SMTP id f1-20020a056a002281b02901bb15d23b9fmr14295810pfe.25.1611817109179;
        Wed, 27 Jan 2021 22:58:29 -0800 (PST)
Received: from bj04616pcu01.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id y12sm4515750pfp.166.2021.01.27.22.58.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 22:58:28 -0800 (PST)
From: Candle Sun <candlesea@gmail.com>
To: keescook@chromium.org
Cc: arnd@arndb.de,
	gregkh@linuxfoundation.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	candle.sun@unisoc.com,
	David.Laight@aculab.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3] lkdtm: fix memory copy size for WRITE_KERN
Date: Thu, 28 Jan 2021 14:57:39 +0800
Message-Id: <20210128065739.14124-1-candlesea@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Original-Sender: Candlesea@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XRYOapf4;       spf=pass
 (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::42d
 as permitted sender) smtp.mailfrom=candlesea@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Candle Sun <candle.sun@unisoc.com>

Though do_overwritten() follows do_nothing() in source code, the final
memory address order is determined by the compiler. We can't always
assume address of do_overwritten() is bigger than do_nothing(). At least
the Clang we are using places do_overwritten() before do_nothing() in the
object. This causes the copy size in lkdtm_WRITE_KERN() is *really* big
and WRITE_KERN test on ARM32 arch will fail.

Get absolute value of the address subtraction for memcpy() size.

Signed-off-by: Candle Sun <candle.sun@unisoc.com>
---
Changes in v3:
- Clean some typo.
- Remove one comment line.
Changes in v2:
- Use abs() in place of address comparison.
---
 drivers/misc/lkdtm/perms.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
index 2dede2ef658f..c9227e08f97f 100644
--- a/drivers/misc/lkdtm/perms.c
+++ b/drivers/misc/lkdtm/perms.c
@@ -31,13 +31,12 @@ static unsigned long ro_after_init __ro_after_init = 0x55AA5500;
  * This just returns to the caller. It is designed to be copied into
  * non-executable memory regions.
  */
-static void do_nothing(void)
+static noinline void do_nothing(void)
 {
 	return;
 }
 
-/* Must immediately follow do_nothing for size calculuations to work out. */
-static void do_overwritten(void)
+static noinline void do_overwritten(void)
 {
 	pr_info("do_overwritten wasn't overwritten!\n");
 	return;
@@ -113,7 +112,7 @@ void lkdtm_WRITE_KERN(void)
 	size_t size;
 	volatile unsigned char *ptr;
 
-	size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
+	size = (size_t)abs((uintptr_t)do_overwritten - (uintptr_t)do_nothing);
 	ptr = (unsigned char *)do_overwritten;
 
 	pr_info("attempting bad %zu byte write at %px\n", size, ptr);
-- 
2.17.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210128065739.14124-1-candlesea%40gmail.com.
