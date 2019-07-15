Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7M5WLUQKGQE575DEJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEB1691F0
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:34:38 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id h67sf14234518ybg.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:34:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563201277; cv=pass;
        d=google.com; s=arc-20160816;
        b=lykocA7LsfA3lWkc5bDqfv+tp2lqM/DuP3G9BHOdb9chzLF1eUBe/tbBE6kg/k7QSt
         nN15uWbnLryTjSwYpZEthEn63jYIG9pR6Kn7Tue4Cf2vUPTmNiGLOKurU873cheRJMcy
         MfReCiaIHGnAiEZtsczL5Pm1rJOwheGemQ+JSK0KcLSBwf/Rh9S/i0VOpkbP238dNVtT
         Nwm9U1NZD+F+8tcFqk9YG/BJzHNUgTuzcBToSjYwlm0Z+SOthKPk6R7mJ/X4n9GrydoE
         NsN+vIV8QYLYW8vT5CNaReFHRW6g3mCROcsY5b5AqrRFPZL0kahvh14HosMONCp4qK6J
         LaAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/9YnB/MJB5bI5d40uCCE30e3jSRaTNVZ1167ALD5Obg=;
        b=dDvffERqM8rZ0knfF6+ALpVnnTEZrJ1GLW2lUXaGAv+tfEiQ667m/p/I3d4t/XaCMA
         DHnupEfPCsa3vOpmks4fZ221MjmVO5sF/fpJ1xYAuM1gsZphZwigK8oYfS4OOXeJVBUK
         odxXV0d982/TouxDKjVvvyVVT7xuoCHEr5hNgxdVfImNh5P6DlUZReRrPoQqPeieHYzj
         LId+ILxZWvJohhbmYb27zeGAfHxkj3JeLmI7pk59eiPK6vWZONvU1U8QCgTJHuypbgFZ
         ERC3yDxkuBB7GKtT0luPF2V6LVQZC8IypuKV2FiOTcRfslyPq31KbgtUloX3eEoKtmx9
         zLnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gInT6q9i;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/9YnB/MJB5bI5d40uCCE30e3jSRaTNVZ1167ALD5Obg=;
        b=NbXoTOfN9RGnwBGU0olz2zepdXJKpsUFGQBwj7NKhYnmnUhVjA29cgFuB+M2AEWs2/
         FWkgI+I57tq0eTNhosUWcph369H3VpltvBvOiavy5YWRixlR/YJIsaTXJQ94NWfFAfoI
         4esBdIy0RwhYaai0GU8Z/DttZvElOBrrR98/3xfBB6QmmuVwEJPzFz0RgKrVtOmVXFPH
         H7eKsohoUWAd4/uT9BROxEJkpZlopmR4k60bdPjmnn6m7GsUfMoPDzhRxeUuXrAy59iM
         97aSJ6y2mUGhj73DIQZuRtrbV5dPotyU2btnre2SaVSGKOa5yC5bg8kxy32fcX4jdFxW
         CFsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/9YnB/MJB5bI5d40uCCE30e3jSRaTNVZ1167ALD5Obg=;
        b=mcOEJAfLzUlQJir0QySzJqUU8DAKvSkJnnVsaKSUC+6XQjTroiIT6An98jW6aVpgPh
         vRrDX9Wtk51ju+yfUxC0mjcUI/IwRxftvm6UyGrkD7zGsM4dFS4aLqlospsoowc+gPF0
         GwEbMrvw4CnaqQRCrYkRnIs+Gs0w/YpeT5if1+XzfkMH0fdZAwGM9yVQtgeq+qUG+u4y
         39kGsAY7GqP51T6/IxlH5SyPBtue1iHJC6U02pNwW9w3/KPL6vHaZs4UT7T8uFWriFQU
         vDvb4wlRBjpvdgzXQD9runczcf/oII7boEVP1jXB61czENKhztNWMW7tgLVflVggNL8u
         AFjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgGqPtDQdt3UPmzmh+6MGOiqVjq2bZfRt5manns6Fa8otp08Yz
	2bgNK0GysFq37giKs2rAg0c=
X-Google-Smtp-Source: APXvYqy8smGXavz5GcyXh08Vgnpj2EQ59iVQYvfccRJKZ9sevvGkzJazgKX9WF9CzCMmDbXJxr/GoA==
X-Received: by 2002:a25:5f48:: with SMTP id h8mr14944338ybm.231.1563201277702;
        Mon, 15 Jul 2019 07:34:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:14b:: with SMTP id 72ls2236415ywb.15.gmail; Mon, 15 Jul
 2019 07:34:37 -0700 (PDT)
X-Received: by 2002:a81:8242:: with SMTP id s63mr16939308ywf.134.1563201277476;
        Mon, 15 Jul 2019 07:34:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563201277; cv=none;
        d=google.com; s=arc-20160816;
        b=rogVlE4zhm0GPe8kQdnhMWa6xaT/PqOWtCXFDGgI5TU/aYGH7Yim6hX42tjx6i7hng
         ucJq6JhUzNa+viSWqJolv22h8Zpf5+SxgzRZ7lym50s3h1QhSELXK68IGnDMpF5kA2Ya
         ASUZCh4wneToAysbWLgFDE/yq5pF8fJKrcM+ksGlofDVe67N8qLltZr1t0EQvF9iqpTV
         C3z7GLbDHjSscFxl6vgrulh6zk/phKhZBxF9ZOvgT1N9ZH8/ptd6lX6LmxZPq5VZLVx4
         c5uG8RXffa+S2r3ucFuZX2efPWeSHnQLCoai8Ft+l/ICHAdyBRRtOPRR/eJHvpV8Atyd
         cQeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=U7LXLuqCtElqCQ7cVu+Q4oApXDXvKx7Umi5DgY3hQ0w=;
        b=SMzfjiKGx+Y4lAEbIYNsy3Aps6gXsipwO+27B+tCiMJRHCbtTLoAJQ+ep+1N76Vi2n
         yZbTIHoW2ES7d6cm1xSjgSZ5xDmyXYdCr+E/hgMwUd+EVtWghFS5/v5KZ4+ChoxNUDQG
         S+t4UavncyNmaNUW3+u7J3BKVhGgrUIozVZVB6SYTrYVBgXcJJ/gGYI+4t/rfzX7ZXvi
         7lYuOFz1fEfbSKtjezydg/7wVyWjf4Z1+8DFR1aybrEf1Rs1LtQaUSpLAvp9HNit1muw
         CKcpXHfxA8iBuDecNenZoF8NYy52L3uExdKi6LFKJcLNOmT+y+I6a9+Qp31b+A/W9mTm
         bUZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gInT6q9i;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v127si833121ywv.2.2019.07.15.07.34.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:34:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6D388204FD;
	Mon, 15 Jul 2019 14:34:34 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 094/105] net: usb: asix: init MAC address buffers
Date: Mon, 15 Jul 2019 10:28:28 -0400
Message-Id: <20190715142839.9896-94-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715142839.9896-1-sashal@kernel.org>
References: <20190715142839.9896-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gInT6q9i;       spf=pass
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
index d0c0ac0c3519..9b751d4bd327 100644
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
 
@@ -1065,7 +1065,7 @@ static const struct net_device_ops ax88178_netdev_ops = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715142839.9896-94-sashal%40kernel.org.
