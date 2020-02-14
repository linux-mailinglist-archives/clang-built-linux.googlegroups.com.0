Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTENTPZAKGQEEI77BKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC6D15DFFC
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:11:57 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id d16sf5362768otf.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:11:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696716; cv=pass;
        d=google.com; s=arc-20160816;
        b=L5JIKZyciO1jPmPQ9KsqYfwCRvc1jajj16SKkA7JAgfJ32dIwMFbr4CMTTGiNg0uYC
         KLB/3ZGPIIZNtsrH08NrwfOD96KvLzDeunS4YJckBTGcU/aoDJtKG8yfR8viXKggC2sQ
         tYvlCKyh2wZyefKxHsvbKVw/jDo6ZUT0VW5zK9gq6yviCQtSYCzjxSPV1/IjZIwFo+iR
         JcPxDEcju52rH8b3sRg+Pqbn81anMlIJOHll/k//a6aOoFZNNK8I4Awz7gj/f0L78/pz
         y1dbYLCAKblgVqbaU30DYwKBtWWpS/LudXLaRJSi35hk3+0IgZEO3BoscAiFsEwwzIMR
         kRew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kpffof2HwW+s6umC2CaUgsD0ScIjurXyIWLC+gFjFSY=;
        b=Yd1tzu+qAYS6RIP7K0QGSgkS5AUo71G5evTB9CdZL2SEJNrpe7HootFWUqbmG3W1LT
         ISsBC7CpyUUCw9M4U3cRByvRsoDN0eEy/+JlsbdTLKTBLjyF///8SlL5C8vt2MC3M7PN
         lXCapcJ2IQOFb7vRbFQbpB2nw8EorovD5EvNojH6zgB6jt6wzBYdU7REv8dqbchJdZp4
         rxWggChZ+9T/qXKR4vH2pb2ZNxaDni9wivrvXRQdjsTJ32qbsLAYpYspuhApxJ0/CYhn
         TK/e0wfKRAifhRH4gDZqQq04o2rLPNaERBSjzXu+q4zLcw9Xo6eHZ54FR4WGnv3tIvYn
         fkxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MVAE82qo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kpffof2HwW+s6umC2CaUgsD0ScIjurXyIWLC+gFjFSY=;
        b=USkam3ZZSQQECyR3kcrKpfi76GWvcQj4zAGcAJrQBsad23VnHl+r1Epu1kU/jkm4IW
         bddckQLgdyLPvjp9JLZ0oEFzuSk21tlH+S6VFEIvSfgL01MHtC4eQk8ONPAus2XbE/EY
         swfeoNHMFDH2rsoWLnI1cs0l9Foc8e0t8SOzcVrwM2PJDZ3JtYNpq3RIEJoTrysIaJ5T
         +JC/ui9Phm88g3BamjcjEoT9KEXxVckKqF/Ot9lVOVp71AlAakcVpeqWAyIYXvnZ69ZT
         4SDsSSaMXHF5XOsTzOU+Wa+jMHLpsN7Pkcy1ch1RzB9qV4LKFdjv4+F+4LxdJICPRLMZ
         zqHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kpffof2HwW+s6umC2CaUgsD0ScIjurXyIWLC+gFjFSY=;
        b=m33bXF2zcmGcFcxk515XrHLXESrZC9Afc57VMcKszHB9s22/CXtDrJ1ZnkJ1VICZ8b
         PjMxxws8nKVZ/5Q0oie+GsGow2bj7LBzW6s9CoT5lRKtQdAZEntfj71MYODK9gATrAcw
         lOPgIkkd1QygH+uvWf7r4Ch7YRI48HjAH+dSDJrNQNvDNrQzlGkj1Q6FumVgdv8DnhFf
         CIDcux1Sg31ibmebMT4bmbdI+EohpmVkoeLZwRjFGpVnsvMqynwmmhPpHeHQggbjnvmC
         NatwtEMxgn7goF9WtGCLCLNo+dy6GX5L6NhmXwXeWfbrU8sGsWG4BrYIKCCn6SmnirZ7
         h0QA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXRrSRo0Fv07wZRsNn6v10NwU3AChgffb+LOkH9e3GYJnQTQUAV
	PiTZhe8HZnEtAcovKxPQVBs=
X-Google-Smtp-Source: APXvYqwdlOuRgQajpNfQwzJhryorRtE+c/YrnQtf7lI2/sxu36GolgHYtKa4gznt4V8fL0TV5Jv4og==
X-Received: by 2002:a05:6830:1691:: with SMTP id k17mr2995267otr.282.1581696716611;
        Fri, 14 Feb 2020 08:11:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd6:: with SMTP id k22ls767328otn.5.gmail; Fri, 14 Feb
 2020 08:11:56 -0800 (PST)
X-Received: by 2002:a9d:2028:: with SMTP id n37mr3016169ota.127.1581696716202;
        Fri, 14 Feb 2020 08:11:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696716; cv=none;
        d=google.com; s=arc-20160816;
        b=UXsAwgwGm4OzsavlbbzevL9M1h5B/+yHULYxsm96vIhsVNrvWH8VRMJK9XVe05d7zB
         gFnX7XDwTbqAXQmJopTBSq3DevrPUn+nRlx/5HL89PXBODZ1718jrIME7LSwTtgFYq8x
         gRYz+ZFHzP4NFMWNqZRjKo/0A7YCBOa58DsvOgTNDwhuhaPpocaJDhpDY15u0LLEiucG
         zouEwxDmJ7CGGTxL3H+2DqS1PuZuyHKE0KoXk0Kf6gBS+/4/LDDhW36czBiSPg+Iu3GC
         803Qt2HhDYV4LJI9Y/eBNC1oJxXPkLXx6F1/XO0k6Z64I6WYkTLMw4zaCdqlWrjKmEnz
         AIrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kxe/8/HeQ3rt+NHC85E9dqyOKYBbsM8nVkTJg06uBEI=;
        b=oFgEVF871mJGbWGAK6CEXT/tnxZ8lq5iFQj9nWREpHf3/jRXPs+U9uJDMnl++mWC17
         mBPsxDqPRUsVm/h8MIUTpaO4M6mXI1WYRtczln/bpGnPi5zsv6CI2LugzRk6LG8MSKgA
         V7HZPi54YB8L64j/OBZTZJYMj1DwYKrw86pdtwT7v02Nm8btLqDTiPq5aWM9QC3yqoTm
         mev7yzjmhRzjzKZJy4+UZYs3OPS8XuqALWiJJgZeF8C8KJMmE3LcBq/9d1SAAaejlNXX
         AHv1dDAnXJdTgh76vwTNd9TrIeD/+EQ1GwQWjgP/6sARZMqxX6rbEZgrPu0eoTcv6tgw
         Vh3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MVAE82qo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c193si152330oig.2.2020.02.14.08.11.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:11:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 542EA246B2;
	Fri, 14 Feb 2020 16:11:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 005/252] media: i2c: adv748x: Fix unsafe macros
Date: Fri, 14 Feb 2020 11:07:40 -0500
Message-Id: <20200214161147.15842-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MVAE82qo;       spf=pass
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

From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>

[ Upstream commit 0d962e061abcf1b9105f88fb850158b5887fbca3 ]

Enclose multiple macro parameters in parentheses in order to
make such macros safer and fix the Clang warning below:

drivers/media/i2c/adv748x/adv748x-afe.c:452:12: warning: operator '?:'
has lower precedence than '|'; '|' will be evaluated first
[-Wbitwise-conditional-parentheses]

ret = sdp_clrset(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK, enable
? ctrl->val - 1 : 0);

Fixes: 3e89586a64df ("media: i2c: adv748x: add adv748x driver")
Reported-by: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/i2c/adv748x/adv748x.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 1cf46c401664d..9cc5672e4148a 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -361,10 +361,10 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
 
 #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
 #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
-#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~m) | v)
+#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~(m)) | (v))
 
 #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
-#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, r+1)) & m)
+#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, (r)+1)) & (m))
 #define hdmi_write(s, r, v) adv748x_write(s, ADV748X_PAGE_HDMI, r, v)
 
 #define repeater_read(s, r) adv748x_read(s, ADV748X_PAGE_REPEATER, r)
@@ -372,11 +372,11 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
 
 #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
 #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
-#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~m) | v)
+#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~(m)) | (v))
 
 #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
 #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
-#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~m) | v)
+#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~(m)) | (v))
 
 #define txa_read(s, r) adv748x_read(s, ADV748X_PAGE_TXA, r)
 #define txb_read(s, r) adv748x_read(s, ADV748X_PAGE_TXB, r)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-5-sashal%40kernel.org.
