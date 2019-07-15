Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBP42WLUQKGQEYROJMCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id A95FB6912A
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:27:13 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id s21sf8353534plr.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:27:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200832; cv=pass;
        d=google.com; s=arc-20160816;
        b=WzDRbBRVDx5EaUmsrraCsQ0xRiPGEG97JEJ509ZT/NmZftdrK8Pf1BrjVw6Grqr7Ke
         pqoPRtycCLsMk+2WrBM2Fp4kn8i32E59HtGh0Y/Bn3CQVI++724vm5w+gWOhhs36vOYT
         +g8AOThRkopv/05PpSIiLDkrEog7Ik77r1T8a/s52CQl5xxfCAuA9z9EYNH5KE0Wdt4H
         VdM7MbQdevImjI7qSt1pLzGI9adg5vS+fc/Qtg1bI/UmbkV+jumNmOef8S/xeWf38I26
         eEFc6hl6aAJy1yTxuZizrDgAqL+LjjWgn6lU2+7+Y91nGSITii/zoUUbsc7OxakKo1j7
         QVUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+kgp7LRdJ6/8WxSx235dXQQasUVtMkY/Li+Xml+Ubq4=;
        b=gGPY8xg525t9CQu6CaZO74khauiVbO/nHNx08mF9SsD4gBZ78zoxWtn57dAUY6lQ90
         uQsR+srTPl+24E0Jkj9jz7iGhpmq7cYzfw/Hnl5J/fEdd1E/wUE0fT2b9pM9K0pVrc+a
         kHXhEKGnKdnOZTnlomsKKxCnNbOYeaB7AG9FNympe//384izyy1wuezkFJAiguGof6YS
         VwVs9Gme7EI63aMwZY8wl9JIXsZg5z5K5ZyKYpmBpf6U9mgZGH3q7JEh1HHFx0l2rdvX
         WG9oKu26Oz0jbcUEqMQAj4+KPL+lMnbeSdgKZ9V2TO6Ob42K7UtwRT9LLQZTAymQoHmC
         vdWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j+MDXF02;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+kgp7LRdJ6/8WxSx235dXQQasUVtMkY/Li+Xml+Ubq4=;
        b=NGE8w30Yg2pYfpfk9ZUdjajXJlGFne8YVeSirTyjM464tPcvO1n/4ooRVP0uH1MxN1
         4DI4kOWAsSvFbaHJZVB0d1Xvk4RBB7vEpwcpOL9xG+uKvjg8bdHuoYptEPnahQCifM0z
         luhgG7NpOBwW+4HUJ5H3yKGSjefdD0Gc997zYQONmiTfklPAJ/pD2EnxbfNU1c/A/KII
         DJ61GN5oT779Lh+lx7+7Ci8LLyPy2VroDAXevwpnmJuA5hGEw35qGv8IaHoZ/la/pz1z
         JghHUi94vjuSCFYeGNxqlG6wlI7EKUdXJBVtBzBMp7064PTqVoUDwBFrbxQxPaY2oH+8
         AawA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+kgp7LRdJ6/8WxSx235dXQQasUVtMkY/Li+Xml+Ubq4=;
        b=uQIOsB31G2DFRyYySnphiMcrv/UT9+H9UB5LaTKlzys+Ohbgvvqy8nSbv4pjuVXQMV
         ibcp4hloqJxDsYI6mixGmxtqbJky+WLWqTOZlIHdAymud20vQTb7s7uK3UZGGuc6l/LN
         L5ulf728/Y7CyYC0BLE73eDI/9WsXUIuY8BrTQKNpadgVVhLt8o8aPAAVRqdwcarDk84
         mogz217Pxk0GCNA5UM+QlmhTGiacvxu5qz/Kt9KTiXRNCQ6zPY3cFvTqBdwnlS4ffpw6
         EbtgibwvdEOnjmMErvfpLmUdBZT0Z7w/zmZuV33vWiB3G4JLOMvsGnJ66KpQeIGYvZSk
         /8Og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsymnRnKpXuo0Dh/aRTHXn91WuNXd3SwQ/beDhSOd/RANNm/cX
	0agJAHiaXLrjwE7hA25mqUs=
X-Google-Smtp-Source: APXvYqyWjEW197e/a3gWnXeHE5n9szb05KtqP0U/Grmv7z4pzaaVaLsfzXg725mW5mNv789w2RLEiw==
X-Received: by 2002:a17:90a:3590:: with SMTP id r16mr29961493pjb.44.1563200832034;
        Mon, 15 Jul 2019 07:27:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2acb:: with SMTP id j69ls4552967plb.9.gmail; Mon, 15
 Jul 2019 07:27:11 -0700 (PDT)
X-Received: by 2002:a17:90a:a613:: with SMTP id c19mr30227349pjq.17.1563200831836;
        Mon, 15 Jul 2019 07:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200831; cv=none;
        d=google.com; s=arc-20160816;
        b=t89jypp5Xr0us6WY556O+UAAHqePJu7TEtiYvwbSN/KVbWFOQwvV5B2YCTKHnso7bx
         SgB0RBdUgsmdI8FfH3B7X0kS74fOr3n8tIGzxve000EYR8Qy3GhkKH1TQF6Sx+b6skFJ
         dlHUE2dzzVfWCSXkL5k9ecY0osciUQ2kAAIr8e7bCiyChB9m6K2J3YVrzLhdRFAh3JYf
         qh3nwwp/umACatyeEUt/MhxfW3CBGg8mnNbnhFI0Dll6tZXtu+gCjm8EqlBEV5aiKP7z
         uCkqOCFfsY+WdnGrVo+pcgi/ckbkrBYy3wa9ztX+VVVxy/4L8R8Qn7WqPGuaPt9MlKeM
         FMLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HdvvVpFaCNB7vdtuVQG7hINe9MJAn2ANRwPnNRs2ziY=;
        b=eMP1ynJ5+5EBGIBRDnpJydBDWH1CosIMsHrrcN/Dk9MaXCl4ZDm6eMqVpFm0wf3hZ7
         8lucneMe6hFNkS395KgNmPspELLyaBnBxn08lgweJzzE/9hSFh8yJ93bzEIO3cj9zz7F
         DN9Vn3cKwiY6bW3ivs122NKDCZoOS5KyRSVjxa3j/6pU7rY79N2MtknmkFAgJ2KLgbCk
         FRAXv//op4Oa1JXfq7Rml8XOKnSwfJ4s8GrXiwvGvCOzJsMfD8zipehhndbt1B7F3uKv
         PNy21AMz5Ztwm4vyn2R4/vU3BYtG+HvGkZQCTQEhQ+cxEOir1tc/SYzibdkIksw6Oy+c
         PblA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j+MDXF02;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id fr4si953942pjb.1.2019.07.15.07.27.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:27:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A8251206B8;
	Mon, 15 Jul 2019 14:27:08 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 139/158] net: usb: asix: init MAC address buffers
Date: Mon, 15 Jul 2019 10:17:50 -0400
Message-Id: <20190715141809.8445-139-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=j+MDXF02;       spf=pass
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
index 3d93993e74da..2eca4168af2f 100644
--- a/drivers/net/usb/asix_devices.c
+++ b/drivers/net/usb/asix_devices.c
@@ -238,7 +238,7 @@ static void asix_phy_reset(struct usbnet *dev, unsigned int reset_bits)
 static int ax88172_bind(struct usbnet *dev, struct usb_interface *intf)
 {
 	int ret = 0;
-	u8 buf[ETH_ALEN];
+	u8 buf[ETH_ALEN] = {0};
 	int i;
 	unsigned long gpio_bits = dev->driver_info->data;
 
@@ -689,7 +689,7 @@ static int asix_resume(struct usb_interface *intf)
 static int ax88772_bind(struct usbnet *dev, struct usb_interface *intf)
 {
 	int ret, i;
-	u8 buf[ETH_ALEN], chipcode = 0;
+	u8 buf[ETH_ALEN] = {0}, chipcode = 0;
 	u32 phyid;
 	struct asix_common_private *priv;
 
@@ -1073,7 +1073,7 @@ static const struct net_device_ops ax88178_netdev_ops = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715141809.8445-139-sashal%40kernel.org.
