Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBDGQYCCAMGQEHN7AYBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D8D371B21
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:42:53 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id a6-20020a056e021206b02901a532cdf439sf3608184ilq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:42:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620060172; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aqv6DCTO/1i8ZdyrznNv1d6kOOsNqEQ+U5sBVHTGTrL//FyVtVdgoGwozzwYrYJidn
         B1KMuAIqUduPdaP3+A024z4rMCu6v50csJXe6XZ0OHlUviW9NQjWWcjo9+LVPhvYOSgB
         ezVw4YdM+KW7HXGfUxXHkfQe7UbPy9rlwwnfarR5bbpBlITeUyo/5/aDlce3LVZXOfQk
         QJHs40JwdOML/gpGPKdG24YwsJ6g3ga8Y4xA+R8UHSvHgs2d1SSNR85zcoNRwJeMDOHH
         UWYkPKKxOAqfrErapE654Ia10uIQWA1EjGC7nTSMdh1gpclQurjuMwLsbQJy3aqfZ3nH
         qY+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=z07NnjYCo1GlwqYe/xcbTF0o0xVYq2ZOPLEf/657wKY=;
        b=qn/o4S5s1+YD1V5mHiVSrTetTelSfkpQkQJD1X0lo4vuqT4/NdtjQslRC1vWan+AkS
         DBJHl/WVxQQzn+92dvh5qsP7ABzkwiu1h1O10BJWs3RC7MGLPeMPiNVCdAabVw9LjJtI
         hs0Vfc2AQxqDg+hgdfl9yOB/jXX2zwiDOX10eyvNdIejuT0MHikFwXyN+fGrIsYQ7eIK
         fQyfh6I5j4rusj/LfIGT3RAlILys+eCBS5goR+m8GP6UBlJy6SIXgpWno3+YeTcAsV1/
         Qj6yaYH0u/BLM+aUY3VlAeJ3mujGduc6jEUSHkUBdF8acYC0rNR0hxYOybVv+tbcQpVq
         u3dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WLjJN3Qx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z07NnjYCo1GlwqYe/xcbTF0o0xVYq2ZOPLEf/657wKY=;
        b=IiuqA61gdW/5p+OtXFXeM4kNg8aMSgPJskz5AxbAjnTHh2aLa0sdRLUSa1SStUFyvi
         0SZu3NwpwvkfsRQ9WtnCY3/Bwsosbr/joszX4y74qC2hUnls3Dibny6FWM0NvfRYVRwc
         jDtjU9QkT1v/+C689GySK6hT45+vWfh5Ne9tjmGpRDXEyM081rRcDiPmH7cq6IFWMmEe
         5pwwpPlgvfNBSl1Gc1mfhlx8VUpx0cpYxwhF1l5VfxbXJAVShvrVFitFf1NDkdYYmPbs
         6V5IU/5SUp9b0nOFdvHVPER1UKtndxcsRLgHgGeBs89qkd/NrSjJvmsc+R5F126zbjBB
         Th9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z07NnjYCo1GlwqYe/xcbTF0o0xVYq2ZOPLEf/657wKY=;
        b=TfYUVvemMobjmlXMtnNHZXBspSRyQd15xgpN7AYTQFsEzoIBQxR2v8yfy614nFmDWE
         TlxVlQJROpfacRHkZCSkzIFHSHeNIXIGUgHL6R8ohHFwRU1MSHikJt+Vpe7yOfTMxg8h
         qXmRzOSNkcLITsS5yBqdS2cFbDA3TLG+VFo6C8xDOlpp+7gc+iUGu5Z/N/jEttaPlcuY
         lyRuveskm3r3wzzS2ZUKZFveHItgZyAkl3uZS2ZRsrMT4Pvf0IO06Z46rCJNHsjbY3vR
         QZgUfJ5+1WKEqd0eGAMeuibhbvpS7o98YZIZhAM50B3kqmXOQGMxUFYiOyz0VYsXZ1FT
         yhQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EfGJxhA6eDowYT/7acw4TU0tAKIk93QNpTvvI9AKlJWP3Rvav
	Lhin2yxedqzPMEVAYC2+Y4Q=
X-Google-Smtp-Source: ABdhPJzmAdlV5JAQIdsJ0RpuD4M7SX89iy+SHIlc+xfD3EPW5V8gBgW4uLpLSz5pZ+KVWIihzB95pA==
X-Received: by 2002:a92:6804:: with SMTP id d4mr16958801ilc.5.1620060172719;
        Mon, 03 May 2021 09:42:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3590:: with SMTP id v16ls1797996jal.5.gmail; Mon,
 03 May 2021 09:42:52 -0700 (PDT)
X-Received: by 2002:a02:caa3:: with SMTP id e3mr19716888jap.57.1620060172363;
        Mon, 03 May 2021 09:42:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620060172; cv=none;
        d=google.com; s=arc-20160816;
        b=wnVeFH22MSJyQbrykabjiKL4gV81walB3IA7Or+NIRjuftgzLgo0tJIh0kW6U7j8Ln
         D1fhu8VRbAYsab27GmdRp2667XiOU6Xzg1iU/8JcrYm0C1e4ks7EayOKuSR948Dp7vO+
         DRwyUi5B5u1+2ikwPTkDPAFqWKF9BDthea+68AXu16HmOvS92xVJcyh+icuVLzmsaPIF
         3ckbGmQ7xS1a4mSmlHIVnssdr1fFtWLGDDN03tbVIwpYMU6KS6ox7XV8Vbo/aAG7eE98
         9fw9cO+3gEy8TO7Urm03BZxviJih2rEL3xM7slHQS6N2FgLZS2YLuJXSFrodROw0hXg+
         MO+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1d2TDdWnjHv3aD21YdHXBbWD8RPXPWa1qpkv31GFwBw=;
        b=xzBw/IiRFB7D9oLNVGZRL1hxSRbGK7jgOoh+ICRmDuZu0YquBl5l5WIi9OvcAJPdv0
         WQZKSNrQqe1vH1b9hJaEVQuS/i0MayuiVE5hVI8xJmQspthrgQ4EO8Qq+Vha+TMYyS1+
         nY03kJFnIHVVbLdwhyP6rDI4hPswk0ObFao+j5q8TIAYf2Y9RXn9XWqZMmU0eU95maVx
         HjYv4E75JLG5GJmfm5PBCBrY+W5yOILd1aht9n+Pn++42KwAVTirrQZijt3gwNCkoBe0
         DzJhLxDl9g/s6UxOgbR90zPL5UCN3oyxFDs0fsQ9Io8JE+jyfX1tqHys7XkWvGT5QoZN
         x6pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WLjJN3Qx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s14si12764ilu.3.2021.05.03.09.42.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:42:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A0DF06142D;
	Mon,  3 May 2021 16:42:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Bart Van Assche <bvanassche@acm.org>,
	Hannes Reinecke <hare@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 31/31] scsi: libfc: Fix a format specifier
Date: Mon,  3 May 2021 12:42:04 -0400
Message-Id: <20210503164204.2854178-31-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210503164204.2854178-1-sashal@kernel.org>
References: <20210503164204.2854178-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WLjJN3Qx;       spf=pass
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
index ca7967e390f1..5c0aa2c5fd55 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210503164204.2854178-31-sashal%40kernel.org.
