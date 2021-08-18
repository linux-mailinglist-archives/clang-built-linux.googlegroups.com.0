Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBR6G6KEAMGQE2YEZXVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D0E3EFA9C
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:00 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id v21-20020a05620a0a9500b003d5c1e2f277sf173649qkg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266759; cv=pass;
        d=google.com; s=arc-20160816;
        b=y6CIZZSr3LlpTVOBevPUINTNJknvVZHD21iqRXT5l8+gBUL+BVY3aBmRCBboVmdWAr
         RExc0KySPGT0EwHRdiHyYqUELZoUxseTa/TTLhAMbCAUD8COr+tVIsGo2Xi/CexKbCyQ
         SdaqIJTIvw/EjuRTmSqsNo4uwJAbLGmWRtAtLv6LJQAHs5aGLeLMBxv9kzamTH4CXxdY
         AhdaJk3C28HNwqfD92PZbvJ1bjagxqrL4j9VMGdgAGfj6BZXlpzQSZpkKw1rtj1dqQAE
         FPHfymQ3Paz18OvPJA6B5JnUIIwbaPABa/iHv6BV8RTrJl5IJ9NYUo+JTU3Jmaquc944
         i1KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ny/MTAcJSJ4GnOEgRheagCdSh9KapLkP45XGimvhbhM=;
        b=bOhWdpp/pKescvL8Y3dOLomKy1rVgMDzuDVqUlfHaOqGfx0XmkKWUuJCHQ0bPKY/f7
         FdxtWiPWhcQHABsC2ydHv+T5aLkVhMVYzwpKYj238fIPU1uTXBbqdM1P0bp6unV540Yq
         eflW4neWNcoX4kdnaKbwzWAm5PSBk9RkzLXGbqszrJjy3JkMREo/5NlwV3/UoxNqscV3
         o/6erQ5BVeoAhy+eR3dGW0Mo7H23aXW9XOVh29aC5jB7FVvyN38tDcYc9D5MCC9gkKfw
         UGIHNUHtcTN4TB6nmWC1+fnHYdNh3uoGu1DmxDt/w3HFtT+vxVaTho6AW9AKYRKJ8w8O
         3MuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WlAKi22A;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ny/MTAcJSJ4GnOEgRheagCdSh9KapLkP45XGimvhbhM=;
        b=R/lqHIpHu7k0iBFsdmLoLBaUM//OU5MMEQ6KIbRc0hwma2RrKqH+yPvy40E47dtyC0
         8DkKurVLIV1HLODrTpxPI+IOYjPe9G/BPDIybYosRK3HIy1uWEJV4AS5WP5PP+lKL8L+
         xXBIm2pnltt1WvyfS7AlVeBVZ3ZiiCWJyob8TMmEMPGy2kirK2PlZbu7gsphR1qtPi9b
         CZyBhk8zMFnCJEw6jd2D5tpyC5K+jygQ6X6AgCBJIr+/PW5p8QW6gnaOK6Yi9yl7o8MD
         zgXi22n9MkMV60KR+9DTAsEzow2Rh5J6e4q4Je98FrilySqTlhzf07uHgl5mZaRyvyQt
         LnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ny/MTAcJSJ4GnOEgRheagCdSh9KapLkP45XGimvhbhM=;
        b=rGLy+sl2RB3MM/dNms2roUdLKHTCaJn/7ciqu0nvSgz00fevffaGUpLttAnKlGs6Pc
         8Xr0yzK3nAVADc3DN0rtnN7O3rXTsXFEq0Mu8tAg5+KKOblvEBGljQQfSMiyodtOqVD8
         qia30RjGY0mfOXyIp3aQC9qCOHIBcThwx93+QR/uMywvtbeyHdYGwi+RHOKLQd4rV8Up
         SFQZF0Fcgn8e8fyVMPTLiKtNT+9MEXHIrVBbXPqtrHy+OtEbCMc1BjtBtRqwf7gqJiaW
         s12yannfXeMUkHh+g8ATvAuh0DXxPWjgr8Qz/DmMuoBVfhEpfuziPCGAQYi34BAlkrJg
         IFcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532m7I+Y63AFehuya0e/xa64Ipj0hYib6T5eTTxw8lqxjsAoPwdy
	CZWyD10k0TtZonHBUtuZA+M=
X-Google-Smtp-Source: ABdhPJz0Jxr7Tw0eb/XiBkBmOdfqWindKZBhuaLW+fy14fBKjEmAGtiWV+nY5Hb2RI/b/w6aX3ACAA==
X-Received: by 2002:a37:a905:: with SMTP id s5mr7681037qke.63.1629266759268;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4401:: with SMTP id v1ls744430qkp.11.gmail; Tue, 17
 Aug 2021 23:05:58 -0700 (PDT)
X-Received: by 2002:a37:bc8:: with SMTP id 191mr8067289qkl.25.1629266758897;
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266758; cv=none;
        d=google.com; s=arc-20160816;
        b=BSWzdmV7EUtkvtnYtdvXObxWPYi33BWwqyl1DlmIkTYRPFX4LsrIWHG6CwyF1xrV2Q
         lPZWGhuxc3IwQcFbRmVNNWcj/3uKIsCm/drZsZEmxtod/SjrZ/1qvdnJtb5ndUtVX2YV
         AtYnRC3ZKFsiDuah4KLjThU+oq1PtcFYPjbgjozWNoysRip9YIHDxuzO1LE52/okev0F
         EHUoVQrvQuWhCS4JNBMh4FCDTRjRCDQQFE3Ic13lCc1wAW4REDsLI4/vR2Flr4TK/C4V
         /XzuKAb4qTcwLb7Qzm0iMNl7prjVUYXmpaFD2MvNLfUqNdcGusaqom3r5ahe81sjfUem
         RLzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qoEKEQz6V+86Or8qeKX5Yf4kWfMbF2QL0Db0kr0lz4g=;
        b=LDsKezIo6CKPC7wOLpjfmMGb/p0MuHMjsuVOhPcGSFg+PUJsfZmGMrMoCXdPsTuZYl
         XEzjH43itPA4Xjcxs4E6Rj9PS0joPn4KafkYNOspIbns9QjyKo8/Xd4iGLZ5v7hCNIxw
         nxqQ18jTRqGn9ZNikegVx0aQDIOvUt4JiuooAOBIAsRF6NgSBgOFYEBImcLKQfIx3l3R
         DTQxx4RiVjiuXQfrdxGAm15BGQaLFUwrnoLPcD70SUKmdq32Q2PxVSdplqBMEQD/I4pP
         zi0n6ma8rJ1yRi8s+Na7f4TMsF6eV2sXmUgWy4d6GS1lVBU3TakMp1tJB10z8Jh7Td8U
         Lrpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WlAKi22A;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id f13si206357qko.2.2021.08.17.23.05.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id u1so1163276plr.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
X-Received: by 2002:a17:902:a986:b029:12d:21a9:74e5 with SMTP id bh6-20020a170902a986b029012d21a974e5mr5948924plb.1.1629266758174;
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t20sm2997336pgb.16.2021.08.17.23.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Raju Rangoju <rajur@chelsio.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org,
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
Subject: [PATCH v2 14/63] cxgb3: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:44 -0700
Message-Id: <20210818060533.3569517-15-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1772; h=from:subject; bh=dC6mcEspFz77gHbxWbBozA/2WMcBANzLR6HyJHBb8Uk=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMgVl8joI0ywpJ0LBjKJdVvCciANpNIOWTCAd0k tQdZJNSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIAAKCRCJcvTf3G3AJpJlD/ 94VIp465N4ZikuyhCqr9oOxy3hfC8wSJm8aVEwloaG01XD1LFCR8s27vmn7TaR3Onvi0mShPzxfZVp z/0QHutcgzRmdKNmqUJplk8jCLV/Ka51qcE6BTRvOMGquGDo2ct0ChYwMZDk1LMPNJ2jm64OPw5nKY y0crYHeld2bi9RXWQ+Ukx77u16N/RWqpwUyRVbAqD1S4Bdan5KxpbN5Xq0t50nCnvKAyIzHv9Nk/+s bLOdz5lavXExfcEWBkCycCMFlNEl2riJKH5C9yoaPdGxylxjbWhFDsGBeTnUOVoiCNnlTV9RdcJl3R s029/Oh4nOA1H+Vg7mE0DW/vIHISxFXQ702NKF0D8XG5CuW1PTI6qbzGffXYHTDzApNzS7NmjkFTJs qvjyLJeTlYxFgqXgwtjvR2JZMsu/QY2tSZGxcZ2t2Vot8PoU19q6BtLBv2htxt/A1VgnpntQz8w3T9 2g3JsgEdrrRmIRG0jtyJgCi968GluQnrByGPGL0PLPvgKluk4p/jLJDYvjZg6GaoB0zLXOy3sXtYYt nnmde30+gam1BpjliHZbYIEqoSqGNVd0iwK8Deo4DkRqqFVT7CfbSDCPFub2TYNvLMWHfrp/zvIIXS uVJup0qetCqvbanZgkYM4YYEZmZ41k/RQ1gFaZ/uMI2ZTumZZrqJt1PlHysQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WlAKi22A;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e
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

Use struct_group() in struct rss_hdr around members imm_data and intr_gen,
so they can be referenced together. This will allow memcpy() and sizeof()
to more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of imm_data.

"pahole" shows no size nor member offset changes to struct rss_hdr.
"objdump -d" shows no object code changes.

Cc: Raju Rangoju <rajur@chelsio.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/chelsio/cxgb3/sge.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb3/sge.c b/drivers/net/ethernet/chelsio/cxgb3/sge.c
index cb5c79c43bc9..1ab1bd86a3a6 100644
--- a/drivers/net/ethernet/chelsio/cxgb3/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb3/sge.c
@@ -126,8 +126,10 @@ struct rsp_desc {		/* response queue descriptor */
 	struct rss_header rss_hdr;
 	__be32 flags;
 	__be32 len_cq;
-	u8 imm_data[47];
-	u8 intr_gen;
+	struct_group(immediate,
+		u8 imm_data[47];
+		u8 intr_gen;
+	);
 };
 
 /*
@@ -929,7 +931,8 @@ static inline struct sk_buff *get_imm_packet(const struct rsp_desc *resp)
 
 	if (skb) {
 		__skb_put(skb, IMMED_PKT_SIZE);
-		skb_copy_to_linear_data(skb, resp->imm_data, IMMED_PKT_SIZE);
+		BUILD_BUG_ON(IMMED_PKT_SIZE != sizeof(resp->immediate));
+		skb_copy_to_linear_data(skb, &resp->immediate, IMMED_PKT_SIZE);
 	}
 	return skb;
 }
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-15-keescook%40chromium.org.
