Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHXHQGEAMGQEABGFCHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id BA33A3D7FAB
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:11 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id e16-20020ac867100000b0290257b7db4a28sf7102154qtp.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419551; cv=pass;
        d=google.com; s=arc-20160816;
        b=NeJUJhijNJkSKHNvW5gNSi4/zYew/MnL40H3yDV7XQikgV+AaeRZtgy4Fc+Pp9Hhx4
         KUtRZVfVxXLbtj9fqEJ+tBdj33KnD1DbYWRh4mDvSKc2FwZSmlGMVClScJWepeNIm/AE
         GyY66bv5gEBR8sNGyHukqobWLn/dYZZphKhtsuyjVLPJafzvAT+4rSHFxsXMMVg2jgIu
         YckoVXtOsp08yyC90EGeclv6bfRF2+cZQFbp2ANtIDfcxzhjAbbsxjNmfmf3xiTNddIA
         fxENOcFU2muMIfuEPquJCPUH73Q6/eNI06TcKbpbPdgr9T/YLiz6NdiAk/6zNVDMlF6G
         IgOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D6J6BP+xUdhL/HJ8uNzUuDFtvP/MlDIeSyL+OmzKmBQ=;
        b=ILysqMtkhOq25PA3q3s55a1Y5gMoOflpcNXNuLZ04gLQPycucj/tad2GFUka4BvPK9
         UwD7pA3mrtNEjq+jgSZC3vC8h6llLxY7F/BZzprytbjqUX5QGdJkKjqfcLOhTxbwyZCz
         NQ7g/8ljkS8ojtdjr2Jp4R+mtzX7pK/4QMJbIJiNWwWsZbm9xkYHqwdteI2oa5mpjnqV
         HAeTisaLNzy4dkZ2BkBh+ndon7PgpQYYsMHevXwViYs6QTqpbDJlNfTWiHvsLqIfWBwg
         8KFdojBUoUzeqTN80b9uSBbFdkPr691pbmN7ouVcGgzdXPg/HfoE/P4Z1AyZ4z59+1u6
         C61w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IsnPTTOI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6J6BP+xUdhL/HJ8uNzUuDFtvP/MlDIeSyL+OmzKmBQ=;
        b=H5dL5DT9gwa+jTcersUETmf7TWvNifEK8EFDkm0clbwN1G1DTJ5yTqhHzbvL+Z43mW
         Stomkf0NQEj8Nv1o3/ZcUfm92mtB3ZOii/h50ZnbtmVn5VrfzKjZiYSeTvkg9z6+jvV/
         cZBaT4KRDCIMzVfKwn3mo4pPRkIojDXj6Augo5YAoXWxkgjBhW2Tbeo2RHAnl+xd1JCx
         LhqrXPBGwTgPDsPaPjcc58WLPh0QamUzsadeqzKX2sFrZ0hZ2wIF4CrtdFTH+gOOMqiI
         SwsW0pea2baNQ/kvm0cyrLWq+9DMrasqFoEFgqc+EjZQbrwIoBbCEfy+Ju/gjLI9U9U1
         tcvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6J6BP+xUdhL/HJ8uNzUuDFtvP/MlDIeSyL+OmzKmBQ=;
        b=XM1lfrsMzcekoV5QYYgSuKJLrBHweDW6yISL/kVelJJNIgis0NXaGx8ZznD4xJz8IK
         7o+sArhXgX1nES/G0aoQjFm70pWZqCaTXA+7YQIp5ZddU5i6viFLVeP6lamH8wzx6fz2
         CXAkqV2mCbqUGb4e3DWOHp9NtmPTx+s1bWyBSOI2/UU36SjNt9xuNcu3uTYyj8HasT5/
         TAYdC+5q3IidWbGH7FdefTbp/3K2DRSaPD5yB3j42Hd8VxZFMhHqS/NN4kruEb6Hs8Nw
         OZi4tPLkj+ZIdAP/co+F+NmxltSkXggBhbt8aVL42Y7cjxOWlSUYkHPPIqaRagdrTmGH
         Gbbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306N+527DuoxzgoqTpn0qchXugcmvFmLMOBWppQNdKVu2lwOEgy
	180Kypd5xBSq04qNcjizaIM=
X-Google-Smtp-Source: ABdhPJyIoVvJ3j80kefdljZlln4wqn0OJOMHCU+HO9e0wAtD3TpplYluZ1fyxja75l0GMVryVPOYtw==
X-Received: by 2002:a0c:f6c6:: with SMTP id d6mr24834716qvo.30.1627419550904;
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f7cb:: with SMTP id f11ls66655qvo.7.gmail; Tue, 27 Jul
 2021 13:59:10 -0700 (PDT)
X-Received: by 2002:a05:6214:f2e:: with SMTP id iw14mr15788790qvb.5.1627419550403;
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419550; cv=none;
        d=google.com; s=arc-20160816;
        b=JyVL5iP7Ailg0I/lygrvm1T2a5GeUvcE9bKzag045fCuLKK+xdxj6IusS7UTnla2S8
         +iJIudcfdwYX4mdsK4i0rk9E9LrTMMe+pSCAEn5rbNQyliKH6bLz59x3dTy/KTh4iXQ4
         1dj4o9+1t6VA1N2TdbX1O5XDzMjoX2uyoYrWaGsPAx5Mfx0D+2IOF28+0OtvuEzV15R8
         Y98XU/Bzfw7FWzotytPIne6mLNIpj8mB4C2WIgALVjoB1sHagFJxKmpjgzvPDr/C4jDJ
         9zkNvqjQE+8jm093CORQwMFem3q99aSiFtFTCHuBTIL96tLsFp0IxklsMlNLRe4kuh5/
         jy8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RCqXotzAIvnXgOqstJDis4roVpoLDPnfq3WqfZlD8nw=;
        b=PXdt6RJnB3x6/Ya5tt7QypxIQOVnBxy3kb0n8B/oxSKzSfhMhopmU9n0qvsAcWL2Fj
         Lnl/i9wNL6QyF1Y0EQU6+MZ7FmHxpHFEzOhAtyDaJkmNBBrMJZSc/kW+AXWSlpY0yD4p
         8CkNVp1IZB1+jGyVwEtGAxEKcB62lNKuL+1e81bGhXXb6WnNMLhWtrDXrHVqQA/+vDdn
         23ErcU5PNsaUpt0NR3EzJqoI/C31Ftv0l5ufjHLQbw6qq1uvTPiS4iS/IpLB+eOzZedl
         fOhMBPGOkPo85WT2k6r2SmViwkVCrV/gx8Z4y3UeHPtK3StJBzjKE0g746IzTfNk4F7Z
         Cxrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IsnPTTOI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id 12si280216qtp.2.2021.07.27.13.59.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id i1so17597091plr.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
X-Received: by 2002:a05:6a00:1c6d:b029:338:322:137d with SMTP id s45-20020a056a001c6db02903380322137dmr25076229pfw.38.1627419549870;
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h20sm4771196pfn.173.2021.07.27.13.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
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
Subject: [PATCH 11/64] net/mlx5e: Avoid field-overflowing memcpy()
Date: Tue, 27 Jul 2021 13:58:02 -0700
Message-Id: <20210727205855.411487-12-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2638; h=from:subject; bh=QKALqwrqhLc+7tVP8mb7u9vJwM2ktK3XL7hcr7RjisE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOCimDJCcehKBIQzI/fV1vkomdBEz58Sp357Acw ashx10aJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzggAKCRCJcvTf3G3AJowOD/ 0cV2/gWpM3tzSGeDnd+48FkILInBduxYU7T8eAce0pFHdDWK3Xdzt0Rz/8KSK9g9qHiPAoTtE1ZDZs IdycA5PGwVU7OoMo9y8rxip+T0x8+0FTjiK0eEeADuraWJtuRkY7rqUv3anZB+7aFcy23HLSzsokDy v3K2NShHDdMr6+BTxCwT82oNKp7sflOMI9zqU65OfotImRrxPDAWNMY94XTaiIiAAWhAiHJTCCBy8a ww4ATYSVeRhj5CuJno8eppzIfgRbYoroFPSEqjpMIcR8XWfhMi3nGrZH+yIEDKzj93dnynMtjdt29m NwgegnkyruD3AJAJMQlWpROj7wM6tRwt/RQHzXD7ude5mYXinSx6o7qjeEh5KvtVaWGZNIyNH7QX03 PtXqkYsIh8qzepHC9wr8mH6qkkUO1tkoy2yiGAA+MawqqegNs1HUQyC90hWs+rYewPsWZdHCusZQgh ZwPEDFuZ5NwYCIx582KcOGBtSe8ERTdcCF8QAsSe7eA8uVzZh7NgAKPp9Qv5ldepnhjwjiXDlXn1kl c6aG7NcBdLnGZLaWPMWbzyie+xLb3X42bGBryj5ZyD+7tJuSeBWhYRQ4Vf3KftFyOoXMrhYgc97usd VBN5UHc/ZqYheG58Rq9zQ6wjzNvKBzLmALvQsvOQLX+K6SPP+pWWlQKN4+LA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IsnPTTOI;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use flexible arrays instead of zero-element arrays (which look like they
are always overflowing) and split the cross-field memcpy() into two halves
that can be appropriately bounds-checked by the compiler.

"pahole" shows no size nor member offset changes to struct mlx5e_tx_wqe
nor struct mlx5e_umr_wqe. "objdump -d" shows no meaningful object
code changes (i.e. only source line number induced differences and
optimizations).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/mellanox/mlx5/core/en.h     | 4 ++--
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c | 4 +++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h b/drivers/net/ethernet/mellanox/mlx5/core/en.h
index b1b51bbba054..54c014d97db7 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
@@ -204,7 +204,7 @@ static inline int mlx5e_get_max_num_channels(struct mlx5_core_dev *mdev)
 struct mlx5e_tx_wqe {
 	struct mlx5_wqe_ctrl_seg ctrl;
 	struct mlx5_wqe_eth_seg  eth;
-	struct mlx5_wqe_data_seg data[0];
+	struct mlx5_wqe_data_seg data[];
 };
 
 struct mlx5e_rx_wqe_ll {
@@ -220,7 +220,7 @@ struct mlx5e_umr_wqe {
 	struct mlx5_wqe_ctrl_seg       ctrl;
 	struct mlx5_wqe_umr_ctrl_seg   uctrl;
 	struct mlx5_mkey_seg           mkc;
-	struct mlx5_mtt                inline_mtts[0];
+	struct mlx5_mtt                inline_mtts[];
 };
 
 extern const char mlx5e_self_tests[][ETH_GSTRING_LEN];
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index 2f0df5cc1a2d..2d2364ea13cf 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -341,8 +341,10 @@ mlx5e_xmit_xdp_frame(struct mlx5e_xdpsq *sq, struct mlx5e_xmit_data *xdptxd,
 
 	/* copy the inline part if required */
 	if (sq->min_inline_mode != MLX5_INLINE_MODE_NONE) {
-		memcpy(eseg->inline_hdr.start, xdptxd->data, MLX5E_XDP_MIN_INLINE);
+		memcpy(eseg->inline_hdr.start, xdptxd->data, sizeof(eseg->inline_hdr.start));
 		eseg->inline_hdr.sz = cpu_to_be16(MLX5E_XDP_MIN_INLINE);
+		memcpy(dseg, xdptxd->data + sizeof(eseg->inline_hdr.start),
+				MLX5E_XDP_MIN_INLINE - sizeof(eseg->inline_hdr.start));
 		dma_len  -= MLX5E_XDP_MIN_INLINE;
 		dma_addr += MLX5E_XDP_MIN_INLINE;
 		dseg++;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-12-keescook%40chromium.org.
