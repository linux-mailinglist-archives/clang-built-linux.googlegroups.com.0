Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWOEVXXAKGQEUPTV3TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A97CFA101
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:54:34 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id v71sf379065vkd.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:54:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610073; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3NEvekWVMUN7EfayhW6QgKtT/PGgKpkOM9WYCZ+bQaeSp09zHme8X30++6QBWhEPc
         4O/Ftg/tXyWst7UzIKsms5s5P8XtCzmk3TyNLVezAaSdbA9wbBz5FTi8HFxpK88AbgMK
         B71+jGRHSH3iXXvvgBNvVEitEvO99zbXO1+Weco5nTWdULfgd6aysDp/a+TxN5FDh5w3
         IC2Zgui5i26lGzVEpNBluHwYAdxrbe1ZKYetQ60jn++BmU/qy1VQqDahMMjw1QgtGe+A
         Apw60OVZAqOtm1ofTVdCgDcqVtih4eZcacnl1HbZEUl8wuGbP0Rn/1ouSG3b6TMU/wK8
         xZ+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2EUqa+o7FCcxHQcildLxDb9eb9ujF8prrHysGgynPIo=;
        b=pS4LiNKsu00sSoZ5VSJ2aC2BQAeKaHZtLWVbKOjjSqlTDbJ7JeWnan7pr8KmTJbZ8E
         BCJw3HD5EbjtS1inuvxg9VceiRtPwVffywT5VLw9NeJfB0sx4rzpH6qTKp43v+fzlFBG
         Cc/jVoqYYuvy56bxe2YDOyARMjvc+bVGdARcpRsTRp/zv4kAiEzcOUMKc+spOr89Qgl4
         rbeyKfUKvjaSRnfWmZGcp9xFW2/wKIFYzGPo6dlZ/TI2rImipTG0LmGtfB/c8Np7+G72
         /QP1x7lSWqHBBP7ACuVXgWnjAKoITyumcF6q+JNb99YbAP3fAEyYX4mvvSV6ztjFsJ17
         BsLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dNs1MPhN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2EUqa+o7FCcxHQcildLxDb9eb9ujF8prrHysGgynPIo=;
        b=aAxsp1Q8r38aoM2bSWs15xonA5f+O0tKW5haBf/6X+KWBKAiPzKhIHM56hc3JCYPwX
         p8J/tVnxAC4D3/dSf+kWDmLkIyWPF94/PlTJhxiDe0qK7QzgJWXZPNdM8tyBXSg1Basz
         MwtZ0frDnxK51mRNzTtsTWdN33EOqvZ63Hl0Zn4CakKYWgl71Vb1RFKFNl7uS+BsZIwG
         jHHRsBfzzSpkVCx07apTY1KccQ//czfwzWJSOvaNKtFcadF9HLfM7+SWvhz5DPcELCMC
         ihPn5yPLHdLbGJguOO+ejRfYvQvs3UDQOz7NLUpqdJLgPiZd4IXSNhvgr3BWr1rICHuE
         BEdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2EUqa+o7FCcxHQcildLxDb9eb9ujF8prrHysGgynPIo=;
        b=BR4QXU2SJB3sEtfCPFF5p4CxZZbJPWJqmREG+eqRSZOg8bpcdIYC5UsC0alk3YSTQ6
         tr97MTC81tYn8aVdvIHg+YoIifOszWed8WSzQZRKZTx0gkeZJXzTAsY1ypv85+hIpeLd
         I+LVMrsKaVbqELjk6Ajsl1++jHPIr6rfxZNs9/Xh/TRfNcbNXFipHgIA4q2IWUu9DeJO
         Dm2zD+fnYJSG+fG4t6fY5enoAYIHmdEO+yWz4TRD6Bm+ld3zysCfRt3qZOVqEF3xX5eK
         5EjT2R3SW/hGSJnvTPVx0uxvMY96SfdPMZaysqnrnGQIs9lb14DwwISQZc1O/o52cCUo
         FXYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWkcpNz45qK32fypTWxPkFoYFwV7ogMo+Mnuu61HXHdv/eDoLRd
	nvlb58qqCbLDIqLwptn2jD8=
X-Google-Smtp-Source: APXvYqwHbxpsqhGgvC1yr8XaUl3uD8XCnSkYPyyZuxjFxNHiCF/wW4Jx02uvfMi1v7caCAu3XmO0wA==
X-Received: by 2002:a67:bc02:: with SMTP id t2mr461137vsn.150.1573610073278;
        Tue, 12 Nov 2019 17:54:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:421:: with SMTP id 30ls33992uav.9.gmail; Tue, 12 Nov
 2019 17:54:33 -0800 (PST)
X-Received: by 2002:ab0:7509:: with SMTP id m9mr400586uap.136.1573610072950;
        Tue, 12 Nov 2019 17:54:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610072; cv=none;
        d=google.com; s=arc-20160816;
        b=SqmVbBbs5w2DRIlXmHpl5DcZpQS1VO3MNOHS801m29pmzcNgrR+UL71Usdi3u74Yj6
         zn+DN+WXms8WN6wBmOsUjBLtZ+0y7UZAaDV0x7JgZCi0L0eauzO7TS4H0h/Tv0QqQXjf
         QeT9G0zXQ5x7ZOBiDusnrF2rhsrGFxXSddjh+A2DEeJNY8V4LqfyemSZjk8+pjUAmuIb
         Yfj33KK+wQrzDh44h8by2BnzRdrX30yZyvK54zH3yp12df/oydOyZKSMGrORYljTrGoQ
         Ky4EkEIuiprBqIgfh98Ihskp3QqXnG++8nS7I3tsMEzYjIVXNmCW69Cf8jLWYYghqonz
         BDhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AS2DzfEijpPoaRdst5JEXjr9Ven5heh6o56zeuMiTOk=;
        b=eDRvbIndjBtJWlJRa6shnGUsYzBl93KajVJUNocMsiMWMGVKvV70M7ZT/pEfjvfRzB
         mp2w5QKZ18Zh5ZhPiW9iQvmFGBhlfvEbbVS6Ut97bLEB0F3EqEbcDoyJ5NeROwNOkDgX
         DPH4g4wIzd9dgwPlZ6Sny3z3aCMu/z6iM5vI51QUBRsLUx1PTXIVq3ovVoGcMVnwN8DZ
         hgiKoeaOwsoZlg3zDq59UdxrwF8iKgAgpt7CnEiGwZWybZbm64zKAcvqtwI4h67r9xiS
         9PL/1H5mAcIlWiIifbKXMBCaP6K4vnJuJQuXBge0B5bhU/vfzPzYVZTk7kcPUDsi1NMA
         /8Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dNs1MPhN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o206si47693vka.4.2019.11.12.17.54.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:54:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EA5EB222CD;
	Wed, 13 Nov 2019 01:54:30 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 150/209] media: cx18: Don't check for address of video_dev
Date: Tue, 12 Nov 2019 20:49:26 -0500
Message-Id: <20191113015025.9685-150-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dNs1MPhN;       spf=pass
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

[ Upstream commit eb1ca9a428fdc3f98be4898f6cd8bcb803878619 ]

Clang warns that the address of a pointer will always evaluated as true
in a boolean context.

drivers/media/pci/cx18/cx18-driver.c:1255:23: warning: address of
'cx->streams[i].video_dev' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (&cx->streams[i].video_dev)
                ~~   ~~~~~~~~~~~~~~~^~~~~~~~~
1 warning generated.

Check whether v4l2_dev is null, not the address, so that the statement
doesn't fire all the time. This check has been present since 2009,
introduced by commit 21a278b85d3c ("V4L/DVB (11619): cx18: Simplify the
work handler for outgoing mailbox commands")

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Hans Verkuil <hverkuil@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/pci/cx18/cx18-driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/pci/cx18/cx18-driver.c b/drivers/media/pci/cx18/cx18-driver.c
index 0c389a3fb4e5f..e64f9093cd6d3 100644
--- a/drivers/media/pci/cx18/cx18-driver.c
+++ b/drivers/media/pci/cx18/cx18-driver.c
@@ -1252,7 +1252,7 @@ static void cx18_cancel_out_work_orders(struct cx18 *cx)
 {
 	int i;
 	for (i = 0; i < CX18_MAX_STREAMS; i++)
-		if (&cx->streams[i].video_dev)
+		if (cx->streams[i].video_dev.v4l2_dev)
 			cancel_work_sync(&cx->streams[i].out_work_order);
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-150-sashal%40kernel.org.
