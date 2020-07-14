Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXMHW74AKGQEA3FZLEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC2E21F452
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:40:30 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id g17sf9807116qvw.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:40:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737629; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzegMTgq0E5dZs3NGLnLOkeNJQFQMdIRl7TBE1ybJ6shtV6QeBpZvfB9BhXfcOx4Y0
         TWqIMkjruR4oMgD2M85IexkgdTS1e2v5Fi3aSXbdDAe/vd0rqqfA1GhvAbE+94NU1cid
         SNiPrTqhDQAvFiQXpRT3gVJtefH9oqQ1lLEYyl0IMGTCkYCsE1+fQzQt6HBMauzMNUfN
         SGfRZPkD8WFNqoTug+IxPZlarcaXBbLp6TIjPW76I64tdxsjCkcQfQSlZV3wA2sHNK/y
         yDSx856YVF0SZnN5MFUdnjH7lbCPcpbjGT7FL+e2Pw3RKGwDk41sJHhuQyjpaE5U7WxP
         f4VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=F9GsfKFFLRf1OIzg5kMYC5y1BQbb/IiJe64Eqp9svQU=;
        b=Z+7197s+Znp5H4uCpK4ESNaTxhJoeiNX9MGI0S0fCmENF61B3Hulw2qECcpSBl9HHT
         s1fgKIrgwKmdtCeIATLc4y4LmF0kfw6L/1rkkOSXi4mxe84dXyv0EsWCXxGGmDEX7nCO
         6llzHqzl5sdBpdtTtsvpgqxKQ4RqlJSo5bPX7D/txs8i6hZMsgVgBQZGz8kxg3QQx8Uj
         5bXm/0rHSXyZAhkmRyQAQkWaubQfYNCwILgx1nXqE0LLYGkxNV0M8VOTgSSDqFsE+gaU
         3iopPFv72Qhq34UZJTeaOu5+WDQf/vGgtDztEwwwsWTTg2Rtkb4IYhc/fKGYRMQb4Hw2
         buMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ss019hXW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F9GsfKFFLRf1OIzg5kMYC5y1BQbb/IiJe64Eqp9svQU=;
        b=fJFeHKx+wbT6aVlYUhr7HwYwZP5YJ5xLkdRe6P7dyLce/9l1Ipg7tvjCmH8SKtOG1w
         p/Co3zkGHOwC/UrxcwJ6x8nYW9F8R9tO6Q8VVuLaXS5iyk+M2icvmdCtvVgp9FCIrOnf
         7wwfYZITDB3FkHUBmlaAhMaauqeaR3V0XacIc4ONxGMMZitmDejdomYrE9ZUEwlmjgv1
         XwtGhuEDEN2v7OH8VL7GBnyLMvDxcyqWmo6T/Jc5+1kOqkY6CUxHyD7CL8J0NU/DCXPw
         IYxPlSieMXqsENfBweEMrry4oS+52SxXAvp32Irf/Bjlq5+SDcPkQDso1fK6LzfiNchP
         9M7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F9GsfKFFLRf1OIzg5kMYC5y1BQbb/IiJe64Eqp9svQU=;
        b=L7S6dQkNzuaf4LAxVOwKGJWm6j2AKC8pmu3rGffqmzEBCJATniR1D+fU/HtNJCQc7h
         XscQ0EX8wk1wyd6jpvn6JPGZXgHHGHkoG4palnNa7MKB1QBk7vgFPmr9IFeJ9iBCKMxM
         is8tuLiH7ZMtlvCzsPMGOr1yaMQQEklw42nAwhpHqJFrWNmYIdBvuCiBZNPJZausBw1d
         Sd+rAkfIJIRViYYWf2ZwxyX2vR7qyUOSJUM3LXeN0MCvNNx/jt4A7x6MDFTEBKRZ33dK
         dYIDTWBCJ8Nm7Ubr3mfu+TmNj8b04UPyRqpn6oCU0hRlycWbV7XQ/posD9nYRC/7rjz4
         p+Rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uAKsoCcidvPqQWGtMTbmFHc6Nh4bQtR/zmdb8lk1Uu7PmSkFA
	7+fpp2Yna6JESudS66XHoc4=
X-Google-Smtp-Source: ABdhPJxQXJHdRnoXCFpyw2d6EDhpwHg4a6qgP9eHAtJajwn1TA+hqTRpy0F9KyJ9belMzjnzJG2Qrw==
X-Received: by 2002:a0c:a9db:: with SMTP id c27mr4967561qvb.204.1594737629681;
        Tue, 14 Jul 2020 07:40:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7d83:: with SMTP id y125ls9936827qkc.4.gmail; Tue, 14
 Jul 2020 07:40:29 -0700 (PDT)
X-Received: by 2002:a37:dd5:: with SMTP id 204mr4915055qkn.438.1594737629249;
        Tue, 14 Jul 2020 07:40:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737629; cv=none;
        d=google.com; s=arc-20160816;
        b=Pf/e5nIc3xUXWrS2PNmUvUFydcimFd4paBe3xQ8z+RSQr2YG5GfJ+D5dgXEkA4BFCV
         FmbY6A49kSCTvPmH/ThhRL/7Uoqc7puYs+oBdWdBoHADgC48LvmQn4jv8U1mqG+jOnRB
         amTEFdfkZaAjEgjr2gTsgJEZHHSOVbrwCj7nWPx5ZGwQVng/ANO0IQUsB8jjsf+H2MU5
         OTo+inMJmdBr1lcnG2+9AHgOZP1dmrtmDvVF0OPf7lxYdqS0nvLucfh6QiJc1y7wQvb+
         H7cYdPLFQqeV4gyhUghIf3UuCoazDb3tSsSRcRytrBbvmAVmSXJ8vjcrNJ0Yy8tTUO1V
         Hxng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9CjcnrlwCMPnBwFn3vnSoIaDt2xWhCNMDZkzdgiacMQ=;
        b=DS2oxxLMGehKIYO2J6ZkwujSYj6Atroa9/La4G5G3tfxz+mcnGVVK+J3HsNuJqfcTk
         4yDREjSeyiNYJOhHma8Jnhx31jPi83hupsMkLXM/175j7MM0DPZPO+SOyW6OYM9urXA0
         uMoe7dnEJKI8o0qOjvhOC+n3CUNo65UbTtnhBbd7v1g0g38UKxMoCrYKqqXhU9dJmX7G
         K4453S8rALnbkiGEDR+ruVEmWvumiM/uUtTRiW6eWM6pL0Ao9M2iyiKUnhG+pQD2dkzB
         K38Ol3PeHPSFYjaQ/ccWp2zv/q+T+R5qpwsZ1pndGp/Vl2kxG1jGjWa7/RMA/aNo68NH
         AbyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ss019hXW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q14si970504qtn.4.2020.07.14.07.40.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:40:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F85B22248;
	Tue, 14 Jul 2020 14:40:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	James Bottomley <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 3/9] scsi: scsi_transport_spi: Fix function pointer check
Date: Tue, 14 Jul 2020 10:40:17 -0400
Message-Id: <20200714144024.4036118-3-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714144024.4036118-1-sashal@kernel.org>
References: <20200714144024.4036118-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ss019hXW;       spf=pass
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

From: Tom Rix <trix@redhat.com>

[ Upstream commit 5aee52c44d9170591df65fafa1cd408acc1225ce ]

clang static analysis flags several null function pointer problems.

drivers/scsi/scsi_transport_spi.c:374:1: warning: Called function pointer is null (null dereference) [core.CallAndMessage]
spi_transport_max_attr(offset, "%d\n");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reviewing the store_spi_store_max macro

	if (i->f->set_##field)
		return -EINVAL;

should be

	if (!i->f->set_##field)
		return -EINVAL;

Link: https://lore.kernel.org/r/20200627133242.21618-1-trix@redhat.com
Reviewed-by: James Bottomley <jejb@linux.ibm.com>
Signed-off-by: Tom Rix <trix@redhat.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_spi.c b/drivers/scsi/scsi_transport_spi.c
index 319868f3f6743..083cd11ce7d7d 100644
--- a/drivers/scsi/scsi_transport_spi.c
+++ b/drivers/scsi/scsi_transport_spi.c
@@ -353,7 +353,7 @@ store_spi_transport_##field(struct device *dev, 			\
 	struct spi_transport_attrs *tp					\
 		= (struct spi_transport_attrs *)&starget->starget_data;	\
 									\
-	if (i->f->set_##field)						\
+	if (!i->f->set_##field)						\
 		return -EINVAL;						\
 	val = simple_strtoul(buf, NULL, 0);				\
 	if (val > tp->max_##field)					\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714144024.4036118-3-sashal%40kernel.org.
