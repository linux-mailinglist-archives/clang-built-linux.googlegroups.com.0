Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBKHF4X6AKGQEXJ4SRSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5806529D00A
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 14:31:22 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id t145sf944780lff.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 06:31:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603891882; cv=pass;
        d=google.com; s=arc-20160816;
        b=YZugIbEc0yubeablwbQWkvEVVhKNMu+Mo3X1Up+48+9+o9438QG1E1rPlBdPu73t3y
         t62FBYcyhRbAG/dc2qkUudTb8kvMTL8tWkfRTdHAS9OB8WMS3ltS2WlO9apcMyjGTcWG
         fO7J4VJn1OMVA8TG6kmtjOpGsbKUjaVnrrvK9JwaZZP/0nC1bPa1H8FpGXSUP6sZ1k/k
         JRGnyEEeITZJrCf5961Owu/jz0jHfdQzmias3QeV9VOuOFQR7i4wZajA9t1Gp5thNPCo
         EXHRf5rS6sk9r/5nXtU0P7OV8UwtcAIAFEzoDJchmqAkztY1gyswiip1L2dLYkHQCXAd
         sbpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=yi8QnFmfRaWiLF4sRGxdLYvD1Vmz0ilP7g3h6BdSz3o=;
        b=JwH96S1ceG4+ujENhRzMNUb9DB0BhJPD6D4m7Ne1XseyM+59PdHR5ctMGQOgPDWq6M
         VBJXS1C/CgwsKYg/ccDPCLtLIM2VZn552GI6Om1OTQZxSXpeUlr7pvvAU8xAhuSxLjba
         EVtK32YOlW0f8hoM75PGs3061bA6h+T/Fev8jMmtSr5QgFiP1g+9zRGgJYpPLWcBWyVp
         nHtz6z57MTvyc2a8ys0sBlvRZ07iosgaXi8hpOYBHR+0GRSmZj/38VeuqEz5iItz9/s4
         v/Ai7iNuifmSiHDvRC0v7GRSAWovQhv34rvmyyBGOg6Dn1yf8jlJjeNuAF+yRmH9TT60
         9ICA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mg0c3Trr;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yi8QnFmfRaWiLF4sRGxdLYvD1Vmz0ilP7g3h6BdSz3o=;
        b=Gv0aVV4teD8UKJYlCdfu84oP84RvpDCQAwjJLQEJzaOqFmVKqoigvabBENyQXQP0C2
         qfdFdDfziYSiZcMCNYN8KN/31hDBVe/0VYeEeIjXHsdNmEke/zeQi7Bg5drZ9LMMfHvq
         ac3PW6qLDOvSP5K2L1Np8+xqZaENcj/4Cof2YPe+U4vnO4L8m+bCcBVOf55BxzTHBF/h
         gSb2wM2yPrzet3dSuB197XPnlMh9n+cVbsVIJSIcxLn1qL6KNVXzQ5wDktJUrGXCbA/S
         8CEu6wCJW6x3VMAKbTZ53sfAKKDX99FqqCtRfCGLZp5+hS/20JzONHcsj+1oFsuFdNf+
         KPCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yi8QnFmfRaWiLF4sRGxdLYvD1Vmz0ilP7g3h6BdSz3o=;
        b=AUTcO/2aeR3SDhXGg0+Aq7SBTuQubZu918bO4l1sx0ZgzZxToIo1kWq3uoppdPZdQ5
         Ys/WGcYCdXe/kxx9gg4lRuHrNJSswSFhXU/Nj/CyZRIAgCxECxwyfQbOm8uXqRkU42mj
         DaCPqoriYnHm0dj1bhIjxLtzlbapMBufDy0Vi3LNFecBrcsvLIulIlne4zca+wRtCOOS
         0UfohPtcYlIofpey9JaqtzynOR6IXMa4ACZgT+wC/W3AzqO+kyVjqpA6qKCIeepE3ndB
         Ws3T3VeozVa/ysmrHZyyToingkp2CaXAE7coBY/MuLlQmnRKW9KtGRzPkuFsCZadOLZe
         j4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yi8QnFmfRaWiLF4sRGxdLYvD1Vmz0ilP7g3h6BdSz3o=;
        b=dn8zl54qzFVmaUmLOfN7hVJmzWsV5JR1CkANnrY7p3Mnna1qYqz8ZwCPBieV+UI/kR
         in2lAkDlTy924OXC2JbIY2qjyktWc/EZRkN9B24Ksp6PTzKJ2PzN0db3OVsAYYN1/ltA
         tERw2Gg6RdNnlh4n95JhTrSzrz/WEsyQewlLSYkHKB1rlgDPXcYBT4TD3nRfLGDxfWSl
         5yIS6F5w+Ot7ciLEFFggbQHw8kIW1/uShIzqEErLi9WL3b57O51sBvRxbLJMlBGyYkeU
         hAN1MsmpELk0iQRSz+lX8fn7Y1LUrIf6du1GSalPjHh7tXPHYPvMUckYN1INfKg/9kf8
         zW8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531f8HiIUtTI0Ec9TOD1tyo2A6EFunHMazrQKeHiwJtCYimv+Nm5
	GBKk/cb/tA/bNZ88iBphNYg=
X-Google-Smtp-Source: ABdhPJxGFULOGh/uFuy8wNaZIWxbXtNIDpJcvSXpmmicmkhZ//i5NVHlCEvWDEBk0FCnBoWrORW/PQ==
X-Received: by 2002:a19:3f55:: with SMTP id m82mr2992246lfa.491.1603891880821;
        Wed, 28 Oct 2020 06:31:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls584707lff.1.gmail; Wed, 28 Oct
 2020 06:31:19 -0700 (PDT)
X-Received: by 2002:a19:e03:: with SMTP id 3mr2918543lfo.335.1603891879610;
        Wed, 28 Oct 2020 06:31:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603891879; cv=none;
        d=google.com; s=arc-20160816;
        b=NG2VJXGaEyBsVYOew+1xjvCbJf/SQJV3X+nHO4ZZ0NckZ+eMSC7RqlRzJpBEHxalrL
         0+qp0PrgQDd8HuncD4iO1dHPATBCblBBS0Fn3s5cIPY+dDIN5vzSm83xEikBedqbMHDd
         rPbFZU9JMlvq3ICZR7Vnp1Nc7bEDvL10+mArS6GKWxfEZ8T4V/qY+QxJ/bM94EJqEyj6
         G/AGmPacrM4FTm4i6NgfZsjvvXE2lFYLSKy3Rhy80ei2QoFol5OjIJRu6FVKk4fR3QXN
         58wEVMnRJsRvr1P9Srnr3W6dilAswKaKCAa7wMAZ6N0kG1yVhUp9kHupOWGTidib7T2J
         e3LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5BWRuAigFz9km9p6yXg2RqfU876ueFRRadA3U73oXM0=;
        b=hs+Z2kSK4SuOgPIhbYC6I3fmj8wQoKil4Au3KW3twcwAiESQfAn5YognDQkfk9ja1I
         w2qS7LkfdHXXb9UMw7MAwmhLR3NcO1W/r2rw14+f2DGg8WhLpUdZzN5W5O039DLP2E8d
         wgzrIqUyk6XVdU9aeePzndkXS6ftfYhrcGFwvqBOWjMEtzMHiOz4xcoLLl8u3lnWt2Dm
         J5aae7a9mjFjyO1WBxgt3dthxv0/BqKyBxdWJTURVJGPutrVTqBjecsCt7LKhXE7yfgl
         ssigVaLaECWOg44m+bit70Ey097hRdqEwLiCzRPWSVf3to24XVHypKulVrlfoXM+548V
         cpbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mg0c3Trr;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y17si144241lfh.4.2020.10.28.06.31.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 06:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id k3so7184071ejj.10
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 06:31:19 -0700 (PDT)
X-Received: by 2002:a17:906:3a55:: with SMTP id a21mr7365323ejf.357.1603891879235;
        Wed, 28 Oct 2020 06:31:19 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d7a:200:a915:6596:e9b0:4f60])
        by smtp.gmail.com with ESMTPSA id ce15sm3186691ejc.39.2020.10.28.06.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 06:31:18 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: David Airlie <airlied@linux.ie>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] agp: amd64: remove unneeded initialization
Date: Wed, 28 Oct 2020 14:31:06 +0100
Message-Id: <20201028133106.5420-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mg0c3Trr;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

make clang-analyzer on x86_64 defconfig caught my attention with:

  drivers/char/agp/amd64-agp.c:336:2: warning: \
  Value stored to 'i' is never read [clang-analyzer-deadcode.DeadStores]
          i = 0;
          ^

Remove this unneeded initialization to make clang-analyzer happy.

Commit a32073bffc65 ("x86_64: Clean and enhance up K8 northbridge access
code") refactored cache_nbs() and introduced this unneeded dead-store
initialization.

As compilers will detect this unneeded assignment and optimize this anyway,
the resulting binary is identical before and after this change.

No functional change. No change in binary code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201028

David, please pick this minor non-urgent clean-up patch.

 drivers/char/agp/amd64-agp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/char/agp/amd64-agp.c b/drivers/char/agp/amd64-agp.c
index b40edae32817..0413b3136541 100644
--- a/drivers/char/agp/amd64-agp.c
+++ b/drivers/char/agp/amd64-agp.c
@@ -333,7 +333,6 @@ static int cache_nbs(struct pci_dev *pdev, u32 cap_ptr)
 	if (!amd_nb_has_feature(AMD_NB_GART))
 		return -ENODEV;
 
-	i = 0;
 	for (i = 0; i < amd_nb_num(); i++) {
 		struct pci_dev *dev = node_to_amd_nb(i)->misc;
 		if (fix_northbridge(dev, pdev, cap_ptr) < 0) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201028133106.5420-1-lukas.bulwahn%40gmail.com.
