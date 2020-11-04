Return-Path: <clang-built-linux+bncBCNODNHUQUJBBDFKRT6QKGQER4HBDXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EB72A6F3C
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 21:54:37 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id b10sf10678019qvl.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 12:54:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604523276; cv=pass;
        d=google.com; s=arc-20160816;
        b=ilf8++xVVcdHZ4QB2TZGtzGAsrHg8n/+uYqSjcbbQbMvqpjzymLeW+ueUYw7QY9NfN
         WQEnpqf/MearmWlBds7Sgd6i7JSCUtM99RoiVixgIlgZKkRzaOdw+5nIktA/sjjLZ6QJ
         6h9vU/9kCCrbSg3m+ar4tJjbKpQfXZh9E+D6I44o9qs1JcfwjS93At6ebFCH4Xyr6g9H
         kWeDQiwQrzGDtALXmfsJxOh9HSORhi7JgUNRE345wCuiiDqwwM9T59stbGWD8w/Ye6Ry
         Bl909iy3w8FwgpjXJ9RGRMGc+Y9Q2GmIwb85Xo0nNV4oES54Cr+Y4tT7NwclKriPc7L6
         mRlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=V36Pd2/OlvWmKHHYfobdBlE4P3pO0r0ZCqyQrcoETbo=;
        b=KDPY4Q12haBA5tCspVWAe5ITA2QJrAF0D/WEBca3RmDF9C5rcue1IMC4pohzC+Csfv
         9X4fHm85AyDhfWDtqOlu4ZAIPWMfHnRar9OXfuEe/eH11p3IXLBaEaEzShGKZpkzaVAU
         S2NRb6we+9/wspP6v8w0eNAN2Kzz9H5y8aFlnrEmzshDqzBv15186axSmAZuB1qW01bV
         EycKH8KE6j0VT73S3hiTEKT3wBPLScNdnDRgckOepoC4C4PMkpwI2eRpItYHqqNDD6Wh
         IcuYA47PHlEsZXuYE+xBLPUtpKQjSYSKzRObDkmQvdVC//ja8xCIyDrX7RYOl14cLKgn
         adBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bvF6fIPU;
       spf=pass (google.com: domain of 3cxwjxwkkamq2k1k5kxkuqyyqvo.myw@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3CxWjXwkKAMQ2k1k5kxkuqyyqvo.myw@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V36Pd2/OlvWmKHHYfobdBlE4P3pO0r0ZCqyQrcoETbo=;
        b=VjwoitqGzk3uSDH6dH1B+Hec4TfMSrvEbyk/KL+yhnsMPK3hR+qC7lpYB/Ow1n2Iv6
         qtN7/PW712Ofvny8SSgB3jssybFZqaE2T0jZLctVJD/a3waWoiG07d6MvAygtuFnpSLA
         BVqHChViH2Prw1d+u7HLPYwGYBCAy21x4RA7JtJiimN4s7BHRGilhdcjpt6kBxInS1mC
         I9IYJRyAQBy3gwx7mOn4X5sYyj74VL459ilzW0l4jnpZzkcDZKq80pMPH845iRfZOhgR
         QUznrGiTG9BYGBJ7VwPlhpVZIFF8MeOoYew3Ep0Fh3H6pSgy71l6l8mJpI73ErPuqFe+
         s6Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V36Pd2/OlvWmKHHYfobdBlE4P3pO0r0ZCqyQrcoETbo=;
        b=C0XviMbgIIYp4rm1BZ7bBNdCOqS0ZV4IlwY7Dy5PrfPcQ2pSuPqNdQ8VsHXifdNE54
         /w7waWjekZ+cluWxH9On7zj9fRM9bWv4BrJ/5Hn+XWaFOcklHA+QueYNpAT5H9yDTAgU
         cbuldxG38iAAYbaOGbyxl6tpQ8gjco++Ia6KKNlDx0zb0tm2bR5TfmvZqwKpKoIFWdOD
         V2XH93+EFw8goFcqU3lhHlmBVxVgmxQWH5SMlXypL0IkdnhHn0j1rYozEOu3nFwem3D8
         K7lZauqVOZxcMpTWI2isdqEPXFkVae+CW9xZ54EpbD80ZtkwuBuqBo6zdA4Cn/T6hLBw
         gawg==
X-Gm-Message-State: AOAM532StOB3HQ+2Y8c3SApG3DeQhLb1JWGijWQC6dCP2iHjP58IYqtS
	AfGyG67iGHEdpaZ5rc3Jxxg=
X-Google-Smtp-Source: ABdhPJw/OPegWPYGZiWbfGqieeLD3ONcNOsYeugPKF6H0s3jgpLFBgtqDtu4ZLxNP/lD2MaSUCgGww==
X-Received: by 2002:a37:38d:: with SMTP id 135mr42631qkd.316.1604523276460;
        Wed, 04 Nov 2020 12:54:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1248:: with SMTP id a8ls1903245qkl.11.gmail; Wed,
 04 Nov 2020 12:54:36 -0800 (PST)
X-Received: by 2002:a05:620a:408f:: with SMTP id f15mr47400qko.276.1604523275963;
        Wed, 04 Nov 2020 12:54:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604523275; cv=none;
        d=google.com; s=arc-20160816;
        b=ug3ohdNFn9jZyYXPpHfDQ0pPDLgnLPJ3T+/JYQ9bsJEtm+nmSz5rynPqFmztrxGkmn
         Zx3Jo5avSm8tkinPOio9Co+C6c6H1iLEEOd/Nluw+pKvyirvZhVyE5JPkFZqeiWoazve
         lg/DfWd3VMW/DSaiv3lVfP3HQb0w3wJ3wLYqxGHZE7gXXnIEvG5vMnPjCLpG3H1GBAJ9
         boDRbHOPqAmzQGe3SzsafT6d1x+oYPcSB/2IB7rvdBX7E77Ru8DF0DKrJKTP53yW9Nzb
         kfJj763gDLGfOAscG9mRamlVzV/yuGU/ZVLgFs25keyCUjw9IDX8jW1NXqF+4Z4gGymZ
         0BOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=1vvOIzzfmOs0O6boLgQK9QNpOZbt5lBlooJwBHQhT2U=;
        b=0b0a5olBEzY8yevZWAJuICzRVhqLmR53P7rM/VSYl2VE1yARxzNCIpzrAilk39OvsW
         8BOGDfOoFIOyqwZZupX9DZtMSAVSBMba87IKk7huTlaMpw5Bn+3wKbH8IIi9bARBSQNq
         wbzSAAdZlghDPuzbqf1JboSg0EDRQSEGjW95PAnOmuZnl381XsRQLoarYlqcnBZmcrJa
         3bgNCZxqA14yONxtj3pBADhxfQw84129zDmjjasmoLgfLzjCWoMumKR2sDrczaj2mAyV
         DB4yadt4YpzOwFtfBBVI4vuCLZSmdauWliU/sF3l/wQoG28ZsB5cJiP3Sx4ewBennfmM
         vMjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bvF6fIPU;
       spf=pass (google.com: domain of 3cxwjxwkkamq2k1k5kxkuqyyqvo.myw@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3CxWjXwkKAMQ2k1k5kxkuqyyqvo.myw@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id t14si42656qtq.5.2020.11.04.12.54.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 12:54:35 -0800 (PST)
Received-SPF: pass (google.com: domain of 3cxwjxwkkamq2k1k5kxkuqyyqvo.myw@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id b10so10678007qvl.8
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 12:54:35 -0800 (PST)
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a0c:9c47:: with SMTP id
 w7mr34820545qve.59.1604523275590; Wed, 04 Nov 2020 12:54:35 -0800 (PST)
Date: Wed,  4 Nov 2020 12:54:30 -0800
Message-Id: <20201104205431.3795207-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v1 1/2] driver core: Fix lockdep warning on wfs_lock
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Saravana Kannan <saravanak@google.com>, Cheng-Jui.Wang@mediatek.com, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bvF6fIPU;       spf=pass
 (google.com: domain of 3cxwjxwkkamq2k1k5kxkuqyyqvo.myw@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3CxWjXwkKAMQ2k1k5kxkuqyyqvo.myw@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

There's a potential deadlock with the following cycle:
wfs_lock --> device_links_lock --> kn->count

Fix this by simply dropping the lock around a list_empty() check that's
just exported to a sysfs file. The sysfs file output is an instantaneous
check anyway and the lock doesn't really add any protection.

Lockdep log:

[   48.808132]
[   48.808132] the existing dependency chain (in reverse order) is:
[   48.809069]
[   48.809069] -> #2 (kn->count){++++}:
[   48.809707]        __kernfs_remove.llvm.7860393000964815146+0x2d4/0x460
[   48.810537]        kernfs_remove_by_name_ns+0x54/0x9c
[   48.811171]        sysfs_remove_file_ns+0x18/0x24
[   48.811762]        device_del+0x2b8/0x5a8
[   48.812269]        __device_link_del+0x98/0xb8
[   48.812829]        device_links_driver_bound+0x210/0x2d8
[   48.813496]        driver_bound+0x44/0xf8
[   48.814000]        really_probe+0x340/0x6e0
[   48.814526]        driver_probe_device+0xb8/0x100
[   48.815117]        device_driver_attach+0x78/0xb8
[   48.815708]        __driver_attach+0xe0/0x194
[   48.816255]        bus_for_each_dev+0xa8/0x11c
[   48.816816]        driver_attach+0x24/0x30
[   48.817331]        bus_add_driver+0x100/0x1e0
[   48.817880]        driver_register+0x78/0x114
[   48.818427]        __platform_driver_register+0x44/0x50
[   48.819089]        0xffffffdbb3227038
[   48.819551]        do_one_initcall+0xd8/0x1e0
[   48.820099]        do_init_module+0xd8/0x298
[   48.820636]        load_module+0x3afc/0x44c8
[   48.821173]        __arm64_sys_finit_module+0xbc/0xf0
[   48.821807]        el0_svc_common+0xbc/0x1d0
[   48.822344]        el0_svc_handler+0x74/0x98
[   48.822882]        el0_svc+0x8/0xc
[   48.823310]
[   48.823310] -> #1 (device_links_lock){+.+.}:
[   48.824036]        __mutex_lock_common+0xe0/0xe44
[   48.824626]        mutex_lock_nested+0x28/0x34
[   48.825185]        device_link_add+0xd4/0x4ec
[   48.825734]        of_link_to_suppliers+0x158/0x204
[   48.826347]        of_fwnode_add_links+0x50/0x64
[   48.826928]        device_link_add_missing_supplier_links+0x90/0x11c
[   48.827725]        fw_devlink_resume+0x58/0x130
[   48.828296]        of_platform_default_populate_init+0xb4/0xd0
[   48.829030]        do_one_initcall+0xd8/0x1e0
[   48.829578]        do_initcall_level+0xb8/0xcc
[   48.830137]        do_basic_setup+0x60/0x7c
[   48.830662]        kernel_init_freeable+0x128/0x1ac
[   48.831275]        kernel_init+0x18/0x29c
[   48.831781]        ret_from_fork+0x10/0x18
[   48.832297]
[   48.832297] -> #0 (wfs_lock){+.+.}:
[   48.832922]        __lock_acquire+0xe04/0x2e20
[   48.833480]        lock_acquire+0xbc/0xec
[   48.833984]        __mutex_lock_common+0xe0/0xe44
[   48.834577]        mutex_lock_nested+0x28/0x34
[   48.835136]        waiting_for_supplier_show+0x3c/0x98
[   48.835781]        dev_attr_show+0x48/0xb4
[   48.836295]        sysfs_kf_seq_show+0xe8/0x184
[   48.836864]        kernfs_seq_show+0x48/0x8c
[   48.837401]        seq_read+0x1c8/0x600
[   48.837884]        kernfs_fop_read+0x68/0x204
[   48.838431]        __vfs_read+0x60/0x214
[   48.838925]        vfs_read+0xbc/0x15c
[   48.839397]        ksys_read+0x78/0xe4
[   48.839869]        __arm64_sys_read+0x1c/0x28
[   48.840416]        el0_svc_common+0xbc/0x1d0
[   48.840953]        el0_svc_handler+0x74/0x98
[   48.841490]        el0_svc+0x8/0xc
[   48.841917]
[   48.841917] other info that might help us debug this:
[   48.841917]
[   48.842920] Chain exists of:
[   48.842920]   wfs_lock --> device_links_lock --> kn->count
[   48.842920]
[   48.844152]  Possible unsafe locking scenario:
[   48.844152]
[   48.844895]        CPU0                    CPU1
[   48.845463]        ----                    ----
[   48.846032]   lock(kn->count);
[   48.846417]                                lock(device_links_lock);
[   48.847203]                                lock(kn->count);
[   48.847902]   lock(wfs_lock);
[   48.848276]
[   48.848276]  *** DEADLOCK ***

Reported-by: Cheng-Jui.Wang@mediatek.com
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 78114ddac755..df35b3206286 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -1064,10 +1064,8 @@ static ssize_t waiting_for_supplier_show(struct device *dev,
 	bool val;
 
 	device_lock(dev);
-	mutex_lock(&wfs_lock);
 	val = !list_empty(&dev->links.needs_suppliers)
 	      && dev->links.need_for_probe;
-	mutex_unlock(&wfs_lock);
 	device_unlock(dev);
 	return sysfs_emit(buf, "%u\n", val);
 }
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104205431.3795207-1-saravanak%40google.com.
