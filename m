Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOWK6KEAMGQEEHDPKJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3395D3EFB8E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:20 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 1-20020a630e41000000b002528846c9f2sf821628pgo.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267259; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsqLGopYHdswAekqI4k5JsvZ+9XwKJiLeUBplyRO89ypHLminFr8ZVmv40gRhAAyt2
         bKe9M/neIBiZ3N3hZLCKSbKB+WuY+nSs9y83LeVC3mdCY98Qo4zNLgGtvpLx80RasQan
         RtLgWV8OYEGsCO3J2NVBjjm2nd5PtIrFaWTWjFEs/z1IY24fdMVRXRSRbVTZHJqGzDIK
         iihUxdzeCIzWCrDzmR614azIK6mNFFNLLU1WGn4Eh4azz2bKbrhi/fhkGiAMwekqXkic
         LksAWgBIOwYkf/TdCplg54ECxwdqj5LuUIBkBLnKQvo4VeyZvCUBSRbQGZFP7StSdl9q
         4SJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=T1ntbNJLt9jIdmulcS9T4bBv4I4PbY0cGaGzt7IDqiU=;
        b=BVUwnsdp0/q+UYhMjuJg2ud/AzRfpVOC6+h6zVTb7l1//1Z4tNSzap77pbTMO+LxAw
         I3sN37a2Nc50KD26nvHBOEjvWyeNQqx1ktp/hcMKjRfiIudASrTUmJeESg2VfeHGssv4
         XByqCrPF/f5FfcS2wkRyDeSMH9HOCAeh8OpqXaruxxsKH0OZsgaQPbHb/owqQfkUHDO5
         UpFy7nhq5mzBr2GOj3KcPY6VJgejWpsFBMajH3KvLe/qanKviQyZ6IfpKD19DKpBXrmo
         x5H6a8cCX0fO+pmwzADEHXZT1E6uVKS8Qa4LdvYdB3TMM+asbrh8NWmZIfMrTXLB4bHS
         DykA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GDS8UWoP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T1ntbNJLt9jIdmulcS9T4bBv4I4PbY0cGaGzt7IDqiU=;
        b=c4NdMUCJGh3MitlpZRkrewGxIELyfBvoMvnbQ5vurLWuPOgej+J8lCdD9acJX3G68u
         tvowE2p6Yb8W64EprUskeseOFH4IfewxZ+sUOt4SuSmtBXzEP+oXsMaoC2TJ9kMDf9t6
         dhatNJDWncPGm+/pI7HfhcLL0KSOdHoIKCmuLG5RD/fd9pialUAUrd5mT6WufyFrW4Nq
         MX7/QTkty50Buxmx7aL5SDoDUN/6kvgMQ9tE1ftJnJkK4Vs71UO2Mq3v0fNRGLk9hki3
         pnQ6aHsBhw0fia4BkA9BuJDQXVR/4MOoyvl9kO9rTGO9xEYHceHnYiH1yFiffEERBi7f
         QHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T1ntbNJLt9jIdmulcS9T4bBv4I4PbY0cGaGzt7IDqiU=;
        b=reFSIZrbtEURziTVlGamxzFNKCx+9HdF4HzDmLKpP/epozBwMKAQiDkfEBEobMCSEN
         LqjLOugkHX5gPx3SVCH2MEpjTve7wBIIdb0+ODOqdxwnVU8ZD3cKjpDEAd1hes+HfkuB
         UeNoyJDFiUSC5/oPRzIX9wgrpN7TEQVse1d8kmlwhzDHdWfcluQHEVyl9qW1CEmkF91R
         IKvq7Vbunpi8MjGBI9FpjWPfmzhjrXJtWjGR1+hzdx2wCvQ/yBvF4FPj/l28rxihfjsc
         5V2/huhsknSsdfop+a6U1Q6r64RK9hSBbZqX9FBV9sv9wP1zACz9EzeUXG8KT9LQuQqP
         +fPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dH9rJnLcFmON5/Y6Tq83fL/nwDVITNdwtZ7PMmitAhvWd2/xt
	4I36+e9ibv8WT1fmUFx+3zY=
X-Google-Smtp-Source: ABdhPJy2lq+ZXQkOmCuSLuJfw7a5g5U+CUTqH1C0eHC/XTKkDD+li6TYSuhpWWFCa8EGI+iPe1EUgg==
X-Received: by 2002:a63:790b:: with SMTP id u11mr7210981pgc.71.1629267258896;
        Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2345:: with SMTP id c5ls665113plh.8.gmail; Tue, 17
 Aug 2021 23:14:18 -0700 (PDT)
X-Received: by 2002:a17:90b:f17:: with SMTP id br23mr1134811pjb.60.1629267258363;
        Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267258; cv=none;
        d=google.com; s=arc-20160816;
        b=SXRWnwBbHhn13bsNwtqZpObaYZmCwS00p7iDtoh7H1YoCu2mDY9nmXe4ZOSCMLrqqG
         kITv/BJI/hOndsApM6j5YiphnVPJv8kbQA6bXHccBq0F+AZTU3ebHRESY+BXduiO9WU1
         +DaRqaspw1XDVv5PPZzLkzhuwUyMUU9lzFEsosy7k5dLXLF2IP3VHGEK96Uwg2q20a4I
         E/2/Hn/625wjcijJJqKOfHZAPtWe68RA9+jh51h4k7rj+T8tcpfeTEKICTo0pyvwfZub
         33ePbwna09Ky42W6+eVjU78Qt1Ojm6qioq8qvLUvkm46UNre4adWyUuE4CBZzB942YdS
         lPlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BDT2fv9pfPiv1eAB6s8PWvAAZ1ZckqznJ2ALg+gPyfo=;
        b=lQepRr4Dy6W2AWg44RXuJP8Lx8qRukwqDh0csb/Yeu7GPLaePvAjGdYWRb7RmFQgBU
         uwGFK0fmpLLiHPy4yn9FTufeAHOhsgD3nNL2t3LY0kNv40QafGBLD1t16I4z5xrSl97c
         hEWpwER/4kFMXORoou85PYaNLyihXRiKD8mwJUcbOp8DZvafnhvSOXaVc4Jp1Fy68ddM
         BR5GYslihZI4weDUWJmeVxtlJcWH3yWZmWoAJAcyabRLa0/MZf1LyiqxFSd+YVDKAlTn
         i9ZyjRj8yzkTFV3qA5UOLX9StzwvRMVPMHFuonLZx4QwodXjeeK4xBqBN4t0++hYcJy4
         wp6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GDS8UWoP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id r14si385101pgv.3.2021.08.17.23.14.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id j1so1934082pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
X-Received: by 2002:a17:902:b692:b0:12d:8cb5:c7cc with SMTP id c18-20020a170902b69200b0012d8cb5c7ccmr5923307pls.60.1629267258164;
        Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g3sm4520535pfi.197.2021.08.17.23.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
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
Subject: [PATCH v2 16/63] cxgb4: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:46 -0700
Message-Id: <20210818060533.3569517-17-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4073; h=from:subject; bh=eOsIaAlKZ+jaUAE4737EiEbAobPk2H/ORfpZU/wxuAs=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMh8INFtUpImPaCu5uPFf3XUpelM+TUfZrriwlj qbNTtbmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIQAKCRCJcvTf3G3AJpHMD/ 9ulpQtJQ8WW2UDyVKDWl0ixLhGGZti9h5dytD5AiXPr910zjFt/C7q/91dxBO9pH2eT6Di3Xq9dh+K +RNg7W/kd/ipZzl/CgcXlerviASuRTfnjGWeCFx98isL1s9+s1OP3BbwPrxJwOS/0obiqD58a9DBA9 1KNE/fUqCX93AeYK/npFyvpeoIbYK4zEeFaPIMtWYrQqXSi83b6SQ+HTFlJqrmq/PCCeZWE2BY5aas AkMcF7UTZGEeXmGPC/XROIZpjP+tj6OfWF0v5SjhJm91llU9t4FbJtTRrOyRrl522kf4FO7j4y+nNG FGC9DTy0LoJB96Eb2ZFdopzkjQSo/yBOZOBOrUtcwGvmOy374FZvePpkHG3y4P7itt2REdLBTbzDKJ UM5aPWsQeMC4ennTEvnuT5IFcJ9hq3vRCaDwH8e1WjFwsJpgNGSE0/tGMsjb9tnUAWksAsFbtrLz2y peiuYrMYM+5kNm+48kjEXMM//i4A3/jQID4fnMElCtn1ZX7QNONXIZXpWypNCC91e/sNeSUSWM8zNy SDJ46sQNh3i+Q/we8kk+7K1AjP0d2gG9/zLC0W2sTQvJjnC5mYQWZ3dEcC3+79lQHdWNf3UJv6SN1G oaAt98DBivV7/3Vi4TBGj6gJ86eFRzGhXg5jqSQnFP3tmopC7MhBXCxXiJGQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GDS8UWoP;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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

Use struct_group() in struct fw_eth_tx_pkt_vm_wr around members ethmacdst,
ethmacsrc, ethtype, and vlantci, so they can be referenced together. This
will allow memcpy() and sizeof() to more easily reason about sizes,
improve readability, and avoid future warnings about writing beyond the
end of ethmacdst.

"pahole" shows no size nor member offset changes to struct
fw_eth_tx_pkt_vm_wr. "objdump -d" shows no object code changes.

Cc: Raju Rangoju <rajur@chelsio.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/chelsio/cxgb4/sge.c      |  8 +++++---
 drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h | 10 ++++++----
 drivers/net/ethernet/chelsio/cxgb4vf/sge.c    |  7 ++-----
 3 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/sge.c b/drivers/net/ethernet/chelsio/cxgb4/sge.c
index 6a099cb34b12..9080b2c5ffe8 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/sge.c
@@ -1842,8 +1842,10 @@ static netdev_tx_t cxgb4_vf_eth_xmit(struct sk_buff *skb,
 	 * (including the VLAN tag) into the header so we reject anything
 	 * smaller than that ...
 	 */
-	fw_hdr_copy_len = sizeof(wr->ethmacdst) + sizeof(wr->ethmacsrc) +
-			  sizeof(wr->ethtype) + sizeof(wr->vlantci);
+	BUILD_BUG_ON(sizeof(wr->firmware) !=
+		     (sizeof(wr->ethmacdst) + sizeof(wr->ethmacsrc) +
+		      sizeof(wr->ethtype) + sizeof(wr->vlantci)));
+	fw_hdr_copy_len = sizeof(wr->firmware);
 	ret = cxgb4_validate_skb(skb, dev, fw_hdr_copy_len);
 	if (ret)
 		goto out_free;
@@ -1924,7 +1926,7 @@ static netdev_tx_t cxgb4_vf_eth_xmit(struct sk_buff *skb,
 	wr->equiq_to_len16 = cpu_to_be32(wr_mid);
 	wr->r3[0] = cpu_to_be32(0);
 	wr->r3[1] = cpu_to_be32(0);
-	skb_copy_from_linear_data(skb, (void *)wr->ethmacdst, fw_hdr_copy_len);
+	skb_copy_from_linear_data(skb, &wr->firmware, fw_hdr_copy_len);
 	end = (u64 *)wr + flits;
 
 	/* If this is a Large Send Offload packet we'll put in an LSO CPL
diff --git a/drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h b/drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h
index 0a326c054707..2419459a0b85 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h
+++ b/drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h
@@ -794,10 +794,12 @@ struct fw_eth_tx_pkt_vm_wr {
 	__be32 op_immdlen;
 	__be32 equiq_to_len16;
 	__be32 r3[2];
-	u8 ethmacdst[6];
-	u8 ethmacsrc[6];
-	__be16 ethtype;
-	__be16 vlantci;
+	struct_group(firmware,
+		u8 ethmacdst[ETH_ALEN];
+		u8 ethmacsrc[ETH_ALEN];
+		__be16 ethtype;
+		__be16 vlantci;
+	);
 };
 
 #define FW_CMD_MAX_TIMEOUT 10000
diff --git a/drivers/net/ethernet/chelsio/cxgb4vf/sge.c b/drivers/net/ethernet/chelsio/cxgb4vf/sge.c
index 7bc80eeb2c21..671ca93e64ab 100644
--- a/drivers/net/ethernet/chelsio/cxgb4vf/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb4vf/sge.c
@@ -1167,10 +1167,7 @@ netdev_tx_t t4vf_eth_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct cpl_tx_pkt_core *cpl;
 	const struct skb_shared_info *ssi;
 	dma_addr_t addr[MAX_SKB_FRAGS + 1];
-	const size_t fw_hdr_copy_len = (sizeof(wr->ethmacdst) +
-					sizeof(wr->ethmacsrc) +
-					sizeof(wr->ethtype) +
-					sizeof(wr->vlantci));
+	const size_t fw_hdr_copy_len = sizeof(wr->firmware);
 
 	/*
 	 * The chip minimum packet length is 10 octets but the firmware
@@ -1267,7 +1264,7 @@ netdev_tx_t t4vf_eth_xmit(struct sk_buff *skb, struct net_device *dev)
 	wr->equiq_to_len16 = cpu_to_be32(wr_mid);
 	wr->r3[0] = cpu_to_be32(0);
 	wr->r3[1] = cpu_to_be32(0);
-	skb_copy_from_linear_data(skb, (void *)wr->ethmacdst, fw_hdr_copy_len);
+	skb_copy_from_linear_data(skb, &wr->firmware, fw_hdr_copy_len);
 	end = (u64 *)wr + flits;
 
 	/*
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-17-keescook%40chromium.org.
