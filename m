Return-Path: <clang-built-linux+bncBCG4DNXAQYPBB7MRYWAAMGQEIVMC65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B2D305921
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 12:05:35 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id ba10sf992615plb.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 03:05:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611745534; cv=pass;
        d=google.com; s=arc-20160816;
        b=og5boqrMGKfW0lPgpB1qtaPjSG4v/byCL7tZn4wCH85B/DKgDFs1x/pKvVHRzoOzPV
         jTZgqTXCQGmbMSVEETPFsOdv2mTBBkK0sfQ2S5OU2nNrlR3jLAEKKU16EZo69is5Q23R
         tY6yhZHel0hCXrKUSlN6wXA6aSDNHT/HPYo6vOee9fevCY6BYhEh+Zj8ShiDTHA3wp1P
         DUrwIBMG4p032jJiIn9ptu7EacCa22ES0VTmW/zrc0J12VksxWn9qjhhiweLybibdGhD
         /mu5lMfFO0ROp8cZkuIz9UAtsRor1JoT5m2ETdigNBKFUqbQ4OtPNBE+LWrxwZOe2Xhy
         +mXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=oxVxJvXXVgLasCgLsWnws1C209OIpJRpSpmHvKcUpsk=;
        b=yQoxYArE4+NcsbGy4beE4/4qY9gZsHGds8S66Q42F2TsVNjCdVj4exlriV2wGlLt3R
         63TxT39/jM0bR4T89vv0Svb09zBrp2wuIw0KUdpQ6Asp2CundvOAR/pnk8FKoG4ky0pw
         agobEItuofzSKq6e2LVG4IeDoh/lTUV6arwk/kmguClhfDs8w0KkUPzcyyArXW8aVtpZ
         vuN3dbxeYzJzMvpqHsNBsVEP8ETmMEnF3fHvatiA58/fqZRNsaWH905aAYCVpcKjYKgn
         2KLYC3j8dJjiTSxXju3acRTUvXZtV3+GMk+fo8/K+maW1N21Ra1Ol9B6txTREWLRQ/Q/
         QUTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=btrRant1;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxVxJvXXVgLasCgLsWnws1C209OIpJRpSpmHvKcUpsk=;
        b=eopKXCEVD1U8BkYvoOxguOH2BjgG5YmLHnCAeEhVxDqegwBoweb4II/aouaC76AJaY
         16EWSYZHlwa19BZCh3avMA121gIRIdKeCV4Fvq4xmWhOXKBuZoQlzt3WJP7BpyrttBNz
         gfpPP8R3gg63IdOZHPRjQV8fbpZJrYZbIsxLNach8m+FjnBlDvVGLbEYlBqTsSFWC/Z9
         ZFnVW3F9yN7maGxd7o06ZEw5U3jLIoNjc4RLhhMIKbpbaB64uo0DLlulLapW7fGTJ/WB
         IM5l0wYVaG3z+Jl52iQYcK121bop1iQpWC+E4zrG1qOhoQH4vlN2yCKESiSrnxT5V8QF
         0meQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oxVxJvXXVgLasCgLsWnws1C209OIpJRpSpmHvKcUpsk=;
        b=saGCG/fc/tNqry9MGttS19uuE6YV2lAzZiAAOdIyWFIa8VJHZlci0AuvVxld91cWaF
         88TROwdwOJdyh1dmUOSK3ATTIoyv2QUWGtNCnOT5FXvvj+LXfppEJDKv2ErfYT5AEFDo
         gf/krbkgwIZWXSXGczU65SgBVsoNrgnARM3oG5J9IoatZLX+mvzRN/0CX3JSTsMnLV1D
         OaywxR4Fqy0mBmCB0blWRKnfa12BIfpD2xAw1sYAMMduTywn06Sh0QjAJ+TpmXTBPgFM
         J7IRhVHnq33sFmU8Sml7/Ph1MyHGEEkomuQh9wrjMkPn6hWjor8B070bSNdbZLC2WRsz
         j/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oxVxJvXXVgLasCgLsWnws1C209OIpJRpSpmHvKcUpsk=;
        b=cL53DKhQuAbNuAPXirB5W8GhuF0jvdFHfgjjZbfbJjWXS/Pn5GCwyn0dMltFsMlSiJ
         c0ayXvnCrC68tV878mjkKvYDO40nawSQOIdTo9A/d+kPH0V8NeP89sSBeFc7JBskWhD6
         P7yebqm1ghAuaZGecTzQDA62eSzG7K2Lq7QuR/DG2Nn+B9OOoldoMpn9qg8udDEG/rV4
         8Yds8/4rFUp6TTVp9FLZrfZudcucsuV8zJuER13lBtHl5ty6XR/JQOEC1w/cPkg9DxYy
         3rGBIwGoYLHZTSqVc3mHPuv9PkSPI+C0LBb6RtNoQi49QUbontOzCvflKALVCal997Dq
         /27A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o88PzqXVSAvKoqkiQZhFXnhl7jLAYQgAFxH5Ol6XFxom6G9PJ
	Pyi5yHvE2bbh3XfmDmUwkis=
X-Google-Smtp-Source: ABdhPJzxTGsvaGyen8+om6uvaSBo8N+HolcQIXeeQYw0XYCdATU9+ZexEBuzJ9hM1u9zODKZp5aO8A==
X-Received: by 2002:a63:1c42:: with SMTP id c2mr11070309pgm.304.1611745534024;
        Wed, 27 Jan 2021 03:05:34 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls774314pfi.3.gmail; Wed, 27 Jan
 2021 03:05:32 -0800 (PST)
X-Received: by 2002:a63:1863:: with SMTP id 35mr10799949pgy.191.1611745532587;
        Wed, 27 Jan 2021 03:05:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611745532; cv=none;
        d=google.com; s=arc-20160816;
        b=NSQN500pGIgHrUDYrTt0kmM8DH2k//l1KUGXPsiXaizLUslg+VkdaS+s1+3mYeAeCX
         0AzpeckBy+Gsvljr9F+ekClQKuK60ueIRtVs8NOUY1zsM+b9KoCaoHYOI+pnLCAaxBQ3
         6Y0VtQtLy89fbcQi+YRqDrbP6O7JpC6sRYBpVfMuwGtXTWmLSkfr3fbgrEkTc16AnUlE
         bi1DWgS7tTm81u+ebsooqKKKotPpHYz3wIUf7u6ffx4CkZh/rMFtjVB5YrlI0TYCGNJ/
         RSE0nSO54QIi/EDDwxL1wgUp2BeOrAmdOYbihF8f9W5PhCTgKFT6xEfk3mLxGqsl3Qie
         W1CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=f0uhIYxEP5ACLreEqbTzuHdyKnahqQMCK2iaOeXStuE=;
        b=eslrwAuG4QL/hRbtKULjYPmj2jbKUlBKN3jO3xCp+65sH4yK3TgQhBZQvsScdpIJG7
         jq7ig0rHwJDcgOPlxn3iaKARQvtJTGRzvDI3h3NxfVdms37CGQRnGtmGgwH040thBgXk
         z8VkRK23XbDmD7OI+zqqKMFU0R9QGOFbkx2Gmg7WtAh2XRajKUJ4UWkysrtyKQVz94EJ
         aYJXXdUU6zzLRH/JQupbQMMED8K9wgRD9A1o2IIBP0I+luWgThjcaEktp530V3PAxShN
         BbC9FOTJp3pPfRyOpHP53Xb0lCSm7cxpooq2u5Z3exRRwurs68j0wdYt19mBLS2Wv5v5
         FXYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=btrRant1;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id c17si13924pjo.0.2021.01.27.03.05.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 03:05:32 -0800 (PST)
Received-SPF: pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id o16so1343796pgg.5
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 03:05:32 -0800 (PST)
X-Received: by 2002:a65:6152:: with SMTP id o18mr10783532pgv.392.1611745532399;
        Wed, 27 Jan 2021 03:05:32 -0800 (PST)
Received: from bj04616pcu01.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id o190sm2184433pga.2.2021.01.27.03.05.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 03:05:31 -0800 (PST)
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
Subject: [PATCH v2] lkdtm: fix memory copy size for WRITE_KERN
Date: Wed, 27 Jan 2021 19:05:10 +0800
Message-Id: <20210127110510.24492-1-candlesea@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Original-Sender: Candlesea@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=btrRant1;       spf=pass
 (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::532
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
memory address order is determined by compiler. We can't always assume
address of do_overwritten() is bigger than do_nothing(). At least the
Clang we are using places do_overwritten() before do_nothing() in the
object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
big and WRITE_KERN test on ARM32 arch will fail.

Get absolute value of the address substraction for memcpy() size.

Signed-off-by: Candle Sun <candle.sun@unisoc.com>
---
Changes in v2:
- Use abs() in place of address comparison.
---
 drivers/misc/lkdtm/perms.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
index 2dede2ef658f..fbb7f4554054 100644
--- a/drivers/misc/lkdtm/perms.c
+++ b/drivers/misc/lkdtm/perms.c
@@ -31,13 +31,13 @@ static unsigned long ro_after_init __ro_after_init = 0x55AA5500;
  * This just returns to the caller. It is designed to be copied into
  * non-executable memory regions.
  */
-static void do_nothing(void)
+static noinline void do_nothing(void)
 {
 	return;
 }
 
 /* Must immediately follow do_nothing for size calculuations to work out. */
-static void do_overwritten(void)
+static noinline void do_overwritten(void)
 {
 	pr_info("do_overwritten wasn't overwritten!\n");
 	return;
@@ -113,7 +113,7 @@ void lkdtm_WRITE_KERN(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210127110510.24492-1-candlesea%40gmail.com.
