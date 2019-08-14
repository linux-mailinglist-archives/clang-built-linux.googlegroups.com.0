Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOX32DVAKGQESIR7O6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5362B8D894
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 18:58:34 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id k10sf10917993wru.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 09:58:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565801914; cv=pass;
        d=google.com; s=arc-20160816;
        b=RAswVHDTsDOIe89ji7jjgd1/W5M4VGYN06omUhn6WAZAK3+IVlA6xy2d9FAPZb8DI0
         QNJfvMWZOTd97hIBmFHS3PVtDfPrVfbSVI0Ik8HuUPtGrW2UGnOZ3IQsjrJBqyCQiyOc
         xi/IONK4aqwCDmMa5t6+cl3VGVe7NyLYF2pKJqybCAk1Rh/4r7aWV+QMKR04gNeTAvCU
         hubpa3nLcMs+HyPu9AMDo88MmrvBA6Ndq809jRZ9lEfEKzSj5xMmJ/Kg6+nBRSI5/PXv
         XTHWYh1Jpq0rtcOY+y7Xy5FuS77S53NEOkZe1RO1auNdKAu8n2TMNgD70P/dzwORSNE9
         +fHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=nKRBHUm4NvSxuUKdY26r5xt2SKjUt32k2drOijTVSnY=;
        b=x28MvFu/5WxqzM5nN+G4K8/tpY9uT/2poSm10hTYrIoo19MB9znTRXaq0uLnKJmeEg
         dL+x9DsYevQJeI3ySh+iVipnEfyvZH56HWEv+7Sp+gMfVoBIH/QQH/mqSivqy0mdxS/c
         HgRhv+fqSIQkZNzf9O/XBKj2F+ktdGFPkC1enluWfFaOpSX21Nsqj3tmFK0ulAhVDNKc
         TiQjUmZbLxocSP+RBcgTyzJgAu1DuwotFFgNgGGvo1o8mqRYN2a8DfW26fdRcWu8W3bT
         WzK1fCRslRU/XkPRjMSz9G7cdJv64YKfWj1COgs8odsw1VHN0qqMDmHl97DmZbFIMsgt
         uZlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pcczEiMY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nKRBHUm4NvSxuUKdY26r5xt2SKjUt32k2drOijTVSnY=;
        b=AiOtjLoZFqY3yy7ta7k7w25KktoFWj5UN5Zym4288yZAwY34WWfwjHdTLZ1AJSW9vH
         WNd15yL/kw8ZFCpUJJposEbAhJVqKZ1FrXpENRJf4leIQc7vgH4BhJhBKqDQAC2fsS/z
         ugmSCEdCU66nb7mZT4Q3zW7eSDT0ltFPZ7JBa7UECJb5C7WKC+RdwlkRHGSx1HBTW0+B
         xzj/oGRK+AD4u9dKUQBVtTKRvrWB3gxppEp6alKRtL+z1xMVDvfvWjGljFDZHPzjST4K
         adsUd9TGbRYYwOIqT0v7RN/xlcyc0jVY7wkeoPnnZbXb2/f0E+KOr6OAyH/HlFgHZe48
         Aw4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nKRBHUm4NvSxuUKdY26r5xt2SKjUt32k2drOijTVSnY=;
        b=kXY/ZCF/6cxO9/jMlPuqhWZvyYcZ873lt7yMl04hjeF6udIcU0bxyrRfJ/Z2y2++7I
         sGinWCxebfA1zGKtIoDISKjrmvyTvj3tI++YxIQwL5RSbk7+6lgs73pEokLMdaK42FBP
         3AOO6v4pR9QQIW5YPZKtQyKrVRSvo3tklFuSaEUYXTJu/hzNb+uLnM45DIvR8zFPEHy5
         a6qKomDsuFeYAik7REyLVSIug943/WqDyC1cigrCVAhCfz0x9k56aq93K1R0LyRiqkWJ
         ZQIyqd+C7eTO3fDOFqw9GC12VuI647520Z6XXl6fYhxkEojgPUMtayTLt+dBiXjQIP+W
         4cwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nKRBHUm4NvSxuUKdY26r5xt2SKjUt32k2drOijTVSnY=;
        b=jd5r8dP8PHKxjjCF5G7GKk63myZoB25VL94zrZUi61WzU4SV7ttdHg5xYBFBFv8adj
         q01jj+y/Bp5NdP2Nh8B8f4cNq1Wt4NFsTNBpfNG0HGlt0qV5pbSowdbLo4NQfMLoUudp
         htXpglv4XmTBss9Hey3TrVCIIJJFy6DwZMcgba42iUZEpDvFx5eBB4hj870Lroh2ST18
         JRu6WKu7wXFkF5WTMuvYqoasaopnq0WZUXQR4vwVee8WbBGcVVjLP9Yb2W0LyinutYmA
         7YM0ICpLisffWua1e2s0h6f8xeAY3h6b7BOj8uIC21IaWQ5DjuU/8628Xadx+zew4Hqy
         3gkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWcSeu7xyT2fHZD+WmCAs7XCVbYDJqqRCmMSZZxwR1/XAVhGUn7
	QP5azZmfKnS0O5+ZfliFUgw=
X-Google-Smtp-Source: APXvYqyZ2UOkTrbbNwOfi8rCKr3p3bFxwTPdzkf/HBAs5ss/DlkrsmiTz99aH0vWBRQrnVjYFppAvw==
X-Received: by 2002:a1c:238d:: with SMTP id j135mr104065wmj.39.1565801914092;
        Wed, 14 Aug 2019 09:58:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44b:: with SMTP id l11ls1005133wmi.0.canary-gmail; Wed,
 14 Aug 2019 09:58:33 -0700 (PDT)
X-Received: by 2002:a1c:1a87:: with SMTP id a129mr97085wma.21.1565801913695;
        Wed, 14 Aug 2019 09:58:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565801913; cv=none;
        d=google.com; s=arc-20160816;
        b=s5T8ayQZd1AScwwdbXGZdW2d1BMB6LPEvwhvzKgdHP47eTNCWPqNterNov6gfUMmtT
         wR0NDcVlfCuoRA7K1krr4A+gcR0ZhWn4icT64bBQkab9vT8U7Hxbod/yVRxAar8yV4O2
         lNJ+iRGN6atuJnYkj3OI7JI//eBf13jpG8Tx0QUEsKQcptVCvm4mH3Jb4cDCz+98DLLq
         f7CQ2rtz1PkpWl64f5KOZ2OwHl+gPYuypEt7ng9xMLsV2tkkqH+lU9gMfFo59meS+fxW
         inofFuWXDJYcfgh1nwQn/TcXNrJTpt6/C+5AQuurD88uJU4aofFkH6uCeTfCtp8kFuLc
         eDOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=uMo+P0KZM2egL/LGoSsPpOMP32NasvU+xJ/Ms0bauJU=;
        b=hp6+vERQ8mMO+Dghs9iVEAb81BX4s5Xl7ckCEVLYIMxlcTz5CzSkNo3jB7jyddBgGM
         lpoqMpG+JvETJT395qeMpA8FGm4Uz9H5Sj9B6dr/EUgoMZzGEbMgQ3Q0yvLUTXajP67p
         kwuB3vZAbRrWRI5P42NY24rzwdhLo9ldTkmEsFm5qDayN1vF5FXsaF1lKjW2JJ6cGT7E
         l9o5x88uEVamBikCWYgdIihNKN5eAEw+X2cSydwVT995JtmVkYWeMDC8ZsEiaYFo7Iq7
         /59OBEyToGGvJB83T4H8OpsJDZcAsnGRW4+e0mfZ46WwBoX4sVbf9bOIs/PENqPv/Wbq
         xWJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pcczEiMY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id f13si260205wmc.3.2019.08.14.09.58.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 09:58:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id r3so18046827wrt.3
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 09:58:33 -0700 (PDT)
X-Received: by 2002:adf:dfc4:: with SMTP id q4mr776013wrn.54.1565801912364;
        Wed, 14 Aug 2019 09:58:32 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id g12sm532151wrv.9.2019.08.14.09.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 09:58:31 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>
Cc: "David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH] netfilter: nft_bitwise: Adjust parentheses to fix memcmp size argument
Date: Wed, 14 Aug 2019 09:58:09 -0700
Message-Id: <20190814165809.46421-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pcczEiMY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

clang warns:

net/netfilter/nft_bitwise.c:138:50: error: size argument in 'memcmp'
call is a comparison [-Werror,-Wmemsize-comparison]
        if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
                                      ~~~~~~~~~~~~~~~~~~^~
net/netfilter/nft_bitwise.c:138:6: note: did you mean to compare the
result of 'memcmp' instead?
        if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
            ^
                                                       )
net/netfilter/nft_bitwise.c:138:32: note: explicitly cast the argument
to size_t to silence this warning
        if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
                                      ^
                                      (size_t)(
1 error generated.

Adjust the parentheses so that the result of the sizeof is used for the
size argument in memcmp, rather than the result of the comparison (which
would always be true because sizeof is a non-zero number).

Fixes: bd8699e9e292 ("netfilter: nft_bitwise: add offload support")
Link: https://github.com/ClangBuiltLinux/linux/issues/638
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 net/netfilter/nft_bitwise.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/netfilter/nft_bitwise.c b/net/netfilter/nft_bitwise.c
index 1f04ed5c518c..974300178fa9 100644
--- a/net/netfilter/nft_bitwise.c
+++ b/net/netfilter/nft_bitwise.c
@@ -135,8 +135,8 @@ static int nft_bitwise_offload(struct nft_offload_ctx *ctx,
 {
 	const struct nft_bitwise *priv = nft_expr_priv(expr);
 
-	if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
-	    priv->sreg != priv->dreg))
+	if (memcmp(&priv->xor, &zero, sizeof(priv->xor)) ||
+	    priv->sreg != priv->dreg)
 		return -EOPNOTSUPP;
 
 	memcpy(&ctx->regs[priv->dreg].mask, &priv->mask, sizeof(priv->mask));
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190814165809.46421-1-natechancellor%40gmail.com.
