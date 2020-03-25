Return-Path: <clang-built-linux+bncBCS7XUWOUULBBRGT5PZQKGQE2BWTGVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C61CD192062
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 06:19:01 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 125sf1198699pfv.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 22:19:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585113540; cv=pass;
        d=google.com; s=arc-20160816;
        b=wobvhtmwoDRGb7iFHTylNvSR7RnJXb58C724zt3fIn09lIMA7mQi4EfwHPx9St9sFS
         QkZA5ZkT02KBlQb4XkRbKyPoS7ddRakR3Xc4GNJiNw6ly+aPUUnhRL/ouf3sSudI6+88
         trWfYGmKitTt7Ox5JBAFlfKPBYJtfiOX8Ub45tzFLUf1vJJGaIh1HoKPTTwaTIIRtHiy
         HkYD1+OPDJrccN0t5hj3/XOG9q2I/5km+J7MpxtYvxuQ82c8H2Vly3lnvHJr6z5iaaGn
         BMqhi5yHPVENlgnD1RptD+rFNfL23pNuxFcZYwoeXclTZWX2LfUm1vHfUOGp2FsrDESU
         X1CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=fZUmkJxroiQd0tV+2B9VhIh7latvaWgLoavuG1WFmvk=;
        b=eVF9aT5wVJNmv3brlaUhqbgaWa2+jUPESz3ZjMWhy4shG+fS6Ov6Hh8YPy4435WCQC
         TOB30B2r2EiM2qGRHlHTrMdUc2CeqD3OAOUHA8590mYRbg+m0LtgMIQzf88eZjz/2ARB
         snd/DS2LjhRl9ms5z6c6Xee8C226tZbkjLzr6hvl/o+/3IM4B2p5hWWw4RBn2FCGPZ9P
         OW3ZZGJCJ2SYGkrqNVD9wxmCu3B6rogho/v5uHSXAYTRtrX5D9ab9n2q+4wiOChQPHdB
         a/0IBwDD+RgT6J0CpDim038tYfLKe9hoK/aSw3f2+piZardAoCXVKuPsfhRDRTuv248r
         U5IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RtZS2Njn;
       spf=pass (google.com: domain of 3wul6xgckexslzrjqzxfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3wul6XgcKEXslZrjqZxfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fZUmkJxroiQd0tV+2B9VhIh7latvaWgLoavuG1WFmvk=;
        b=cSbqo9hhbQmw7c2ZFG0O3LB0sNt45CmcFA4b+3Jf4k/4/tSmpJZLW8SSTT3dawwkoJ
         onfxkxrb41SK4JUfvSqxC3E7GFy/MICsbEjmu7zCNtMkwePUWC0XG0UKyhfCW6F5SvtP
         ArJVU1FGugMc3ttrtDvGQBp6Rys3JB3qLEMIridONXu1sDSLEz7oHSdf7B3RdTTLcyTi
         CEdyG6eLfs6xmQW/7hwTKX6IDw/8Akzy8DFcCnLc/QFb0Bppp70YKK0mj5tOHmZpEPKS
         fd98wmyha95zQwfdqGI0ukutjnKCqEJio72KPVtxi2Eaqeo/tFbhzUbWOc5ujnc0uoI3
         U4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fZUmkJxroiQd0tV+2B9VhIh7latvaWgLoavuG1WFmvk=;
        b=JCyxzSOCr76nMmnp5w8JRw4pZHVZD5WSgfu/UATIwOYI6MibGfQ+kw5zS8YhFN103e
         D+g9dKn+OSn2Nwkp5l/mtwaH06gcHPOVU9fjw+Svm+5eDz86PENcBV4HllTYmQoelddV
         FUbuNSHnXkx1sEi02KOhiZv9XhueBfcIkhLnVFFYU/OtIblTqvCSk5W1hYvNVE+mWpbQ
         f9h9ccXS+un1EPQcfYikvDw1PzcXPSMfdsjuTOHrHQPAq/0DAhWYRcXC1oIT3/raB9Zf
         hVZzzMIC90Wx4bhpDqOkUKDnJpLaeoQtkujXMWMSDZOOd7GQ2WQiLp1XohYehZFf1VPX
         /cNA==
X-Gm-Message-State: ANhLgQ2LxnM0xF45D7MGcG+j9LAhkZv6gWlanBuvYgR3f27LdBlfDwq9
	DnGK4IZDrRBNLQPjPz/hXY0=
X-Google-Smtp-Source: ADFU+vt17c/k1shY2urT7hvikfxCTCZDtaKvE0S6AmfdVtVsOcCbm/qYqZ5m20hUTH2feb0J6TtlaA==
X-Received: by 2002:a17:90a:26ef:: with SMTP id m102mr1641226pje.173.1585113540368;
        Tue, 24 Mar 2020 22:19:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9911:: with SMTP id z17ls702007pff.5.gmail; Tue, 24 Mar
 2020 22:18:59 -0700 (PDT)
X-Received: by 2002:a63:798a:: with SMTP id u132mr1419547pgc.203.1585113539839;
        Tue, 24 Mar 2020 22:18:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585113539; cv=none;
        d=google.com; s=arc-20160816;
        b=YNX1zJZJ9su2i9k/KiUf762ut8aexvnzjt5t5HeXoUkYNCWeZHZXHjsdqAWg91AQ1d
         TK8wvAnpa/Gaf4YXN/Tw3C5+C7l0SDVTy4mAHh35jxV461+J00mufhlUGWcDqzcJIDl9
         UUTdgPZpHgawJB/ZSx9Dj9WVojJJ6aAcLD0sJJJqoneN7fmQGdN9VHPylRGBOJ40nRlB
         9sUcBOlC+0boZ3v91jzEcUzhxu1YyRrQQ8krVp3HBTa1M4mBvfT5DVxc+SJ2FRBF3b8S
         5JwCmlZS0hSAfnEYlkapxDnah/KlF5a9sIG+r8Pg3YaIztZYcZjTA64XaJwzTGbUFglQ
         xzTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=kyc8Lz803rkHQahNF6Vh9SygFIqhcJEwIAPW6vgmG6U=;
        b=pibjfxwetWngRR68iR6J1rtIHJ+84bQYIVmgluTV4CRv1KyGcqUBJzDutzqeA8+J/b
         Ic2/Voy3zCXpVR/hArgbByNb1dCx5T4ePclGDq17aq7yF+7vMLDyKqRTuHRenOrSRVDF
         lMVI01XQ2ju8JGw0w9LEM6AUZoH9y1i9rAmKrY5fzVeJjRotqAnJj0hsKuNXyRxXYrkR
         4B6+6kTXOYQcBDDjewSTaphpF2E/IzEvlPq8PFIxLxFOSHFAGyw0BAPdvrKdfGchJ035
         Yr8EYOQTsL/ruPB0ZzZNkg0daOgJcGqcrlY94HffFeA8gchIGcoGjZQTQfmOa8l/QGm/
         7UMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RtZS2Njn;
       spf=pass (google.com: domain of 3wul6xgckexslzrjqzxfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3wul6XgcKEXslZrjqZxfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id 188si1298430pfb.1.2020.03.24.22.18.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 22:18:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wul6xgckexslzrjqzxfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id e10so380906vkk.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 22:18:59 -0700 (PDT)
X-Received: by 2002:a67:69d8:: with SMTP id e207mr1292649vsc.141.1585113538881;
 Tue, 24 Mar 2020 22:18:58 -0700 (PDT)
Date: Tue, 24 Mar 2020 22:18:20 -0700
Message-Id: <20200325051820.163253-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH] powerpc/boot: Delete unneeded .globl _zimage_start
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: Fangrui Song <maskray@google.com>, Joel Stanley <joel@jms.id.au>, 
	Michael Ellerman <mpe@ellerman.id.au>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RtZS2Njn;       spf=pass
 (google.com: domain of 3wul6xgckexslzrjqzxfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3wul6XgcKEXslZrjqZxfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

.globl sets the symbol binding to STB_GLOBAL while .weak sets the
binding to STB_WEAK. They should not be used together. It is accidetal
rather then intentional that GNU as let .weak override .globl while
clang integrated assembler let the last win.

Fixes: cd197ffcf10b "[POWERPC] zImage: Cleanup and improve zImage entry point"
Fixes: ee9d21b3b358 "powerpc/boot: Ensure _zimage_start is a weak symbol"
Link: https://github.com/ClangBuiltLinux/linux/issues/937
Signed-off-by: Fangrui Song <maskray@google.com>
Cc: Joel Stanley <joel@jms.id.au>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com
---
 arch/powerpc/boot/crt0.S | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/powerpc/boot/crt0.S b/arch/powerpc/boot/crt0.S
index 92608f34d312..1d83966f5ef6 100644
--- a/arch/powerpc/boot/crt0.S
+++ b/arch/powerpc/boot/crt0.S
@@ -44,9 +44,6 @@ p_end:		.long	_end
 p_pstack:	.long	_platform_stack_top
 #endif
 
-	.globl	_zimage_start
-	/* Clang appears to require the .weak directive to be after the symbol
-	 * is defined. See https://bugs.llvm.org/show_bug.cgi?id=38921  */
 	.weak	_zimage_start
 _zimage_start:
 	.globl	_zimage_start_lib
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325051820.163253-1-maskray%40google.com.
