Return-Path: <clang-built-linux+bncBC27X66SWQMBBX6MZ75AKGQEDY3COWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC2925E9D3
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Sep 2020 21:26:25 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id p11sf209529pjv.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Sep 2020 12:26:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599333983; cv=pass;
        d=google.com; s=arc-20160816;
        b=aML3LqKe8ZHShBB3h1cOXvzZ8fciffBB2myfjz+Rcpld5GOIDwESRajWFnBz8Uu9VP
         qEpJaKyMvxxx8kcEpw1U/H/1hET0/vKORIyG5lSzFIL7hs9r6JDGpdDMmADsQtko7PT7
         jh5Ro3/8bznzPfUR2XnTEjlUt2ECRoJZNr00Hg1a1rEcvuWijOGNDRbfZ8yL5LdSDxfw
         loQIFQ7WBji95VjdThbo+XpR7NpZbx/rvYrexMGsDKMPuH83BAYzhQWMfk1BzBKVy22N
         QTBnBSgYq2l6qM1D4R65Qf+cqIoB51uvSryHMoiP2rB9WfrVyWgHSQlJRkfNA2ZKzrNE
         AiQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=fV97hvfezi0S9m1ul68fdErPa2J8iR2C4Evb8QXCpng=;
        b=Y9ESnQhLaS73SgDLLDt1PVo9TZqgv/wCsCtyliC4xp4yn18U0OagfNBV29POJT5rlr
         gDOC8f6NjCo1psUDIJRp7haHwRB0/KqE+LaGETKn6nxZJPOYppZFaCE03fXYm/RtVbcC
         pzPRdhNoSVaMSgfr84ET5zEY5N+T5SJbasg0K/oAxjRb0rxMFERGKokOD5FjpywM9uvY
         LXUIK7r1BEAo6ct1WKRh/lnhoXv/WWC9uXeRh9e+peDuc7sniN7f8sypOxXmzgGWDsJa
         aQGNR5hwwxqzx11WwxaIhQxagalXaoWS8NmQA3GHg3UVSp2bDtC46QBCGp6tESEE7sOt
         3iKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M29Lpeyl;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fV97hvfezi0S9m1ul68fdErPa2J8iR2C4Evb8QXCpng=;
        b=SaiysdDW38D/KtUzRwiZPn/WFnZYzy7BYFSpenwnWfO6aI6JB30qZW3NgSx7a+k2Vf
         nk5hMRgaWAt4FeQjNsOVNH05juCX6EmCUdqEmCzPtHaDFyQoWNdoskVlTcx1ofR/JJrx
         PZCp5q9KdQ2s9GqBAboqVlia3n53dKSptqTzk3giY0fnZoE1SxiR6vrJnf1vajSdv+p8
         3Rd8IcG9e2Q5ro4aiYfGkudgG6VZqa9TZgwd46WCAfq1UCnReAy5XMkE0z/5Ce5yiNXn
         alneJ6/eeqOfFdRZfPJ4w/iOdu3qags2vPdljENoX/JPelHakYK0kMvcLihrrRTn8idI
         e0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fV97hvfezi0S9m1ul68fdErPa2J8iR2C4Evb8QXCpng=;
        b=G0BK1963CgaSi0Uh7T7OhglD/FyG2JMb8Cm0Ls4qoxQuOuwQx7S8sDS4+0wqNd81oS
         5OhQdJDhMNRXPP/Z6AkNW9RvyTrBRsoIrk/+aERV+vD97hBi3nl2SSr4+pC7hXQU+4pQ
         dsjdLZPncnCi6Aw2H2bisj4FJhN0w9r/2aNgbCDK3FotiCrslb9k8V8yx2q4VrJDV/mY
         3H6I1xxJtM2SVH7k1S8frhGZ2OuKKx66fri8KiYJlnKuJrq4aiVDrfBB+P52Y8dfSoCR
         tt5aZh9moI3aUpOYHs7+k5OHFyjQlL9CTgn5l5E5z+3HZwBhDcx186TU/4q1SzZiGDsi
         GPQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wuzY794Wnw7KhgRAbJsBZu9DNaYbMKFuzIhHGRp1TdhEBwm2w
	+1A++HCEwBGaRKAOzGHE0Cc=
X-Google-Smtp-Source: ABdhPJzTIFlqtTvFH2Cum3/thBCJU7WYD37DwIdp1wInKkIz5aVE9RTdJ1iDQXM6s9joTw5FJL5oTg==
X-Received: by 2002:a17:902:7c16:b029:d0:89f4:6227 with SMTP id x22-20020a1709027c16b02900d089f46227mr12026677pll.15.1599333983557;
        Sat, 05 Sep 2020 12:26:23 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7596:: with SMTP id j22ls6098630pll.8.gmail; Sat, 05
 Sep 2020 12:26:23 -0700 (PDT)
X-Received: by 2002:a17:90a:e287:: with SMTP id d7mr11949684pjz.170.1599333983089;
        Sat, 05 Sep 2020 12:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599333983; cv=none;
        d=google.com; s=arc-20160816;
        b=M5/RbNVjVX25eHPYwQH4bA0QP0mnwoS4bjLXb9ZimHu67xI+rIwSLjVkxnDNpnFkQE
         DJZ0Mrg/gvPHz19Yoj8lH2QNxC8Mtr7i7cqrr4YDgLc0QLsVFolakFAsD4BWZq2dbsc7
         glB3AklGXgg3Be7eznphsq8lp+07b5o5nvLvpaTNZMtxJAuD3qdiqDjPaINbgPYfNVJA
         UhMUa+DAWTchHML8EBpUAZDBrLVxqPmha4r09AcwKQhZySff/vLxL6iXrajfz92SMwKV
         InljcIk2HmuTF4jYcW19pj8vl2w0xBqAtzzFbvTxJV8s5DZ8cYWkrXNiTDPY0CPro/Zq
         x2wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pFLFpRHDE4JFudYeKR0yB2Nja5ud5d8SymFz+afFxk4=;
        b=Om1wbpX754IS+S7R8ZZdQxEQOFbuS7taovrgQ98i6T7pVtEXi9MPbPOthi95hPFBAH
         kapTkdRUpzB+IvgeJQppMtA5DTf8EMPvRVSQekV+Ox83oqUi9zcnK5lHK+hiXLOMEwfL
         1naFWTrbOaWIygSCtO5UD3JV777s2RwLEG2/FLn0xF+ab/I0vK+aOM/kD+mioAsgQzt4
         jSP8lHUk6Rm4wrFp2z2wv1smcUqznHGsLsudWIfCFI3eIOv53HBmurw/Eez2MX3nbdze
         r0LmeNkvj4+amul6CIa48hJrWQnhQHh/vJyvggwcDVOuacF9jG2ndsQC6FIznkrvNL/4
         F90A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M29Lpeyl;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id o98si549108pjo.1.2020.09.05.12.26.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Sep 2020 12:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-363--L5a58zQN52mBh6AdwBmnw-1; Sat, 05 Sep 2020 15:26:20 -0400
X-MC-Unique: -L5a58zQN52mBh6AdwBmnw-1
Received: by mail-qv1-f71.google.com with SMTP id j5so4666624qvb.16
        for <clang-built-linux@googlegroups.com>; Sat, 05 Sep 2020 12:26:20 -0700 (PDT)
X-Received: by 2002:ac8:34f2:: with SMTP id x47mr14259656qtb.282.1599333979700;
        Sat, 05 Sep 2020 12:26:19 -0700 (PDT)
X-Received: by 2002:ac8:34f2:: with SMTP id x47mr14259643qtb.282.1599333979497;
        Sat, 05 Sep 2020 12:26:19 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 134sm2389199qkj.53.2020.09.05.12.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 12:26:18 -0700 (PDT)
From: trix@redhat.com
To: vkoul@kernel.org,
	yung-chuan.liao@linux.intel.com,
	pierre-louis.bossart@linux.intel.com,
	sanyog.r.kale@intel.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	guennadi.liakhovetski@linux.intel.com,
	kai.vehmanen@linux.intel.com
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] soundwire: stream: fix an invalid free
Date: Sat,  5 Sep 2020 12:26:13 -0700
Message-Id: <20200905192613.420-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=M29Lpeyl;
       spf=pass (google.com: domain of trix@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

clang static analyzer reports this problem

stream.c:872:2: warning: Argument to kfree() is a constant
  address (18446744073709551092), which is not memory
  allocated by malloc()
        kfree(stream);
        ^~~~~~~~~~~~~

In sdw_shutdown_stream() the stream to free is set by
a call to snd_soc_dai_get_sdw_stream().  The problem block
is the check if the call was successful.

	if (!sdw_stream) {
		dev_err(rtd->dev, "no stream found...
		return;
	}

When snd_soc_dai_get_sdw_stream() fails, it does not
always return null, sometimes it returns -ENOTSUPP.

So also check for error codes.

Fixes: 4550569bd779 ("soundwire: stream: add helper to startup/shutdown streams")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/soundwire/stream.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
index 6e36deb505b1..950231d593c2 100644
--- a/drivers/soundwire/stream.c
+++ b/drivers/soundwire/stream.c
@@ -1913,7 +1913,7 @@ void sdw_shutdown_stream(void *sdw_substream)
 
 	sdw_stream = snd_soc_dai_get_sdw_stream(dai, substream->stream);
 
-	if (!sdw_stream) {
+	if (IS_ERR_OR_NULL(sdw_stream)) {
 		dev_err(rtd->dev, "no stream found for DAI %s", dai->name);
 		return;
 	}
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200905192613.420-1-trix%40redhat.com.
