Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBHXNZ37AKGQEIHVM3PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D95D02D7DC5
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:12:46 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id t10sf5172856ljj.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:12:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607710366; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJGGFZvu3rRtuo22rN6GennxqGbx7K9Hb4cWOP0h1S8qhhE7T6fhfwH/AAdtKREWC9
         8XdZuNpvC3lpwgaPGwRf7w0F7PaIbvpDyYkZIfWq5PB0tusac1mTRNO/WJcyCMxrrUOF
         n0J5nxroRWBfuFY2JdIw9XhTtQetfdjPEWPMBUH/4cRVgDmJiPMgMAyq1BbOo9F5BjUD
         orHHkky7kUJ1zLgYYPrplXZEVYWG7lZgDc9bq8wAT8QNeqG3rB5YkTM7l2L20VGX8Z8G
         8wpdRMH4Sk0BUfOkQfPL4Lct3K42m48uA6KFf7OuZ6q7aI8H5x5h4NU6KDRGOl704Hk2
         poGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=rQ6xv3VlOtcxnRb5t+tuEtfjILbIZ2akxsxkJGo8Cpc=;
        b=hEyu718ZOLxRJlYMddz6ZWjGRvw+zlWOtlVGGwSziR9DLJ2ADw88lQqnHJF1SPCGUv
         d6vDNMb2HNJqU7D6kvQTcYANU676f2yPGf1/OQgd+FZRXy/si02FLvYN44EVtFte8amm
         Z/b+B1drzD+ILx5curhdjUqoxT67ngLaRD3aNo/G9xhXoONRE0FpSyF9IqOyFvideWpW
         /jngbPo8K+ZjciHOtVjm24yz+M4fPR+QxaoVWNYiJnAByJQK19TJ7GV5TpJVUwywZd60
         ViS4EWmxytP5VBNvuxLYsRpqO/iHCS2Xlkk7h3uB57Ot6A48UC2PLDz+xe6kMw+QjEU3
         g4Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qhyj3EQJ;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rQ6xv3VlOtcxnRb5t+tuEtfjILbIZ2akxsxkJGo8Cpc=;
        b=Aby0Qfv3PmqLZMkaEstPQdknX7ZJXM6BlK9zCyKWGGcPZCdioDR5R2H3kvUTumi0Cs
         rsipcD9Cu82i9C6WlHP+cmKrTWTIhFgGPVnTRQ8Lcu94Oc6fHUTNTs/zHvPc2J/GsEQb
         OtOPnuOLYFroG80ljcSTRC1M2CG5jbGT4IiLZi/hngNdt/q0YrGSVTDrA+jp6JOto8wz
         GzA7AM0X9+voZ3W8YOE8VmE2b9Wy8cPnTTO992ihEDoUgGVYbHgp1rkRWl/kN3USe8dj
         hyPZnddPCI3mYYg4CVnMoL7lGjtACoyshY1nXWFwLNeyoBTLgJRd2rdNErpVjlaeXgp/
         Iw9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rQ6xv3VlOtcxnRb5t+tuEtfjILbIZ2akxsxkJGo8Cpc=;
        b=OQg7rDxDeMmArIo1A0CjIxDTsUjTyBk1djSNDiOgnfjMHzaaIZohvLI24GomJ6xoSN
         Td84ST+S30p5bLHImzDPj/V+nZB/GExJgZ+aUmZNAS5licfXe5/DlPmkENNPt7oth7UO
         BADkl3oFVotEWkNW2RzSfGila3V7bkuA5tIvQAHSk/nyD2+bcJlMGjI2FE4B0BVTxhDu
         DYwn67tt9oAZQE+mZ5Ux5PrLsObusM16nufAS9uDWVzrl7flawLE4bAhOCa2EvZOW2Vv
         Q1eDDLcmsjutvtt8MX10WYQK7tZKlazgaJa/c+3z/F8Uu78myp/Xsp/YLGPrpnbRqp82
         1NPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rQ6xv3VlOtcxnRb5t+tuEtfjILbIZ2akxsxkJGo8Cpc=;
        b=B2NWEu7KvpekYumDS7vfCyQqLi/OGZ8pqqvFdF0SFtTuFKN48lQwM94vhkzKbVMiIB
         KXXrG7kY+y2mfEQw5Z9vNJX8BNOxR7jJcl/O6m1W3hWWezyaHUkC0ZwfRKYOLOKPiPtL
         NEa50KBP74OrPfbXjmKQhgb5m64zi00ddbzaQ4Orxm0t/eIrTPb0RmC6Xv/8RKeCIVs2
         2leU/yUSCgoQF9NuWP1bssaDq7yJoCrzbo6edf40A2zsNArWP8Xej4gZmRpGLMQiqSmw
         d3LO98L//DFkg4Oe4/FeaaoIM/Az9bW84rZ/uFMGVtK9HOeh845aPteDZYLNg2ke7NlY
         jR7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532k7P9Y0aj3lE+ZhWQW+EWBx98UYrfQtrQvBUmMjq+kGdf67nNg
	RDfDRh6PD8onm84IxmNQU9Y=
X-Google-Smtp-Source: ABdhPJzjFHyGA5XKfBymYa0lAgd/lqhRffVMDNtxbHWZj/wcUzKQw5vkOwqOBejM4uJlLJsFSKPmfg==
X-Received: by 2002:a2e:9f52:: with SMTP id v18mr5698551ljk.510.1607710366423;
        Fri, 11 Dec 2020 10:12:46 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls2341232lff.0.gmail; Fri, 11
 Dec 2020 10:12:45 -0800 (PST)
X-Received: by 2002:a05:6512:1090:: with SMTP id j16mr5264083lfg.641.1607710365169;
        Fri, 11 Dec 2020 10:12:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607710365; cv=none;
        d=google.com; s=arc-20160816;
        b=mx/v00B1gw+sKLcVNgP4a8PP+urOWEwG+V6xXqPPkN0veof+rujvI3mknq3DgX/t7x
         1HKL9KjXErTI1JtN1FL8WbSmR7Q6NcJGfbrynvzSrJOwqMqLOQ/xY3Z7tl/SEcf8ncxS
         K/vEkIZnr6mS7pezafv82gnNPib82Ts6vzg3S7X0WlpX9NTumZNtL7P55sC8glzEHtRz
         MogIMzCNf7ZkrbjOJYmHAHWwLW6LGIdvM5NReKMAbZGFm6ol228TS2xVvVDos2UAHks1
         Ua635u5o0McJ359ZcslNAacdnqrzLfuVW2zQSH4Y+FFjm7CBLOJ5F+mslm09BRRl5mqh
         EnFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jXNCL1l6e/6115GRYXv1hRB54orJ1B3shh8vugN/3Pw=;
        b=W3X1zUPDJdpm1KK/LAZ8Ec48IgH9BeBmW353TIPD0qcfl55QZ7fVp21cvmnpsNIPrO
         EyOcnREZh3fmpUogiexBoyE7FAxzx9YzCaX6GOLb6LfzN0BbCrmkuhp9fIf25KPvRzdg
         bMH4MEuThIDX6tMGM/4332AIuvnx6LhRfJkBcIJDgl23vMAxiv4PqG49ttiAsVuK0m8+
         fx3HfURat378piIewDMiBkGN2w8UPWS4AHj925cONLHo6RIXpRAxxV0vIcDVSXDCZ09/
         9O66At9hgM2avnuzHEmUjyobU5t4lv2Hqs64n1cPJOK8xdd7fkiApskt0Qstcnm4us/4
         3LLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qhyj3EQJ;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id h21si390062ljj.6.2020.12.11.10.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:12:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id bo9so13556252ejb.13
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:12:44 -0800 (PST)
X-Received: by 2002:a17:906:6b88:: with SMTP id l8mr12186390ejr.482.1607710363877;
        Fri, 11 Dec 2020 10:12:43 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d8e:cf00:1134:a93b:bd3b:5cd6])
        by smtp.gmail.com with ESMTPSA id ho12sm6914344ejc.45.2020.12.11.10.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 10:12:42 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Christoph Hellwig <hch@lst.de>,
	Jens Axboe <axboe@kernel.dk>,
	linux-block@vger.kernel.org
Cc: Hannes Reinecke <hare@suse.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] block: drop dead assignments in loop_init()
Date: Fri, 11 Dec 2020 19:12:36 +0100
Message-Id: <20201211181236.25755-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qhyj3EQJ;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644
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
Christoph, please ack.

Jens, please pick this minor non-urgent clean-up patch on your
block -next tree on top of Christoph's commit above.

 drivers/block/loop.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index d2ce1ddc192d..eed4bc5ef5c5 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -2304,7 +2304,6 @@ MODULE_ALIAS("devname:loop-control");
 static int __init loop_init(void)
 {
 	int i, nr;
-	unsigned long range;
 	struct loop_device *lo;
 	int err;
 
@@ -2343,10 +2342,8 @@ static int __init loop_init(void)
 	 */
 	if (max_loop) {
 		nr = max_loop;
-		range = max_loop << part_shift;
 	} else {
 		nr = CONFIG_BLK_DEV_LOOP_MIN_COUNT;
-		range = 1UL << MINORBITS;
 	}
 
 	err = misc_register(&loop_misc);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211181236.25755-1-lukas.bulwahn%40gmail.com.
