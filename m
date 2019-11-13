Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCOGVXXAKGQEQMNH7ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CEFFA16A
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:57:30 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id y17sf532543ila.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:57:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610250; cv=pass;
        d=google.com; s=arc-20160816;
        b=bhtc/rnC5bVs0rDq0O/BWV63T68qF0VcyXL7emsD5hlPySBpmcsb51bIrQatC823T6
         rHiIF+J6Hg3F9F4nR6qAi3rV+ZqM7/oA417whcAfcaYEzM1z99D1hTXql0gYGiHKMiBL
         MGGvKNKfMNOeA9071pA2xPmD6PcCIQ/2+yA2idiN5/2eRXJRtKLwsc0+GSusyI8Hrj6L
         +3tRcdYyMui9OvX5X8XjdwaZjx7u6htALpajRU3pWkVAibDtuENadWJOFZ1dXuxmb8ol
         rRzE7eGHe0Se8u1sJXf/6ft6eOiIdnXPMkN8RmDDmqSD/nIjNZ/tCkOxM0S9CLgqyWKq
         Keqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KNg71zaBD0uOBz6Tr3ohoYG0IR3uRTUpW7xIppRZOT0=;
        b=xv48QBQPlLKhgcrjZBwuUSEO+iCGoTtQD8g9EeILm8rs70xAKhEDk0Ry65NpBR4Gfr
         fDSzv17auDdpYqPsY0fucjEAmFMvQlm+RXv+NP/qGiGxn103p1ewCV2njuaLo3SzIVjw
         5t8uRZqooe49MgDMzANjYFOmpnf9vEE56P4IHLBVP74qYDM5otp3Psv3wZnJ6TlWd+PO
         0SIeyGybL6X5NSSb3t2oKL73dJe5p27ziRhEVCu674RuWgZjH0iryPWLPN2Y/5xwj0gM
         c6YliGEKlzX+YQHgHj0ylT2lWm2RQyaaPxkup6hr/yj7nGl/yORhjr0bQBhG7GtGvCNw
         Z3BA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GrKLBBc+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KNg71zaBD0uOBz6Tr3ohoYG0IR3uRTUpW7xIppRZOT0=;
        b=fjuLbGpcsfX64zjpkCypRwAYfWquCZ/uP7EyEYh1CtXoSsJQ0l6h49R0lk4e4zXpTM
         vj0VDR61P8HONIarUBfj1pXI7eC12V4pzydtj+Ol+26XW9Xz4kw1T1rB1jdgYwVwKh0r
         P2XwtzD7Op6MFfdSM1Gom+yiKT5WR8gZErUndmI46wYxrX+khix3aJUJ8MqchwaROzhM
         JrRoCxKN1U/25JA5w9KzTfrsVNcYSanJm5OJ7/MUqQbWB98G5Cbgg51odGMoMksBrZ5a
         Ft+aL/Fl8RRMVdOmTRaTmd4iw1lq6kRq+QCgrp7VHHEWU0Rm8QntdA6jJM20QtyP/XF1
         utNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KNg71zaBD0uOBz6Tr3ohoYG0IR3uRTUpW7xIppRZOT0=;
        b=Y/JsXhCAF7fgt8qrX82xGHLP/haYs0JVxYMuTl/b5XnQ8KQvlYmBv2kywzjlHXN9vT
         rpFLHEs9nkfRxJUhG8T3d9bSS6yQrmnq5erkO78PxRsvR8RqYhwI6mstUDVSlpw2i8pC
         m4I973b9ZlhJbNQ28x8nBdYagkPevr67NjKXYgrwUI4HJYBshwdcfS7I3sClgJjfcQBK
         uvD/nxMGhCxBaJcOJ5YYEhC73bbmothRdSeDh6s9dJd2zT0LBliGfl0QXmxd1qwKSlMD
         XxZHMMADsV5n5C3VHLDGhJoP9a76o3bJ28WVWFdFhL0Bz+Mudpt40uSWBAdvzXK8XPS8
         zNIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7FAACF4SqwImB8tWtrP986PM0NK0jE91BSf1x2+OC6CWZoKNA
	8IYULocr7PNh1MIaGM8iJIo=
X-Google-Smtp-Source: APXvYqzDxzxV8LlM+4QdTW/9iQh1zaTrsPECEwx6hFCo7B1Jsf+fD5OGe9XRzEeHAocE1kbNr1z6Bg==
X-Received: by 2002:a05:6638:73a:: with SMTP id j26mr700061jad.116.1573610249849;
        Tue, 12 Nov 2019 17:57:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2c0b:: with SMTP id t11ls122400ile.9.gmail; Tue, 12 Nov
 2019 17:57:29 -0800 (PST)
X-Received: by 2002:a92:bac6:: with SMTP id t67mr1007947ill.21.1573610249584;
        Tue, 12 Nov 2019 17:57:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610249; cv=none;
        d=google.com; s=arc-20160816;
        b=TSSJSxx2PH27jZZkCRtbbGwwXaKEBWppdCiYGg6Wei/+DMoDb2kQ3WxZ6LILg73pmk
         Z4mTcic/SqcjrQ9Odau1WIGa5wwB6CE/GIgMO8kdhCbnpJ43xY4D+kDW/6jI80gDX6ue
         6QhyvMqtp02Xccb9uvkk7/aYNIDmamnUjeHsXYK8aLZpLLlON+AEbCbuR5cbD9zZnL+l
         eJGsXDnOdG+Wm76mHOH3Vn9fTaD1j0a6485Ni7BFlSthGeRpfrf9N93Lwsjcg69FL2Jm
         Ofux7L6gr+T81chUwB0t+ovkTCYIe5oOl+b3botKJMTZjOTkaw6G1YF7XO25YxMobcpl
         FWoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Vzk3+S0QRxPylQOE5B6AII66LUeO46BPyMNoWt1Xqno=;
        b=ilb2p7gMD4DHfYlRm/bnRtkkenD/LQ008uyOFZm7Mq+k4hJB4m4kB8uiXGWqFZssvI
         aEX75yIifqhI6hXZQiEGG0NYkULVgsHkanqrRm5o+26oNVQWDGcunAA23nLlurAaqvtn
         GajNdtr2Ky/dhd1f+m8lKsbDYrOAcz8+ZOcB6uNRWuh+qAYruwJLdjwvknO2w8+bu3iP
         lakMb8nUYSHkPsu7ulRJtakTl4nmKUy0oAPzY/nJTnMRMosxZmaBBY/zaZaI8VdzVk0o
         bPcUJH+RBGinQoWG44ZGPpX7Ve+Ibms8XsduDHy72PpSMw6wlqsmimyqiy/ypUGGlAQ1
         Z+aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GrKLBBc+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x18si30099ill.2.2019.11.12.17.57.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:57:29 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1BBE7222D3;
	Wed, 13 Nov 2019 01:57:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jason Gunthorpe <jgg@mellanox.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rdma@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 046/115] IB/mlx4: Avoid implicit enumerated type conversion
Date: Tue, 12 Nov 2019 20:55:13 -0500
Message-Id: <20191113015622.11592-46-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GrKLBBc+;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit b56511c15713ba6c7572e77a41f7ddba9c1053ec ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/infiniband/hw/mlx4/mad.c:1811:41: warning: implicit conversion
from enumeration type 'enum mlx4_ib_qp_flags' to different enumeration
type 'enum ib_qp_create_flags' [-Wenum-conversion]
                qp_init_attr.init_attr.create_flags = MLX4_IB_SRIOV_TUNNEL_QP;
                                                    ~ ^~~~~~~~~~~~~~~~~~~~~~~

drivers/infiniband/hw/mlx4/mad.c:1819:41: warning: implicit conversion
from enumeration type 'enum mlx4_ib_qp_flags' to different enumeration
type 'enum ib_qp_create_flags' [-Wenum-conversion]
                qp_init_attr.init_attr.create_flags = MLX4_IB_SRIOV_SQP;
                                                    ~ ^~~~~~~~~~~~~~~~~

The type mlx4_ib_qp_flags explicitly provides supplemental values to the
type ib_qp_create_flags. Make that clear to Clang by changing the
create_flags type to u32.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Jason Gunthorpe <jgg@mellanox.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/rdma/ib_verbs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index b8a5118b6a428..f9217a75b4f94 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -1120,7 +1120,7 @@ struct ib_qp_init_attr {
 	struct ib_qp_cap	cap;
 	enum ib_sig_type	sq_sig_type;
 	enum ib_qp_type		qp_type;
-	enum ib_qp_create_flags	create_flags;
+	u32			create_flags;
 
 	/*
 	 * Only needed for special QP types, or when using the RW API.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-46-sashal%40kernel.org.
