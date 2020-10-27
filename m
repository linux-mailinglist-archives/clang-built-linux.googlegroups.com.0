Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBNOL3X6AKGQE3RKNFLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 71307299E05
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:11:34 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id h16sf7263649qtr.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:11:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603757493; cv=pass;
        d=google.com; s=arc-20160816;
        b=a8wtNssITeIR5rsagx1y6uS2BmrPxowFJ0JgRyAIr4q9iLThgxN/KQcbPqZUYAE+N0
         cDq3G2Ile/Rpt3Ra2OyCsm6ZvXMfttpToPLycVRMrUUJVCAIImaTbZJI4GrdD1YKk1mB
         G9sAATSQQM7P266TCy+sh4vKuDsVnEALPwC7WWA+KmRFPMTqEAatZVv1zv2QPLdyqNkL
         T88iGEwgFgm2Wl2qpZxyA6X94s6JekP4ex+j2CUsK+gy0MF7ucosVtvUlNzpc52vaI1F
         YHcZDhXDJh9bSnWd25+uTfZjarmz05bwiwNiLpesLCe22wd2FRmWdvU0LXvQrBDENxRf
         i10w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KDJwXgN2C1rUBYP9gIiKYvzcG3VJsQnxis15uO8TDoU=;
        b=QuRLgGnBYIj6ZraIf+0ekQLjnFBKTqv6+WBbNiZ0NOvhLisU758vCRCBS0g3jdGuE6
         rJIvgRAr3BUGN1z/m3912WdgNPm12j95VnybOlS6zZUvrSxvYgOen5jUq5zsyjYNcBEQ
         8Gxf313h0Qg7qz7utz+pHK0vOdC9hf73ECA4HOow9/fFov36mZiLCcEBqm7fvkqhd+sa
         HaR5xTucb1ileH9VyGKA8d6hjFJo23a4atTt/OlAsM3fbMxfAzd/kyEQGWu4IQKVP1J8
         S4sd8tXOiFw05Q0Om8o1/HljZSc8PL/BLRODHNyb7nb9ymJHuN7DSxabM1D7Y2/Q+at9
         uXww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="we/zrHMa";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KDJwXgN2C1rUBYP9gIiKYvzcG3VJsQnxis15uO8TDoU=;
        b=QgmemMcRtB8lG6nq/llEUufjyJrgjpiifUSy1kIg2uHlmMi78OORD63g91RYyTPQYa
         FdhsiDlX7zTIsnPtLOFTvxPc5BduQh51Z0h1t22VamTMw2MwbdrRcYQMiUTIKKUffcUz
         RlWS4TQjYTWYvs7eGWA0ThxdrnpP5j4fBXmeGtw1hHw2wWW0FCHjQu6s3xbQkczBFT9r
         d8eRWnGpcKGqbinVHPtSmnWPIzMOW+emn+LljBt0wz70mevO5X1Vmh0U9n6lCDM/TbZ4
         CcWc5XfOFbZud9PEOfhLd2Ibo7+D8G6TlqOKoeDUcKHdCbjqFAq9uNk4CXslN5JPE2bv
         neug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KDJwXgN2C1rUBYP9gIiKYvzcG3VJsQnxis15uO8TDoU=;
        b=lo3+Rw6xqgzNx9kUWyc9LujTNCNjqOcCklM6SLVrlshZ2T4Pz7TpYsU6CCeLtTnJem
         KQacdD41V3gD9rba1d1J8x5b+uPAj+wAFwjn69mWXBUDH9Lu5bPUBlIbjiN0QtzCYmDP
         GD3D+oCXXZt7h6pd0/SWsNiB09VA3eM7k/YdObqVVp4vmHl6XYb7wSv1g1yKcuAnKHWp
         Lf2MVqaY2QbKwGlVWYFizqg9YBaya9YiobfsZBY7fqYHhXSOF9lXu8Cv9diyNumrjW7D
         A5MJo6Fb1au8aNozHcLyRuURbbAbi06nZxkJsgZNYay6kCp73mAitMP41amZ77m4eTJz
         g/3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Hdqx9V28cJWK2A1Nrvx0Uo2FAgvBPEMHmZU2I+CehAHmHBzvF
	p/wWqzk4u0DMNV45+b9sCL0=
X-Google-Smtp-Source: ABdhPJxlA+dF7I7JB3KFma2SkdE/nrogMX0xrBeA7K+CLpU5QPJEkcTwkpmltXDijH7nstmfzSYplA==
X-Received: by 2002:a37:597:: with SMTP id 145mr19890990qkf.386.1603757493200;
        Mon, 26 Oct 2020 17:11:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7441:: with SMTP id h1ls4181816qtr.2.gmail; Mon, 26 Oct
 2020 17:11:32 -0700 (PDT)
X-Received: by 2002:aed:3ae9:: with SMTP id o96mr20348187qte.226.1603757492761;
        Mon, 26 Oct 2020 17:11:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603757492; cv=none;
        d=google.com; s=arc-20160816;
        b=zjmhQJRR3LnUsViwLc9CxMSIO7sbtBHJqszpOZWs2KXucLmgXfx8iaow4W5xUibu8t
         miAan8vnLFyso8cvZb4ndhwKjxoSnnMNVsdSQq2s/f/4OLM+GO/lFNtiEkKVGMmWsDHz
         LtpY1xtj3Zzz1FjSWqEuSjrlB86GUpmtt9vPNaOZQC6uO8zx5watWx3NttuYRXPNWicQ
         C5H26e6zJSXG6xujeJCFxxiSpCMFNFkSP8UGE6MXMVjXMvOoFpZjB5P7fZWjtg9jy8cw
         cv5tiwCalWmHZPpYj1votmFv9x2sEdBTi/mXzf84qJ1PrCHBsI7zL3yu0q7Rg2oQ/zdc
         M9kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LXAI+wm/63om39ITEecM2ETQsNiIvtHnuhuAUo62pEU=;
        b=ygixtw2fGtXpKkEGC11E8h2NGm6bHQA6sd7NyJSFlRdbZzW1YioZZPW/FN4Zoy+nYQ
         iR0/8nnMv1MaSsIsaU0o4tgUtOoWKzlei25/Kn+KoUiiOTGoHEP2mECm0887XoZF0aej
         GJQ7Hg8jOTl5oNUkJg3Bv0r4RSgzs85Yqj3yXhZI1rdqqkdVlAEZVZuWyISy94IKk4pr
         8mS+GFiSPNhsnuZBtIVUIJTLwVFxPKdQDgwlFPqeMEBjNV0AkbWIzKBHh9b8UAHq5wHb
         1X8A3++QRoPkAYOq8L0m76Vg496z8pTxGVwhIhPkjFBF7BSqZwuvDZCvVYm4Eb6LKWG1
         iBSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="we/zrHMa";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 70si574068qkm.2.2020.10.26.17.11.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 17:11:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C30E7216FD;
	Tue, 27 Oct 2020 00:11:30 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 06/25] video: fbdev: pvr2fb: initialize variables
Date: Mon, 26 Oct 2020 20:11:04 -0400
Message-Id: <20201027001123.1027642-6-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027001123.1027642-1-sashal@kernel.org>
References: <20201027001123.1027642-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="we/zrHMa";       spf=pass
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
index 750a384bf1915..1a015a6b682e7 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027001123.1027642-6-sashal%40kernel.org.
