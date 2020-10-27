Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWGK3X6AKGQEQHJSUIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FB8299DBC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:10:01 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id d124sf7439858qke.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:10:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603757400; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlUNeAy5keyc9474L5BD0rFSfqT2znGF5PaBygxgcRY2nzeFuiReie9jWTkBZgs5Sg
         pZvzV8W9A5c8BQRrXeYrcnsY6cPtwFLOp7TEkfrOmG4npoZcjGWcLwJ18k31iMkXWxPb
         mcs7CMsmBqm4yKknzXvmbSB32rTO7q+uSzZrP9XZJ5ujt7/2Il75z+eyvKpvyNzta55I
         vCsnZNj7w8/wmjkV1sYskmKOKwy3ZgY6a5Hbwt1mRGjEfkW1r7Rb/vAaQqeq+w/V5fd7
         o+8dqWBzkLNmfrcrjYIAwuoJlh628VPJ4BTDJOd8mAFS9Ngs7aXu1KSRhf3QqOjnNxTg
         uHWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UW85n714LsDAo8JJvsLz3huFoJf0seky/p2RLyHKDaM=;
        b=NrDQIMNXkL2X9U77BEvj+YWytle1aXAlKe9qi9cRBr0wTIphXCAPuF/Iy/AtcIBcCD
         qcgF21+thzdComkfgpM7Nx8oddt+G2/8d9G/1GudNbAlW+sDh23lC0HGCMk5AkR2IlLE
         ouaxVdgohKzGjF64bEt3Nz6FkCxLd+qowmaMxW9CBpg+EH9JjeAkidqKttksUSZNNbDl
         tyPCge7B2gYn7IM+NQQ9P1OEt5BOABN3tvmal7VNygzHHLaT3ZzyHuFIthdKJU8rGvLU
         WjEwqCA5K6OK7T1tsNvMxXeDIeFEbaqN0CSkqJjR0NukUlCJ9BXxtg4V+z7NUgzHYVOP
         FKLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2tszC+Dy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UW85n714LsDAo8JJvsLz3huFoJf0seky/p2RLyHKDaM=;
        b=sKhsts3tvK0ZRdm5pKt7sU1keTzQi2S/sIe8Z0enkyADmfRyd6C2fMvV0SBTxip6EB
         57luWHrOMQIm+Wv/ETN9vfk2D1rHT2qZOQhrmMqqPF5w+q+RwxrnepCG1kr3/Vvtyfn0
         4KF/pdgnzDdjRispMMQnb31va5CuPy2aKBC+sjg+cXgQCGYFLLSU7XuaXix23GPux8wO
         Jlouqz95IKp/GQtKJB9vnJbRfLk9GZ2fAfXfMMJyXcmO6nl0kUqYfjDe1GqdbWULcJbA
         Y0t7lSVVgciwhS7/tkgbeZvak9foSX6zR3TrD716wKgCu1z/qHP/fcAHfZ8mnEINN/9J
         LwrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UW85n714LsDAo8JJvsLz3huFoJf0seky/p2RLyHKDaM=;
        b=oCSSoNg6SXVol8p5XbeNTpTN30cqZT3xMx5BK+Apjv6/xRqworbNHEtSWRSD7KHdUK
         MTK2kY7qgtNbv9rrgSW4ZqlCO3Qur9Iy+CDzhzdxt8pHI2z51K7lxJ5gyLsAI62nYNAR
         QATi80XDIWDgXO0dK7w/X4FooCARoJruzfiv/qJfqfiWyhOtPvWkUVHtDcm/RRiSQGly
         yEg3oJtjc8WyZtu3fmraBlpy78DiwNZRpieOUyTw+LTJV139ljOJxNMjlqbBbDrLN3Lg
         RnF619ToBu2gcTXUsLkkGCgHuIvhl7lccjRDLkH46DAR7jBWCJyKSdGOyZggNJ7W9+Z5
         lV1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530v0wwaf6mlJ/TKHE2Gc8A5nPElqiVMmI6c4Rn4JPpaQ31xQ3uE
	p6xbtE4YtD0ss2RF29FWYlI=
X-Google-Smtp-Source: ABdhPJxrF8NPBaYukmW2sUiUi8Esxd89YHFl296i92EtVhgOKjhFCYYqtjG0jymRO8j/RsRieCbKGQ==
X-Received: by 2002:a37:c07:: with SMTP id 7mr3706904qkm.335.1603757400625;
        Mon, 26 Oct 2020 17:10:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:31a7:: with SMTP id 36ls656507qth.8.gmail; Mon, 26 Oct
 2020 17:10:00 -0700 (PDT)
X-Received: by 2002:ac8:4b7c:: with SMTP id g28mr8581822qts.277.1603757400156;
        Mon, 26 Oct 2020 17:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603757400; cv=none;
        d=google.com; s=arc-20160816;
        b=jK/DWtEb9soIrvJDdr3+COhmHdPhDuBYfu2vJTmOPJokqkmp7N2Y8Sg8qkRTWotw2u
         lHTPaGKSBiCzIXt0kDam60evQ8adVaFzAkY8jKgauw4rxRjbNTr8NnETdpcIkib89msu
         XOFtByzGvZw56g5PJsP1lPlG/1z/BEykMrdNPud0SsCH0Ai5tPEkLAQD8vuBS8slpGqj
         GYko9XlCf1f4SFUjoTw6o6jN8H2BrfYleLDzzQOCSKO+yq7rzDfLYivHX1sOSXa9PfN6
         H5AJSqa4LAQ3CY8v5KZQtYupKK4GboQl6yWsKPYtZvkQ5enpv31ABP2gMpT4p84b5ofI
         AJkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RpzvH3tKVzUtlk+B3AsyNSEPby7zqFbLxs63Bgn30LM=;
        b=VOvgIOoCMJ/oH8oFMi3jo/aAfdp/+nxooj9fmdeyTIfwJ650pznjypLXvIKGnfXPTz
         PAFIZeN1Fn0VV13mmLfZii93uKb3oBbLvfHYziCoP35PjiwusMwDSkrRW+/csn/7MM4b
         axyn5Anb3i84O7qpWctnQ/v5i4EvisJ2QdkHNFeWOhZTofPv/CFtvWSiEUzVkBFHe+N+
         RFU91ItjUoCWm7tNTTv1azsJv7Fq7CiNnqUHxxSw8E8v3EFlWq+zMB6NV+BPOiO9KavP
         MhM83+5XQzoz2leJGPl5fOWGwffiU2WvhmuadOMrVIWhS4Aftccm/XFZZz2J3Y3X3qO1
         AsUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2tszC+Dy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g19si843384qtm.2.2020.10.26.17.10.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 17:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 605AF217A0;
	Tue, 27 Oct 2020 00:09:58 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 10/46] video: fbdev: pvr2fb: initialize variables
Date: Mon, 26 Oct 2020 20:09:09 -0400
Message-Id: <20201027000946.1026923-10-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027000946.1026923-1-sashal@kernel.org>
References: <20201027000946.1026923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2tszC+Dy;       spf=pass
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
index 867c5218968f7..426e79061bc88 100644
--- a/drivers/video/fbdev/pvr2fb.c
+++ b/drivers/video/fbdev/pvr2fb.c
@@ -1029,6 +1029,8 @@ static int __init pvr2fb_setup(char *options)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027000946.1026923-10-sashal%40kernel.org.
