Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOXO5KEAMGQETCGRFWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D6D3EDDA0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 21:06:35 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id f64-20020a2538430000b0290593bfc4b046sf17646425yba.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 12:06:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629140794; cv=pass;
        d=google.com; s=arc-20160816;
        b=XwgXUouj+N3FBuxC2RCmwlnLt2lCnE/gvlRiEUu15xZs+7Sj/zF1MUnF+km7N6K7Hs
         pC/legVlW9x2GGWUhQMKSxd9R5Pq5ANFRgm+Y1VfZ1q6iKNj6yARIquV663SmrfMpheU
         /ZFjVt5AgpnK/A8b0w5/enUt4fvoAGNTyY/6uhXsL/fgqe/a99PqXCPBzZbVblZ6HnIp
         lXUGt9bek2M0J499a3TxpUwl03G9M2PU9O89PUcTjZT0Nugm9QVbjbYouluCHurnOJKR
         1FKYnV4b5L7fI+g41lEWYEPtigSdyQB3/s+Y1LAmUQ6VIHrXHcWoZv3QfbuVR8TxHvvY
         eBoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=NNeqDRyc+Xht2T/2TyqYdNFCuZIlNCdRWiICEyR0u5Q=;
        b=ne5KrZdb8nm5CtRyFwqEVxkfrTQVCq/rzShKdkbiyP2ahTIURfsTQtJjE3rK3fRWa1
         +O9I4eN7oYw6qkbFK25B311oMXymsvBsiK6kHCk6VhwHiUfkWvxHEUyxw2jPKjyTKEvG
         RQACUyZsi0l1qiNaDLMI1TvrNvhMFlYEOrEOTNjlPlIFF0YCqDR5COVpoQyxrKk7L/T9
         l/RIK4MhpFlNqVmZytrhvWTDoyRnxvFYqEmdO6yGe1HHleTxZMmKSAm7StlzJbLpz2wW
         3sf4qDO5RdkSp/Xw01iLdkeqqV2BV3Vb8jcnSYX90RVT/9PfaVtcdV/U2c8MDxRIYUxb
         9N+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mpi6Ef+m;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNeqDRyc+Xht2T/2TyqYdNFCuZIlNCdRWiICEyR0u5Q=;
        b=iyXh4oZSrlnKilJrymgWWvB+JbBzctluHA/FoiK9eBgz+AiI9lBs+exEXZUMO0CfZM
         wN+MnJx5MrH8NKqe5h+I5OWF+o9pK+ApFZJMUcvesU6X8sIB0ETTMA06JgiLXQHsm2cF
         FZL43UmhNqA32C+MMGrmKemfbzFMU+qpdMiIAMXkTdy5gi2yls0C0yk+mzrG7rmz3JXz
         mpchrHQz6SdNhX4H9lSWBI/ab3SJ8Kg0i/DXn62k4fIdCp54L1nbJgwgDgf1IE6SocpX
         veUQtE2sI9OoRgQemMEUyS6RcgeGLw8pDvbBi6/fksRr2I/RWnQEqdHNqudOoU/Qi8/T
         Z4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NNeqDRyc+Xht2T/2TyqYdNFCuZIlNCdRWiICEyR0u5Q=;
        b=pFJZCXkVpGeaacb/3cMm3zoXmgO4L3vG3MERl8j5vCO9/jRga4KDmI0bYY2dfFybve
         5EsSh3pXL6ZN3mo7oABykSDqD9p6VXxMogbXsPsCuT2q9Dc5C7XXEwGktJ/DorzckIPU
         n39FVV/fwiGSYNelW0zZn6RkusCfFTifbqFSB0sZHdi2SeETnijfymK7JUaGA1cXOHvQ
         2tU9BUGb3eFWwcBONlUfOqyU/xJfVW94XEHhDjAePKf2QvZyj4+KJxfMAbT574IU0ify
         JJcTfPspWZLlzoUiSpmKpRN05/IzEhWYdMuUNVGeWN5t19960nFLpoyob6sCq6WA7+df
         vPDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NkjDc+fhKFY+43WODK86wonp71EFLy2ZO4WPKz/c/cKVZc7yy
	SkWcwg2hUKvyESJ7s6J1lME=
X-Google-Smtp-Source: ABdhPJyQtETSx5ZjaY1qOuqyKZOXpxSYV3OTBPre9VrSUuiWPevtHeQfwUhxTEHCR2YV/AD4ctkq7A==
X-Received: by 2002:a25:3625:: with SMTP id d37mr25196724yba.140.1629140794684;
        Mon, 16 Aug 2021 12:06:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:32c9:: with SMTP id y192ls69767yby.5.gmail; Mon, 16 Aug
 2021 12:06:34 -0700 (PDT)
X-Received: by 2002:a25:c013:: with SMTP id c19mr10140592ybf.103.1629140794312;
        Mon, 16 Aug 2021 12:06:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629140794; cv=none;
        d=google.com; s=arc-20160816;
        b=PV2pL1vZTegGK5Zdp1ewsr/PQ2OLscR6x4BR9GeqqQ+NDMIgEDWMeIXxhYU7p75ACA
         T2j12uC2Q+VOv2/D4IB5OHgq14lheVjLNtPkG+Dfc4QMNrUKwJGd6ll6W8aptMr2Cfh9
         JyMWOA+I7ZD4rjJ92OZYXhuXBgtYJS3GmmTA9SmICSNUKWy0SySsI5Ct0BK4UQOK9J1W
         oIuI84YfvLd0f2+0EkQkW/NItdrfMK6TbZpkG316fR0e/blcpWaAO1k/aACNscqZOIRk
         cM27cl8t8SrJxrDIvhbh0c8yxQLk029T38pRY6nes6u94fcgjAPnPuoDJAbqCdYNAtQf
         xRPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Zp9ZzCLL2zET+h4mBYzPrO4lHOidu/SDke9rfmeVchU=;
        b=A/7mpUxYefIxNr3m2sQwy46s18fgJrfrCqXzxhdMBrWl7y/X7FmUaf2sOLU/RXzrQ6
         yp33fiayHcYmIsbmpvgorJcwl7Zjcyu6tJxAxQ1emD+1iizy6FFfMNRHtJUPEnexWcI5
         vDYmvCVWftECdPRSjs9Qcy/TzCZUGtM/eEEQvk5ReSGrat6lBdkRk0mtnvmDvypwhToN
         JlCKyxc+ect8G29mrAhh+1mpv//h/M//sz9XleUt5Zjfqf6rs0tJVTdiYX7fTnXWWYnN
         muYrfSHS5KXN3aIjDILB8gq62RNI+rtCKwF/y47AlgOIIHcO5RYDPZW/El9Ta6C6f84R
         oO1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mpi6Ef+m;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u17si6742ybc.5.2021.08.16.12.06.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 12:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DCB6860EAF;
	Mon, 16 Aug 2021 19:06:31 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] powerpc/xive: Do not mark xive_request_ipi() as __init
Date: Mon, 16 Aug 2021 11:57:11 -0700
Message-Id: <20210816185711.21563-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mpi6Ef+m;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Compiling ppc64le_defconfig with clang-14 shows a modpost warning:

WARNING: modpost: vmlinux.o(.text+0xa74e0): Section mismatch in
reference from the function xive_setup_cpu_ipi() to the function
.init.text:xive_request_ipi()
The function xive_setup_cpu_ipi() references
the function __init xive_request_ipi().
This is often because xive_setup_cpu_ipi lacks a __init
annotation or the annotation of xive_request_ipi is wrong.

xive_request_ipi() is called from xive_setup_cpu_ipi(), which is not
__init, so xive_request_ipi() should not be marked __init. Remove the
attribute so there is no more warning.

Fixes: cbc06f051c52 ("powerpc/xive: Do not skip CPU-less nodes when creating the IPIs")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/powerpc/sysdev/xive/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/sysdev/xive/common.c b/arch/powerpc/sysdev/xive/common.c
index 943fd30095af..8183ca343675 100644
--- a/arch/powerpc/sysdev/xive/common.c
+++ b/arch/powerpc/sysdev/xive/common.c
@@ -1170,7 +1170,7 @@ static int __init xive_init_ipis(void)
 	return ret;
 }
 
-static int __init xive_request_ipi(unsigned int cpu)
+static int xive_request_ipi(unsigned int cpu)
 {
 	struct xive_ipi_desc *xid = &xive_ipis[early_cpu_to_node(cpu)];
 	int ret;

base-commit: a2824f19e6065a0d3735acd9fe7155b104e7edf5
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816185711.21563-1-nathan%40kernel.org.
