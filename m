Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSWC3X6AKGQEFNNV4LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 85582299B9F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:52:43 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id z23sf7049589iog.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:52:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756362; cv=pass;
        d=google.com; s=arc-20160816;
        b=pByWIlAcIcf+k0rgBHuEc/mtThu1qBbkVMTLNh0PH27HM6qHe4rEwm6l+uM3MIqDvz
         9AnslVdixjCQoUb2ydoEWlkQLa1dSeLpJrHHTAuIgJrIxtSCKn13L2CinSd0EWD216Bs
         2vUkh0GMLQa9OLxyQbOI5GS64RjndtsVmGi5EfFadkhiSA34INk4kcaAEODvTdSh2WtZ
         hoOgXEGDaiGrwW6vvNaXCLK69XT+0bwbVPEBWunMGMY3HVkZrJX+FhZYEr6NExqF96VE
         F88fIXqbLlHU3gzvPgAhhGDweZyCu/huO+zoubWYqHiduns40lHWaqBqxX2qH9Rsz+6U
         oMPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OfKe3Z7+AY6kPIeAJwC4ByK5dq1ySl5Hm0+GV0yGBu8=;
        b=R5PtcMJ9H5pV9bCC40vh6ox0kg3T1SD6BO7v1+eVw55nof6vQkZa5t5KGboGiUJPK8
         ht5b4/434LXMHeRnKGY1LsC63YKcVx2NfnHDbIXse+iK8AzLIdmZEGTzJUVsaEownMoi
         3aEotUGnipdMqgTyAIE4GB8M1196jXj+acjccEnPZjoGLn+PtjpUKpv6OR+alSYaQjo7
         /KYU0M8LrpHYMwINoBRbnJ782w0ftXfX70YONLpPgwgc+pCS7HQB6T+QonYwNePwucsX
         4eJ6rOP1AXfGMjYWn/cHDrfZY9rF2ZCi9itxaWb9OcKwZlpP1vW1HiYMLHvYno1ulwby
         EWlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VODbBcDo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OfKe3Z7+AY6kPIeAJwC4ByK5dq1ySl5Hm0+GV0yGBu8=;
        b=s+aSBkDJT5YYJ6CoZNoAXsJcxAzpPMukf4aEI1G8Ro6BMER0X7WKt8UTdhCGpX/r7c
         fpwbAo8MM7lz/D8W9bwQXYD75MNm77u1Vyh5kxVpMpOE7U+w4jDAy0Z+jMPCB7e5BikK
         Vw13cRT4W3fRSl1vyQztVz+t1mykTUKnOqUzE8eKDLPxAHht+XtBWFPkilXeGI88M5nJ
         pvJNj2BTEJpPgovibK9o/Xy43Hao4rAohS9RUYujywFJEPfK5GyfzMnvhwOEwnt9AgoU
         jcEc3zE0q1kZ/oyQ3qzpFw34bU2KkBw2Af3ZAjaeBgW6s16bJpJCpqVxrCK7f3rxp+32
         20rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OfKe3Z7+AY6kPIeAJwC4ByK5dq1ySl5Hm0+GV0yGBu8=;
        b=f8J2SHjdZB9X2/oOq3wBURJ5liEYkstC35ABSQR+MmckRbOif2/vuhjnkUuzO4JWNH
         M8wf/CtQelVSyKPXzZLhXjz1UbMw2BZJOYkh+pMdDSJ45lpotDlo3H2gwqZ/rYeOngnk
         EC6k04opKWY5BCu+hPsmKbPDvu1gi//JAOYOYUQ2m/okpLtis1tDXEIp+pNvO14k9Uvp
         nDmBlPRM3U16V4/r2+LG02a96rUU2kb4shKn+EHuUwqqS0IgmWzvyrdaAg1/OOoTbhy7
         9j/8ZdQFuATQlnY6EuHRtH7fhqDRz2aWsjq5tHAE179bWtSbCfzUGNcYM8Tpo3FdN0Am
         hHnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531A24DgZAmbvRBayUytFyvmsf38swYM+b1CFDWUFMvf58wamiUh
	S1CwP2M+2hnXLi7nu9MRh4M=
X-Google-Smtp-Source: ABdhPJy8+SfhPILABkeqlablbn6m0Z3Boh0QD9IHU7CvuitGh/UB4feCW94cMYdJ2JWO2UatFlXO1w==
X-Received: by 2002:a92:cc04:: with SMTP id s4mr13148767ilp.31.1603756362539;
        Mon, 26 Oct 2020 16:52:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2a06:: with SMTP id r6ls2168413ile.0.gmail; Mon, 26 Oct
 2020 16:52:42 -0700 (PDT)
X-Received: by 2002:a92:280f:: with SMTP id l15mr12761434ilf.66.1603756362166;
        Mon, 26 Oct 2020 16:52:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756362; cv=none;
        d=google.com; s=arc-20160816;
        b=x7CrsHRRE/FNUxERcfXu839mY1HsoT9fR4ZgBqsvThrnOqFNJVqhPwPA4a7R6s4+dT
         WpDPBen+QxR4NtgEc9Iseyh03Z8uSeI6yxOzz+OXfVguGcPfiPTT/xDYcIclzg5QrJU1
         qY8x6oD/EfAooBbe1GP9ZZ6LpkYnncNzhg8zN7/4ZtyRLDlKpWlai8lIoAolwa93zQ9z
         C7ukCRsjK9g3/nF7cLJ8sOhwE5eZNhAmod0kxIRZHQU57HtTlfVFcWkD90uixEiiMR9b
         scxmbGy9M2arxR5+bS3gzL7SqH1pUH8+UkMfNFuYYmDhOObYPNdoIb42rHVf2bCL3FRI
         rcRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=euO4fQ4jikQqhjShCWmF15IeXRNKxgD1h3zQbJJlQ7M=;
        b=b6LCiVYNyw2bwKBwaCg1L84NIfw7GYOi4lmVcqVPrAAHJujnzwj2vDELSRCYcJAvof
         Wdpkve8JsWJc0oNynHG0dPYmV/TiI8PuX/L4m8Ngsu6+QcmF89LMLWydfQTMLK6TE5Je
         gsU9bhKHmn3ZUfiOF9WKOTgrP4/irxGv/CS/tNNOkISQLbTqvB4yuizRJNjtWv1zIAbg
         dBZ7knNl8g54wQghh/1UkIDdDhM2x0tNycSSvduR2U4B0O9BcxWI02S6IjEfGBXGnNVe
         XolvGdNDwR//9/dMGqOMUxA/7ZQzHggmGcfwyoMNByjbYrWHnPGI4dtsd/DZJocGC9q8
         IatA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VODbBcDo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o19si744685ilt.2.2020.10.26.16.52.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:52:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8B48720B1F;
	Mon, 26 Oct 2020 23:52:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Sam Ravnborg <sam@ravnborg.org>,
	Sasha Levin <sashal@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.8 030/132] video: fbdev: pvr2fb: initialize variables
Date: Mon, 26 Oct 2020 19:50:22 -0400
Message-Id: <20201026235205.1023962-30-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026235205.1023962-1-sashal@kernel.org>
References: <20201026235205.1023962-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=VODbBcDo;       spf=pass
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

[ Upstream commit 8e1ba47c60bcd325fdd097cd76054639155e5d2e ]

clang static analysis reports this repesentative error

pvr2fb.c:1049:2: warning: 1st function call argument
  is an uninitialized value [core.CallAndMessage]
        if (*cable_arg)
        ^~~~~~~~~~~~~~~

Problem is that cable_arg depends on the input loop to
set the cable_arg[0].  If it does not, then some random
value from the stack is used.

A similar problem exists for output_arg.

So initialize cable_arg and output_arg.

Signed-off-by: Tom Rix <trix@redhat.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20200720191845.20115-1-trix@redhat.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/video/fbdev/pvr2fb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/fbdev/pvr2fb.c b/drivers/video/fbdev/pvr2fb.c
index f18d457175d90..2f045c356882a 100644
--- a/drivers/video/fbdev/pvr2fb.c
+++ b/drivers/video/fbdev/pvr2fb.c
@@ -1016,6 +1016,8 @@ static int __init pvr2fb_setup(char *options)
 	if (!options || !*options)
 		return 0;
 
+	cable_arg[0] = output_arg[0] = 0;
+
 	while ((this_opt = strsep(&options, ","))) {
 		if (!*this_opt)
 			continue;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026235205.1023962-30-sashal%40kernel.org.
