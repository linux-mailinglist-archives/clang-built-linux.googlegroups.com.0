Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGUHW74AKGQEJNCYKGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BF921F440
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:39:24 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id k7sf2532227pjw.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:39:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737563; cv=pass;
        d=google.com; s=arc-20160816;
        b=dAgtiIFGgpnRGLGmkfN9kI4bblMRGaDLGFKteq5CmuDz0aQNq53COuikLLiGd/vg64
         P0kdH701GwPV6lg5Kv1s7qr8jrHmTsAIsc5cnwYJEJdcfj0jEB1vSJOQZV1rFMGCCgRs
         FI67yXTN9TYic7ThSM8sJEsYbUeeDdEnmHFX3BYRfWMICHMU0Srw8dyMF6C+PNZJ7Xmb
         LeejlueB0NEPUQ1BEU4ALQCbX4rEx3da4brdtHo2HrLeO2ojzO8G/nDLLI1gsKRoJBkY
         E8EcjvVqIxsDPhtBb/OgY4Hz+ByrXjYkRlQqWzbjJqxN1a5HIDdLcYe+uclWIWLs9kUG
         XlSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=H1l9arkDB5ra2bZhP2yRt8kL7qgnjvUoDqciQR1bFoY=;
        b=O1AQuf9E/2Fj+YKvss7P5Q0B47Cq3xdsyaotlpaOE4x+QnaetAwrmPTfnyz556BXGR
         U8CQTOsIZtUaItnfN0ltQY80MWBvqy07uaZ6oT21myRwKGL2tdk2NpW5CjpivyPSuRdj
         +QiAXWFWINN68uy2Y8JlJePTg7+4znERoAEg8asOgqfV2ETIhNF1uTfZWteLY4ZAsjy1
         GDJS+GNpnnw125HX8/FJoeA1/d1srZnp0lr+CGY3xWp8jGMALo/RZ+uwUlWOHc1B0XlQ
         IWNkjVDtJXlG7qSFMMxi0LUArpj9WfgNMqUK4nLV8G7nZSzDFodqzHZaUZGWnSYKMjqX
         KwKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hlXzy7bm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H1l9arkDB5ra2bZhP2yRt8kL7qgnjvUoDqciQR1bFoY=;
        b=q5BJXGEj0qFgA8WFCt3uCk5RR6olPFEChEVE8Kh2b0dvskQYb8jhP4UhjazblrhS2m
         DFZDolMtRKWeaaOJlkt9ya2a+cy0NcbVJDBSU55JehORECpDw/YAGesVgbPdFXJkIW3z
         Dd57/7JwRITB66CP+Z978YdjsDXXsLZIflRidHkYK+UESuhxigqjCx+NfKGIpV6SPFu0
         n+9/u9adwMWpqZGd9gWhApYmJSPz+ACm15dR9DEQ8nVtoQPOHc8DD/L4Nn8ZLmQI9SlO
         kVkdgt+Hd3aQ14T1+U4x0bpqnURxzqG0/5QtnBFPORm6o2mPp7ZYZ5Ar8pWpUGFhD4oz
         pG9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H1l9arkDB5ra2bZhP2yRt8kL7qgnjvUoDqciQR1bFoY=;
        b=asQCd9X1wT7eDERNMquVl98g37H/pXgzg6UI0HF1idSXMcwwaH8V0wbpNdR5hIJYeJ
         poyxezeTnpUFG8q8SbCZGYScWSEuGQuXTO3M1TkjUDWK0wZEttsfJChp4UWw3BqY/8bi
         hUa0v0UWuqcvLdP3kRvhUyNxRiCDdc2HPjeYDcNSd5McdiAE4Ii8+5jJrWUN6hDpB5bd
         MkQZ8TIx8eHFzn1JrtXSYfVEbEReJbSkvrd0cn0ZNsOKXBJHeb2gn0atlFioVSiupWLD
         r/xiKNJBT6oGZ1f9VDf70l/CbPDRXeydIUFiWjgMcRKaf8Fl5AgRZ6ShT9TVdfmTgzKY
         s45g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MicDWpZkDbDUNx5Ur9oDhXIi867i0ojehAaD7n2kN7RXWkhJC
	N5sEJsdsNTWn7eP9KdOcrVE=
X-Google-Smtp-Source: ABdhPJxwZ8XME4IBjCQoRswnPm5sXtPMbkHlx39puNt06bFPF/es6CzG4MeUjc+I4A1p07qGdOFOgQ==
X-Received: by 2002:a63:7f5a:: with SMTP id p26mr3671147pgn.117.1594737562961;
        Tue, 14 Jul 2020 07:39:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ea02:: with SMTP id t2ls6631689pfh.6.gmail; Tue, 14 Jul
 2020 07:39:22 -0700 (PDT)
X-Received: by 2002:a63:5613:: with SMTP id k19mr3762512pgb.424.1594737562582;
        Tue, 14 Jul 2020 07:39:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737562; cv=none;
        d=google.com; s=arc-20160816;
        b=Kr3zRBi2jyLADq+rmXJhiS0vsvnqSkl68Nzm/pD3Kw1qWWWKAHi0P7OaHU+XbgkOyO
         2DlRizCC7BhU7WyQhlAkd2SWrh0BntLJ75zmfp7sZ092r/tRTeA8pbYWrOmZ2rPBSmkl
         ET8MYZZolM7Eixm9XSAKDEnzeCOyjB3yCN3yam8d1ipkY9T5Va2/0eK/QGOts8x3sWvU
         kgQXf3MWcV+iQdQhF6mswZzEvn7T1uWQj3Qur6OMWmyYEm5jw8OZYz8SkJPUm2oUZmFj
         WFABujpPaKVtODXYMqjcqYALtZs8ZoVh78VwYLfTogvURYXDFKAgWLxzTdZMNXGcxVU6
         d7NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sgVN54p2su9pO33vsqdwlxTXBKPMEIN8OD3jLkncWD8=;
        b=AVZA+PiSri/3tlf9BI4Zlluw0x7kusyaAH3RyOua5yibQqg6Sfi4b/JzOZ60qiMCyf
         qlhC3a+xMPBXKDBfRriGwCWlHYQTG8uf27HyNr6AUPVD+XW3bxPV0xmMbQ7bgx5r0DtQ
         ttiAGeC8QIv3kcDqdobQ/dISnnpVqFj1qyYuXSv9BF30q4jdQDKWGufiq4CjpQSkxUng
         iNGaUzL0LnnmNWBdJLSFUkBKSRcb+LtWUVuMu6w6ToJ5Bpw4e3iBuIkuTyXsQzVSrXcj
         q8jCnQnsqWs87WnQMmf6xwOe6Ko3mJfcSH7xs5VctbVelzx9T90EWNTTnJ2Is77YVEC2
         uQeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hlXzy7bm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l6si117674pjn.1.2020.07.14.07.39.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:39:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7D630222C8;
	Tue, 14 Jul 2020 14:39:21 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	James Bottomley <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 06/18] scsi: scsi_transport_spi: Fix function pointer check
Date: Tue, 14 Jul 2020 10:39:02 -0400
Message-Id: <20200714143914.4035489-6-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714143914.4035489-1-sashal@kernel.org>
References: <20200714143914.4035489-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hlXzy7bm;       spf=pass
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
index f8661062ef954..f3d5b1bbd5aa7 100644
--- a/drivers/scsi/scsi_transport_spi.c
+++ b/drivers/scsi/scsi_transport_spi.c
@@ -339,7 +339,7 @@ store_spi_transport_##field(struct device *dev, 			\
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714143914.4035489-6-sashal%40kernel.org.
