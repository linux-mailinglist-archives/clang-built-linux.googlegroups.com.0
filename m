Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBJGPYCCAMGQEVBT5VDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 882A7371AD0
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:41:09 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id g26-20020a63565a0000b0290209e5bf0fd4sf3206800pgm.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:41:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620060068; cv=pass;
        d=google.com; s=arc-20160816;
        b=RNk9WF8ofNsvBLbaz66kBmo+65X2XgGNPsrys5N7uOtph7YhJoOWfuYqwyikxTVr6F
         bgqE6E3R2Tb83Oc33EGrMVZKR87w3T3Rj0dwN453ozFAuIZicyk1t1u1V+KhTpKLLR3V
         Jd+kAGCr+tM2e7CgHHnma2TA9wEdKUNbhrSuN3u3Vs4ESyozvwgEC7zdJJDSDPFJZJgM
         ts7MH9+k94gViXxj+ojfLy/du940zUa623O6tHMqlj32hW+s7jROaLPy4nIjyoFZCP59
         vNhcjn2M1lsj4kS+EK0eerE9U2f5mzGTvGtEsN7y7SAsifnrJGuDTQjtyPBssJi20EmG
         vDtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=otMk8FUjPLGeJCx3zlK48D/k84fg63ztli4/eTX7vzg=;
        b=twfCa6wuQx+T3FiIIiDIWXJNGx8ZIBicaWHnT4Tdscu4N0vv2kknugYOSOKqUoDsw4
         J6ZdpAJho2yd8k9hHD+CVGwM+Q2Vx/nTWJH+ui2F+77VIYe94a/op20cP7fKbn1UKwzg
         1g3pzqyty+f+UjN0atG3TVfu8M8fREdRlSyW9L0n2mQbnAm89LflgRlzpqdn+hFyEZyC
         yRT41fgwhGN5WRJbxSeBpLHw8VFM743SuymXgw7ntRuHgeA/a01vvKIHjjCLlxE59S1E
         0ybZx/hS/88eC2I5+UVtqlAVbdEgumb3JhTk3L8Dk40ax5qOs04Qk5ldHTphskKceyIg
         tLuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bKFVjuvX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=otMk8FUjPLGeJCx3zlK48D/k84fg63ztli4/eTX7vzg=;
        b=k5fmH25cU7VyL+5yvbS2nrl6ikXsxy+1e0pyCahVewABhFJ9lWUfAU1MCZNzb/rEK+
         DFq/lxcCQ4IEVtMwapZCFFySdKtEH5Z3hfcXf6oU4ACUxu+lBxXKfbMCqJeOb+ZaP2jy
         l9P98/w0BdMAajBEC65Ms7oY6NiHJG3VTtODndVyHApMrzthqtEIvIKu5yYh2r8WWm+i
         fBTZNWPpxhNJnAQDex6P8lH9o9ylqsc01687i3xrwkVWkwV+/pIkWoJy2RSxgrcY3Ukp
         8H7Oq2eGDEGvQS+szBx7yetVSylrZKFoAUrf2vqXlmgc1NwK37vdROcZU3kX1aZc0vem
         Hrzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=otMk8FUjPLGeJCx3zlK48D/k84fg63ztli4/eTX7vzg=;
        b=EhbuX6Wjv3wV5H/7OY5esZpDeZe9qFF4O37vizGAlXJ5kG/VTDamVrroobtrs3knrr
         FW55vDPOKqaFbGyk/NPdc7zwSCvLS9EmK0ZLymCpjY95NtI4WiQq+zWgrESMshQBd6Q1
         V37QuJLoGMaI6iMsVTFFOWBFZSdkg/3C3oDZ1tzjVrM0mJOafTaOuV/6OZT7aZ3unoVJ
         uV+YT9bf7eNhzUm/27qnSeKmoWJ7/bdiCrfVRALLQxXEYeG5a188IW2nLBtJdXXDs5Xw
         8Slc/pFcYp5YuLZX7mWPh47H9HPyUTTaVgQltxh/vAHV4Qy4dIagum4oap8ASyKBBhIh
         buUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v+X2BLU8UhGQG/B88a3MSfP0V/Kg2ZL0JPujbKVt7gIbk5Rdu
	1MwYN4Lx3xgRu6FF4HeHpPY=
X-Google-Smtp-Source: ABdhPJzoBnLG7dTAeGCqQPuG2thwmnHzfKKdiqaVscgJtalFENdUVSMvag0U8/0SzBisEcC4efOn/Q==
X-Received: by 2002:a17:902:c244:b029:ed:4d5a:cdaf with SMTP id 4-20020a170902c244b02900ed4d5acdafmr20908515plg.5.1620060068125;
        Mon, 03 May 2021 09:41:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:df0d:: with SMTP id u13ls5350092pgg.2.gmail; Mon, 03 May
 2021 09:41:07 -0700 (PDT)
X-Received: by 2002:a62:86c3:0:b029:261:5933:e47b with SMTP id x186-20020a6286c30000b02902615933e47bmr19636295pfd.34.1620060067579;
        Mon, 03 May 2021 09:41:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620060067; cv=none;
        d=google.com; s=arc-20160816;
        b=zZv/ne6AxVwhfFdGKn1mHPFab6GGeixZ9JbFZMri/ozl/U3hpTXdpEnPb1eK5KaG0a
         UCJUp1dGR3OQ270hkhBBfM6nFLwLcUfGTBWDBBe5d5EHMOmhpkxIPxqvOZCKX75B8/5Q
         3+yY24zdpjUFMq2TFa8ey/3mnHjTbqb7a7RfW+DP5sTbnZUF4tzmaVqIhDZIr683MgZB
         fxsk2KGgGM+oh6x5Hy8+pVV8+nEUkoDLhFpFHrcjZ9ZMyq+dtnhz17Xs15LupvKK6tci
         fbVZxdiK0y95YKH7J32kl1L58vS725vUSP3YilKTmXyC+D9t30zrnJmgHFpZdFWJC4bN
         eSNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=M9coInx10o9gTmRoadSbCKFq8Yy9g+lW/OP/ki/wrlg=;
        b=REgiSc/cAeEhbB/dyfNY94upsqyqd5bl/LIEhSp6idAnScL683AbJl85dOIyzC39Hn
         Rpbak1clRgoXJxNsAUTbi3CzU/36BowBAuKRDD/FJaZ2uw59oTtQEkivsISrw1F91Ht1
         8shJC5mTLp6ccJTeWyPV2ntPvgm/Q4emy3qFQMLQgxJyMzC7MPKvReEEpq7RfSM49WYL
         4aT1MHcfEg6ai0svHV+lmyf+/OcHJvH1lYCl9bW8Nz2sBFPjnMu8m+DUWIK+v/+WLXDU
         NqPqNo0WRUyW5bzIOlQAqVhyyH4Iku4Cn0g47q13exXcHo78r8an42VWOhfpvKCQP/kH
         4c7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bKFVjuvX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id md7si61pjb.3.2021.05.03.09.41.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0078F61927;
	Mon,  3 May 2021 16:41:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Bart Van Assche <bvanassche@acm.org>,
	Hannes Reinecke <hare@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 56/57] scsi: libfc: Fix a format specifier
Date: Mon,  3 May 2021 12:39:40 -0400
Message-Id: <20210503163941.2853291-56-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210503163941.2853291-1-sashal@kernel.org>
References: <20210503163941.2853291-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bKFVjuvX;       spf=pass
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
index 684c5e361a28..9399e1455d59 100644
--- a/drivers/scsi/libfc/fc_lport.c
+++ b/drivers/scsi/libfc/fc_lport.c
@@ -1729,7 +1729,7 @@ void fc_lport_flogi_resp(struct fc_seq *sp, struct fc_frame *fp,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210503163941.2853291-56-sashal%40kernel.org.
