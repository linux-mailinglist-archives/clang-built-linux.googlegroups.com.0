Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEWP6KEAMGQEFC3YSPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6443EFC4E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:19 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id d12-20020a6b680c000000b005b86e36a1f4sf624417ioc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267858; cv=pass;
        d=google.com; s=arc-20160816;
        b=FpJi0vSlfmHCltPTP9KzE1YIEFtYHQwDwmQ103vJx7J77lusaiQO9i8gABgBZjjfc+
         6c0gBWQVxA0i4JW/w1xbblXvKI2CBPfdnaeldWl2rMWaF1volxDlqPR0u0e7FlW2dqw+
         USwvM7wwTBtPU3Rvr0bp+4clRo4cunw1MKGsfJv//qAHzF85hjGchmFty7XFz5ec0crM
         ng616LgbAhEOiLb2SvykDtEsquSh3u42Zhl4C/OvRWadDoM4WN5veCRrRkaMcP49MZGx
         GWJNsxYJApOztK1PCPcCfKmtTTQEO0ezr6zfyZZ//TV6K1ATttQnlz6wlmW3nQDqmzQz
         l6yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hZc+TKbRyHmunvt5mxg1b1ayHC7zxdiIicWBWbXP5lI=;
        b=I5QycLyVnyMRQ8LYxHHSHgx8S0J/C9R8a+ZXA9sYjw5+jOFFD4AUrXrMrDzvvjnrHh
         zC2P93TQyZFVYnknmZEgUSomHwav+Cv1mw3C4+QEoaFKd8rC8du83uJ1ifnQnTBkHzyh
         uzVF6E03Ii1T2Xh0lyL4bOPIHxIHVa7ZBt5twy2A5e3eLtubmxfazvIl49wp7JY1WbSI
         wO38Yi/WdIKRzyj4mGGsss/UVCVNNPqg1+6EJK2QEMjbru5taM8jKTbuONqE/cskOJ6N
         vs2dBZScHVj9B2Fdhk6nmziiZGRlwhByWz0RsxyIhTNgqTKgc+PZDvp6RuaXzu0lpiUA
         aTVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=T0mB0uwk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hZc+TKbRyHmunvt5mxg1b1ayHC7zxdiIicWBWbXP5lI=;
        b=JcAq9B5UDoAzplDpVB0xM2nFqcVLL6zx9f1L2SlP7iy2HPxMbjvJCiVQyojPwcZ7Ki
         qQaxOZ/9gEzRD1htinqjnzon7OZJ1i/r08kHza7GDAijMuLDiEZrKoo/U5RgTDE4u9BM
         Frg7e71gr90thT3JmSuKi2LlDcf6BXkEaQNVL0P7RBrESk7P5JR8qd4JiltCL8mjW5vJ
         NMrS6+UCXZ5wXirgdOFadLPbyVkHAFdCx6eIGXighUkiMkpFlxcGjhMbHMI8ZIchx16+
         1B437Jf4URnPXcDR+PtJMHlt+QcwUbR19MLCC51b+meFoWZd+9JXNbQ6C0+eMRIIBALC
         yLPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hZc+TKbRyHmunvt5mxg1b1ayHC7zxdiIicWBWbXP5lI=;
        b=ExW7atroJWZBvNWdRFPufB7Ls2Wow4ODBugmD7hGByJQWyRtYSpY+IvLY/JrWxBc/3
         thjVWeccWQYwGR2K78oKfRaRLOm9LR7UzKtV52yIUbBAB8E535ApfBrq3qlH1b2s6zU/
         3tPWVCXcK1Atc2mI0ggFQLg8EwNf6u67Y/F1wgCGt0GqDUF7KajTORyS9qUTlvFFbCK3
         eBVkvbmX4CTvPvc1/NnJU9YVL03s4jnImVAbrEls6AmV/Xx88Cf7PpfiQHZBXu13+Gct
         kExvBlw6U+Z5HURieMZ7ifYmWA54MfuyGHsDfbyPExoth3RxQNuBwSGffD9piSdWECI2
         8mCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309Fb6tOi6NkhUNm/NUEtF6l9FoWxmTfQPQ0UWH4YKL0lB0zQWS
	mZf8fSvtX02vgZlq/e+7W0E=
X-Google-Smtp-Source: ABdhPJzAgeXGEeeE4PazJSSF/hbv0hO1l+EbLtqd6QNGIcRcoqj5dN0Se9knjd54hpIg8WXEgZDYeg==
X-Received: by 2002:a02:cc8e:: with SMTP id s14mr6350266jap.102.1629267858750;
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls181573jag.7.gmail; Tue, 17 Aug
 2021 23:24:18 -0700 (PDT)
X-Received: by 2002:a05:6638:d0a:: with SMTP id q10mr6407082jaj.88.1629267858474;
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267858; cv=none;
        d=google.com; s=arc-20160816;
        b=r/ksXygqsQMaUY/hafjXjYUeyMHcFgdGNCwF2z/OmWqBsf+8xfAFEusV9OL65AqaqP
         IWLS5ZBcKkJNX0rJ0EjyBw8YYdNj0VTRYGhN3hZkUeGmgeGuXGCaa7r/VyJfon6ghfVi
         KMICKudy7bBpKyZWtUz1imnD69Tmk3BTg+U3jg+4AmEhqdddWtih1uXAtvOTMnfa2nlW
         mR6Gk4i1S8SrnrrzeA6PNNqu4Wt2J4ulFxqM6FdvKG7+DE+VVpiQzzLoVSrrPod3LgEK
         UpItYE2Z5xZMRA2ZwpwNpiMsIESBmyqkgwt9oIZT2+kju7tpAJYA4jXAEpuDzVtGJQVm
         FGEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cNmalVG+pbxPr3mreA9zKEEd2H4tBC2vGc39RgbA9Tk=;
        b=NyItZSJCJlHAZrNJvPnDpiZkmLDGWXQ2qdZ5xNmUebE7RQ/ekvVw0mmMGVHw4ptO/+
         7OMiCPq/rIsqLYjaZUM/6eFjAqm5klTr9sdclLOkxFbTzTZDa6oidaOiAed0QHs12wsg
         XhkbNn3FDz9WPJtzrjeqQfSDvXiM9aPBM9i2z+suUgs8W8ub8F40u11FEreTS2JSVbrI
         WP0QmsBfmmLEhFfgl4WyZSrfXbVUTNoUeYdu+dOZoDGb02NhluY9qLCJ7cmf/ypQDYS1
         Zf4NTJmKS7CoSjejg39JBtiNNig4iqUYBLvGOiznJOVwTFYgGKWo7AFQQMzpCs9tnm5a
         M1cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=T0mB0uwk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id j13si218775iow.1.2021.08.17.23.24.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id w68so1097390pfd.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
X-Received: by 2002:aa7:82cf:0:b029:3c4:4daa:fd68 with SMTP id f15-20020aa782cf0000b02903c44daafd68mr7700665pfn.66.1629267858224;
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 64sm4749129pfy.114.2021.08.17.23.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Saeed Mahameed <saeedm@nvidia.com>,
	Leon Romanovsky <leon@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
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
Subject: [PATCH v2 21/63] net/mlx5e: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:51 -0700
Message-Id: <20210818060533.3569517-22-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2287; h=from:subject; bh=H1NJrCbG/+gkFDDOH1HKv+jRsuxCwz9I+sItTuJPxig=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMie0CZ8QknrFWsSjQNv2Z5IJELFExqf7lN7Wwc 5aQQO+qJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIgAKCRCJcvTf3G3AJhJRD/ 96K2w+o05X7hhRITOYKyJKbH37CP3Ty7ALSuqaRioqi5222xg1OlnDlOmTcxm36KPLSYb9gNOPa98l 7az22zZD/h+540iMnPR/nKUQpztke9KGCWfI6q0E264noieiOeBk645rAPlBm4GwcsyT0YYPKqC1ZQ UTpt6I53LSvfaDvqvAqf+r8OlgAEKrvseNyt6qPuA13XUHguBBpovSDddi8OEqv/t5Q2wj7UEMmW9J IV+m0C3UpQKXOeOhTy23oZX7PjawKd6/ah6FLBqp6AKcedGBTDdkEtjHbu8o9trfR1W1JUsvMCcv9S 8dO2gsGyuF0n5SykLaKxqeSKyvE8fjXBmALhef7xIECWwU3oMeXXcDnEKC00an8WKoTI/p3sdBuwGx hjBgHLa6fYkRSNX07ZrUHUpURPOef9SB6ijFamo9WBDRCJqk7AaNFp4cIkmEoupJpZdmr/Cm7s7jzG oQUq+6Tbv7TkwMP3GX9S0UgzY5hbFKCx8+nqIQ8qQxp/nmFHZZ9/B1u/uzYcV0mZ0Z2HD8SsYnTNtT +36VQ5kEs/5D+CCjDnJyxpY0zbiwB11VKD/JrZ8xY1p1Y4YjDHvtOjkykedRvOU0ltxWDBDoGf26q8 mtK38NkfvvezjBrpRzYDrxRYSxWAIcOs6jVAkBvNvKCrsZueeLXchKsyUi4w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=T0mB0uwk;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

Use struct_group() in struct vlan_ethhdr around members h_dest and
h_source, so they can be referenced together. This will allow memcpy()
and sizeof() to more easily reason about sizes, improve readability,
and avoid future warnings about writing beyond the end of h_dest.

"pahole" shows no size nor member offset changes to struct vlan_ethhdr.
"objdump -d" shows no object code changes.

Cc: Saeed Mahameed <saeedm@nvidia.com>
Cc: Leon Romanovsky <leon@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: linux-rdma@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/mellanox/mlx5/core/en_tx.c | 2 +-
 include/linux/if_vlan.h                         | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c
index c63d78eda606..39942a952736 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_tx.c
@@ -207,7 +207,7 @@ static inline void mlx5e_insert_vlan(void *start, struct sk_buff *skb, u16 ihs)
 	int cpy1_sz = 2 * ETH_ALEN;
 	int cpy2_sz = ihs - cpy1_sz;
 
-	memcpy(vhdr, skb->data, cpy1_sz);
+	memcpy(&vhdr->addrs, skb->data, cpy1_sz);
 	vhdr->h_vlan_proto = skb->vlan_proto;
 	vhdr->h_vlan_TCI = cpu_to_be16(skb_vlan_tag_get(skb));
 	memcpy(&vhdr->h_vlan_encapsulated_proto, skb->data + cpy1_sz, cpy2_sz);
diff --git a/include/linux/if_vlan.h b/include/linux/if_vlan.h
index 41a518336673..45aad461aa34 100644
--- a/include/linux/if_vlan.h
+++ b/include/linux/if_vlan.h
@@ -46,8 +46,10 @@ struct vlan_hdr {
  *	@h_vlan_encapsulated_proto: packet type ID or len
  */
 struct vlan_ethhdr {
-	unsigned char	h_dest[ETH_ALEN];
-	unsigned char	h_source[ETH_ALEN];
+	struct_group(addrs,
+		unsigned char	h_dest[ETH_ALEN];
+		unsigned char	h_source[ETH_ALEN];
+	);
 	__be16		h_vlan_proto;
 	__be16		h_vlan_TCI;
 	__be16		h_vlan_encapsulated_proto;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-22-keescook%40chromium.org.
