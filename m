Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBS6QYCCAMGQEF2SGWRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 176E7371B3D
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:43:56 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id s2-20020a056e0210c2b0290196bac26c2csf4940334ilj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:43:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620060235; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2SDUX0b9zn2w++6vtACRpY78plYsuLlQHeg6VfKjBXjrfdTEp0uFalpAuczboMTYK
         B/fu01oc9/pQ91ZmC81nGcdPnepsAz9oUZN9Ic7v23Ledplfz/vw7L9lh7L1jIpvCN9R
         wO/H41GAuOu8jPEkWqxxtpCKlb9a9bpiMJfKX2cOVarhpG1l9l04irXPg8q+jwJhJuOc
         izdShIQbPlfeDuYi5ZWJRsS/6XfWO0qb6rOHWPYa//nXSCii6dKxPstirebUb5NI4g5L
         ofIMsBpEjPlGCJgKO9iCdVgdIl6onsqBPrIK+8Oi70mkcS7iZvK6zHLY8XoNHKhKm2vS
         RnCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5XVTPT3ACDs6z6q+CrVPyGQuXFr3Jcb0jIwCCi0GX+c=;
        b=owLur85kl55JW1+Wq0vj1fmXFNDZXhxRW+L8Sk3bGNeyyDxKICqIUEycDSdXLDpStW
         KlTH4nRNF1NR0T9MQQJX0h0LulnEOqNyd9EsEtVRLSrGIy1QCGvAKROYqwassh3/Mxax
         e51NNB4HujTvC9Vzxa3WAOOx2FwDHAOeFq8y9XK/hBg6MotcM6rVIwRMym+fFOP8kOj9
         cisuJ6RnfB028+CWUbaSg5JtTY6dnt4B5GzElNxpp705bBML6cIKHRnplgTnIYNSvQqR
         KVFtZOFe+yi5J5MDFlRBeimhzD64RIZQt6N30ma4Wx0PC0vZYgPvmBjA+RKTKU5HQxZD
         jIXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XBTTQpxA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5XVTPT3ACDs6z6q+CrVPyGQuXFr3Jcb0jIwCCi0GX+c=;
        b=SBKuyMrtwFhieIWFWuQaS9mUwIeX+iA4oBx8LB0PlBM6sACeEtDHhuIKTrTz/YQIE6
         GAtapaBaF94Cd0+c+0PUIftmSX2QWmWxz407vNryRz5AuKxCrL4dxMOHus4sSP8B8WDO
         5nA7/85lvMG5jVjfr0AGsbWZYLRWJaHSqTSPqe/yMckPqXTkqPeK6jQE4i0ficI2olfd
         IbH90f3RAiOwxvBWvs9NXmexDDo4IFQQixJKZUvAGG0UTbAKuw/B7ecJFwo6OKFysMGz
         oMoSbtYuClOP2gT0C8l/VCoxD11ytTOl5cDxKq8QKb+ZURjhddZCvAlJRomusH3sS/ES
         2LWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5XVTPT3ACDs6z6q+CrVPyGQuXFr3Jcb0jIwCCi0GX+c=;
        b=ifDwhz1MU3lXq0tHnewiRP3riWJQolREh7YUnzJvj/C8OowKcLe+TevgH2artBmCJC
         dMb0tQkom5D8LmqVgTFVl7D717x5jN6A6HuLh6x+krh1y2GZLizkzoMUEeocoeVz7PnV
         0Ssrs47IHZM3rXOfG0TBjTO5z/Gm1dHhu6EYgONygcNugCIbJZSx2AH4Mu6S9m1cDFwH
         tbBpEs+tShRa1BvfvNB3ae/KQuvfW7lSsu7Hz95uvpr1lhLy2K40SkA594bvqmNtGIKs
         j8NcZipAto3w5zBbocyWm5GgHOzMnIMelewNemcBSJL/VdU1TXlOh3nDz+iUwWBszD+b
         sWDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jWxdXv4cc7y/mBgzQRoQaul6c3KnQ2gRCA6QmBbraAeZ9XLQN
	ekiLbsGqjXhLwG4WMJrkWck=
X-Google-Smtp-Source: ABdhPJxz3o+QwxUcQqzvQH9nLxv/vSPdTsXzXaSiJ00UzztAzV7UnZshz8Hd0o5zBiD7KpG720s6aQ==
X-Received: by 2002:a92:ce4e:: with SMTP id a14mr16824423ilr.211.1620060235107;
        Mon, 03 May 2021 09:43:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:4a3:: with SMTP id e3ls3236163ils.5.gmail; Mon, 03
 May 2021 09:43:54 -0700 (PDT)
X-Received: by 2002:a92:d092:: with SMTP id h18mr16985330ilh.62.1620060234716;
        Mon, 03 May 2021 09:43:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620060234; cv=none;
        d=google.com; s=arc-20160816;
        b=FODexP/xJeUy8onzrX7yxMIZ9UENvgjuDVrVzvSTKMAN29FFKIVmyYSPq5Ci9wNxKW
         w30ZJs76sSkPWyOYD8EUKy/C+KeuvyL9fuYZv69hw8vujj6pf90Wp1gDuofNdatuvgl0
         vaPdZULCavVnXrBNVXV1obVTwqcj+ic3QQNI1UGgiP3nlpZNxLUzwDPnJKo49IsM9G73
         UhtxsrJc9Vo6JgpGI430TYcyJCoxZPiG8tDN4M1p1VGLqc8buGt1MLUp1yz13p+T+HGb
         V6ub5ndLydOytsmFdeMJSAwpSQITQkSVYACQ6Spd8+dtpuyBe5VEjpvSzhi8RftqhEwY
         XNEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vZ9DdDFTJ2HpQ0yB5CAxr/WE40dqn4GJbhRkiZENZXI=;
        b=U6JZF/INsYxcVCNGYwn+WFoZd0zKRvyqPy/GlBhjso/p2REu7S/TartI5MjkRs9GJD
         YcCi0bous2fRTwt5GYcGgUyl88FgSXWGYWS3d08J8QsCLqiqEZJ/YJvuhnjN174rkn6l
         S49ZhnbjTtifLopSR3u1ENaOMmX2roKNR+27CJXumPEvWjXzbAq4ZYhosy1bbcYrIbPV
         rCeRsAFyHXdWMbBW65TclqSy9g5wK8zMBFI3giWfxqx3t6qu4mBMHcll4eKgKPP4rg5y
         7vaIt20iNo/V/yIJQo++eQJpMbwvCyOddTUAik2cPKdsyuu7hwbI85kUjoWelb6/SV9/
         dVjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XBTTQpxA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h2si11919ila.4.2021.05.03.09.43.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:43:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DE63861972;
	Mon,  3 May 2021 16:43:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Bart Van Assche <bvanassche@acm.org>,
	Hannes Reinecke <hare@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 16/16] scsi: libfc: Fix a format specifier
Date: Mon,  3 May 2021 12:43:29 -0400
Message-Id: <20210503164329.2854739-16-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210503164329.2854739-1-sashal@kernel.org>
References: <20210503164329.2854739-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XBTTQpxA;       spf=pass
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
index 867fc036d6ef..815d224b9ff8 100644
--- a/drivers/scsi/libfc/fc_lport.c
+++ b/drivers/scsi/libfc/fc_lport.c
@@ -1754,7 +1754,7 @@ void fc_lport_flogi_resp(struct fc_seq *sp, struct fc_frame *fp,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210503164329.2854739-16-sashal%40kernel.org.
