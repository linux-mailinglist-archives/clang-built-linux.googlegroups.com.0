Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6OD3X6AKGQEICJQM2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E9670299BFC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:55:38 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 203sf3506557pfx.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:55:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756537; cv=pass;
        d=google.com; s=arc-20160816;
        b=QRjgUBBB9+Duvh+E4Ys9/6Qikto3oGrWCDUE3HZSAlelZcBblJFxtrd0xW7/6S7b60
         Vx2Og6cSb0FbCXm9GTMrseGfnFFHy44wl/RuyhJEpiZOpzpXbDqFdv5KxzARpwxogbaq
         4E9QIcIRjKW3qATJJoaZf1ZwWk8UoFI4CieUQDzKT7MmrTedzkvi15LfNEoGxVH2iQ1N
         CuvIHapWsWqyyKtM5nE+duOPdX1ERNPQlu1NF+bppBFyLMHR1mHSQ2T2QE2VpBgC0piP
         DSjYApYr/DeFL2r1fXPf193eCJDpeh/lAbej7KQMEZs1+X8vi5E6NKHtdwCla7hXClp7
         yfHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8lxhPoWsStQl89nyWoO83dHdxrnU87h9MvSIi1HKBCU=;
        b=Cc9gTmQngGTb8RG6n2tuxGd3PeNUeLKJGnbISzI6VDQd1picoCkuJCaqNG8qhGRhjP
         R6XeeisbnvsCwfbE2erFcvVLTMqBBlCCYoI4nyZ4DRDUHa99GULTBeqRplst/Buk2IQq
         jeARMlKcuxjzPHrG4I5v6JEMRAg0CLBrRHAHEf8C4LorAAN5E/clXqV3dBIRBBJd7e+v
         +0H3IYv1I885LiybV67Z1ce+r1M3LtatQWQtUlWRE1AtArb8qg5pfkEMKRjC8L+2NiXG
         qMf7hcIuq46u3SoXqXywI+OwHymfp2L0pmMmJMUIB+qfpF9UhKzrhatobWnm5qgIEX8u
         uE7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ER1bM0M9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lxhPoWsStQl89nyWoO83dHdxrnU87h9MvSIi1HKBCU=;
        b=EgY8aymRkSro3T5AagRhTJ0rWgJSfsVqP01t35jDNUuhMsdeQwGjKO56CYSgrnGCK1
         sbzzg6Fu4R72awaoZ3LgIUCvb7nB0Qu1hjDTxKLPteGDPNoZ6aPW+t4PA93LKjtL8LaL
         eElq0RdSpeI0a13DC4oOymwR3qKH8MqwJH1M1XtG0d+nnjBTlNob66RsOAGGzrYoo/v7
         BUSizoqtmBSjCWVEOfrEnV/+KplQDyGoG+9AZvnAvIPWDDngIPVsZAd+N/WLUQIif0Y3
         F6LjhVGhcmC2IZSKqgbvJ48ILyCvxBsa1gobCdKmokecZ+jhMevusVzHMGm5jYWvINWS
         9Q+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lxhPoWsStQl89nyWoO83dHdxrnU87h9MvSIi1HKBCU=;
        b=p+Og52yqu65qu5CZtzVq71B3qZfwr9tn6KOhYYSOvEBtl7SAv5DRCOl/0DmdPjIVkN
         97idWHO5Rw/zVs+Z6qMogd9idGbgCPFqdSOsrPDLXmp1D35hPvolAxc0NeXHZULrruAI
         1dZisavPvyKB2mzKdjuatjJKdHfPEF005a+URUIAXGYf8QvvQJUP4NmM0QMW4Qvb+Ec2
         kYcI/VhpbnbcyRWeNalxR+UIiYN99Hrr23oNSTP4ZLDu7WEu7rYez9q2LIH9piu4d0wr
         FZ4aPeiw/NyJoZ04WT2JNC2OhKuM2xT1vEei5tVL1zIRC43DJ76Eu+Fme1GcksZIjAdZ
         wg5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yk1CCnf2jK6zV41mfkU0oSMRZRXhPalgKBpqdr0aW2ICUBJIb
	WdhsebZFnsvkI3KO6E6CG+0=
X-Google-Smtp-Source: ABdhPJwzG53mGXnSGgy3pmo/v0W7qYfJhf58/iWS8xnDBw4AOHTlsgSvrNet+LwUP9nY1RCLGW7J4w==
X-Received: by 2002:a17:90a:7188:: with SMTP id i8mr22851521pjk.76.1603756537725;
        Mon, 26 Oct 2020 16:55:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c5:: with SMTP id 188ls3541924pgd.4.gmail; Mon, 26 Oct
 2020 16:55:37 -0700 (PDT)
X-Received: by 2002:a63:f015:: with SMTP id k21mr19053645pgh.422.1603756537199;
        Mon, 26 Oct 2020 16:55:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756537; cv=none;
        d=google.com; s=arc-20160816;
        b=w58KUckBnAJphxFYl7YX94UxWS6aZHsrNUGn5u7SecYLRJI8XgakzZjx5gSnxH83Om
         YvkTof7JswBjdttXG6HlnCgnfrnEQGbTuQMdC+cfNgM+BSSOg9WoeIq8uNNhpc5dYRqm
         USfDEhIWhQMkHESHLNyN66UBSAjAbKE/w/w52zfVgs8iKiJr2t5ENzM+YpD3Pczp+aCQ
         A79qlYjfjndBcemHTwNIir29rpvIE69q5ExDOiqSdyySLPyJbjV0sOm4Uw/H5OGtYnet
         1tGtnTn0KDKenfHMSO8b0l55B5wCAuNtIw3ROz+4so6AzAXJrx+3RJJg67uAsp0OsV2b
         NtCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iu8a/DvpheJ3eeetiG0WnX7Q+6FAokcVk7M8GEM265E=;
        b=cptH1uBcZuk73eGOFbY4Z3cErj67YAPMJJNFMhK+SjxSAPzS27BwBmTPyj6y4EdGab
         k/l0423keOP9SFq95XKssabIDJQ/6MKanB92D5PSIsxDZ/X+XsKMbVl0sLYKchQuQY0r
         ROXMKITdrJsYkjfCMeDxOEvACAdUl0Rh0uPGHcyrp71Gt9moh1qAySJkel9Qe/ljT/M4
         K+HbsuAWKiJW8akDebbo/lsq82kxGyCndeEKso40DCCyg/JbeOHW2H0dILS6pjHJ3Mjg
         IAMZdWhRqT7exvW7z4Sm8Dz7Y8iRWQK582t2Fx2Fwnhdx3JxMbBHP/KsoCvT+vC7tCtF
         H8tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ER1bM0M9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z15si629267plo.4.2020.10.26.16.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:55:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12B812222C;
	Mon, 26 Oct 2020 23:55:35 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 16/80] video: fbdev: pvr2fb: initialize variables
Date: Mon, 26 Oct 2020 19:54:12 -0400
Message-Id: <20201026235516.1025100-16-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026235516.1025100-1-sashal@kernel.org>
References: <20201026235516.1025100-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ER1bM0M9;       spf=pass
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
index 0a3b2b7c78912..c916e91614436 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026235516.1025100-16-sashal%40kernel.org.
