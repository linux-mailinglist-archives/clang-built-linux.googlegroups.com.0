Return-Path: <clang-built-linux+bncBCNODNHUQUJBBBWRYDVQKGQEPKN5RBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1320AA9492
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:11:37 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id l123sf50103ywd.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:11:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567631495; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vz5MDLcPGPljTS29+Urb0rIepPSmedeOUcizrMi8dcJiw36RnxCQwJJ1As8YAGCQ+r
         AwOrVVGO/o9M4XDQ3NAvcYwIwAmvxmgd2a5Y15qVoE3ptEC/HK54xWiPwS8t0yRQWQgc
         sXfCiDKesK7kcfkOyua9JviPjRYTYUs1G2YAt/qndaGGjrL7TXRR2kepQMWkM4OrbMOs
         2JLoexH+pNg4S3Mf4Ws0EY7OCjI+oHCrY1SKZwqtW/cD1DJzylawAxn7r98zhc5gpIbl
         rT+donU4mOmAZq09sqtAJKN+genMPOEpWQqAEYMuHdblLF3BAfUO9pV/xTSnYBjf3bDW
         IZMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gb+lx43ut2WvHHMb9pWW2YZTEDQG7VdxGxOmhi1BVgM=;
        b=OiX6c5ulEYy3Bp8oLvNqftKrW/kGA08hwkKAaGoiJNyWzbmEivKo+6wtpMzc5wAgj1
         +7DQyPYndIVSSIGnaL6XaJeiyZfr1Gq3OUNfF+V74dEy5QwV1tchUsSYPR7dcXGjPk9B
         WbeALIxy+aUwBHxWVrmtAQQ4RjqnWJohPmMr+D0KVXkFw4GlSwWJyx7qUPc8K4DUC9sC
         Fl1UlkBqV7Dwg4nlfJSjnK/4zuHFRlgibG+j8morMmC53lhC8HxPi/YLctH1a7+PhCye
         e6/CSXkpCDbU0TazEdPy2SN863OEkCxZrz7WhUHl59c3QeA1jiS7508N/HqKXZubHV2d
         7WJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PeL1qXyM;
       spf=pass (google.com: domain of 3hihwxqkkaik5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3hihwXQkKAIk5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gb+lx43ut2WvHHMb9pWW2YZTEDQG7VdxGxOmhi1BVgM=;
        b=SIWCuDohPdjyb5ZhG2xfQHDjiDsv1GH+rCiup/KWOIWNVryvI8VM/d49F2dftpYZQK
         MTn8NctEJQOQu29aGULmLz0gXfyjqBloWxt4uCUAsDuJ4AVp73GFB15D4fnN2KBYavns
         d2lwcM3T58nOBUC/fykkHYmx1VCDhoMrQH+OrFFra8GGpPZtUDW0lusJYlwfKjTziTIe
         9nSW8ezNUBqA/VYcAf7j5AOBSrg/YJYLQzNX9C73mYSUBRnGw7S9JMZ8z8JZYyJoIVBs
         3Z7s9XLLmPY23hQRyurb200jWoGLCkjU070KnDpzpaHezJHTRYzS5yNHRS+hW3W68WpI
         1DIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gb+lx43ut2WvHHMb9pWW2YZTEDQG7VdxGxOmhi1BVgM=;
        b=pV1SxPNwX8tS+n2DRGNHJahUjoOTLCMTeWh60+2O2zlp64jfeNr299zyDBHq7OmIb+
         mUwsUbjiAC/CaoGONSLJne+FCuB0IvT56n4NsGgfQ6uqRmEBbD9q+xzfuZJ1yNs841QV
         jmryOUmuM8p8Tn6OVkTtTImx4eC5Wwp2TJ6VHGa6yGVpEve+HmNvKW3ihql2GCJAu6M4
         FCKUNRwzKnFs3tAYjdEA23Kf9UUQH0uhaDsqojcP9s+rMXbVeV3kPn9L51hR6JwYWNiq
         YGx+qX521ccnU8pbg1gpMqAznBT/WGIsvXUHYm3+3GPCsO/bgKUPhL1TTMuj4xu4qsGL
         copg==
X-Gm-Message-State: APjAAAVQ5/mC1R4kfukvXmjAuSwtWDeNBqxkB/aPs/IZqhuQJti+ASy+
	IbWFDFQo6s5EIk6bLuIPwJk=
X-Google-Smtp-Source: APXvYqyXpKjl68997Bf4mCAAbxa8OJIlIHOOApFdd67avdPi0HndgSlqHYryZrZUgeAEHp4D4w3JSQ==
X-Received: by 2002:a25:d8cc:: with SMTP id p195mr27200ybg.68.1567631494788;
        Wed, 04 Sep 2019 14:11:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:42c8:: with SMTP id p191ls3464yba.4.gmail; Wed, 04 Sep
 2019 14:11:34 -0700 (PDT)
X-Received: by 2002:a25:8749:: with SMTP id e9mr20597161ybn.445.1567631494562;
        Wed, 04 Sep 2019 14:11:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567631494; cv=none;
        d=google.com; s=arc-20160816;
        b=igdex4D8RcBvkQjpyfJ3/pOfXB1CUHYHU+LHyxD+GH6UFSSF7Wixs0HzwqRKIEIRVr
         5itJ+hAHPR/RBjhWieKGAQgSGt/X+Ta+SfC6wxVJGuxYrYSHliZLPGTAQFIk4n6fwPj/
         x+cSm/k4FqGDoUvYWtPYvYXf4pNrR8flGLef/oAQMFLB7Azbxb1KNhNTDny9gkqmAuY7
         HrsXQiPTjdXwccVXh7ToE2S8t5y5Qe6+sEiuK2Q5Q2Vqn0ULcQulao6PTWooXuOoaLrV
         mnbGkMSTCYSrwx1BGHqXgQaqtNZrSyli8VFShaOo3pO55AbIuttikH+sRcErw2SFAkhV
         3OMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=fqo1KOf+cOCC74wEKfOYxznTOIvWMgdfyPycEAYi4u0=;
        b=Ysx0Lkun9CH3cPYgrrxS4mCjKgU92uEC8BxTc0AE4YBWsrYOn8Bd1yFu7kNqSxWkR8
         xYRlSw/OjXHPl3EcNGB8J5kr4UmKOKqvKR6zdMjvSPLo8OWfWJhvJ2t6iyInElSgQsu5
         nDRbK1Q813Qck+Nu9DdQwHKoyr6fmGwhP7i8FaRBA+Y/7iTGNBB6DKoN8MFFdOSVDVCB
         b7xVNW1Udk9Bosd7glAIMTdJ1Qkv6KK4k4e8/QL1AqRgYcyZQPXdI0ayrFBt3dwpsZen
         YmzC8wNK8mC4b3OrePo0YP0Mp4cUdvexEPKKq9PyCO7CzelD7+GoLjZxymnA5RaH4sQu
         Kugg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PeL1qXyM;
       spf=pass (google.com: domain of 3hihwxqkkaik5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3hihwXQkKAIk5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id j72si7764ybg.0.2019.09.04.14.11.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:11:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hihwxqkkaik5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id 91so89171qtf.13
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:11:34 -0700 (PDT)
X-Received: by 2002:a0c:8402:: with SMTP id l2mr12315654qva.201.1567631494059;
 Wed, 04 Sep 2019 14:11:34 -0700 (PDT)
Date: Wed,  4 Sep 2019 14:11:20 -0700
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
Message-Id: <20190904211126.47518-2-saravanak@google.com>
Mime-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v11 1/6] driver core: Add fwnode_to_dev() to look up device
 from fwnode
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
 header.i=@google.com header.s=20161025 header.b=PeL1qXyM;       spf=pass
 (google.com: domain of 3hihwxqkkaik5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3hihwXQkKAIk5n4n8n0nxt11tyr.p1z@flex--saravanak.bounces.google.com;
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

It's often useful to look up a device that corresponds to a fwnode. So
add an API to do that irrespective of the bus on which the device has
been added to.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c    | 7 +++++++
 include/linux/fwnode.h | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 2db62d98e395..510fabf8918c 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -2198,6 +2198,10 @@ int device_add(struct device *dev)
 					     BUS_NOTIFY_ADD_DEVICE, dev);
 
 	kobject_uevent(&dev->kobj, KOBJ_ADD);
+
+	if (dev->fwnode && !dev->fwnode->dev)
+		dev->fwnode->dev = dev;
+
 	bus_probe_device(dev);
 	if (parent)
 		klist_add_tail(&dev->p->knode_parent,
@@ -2342,6 +2346,9 @@ void device_del(struct device *dev)
 	kill_device(dev);
 	device_unlock(dev);
 
+	if (dev->fwnode && dev->fwnode->dev == dev)
+		dev->fwnode->dev = NULL;
+
 	/* Notify clients of device removal.  This call must come
 	 * before dpm_sysfs_remove().
 	 */
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index ababd6bc82f3..d8c6d231d577 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -17,6 +17,7 @@ struct device;
 struct fwnode_handle {
 	struct fwnode_handle *secondary;
 	const struct fwnode_operations *ops;
+	struct device *dev;
 };
 
 /**
@@ -123,5 +124,6 @@ struct fwnode_operations {
 		if (fwnode_has_op(fwnode, op))				\
 			(fwnode)->ops->op(fwnode, ## __VA_ARGS__);	\
 	} while (false)
+#define get_dev_from_fwnode(fwnode)	get_device((fwnode)->dev)
 
 #endif
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904211126.47518-2-saravanak%40google.com.
