Return-Path: <clang-built-linux+bncBAABBBEHZD3AKGQE3BLT7JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-f61.google.com (mail-oo1-f61.google.com [209.85.161.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B3A1E8E48
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 08:56:06 +0200 (CEST)
Received: by mail-oo1-f61.google.com with SMTP id r24sf1076022oos.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 23:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590821765; cv=pass;
        d=google.com; s=arc-20160816;
        b=tyKdSyEC2192tzr1OHhp4VLDiDgZgsEfN15UEzSA5VDXaowKfhr0bS4+Of8EFMSltV
         GAyRd21rNkMRx3E5Mr20HYAiLq6GOx+wKwOyHqeGdG/XvQN02DW/YZt6THjE3jZ04wSS
         wLd1einQPtktphOx1+qVorn5URXcEk8xCQFjXK03GPk4bwzuZGBadcCZoMoBAEe7zZJG
         UXgXYscQNJG2tiXbVz3fHod2EJaZpXbg42cI5n6CasXOtm5V16Ituv4+cf+HXHcKUBPG
         JeYpvvM08GKJ8qAiSTBkQ8csSF2a1HzjtqZ7+Edzgq/Q/yF88M4Uyl4GTPg8hn6EKBU/
         4jsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=aukP7NF6cDWDwJFyhYO+Gydtk4vy7mVRWElcmS73oMQ=;
        b=bjOObPfq9qytvAYxC5hkOGRDPNMhv5YX7utnA6jpsryFMXBrBP85UQ3wzAyFiv1uzr
         +My7KUJcP1bUqGjPGLYwVjrWuD00Hk8RSCUd1gcJQQ853XCI5BGQFQo/i7xyUXz0tmzX
         o3miQT7/IsEpeIFGLoYYc7NPeb80Yuqv0MUiJ6EWyh5wobHK47uOYWST3kCXh+aj2UXg
         owS7fbV6QKeEE6gp6yj84k+nnsjx0N021Zxx7EDgXGJFTawJ6ppSKg2tV9T+0QkUavfB
         HG/5nfkwIMgHPXGyIHUtIncHbGfIQYMIBtbxkfnWLDNfrVz6h3cng1GbSv98dIl9IDi1
         WLww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MtSz2yHt;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aukP7NF6cDWDwJFyhYO+Gydtk4vy7mVRWElcmS73oMQ=;
        b=SZscmpJF36Ic6qbUfiHJHMnP8tI5AQdQ5ZQ6zokgsc755+4uVkI9mI4jTFItuhnFu8
         BhYz6XULMgEaoDtaC+PfZcPOuBquZlyY7NyxugIwinLvzJbLVy+sLsqgXrFxMnX/keBD
         vAiNYEsl6siNZ7HigsZRmaZUi8P0Ez20kYcdmEjICXjqgk0pEPyCL4wV9ktegfjAu3wG
         LD3HgCOTk3wmCnutUJs794MD6ppss8IG4fjQvwsskPo2kNGSyTgE/gENVk1zuLnQH9hZ
         Xb+s5o6dcknWKmFQrALgfpxOYjlhUStuVswz9vKo9on9K2ZiJKatkS0dXj89gmzLwzG1
         65dQ==
X-Gm-Message-State: AOAM530HJ8hkeIOsXzUKelxis172lV1q1jdcxkGLpeJ8TT51LsL0lfMJ
	t0vN75HPTC4f4NEQS5bVbIE=
X-Google-Smtp-Source: ABdhPJwiEtnftOFYrheGnSoUPPEMnwnVpun0XZmlVaZ2gn4G6bsPnO24jxx9JkKPR+V5K2eRuEZxGQ==
X-Received: by 2002:aca:ea08:: with SMTP id i8mr9069314oih.172.1590821765002;
        Fri, 29 May 2020 23:56:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2c46:: with SMTP id f64ls987327otb.2.gmail; Fri, 29 May
 2020 23:56:04 -0700 (PDT)
X-Received: by 2002:a9d:4d07:: with SMTP id n7mr9346870otf.92.1590821764720;
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590821764; cv=none;
        d=google.com; s=arc-20160816;
        b=GzpXNXsoN9oZ53PJcMpzRhnN5aT06mUtq4w0CF1Mdq+msTom05hAPcaG2g30w53psq
         M9omQtgyB9CRi0FF+zvuea+e7AWYM+79B/i2QDLKaDuKDYAjNJwRzRtNUV/Kiug7TnN+
         NOdB5CtoGAZ26RKd8lQw1XaRYNMFs1ghPHvRtzUWU00PAY1TljH8Izoq1IqVp63QeHlv
         wnlZfxB382dsU/RRTKhniK7hVYX+gzce2CigAc3/JqF+zBn82i+9nrs1PEJCbWVUb3+S
         gSYX34oJud6Ajcod+acdZqijVluUXnnwX2/sGyEOlvnmEWTohTnvJqufKIAFh8h/UrcO
         DETg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=aqJQ7frBnUEhh3wYzK5KYK4AI9Scb4lhAm9m5n5YgO8=;
        b=Sowog4np8L1TuyDoHPqcm8XBWOt4zQ6LSdAw8Z6T6aYOZswxXCpYItRjQawcVuIgUK
         b+XiCxRw8emsoO7DnOX7zmOCZvQ4ushnXd7iWUoxknUHeYxu7eo1pXSKAkO4tM+UR+dU
         7ZzVmIPAalM/Bt9P/kKwrK/DoMDWN3m0Gbmv1hZVSN2ZSIucaJ5ehGPKk8wiPs4OG4xh
         LXMErIkQM+dgOWw2xNnEkea6hagHzlFL4lUbmEPmNr/ntLne1zBGekmUzZJs7sJ/+vcB
         Vs/FVzrdX3km5K6Hk34AktYiOQN+/iHjCn0Ymve8Z9EtLUXihyVs4Tpm+iyAjSOZ/1Vv
         Wtcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MtSz2yHt;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si952739oic.5.2020.05.29.23.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B303021841;
	Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jevPV-001hq7-Je; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v2 26/41] media: atomisp: Remove binary_supports_input_format
Date: Sat, 30 May 2020 08:55:43 +0200
Message-Id: <2e4b1cb050370ba37eb58be8ec7ea8b31705f847.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MtSz2yHt;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

Clang warns:

drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c:1707:64:
warning: implicit conversion from enumeration type 'const enum
ia_css_frame_format' to different enumeration type 'enum
atomisp_input_format' [-Wenum-conversion]
        binary_supports_input_format(xcandidate, req_in_info->format));
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~             ~~~~~~~~~~~~~^~~~~~

As it turns out, binary_supports_input_format only asserts that
xcandidate is not NULL and just returns true so this call is never
actually made.

There are other functions that are called that assert info is not NULL
so this function actually serves no purpose. Remove it. It can be
brought back if needed later.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../atomisp/pci/runtime/binary/src/binary.c   | 21 -------------------
 1 file changed, 21 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index fd4ecd697868..85e8b45d5416 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -859,18 +859,6 @@ binary_supports_output_format(const struct ia_css_binary_xinfo *info,
 	return false;
 }
 
-#ifdef ISP2401
-static bool
-binary_supports_input_format(const struct ia_css_binary_xinfo *info,
-			     enum atomisp_input_format format)
-{
-	assert(info);
-	(void)format;
-
-	return true;
-}
-#endif
-
 static bool
 binary_supports_vf_format(const struct ia_css_binary_xinfo *info,
 			  enum ia_css_frame_format format)
@@ -1701,15 +1689,6 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
 					    binary_supports_output_format(xcandidate, req_bin_out_info->format));
 			continue;
 		}
-#ifdef ISP2401
-		if (!binary_supports_input_format(xcandidate, descr->stream_format)) {
-			ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-					    "ia_css_binary_find() [%d] continue: !%d\n",
-					    __LINE__,
-					    binary_supports_input_format(xcandidate, req_in_info->format));
-			continue;
-		}
-#endif
 		if (xcandidate->num_output_pins > 1 &&
 		    /* in case we have a second output pin, */
 		    req_vf_info                   && /* and we need vf output. */
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2e4b1cb050370ba37eb58be8ec7ea8b31705f847.1590821410.git.mchehab%2Bhuawei%40kernel.org.
