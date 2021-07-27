Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB37KQGEAMGQEBJQWVGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E673D8080
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:56 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id l7-20020ac848c70000b0290252173fe79csf7164423qtr.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420015; cv=pass;
        d=google.com; s=arc-20160816;
        b=uxQ9U4qprtp6JEWJNQ5lXb5jOdyTCJmuYLCqWJMDKMMvfiAsmLUWQ1oPoRltKRKZk0
         /PgPCgD0TvReuoDbHYu0E+BNA4uEbhrCmIrx79/K2fGqIgkKH2LI9D/iPwUJjpmyGl/p
         TDSANDwE/c9Vwex6bPdmx6t9aloK5JnX4Zt4m2R/s41xfGaa/kiBur3z5/hoi557keyI
         eXchogOxWPhJZImnFbqUdyvTjhlhZ0JiqCJijTHVY8RL0v0ydMJaj2+l0Mu+hDUpW5g0
         qh46z9iTw1AbfmURHGeCuEwAwAUt4zCKgr80BvSmCd72uRSVmK8LeDfwVW66xgvigkEJ
         SVbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=X8YIZWYzI/m07yxbUJoigGx0IONZJeiuWctsa4ECJ5I=;
        b=mGT2ulVJeI92C2cEKLWGAZ2czGHDjFhu7ogA0szTzwGXi7O0LqCUfGJAkw3wuHXWiy
         MOfQvcNuM/lFUcawRU2Ur6uGxDMQCpSlfmLIVfC09LqsmvsMwRTbUhwgrnXCXvgHwmo7
         0Pu51U13QO1Lb+Lh5ceb1y2uzPtsrqq8nxTukM97T0w8qIvK+FEyDK9SEurMhhuWzLHL
         10b0Hm/PXdwmCdynitr6LR1rzWaOtk8upajYwPpdS/BO9tMPhHtaIH8lNIX0ab1P68CN
         PcEj3QZQvUgMpCcv+fIj0duBZPToZRfBnYt6csYiAcApxjVMasMUOfV0LSnuKR/yOPoj
         j6lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gxKAidxH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8YIZWYzI/m07yxbUJoigGx0IONZJeiuWctsa4ECJ5I=;
        b=kvmuoCCa4y6nD8r8GfKzkt3bcq9PfXgRHA18kUqo9uRIXbYnbKMezc0NTpFFVM5wX8
         DqM5jVNcou8zzISyD7Jdj3mqAMJEetzjeg0HoFhniQ6IJmSBg9JMCHSC92vIfgC/HqRm
         ROMzi6mgf5LpD+xUpzkysz0eG92Gqv6dZRTjJUQdzdu0PhLbL3gYpBWSbLfFQ1ES9ExT
         aba/ngsJ3yjwr65p4Xsu4kaV+7PbhGZkWL95SKfT371ejqTVQDWMUEeVieCb32IUSA42
         ZuEAA4Djxv/W+BrjrdRMv+Wdvk2C3m3HcTtbEtanIYIM9AKjYyCxYegksKqKHMWOaMpN
         oAqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8YIZWYzI/m07yxbUJoigGx0IONZJeiuWctsa4ECJ5I=;
        b=aMw7vNAlodbgYXV+pbs+U27pE75tBnZS3af5VlHRgou23JwQ376Cr2N3Nw7VSAkQLB
         t6YQvzfh9YLE2xa8dCpdAnxGrw8oTq7CPCbMLYH4qhtp0vGkpGlxtG/VqcvVgeHa8E2c
         SCytSKi7vwUe9J1w0qomW4okJR/YSnF33xilZwrIAjxj+HW11RtZOGN6d2mSfUF0OC3y
         Rv9k0y5n/dKwE1csicSI2MpGG70e4hcMGz72OiL/N/cBWXP6x5vM/w1Gxg7wNo38yPue
         IRHd8YusodWXX0mi6+AfTUGzA9UR2dgVm4IYdlxDJ5YjbCXWgCBr8hc49LGZ4QMN6fOx
         TXSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+fla+qvMJGQ14BQ1K6BNIZIa3P0amcNV7dRYOQK7WUlEj3ffY
	hDPbnKgOY/1H3ZaRALBVmfg=
X-Google-Smtp-Source: ABdhPJwTOAvq8Cv86rPxIwPAvdmi9H5MFK8bgRRglH6W5GRnBipF6HVC+SvhdBYC4ypklnOLMKMTPw==
X-Received: by 2002:ac8:7092:: with SMTP id y18mr21263165qto.36.1627420015222;
        Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4d93:: with SMTP id a19ls67814qtw.9.gmail; Tue, 27 Jul
 2021 14:06:54 -0700 (PDT)
X-Received: by 2002:a05:622a:1995:: with SMTP id u21mr21511560qtc.77.1627420014785;
        Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420014; cv=none;
        d=google.com; s=arc-20160816;
        b=FjlIsXfSGS88NNSTSNfA+abq+H2mjyvrq6g0TsrhRH9bcurMjOJyIfJe49P52SsjOb
         1olIn5DYErNJ5euRlzKKlCXLNob6OkF2sMbWmEAITlFhU/Ss31/VA1CEvvaWB9p2bEua
         9pX/qMTsSjy74G6t/kjoYSfvY8EvDLiuA6JvMgDk9yR2r4tdwR2rsfCWKicJObHe8+vM
         J3wfVvEIG8vH/aSAPSYb3WlBVVcpF+vP3ok5b7SQw97EVvw4NdSs3Z+ZcEcV7rksuZYm
         gm00Iv2cTJwGT3eTD2FysF3j0puKG5KkR7O1E3QlK2U5m7dMkllrDxPyOp40Lt/8cLvw
         ZkEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=O5PVCm4vbOkHTdhySLNgX8cYsmk07det2tWYYr+tRf4=;
        b=JlmeNUCucBsBRKrOUGvBE9yP0eJ8msc/rOUWHKHEF6NKa4f9jWmMTMEgDfZxAn5qyw
         +E8oHW8ST+flpWlpdaJ5aGZ4KZyf5dzPfiUOSF9m0dYHVFOo3QwU3N0NRdRLcI5GVPtT
         edD2R0uDqObCgf7zfS2KkiAUM59NlX7+XfToeTsSthm7XVqB77FWLRL9lEvhhzNJ+Jp2
         DsO5TTpZRzNOP3wAfCu0D3hhAJLvWyWHeHn4wLOwqZnS9ie6LhyenQkQZLCwdt/hBX93
         +ZV39qWnJ2CdWKn3jkGK2zbRbgWmmEly+kTQWagt8pRFd3YDT0DBqSqJX4NqOFMtc/tY
         GXtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gxKAidxH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id z24si308897qtm.3.2021.07.27.14.06.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id pf12-20020a17090b1d8cb0290175c085e7a5so6708458pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
X-Received: by 2002:a17:90a:c003:: with SMTP id p3mr23960881pjt.14.1627420014073;
        Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q14sm4721670pfn.73.2021.07.27.14.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 55/64] RDMA/mlx5: Use struct_group() to zero struct mlx5_ib_mr
Date: Tue, 27 Jul 2021 13:58:46 -0700
Message-Id: <20210727205855.411487-56-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1274; h=from:subject; bh=oY909dEANo6V3IFn0noc67FV5hBK8uceU7oGCjc7zOw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOMh317iG5OLcRV6f6KOkZ9q+C2N36hwkRl8LQQ C7eGawSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjAAKCRCJcvTf3G3AJg4UD/ 9BnzAT1Z7CsW+TRX8tpO/bHWsp1ALKoQrreRJNLcuwaofCAjFi8BnU29qFDffCG8DWqAC3Pmtj4p39 RskVkYUAy5axxifQzhefjhk7tLjvkw2mmeV+0QGdeg2rbLL5Dpmmav2A7WaFsWyg7W74/0ud+a6Hbc M4RLDpYX0mM68jox12+Syr653lTWFNFS86gcN1Q975/PUD2xYk3dY3H3s2zF7i9XFyEP2N2G5zErPl ED8ZrAbuSSNxMO5rke2YVbiw/FbKveB5UCkCgtjoT7lSW9mZYdr144xmSl8iaDmr3LYdfAxQG6WpF1 N2W+2K9FRkZT0VZd9PdKAMbV3Ofm9qyfYEnpmGGs0y4uhKJtYKpv60s7YXeG+eQtwR/bCFvecfShz5 rvqvYF46IrMS8jbLeJHjqvjyd1hw+zCAJKd2c4R2LPUZ7WDVjRNGtq82PEZ2Tr725JvJTSLKrGx8YA tWmn4rCBBSu/PqTl3206VAZLiP+HeqZxC26TE27C7IcR67ONOX3U06CdJRm2X3VkQMJVPvT0OYPmRr DH5V/sNlfiZe0r9fNcKAYsCQaHKXs6D2jYAWqxqm2msNETdd60wrVAfUL77zKIV9hqqj6sRIXPhZ8R +len0ulP7Zp0NQRxZYGLikaPmhWeDXiQR88kCVUq6p0rdBPBuFSFYAGLjJSQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gxKAidxH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark region of struct mlx5_ib_mr that should be
initialized to zero.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/infiniband/hw/mlx5/mlx5_ib.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/mlx5/mlx5_ib.h b/drivers/infiniband/hw/mlx5/mlx5_ib.h
index 585fb00bdce8..830066e95260 100644
--- a/drivers/infiniband/hw/mlx5/mlx5_ib.h
+++ b/drivers/infiniband/hw/mlx5/mlx5_ib.h
@@ -644,6 +644,7 @@ struct mlx5_ib_mr {
 	struct ib_umem *umem;
 
 	/* This is zero'd when the MR is allocated */
+	struct_group(cleared,
 	union {
 		/* Used only while the MR is in the cache */
 		struct {
@@ -691,12 +692,13 @@ struct mlx5_ib_mr {
 			bool is_odp_implicit;
 		};
 	};
+	);
 };
 
 /* Zero the fields in the mr that are variant depending on usage */
 static inline void mlx5_clear_mr(struct mlx5_ib_mr *mr)
 {
-	memset(mr->out, 0, sizeof(*mr) - offsetof(struct mlx5_ib_mr, out));
+	memset(&mr->cleared, 0, sizeof(mr->cleared));
 }
 
 static inline bool is_odp_mr(struct mlx5_ib_mr *mr)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-56-keescook%40chromium.org.
