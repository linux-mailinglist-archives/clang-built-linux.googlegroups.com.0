Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMMHW74AKGQEADQGYIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1DA21F445
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:39:46 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id m1sf5472643oom.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:39:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737585; cv=pass;
        d=google.com; s=arc-20160816;
        b=FDlJGCoPoMqD8an7vQdIiy2VfJs3GlsVhm9bpS9XkqgI3mh5OqA54YGOJK8DVqMtFz
         yBxZ/jAL4kKEuGw3tqImart743AZeEPdvgcfOmyWIIIeX4G9xVlJLylOP3Qx5IEfgy84
         NMuiymvLzW41I3vSxEf1K1uitUAPnOnCBzlA7xBdXrzvUThe5Ui43YCUXo65sVf2DwjA
         TUy3JZaBbX2t0ZJi3BIPT+CqEqs3/xUgU+YsnPNmTLPE/PHPC1zYLgBf7p/m4VAmLz8/
         IhIT5AF5cUKYqT5A1+kfTjXKQ21PQplbyKKdwRwT0Ktfz71BAs79ZkhgQe4s6Y4DsZFD
         gR7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HTwT8KiP+oFTW9UY6vfr1pDCaLbrMU592JwhMjeKuN4=;
        b=O+aA4j7xthDsanADql9v3KOk2h8Ll8rHDvGOPdeC7ijENftEPC4xgcTeiekBzU5eRC
         lf/DJIJ/OyVenGIj+N0wsX0yIJTUG7e0Lxd5uioMTtSZcrPBqpXKawfaawqrlxU2GctD
         TuHOCmNCNiXjswKrya07kWjqNx9RH5RzjedRhxEXfmBb7x6JrKV16Sq/vPRwKyxqDDlO
         UEKQCingthoPybzwk8u+tiyiGoDFcT0U4Fp/CqpE/CWJgQwY6D0yupdPtjZ4ubAtqwqu
         MXH5x0gJscJb2OYuTb81okStc14bk7ar0eKyPuFcTGNq3GLA7QCU4e+GYJykbO3ExJuK
         FcVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qu6bXv7f;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HTwT8KiP+oFTW9UY6vfr1pDCaLbrMU592JwhMjeKuN4=;
        b=Oeabbx96RDGBeF3mX1L3FL9tx5bpwRfVYAk1Q4u+v6Wb5HP340bnA7kYRnKfezD2QX
         z/yCdgKea1LLJJhx+xG5KWayFG5N8BIaRsmsUA7GJSWmTb6lkJTPc/FvLjWSfrIdJQg7
         V6JP3gWiiNOObjf4LwIABxsfdlf//Zd1kl0Lw+fprXZXwHL5meqjKyBon1Ua7/LUHsmv
         1vB2FhoYMYlB+6qTYnTWc0BumYAseRKINAC1TST67gjjtl2qPElfD0GG+xiKARPZvH39
         /A01BpgmQJOxJA4Xrfr4cUSOqGz420U5OjFcsGx/9UERM+cyvhBAimKwRS85tNSvWEr6
         +6vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HTwT8KiP+oFTW9UY6vfr1pDCaLbrMU592JwhMjeKuN4=;
        b=csYCtDjHrj9aa8HGegCGSgkozjpHp8TdXZODEvWXqYyW+hA2EIlc1gHqzZxveRb6u/
         ZxAcJ740v/4QGy6Qdb1YhIZhTUzE3FUwLkRHbNWH4WE0FsTQ9iFB6RSXN7dacgRLc+8F
         hY0W8HyWug+BR0TPx8fTRXPfo0ChCby+SnXrcaU4bvmshplRgTrjgVGj9sXHc6sExtSX
         ruzuf563dXYas/xndrKCwdEwK+Qv03lP/dcNeQO6L5HaFCezu3xvCRan+RiBSe1Nksl5
         eyo1DFdAPJV3VXpLh4vR+mfmHzCUyUlXg9RTK8Kaa7H4WRbNUtSKdIWAYsCfqbwD9Ogb
         oDag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530U57ljyHBnxJ2eOc9puB5Lodt3xSlLS9OM2hkegrZzWVh0nCk/
	Civ5Jfrw3PmGxkgZdyq8DDM=
X-Google-Smtp-Source: ABdhPJzNIjp8RYLdekUgaVls1X8O4j3ziU8IbrjvB3lOZvW73kwBaGb7XHZzuEmvFXUV5U1TMABhpQ==
X-Received: by 2002:a9d:66cb:: with SMTP id t11mr4311027otm.82.1594737585391;
        Tue, 14 Jul 2020 07:39:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:544a:: with SMTP id i71ls4150075oib.9.gmail; Tue, 14 Jul
 2020 07:39:45 -0700 (PDT)
X-Received: by 2002:aca:4a89:: with SMTP id x131mr4084796oia.103.1594737585059;
        Tue, 14 Jul 2020 07:39:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737585; cv=none;
        d=google.com; s=arc-20160816;
        b=jEhlorqABg+h4eTvH+l7MZEe++s3/2zEd8O5wiR1gBp60INCiGa8PKI6fmdnL8Q1or
         GaEz4eBJu6NrrUimNv48wG4T+lrbbfcUXszkRgA2bG1UmrHAcC8xEz6hiiw6QLMT3KAW
         c5VGDGkKaWgcZmnGULkwO4K6iTEyRtTjeH0zqtdEOsLhIOcjOiR8BuRjrvPQC8aHC2g/
         irCvruQzGQc96E3XfeZMRLR7j0bNL/MtPgFKrKIdRUKgBUV2eR7kgJ1FGHPY8JIuszQK
         jvgxbuPtMw6JjUh9+1qBMpJPnM0lk6O9G+rIM9u7QAuSyk6zPqXQTIVgHF+0+TFq7v3b
         TKrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iEYp8REFDg/e77YxeqYFIKnb5L8QqwDqO5oa3+qjG7Q=;
        b=WHlNfU1u54SBR3ZxQ49BsZeS9ivjAj6iLsBTqEuDvDEUy1DDx4xWTXO970DYISa5Wk
         GvrcGRpFi5Z5LxGJIwwzCCFoxFkLb84Kq9MJqBINa0rTmudGFVEit7aBaUaeDCDlB//N
         OiNJbxCld3BvbRGd302LFj05vceNtWQxQZzlop821nsys5wUeP8Yxv3eRMjo94yyyBFC
         Gof2YSG5g5kp0od071SmmjryZZzbB4qFfU142JT5/J38AEvRdXi2B0pLmIM+F4Zz3uq9
         EG7dos7r7KBbrhfAMq1NSGbfVE1KnMoZpjyz6N9SaGuATvGw6n2pagZgsXz5CBrr0ASq
         CmrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qu6bXv7f;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si1138624ooe.0.2020.07.14.07.39.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:39:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7732B22571;
	Tue, 14 Jul 2020 14:39:43 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	James Bottomley <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 05/13] scsi: scsi_transport_spi: Fix function pointer check
Date: Tue, 14 Jul 2020 10:39:29 -0400
Message-Id: <20200714143937.4035685-5-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714143937.4035685-1-sashal@kernel.org>
References: <20200714143937.4035685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qu6bXv7f;       spf=pass
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
index 40b85b752b794..69213842e63e0 100644
--- a/drivers/scsi/scsi_transport_spi.c
+++ b/drivers/scsi/scsi_transport_spi.c
@@ -352,7 +352,7 @@ store_spi_transport_##field(struct device *dev, 			\
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714143937.4035685-5-sashal%40kernel.org.
