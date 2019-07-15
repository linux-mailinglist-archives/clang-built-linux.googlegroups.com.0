Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGUOWLUQKGQEP3KZAMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F95768DB4
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:00:59 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id j140sf8438718vke.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:00:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563199258; cv=pass;
        d=google.com; s=arc-20160816;
        b=z9b9upP18ZlMKFHXcTn9bscKDyiC8GjcAot6Lisr/KO5jvg3L/pvB1ljjQIuE3ykDr
         BqZQqbQ88baszxC//NzB2Jv2k54gq+tcBcOlTP87jLntqAtz0f77GTebCaFfxgRxpvI0
         fwYk47wUN+OyW1+uWE8G+e3IdAireFm/IRNxSQomt+bh1mrhpOfhV5r/SQie1TZrTAsa
         BBRr9iLZbPnkHkZNCYwsUYJ9NGMbp4lcrfR+TChh+w7ixS+2rBeo2gt1ca/adINACvuV
         4cDvMKY5KdHGkMbCj3wFxDdUxcS/jIByBNTtnAqEX4ia9WIM7MkCFoh4aoSF2+kzYmiX
         tIrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CD8O6b5zsHKqtwsQvs+pO6zbaYiDZ7lhEwn/O48BgJ4=;
        b=p6nYdFYgWous/ebLNRRNAMM4BrpgtGCsIdSI/j5Dd0g7dH8mtvHutHtjCOhQfhxiie
         Bn2OIIypVyHuVuh6ZQoZPvm/neizCtsPjReco6PNLigRH+yyYg+24Pz96zp5YJvOuUwr
         D+UY54MxL3X5WHL3+lrTUnZRqYeW8mxRBBpsH8ji5fGt13ZWziRWPKH7JPSbpMtNiyFX
         6NOyPE+vnORyvYFUQZs02VyZmIF7A3PSFpoOQDUWQyyFMHI1y1yTYre0Ilu28rO5iPPN
         cevJguz9EbBe+HO7CYaZfgngCnT5ztluxLtaPavfyIxiZIUON1Bo45xWLiUWh0IflS0x
         TX2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YGvy55Si;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CD8O6b5zsHKqtwsQvs+pO6zbaYiDZ7lhEwn/O48BgJ4=;
        b=CqAbQ17n+u13QpXn78xcXRtlCkskx1SLbdGpq1ZogmQEfptmX/fhRFNKYdXc9CElZn
         X/jmN1UrVhTZv/bn1TK/bgdpqsDeakfWxvbLafovQrfO1etrk7Nnfj5hMWWXnWyTDYLE
         icIPmzhM1fzXoMTNpRySY6eFsz2CThzWcYU1zJgoIgOj9M6nmU/BEm4hl3ReOtbUl+K2
         IFGEdOpx1WMpkZgkpXtNmNSzA3Z/x7Eb2rl81UmqfVPAFfV8yuVeioZ9CF3xnQfRLc8H
         2fYaCKo5ND687Wi5jF1QwyDzrtkqnka8AZ94J3evcuRWbjY+jknmgiFanDf/gupx+aZu
         zNWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CD8O6b5zsHKqtwsQvs+pO6zbaYiDZ7lhEwn/O48BgJ4=;
        b=hh5mpAKjLtvufrsCL3ePnVfTqe9DKkPnjo+wCrpkt5S+ZBIWxEAfwN38X6dXcCC6d+
         71qwdRZUpmrBQU82obSmj9XX7dlAoJdU/GtPBWcqIDpGeui7EugeJoQ0W5Wqaonr14Mu
         kJ80aV7r3F0ya9EIct/2sodoMijfl4J2/0cvaRA7vjChqzf2lF7m28QzQy11DqJOyhbh
         lxwrF4OmPghkhee0IiqccXPqwznXz3R2iW7IdiDOmx1SFgmOEHOKoG/9w2SpjHrbJ3Xl
         QKXOU7N7NoM009OfDOErcMKiU8eW4h7ybXp493vEuOYX7qIfA+UwYcXb858+8v3oSTHr
         28qA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVrj4WBHhkJsGMvfGCzF9IJRay4qLn8glpqbPz3Qu1kbFXHeJyb
	PvIbTAkdlrDhT5O01aT9SqY=
X-Google-Smtp-Source: APXvYqyI60Hbto/GTjrSSFLofeNUj9nA4GGJP0uCsmiGc+Hozh5HXfuA8o2ourM+8AunVHtzV5upXw==
X-Received: by 2002:a1f:9b83:: with SMTP id d125mr9889141vke.76.1563199258272;
        Mon, 15 Jul 2019 07:00:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:31f3:: with SMTP id w48ls1238348uad.12.gmail; Mon, 15
 Jul 2019 07:00:57 -0700 (PDT)
X-Received: by 2002:a9f:3871:: with SMTP id q46mr16872157uad.50.1563199257941;
        Mon, 15 Jul 2019 07:00:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563199257; cv=none;
        d=google.com; s=arc-20160816;
        b=SUAt/TGB25gYe6cuZbf6ZDGEtrI0frf8AEcDLscxvQTKhS7JUM/1B2muUi3//ygBHU
         CjFzNZo1vnY/VYkUN8aDIpbaWH+jhTwi+L2AgDItQXhtUtaBV43X9dKlmdjqesdtGvjL
         R1OagyLD97orIMXCVfCqwAZXWBDP9FyDypc2yVqWQWChZPGp5RAN/9eQN3u/tzVM7AVn
         k0JvavziFStXj3cNoI/dkE9DmfvEFeFC39ICPGwOLvBg7O2BveGANz4HJhZOOoguRdic
         SCfDtoEGG7eundsOO/J3dZOe2zU3D5yK4SboqyvP7CK01wEwVPFNZys/euddF+quGptz
         pj1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hWb/KRodEe3v/FCII9chxl0ue2BqJYib0aSuo6GWeuA=;
        b=qDfN5b0NxlrtVrt/Be2eFyJdow8zq+qKhVOZ33DZ7pJ78ZWpGDZZFnYRWjSBIFJ8XD
         pGg+PyDB9VAewwayG56jwTd9d6e8K9GsOjSExsojM+kE6+/xxXic6vcBj3BX6E0hOmRH
         9hUJBAISni5oyfqjWS/H9NqCySVCY6JgAKOl7MEOq7143/IpVKsAdPaUZo3GCKBZXcmq
         /6AJ5qGOEyU2c/vI/XuhyVdi1heKPC+D+KHeZnK8F5JIBJtWuGHIdKdrVKI7+44Jr2NK
         fxjfXfXANiAOIlMR+87UzXqiWbXMwBtcucQ8NPtUVHUdrjeVAcefQbmbZtBp+LZ1KxZo
         EzjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YGvy55Si;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i9si1109137vsj.0.2019.07.15.07.00.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:00:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EB93E212F5;
	Mon, 15 Jul 2019 14:00:53 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.2 222/249] net: usb: asix: init MAC address buffers
Date: Mon, 15 Jul 2019 09:46:27 -0400
Message-Id: <20190715134655.4076-222-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YGvy55Si;       spf=pass
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
index c9bc96310ed4..ef548beba684 100644
--- a/drivers/net/usb/asix_devices.c
+++ b/drivers/net/usb/asix_devices.c
@@ -226,7 +226,7 @@ static void asix_phy_reset(struct usbnet *dev, unsigned int reset_bits)
 static int ax88172_bind(struct usbnet *dev, struct usb_interface *intf)
 {
 	int ret = 0;
-	u8 buf[ETH_ALEN];
+	u8 buf[ETH_ALEN] = {0};
 	int i;
 	unsigned long gpio_bits = dev->driver_info->data;
 
@@ -677,7 +677,7 @@ static int asix_resume(struct usb_interface *intf)
 static int ax88772_bind(struct usbnet *dev, struct usb_interface *intf)
 {
 	int ret, i;
-	u8 buf[ETH_ALEN], chipcode = 0;
+	u8 buf[ETH_ALEN] = {0}, chipcode = 0;
 	u32 phyid;
 	struct asix_common_private *priv;
 
@@ -1061,7 +1061,7 @@ static const struct net_device_ops ax88178_netdev_ops = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715134655.4076-222-sashal%40kernel.org.
