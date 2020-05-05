Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBFPKYX2QKGQEF3PJ35Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4021C587F
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:15:50 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id y21sf674874lfl.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:15:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688149; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldGlQfCGOgFYFOmyVpnqdkCdhgkIjAXLz3x9CDrSHJu6OdddpiCQmrXgU594QvpbgD
         HzEeul2JGjLJOiA3w11LfuuwbkSa7X1dWhC4Bwspm1BFb7FHdcQJVRg6OUzfPaUbLFRC
         dqkpsbvuNVVTob+rVq38sRGPPJw6gr92r1Ro9ICmVeW7xVZiQYNbpxUUKJ1/77KPVS3Y
         fEgOzNfNSvaNgUrRA6WpIulc4x97RMsUxLe46qHA7fM6EaG83aHl79tMPVAERhQFRIUw
         lDi68znj0tD8yUBBITjagCZgYA8lxJNLrVYVNqNkQS5Xl2yWHjSWBU+Wqz5dNSf1yBbg
         0QQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=F6LyraJ+psieu58Ibdx+eHbbnnvbPelDdkXYZrfAYAU=;
        b=nTzjcWi5C/Tf5YJoT7xFtpGglmtyC9gaux6TqmmO2dyv7ACVFsemUQTm5qjGaZgARD
         I8n3cVUUFhr59XMKc9rHRmL8RU5qCDFbOi4fMB5wWqOxd+PIC1Q5jPnaJYcz+CeAYaEd
         hMNKQxn02pk/kSNmSpkjrtdaKZOxOdZG3qElPRxT+TQITN7Wk8DwcXK9RgA9MkXJ3he5
         Og60EFva9NGxWONMAqvvEeIwFSvIRUIjm5jsF5PA5Iv/IgLEVYx2MJcnwCFPF/cti5we
         DAlspfeDHs/Tw+y09cwTvxJ8InHNUtXnNVM7r5KeGewzL2r72j2lucJFBDBIcEsNRqAL
         cmjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F6LyraJ+psieu58Ibdx+eHbbnnvbPelDdkXYZrfAYAU=;
        b=pP4+a5NnUFXc6/Q91Aw4pE2/CAM7qri/SkHdNOEe+dJB7QWml7MxbO4eucWJfDdsmQ
         e+RTOQEjWJ8YZWWHqjv3FYXYQC+g25j/bpd87gqEECPHXOP1S6pMm2hSlTo+G4IjDnym
         Ghb80Snmyj24W6Ed+3RwdaESsB2Ta/c3ZatUCDnwUz3w+xC91c16+ju4Eeqi37YmMdfZ
         oReOAvF6Un5zhPFIkY5Ua0+ry665+wQZ7q2mtRjg7VkNbjM/7wyKrw2xVjH62lVo0VK4
         zFuQnK47s747QNG/59bx8K/YlJC6GE1GQ2IoYvY4k2EZl8PMnP2n9wgkCHVYY6H2u5kV
         XhDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F6LyraJ+psieu58Ibdx+eHbbnnvbPelDdkXYZrfAYAU=;
        b=VKj7zbqGYLdmtW0rxb36mIpyrTTvSSmwJgw92fKRI7fIw7X/f2scNTH5ch+zBkFtuU
         4VlqAF6iLON3E1/cwDBRmgnm/98upxi+WgIliZ5/eSHDD9T4eydPYJ/G+lGUpH9CQb9R
         mkCTV1hoXfsSnJsQKakI9QwTxA5BQVZO8XYARE5+S+czs9nTRSJKwULZjSQ92+txwkP9
         e1EpJg5Nn9fNYkSQ11Z/B82X1Ac1iIBN0wBN6mZ8oc2tzlqscZtiRbAVWCuers5NF7ZN
         pxgk/j42i54ahKFOZ+cuV8p0jMnoQFoopZLL5zC1ID/J0qkt9Tw7oO8oAHzEXgCqmArL
         Errg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubLQQUSLNydOETUxTwp/KBdNUH1T9HvLoMmJv/TQ1Fpqdw86t4G
	DbAMIUGF/ehEg1st3ERIHxs=
X-Google-Smtp-Source: APiQypIkB/4VuQl/6LWR3/kdm2+Xy7N6J6wIjlUnGPlr7OBsPuOXW38lfz+svAyezrpaFYE6tRYWJA==
X-Received: by 2002:a05:651c:326:: with SMTP id b6mr1911286ljp.259.1588688149756;
        Tue, 05 May 2020 07:15:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3189:: with SMTP id i9ls223760lfe.11.gmail; Tue, 05
 May 2020 07:15:49 -0700 (PDT)
X-Received: by 2002:a05:6512:1055:: with SMTP id c21mr1840864lfb.45.1588688149119;
        Tue, 05 May 2020 07:15:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688149; cv=none;
        d=google.com; s=arc-20160816;
        b=ENMdPXL4G/5UnDcSK2Do0+sGmzJqBxaIMIi4fsxtTkM0L00Pga95MqvnbD2TUpWBbL
         Jxgks3sPZDTmp5dNDTYwJRS2scqMryHChu0bWor+i/bv6yxantUGdyRbTGWPfZoBUhnX
         cXACseR0a0p4gKn1jkHqVfdNNMalp/VVY+WQIr5MpvFzYdbR9Rm+XfGM9Is4Rp9xx+SZ
         dx/KYP6SWUFxeEU4x/Rqxl2bv6FThbdfGOFgxv7cCc49wKjvht5MhXUo5Vej69+zNGML
         ylOj7+dUoD6Wh+J+RHbYGgir07jVSHsBVrklIFNm+3l3/qXZEH7Ik7W38voZHpg8ILD9
         iJQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=2ewXQXE8DuvFn7NiX1bw6o75ZDONUAus6OOJvO2KDKE=;
        b=FimxPT+SmJKyIHC6QtuTcScMi9pxawnT+quH/5rxoXnhzkXCO2hzu1mG+kqWydCK4s
         VQfuSn3WiAG0JXpvhKMchl6o60nNp/jIwWxETv6REy6/t56DUJufZ2JeFxNX42z6hYtz
         XFo7PFtNI/yTNy4EY2LHFGSwzkt2zTxBLx9p4RSDQ4Na5gHBuURHS6gPm1O8NzsjQJOh
         G6ct/PwuBALQPjieEzyLlZw+vA2uSCoXjvkYgZgatEqGJvCm/bLUAYY6GRSFydPMGc4L
         pcvTflGRurM8+buP4p4xNVo6OuvovNw/F81LF2cMyvQpxH3myzWQZyd3KWv/cEY7+f2Q
         l9TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id q24si180091ljg.4.2020.05.05.07.15.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:15:49 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M9nEJ-1jSNK23B49-005rjT; Tue, 05 May 2020 16:15:47 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Yan Yankovskyi <yyankovskyi@gmail.com>,
	Wei Liu <wl@xen.org>,
	xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] xenbus: avoid stack overflow warning
Date: Tue,  5 May 2020 16:15:37 +0200
Message-Id: <20200505141546.824573-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:A6tw1zrTOAQW5yW+MxCDJvOopLSS/Ga3YzKkHajnYByzROmhf/Z
 UCjmaSkpNjyjF6nnYkDrgoDTQcQKOsy9GqpcEYeDBFITW4FIlbQVan7MDSfBvVH5vKDNaMG
 I57/Bb6kf/hHfTGPMDXpo9MiGKtA/lQKOkRk2jrdXtJteCeqspXA4ZRf6fi0zCQjBphQskO
 vo1QzWOdqSAs5HBhhLKyg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AVDw9QU2Bq0=:RtvByz9YZEMaNPXxSQQaan
 cDa1tb8w5qa0/seyrGG5bEJDTWS1bQ6DU6Z3caE8AVZWP1DLGjx3JqQeK/1xFSA7XkiiMJyhk
 g9yWhIyFP3lr0xAKhrdIAeNeM227xqBDcoaJzkkSz7XLlBTcbuKxl+ZBf6c7IvRpJTium5Wpy
 wbna0RoQzxMBC5A1ijVWpzJPTQ7zvqxiSFQvyLxdIYvMvoRuaB1v0r0X2ffQfaZ/Czv/uqxyY
 E9XMnNAgucakN6lhB6eQ6MOsvvookARXupmUbbnYbrkjFuSavXZ5pPP4YBTM6PZq3heRt0Ffb
 JXcfBQqCOIzDgg7z68QhXEjzhQzOU4skSyZfx4/PAjDqxOMtEfkTgAIUF067/bJHW4AdVoJMY
 X+QbTqcaz/Ajz1Bf4V8+HNe3gCPNTAZr5Ybk5lRqkDoEqY/Ks4zyMQ/eR4+CxwQJ9LlAs7EQJ
 h6UvsBe6lcNJlmhfiIaAlxlQjzHwYJ2LmHLpAEq9YFUPDzY2vcYxrehJKsZD3z9sR9EMwrX1I
 SCBTxeQ5jjvIOIGLuslnh9tYC1VW3T9yt9QsuzcNAm2vg28xGYLkrNxvRpFlltV+SGz4EriaI
 ZKIpN/t8zQ1fTUnto9/GFaHTg0xIITo1QroKaSzEh2NeBZt5Z1ioW6I3pIWOY2xIhgHsRK/NH
 UIcynKaRVx7azRrZE9UI8sHcKSwYGlA0KhQM/SBjFqUO6NKyqrqMAwhYjVYdRmoSIMoeKxDMm
 ZE/GCuMVoM+OE+Jo4mT72blCEhI8HrcXl2M0M3aXX9f7P/C/S9P0oo9BzRoS655scEfNndInz
 7spEwdABS87Ga/MwDfUpMag/fwUWsaGdnX00Lewh0xtIkUjZQc=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

The __xenbus_map_ring() function has two large arrays, 'map' and
'unmap' on its stack. When clang decides to inline it into its caller,
xenbus_map_ring_valloc_hvm(), the total stack usage exceeds the warning
limit for stack size on 32-bit architectures.

drivers/xen/xenbus/xenbus_client.c:592:12: error: stack frame size of 1104 bytes in function 'xenbus_map_ring_valloc_hvm' [-Werror,-Wframe-larger-than=]

As far as I can tell, other compilers don't inline it here, so we get
no warning, but the stack usage is actually the same. It is possible
for both arrays to use the same location on the stack, but the compiler
cannot prove that this is safe because they get passed to external
functions that may end up using them until they go out of scope.

Move the two arrays into separate basic blocks to limit the scope
and force them to occupy less stack in total, regardless of the
inlining decision.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/xen/xenbus/xenbus_client.c | 74 +++++++++++++++++-------------
 1 file changed, 41 insertions(+), 33 deletions(-)

diff --git a/drivers/xen/xenbus/xenbus_client.c b/drivers/xen/xenbus/xenbus_client.c
index 040d2a43e8e3..23ca70378e36 100644
--- a/drivers/xen/xenbus/xenbus_client.c
+++ b/drivers/xen/xenbus/xenbus_client.c
@@ -470,54 +470,62 @@ static int __xenbus_map_ring(struct xenbus_device *dev,
 			     unsigned int flags,
 			     bool *leaked)
 {
-	struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
-	struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
 	int i, j;
 	int err = GNTST_okay;
 
-	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
-		return -EINVAL;
+	{
+		struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
 
-	for (i = 0; i < nr_grefs; i++) {
-		memset(&map[i], 0, sizeof(map[i]));
-		gnttab_set_map_op(&map[i], addrs[i], flags, gnt_refs[i],
-				  dev->otherend_id);
-		handles[i] = INVALID_GRANT_HANDLE;
-	}
+		if (nr_grefs > XENBUS_MAX_RING_GRANTS)
+			return -EINVAL;
 
-	gnttab_batch_map(map, i);
+		for (i = 0; i < nr_grefs; i++) {
+			memset(&map[i], 0, sizeof(map[i]));
+			gnttab_set_map_op(&map[i], addrs[i], flags,
+					  gnt_refs[i], dev->otherend_id);
+			handles[i] = INVALID_GRANT_HANDLE;
+		}
+
+		gnttab_batch_map(map, i);
 
-	for (i = 0; i < nr_grefs; i++) {
-		if (map[i].status != GNTST_okay) {
-			err = map[i].status;
-			xenbus_dev_fatal(dev, map[i].status,
+		for (i = 0; i < nr_grefs; i++) {
+			if (map[i].status != GNTST_okay) {
+				err = map[i].status;
+				xenbus_dev_fatal(dev, map[i].status,
 					 "mapping in shared page %d from domain %d",
 					 gnt_refs[i], dev->otherend_id);
-			goto fail;
-		} else
-			handles[i] = map[i].handle;
+				goto fail;
+			} else
+				handles[i] = map[i].handle;
+		}
 	}
-
 	return GNTST_okay;
 
  fail:
-	for (i = j = 0; i < nr_grefs; i++) {
-		if (handles[i] != INVALID_GRANT_HANDLE) {
-			memset(&unmap[j], 0, sizeof(unmap[j]));
-			gnttab_set_unmap_op(&unmap[j], (phys_addr_t)addrs[i],
-					    GNTMAP_host_map, handles[i]);
-			j++;
+	{
+		struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
+
+		for (i = j = 0; i < nr_grefs; i++) {
+			if (handles[i] != INVALID_GRANT_HANDLE) {
+				memset(&unmap[j], 0, sizeof(unmap[j]));
+				gnttab_set_unmap_op(&unmap[j],
+						    (phys_addr_t)addrs[i],
+						    GNTMAP_host_map,
+						    handles[i]);
+				j++;
+			}
 		}
-	}
 
-	if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, unmap, j))
-		BUG();
+		if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref,
+					      unmap, j))
+			BUG();
 
-	*leaked = false;
-	for (i = 0; i < j; i++) {
-		if (unmap[i].status != GNTST_okay) {
-			*leaked = true;
-			break;
+		*leaked = false;
+		for (i = 0; i < j; i++) {
+			if (unmap[i].status != GNTST_okay) {
+				*leaked = true;
+				break;
+			}
 		}
 	}
 
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505141546.824573-1-arnd%40arndb.de.
