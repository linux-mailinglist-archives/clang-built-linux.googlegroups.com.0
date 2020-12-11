Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB5P4Z37AKGQEL24XFKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 172802D7E49
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:14 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id m67sf207066lfd.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712373; cv=pass;
        d=google.com; s=arc-20160816;
        b=UIYu6tIdv7OptknzvMIgKiNgG7RHAFeMQ6R+4B2f9PsI33q4rdWq2FYfXOvaHsRNGQ
         +57RxjwRr39ZgkdXXJ1dmsknbbD0SXCzqfnFJIxHpMLOubuqnmk3hk+syeq4LHuvmCka
         HqjKIBR/tqTW9Qnjhq9l7+YAFF5RukxgDJKnuzTIrVn2NBIzHo/nDllVfugiET4KHE9F
         PE28rPPgrIDp16t+uJifPsfzx5OE3bneJVcnh9HANtGqdDO81iBb14ilmyIIUZgnvdaY
         LlpV6+hv/2TzZKrggOQdriwPImAw79j2US3QlDTi17R5I6MMHQBtITn+fdGowSOsU6hj
         6S1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=gyrCAke0d5InyNyXBr4ga8EclefvBBO9w/T+rMgWVEk=;
        b=rr8C7xLQ3bmShqDGul+ZLpU3dovSdTyCi9v6Nj65VfZ/j2XN74wYDSNHCS43zduZAP
         n29EZgaRI80kvadxLylu2z0xRJy/3U7sMC/TjMnQpeV9LZcWQk9TdrF2MeqRRsLmeG/Z
         SZHAU/RpTqQTbj5yNZKJ2uS42XaLe74HD0nvHVQuuTJNMlvdIppywuNxz+maLOYu0KBb
         /6/hh3NJdwGGVCFxj5WDxGhq5UJapFNpDLFn0y1WRx/w7UzTLTm+OQk/Fa21YVwlAaJT
         XWb2iiakPz2g/67LMNB4cBXTBEOzTxpCctQONYRqHZohqeC5QurzkSvLeyq/VOrM9HI5
         LgGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jL8afGSO;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyrCAke0d5InyNyXBr4ga8EclefvBBO9w/T+rMgWVEk=;
        b=loiR1/Lk96+9rV31rhjUFzzThAGbAGPJVNl/dKeejgANVxxULyv7qUKXjmme6kO0vO
         9VfstuApRKxCP2EGlZFB2d36apq1p2A97fqk/skOJ15GnIuWZlS8AcytdVHSdEvLgvR5
         ROvrWYvOOIdVuay++XmJb6IwN/+7eHlvfGfVuIGSCirerE0h9mLt/fyuWDBZ/qjpgujA
         clmRESq8UtsndRD/E+wX0ok38IxCe6lCSxPFV6I6GqRvTZkPY6kbmVAAQlX/QlVGzhKs
         /9S5QHOAohYv+RBTskbt1JnZNyi/kOfWawxTL9tbcCVZvkJAfZAkgkZjax0qEyQQ/BYy
         pw3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gyrCAke0d5InyNyXBr4ga8EclefvBBO9w/T+rMgWVEk=;
        b=eW8bZ+v0G4kJz/W4vu0/xIPvl9uqKDgpjh+d4dHEIupz2ns9URKEkK9DJR+IAA1VV5
         ua2WEAghQ5gr+1ck1OuFRVIJN88skNVHpFfaSr35/wnOa5u6c9LJgPBs6pMeLEBMIe1V
         3myqep7+J/waVr2ERXLJMfXzr76pTy96l2LfDNC4+VVi3UFTcvDYE+R0FglQM0cqIqXi
         0eqSGaZ3nFok2R519VEZWWByo75jpFkdI9a1XaUxWMEZ8IMKXX/mfyj1pnO5J1AiEypj
         du9+7VZPeQvQEs3i6Yeoit7Vkm55qEn66dYjt/z42/i1RnZqOWgfUa6zgbZSi8UWCN2Z
         vshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gyrCAke0d5InyNyXBr4ga8EclefvBBO9w/T+rMgWVEk=;
        b=p4b1Dh0Jf5C8vdN1AQWg4rm3xzIujSvB7so0KReaulywxmC7HAJL8moaX7BIsvB7zJ
         GDOBRLtfHVxIyqP2hLeDY/s08xFFv3VAyJr8fh4hn3U3cb25kutQIysXfkJh/w2VqOyv
         T+RfcKiNgfs1FEgovShKNXnXHMyo0kW1mhMe2bKBZ/cAZO/K8BjN9C62sPckcG8+oipH
         JBaJp88h0x7C9b6TyZgLIGvyYjogTo0YZuC7X0j2pt8W/2/Etn9TvgHfh3opfqlRBuaL
         46DIPnju7BIFyaHbyprek5BjRAh3yYDvlNk4OX8S31Za5znj8bk04zU969QYBVbxutRk
         muug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338yAMAKhXyn7q7Jm1+VX0/tOVA/FxoaErQsFQ6mA94M3AG30+N
	XFcy4VCTgvjtmzboc0A6KOs=
X-Google-Smtp-Source: ABdhPJzTpQUrCZupn2VijMz8hJmMFX19amWLbsBnZOkNTb+ouPAptnuta8x7e1q+0W7oso5LG3i2Pw==
X-Received: by 2002:a2e:8110:: with SMTP id d16mr5773005ljg.280.1607712373645;
        Fri, 11 Dec 2020 10:46:13 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls2394036lff.0.gmail; Fri, 11
 Dec 2020 10:46:12 -0800 (PST)
X-Received: by 2002:ac2:46f4:: with SMTP id q20mr2945776lfo.316.1607712372643;
        Fri, 11 Dec 2020 10:46:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712372; cv=none;
        d=google.com; s=arc-20160816;
        b=KOgnB6Agdy/fM0AU7GvuclmmV979lKolUd8GWvO7hX1qYCzJ8UC9MX1C+E16h+RolN
         sUdlGd9WW+ztIc1AYjekuLzXBR/cK9A2tErBIA4jD/uKBmVhf69/LIUpZi2G8gTh3lW4
         Z6CMkJfcV4TYuZmpnbDgfVE0wHkOuaCqHbX0k06/JFm1MokNYsiO7pVhiMZ1gKSjJms9
         RxwzsF3Fk9oMBfW5FuVXlzqVIno7YQTBHcyDbFUXyX33mI35O0Myo7ez7E7BlbrSdh6E
         h+QiaDaASL1TMP+OMBXbIgVP7l8kdjzYTMpr8nZzWSmjLaQY1jwMQmJNUbt8yPuguP9Y
         ojKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/vy2vMYsdZgPjSFh+ZUUZIX8+S3sHf8WTmPjKwG5z4w=;
        b=OJz6E1pggzI8se5WWaglUOH+AxPqygWRyoEl6lGTSFzy1CF/+XWqVJo4gtxjtFriB5
         ev5rWeKoutFmESPc5lL0aRAKh2A6m4VK1eATPoFKlB87j+uGLv0Ny7MQq079B+bGzQdQ
         NT/sH5Bi6stAWstoJZH4+Kb15Z2qloGF+SKppk/Q++OLQmlADK4KXU1g9yNBOWHP65nF
         uTbWdzHCXBRr3854oLw00fxWpKcY5oMg8hCWALeBphiz2Tdo9EmScCePRxKAgU6kjsdB
         UlFoeHUcBbS9OazSAEbd8p1D+n3J251owAKmyOh4Q/wqbhczIq3Nbe6RDiFWd7PkDvqS
         wPpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jL8afGSO;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q18si82673lfc.5.2020.12.11.10.46.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:12 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id dk8so10431737edb.1
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:12 -0800 (PST)
X-Received: by 2002:a50:8e0e:: with SMTP id 14mr12856121edw.171.1607712372086;
        Fri, 11 Dec 2020 10:46:12 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d8e:cf00:1134:a93b:bd3b:5cd6])
        by smtp.gmail.com with ESMTPSA id h12sm7279190eja.113.2020.12.11.10.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 10:46:11 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Christoph Hellwig <hch@lst.de>,
	Jens Axboe <axboe@kernel.dk>,
	linux-block@vger.kernel.org
Cc: Hannes Reinecke <hare@suse.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH v2] block: drop dead assignments in loop_init()
Date: Fri, 11 Dec 2020 19:46:04 +0100
Message-Id: <20201211184604.27646-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jL8afGSO;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::541
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

Commit 8410d38c2552 ("loop: use __register_blkdev to allocate devices on
demand") simplified loop_init(); so computing the range of the block region
is not required anymore and can be dropped.

Drop dead assignments in loop_init().

As compilers will detect these unneeded assignments and optimize this,
the resulting object code is identical before and after this change.

No functional change. No change in object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
v1 -> v2:
  - replaced if block with ternary operator after Julia's style comment

Christoph, please ack.

Jens, please pick this minor non-urgent clean-up patch on your
block -next tree on top of Christoph's commit above.

 drivers/block/loop.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index d2ce1ddc192d..10c7c154c114 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -2304,7 +2304,6 @@ MODULE_ALIAS("devname:loop-control");
 static int __init loop_init(void)
 {
 	int i, nr;
-	unsigned long range;
 	struct loop_device *lo;
 	int err;
 
@@ -2341,13 +2340,7 @@ static int __init loop_init(void)
 	 * /dev/loop-control interface, or be instantiated by accessing
 	 * a 'dead' device node.
 	 */
-	if (max_loop) {
-		nr = max_loop;
-		range = max_loop << part_shift;
-	} else {
-		nr = CONFIG_BLK_DEV_LOOP_MIN_COUNT;
-		range = 1UL << MINORBITS;
-	}
+	nr = max_loop ? max_loop : CONFIG_BLK_DEV_LOOP_MIN_COUNT;
 
 	err = misc_register(&loop_misc);
 	if (err < 0)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184604.27646-1-lukas.bulwahn%40gmail.com.
