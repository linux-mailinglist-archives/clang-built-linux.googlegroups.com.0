Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFMVWLUQKGQEGX5GEDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B77068F96
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:15:50 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id 199sf14193360ybe.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:15:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200149; cv=pass;
        d=google.com; s=arc-20160816;
        b=sIA7hwW+FNecZ26yIAZLI5Rf2IRZsRTquwy1+mh6CvRsC6Cmyi6ZhLKXqx6+D61L1W
         KJCLUfaiP5Xd4KdJ9PqctTrYa7hDABY+94SsKQdaMBq5n0MPg+38sKYLRcBbHPJ+5L3q
         SpyACq6gZFWnxfJDhw3VDjX0+mPLVcfK0zUyEZ3EkIMR0RyVWUnPz/0TB4m31544Zam+
         Ky7hgBnXdJKSqi5lI4upwVqgcaU43wYQd7++FB3j+LXxzVCNmJu6YX9XVEAGnL3XlQDJ
         J23FOC2lempPCp5JKrODow+MFZZZSAHpnRNlDz/B39X6ABoZQHUg7//A/Fvjb1iQ8P6v
         Fr6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6MbjKVuDr+k0OyglPrROxQz1isT4okIiX80vuSUjw00=;
        b=bcQ+wZBk5+MZgQwSnhJ0L+bryrxBpFDpX+XnGd23H2gyjs1/z9CbwrB6ZeMbsp5lGS
         jfnn+1zxwI/UK5SpIptsVXu24M6PZadl6Z9i2H3mSzkd5DYUzXQ2dnLb7XkGUe6tAL4F
         wTRGWAJ+whCNMKqlLTL+Ts5a9ZBbO5vneUztKi76xUpHAIBqoXZDjzLhstuuj+pgPLm7
         z8adARoAHc9RlK/WdAVjIRt5yEwZKS+F3g8gzgsPOQGjrvCxoiZ6oz/VupmVGU5/uQxG
         ghhpcSEVeEvVSv/iliD0J/3he7748xDYgXi1VtESlecUN0yHadPm9EZ8o0v432jLgszV
         DyBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=005O3z3A;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6MbjKVuDr+k0OyglPrROxQz1isT4okIiX80vuSUjw00=;
        b=mffUoRHhT96+1RC58rcC7OWIXOEHsXElh+EHMm7hiUzfqmA+6/JHQbGn/t5WuGdE6S
         bBkZasZkg6he11Op0s4CjhkbA4PxAAhrRQqTwBtD6L1518I9fMhDvgceGJQQvNTNcXug
         FfkHP/kkuSztonhUmUAGXJMlrw0efUFUiVbWpItnD7aqcQ4W8uuxELptVSV/zrdDzIdY
         6f1YviRcWPFxAKLYMuD4yw8zhG9ABm9BZp25MAyB5Hvo5efY1X3FGkiijo0Rwzo0PRfW
         TGEl5RmF1BqGZ1aV4HAdna/uCxyfx8G7xJsetQZ/v8d1ktrPEXyjucqzKKG5voG/emAL
         nkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6MbjKVuDr+k0OyglPrROxQz1isT4okIiX80vuSUjw00=;
        b=bfN0Fmb9aIHNeFKoFc6RxnlEmlohrVJQRexFr1kBlFGWL644HQlWX7qj2+Qfxh+x6L
         t+IHL/DtEwlXRXcUOeVSnlVGFGbDJ1T8Lb/p9rTWfSpcDP+I7FZNkARzZ9ur7AbIlkkF
         CCBCTct9jJoyuSNKNg1EYB0Rgfkjw9O0TflI5b/7ZwDsOLRAQel5pCPfZNRI5U0NWFyl
         Wjn3+BRZt8TIAaWaNP9URfC221nT3J2CxwYRsHeP+t5MjLMgORV3gRyq1SGBreC7fZOd
         RF5CYvyxKE8vSpKiIBvB6jvyht/oRleMlUJ3eYOoT6NqVjMMLujStWlZloxl2VRrDpKV
         Nn2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVBqnJY10fmShXsJakqPu8UY3z6TZDEjqh5Lbzs4rIg3qUkPwXO
	l/ns71RVh7OK+OE8OjMD8lI=
X-Google-Smtp-Source: APXvYqwaViNE7W6NqiLZo7L9oOAdLQb+28XLlAoUNN3AS61qSufZ46FYLHv05RCyx/DkwBFM8u6T6g==
X-Received: by 2002:a25:2207:: with SMTP id i7mr16192729ybi.57.1563200149140;
        Mon, 15 Jul 2019 07:15:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:108b:: with SMTP id 133ls2232368ywq.0.gmail; Mon, 15 Jul
 2019 07:15:48 -0700 (PDT)
X-Received: by 2002:a81:5287:: with SMTP id g129mr16704701ywb.61.1563200148859;
        Mon, 15 Jul 2019 07:15:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200148; cv=none;
        d=google.com; s=arc-20160816;
        b=m4X2yR+QrINdvVQbl0BKytZWEPhezwHOtgLGOZyreYU0C1ZHm0tW7dvZfN4UzwNxlk
         y3mC9YifwkUbPQ6q0jyrBrBeg9VfmMwSyvznrfJ/OK1JYcrErc32vIo4ju58PUdRaowB
         XvbS4Gzgua8KsXHkIEQB/NMmMm0RhYiKlP5PSSLQ4MGfJhTlrbTUUrOZvwFeJNdW4l9R
         DN/W82RJLM7dBmOWzPE2GPQedFQiUkKz10cZAauPLaqWV/EW25C6c6E8H0j/XYBR/Ji7
         rUQySeLX7eaIQ9XBvpo1yCfJVtcpvKEzlJtRRiqq57ZOI8m+YNNHcMz5QFGBjagVtAdr
         Yf6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HdvvVpFaCNB7vdtuVQG7hINe9MJAn2ANRwPnNRs2ziY=;
        b=TARfliqPXQKvj6QiDqsQks50xQWOVf5IvD2JoTQIgZqwKf3x2yH9RCTtY5TLyAIcF1
         hhG9WDgWFDQCSiSU1IytufaS/djY0cOBDbcXwef68d8j6BRhB4ncsRWEZ9CjkaKd6le3
         zICHt5H1PRltmVVEhm82JvjNoXk2+CY9ABmIc51DCmU+2JF3mIDKi7JXri+i9vXYrSz7
         l5Aka/J1AFIqmqqPcU+13d5zRn+BuJ0fXmP7oy8K1iymULkGqWo0gnOwUHY5tEG5ILE0
         wRcuwAoEtdAmXHeibhNTMwwSc7U+qhIK654tR4g7e4ulX9qnlpbViBtzhDVLtKOzkYeu
         s6dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=005O3z3A;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g15si864275ybq.0.2019.07.15.07.15.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:15:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1AF8220868;
	Mon, 15 Jul 2019 14:15:45 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.1 194/219] net: usb: asix: init MAC address buffers
Date: Mon, 15 Jul 2019 10:03:15 -0400
Message-Id: <20190715140341.6443-194-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=005O3z3A;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715140341.6443-194-sashal%40kernel.org.
