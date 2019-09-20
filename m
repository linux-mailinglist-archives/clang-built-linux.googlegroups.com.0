Return-Path: <clang-built-linux+bncBCM33EFK7EJRBDHGSPWAKGQEWWH47AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF177B9433
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 17:41:00 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id c90sf4444422edf.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 08:41:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568994060; cv=pass;
        d=google.com; s=arc-20160816;
        b=WxTafOv7/KEdmJC1bRLMy8Rmr/6gN6v//IEFcZNQwWYj/d5038804V44hBKu9hiTJd
         pigzNHFVfrPuZS3aZUJd6avAoto4s3sBpm30gLyQeUy+g7HSsXL7Sjw05pkZ2Jo0UThr
         ai5C6Adsf7AvKUm4m5d2ekehAf62tCt0qOORzFZZ8xvASD2uri3hxEj2SiIYFP4Atmx4
         +xZf16MH/2CjEDR2V8BDSGVtK/AXHIiP6q4ZJVI/W0Zpvurut6E8P7J0cQwK/5Nd86hB
         ojzCm2gE42J2sAbyjil5TV1HpL00Epke4k7IdPDvd41XeqqunonCEw0ab7M45ErUx0Il
         MzKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=ayUM9wbLmAx9B6VYeFDl0TRxCMFXHBJrAtMefRhqvaE=;
        b=Vj0A2JaahMlZaoZWw4xONBneBG6hJLVJ+W1uXcSog4AELE7KPzJWsvXq+onedh6sCN
         a2prAh6/ncCZKA0T+VL9o1odZpkg9Tw5O3lKd5btqDbfbGTV6MrLJyHwy2Qk8uGzF1KY
         csvqRvSRq2O5XhQuE7ofjQ57EqWaEtdWUuZHf4sAO/L43V3OndveNILecKvMRETHwKBO
         7qxhaNJr//ZyqkYgI+OReC4HSKe21hLdIs8TrxFrCVLlzu4xMynIv/TPbmksgO+RdI4f
         s5q1jrDO4gvQHKhLmqbGSG5oIiF0D4jN/dehDVxN2cPQWIXekK0IKISACXsmeSuCrN12
         2q1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pj8jIhS3;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ayUM9wbLmAx9B6VYeFDl0TRxCMFXHBJrAtMefRhqvaE=;
        b=YsXkOo05k2NgEBAeOpfdeJXF+pIBi/uGc9Tzh+dOEA804EYo67Ud+RKm97MJAnIBfG
         1HXfxgHM5jFN7DJ0RuyRxArndX6pdmnUsHBwShv6ugmKTBqtoIAe6Z8ZOxTcyEf+5xBv
         g7S5NEtlAM6Zf59U/8Bo1uF0hqfRNb9P7dn/fV74QJ0H24cTyReD5t65LR/blyjjkv8V
         foWV1atttSB14ahyavbTiY9EnQ9yxmUlavQO5XVmiY3f5m2bXSrmGxWlbpXpGd9j2vea
         fI1XhnhMv0GcB12F7L885WTIrhMcWoTWXxsLkokrgFbI0q6TUA9cgJDnRhapAzrmUbSE
         Mj6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ayUM9wbLmAx9B6VYeFDl0TRxCMFXHBJrAtMefRhqvaE=;
        b=Dh4PzwK61vAjaqh00zfMC+iEHvTp6TqEO50PvuLBpeN4Nf+XAVYwFxE45dkbmxc0J7
         NeeHQvqHW2K79u2Mo5dHqvNExdEWIVaKnCIdSmgfpC1cj2C/rfpnjE979xXEsSloC1ro
         klsp6L1fXdLbOSiQYQQJcCio6CiizQhLYl33cPl/wqkfKwj6pT9T9KLe0APF25tAmNCK
         aVP5ufKsx050iCQ7s18EPH1bH+hbb5qQ3fGGo4u2QMjxf0OzKC2YLEu5TAeU9eN3bhys
         JvlTS/GEdAkhjjU6EZly2r0kW02ZCsvBDbHS/gAmJeWcHXO5DmhM66dTjjVtLKPvLqvV
         2V2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ayUM9wbLmAx9B6VYeFDl0TRxCMFXHBJrAtMefRhqvaE=;
        b=OUgvUZjmcUK+0eakWNVuqcR9IZP5fDGhb+AFF19wsOHRX7Rws08Uq6JnUeLkCnWhie
         4FSsET3vLoEmZCsP5+uqDqkVUP7wQeYK/VEac+5m23H3NDR76Ypz0yw3pv94/nthNDxl
         EttYbFvYjE5+A7iPuw0tSIgXsq3HrEkyZ4+KETzW9gV1bHria+8/O1fzkm08hjXwGFAe
         wY+qFZg0VsgGDBg00pz+zicdSB9b/t4Kgqjbi65Jmt9ik0IJbLTT5sLnoAUayaXP9BVv
         zOam8Vwc5Bawm/VjgrZ4R0qepDY5eDQcKWBBJTQF8lmqJlOe1B7NmZnLw6R5OTFyK9QZ
         b0xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV8GH/NSOJ01E5yqT0CchTMebkIAeEOAPGQhRpYqX1dx30Hvi2e
	xuE0a7c+LthWXjwqJmemMWE=
X-Google-Smtp-Source: APXvYqzwc8g7ZdT5t2lPFTRCTc3aBG/AHTk2GpedHRJRZz0dESlQJxNk+AP/VItuWY7fC+MUzjsIuA==
X-Received: by 2002:a17:907:441d:: with SMTP id om21mr15559696ejb.188.1568994060580;
        Fri, 20 Sep 2019 08:41:00 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3591:: with SMTP id o17ls1639198ejb.5.gmail; Fri, 20
 Sep 2019 08:40:59 -0700 (PDT)
X-Received: by 2002:a17:906:ecea:: with SMTP id qt10mr20145998ejb.23.1568994059914;
        Fri, 20 Sep 2019 08:40:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568994059; cv=none;
        d=google.com; s=arc-20160816;
        b=jNO2hTOTJkJEO+QIY9RqUJInJtLz2Nygr3RAwQR41js/9NPI7bPrIe9bgVBIjlLuA4
         EcwE21RfWA+J6FJsRtp8Itpq0K2OROzs/TLZBqH2ejoP4qxmsNBQQyad0tzC+Ad5r5bY
         X6YIGJoAmwzl+OHBjhX9ebEfxutEXndGXXD4OGqLBNQOM77X3lzVmH6mgKnCPDJPOQzr
         KMMfg4uZpUsD6BvYolWU7D2P37T0iSYsKDTHHWFTSNeWU5pw54bdYMCHTe1zvL9rXOY2
         Xw5N4FnoObL+pbD2BX6G2582sGn2ZTeFLZBv6Z1T1meuRjPbIv1Q98NBMcq+m7diB/jL
         Pt5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=G9rxy00ZIE0J9oTLHWg18q2mcebTff8MKdbRpMtgQiE=;
        b=YLsa762ClA1KEzBfK5/jbKyiTYNxDWngIKo20MpxQtoYbbCwLYtGOC1fNzKI2SYb/j
         5qEDevrjZioLbqbxLVr2tSSSMTIM3etKu4cDh+XZPvvZTfF1L1ZhXroQS3U0BMI6Hg4i
         x9KvImQaXyHhN+TX9c/1wpSN7MuSs0N2t8GHCGXr/GqEOMRqqumKPmseXi7Y3pIn2afD
         ZMTs7ZYVLwTPvZI8d9jvB3xlER8Vgimuk+5jvJhWt44rnRRBXNRmpFB2h5X0EmTTr80B
         KpW+w1F3IYZmzXtzTNTbxpyBZnKPkMcIWfj+kSZTJIpuMrKi9RkRlpHOXpQympItsUc0
         /gDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pj8jIhS3;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id d14si151701edb.4.2019.09.20.08.40.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2019 08:40:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id a6so3001073wma.5
        for <clang-built-linux@googlegroups.com>; Fri, 20 Sep 2019 08:40:59 -0700 (PDT)
X-Received: by 2002:a1c:60c1:: with SMTP id u184mr3871598wmb.32.1568994059713;
        Fri, 20 Sep 2019 08:40:59 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8166:7500:adc0:6801:a7c2:8ba2])
        by smtp.gmail.com with ESMTPSA id x129sm3249186wmg.8.2019.09.20.08.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2019 08:40:58 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Ilie Halip <ilie.halip@gmail.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] powerpc/pmac/smp: avoid unused-variable warnings
Date: Fri, 20 Sep 2019 18:39:51 +0300
Message-Id: <20190920153951.25762-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pj8jIhS3;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
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

When building with ppc64_defconfig, the compiler reports
that these 2 variables are not used:
    warning: unused variable 'core99_l2_cache' [-Wunused-variable]
    warning: unused variable 'core99_l3_cache' [-Wunused-variable]

They are only used when CONFIG_PPC64 is not defined. Move
them into a section which does the same macro check.

Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 arch/powerpc/platforms/powermac/smp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/platforms/powermac/smp.c b/arch/powerpc/platforms/powermac/smp.c
index f95fbdee6efe..e44c606f119e 100644
--- a/arch/powerpc/platforms/powermac/smp.c
+++ b/arch/powerpc/platforms/powermac/smp.c
@@ -648,6 +648,10 @@ static void smp_core99_pfunc_tb_freeze(int freeze)
 
 static unsigned int core99_tb_gpio;	/* Timebase freeze GPIO */
 
+/* L2 and L3 cache settings to pass from CPU0 to CPU1 on G4 cpus */
+volatile static long int core99_l2_cache;
+volatile static long int core99_l3_cache;
+
 static void smp_core99_gpio_tb_freeze(int freeze)
 {
 	if (freeze)
@@ -660,10 +664,6 @@ static void smp_core99_gpio_tb_freeze(int freeze)
 
 #endif /* !CONFIG_PPC64 */
 
-/* L2 and L3 cache settings to pass from CPU0 to CPU1 on G4 cpus */
-volatile static long int core99_l2_cache;
-volatile static long int core99_l3_cache;
-
 static void core99_init_caches(int cpu)
 {
 #ifndef CONFIG_PPC64
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190920153951.25762-1-ilie.halip%40gmail.com.
