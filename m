Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBZ5C2H7AKGQEWY3GQPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5982D849F
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 06:13:12 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id v26sf2114416lfi.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 21:13:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607749991; cv=pass;
        d=google.com; s=arc-20160816;
        b=J3w4TQ9P9zLpx+ikNszUvj9U1Xr07sv45K9c5bLu7ylJS4SQQ4cRVjK7/mqCdHbnIa
         tkrZPIRnrSbojvQPU3V/gWS8rQrqeNWU8NmAPRJUfU4taImy5B357lwd5SsvXNTJv4RL
         9INw8ZP6QflwKUZhL9e3qYrGLSjcvZmV5asBm/TLb8iNOUb42BJ20Edk+M1GzooYJC3I
         smwpVqEvvok0Iykc3gjvcfpSmhldB7Hj0jpBGRjxr0bCBZkH/hDc3r1Y6+Xanevc9E/c
         g4PB0OA2IdLitIu6FPjM0mvpMxb9oEfnF2G55xqhRwF8jFP0M3Hlpi56blv0kcAk4IdQ
         5KZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=0qCvokcmg/a/vnFAWHTt2MPmgV4/N/Y0S9a7Bm2xx6E=;
        b=C06mnx8F16UEcq622rNBrAE96Jar8vGUyAlumk0YMXG38Gvn7arX0mqXc5HRJVoX3b
         f2zok66MwAHzq18f4WySfvxR3iEj6gLc3dJQugoiWAik/O05QV3SBrT8UCG0LOwymmIP
         lhUc/I5XZXvxKcM3qrh6TSeZgFgCRNqsHik7KVzVbfji8q23dkQ5SNqZZTP7m2uCnlH9
         boilXnio0uatm+FSwe/Ni8k0nsSfvgxCNWg+ze1yuNC+XUTEOJphGCSMsuMXDcwf2bdD
         R0/prjjJR2BHZlmia3GunsvxCdxnpgqfXYlATiri6D2aE+SRAfcjLxXVtXp2I7kQ3h8v
         Rb+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t5Fbb3Em;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0qCvokcmg/a/vnFAWHTt2MPmgV4/N/Y0S9a7Bm2xx6E=;
        b=Bccx0lBpFJGh9ffxs69KMUu7OTQrjXy0v3sXFinW/mWatPHh6tF6YdIDpmmACyNhNP
         iMlP0q3RfTzxu/FYkmSJEvpxL/wkGAQi2t526ZTMMdWCcDMXeIUA5DF9utRF2mElaWUT
         0tjbu6qUXL90e1IFmm/UdC9YiJm+Pi/A/iBvpqLMgXUdErMFTN1CP5o0RXmVUVcvry/k
         XW+xk0ht8mukP9nrtzKqjlI/h5SxkgTa7wy3zNzBJfvGa0Rm3rewCRp6QHer9GMApIb5
         qvz52BUnnRAQxKzYW+4q911Ljpxrj2fDdAAE7BzufW91ijyTVrGSwvzAor9T0zYUYmyb
         bH8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0qCvokcmg/a/vnFAWHTt2MPmgV4/N/Y0S9a7Bm2xx6E=;
        b=Ue+qgKkAFg1QlSwnIx9amoyZC853yJ1snjlQEEsiFzNnkGKf3TjTbqVIeYQuJltDU7
         snCw3p//+4zM3KMA+Yg/KlwDUwN+tEaAVAizh6uLr7yeMDoA0PKPAlA3iB8m0/9UE15+
         wUz966bgX690Zxz1dE39VsjhOGUqjWck2/EKRQMVzQnFWJhj2bXF/e42baq5dAOfHSO0
         uvbF36x+uU3ZNDsX22M3bnHl8xmmdPv1CViTF3k/CpSdcPnI3l2Sk/HorbvQ+NVYdJ1N
         NZs3lgpJAMbg0fEkRNGTHnQq7KTSLC3QlvX7n2hRqcdpGPEpeSHlTno/KWoMNjgmw0N/
         j9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0qCvokcmg/a/vnFAWHTt2MPmgV4/N/Y0S9a7Bm2xx6E=;
        b=AYb0hRHiFyaguTlWN8iyY6AasMe1liSbf1gimL4Phhq7MrsgngHXoIsNi9jIhOBfQG
         IbjnPPRrIChYkTUSm4g1bQe74WiykMgfBRDdeAfxxaZdILKTZszBH8Qe6sgUVmSElIZe
         HwzXX5x7TOzttEWNGZNXQvMFHDd0vfGJRQKnIoxl1C4eY8MVvzshPs2vu+5G1ceKgex7
         5zEYnRREx6Y1gOeFDMXD9iTLKXRGDn5v8P3fM3jLKMyh/STwonDhcEMLbzRQ2sKUNvj8
         P6sS8iqtSvS54pskBZC8YkRqCGCoQ0SXjqwE1EUgLHromA2mDdpYjSyGpyIo/VN+TJHG
         VZtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rEZCCY04BfJ8D8LE3r2B4o+Yo0SAN1+3d/kmVRl9BkV4xnTWZ
	HJQOU2uGVMRnSSKAyBeA5TA=
X-Google-Smtp-Source: ABdhPJzpBt0nRGj1q+CF4Bs2ypy9uletAjOTP7OaObwk7pTE4vcPMBsa6Aun7jQBnmeS6iJZEBLyXA==
X-Received: by 2002:a19:c652:: with SMTP id w79mr6108398lff.555.1607749991783;
        Fri, 11 Dec 2020 21:13:11 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls233014ljc.9.gmail; Fri, 11 Dec
 2020 21:13:10 -0800 (PST)
X-Received: by 2002:a2e:8983:: with SMTP id c3mr7128027lji.184.1607749990666;
        Fri, 11 Dec 2020 21:13:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607749990; cv=none;
        d=google.com; s=arc-20160816;
        b=rqDw6VNGpc7jAFecnBEsCpxKcQ3aWjuNCvCcNx/1IwAJDLKhtJn71/+GUIHOyd7LV6
         Zgb1nII3R3JjNfwGJ4djWucZc51pns1LyF4L+2OTsGdDCVCHfgIBUdJW9uvJM8/OXMIP
         l1NFDPiJTMa/23oX/kNzegfKCTREejwj7StZV1nALpfflyaQiFXqoxBPrgL2vyISQxkw
         KCEH8nzkO6F6+snCuVBnogR0Rc0JyKUw5XPhVf+/d5nGS7ePcimpDX+3eOgDxEMFRxh+
         f/HqT2/Z83ftM2pSnnnQPHLeFErPE0+nczAjORD3gmL82yPAiUqJUUvx5OgMQv+Ym/8a
         s/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=6YGQCYdK4dZk4LHF+Fjyb1bMQOpJVKHPbyiDsunhQ5k=;
        b=dPp+zHguoNlISTxzLzhD/IQtMV2P3tpvurbFl/bjSRKlCuoM+Q9tBESBRpxmcQ+3LL
         s4fy070rHh6QigJl4wVQgTVjb4V6Bay94A/Z/t1GYLqKcpu4A0v74vl2r3BkIRQjJxSj
         o99LxTNJmWZcLe15M6drcKBLgke8IVuKbYM7XAjDrbxMR+tYwztxfmyBz7crvRPnz759
         HoYOF8/HqqQ74qAwwAcB55h0MrR5/gbzY62SlMllVz6ydhIf7FNpPEkq5lWnZecmeu40
         iFto2Jp8vMRK7DNRId/ZRITJB08Eiju1LtOIh3QY+AxeXCoxAaowd1S1+/L8cSdR30s6
         LmYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t5Fbb3Em;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v18si379110lfp.4.2020.12.11.21.13.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 21:13:10 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id b9so15306718ejy.0
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 21:13:10 -0800 (PST)
X-Received: by 2002:a17:906:1102:: with SMTP id h2mr13769297eja.296.1607749990171;
        Fri, 11 Dec 2020 21:13:10 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2df4:6c00:bdb5:f209:34cb:5e76])
        by smtp.gmail.com with ESMTPSA id ck27sm9465988edb.13.2020.12.11.21.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 21:13:09 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Christoph Hellwig <hch@lst.de>,
	Jens Axboe <axboe@kernel.dk>,
	linux-block@vger.kernel.org
Cc: Hannes Reinecke <hare@suse.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH v3] block: drop dead assignments in loop_init()
Date: Sat, 12 Dec 2020 06:13:02 +0100
Message-Id: <20201212051302.26008-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=t5Fbb3Em;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643
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

v2 -> v3:
  - use if instead of ternary following Jens' preference

Christoph, please ack.

Jens, please pick this minor non-urgent clean-up patch on your
block -next tree on top of Christoph's commit above.


 drivers/block/loop.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index d2ce1ddc192d..e5ff328f0917 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -2304,7 +2304,6 @@ MODULE_ALIAS("devname:loop-control");
 static int __init loop_init(void)
 {
 	int i, nr;
-	unsigned long range;
 	struct loop_device *lo;
 	int err;
 
@@ -2341,13 +2340,10 @@ static int __init loop_init(void)
 	 * /dev/loop-control interface, or be instantiated by accessing
 	 * a 'dead' device node.
 	 */
-	if (max_loop) {
+	if (max_loop)
 		nr = max_loop;
-		range = max_loop << part_shift;
-	} else {
+	else
 		nr = CONFIG_BLK_DEV_LOOP_MIN_COUNT;
-		range = 1UL << MINORBITS;
-	}
 
 	err = misc_register(&loop_misc);
 	if (err < 0)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201212051302.26008-1-lukas.bulwahn%40gmail.com.
