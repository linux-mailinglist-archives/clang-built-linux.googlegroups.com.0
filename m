Return-Path: <clang-built-linux+bncBCNODNHUQUJBBF6RYDVQKGQEM74JYYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 204B8A94A6
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:11:53 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id h5sf13896752pgq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:11:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567631511; cv=pass;
        d=google.com; s=arc-20160816;
        b=LtZpwh20S7RxqDjo/DFDSOnlhaKn0MK83YEPE7VGG/8SwNI5zLcLWDGz5kJdhpdEow
         64VA7sG9oo+KPUMgkLvIwvWw/tlC6IZ+bQd1moJq7n5noevuXcPWhrsZExQ+s+4E2EiX
         l385LVPNG8ewFj67Q+SU0iqZKPKQsA6i2449V0YrOCA9ubF7NzpjWnKEsnPZjFS0MnzZ
         2Zg+0w8HxgArdmT8kqUELFl0OHKxORHr+KQH/h0DykTW1Js4XB5RQ/5p8KbPyuBatAZm
         Gr89HLiGEiJjU6uuaH6VIE5QMFIkNcWkAI0H8dKY6hv3K5q1gv7iiI+T+DIVtt/fI30p
         0BOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FhRznh0WCM/Cimk0UboNsUNqXPc1QzYgovChi7+0sI0=;
        b=z7Lmn1I6phTz9Bk/+E5VGGki/CFShyLsUiMQqNevCqLir9Bh+kUChGOUjSTdV0ovHK
         Tx+YS0VmE9O87Tv4faeQHhtivmD91KhMSerVkf64prLxCt1VMumcDxnZ9rl1p2a77MaU
         dDjPLc72y84+YMlCBn1W9XlPRj+QPjm+UELj7LB3UMXz6v+pcwLO/QZaBFHcD8tdRdBp
         E/p8GVvl6fgQ78zYvb7e1bukRiLSpTLIwYvmmnDLdf6FiI5FXVWlYZzDSx0e3XwMLJLB
         ocsQ3lQOin6lsuIAOxUSJ1yCmFMOMkxua7Zapc6YSsdOnDShi+RCKjZB1Anj2goWTraT
         Z10w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TH2xF9mp;
       spf=pass (google.com: domain of 3lihwxqkkajkl3k3o3g3d9hh9e7.5hf@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3lihwXQkKAJkL3K3O3G3D9HH9E7.5HF@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FhRznh0WCM/Cimk0UboNsUNqXPc1QzYgovChi7+0sI0=;
        b=WKJW5VJn/qv595zUST6wIwzexfbT3UFYCGpDO1TFj7UFHT7V4WXSgHXj7EVgfljDGa
         NFqFwEGQxM52+8UV6h6b4lH5hB87q7QnotebIKIJ/GZvJpmxOFlHxL28PJ4JgtiprEF5
         gsoWv6qFfvEqBj64LdFaOT8kbKNiK+asQju8BpTUcVOkmeWJ3jHVCMX0YEL1FbPL7poZ
         2atM+hODPMzklzfAdfqDa8y5rbnIns+r7A4hfuTG6JeLl17m/8d9Y+Zs1rojHvPIxVId
         hthmmwpUwPuTUrvY3jCOJzEhWoxYYh77+JAaerGdV0qkHqcSfK1stwLB50c7td7jaAa9
         mfIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FhRznh0WCM/Cimk0UboNsUNqXPc1QzYgovChi7+0sI0=;
        b=LzR/zUmJkf03cOb+8Utf6N80OehUrWwMBM3+x3hMSAxzyHGtJ8eDsoOSMgSGVAdcjq
         xqRBVDXcMQ9DAsx9gRbw6csuk54sfH6x1l3ChFO0iI0h3SBaRJM6aM1q3duaxBxy4nFG
         IgHszDQS8zHrvsQxlC3DaaWxl05eqSsL0YzrYldT0vmGBqETvgozacrlKAUp0Hq7+yG3
         DYmMVP3OgT8xO1tgyFfj00gkKMs97RhZr7SADeG4xii2/tSasNpaWKY7MyspIfemqAMi
         Uf+bJR+NhyBWQ7UvCL1h4cnr5b4TfoasukdpVJPz5ESiHMhZpuVnkzDv0P3cfweMlAD5
         EOJg==
X-Gm-Message-State: APjAAAWUpcBuMhT4fw+6iVE0/8Sk07A5ZdKufhU9TOj8jgrNC4N9niKD
	wXRUtJKe/6i8OLkksXpWUIM=
X-Google-Smtp-Source: APXvYqz/0/xDC93+FI3dLNv+ZllfAbUZInbqEknYp7vObZWnK+gBAN17IqnxK0IVPrZQ2+TrJWGV8A==
X-Received: by 2002:a17:90a:1b46:: with SMTP id q64mr233604pjq.97.1567631511686;
        Wed, 04 Sep 2019 14:11:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8713:: with SMTP id b19ls310463pfo.1.gmail; Wed, 04 Sep
 2019 14:11:51 -0700 (PDT)
X-Received: by 2002:a63:8ac4:: with SMTP id y187mr134344pgd.412.1567631511376;
        Wed, 04 Sep 2019 14:11:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567631511; cv=none;
        d=google.com; s=arc-20160816;
        b=cDzOGe+WXL1u7LYaY9C+FvfkT6FHN+4N0nU2nVH94NlZwiFNVlq4yFn5e0HkfqJ8Mv
         FNLH37pmkxnPpw/9mssbZ7vLZyIV1Emh6Qr5pyi2kjQX7YEUqgjjkf6UAIFGyoek0vHP
         jJ/0H2W154y6+ABs7Tl+dZbHqWkC8XbieFESrmg9XQFQgT3zmaPKUtOuxuHMDFTtrWnI
         ZRUMKamE5brhzyIPlEDCmu0CHiQmoCpvXD5rq0lXcZQ/Yl57FL+88/YpmdJnTDhywIkv
         sWeCAAc3fcHqzLuXHbSbeu/6gCh/igvXQ3bh1SvGmF3Uczmbgl7m5ahUfzQ9x3TyqBXZ
         rhCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=AONGf/XrwQ57qLLsqc1IAcmsTXCE/q6wdhnpClqGQ04=;
        b=qQy1RSvNZMlew6/sTs92X7cizIWj4DraB4LMdFmFmxt+lA426//m6lybzaVgJ716cI
         ePflZhL3kp33Li3rOc/hasBZdmWNf8UipJmBSXRATdYNbSir84FbHtScddu0XPbKlqsX
         l3fuknUgIzKuhEBYDfAZsEIOYZBgPDDmKLgJwby/KbVCC6DwlF8/cOSEQTS/BxOWT5vl
         0KExAhoTHhAzP/L9GaKpa4ITF4W/PLSyXjeGTZh8PpnWg1lQFooaSps2xQBK3o+iYwCd
         d+Gxf071wcvFu32pI84VZmEDACHp+v7K1YBvPP8Sb5+clBTiBHei3/d3P8GS4mIEEjnY
         ekiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TH2xF9mp;
       spf=pass (google.com: domain of 3lihwxqkkajkl3k3o3g3d9hh9e7.5hf@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3lihwXQkKAJkL3K3O3G3D9HH9E7.5HF@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id g12si5471plm.2.2019.09.04.14.11.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:11:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lihwxqkkajkl3k3o3g3d9hh9e7.5hf@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id k20so13913587pgg.15
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:11:51 -0700 (PDT)
X-Received: by 2002:a63:6f8f:: with SMTP id k137mr146678pgc.90.1567631510692;
 Wed, 04 Sep 2019 14:11:50 -0700 (PDT)
Date: Wed,  4 Sep 2019 14:11:25 -0700
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
Message-Id: <20190904211126.47518-7-saravanak@google.com>
Mime-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v11 6/6] of: property: Create device links for all
 child-supplier depencencies
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	David Collins <collinsd@codeaurora.org>, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TH2xF9mp;       spf=pass
 (google.com: domain of 3lihwxqkkajkl3k3o3g3d9hh9e7.5hf@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3lihwXQkKAJkL3K3O3G3D9HH9E7.5HF@flex--saravanak.bounces.google.com;
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

A parent device can have child devices that it adds when it probes. But
this probing of the parent device can happen way after kernel init is done
-- for example, when the parent device's driver is loaded as a module.

In such cases, if the child devices depend on a supplier in the system, we
need to make sure the supplier gets the sync_state() callback only after
these child devices are added and probed.

To achieve this, when creating device links for a device by looking at its
DT node, don't just look at DT references at the top node level. Look at DT
references in all the descendant nodes too and create device links from the
ancestor device to all these supplier devices.

This way, when the parent device probes and adds child devices, the child
devices can then create their own device links to the suppliers and further
delay the supplier's sync_state() callback to after the child devices are
probed.

Example:
In this illustration, -> denotes DT references and indentation
represents child status.

Device node A
	Device node B -> D
	Device node C -> B, D

Device node D

Assume all these devices have their drivers loaded as modules.

Without this patch, this is the sequence of events:
1. D is added.
2. A is added.
3. Device D probes.
4. Device D gets its sync_state() callback.
5. Device B and C might malfunction because their resources got
   altered/turned off before they can make active requests for them.

With this patch, this is the sequence of events:
1. D is added.
2. A is added and creates device links to D.
3. Device link from A to B is not added because A is a parent of B.
4. Device D probes.
5. Device D does not get it's sync_state() callback because consumer A
   hasn't probed yet.
5. Device A probes.
5. a. Devices B and C are added.
5. b. Device links from B and C to D are added.
5. c. Device A's probe completes.
6. Device D does not get it's sync_state() callback because consumer A
   has probed but consumers B and C haven't probed yet.
7. Device B and C probe.
8. Device D gets it's sync_state() callback because all its consumers
   have probed.
9. None of the devices malfunction.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 23b5ee5b0570..923d6f88a99c 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1207,6 +1207,10 @@ static int __of_link_to_suppliers(struct device *dev,
 		if (of_link_property(dev, con_np, p->name))
 			ret = -EAGAIN;
 
+	for_each_child_of_node(con_np, child)
+		if (__of_link_to_suppliers(dev, child))
+			ret = -EAGAIN;
+
 	return ret;
 }
 
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904211126.47518-7-saravanak%40google.com.
