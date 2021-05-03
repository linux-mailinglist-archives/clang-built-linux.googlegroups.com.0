Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBWWPYCCAMGQEKOATCSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E842371AF2
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:42:04 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id k11-20020a62840b0000b029024135614a60sf3087800pfd.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:42:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620060123; cv=pass;
        d=google.com; s=arc-20160816;
        b=dxgEvsAzScI2qw99RHssv2E+MkPAAEJjcODJiJoa/QKTmEFeOpwFfH4VmjRvTj/oY0
         gVPyuZXH0Y04hMCIBHC+ZeWye61SDFFkXcn4yRWhMNbPQ369aBJj1PEmRHIchulgomkH
         LwVtAHRnV57XSbS0kcdKHinUVtDDB+TMrMZlJJCcxuBQ+2Nl2aTLOE/ACoyMR4X9tb01
         Zfqe8tWh/dPTRpFIiyusZGt1OpJL1SNEKkiOwHE1oDYukyzKuivGIqBgNa3Mx/2LEuZH
         G8Md3CKeF98u/d/qTp/hJKlLrqi3u9/iskReQvGDzmpIOvpHfbBnwdKqssp0xnIRRjDc
         huiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6/9kyyvxt5XU1QqIBA2Scv6xy1ahEdx6oeZXKMJwJkU=;
        b=j13d+0mhH8q5GBqyMyO6xQJB/9JWzMymeHNTjEuT0W3yOJ7vLvo8zIwVSZXt95pHjP
         Sn9iR7uTUgkkaw3iOpTtRuVxEpXKdFl6NklojL5/pc4REd7CNlPUtao9bBKA5uyuywjh
         B3NI1LoRqJUUMD7GxurhRvA9p1KQrCNq119f1SDAIrJA1rN0OE6nceoCDxGrAnHMUYMA
         CgYn2EaE7Tq/AJPcPO+c9z0ri5ye7g+pNyUleLxyO8nZmzUwPHvLOTJUmo1zNVbum7Cy
         WpSSZt3CkJlR2AS7bOCk3sowg8AKiug8QtT+RO/Wr8H647TaD8gjsCQrAnewvtbrFD0S
         as4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OmztEVV4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6/9kyyvxt5XU1QqIBA2Scv6xy1ahEdx6oeZXKMJwJkU=;
        b=nHdZkiSMbC83LzuJiavp72TUB8iV7Pjck9VvusWVok/OZWI+8l9MEAvEMktliOwhhm
         pYlSRCixfMvhrEOrWyumfIkH07INd5hzQpHmvq1twdm/eWCzwmtumlFthwmn6bsuzTLK
         yd2ga2luRtO/efT9jktJAmNHZoz4R+XPcdsIjqBgbV/9hi9Ez9JbcmPzMoSJdGACX7XZ
         2g84CtLqWi08flPXGdaVlYDFWL9uz+rj5kjwKZRseH8+miOYjkatNGJ2LKJARB8byj45
         NVEm94K6Wns8Rfsxh2d8uxuCMmH0DpkhfMjUF+M6Gws5qJKoFm8LYhCqibICD9P46byn
         xukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6/9kyyvxt5XU1QqIBA2Scv6xy1ahEdx6oeZXKMJwJkU=;
        b=XH0eHNmgasREGpI4B2gm6DLKK/oQkquqiCkH7UYiUWcgHBVqv3JuXbo2m1hS0rUjCu
         XNNTnI974vgIwa4ZxNLEF0py2U8YO1Pba/eFRg7zx/tfeKW7m43lcjqJza/yF/qdMyhq
         mCLtpQVVt8VNgYPG8d7fTUbSNP8fpjbJ8VnrxR3JS4ajvXHWBIQaee2u9FFZ6X4U6xUh
         QVQOQ3ni9eF4sdKqa6d4Lx7lseJE+dQucV3/qYHtzfIoeqOJFO878bX0/dBtQWmKlYmZ
         /DPHJCR4kcNQCMsQVUdyF2J0zPzPJndoi+ETxujf2tFIZIrhLiO5fPNNHexJYrftF6nH
         Y5jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XJhkB9Bj8Efmruv7KLXLp0rAZEvfvMHpKyw6De/3+myxZ9CQT
	eWxvt/fJ7+SaxZTtxW0YbMA=
X-Google-Smtp-Source: ABdhPJyOgXCL3zKvqu4dff+He51cTkhtWB+EkNMRG5zTkL9WUhvmx+aPnWqt9XaSlULQQd5hip2oRw==
X-Received: by 2002:a63:e443:: with SMTP id i3mr19391010pgk.114.1620060123030;
        Mon, 03 May 2021 09:42:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1d4a:: with SMTP id d10ls5960284pgm.8.gmail; Mon, 03 May
 2021 09:42:02 -0700 (PDT)
X-Received: by 2002:a63:4f23:: with SMTP id d35mr798209pgb.323.1620060122431;
        Mon, 03 May 2021 09:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620060122; cv=none;
        d=google.com; s=arc-20160816;
        b=qsT2TLWmwdzjmIAGk0UG6ufwtS1y1iKehuZpIZOYYMfel5dqMyPlZraYTabOtip1n4
         TYvpnn920mwSV0rmOA+US+mQW0dPdKTFbV7U3z0nf/r69Tg9NP91Q0XGdVIKtmsXjUUg
         IzjMUtxpx7RNN7+Tj52S/cpQ8wAydtLnm6RvaXA3hF6JA/ioYQs2DLb6oD4H66RFsoIF
         2RncOzJ1isEmMmRZ/0yejniGyDk8/4faA5IdgiNMzyJI5JKvqYdNanmiN4AFlED//7jF
         n0dq3yALIR5aJ+XzX5OvVlKki7umn3xtJd8tfSe1yWL0OKhWKv8n4fcUYUzpS0T4e0d6
         uKxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iOe77QwV+XM1nPFeXX1TbW8UPYlqRDODntxqQu2CNjE=;
        b=Bcxnwu0KzZJPm+i5EUubkFaG5HtA2ag/3M41PHQkq1ICY9aDK4UVzS7/7yCxlRWUyz
         3viQ4nN5tKai4vy1VYMb2B41KS/d1hjAOAPygFknjzkgIXk3ZalvJL9xq4IQCK18Tcqz
         jnjz8nTBCx2JHw7hbwgvf4wXbdZ4eY8CTaRCwO2PGsuiZqcOa5TwpI1nfXaOIbd2JO4w
         8xIpvzfkx6Qxk14aAJ2UI8m5Wtow953fh+EkUELN9HBlvtppVeDud8N4ZbvDotydXxBf
         K0N+ASuUoBpqn2MHM2ckYzetdZKjZSkPN/Ex9rYxVKEEV8bX0e9SX2xCFcck/3ZdNriu
         74Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OmztEVV4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x1si3726plm.3.2021.05.03.09.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0388B61937;
	Mon,  3 May 2021 16:42:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Bart Van Assche <bvanassche@acm.org>,
	Hannes Reinecke <hare@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 34/35] scsi: libfc: Fix a format specifier
Date: Mon,  3 May 2021 12:41:08 -0400
Message-Id: <20210503164109.2853838-34-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210503164109.2853838-1-sashal@kernel.org>
References: <20210503164109.2853838-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=OmztEVV4;       spf=pass
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

From: Bart Van Assche <bvanassche@acm.org>

[ Upstream commit 90d6697810f06aceea9de71ad836a8c7669789cd ]

Since the 'mfs' member has been declared as 'u32' in include/scsi/libfc.h,
use the %u format specifier instead of %hu. This patch fixes the following
clang compiler warning:

warning: format specifies type
      'unsigned short' but the argument has type 'u32' (aka 'unsigned int')
      [-Wformat]
                             "lport->mfs:%hu\n", mfs, lport->mfs);
                                         ~~~          ^~~~~~~~~~
                                         %u

Link: https://lore.kernel.org/r/20210415220826.29438-8-bvanassche@acm.org
Cc: Hannes Reinecke <hare@suse.de>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libfc/fc_lport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/libfc/fc_lport.c b/drivers/scsi/libfc/fc_lport.c
index ff943f477d6f..f653109d56af 100644
--- a/drivers/scsi/libfc/fc_lport.c
+++ b/drivers/scsi/libfc/fc_lport.c
@@ -1741,7 +1741,7 @@ void fc_lport_flogi_resp(struct fc_seq *sp, struct fc_frame *fp,
 
 	if (mfs < FC_SP_MIN_MAX_PAYLOAD || mfs > FC_SP_MAX_MAX_PAYLOAD) {
 		FC_LPORT_DBG(lport, "FLOGI bad mfs:%hu response, "
-			     "lport->mfs:%hu\n", mfs, lport->mfs);
+			     "lport->mfs:%u\n", mfs, lport->mfs);
 		fc_lport_error(lport, fp);
 		goto out;
 	}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210503164109.2853838-34-sashal%40kernel.org.
