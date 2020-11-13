Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBIE6XL6QKGQEBVAJVII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCBD2B1C39
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 14:50:24 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id y6sf3581011lfk.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 05:50:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605275424; cv=pass;
        d=google.com; s=arc-20160816;
        b=KDxSDxzVSLsi26W03DlVSTSiYiPu8ZFWkungNx0iYfhvvT4dsw3ooUncVKJvNh85Si
         jUBtjtqIt+xgUlflKax/4LsFVWjEJTlzKWRzqNr3KW0oFO6AWrtCpsGvpjgUCeMm7/L0
         14Y04JYvD9bsyZPw2CEcmAFUUGUW4zmUHZkmxN0TEGz6OzQnelgTmlLW9qadRvzVcryp
         rYBGrJzalHTHZCIwqmIIzRUuWunCFiUD3eHNmX//XfKFVW13MTCNF7rlRH1Sq4S5zbSh
         nYjsoTPS19rU5uTQHnPTm33pPyNrIQJ5+HlkrcW5coB8p74bi++EchqTMOWmEkqTLDa+
         TQiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=q+1ONJ6CuM+L6r/5fkw9VuXxVBafJaF0Q6tmduIS1js=;
        b=giY6NjpQ43a0mZrAXUdSaKHWrPKPJKozyV5JWkjQGuBXWoudkpV9xhZGwBdYGFrQn3
         RYLy3w6z8+ZMDSROt8c1ivo6EoeVN+GurGKygoL5Va50bW6HeCQyi3dAk3w5RbYa1Y6m
         sWUVh4a53n7lsXx6oOibO9lXIt3vjc7mejujvypS78aTPFKM32uX+bDe6BHsvKisXddr
         4z61EvrGDDo6p6/3l3ArIzAm+p4pp2v5IRkuthoxiatrRBFj2SDinbNkotfUJI+kjOdB
         d/kl2+fiRoU9ixxDmV1eB/YTYqggvaJEv9/7Auyk7MmGiRx1hd8XjEgn/N2k2SkBVFpe
         qPkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BbzicZpi;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q+1ONJ6CuM+L6r/5fkw9VuXxVBafJaF0Q6tmduIS1js=;
        b=BJR0mKty+ufFujN2Y4uB40JKWCFXF5AUj6F0y9Qx9xJypKQUDg0Sydtlckguf0eu9N
         JIjM2rNYAHQX4rDm09cimmyETKtvNafdG4VEDPRKCVxx7Vsj/c60kB+GUTOLDxeACXK3
         xGYyKZFenSDziUsl0lMtGfU1d/DJW0FOiqTVYyKFfo5ymqSI3ee7PFuMs7k3K49FZ3ai
         uHOMykGRh8J83GmFkw3JPrtkrrDpAsRk759Lq+6OyiBnItbnpCdUu/U7kwchxgJ6dn6Z
         /q5BHAqGrTyU7Q4Ml8pOuPRJ/kni5UIZHOod/2QjH9zfyPk7M4bZh5uWt1yyhm8BqTCr
         BvGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q+1ONJ6CuM+L6r/5fkw9VuXxVBafJaF0Q6tmduIS1js=;
        b=kBd7dKpSAtjKJkoI6F54GK/q/6DmVfAfeX84caUhydegESZ+sD9Orrl49iyI7fmsE4
         R/Ba85NlEv+siB96FbIFn+wG45u3cddM8pq2hhDwkhoGd2KuGoF2DexhsGmbxcB1Pu10
         BZPP1ijVDlxSsxioNa/1yXjBL5Xo2ctfViavw4pzFWefAlW1tvkDZeoAHXTxPmeOFE5E
         Pu1tt5nnzRCLgVLKQPLVXiA8Y4MI+9upILww82BIVeYfLDUxyzIPMfxpNqlU0mkVQe2K
         6Qo9KPgVx1RlS9LUvcQA+J9V1nB8IGGQ/0iHt7hyDVh3KrGTEn3wfaJ5VDFz61imgXhE
         Fw+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q+1ONJ6CuM+L6r/5fkw9VuXxVBafJaF0Q6tmduIS1js=;
        b=NSHfNJIXlgKZY3KOlaDiB2ZvyyvL94Z279WTzNb3KUContYM7DBLFCIgO+wEgxaKP8
         2uk8U9kTfxAVSG2GAY4bppz/HXbRJljihVPIWPt/QsddeSDn+tZm1m3sF+Td0ytDavrC
         /9a+ukvYvmiIVH6F5S4KsmKnGF74L7QFqJ76kCoA7EYaWsDhLexJX9OIHiI9/TP0IPi0
         7l3T7eHOj0TwzQRx6/o16GgKPvyChwcCdX1z3yY+8qPcSbhgHNUplosha8k4wEn438iw
         yj30PS6WGPohu5QtClXmaXY5DfhOx+NPAz3Ho5hnQXP+lmygeFSyvw/y6hy1AoZjXOPf
         ogxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PvJCtECR5eOkzdVeA1JBNErdsIQGUbKSPOF5EMXN1JPB+np1z
	sMDb5wVFbZqfUYw9jU5DcZI=
X-Google-Smtp-Source: ABdhPJzxRKIRC6uVZR3LLXDfZMKOYcX7dfGtMytvLMRzDnbpHRHxPsUUwuLTwyze4Wa9BeBRGes7/A==
X-Received: by 2002:ac2:483c:: with SMTP id 28mr1010153lft.242.1605275424530;
        Fri, 13 Nov 2020 05:50:24 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:998f:: with SMTP id w15ls1240871lji.4.gmail; Fri, 13 Nov
 2020 05:50:23 -0800 (PST)
X-Received: by 2002:a2e:880b:: with SMTP id x11mr1125397ljh.435.1605275423263;
        Fri, 13 Nov 2020 05:50:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605275423; cv=none;
        d=google.com; s=arc-20160816;
        b=jttE8kp04lU+Dcjsub+93Lg+jU03MBHEHHwRwZAz0W3CBjwU13GvBwyoQiHdzqHEpr
         BIbkHNJcDLH9og0JSSfzotOwe1xIKhUlROAU0RXocCqLlXHxsvYKXT85d8QQ4UaeZ1dS
         DhoYu4RudGtJXgOkheLRm8ne+Hg3uFvNis1xAF4AaMRjNFza3/o7IlUrW8+rPYsV1z/a
         aE4ebb2j8WQTSLaTnqFrICJYNnnAF5AmuOCwTV1zWdYXnfBFQONhv4Elcw6NbPkfYXQ3
         dFfb/Hcm+KojFJU58rV412il0UbXNn2mSydDBr3W0vFwi7XU0kDJMpftSVmM9m+3wtRW
         xy1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=EO37OAJNAbmZmGUhAeyjfYFiO66b5FlhyGH1+SemRIc=;
        b=vJJAsXTtDyMe6A4ljfE/NdPpHiRIqsFWi+52Fri5G5U3Arl0QyOe71TNktC3idyOyX
         zXoBR1wU/mWM+VnYpTnBNzYQ4Eam+6YFmH3sV8eWnp+lT1436IJYNtsmR3EEI7b5s17f
         N316MRK8fBs2aTVW5Yw0cpmTalUPLqz/L8MQB5x7ZTXADZL5olyM7AGmvmL0ESS5TW/O
         d0m1LbT3GZq0z6w8X8Vwg2ss/XL1YF0oBbn8CJ/nhf6ORigwJTE0WQWY6E40h9cVBQFt
         3GHDDoQADKLNBc3Rq5HQ3LG9dcXSTejSnJRXd6FNeQgl6jQ2f/HBKrzp8u6t+NLNYlIO
         tOIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BbzicZpi;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id o13si172785lfo.5.2020.11.13.05.50.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 05:50:23 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id f20so13527119ejz.4
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 05:50:23 -0800 (PST)
X-Received: by 2002:a17:906:14d:: with SMTP id 13mr1935709ejh.516.1605275422982;
        Fri, 13 Nov 2020 05:50:22 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de6:6700:4456:5b6d:36a2:24a6])
        by smtp.gmail.com with ESMTPSA id n16sm3687783ejz.46.2020.11.13.05.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 05:50:22 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: "David S . Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] ipv6: remove unused function ipv6_skb_idev()
Date: Fri, 13 Nov 2020 14:50:12 +0100
Message-Id: <20201113135012.32499-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BbzicZpi;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit bdb7cc643fc9 ("ipv6: Count interface receive statistics on the
ingress netdev") removed all callees for ipv6_skb_idev(). Hence, since
then, ipv6_skb_idev() is unused and make CC=clang W=1 warns:

  net/ipv6/exthdrs.c:909:33:
    warning: unused function 'ipv6_skb_idev' [-Wunused-function]

So, remove this unused function and a -Wunused-function warning.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Alexey, Hideaki-san, please ack.

David, Jakub, please pick this minor non-urgent clean-up patch.

 net/ipv6/exthdrs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/net/ipv6/exthdrs.c b/net/ipv6/exthdrs.c
index 374105e4394f..584d1b06eb90 100644
--- a/net/ipv6/exthdrs.c
+++ b/net/ipv6/exthdrs.c
@@ -906,10 +906,6 @@ void ipv6_exthdrs_exit(void)
 /*
  * Note: we cannot rely on skb_dst(skb) before we assign it in ip6_route_input().
  */
-static inline struct inet6_dev *ipv6_skb_idev(struct sk_buff *skb)
-{
-	return skb_dst(skb) ? ip6_dst_idev(skb_dst(skb)) : __in6_dev_get(skb->dev);
-}
 
 static inline struct net *ipv6_skb_net(struct sk_buff *skb)
 {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113135012.32499-1-lukas.bulwahn%40gmail.com.
