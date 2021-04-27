Return-Path: <clang-built-linux+bncBC27X66SWQMBBMNTUGCAMGQED66UUOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4245136CB2A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 20:36:35 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id h12-20020ac8744c0000b02901ba644d864fsf13706807qtr.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 11:36:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619548594; cv=pass;
        d=google.com; s=arc-20160816;
        b=sYdvkrzXGY1jia4J+ErtRPft/uA3WR4zUaaZOHHwq5Brv6bTKD5QQ45dyRZdZVQAmL
         e+QBG4Ait4ivW/DuScg5zvsxmDVliPlLcrsdrO9CD9WuLpuONXgHbQoX1rTxImHmMfsv
         csHTENhF/MfAQSbpqUCdNfNt8L276A7k7USQoedvduGFvKYVKSfeT26IXuIK/hHXCnIl
         WgTsD414Zc8RNv7lf6gwa4/Wq01b+IjDmaMeliaaNqhS8wZnEiotLlcwLUoNIkpRhXUP
         gdbLpGjorUy99HxTR7IlpFhkABY69PElOF/gLnqkTW+y71lzY8Nc1qWJ8/6caes7yOPm
         0XVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=rMrx2ZR52OE3xfIMyC8HV4RYPgHKNildFYwy9xngLNA=;
        b=fdb3g5C20g74+yRGK8+Y/mcmf5erBpUybaJTUDQ57Jrr/M02ik+ExFaZVK8PYTS675
         oFl8V6jMxwsOGbdrJV3oz0Tx6gbrkxPEuA3LvZuNZK2O7BTgj1H2Gj2txHQVVTKzCpgG
         eBlqeT4B64891HYqZQu1xeRaOr/9grTJ7XjONOmpz2UVoIATACoiVJ8RRqWEme7+B/yu
         4FF/x8dGgCYcP/HYodaPhoD5M+Ve9rnO4ekigYK85gO1236oTcIJQC5DQztmlVnzEEzQ
         P/JCVqeaU05BbuLG3h07yNPF8qfWljyVtCtq02kBw3++8JzvEY/ocyGlDkLg5E4AIXuU
         btSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=C1JcWn21;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rMrx2ZR52OE3xfIMyC8HV4RYPgHKNildFYwy9xngLNA=;
        b=AlFPG1XQMY4t6I9tgKOMx9ds4u4knTFB1W+T/iDOeNpRVrxd8SkCjFBA+/stz42Z9/
         fzxfQG98WSx3CacLZoSLJLAhS5doz8ZhPgZh75Xst9lOqVsr6oREsM2Lqk02rqewfGUp
         +CKQ8ZwjtsGgH1FovsEGvQ1iP0gsU3/kbKuAk1AHFnhkbT1n3468GKoyc/N3YyfkZb5b
         rP0cNar3tdrQFAIyHFjsAgqKIRWfa8y1eA8LXNI97Ufp+aoXEbgdeBYfJ3TnoQsEKvh5
         ZTHd2TJ6catNTFTSSjjBrz4aI2parRk2QHRlM6+8dBGXn0hexKsVOQnqdj42ex/pF0bW
         o4rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rMrx2ZR52OE3xfIMyC8HV4RYPgHKNildFYwy9xngLNA=;
        b=G2YE5GIIDeSbic3sQdgZH7RE7xgqgwgTg0Nvr8/Ln9AOCt2xeYYMy+zvcK/j9/aP8k
         ekjOdcz7FP0j9o/Bjmtw0ah7A9PGTPWFVopYkIbm4DVKU7Fact8v6/8MjBlRqg9pepVf
         JfzxsASRYqhYIipTebw3M5xgm5hWR6SFvb2/XmcCUzFHW4Ytg99Cr53SYNTxdmjrycQt
         5yOsAqNDBdCUZxrp5kMJnyh/Gzvn/BM1qw2Ip1zlAcwcnKO0NkRPM5aKVr62lTQ5A5K+
         yhSSopn4/C07HhWHpRuh8lqH0DtqHkctUbE7rFlRKEtI5ue/nwcOqR8gzTjANt7Z030B
         /0fQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Um13+UTRI1LHM7vLburIS12pZlEBl+ww90DL5I8OYgR5wEbwP
	FRGAlg5tRkrfuMnNns05eJE=
X-Google-Smtp-Source: ABdhPJw/+N7hK5tfA1ad9Ku9Rg1oZAm/hs4+rKs4B8YeHX2Cdxw1PZSyIJeGAwgAL6AGSCXQA0ChCQ==
X-Received: by 2002:a37:a357:: with SMTP id m84mr12087577qke.178.1619548594058;
        Tue, 27 Apr 2021 11:36:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c444:: with SMTP id h4ls4081420qkm.4.gmail; Tue, 27 Apr
 2021 11:36:33 -0700 (PDT)
X-Received: by 2002:a37:b807:: with SMTP id i7mr24213179qkf.126.1619548593600;
        Tue, 27 Apr 2021 11:36:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619548593; cv=none;
        d=google.com; s=arc-20160816;
        b=LlBULgmU6LhZmnyUsVdV/OiPBsrfYXw1hYDKmmI0lw+4HBo6HfkUC/YetCegAGRkLd
         UR50BiwYv2Y4M9N+QfWZCV4GRYSNJb5czT1a/ChbkM6215JJ+KSymCohjeNcFWvoQmkz
         ZUsxzIVJ5XTpqmUmh6+3yxfh5DUASagJxB27olK8hNQQPH1KQP0BBdW8MsEeT4ZA3ROy
         Fa3Oi4KReLi1LuYjWmulep+C3AK01VVyd4mkJFiDGjLIOrWGuuTy+Zg9Zhi+U7iQtN8U
         lHoE0XTXWubyBoVaksQ1h/ZwF06nZlTEgRF22U9mqEa3NZ8TxXrsQIZVGlRc1Kl6xPAh
         KwmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ylqZA32BdXXOojveMDSUGnGeN2hWjZk/d/9/tdxQ3bE=;
        b=CsuaKvL20XtleGP6moPAS5KxM2t+/KZrhVUdMaB+VjmG89y13tPIaQ51Kp8WPweyOO
         K/wI22Murur3zU5Rk2lOzDv5kqxawhl8g8uyOdcSdkabTeIL3ggZjDMWTWMCU3UmPACv
         f7EVIvh+hRTeAW5TgL19/oLaaJRxHnY89e821U1QNz0PsLgLZEyNjhw7YpsykRJXOLyU
         vUVCyRjfSD87JqP+srzN8iIbNSzhTAWATMDYG6bBnk1Kj+cmg2h7Cz2Wx8JHKh2wbVn+
         09BcMtPjFrdFnTKAwjPG4V2mAsiQIAVG6A1KoCkmkLWKwUvxs+fjU1TtEL5nRUie+ANH
         7OTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=C1JcWn21;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id k1si2567971qtg.2.2021.04.27.11.36.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 11:36:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-LXTm_ifUNdCkhIcS41qi-Q-1; Tue, 27 Apr 2021 14:36:31 -0400
X-MC-Unique: LXTm_ifUNdCkhIcS41qi-Q-1
Received: by mail-qt1-f197.google.com with SMTP id k13-20020ac8140d0000b02901bad0e39d8fso128513qtj.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Apr 2021 11:36:31 -0700 (PDT)
X-Received: by 2002:a05:620a:11a6:: with SMTP id c6mr24703397qkk.51.1619548591112;
        Tue, 27 Apr 2021 11:36:31 -0700 (PDT)
X-Received: by 2002:a05:620a:11a6:: with SMTP id c6mr24703375qkk.51.1619548590928;
        Tue, 27 Apr 2021 11:36:30 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id e15sm3557512qkl.9.2021.04.27.11.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 11:36:30 -0700 (PDT)
From: trix@redhat.com
To: stuyoder@gmail.com,
	laurentiu.tudor@nxp.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] bus: fsl-mc: fix improper free of mc_dev
Date: Tue, 27 Apr 2021 11:36:24 -0700
Message-Id: <20210427183624.2790305-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=C1JcWn21;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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

Clang static analysis reports this error

fsl-mc-bus.c:891:2: warning: Attempt to free released memory
        kfree(mc_dev);
        ^~~~~~~~~~~~~

In this block of code

if (strcmp(obj_desc->type, "dprc") == 0) {
..
  mc_bus = kzalloc(..)
  mc_dev = &mc_bus->mc_dev;

mc_dev is not alloc-ed, so it should not be freed.
Old handler triggers a false positive from checkpatch, so add a
comment and change logic a bit.

Fixes: a042fbed0290 ("staging: fsl-mc: simplify couple of deallocations")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/bus/fsl-mc/fsl-mc-bus.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index 380ad1fdb745..fb3e1d8a7f63 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -887,8 +887,10 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
 
 error_cleanup_dev:
 	kfree(mc_dev->regions);
+	/* mc_dev is only allocated when it is not part of mc_bus */
+	if (!mc_bus)
+		kfree(mc_dev);
 	kfree(mc_bus);
-	kfree(mc_dev);
 
 	return error;
 }
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210427183624.2790305-1-trix%40redhat.com.
