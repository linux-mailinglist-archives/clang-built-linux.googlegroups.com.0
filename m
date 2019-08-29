Return-Path: <clang-built-linux+bncBCNODNHUQUJBBUMFT3VQKGQEYBKEL5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B11A12D7
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:46:27 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id 67sf2955865iob.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:46:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567064786; cv=pass;
        d=google.com; s=arc-20160816;
        b=Chg8pW0k0rIfxsPqd0HeGxh4KpQvMiU44Yvz3t8pQTfAVHcT/kUsePu9Gyoyk4olu7
         TGLJ0miaeU2A7Ql0l1l49oZ7xqme28kILeltrr1ZE9cmEO4XKgXcIrtZjt/49lPYVVbF
         5MK9wQdkiFtiaBZHJzJ2y0u6rjkop95VFkZwHi23ZkwGSgTVrdkOQdIm5hDbw0mO/U11
         WJtb6Q9mzs/4w4YDRI4GXmv+TiiiOWF6GvMkjid8hTovf5UMFwMarLJ8pdrqamuXw+Dw
         WJHbg2iuqDJvQCAIiVzlSGsK7CLNIJxkFQDZWkyUOowxXwVqooEymV7FYC/Djy5Dp2ur
         Unqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FGi+cm2cO2psDxeEKn5ZWoN7+IwXtPGiViAheT3OW/I=;
        b=ro3iTHlfh2C858APHBTf0gfGilbw7hj2YBqxes4p7St1aN4vpRGP3tT9q47qkwLPoU
         nxcvqxBbabDBH9uK5ordvxbo6eO5ph9ZX3/YI4yET0Eg88DGm23ikIopMlPiFeMiE1Zy
         jtOqvLW73W8tsdYc8T3pREQIiCsiJ7lwsVsvuQuPLYqw3jKVthrOXb+/SvM18GDdKAQ+
         7YiPKmLHOGSvAfMu99Bx6BUjgavuQ/wIiXROLtaSf9241W26Ycj5eiT3l2jwTfoHsFtY
         5tcdXMvJGAz7HjLPCaux4fwZ6EPtf4f4bEajNsPESLj6KW5/UT5DRRURP+y7m6YXp8cw
         rWFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Uawm/Ct9";
       spf=pass (google.com: domain of 30ijnxqkkaguvdudydqdnjrrjoh.frp@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=30IJnXQkKAGUVDUDYDQDNJRRJOH.FRP@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FGi+cm2cO2psDxeEKn5ZWoN7+IwXtPGiViAheT3OW/I=;
        b=VwgklkWk2Tnlrcd16lbkWQeIqVqQlhE9ohx0nXVpecXZThYvByLTnZt/EYQNDF/r3A
         nKF5zjh2S+TN36B+HUROvyxxJPszkKJUBc89jKENTOCDnOozqNGYkQtoFEtSzPdurtfs
         REyrDViAsqDzs/hdL25ePK3GSKURpY3k7rMKI/bIlYEQBHLymblwxje/1FSFhrTZwAj9
         PtTADqcVU2F1iauOEYcO7W+Yq86zdTVVluHkX+8QRTs66DaZKCbOTGL7JLgQH1WAb7VY
         ISbUVkIrHay1sOnrlfYeq3KR24qzCur7/GsW4gnCAMsW6toU5NYG7xTJX4zXRBY93Zx2
         H7HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FGi+cm2cO2psDxeEKn5ZWoN7+IwXtPGiViAheT3OW/I=;
        b=eQrOysBkt/hhTglg+z4dxZCNELy/zzNf5henzKrLsz5yHuSIuHLcWHH40p0STUa6T+
         Y3fxYcThFR1PBFBKu3lkDspsZCKPy+VxMDZrzKryajPpkVRXtG5qNwPdnEoEy4eSg0qO
         ywCD3LEcyPmQ1nCnSLUvSD5yvNrZ4Jam6cMvAe1KojWVT8VFNe5wOFr7ZzBEB61uDidJ
         iQ/ni3yRv6XwMXdR5x7zpJCSJXQKoupWzDCrGmWRV8O0N0sajbqxvHJ5xqS6MlLcEPlQ
         ucC9hmUtqsuswTwzHtNd8uoh1YlHb2e+bV2Llg7WGDqIKBzPoxWVpP9IqcNa4xlw5HKz
         qsQA==
X-Gm-Message-State: APjAAAU2xsH6wzYR9bIRYHaUuHrsv/SHv5XLwQsXThWR9L34qnRFkv12
	aUtmd/dHlkUUgcK/dWan4dQ=
X-Google-Smtp-Source: APXvYqz9fDJzToOq8OHMmJaNEkU7DOUHPMpFcg/bqxN7X949jQZr7Cmw6neruYKFyS/LPCs8qeg+ww==
X-Received: by 2002:a6b:3906:: with SMTP id g6mr1129452ioa.48.1567064785849;
        Thu, 29 Aug 2019 00:46:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:440e:: with SMTP id r14ls512483ioa.16.gmail; Thu, 29 Aug
 2019 00:46:25 -0700 (PDT)
X-Received: by 2002:a6b:f119:: with SMTP id e25mr3750105iog.22.1567064785499;
        Thu, 29 Aug 2019 00:46:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567064785; cv=none;
        d=google.com; s=arc-20160816;
        b=OA8/H3GiMYosmfGRBrjLyEZ3OSc2MuzUTK/UXpKI0nzGFFQbz13rXdLBzrPUV9mjxJ
         mKb25TCoqrJdii1f7FxQZOE4Nb09PzamonESsimiHvdlvcdqlwlVQwPOKusv/XNjWUwS
         OLiXG2Qq6u/hc1fTFzMN5/yxfJPqUpTuJPLQuyXqXWvV5/V9UHYzwbDhurGJXNkRGIaO
         BNaaVuIOm/FzfZ3wGaKy6MmPOeoPsJBds3oIcQTCw1UMyiTS400CeXV0X4CKrAoWQLTb
         KfwbSxTPDkYZ1ob88rj2rOgAd5n9vlEBI5Pad1Qp2TK+15E5aMSPIf47xjxmqAkoAFLw
         WQSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2WQfeka9QBJ0u6SuW6w6DrBJqjwEt58/QtmjRSQZxGs=;
        b=dr6lUMpzyN4oBDa0FRXt5WTJCRSQWqo94cuqxx+bkTlfbgpxTwkNmpJRP/ReeEa/3n
         WIkZc7GQtqYtPvAItH/O1dM0+kYfaAsE2yJWUpzSXFfxVFNLTvybSHNZ36tvS9+qWID6
         kx2vtHpaEzBndryq1wtNPrZ/jRhuUei5yvGYNvj4Uu+JbhSYriKo+DW+uf/G2qckeFLU
         TFJEAZIu8mq2sg77CEDZkG9JUl8ryDhITqkwogYiimHOvWWGf2O3YzkMD65pqw24KhbB
         cvOtAGSCz5Z6PRPizhgJ7x2i/FnMSSFQMCLHTGtEHAVtGc+u6zisXf0ab2BB5R/hPgZq
         6wIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Uawm/Ct9";
       spf=pass (google.com: domain of 30ijnxqkkaguvdudydqdnjrrjoh.frp@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=30IJnXQkKAGUVDUDYDQDNJRRJOH.FRP@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id a26si91873ioq.2.2019.08.29.00.46.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:46:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30ijnxqkkaguvdudydqdnjrrjoh.frp@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id x5so1542449pln.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:46:25 -0700 (PDT)
X-Received: by 2002:a65:52c5:: with SMTP id z5mr7120687pgp.118.1567064784480;
 Thu, 29 Aug 2019 00:46:24 -0700 (PDT)
Date: Thu, 29 Aug 2019 00:46:01 -0700
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
Message-Id: <20190829074603.70424-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 5/7] of: property: Create device links for all
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
 header.i=@google.com header.s=20161025 header.b="Uawm/Ct9";       spf=pass
 (google.com: domain of 30ijnxqkkaguvdudydqdnjrrjoh.frp@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=30IJnXQkKAGUVDUDYDQDNJRRJOH.FRP@flex--saravanak.bounces.google.com;
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
index 82052172f508..420c2d428184 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829074603.70424-6-saravanak%40google.com.
