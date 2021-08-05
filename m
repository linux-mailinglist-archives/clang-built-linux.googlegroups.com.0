Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ7JWCEAMGQE5QZWX7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F39B3E1BE2
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:58:48 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id a2-20020a0562141302b02903303839b843sf4502884qvv.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:58:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628189927; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zw3p0HZe1zX9HFL4jVRF4n+V1rHUsoDzQzkNxNDF45zaQZS57t907XNfqzD++4JwcK
         oZTvYopyKORgVNonXSKKPDWSdLYhiMToAEa/S5QEzNABMDDRtvZk4FcNhF+JlmqZXOpb
         Wru1DSoDix/vXlC047+qQTFQ/mJoSy6j+PCFaZZUXupB5dta+K8e/p8lJU2w2yheMeRz
         tLgz8bShM73rCNDFfuZcZ16eyA18fI24aVrh/TDE+T5YG8FDccwhOSrMDTBSHZz/32ry
         Y/14I39dfKgkaFbt1dx4rJCLv0vV7jCgttm70mWnmIGaeB5UDTTokGcQtjtsfds5llUi
         5ADw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ygZJMts++PC4FF0pJ6HYKQ3YFrxgC9OfkQZROyS+xek=;
        b=HdtEZWudgAChfSLXIrTDEL/eA0dlelEl1KxuNezFFuOWs1VdnKhd8ngRjJ0xbg511I
         N7QxQPHKC4CZ1GFf0QAH89NnOvnvS6WT4iWMcUwZAN84N3erAR1C//acuTMJzWoRxxit
         +1fDErS3lrOP7k/tGxYqr/aVKbj+nnT3HNAfLVyuKESjxbquJb7UeA6tIia16js68JuM
         9N2SWITSkUbzwIsXYJm3zeO8be5CUobUupj/vZq9nsh7XsAVf1Ml+z4y9XT/tY6Xnk1P
         rUtssSLiYCUs2d3HBxmatSSNapT75tig5faaqTLsJnfHOVhcjwsIvQBFbKJzZ2VWajAu
         6D9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gWLNpI6b;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygZJMts++PC4FF0pJ6HYKQ3YFrxgC9OfkQZROyS+xek=;
        b=PlsBVlbdGUQeTnHjcluENTZleitYaRUOpH+xUMzZ18suAPudsOYHq3VJRtXPFnR5ws
         AtIx7zoywm8hbXW13FWfliU8SXvSEaYTkYQnNAVWjABodwN8sIN06DJemwjuY2R8b0cI
         mkmjf/w49ee0ntNCxQW4MCn9qGv355YBE5WzsebrSPOT2oE07RWCpfdJKsBSSYezpiEI
         5/hJ7cV1uxL4HZMsBbHHpT1g9dla/V6pzIEvVv7BI9XZ/SV05+XoQl6EU/9K6fIcitQX
         DAHJSNR1vRx0+9lv7sD07NwsehcXtFa02bzlKOrPHVO209sWh2umMu6YWzIjLkkdHG4o
         gTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygZJMts++PC4FF0pJ6HYKQ3YFrxgC9OfkQZROyS+xek=;
        b=FEgseX2B5TyNkQiqVc/mBQax0dfqqlhRLE0eqlHRJKh6q7jJ3x5DEGpaj1DjEhXuJ1
         t2OvVGRmE2bu7RtKswsXtE25C14nFeduJSWiCX3o7yvBvR2JO8eHJVhbR7p9DnaAZY9G
         vj9L+GyiR8FIRwfVygukSZaAFfcZFvveVg1rotaVYcTCoV1ponPg+GmqyZaDYvirk6WM
         mXfTGWkMnD/xNJy+kumO1eGtsCIva0CVbVfkLJJAokchqexJOzJ0syH3SduxB7wypaOL
         pZbVoDazbe4mFJT7HYwHwv+hIrcsPKGuj9uNLLBMWSfb0DbwPGtrDQ8iEcejX4391Nho
         OphA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533E1ORgvb+KiNQvGci96n9xLHRG3kuz1sPllzGgm5zOIIX8OEy8
	XDSCFNrcb0hxgpe1agQUY/A=
X-Google-Smtp-Source: ABdhPJzXLUMdsm6EPcJyXu3+Rqz+XDnmEnT0x5hmUT2hlbgvp6F3UvFFTqA2J/J1FxcEYOsWpDYnJg==
X-Received: by 2002:a37:a303:: with SMTP id m3mr5774158qke.299.1628189927170;
        Thu, 05 Aug 2021 11:58:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:d619:: with SMTP id r25ls3675908qkk.3.gmail; Thu, 05 Aug
 2021 11:58:46 -0700 (PDT)
X-Received: by 2002:a05:620a:1999:: with SMTP id bm25mr4923508qkb.329.1628189926748;
        Thu, 05 Aug 2021 11:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628189926; cv=none;
        d=google.com; s=arc-20160816;
        b=mfCGUxHtFBRv365EjVBJ1Yo0tyt/4WFyaVyCdd6qVNCdyUWrQRn9+1pHJIXjb0uTBe
         u4ZgpOrSSmaoaKXw0oOXNoCHe4YCgLPKddm0+M6jbTa/6/70Xk4c31lRtcr20FCzcCPl
         VHnE/xQAR1V+sR2kWiK4DiXkiy+lhyEQtmxE92JlQFgSJVQFnYY9EX1HiRu8vcl7SnyA
         zY4IKC2G+a7JWWoFgr9/TinVyxv8IlZokiti4WkdX6zpSEVLfjDIQnTF+Bg1cp6ZRxpa
         KOT8AoNRUpzMUix3F99vS+ofyndxwuLIJO29pPJmhJY9IHLHV5TyHaETkwUMX5eo7zHI
         gP8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=35jWZ7dDHzm8jD3oTFwS3u//6BtMsv+qqFrBb1S4mCs=;
        b=lWNXZTyUUcx4JH2TwYRirA7swnsDY6+GAA9tl4KGIxwgz7pKgrJb2IvEEv0ZRxH3HQ
         0HTAhzjYPtGjqg2tuH7NuCiZ9CYLoakF30WPl6arcK4t7KTxHu26H9pM/XjVvO5WQoZy
         EhR05821SPuymRvpVOgJzRcbveuc606vG01qjMYVD6NwlCetOBWax2p48kIOOU+YRPtR
         2zfwwF/jW+J7pcUq7CN35cYv1AeVL1VGPy/lf53qTMY+v97HHjF3YHMH2h2IAghsu3q4
         /Xf2PxJacO8qILsNAex34PNRUpZklxn+Z4ZOiSyxP0/dEw913sNLrQz91eArTl/0THvO
         3COA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gWLNpI6b;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i4si5717qkg.7.2021.08.05.11.58.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:58:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 31F1460F01;
	Thu,  5 Aug 2021 18:58:44 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2 3/3] staging: r8188eu: Remove pointless NULL check in rtw_check_join_candidate()
Date: Thu,  5 Aug 2021 11:58:07 -0700
Message-Id: <20210805185807.3296077-4-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
In-Reply-To: <20210805185807.3296077-1-nathan@kernel.org>
References: <20210803223609.1627280-1-nathan@kernel.org>
 <20210805185807.3296077-1-nathan@kernel.org>
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gWLNpI6b;       spf=pass
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

Clang warns:

drivers/staging/r8188eu/core/rtw_mlme.c:1629:28: warning: address of
array 'pmlmepriv->assoc_ssid.Ssid' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (pmlmepriv->assoc_ssid.Ssid && pmlmepriv->assoc_ssid.SsidLength) {
            ~~~~~~~~~~~~~~~~~~~~~~^~~~ ~~
1 warning generated.

Ssid is an array not at the beginning of a struct so its address cannot
be NULL so remove the check.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/staging/r8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/r8188eu/core/rtw_mlme.c b/drivers/staging/r8188eu/core/rtw_mlme.c
index e3d5a721d25c..95b952871e67 100644
--- a/drivers/staging/r8188eu/core/rtw_mlme.c
+++ b/drivers/staging/r8188eu/core/rtw_mlme.c
@@ -1622,7 +1622,7 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
 	}
 
 	/* check ssid, if needed */
-	if (pmlmepriv->assoc_ssid.Ssid && pmlmepriv->assoc_ssid.SsidLength) {
+	if (pmlmepriv->assoc_ssid.SsidLength) {
 		if (competitor->network.Ssid.SsidLength != pmlmepriv->assoc_ssid.SsidLength ||
 		    memcmp(competitor->network.Ssid.Ssid, pmlmepriv->assoc_ssid.Ssid, pmlmepriv->assoc_ssid.SsidLength))
 			goto exit;
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210805185807.3296077-4-nathan%40kernel.org.
