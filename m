Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQOG6KEAMGQEBLXRAFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE223EFA91
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:54 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id r14-20020ab0660e000000b002abd10d8670sf355573uam.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266753; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y6+Yb5M2+Zsy2RP5cImkjP3hWUFHt5R9QBbrpUSxWo1u1/gfr0+10riFRK8ucY1qg0
         uxvQe5dgmvN1IYE5+d7fFhMPUUM3ZYlCwEn+elVOepiSFQHIMMjSB0SuCsa1Zj1+6n9i
         IiLkCxWnvHFUwEzQkc4Lw5PnlBOXTC2gJhJYixUkgEX1Y/VpvxZ0u8U37ozVOllhsC42
         xY1zls1vNH+I0W40oQjUEhQ12xZvxauRaulKif121qv8D0AqSEmeyEghTEmrMKrEfbKs
         JZlRckL/1OVROuP6XbAaBPAfb3W8Lv45nbnjGryPLj9C5GM92X3YGUSGdFGBNBvYGFQd
         /GkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=blsPHDAj2WtuxXTzVZN0VyHMTPuDiCFMwVxPOtUCvvw=;
        b=SmRvSM71owGkScZ4b08CPqp9Y8op0rZEPgxVEWx/+LAyuFqfEWbtQiCyZxaANpEaSJ
         UJ/jegEcalzCau351i73tvZ7HjQxSFk6Il+g9bQ49zgbCBxZCuEivogJwd7XvdRTeNNu
         1yB2irCwDEqTbFTJmeJ/98WlXVUUjXUyHrN9o2Vp1FGKXV4YbmdTpkUD96fLsfm9sVrq
         D2MfSX7F0VtWKOWbwIvLTSkOV1zOruKlcVeh01snR9eNB94M7pp0jCkrGHkYa5ADF66W
         3x1M93wP187Je6lliaxnGb/3fSGQxSCLN8reb3bQsGVgTN0dhyk1aO1KLQ47VDlKwJnc
         cGRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nM31lfFA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=blsPHDAj2WtuxXTzVZN0VyHMTPuDiCFMwVxPOtUCvvw=;
        b=ffaD0piwDMa8teUQtTz54RHKTCYDjP+nM9lFRn3AxVJVUlrn7ffDA8ORjcBhytaOeK
         I12fgEv9s8PuUG9gE0aswsJqJYYgXwWBKq6IdDcZ8ElY9JrYCcDaBFSMeIiA/WlIZCKn
         xpRjoj4+D1AYGqGFAq3iLGaulq7Ce0r8+rVAGWDrv3no7JZ/2w/kqqPBEzZAFQNnlz38
         MVS2NzT+ORfDgqaARR4P806q+qCSnjXZqPj7DLUMgRz8FKmJ3JZPGIVMUgNX8tRy930x
         KzY3Cmy2LQ8GdficGXKJ0EQBl7tnJhSf8xskBW6r1qP6Q2XEhiH9QlukKTF7TjsajnEf
         tg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=blsPHDAj2WtuxXTzVZN0VyHMTPuDiCFMwVxPOtUCvvw=;
        b=ZMNXQWdkZ9HQ9cgY8g2kUx26mX0mlEI04etJysyWbDhl0UyYCuHabZBQc38cogzn8m
         zZimYHPjUtRNZ4yCLe8OIP4OoZUDAbJ6seE8fyWUp05AjHg4Nu6MU1v5AMY2O0jxMHXh
         6ojxnjgvlpSkskcY9rORLfhL/nwVDDyLyVTNX3v3gAur2q80+AbqS9cLr2dhxEEZWHFY
         YQNQijbyys0VX4+D5SNfPzHhmYWbTMD6vwoF3t2MLuS8IrbrxhgAuLQBCUhe97T1hJ42
         8BKWScPuhq9CDj6fNRClbDYwChm/IBE4Fu6SK6wNmkm3fXyLfKv8PFR95C/IwxlSc0C/
         /89Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ULlvAyiQvPuuDd6dC838nBIrFzty1UYYX0yyXIxsz5VJ/ehp8
	ZG20rWoRGAi7SdNiI6MRWx4=
X-Google-Smtp-Source: ABdhPJxKhzy8T9SV+rYcOVTRi5n2G0xjgjkTC25eVraQNuqpyZLrv4Iz7fzxtpX7MFvIxu8YL5gXVg==
X-Received: by 2002:a67:7284:: with SMTP id n126mr6128685vsc.38.1629266753256;
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d18e:: with SMTP id w14ls160343vsi.7.gmail; Tue, 17 Aug
 2021 23:05:52 -0700 (PDT)
X-Received: by 2002:a67:ee02:: with SMTP id f2mr6110255vsp.42.1629266752697;
        Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266752; cv=none;
        d=google.com; s=arc-20160816;
        b=ma7RQDKC356jVx75gjPcs1SvLOueTS0dDdUU91rEBlO9yR6R4iUkxl038x6CDGakCH
         G5aIdDzzg9OzouS3wpqp5S0CWF3G5WP6psEo47mAQ+npO2cfv/5SWnXdnQmqCnT6P+YZ
         SFikLAyiJc67bcMpc0w6XRleoG9rp0mfkACxwsvKj1x7c/G0JfgP9FML3Lf7UBa1/8RG
         Ytqll4R7dVWc8wyWIMLl6FsDwVfI9TbDkuVCqqhBJJzILqoWwMrRPs7u4y77il9pDDAy
         gY7BBMNhjBaaCAtnwlRZK6P9uWGgIAOz/pr6AE4le+Kg6p+pmQuihxYj/YGGTIZj/UFU
         FC+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LmJ99teUGdinNbfoKjiCNsrT2KdowhAH1C31uHkGRNA=;
        b=ymyWkc7kY5UAnkgOVLTUjGag9yLn//AiGHXLNsyJNcZPbWa9REuTobkAwp2nSKMfpO
         nm1/5lfYChzPqYHUDYlFaUCE0IHQn6Qo1mDfQkYU1E4ZBD+RWgTAo2mkHgQ3BGVY+60v
         OPVvF4bTRutw9D4ABFrtCj8qfoE0SrvVfBrbg17w+KJUfy+Jqj/hM2Ot18a2tVow7h+A
         /00HtIHjJQTbShPyIfSOg6JZOTNjB0zrhaqOVFe0sAkr7MOuWj3EUWaeU43fpia/52r8
         503JaHt06Ty0VRHM7AE5iLIBQKlZUrrD2/xRV/Bw4sdrv+zZdFy0W5DLiMHa3ZFa1JsI
         7pNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nM31lfFA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id z25si333616uae.0.2021.08.17.23.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id n12so1146231plf.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:52 -0700 (PDT)
X-Received: by 2002:a17:902:7b83:b029:12c:2758:1d2d with SMTP id w3-20020a1709027b83b029012c27581d2dmr5875382pll.80.1629266751880;
        Tue, 17 Aug 2021 23:05:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y7sm4717170pfp.102.2021.08.17.23.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:51 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Saeed Mahameed <saeedm@nvidia.com>,
	Leon Romanovsky <leon@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	bpf@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 02/63] net/mlx5e: Avoid field-overflowing memcpy()
Date: Tue, 17 Aug 2021 23:04:32 -0700
Message-Id: <20210818060533.3569517-3-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5945; h=from:subject; bh=aAhXgOvjd8fFl6HHAOH2dNe1RpxfNiJeVAevXZn1G1s=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMes55xLZsomlfyqNbHN963vbWsu6lq/7sGdDVv bsZ6eIyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHgAKCRCJcvTf3G3AJo6wD/ 9HEoTCQwJMnchXSExxpAugOa3YNMfNCtVVAxBYHvIWOemVW6gZ52KZ44NXt1hlyNky/uGCNGoJuopc JfQ8ClCOcrszDva14x4eDQZ9+KLwHWG9OaszUE83jFKhUfjuQ+sxeI6SxCBY74xBklApWgElkLOxfO 5EPS2Yi8kE85WxMqVEZlH6TZaxefdW3GANZEDH2w1lzj2bQgkpLg/VuTRPPnFj2F9dgZrRPgd04FZE yCShiKYs8Rii3ywLy3heZ5N7WjPIR7h2+D2gLcLgpb/SqpL+foxb0MrIrMlNw62Ovlzr+uUAzTNz6j gIYPvlKL05xZL2/YezlcTEApkB0nSeeZfShLOppBwxAf6Ipn5nVUnLfE2/ffn1WKeC9KhP3C9eEzeh sEE1YOz53a2RRLRUhtUVg88fCBtoOW1jvE87nMQq7Ym8GoF93q2V8ZYApl21Qp6oImjTU+ea9103Gg b0PngB8M2C9QtvT41T73F4XyVE5Trm8EghDfrx7myaE1x+YWCdwfizhG9314y8f5+miPuYaSO/3QHU M/e4LSbUv862bxYjUHhUnaO+OATI+TbGHqX73Yn+5IlG+NTwIc6lK3BmEZ7EzLdA7omPg9jv3grSV8 yvqB6LG7qp48lMGDpxMAeH9Ai7dby8FwWQVL49bwyuRiS9pW3oZhLm+3fh3A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nM31lfFA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635
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

We were doing:

	#define ETH_HLEN  14
	#define VLAN_HLEN  4
	...
	#define MLX5E_XDP_MIN_INLINE (ETH_HLEN + VLAN_HLEN)
	...
        struct mlx5e_tx_wqe      *wqe  = mlx5_wq_cyc_get_wqe(wq, pi);
	...
        struct mlx5_wqe_eth_seg  *eseg = &wqe->eth;
        struct mlx5_wqe_data_seg *dseg = wqe->data;
	...
	memcpy(eseg->inline_hdr.start, xdptxd->data, MLX5E_XDP_MIN_INLINE);

target is wqe->eth.inline_hdr.start (which the compiler sees as being
2 bytes in size), but copying 18, intending to write across start
(really vlan_tci, 2 bytes). The remaining 16 bytes get written into
wqe->data[0], covering byte_count (4 bytes), lkey (4 bytes), and addr
(8 bytes).

struct mlx5e_tx_wqe {
        struct mlx5_wqe_ctrl_seg   ctrl;                 /*     0    16 */
        struct mlx5_wqe_eth_seg    eth;                  /*    16    16 */
        struct mlx5_wqe_data_seg   data[];               /*    32     0 */

        /* size: 32, cachelines: 1, members: 3 */
        /* last cacheline: 32 bytes */
};

struct mlx5_wqe_eth_seg {
        u8                         swp_outer_l4_offset;  /*     0     1 */
        u8                         swp_outer_l3_offset;  /*     1     1 */
        u8                         swp_inner_l4_offset;  /*     2     1 */
        u8                         swp_inner_l3_offset;  /*     3     1 */
        u8                         cs_flags;             /*     4     1 */
        u8                         swp_flags;            /*     5     1 */
        __be16                     mss;                  /*     6     2 */
        __be32                     flow_table_metadata;  /*     8     4 */
        union {
                struct {
                        __be16     sz;                   /*    12     2 */
                        u8         start[2];             /*    14     2 */
                } inline_hdr;                            /*    12     4 */
                struct {
                        __be16     type;                 /*    12     2 */
                        __be16     vlan_tci;             /*    14     2 */
                } insert;                                /*    12     4 */
                __be32             trailer;              /*    12     4 */
        };                                               /*    12     4 */

        /* size: 16, cachelines: 1, members: 9 */
        /* last cacheline: 16 bytes */
};

struct mlx5_wqe_data_seg {
        __be32                     byte_count;           /*     0     4 */
        __be32                     lkey;                 /*     4     4 */
        __be64                     addr;                 /*     8     8 */

        /* size: 16, cachelines: 1, members: 3 */
        /* last cacheline: 16 bytes */
};

So, split the memcpy() so the compiler can reason about the buffer
sizes.

"pahole" shows no size nor member offset changes to struct mlx5e_tx_wqe
nor struct mlx5e_umr_wqe. "objdump -d" shows no meaningful object
code changes (i.e. only source line number induced differences and
optimizations).

Cc: Saeed Mahameed <saeedm@nvidia.com>
Cc: Leon Romanovsky <leon@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Jesper Dangaard Brouer <hawk@kernel.org>
Cc: John Fastabend <john.fastabend@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-rdma@vger.kernel.org
Cc: bpf@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/mellanox/mlx5/core/en.h     | 4 ++--
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c | 4 +++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h b/drivers/net/ethernet/mellanox/mlx5/core/en.h
index 4f6897c1ea8d..8997476c20cc 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
@@ -200,7 +200,7 @@ static inline int mlx5e_get_max_num_channels(struct mlx5_core_dev *mdev)
 struct mlx5e_tx_wqe {
 	struct mlx5_wqe_ctrl_seg ctrl;
 	struct mlx5_wqe_eth_seg  eth;
-	struct mlx5_wqe_data_seg data[0];
+	struct mlx5_wqe_data_seg data[];
 };
 
 struct mlx5e_rx_wqe_ll {
@@ -216,7 +216,7 @@ struct mlx5e_umr_wqe {
 	struct mlx5_wqe_ctrl_seg       ctrl;
 	struct mlx5_wqe_umr_ctrl_seg   uctrl;
 	struct mlx5_mkey_seg           mkc;
-	struct mlx5_mtt                inline_mtts[0];
+	struct mlx5_mtt                inline_mtts[];
 };
 
 extern const char mlx5e_self_tests[][ETH_GSTRING_LEN];
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index 2f0df5cc1a2d..efae2444c26f 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -341,8 +341,10 @@ mlx5e_xmit_xdp_frame(struct mlx5e_xdpsq *sq, struct mlx5e_xmit_data *xdptxd,
 
 	/* copy the inline part if required */
 	if (sq->min_inline_mode != MLX5_INLINE_MODE_NONE) {
-		memcpy(eseg->inline_hdr.start, xdptxd->data, MLX5E_XDP_MIN_INLINE);
+		memcpy(eseg->inline_hdr.start, xdptxd->data, sizeof(eseg->inline_hdr.start));
 		eseg->inline_hdr.sz = cpu_to_be16(MLX5E_XDP_MIN_INLINE);
+		memcpy(dseg, xdptxd->data + sizeof(eseg->inline_hdr.start),
+		       MLX5E_XDP_MIN_INLINE - sizeof(eseg->inline_hdr.start));
 		dma_len  -= MLX5E_XDP_MIN_INLINE;
 		dma_addr += MLX5E_XDP_MIN_INLINE;
 		dseg++;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-3-keescook%40chromium.org.
