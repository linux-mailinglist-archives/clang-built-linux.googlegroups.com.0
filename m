Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB75AWLUQKGQEIJLBVYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 713CF692F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:41:04 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id a21sf9985679otk.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:41:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563201663; cv=pass;
        d=google.com; s=arc-20160816;
        b=JHN/DLWLIo6sS2wFK0G+P+hy6KHpwrffProOMq569YBN5MhjXX3txWdB9bEzBRqPy9
         77qvU1/6syODG4SpTGk9Oftc24rUltLDMG6zl6f+EKIcYEZTYUsLm4UzH0bnbAWr+utI
         cxN+E7635Ld3C3+cBNZcUd97u2izQAtS8tFMvbb0el5v7uzPzUyHH+Rjsl1HA166kb/2
         GZ9P9EbHAUSbB+23QKmOyMxjtj25xCrAYGl7x5AKIDHI938dyINM0W1IRAJstKmQrNTs
         aaqMFnR+z7ZdozUJ2rJ2pV7hEZEDnXkJZWvkqUF61vV4bmUGOFY6p0fiFdJkmbNUBz3Q
         +yww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lSAsLftw6sgkXZ9vd955EhpUK9FAPBnlxj1LwTnL2uA=;
        b=ziPycPByq2Qy2zkUOzizmPNo4jBeihlsjcZAolqeqxtUwraHcavIcYeoLle7a4wB7u
         eyggq2v5WqhZ6R7qqQiwfMWSDgpsEaAFHh9cCUbN/OaJR5xZJgzNVdWkiZcRAcrF3U4P
         DE06W6RFbvRik4lJoIy9tVgMxPMMf8npECFVRuj9YtVWGqdz3XpF4k5eCsic05EZwvpb
         jQpH934K90SubYdFGZoEZ+45Ryj/dtWkkfoK5ldkMONnIxL/2XjXsTE5RyHT44NcqBoL
         jwfbE/Vlydv+Jp3CYg0moQmLTDSDOzBzoDBJe/q+Q5H2fVEdM9onrybGiibFirtWYxff
         cT4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xvy0E4lK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSAsLftw6sgkXZ9vd955EhpUK9FAPBnlxj1LwTnL2uA=;
        b=BR5V1qL/fkG1fBtampdMqjs4L6PqnnUVZXScjpE7zWjSKlR9DH8xWoEMmqcdm8kt4k
         /6zxc83dJ2EnJuPfuj3mTVxlpp5SoeNjSQHaVnSGnDnn280Jlrt05pcdw417x9sWhZCM
         pppyMZSt9mP0fr9EyoZhYG9bJIORmiDMPMLZhrTvWtM/YxHGvVR15RXkl1R82sHJ9Bsh
         wqMJic6KgAffzwvdwuAD0nBXvFujOlEcGK0D2h0+WYSR44h2JxyOk/InbGAMvMF+XAj0
         3So3/pWnhwf8tTMRPGH4rFmvLhAjtwJo4becpVVnJZKX6MjY+OU0lYrcCvJgpVLxUH4H
         0oBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSAsLftw6sgkXZ9vd955EhpUK9FAPBnlxj1LwTnL2uA=;
        b=mUqYAQz1tssg5YFWnBwBGxG1AiQid5ENULBm/ahUKosICgCVPUzpZpFU0xzDTGqfmn
         Q3KNo6Aq3I7Mh4b4yTMN5aOtbXb4+Bvo8A22ocKFjCQkKjpf1wjdIO4kI0wMV7sHQLGF
         TKuUCemxRPufBTXiaDA/ennvYNXXAF+tfw4yZI9w7/pYIuIyomxqVkHR42cG+oo5LSXt
         Ou1ZT9b0+ShAXdNleAx0hgT6VrsVLk/ip+qgvm23lItWDinosxMPTwmZS9QXZxMITm//
         VMegxOCGlLKtQTSnLxEhuecU3LGpTSa2wKlo1rs7EF96JxQ35mEEtt/O1W7yq1PiacLJ
         K27Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBRqBXwrZTOTj8aMB+vk4QBwLk4R2iNoEFv58Uso1R4VlSbz6V
	q7n2ouvDVimnLKRZQePm9ws=
X-Google-Smtp-Source: APXvYqxiQ0XtQ2Ae4DZ94GYJpWyPKAOMnXva4JJJ91A5J16La/YiDrRR0aUhmCwDMXNDexCFfH5WlQ==
X-Received: by 2002:a9d:20c7:: with SMTP id x65mr19059540ota.138.1563201663390;
        Mon, 15 Jul 2019 07:41:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e45:: with SMTP id h5ls3167843otg.11.gmail; Mon, 15 Jul
 2019 07:41:03 -0700 (PDT)
X-Received: by 2002:a9d:6e8d:: with SMTP id a13mr20116492otr.303.1563201663150;
        Mon, 15 Jul 2019 07:41:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563201663; cv=none;
        d=google.com; s=arc-20160816;
        b=prtHzjyhF2SifucyZxvfaPejR1py9fR9k1UZtss+diNBwuehKEgacyAhZqz0oup4Df
         Q9FD4IrD4FnqcfsioOb4sthbBSoDrZTTGdKSIFaf2NpaLuSGI4QvoJUBhmMqQu3MPZ83
         9sDLedu6F/0HfIe1Ceq5kGKaJZfxKbWxQPehJj+7RNHc3m50wS+fVFUHi49lILJFkhsn
         5EWYAyArGx98pcsgyCE38a9WNhz0DIKSxJo8pzMXC3ryGkn5OBEIqgzR2m5DpsA3KZZe
         Xb7j9wQPgeyPb+9uG2Cq00zqTUq+qoWSn6Gbti7RpNDa1r+W484HKpdH5bK8uBLnMKUS
         eMMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5rgwyfa+ZkI6GDQOCjtvGKUjcOIuXx+OvmqniSa68Ow=;
        b=dO1XLW8mJB6vmT8v/y9/YZr8dg4frJKq49YhxqvKC6+yJHF58d0q16omQWJaRjwfnE
         MvChnnGjv/ngruoxM+XqHGBLKv80PTjOFunoxkCtebVvhPPEZ7cNZC7k0AboSsHnAPec
         CD4ZvhDtf0wxo2ED+8IrZ10P2IztANsaWQGO3w4f5T4//4U5glnkmFlTz7Dj/t37FBxo
         kua3MtDHNn5Zcam8h9nVBjxwAvc3WonMImgOpbl8lPfP37GvQNV1ZCtHwb6Nno3/74ma
         hmZC/KaySxjSiDeF5C0JOFaXPrJjhXNFpd6wQoGmeUSkY/JP6w2/y8yDZd8/qoAmNwoI
         Ohxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xvy0E4lK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d123si734250oig.5.2019.07.15.07.41.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:41:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 76FBC204FD;
	Mon, 15 Jul 2019 14:40:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Phong Tran <tranmanphong@gmail.com>,
	syzbot+8a3fc6674bbc3978ed4e@syzkaller.appspotmail.com,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 66/73] net: usb: asix: init MAC address buffers
Date: Mon, 15 Jul 2019 10:36:22 -0400
Message-Id: <20190715143629.10893-66-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715143629.10893-1-sashal@kernel.org>
References: <20190715143629.10893-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Xvy0E4lK;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Phong Tran <tranmanphong@gmail.com>

[ Upstream commit 78226f6eaac80bf30256a33a4926c194ceefdf36 ]

This is for fixing bug KMSAN: uninit-value in ax88772_bind

Tested by
https://groups.google.com/d/msg/syzkaller-bugs/aFQurGotng4/eB_HlNhhCwAJ

Reported-by: syzbot+8a3fc6674bbc3978ed4e@syzkaller.appspotmail.com

syzbot found the following crash on:

HEAD commit:    f75e4cfe kmsan: use kmsan_handle_urb() in urb.c
git tree:       kmsan
console output: https://syzkaller.appspot.com/x/log.txt?x=136d720ea00000
kernel config:
https://syzkaller.appspot.com/x/.config?x=602468164ccdc30a
dashboard link:
https://syzkaller.appspot.com/bug?extid=8a3fc6674bbc3978ed4e
compiler:       clang version 9.0.0 (/home/glider/llvm/clang
06d00afa61eef8f7f501ebdb4e8612ea43ec2d78)
syz repro:
https://syzkaller.appspot.com/x/repro.syz?x=12788316a00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=120359aaa00000

==================================================================
BUG: KMSAN: uninit-value in is_valid_ether_addr
include/linux/etherdevice.h:200 [inline]
BUG: KMSAN: uninit-value in asix_set_netdev_dev_addr
drivers/net/usb/asix_devices.c:73 [inline]
BUG: KMSAN: uninit-value in ax88772_bind+0x93d/0x11e0
drivers/net/usb/asix_devices.c:724
CPU: 0 PID: 3348 Comm: kworker/0:2 Not tainted 5.1.0+ #1
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x191/0x1f0 lib/dump_stack.c:113
  kmsan_report+0x130/0x2a0 mm/kmsan/kmsan.c:622
  __msan_warning+0x75/0xe0 mm/kmsan/kmsan_instr.c:310
  is_valid_ether_addr include/linux/etherdevice.h:200 [inline]
  asix_set_netdev_dev_addr drivers/net/usb/asix_devices.c:73 [inline]
  ax88772_bind+0x93d/0x11e0 drivers/net/usb/asix_devices.c:724
  usbnet_probe+0x10f5/0x3940 drivers/net/usb/usbnet.c:1728
  usb_probe_interface+0xd66/0x1320 drivers/usb/core/driver.c:361
  really_probe+0xdae/0x1d80 drivers/base/dd.c:513
  driver_probe_device+0x1b3/0x4f0 drivers/base/dd.c:671
  __device_attach_driver+0x5b8/0x790 drivers/base/dd.c:778
  bus_for_each_drv+0x28e/0x3b0 drivers/base/bus.c:454
  __device_attach+0x454/0x730 drivers/base/dd.c:844
  device_initial_probe+0x4a/0x60 drivers/base/dd.c:891
  bus_probe_device+0x137/0x390 drivers/base/bus.c:514
  device_add+0x288d/0x30e0 drivers/base/core.c:2106
  usb_set_configuration+0x30dc/0x3750 drivers/usb/core/message.c:2027
  generic_probe+0xe7/0x280 drivers/usb/core/generic.c:210
  usb_probe_device+0x14c/0x200 drivers/usb/core/driver.c:266
  really_probe+0xdae/0x1d80 drivers/base/dd.c:513
  driver_probe_device+0x1b3/0x4f0 drivers/base/dd.c:671
  __device_attach_driver+0x5b8/0x790 drivers/base/dd.c:778
  bus_for_each_drv+0x28e/0x3b0 drivers/base/bus.c:454
  __device_attach+0x454/0x730 drivers/base/dd.c:844
  device_initial_probe+0x4a/0x60 drivers/base/dd.c:891
  bus_probe_device+0x137/0x390 drivers/base/bus.c:514
  device_add+0x288d/0x30e0 drivers/base/core.c:2106
  usb_new_device+0x23e5/0x2ff0 drivers/usb/core/hub.c:2534
  hub_port_connect drivers/usb/core/hub.c:5089 [inline]
  hub_port_connect_change drivers/usb/core/hub.c:5204 [inline]
  port_event drivers/usb/core/hub.c:5350 [inline]
  hub_event+0x48d1/0x7290 drivers/usb/core/hub.c:5432
  process_one_work+0x1572/0x1f00 kernel/workqueue.c:2269
  process_scheduled_works kernel/workqueue.c:2331 [inline]
  worker_thread+0x189c/0x2460 kernel/workqueue.c:2417
  kthread+0x4b5/0x4f0 kernel/kthread.c:254
  ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355

Signed-off-by: Phong Tran <tranmanphong@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/usb/asix_devices.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/usb/asix_devices.c b/drivers/net/usb/asix_devices.c
index 393fd3ed6b94..4b12b6da3fab 100644
--- a/drivers/net/usb/asix_devices.c
+++ b/drivers/net/usb/asix_devices.c
@@ -237,7 +237,7 @@ static void asix_phy_reset(struct usbnet *dev, unsigned int reset_bits)
 static int ax88172_bind(struct usbnet *dev, struct usb_interface *intf)
 {
 	int ret = 0;
-	u8 buf[ETH_ALEN];
+	u8 buf[ETH_ALEN] = {0};
 	int i;
 	unsigned long gpio_bits = dev->driver_info->data;
 
@@ -687,7 +687,7 @@ static int asix_resume(struct usb_interface *intf)
 static int ax88772_bind(struct usbnet *dev, struct usb_interface *intf)
 {
 	int ret, i;
-	u8 buf[ETH_ALEN], chipcode = 0;
+	u8 buf[ETH_ALEN] = {0}, chipcode = 0;
 	u32 phyid;
 	struct asix_common_private *priv;
 
@@ -1064,7 +1064,7 @@ static const struct net_device_ops ax88178_netdev_ops = {
 static int ax88178_bind(struct usbnet *dev, struct usb_interface *intf)
 {
 	int ret;
-	u8 buf[ETH_ALEN];
+	u8 buf[ETH_ALEN] = {0};
 
 	usbnet_get_endpoints(dev,intf);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715143629.10893-66-sashal%40kernel.org.
