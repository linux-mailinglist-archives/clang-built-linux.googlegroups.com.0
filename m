Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4NSYPVAKGQE4ECSAAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EBB895B6
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 05:13:53 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id v11sf7008207wrg.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 20:13:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565579633; cv=pass;
        d=google.com; s=arc-20160816;
        b=wL2jbuZtYePj6UpI1GyLLCFJbDeCKJMsP3r0p772V4BDDsNYs4Z07qunRei4GpHlSN
         DyIc2DblMwFrn8OusrO63iZ2FBsFCgNRgggdmZxFYRtBVo8o7YMihiAWJaa7Ewdc8zPs
         3zgLl9Wdzuw19dLsMAsqgcDikVKTSVNf6Bp2l4rOQGYLsG2ddaRolC1KyFPYA3gFBrAM
         2fp7QPcqaYwCNX5Qp1zUSp8wgoxTsonR0NpBWXfUdaQy6Kphisam5TdWlBcB/9Y69O5U
         pgLwPUyNI4ErxfypYESB4oF3FGkoR0O+uFGcNvnWAILlHJ9rD2Ke3dQpAowLmTPAyJFK
         2/Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Urhbha3LPa2X1jUx7V4nOcszm3CzF1tQpSPf0X5jwAQ=;
        b=tMVQNYqqCcRFWy76jV5AQwR7waxlJ1y3ajS1o2ZDIhBFlgSH0Lm77VVWU9sKU3Q3dO
         J74tzT7R2xcB0iCiMmBSA+7+SOqppXeBICBTCnsIMJaDaqR6soPfOeSYI4hsymXmPs0N
         CB6dDbqf5CmqhXIvSuH8OE6FoG54EvjO7hW/NGNXLar7vbukN8NeHb504KEu9OXvk+9c
         LwT/YyJ+6UiOIcHBV8A3r8+CJ5KkcQuncw3UKKFc05fbHqLBhMVX278bUGQRG0urGZvy
         YXPpuq6HfXHaNNJD/i1/jScXep5hueKeSNCkRXlMAGLqL6VbeH3wmO5umco3l0XFsWMy
         w5qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+S+ynAH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Urhbha3LPa2X1jUx7V4nOcszm3CzF1tQpSPf0X5jwAQ=;
        b=Mlqiwa5nsQ0u9hdexkPJeDpwmqaOoX99POBg4wOQZu9wzOjvKoS9oATOmALMjm8mWW
         cyiSrOIBbLVoWUXNHM2DaV2gPpX2BZI40bgJTIPs19a2Zr0Ljkjbygux82yINUoE/P86
         idio6Tsdh5r31xPXKrtVdGwmOv4Bi+NJBm8FJtk0WjvQftA4dcOOiJt7TmTmljuLs+Hc
         9h6BFAxZ4PqhCYsL2mRFgSJva/1QXxftmDEeDdddzOoMa/DrN0LWrr8keaGUUMjEHo6z
         U30AhM3EttSO2lSa9iMUuEsTtRI6IdC6gCvW80b2CyWpUmSaPBWsWN9n5HMKGpLXViW4
         dn2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Urhbha3LPa2X1jUx7V4nOcszm3CzF1tQpSPf0X5jwAQ=;
        b=EbpyFjw2yKSvCgvKSA/l2rF98V+fu/sXibrvw6qY7rEtnB4UDR/7tkMYtjEfhu+OQO
         aXc/F5obr7hqKJUVK3kc0s2JL6exQsbyoNpHzRi5jxgZh4VN1kFxtH4HE9SgRr8TSfHm
         gzx5fqwVyinGfWNGKcMA4CjBWt8nFlaaKlcxYIPq/twovnerqSwfcQp8hYcFBJq3EJVA
         npb0p6lza8mKkeQVlQN930zjbMN+25KZrimbbb7P2bQ7kxCzKkmL9Qktghqwl1XRbwL4
         zTJxPD62nwtHOJJV2ECxcw7EVdiITspy/LZG76newpAT3+mGE1t5k5Yx6KPvorsV3dBN
         pJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Urhbha3LPa2X1jUx7V4nOcszm3CzF1tQpSPf0X5jwAQ=;
        b=YiJuXvRxx5u4fN+WnH9w2AMXRShl8LKx7gAjwZ+xbynsX/QeOE9UDl4RCQ8pEGpOjM
         nE43Tq5rsCS8rGeFd123OplggnnaT1Zq7YY3ggAO4hB3w5d5a1ROzr0URlzWFz9kBhv2
         nNWcyFD6Oob1sAyNtK60AzwkMwKGLlTdKvaEmplInGdRuq382OzN6QE9Gjx8B3yU2LYn
         h1z/VfTxsMB45pKJvRlVFxLEqHD1gh5n/rRy5gLn03dlG60fcsHV8//Wr2ZyPFCecxbF
         jqTx5msmJ29IE/iG0anjvQh99z2C6/r9yX7LWNowYNxuNcdqCQ6G0eJLcYCJHWhqSmHU
         foOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlW9ofeIvQqB+1R9EDMDK0zN6P6cBlyjPGzLkmaZjGTcTBzXge
	pzvou+tus6uExIvPs7UOfbU=
X-Google-Smtp-Source: APXvYqyMNUu+YbHLLgqw/0i2/FlLlhb3fX+MLHnV8jc+1ms3yy9oC98ThE8Ik9K4i+g07odP441A/Q==
X-Received: by 2002:a1c:a584:: with SMTP id o126mr25620521wme.147.1565579633144;
        Sun, 11 Aug 2019 20:13:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7713:: with SMTP id t19ls4131017wmi.0.gmail; Sun, 11 Aug
 2019 20:13:52 -0700 (PDT)
X-Received: by 2002:a7b:ce1a:: with SMTP id m26mr19041395wmc.60.1565579632628;
        Sun, 11 Aug 2019 20:13:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565579632; cv=none;
        d=google.com; s=arc-20160816;
        b=I36g9odgUmlyo7KckWxxF4tv6Y7DpkTliFvSP07EVs9L83tvSWOyWHg9ylDwaCiLNM
         T+SrEbNy/n3zMbSb6yjz7CHSL+lnr+zU0ktDsRpHAhJfHvec/fcUbIZy0BZflzG69VTj
         7tqaJGylj8p55viFY9tw2AiERS+QwWfL4k/A2CiXiUS9euc5ZY/WbOZH+FgHZ+3IJFWo
         0PKhNM+dfV29+Vd4TV71f/sn5oGeYTfmRsan8egCz51bmuNmen/gXTy6LyKoWQnra4jH
         +8G3mNlVscVOr0jaOxKVQJsdiSG5w7Z1RpsIzluJVnkwLf/lTnPVn8egLyI0cU0tn0rl
         TkFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=k+9TcJmCyP6rN2U8Lg8Wc8otcBPuVICv1EHiB5XYncw=;
        b=WA/pDorAbQXDPDzqlIc785YkwQs/y8ZWlzD3ouiQpyoaY0KhRcCXvICPTjdIFT0V9Q
         pn8x8vt+SaKa91yCRnIStN5HhLOutbt8OnsNFwOAgxe863MBO2MSPmRfXnsFLy3MIVvh
         VBx9rI2S/EymfQgGqEwLta6Tzknl6ssetNyZ4K+KYA1EEb1DIUStd6wVQvFnAP3Z8+ia
         rVspI0T/kyzwtwIqWLYecAMvlXJAVM6rAvqV7AxUHLx7Jbi6QUYHwaogKl7kX64DRq09
         ieDLeTKllXJy4m7STkv+MFVY1B1RuY7HWGsEJIGx0ZyMdytHY1xMGIHIEvUw9fVP9Fg7
         bZug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+S+ynAH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id w17si235693wmk.1.2019.08.11.20.13.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 20:13:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id p17so103285740wrf.11
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 20:13:52 -0700 (PDT)
X-Received: by 2002:adf:e504:: with SMTP id j4mr37234678wrm.222.1565579632024;
        Sun, 11 Aug 2019 20:13:52 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id x20sm229783183wrg.10.2019.08.11.20.13.50
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 20:13:51 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] net: tc35815: Explicitly check NET_IP_ALIGN is not zero in tc35815_rx
Date: Sun, 11 Aug 2019 20:13:45 -0700
Message-Id: <20190812031345.41157-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j+S+ynAH;       spf=pass
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

drivers/net/ethernet/toshiba/tc35815.c:1507:30: warning: use of logical
'&&' with constant operand [-Wconstant-logical-operand]
                        if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
                                                  ^  ~~~~~~~~~~~~
drivers/net/ethernet/toshiba/tc35815.c:1507:30: note: use '&' for a
bitwise operation
                        if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
                                                  ^~
                                                  &
drivers/net/ethernet/toshiba/tc35815.c:1507:30: note: remove constant to
silence this warning
                        if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
                                                 ~^~~~~~~~~~~~~~~
1 warning generated.

Explicitly check that NET_IP_ALIGN is not zero, which matches how this
is checked in other parts of the tree. Because NET_IP_ALIGN is a build
time constant, this check will be constant folded away during
optimization.

Fixes: 82a9928db560 ("tc35815: Enable StripCRC feature")
Link: https://github.com/ClangBuiltLinux/linux/issues/608
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/toshiba/tc35815.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/toshiba/tc35815.c b/drivers/net/ethernet/toshiba/tc35815.c
index 8479a440527b..12466a72cefc 100644
--- a/drivers/net/ethernet/toshiba/tc35815.c
+++ b/drivers/net/ethernet/toshiba/tc35815.c
@@ -1504,7 +1504,7 @@ tc35815_rx(struct net_device *dev, int limit)
 			pci_unmap_single(lp->pci_dev,
 					 lp->rx_skbs[cur_bd].skb_dma,
 					 RX_BUF_SIZE, PCI_DMA_FROMDEVICE);
-			if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
+			if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN != 0)
 				memmove(skb->data, skb->data - NET_IP_ALIGN,
 					pkt_len);
 			data = skb_put(skb, pkt_len);
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812031345.41157-1-natechancellor%40gmail.com.
