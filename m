Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCUKU6EAMGQEUACELCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4773DF7FB
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 00:36:59 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id t18-20020ac5c9720000b029028313a6f826sf72340vkm.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 15:36:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628030218; cv=pass;
        d=google.com; s=arc-20160816;
        b=FmDean3GuFReUEnwa0+nDT434dG8D0UK232EdTVtfOOTc89GQyNoW3W4IsANUjX1Gv
         1NuAIoyOr8+m/7folkOd+nCs+K1rZWneB1z23GzrRAzdT17CVdlXUqLrCuPCghhD6lXI
         Ai34YXdnvaltUloGbHWEtlSyc0J0ekI7CuhffUkL8cBSi1VOhjCST3PoD82e/8tDZVoL
         aS77yVQnXOwfrK85dSA5CQwW6WUdFgzqlddWvIliKR4EYuBKI7x3aKHdC/X4Z9mqvScc
         PVLNVTLORpDd22VE2TZVK3MuBPqy6FdEpRLpMARcsqZcDKpWDJ/fk9Ry5Rev7MdUvqxl
         7cRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MdRJmoVci6/Ny2pYUJP3hVYXDN+sYnm7ICRGMid6FDo=;
        b=W+Tvd5U3IsJ/bzs8m2Rih3J+QVhbfcE1Vypcy38Kn8I776ogQJpgh20T08nabrn1pN
         YtooeXl8ESRHySHqFjKTr1lmGc0UDL6xIwcwdk/ZqstGUNTy5IxjfyHB4jeV6Z+QQUlt
         Nsz+UTexzxF8JRXB8U6KETlzRyaI18q8qNHjmrXLS30TLq7W8nyYyKO5riOHsi2Ro7OG
         mUoHH0P3y6BaY0H4S3qJ0HlKEUz6UlRy7Tp8WSdKlxU00T+JQMyrUUUl1UtAXczhhAke
         JS+2XHIglwtIsZbEApRhNUITiEPwhEPi/Puf/fHUbzOjUWaoLomjxuTXo0IMCHJn4nst
         knkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mhzUeMQR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MdRJmoVci6/Ny2pYUJP3hVYXDN+sYnm7ICRGMid6FDo=;
        b=hWw0Uqm2PVxdhq5c/18enP9GtakknQHwacuSqq96+l85yI/Ab2AFCFTSvrf9qZvKz0
         jxQiW/AIBbXRa7CgbPl3idCH9BiadBWkKmpqNV+AfxMtGXqdAcHs68tWfFVWiiN8glRu
         QNy3DJbZfBlT3rhWTAT5MrfByiZz+BPcbD4aF8qbg94phY97R2OdT3AJliw8cHLpxww+
         J4d1pfOGOD7w+zYdtdnU5cNe7zpM/464Zdh9+txYM/B5NHXEOV01uccigKXuQQyn2+04
         7IqyhSy21cq5zlJFGvTHgPEDPGhjNZcY6K2CKB442x+Md5KD684ltX9C5nA4vddtgA4v
         XHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MdRJmoVci6/Ny2pYUJP3hVYXDN+sYnm7ICRGMid6FDo=;
        b=b03Ju2ouA2mVQg7/ky/RcOVgktnH0QXTOPXGVWwOQZADuoVkndboO53lSFupLnAROu
         sfHNnBfoulYAZJwlgUuql/Fu2e1S7CqW4fEsRhSoumeGsAtZKRqO9yoyjIv/8ma2XN7m
         jNMfYbfR+ATeuqt0x81HmnL0boJBZZLXmsPn+eSr3aHyRxy+tiPmDFAOvm4tB5ONIBmA
         x77/pKET1iiqAtPWaA29QaF7m/lsyYBv/Xp+hQMCkCCg93YkBlVb0hlvmMlJF61h5/d5
         ltQ6t4tRv5LzBZKPp1H8SNep2OYhXnDnqzz30+yA3m8mWdpImP+Da681nH5ZP+2qgWxO
         I8zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GrJhOZEytOEjMYmy32+4K+dItMVvezSXI6j0fbQu27lF0QI8e
	hgVA/Qc9B24CWicn9D1YbU0=
X-Google-Smtp-Source: ABdhPJxz7XeMZhuD8GaIkmtEzRPY5Rjj5udpnVYR+wKtc8kIlNiVWKL3ocen9Ad35CQsamQJfYOy4w==
X-Received: by 2002:a67:e2da:: with SMTP id i26mr16534701vsm.16.1628030218452;
        Tue, 03 Aug 2021 15:36:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e00d:: with SMTP id c13ls21672vsl.9.gmail; Tue, 03 Aug
 2021 15:36:58 -0700 (PDT)
X-Received: by 2002:a67:2442:: with SMTP id k63mr16728547vsk.16.1628030217971;
        Tue, 03 Aug 2021 15:36:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628030217; cv=none;
        d=google.com; s=arc-20160816;
        b=P2pIalxZG+Z5XbKWdY7DKv0hUIwhxaaA5def+496v5/m4vJZCfJPBZcvC94k71VYP9
         rjwvMuXtnlripRPhuCJ2Wn1DncQoOgOqPbwIaLWr0g1QIwkmtiEgbGN+14x1bkmwFJ+E
         9r4C/gyleERSDacLiEDtLp5p3tbQA/c8SRGYTVepyqThk/Uded/GJwKlz17Es5bUF0FD
         JtWxzmLvGZkmn5xv/lYBW3nHcGD8DsCRsMlpUkVahCJ7CwemUu2T2bp0ZzA9kmibdzRW
         T0AxtpuV3GoGFyzQoXANfuEEKeiakf66nboKtFecZLVoN1Fi8tr8gKf835HwDxbFfo/K
         D5OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CO+UKXqS5BNpDVqSYc07VnzsVtu4YrsUEcfr+YsPUIk=;
        b=iIOd3TirCLpWvJ/h0htpkfcHEReN28gm7IfpL60eV+jn/P0dfTaS5BWRMkLqleHauh
         i0bYSd0MTiZIgG12ALiiO73aOI25kDCgH4LP3oye1573/9CplRhR89T09femPZBXJtUl
         L/hUakXCn+X09B10Ar8QaUIeEZ05q8ZswzbQ+z8HFvwdjbeYMs2Q2COGxNUDu2XGlWx0
         5yk7kKPrDPz0oRuuZwIOMJyeLoxIDcZuVtMov0iizk/u0kuiZ196r73+Iurdm0GfkJdQ
         sepdd3sPO/KZuXH2JsAH4HvfBaHw50HvIkZbibrJCMii74b3s+dCnPJq6mIJLvNHRAtU
         xfjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mhzUeMQR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x18si16169vsn.0.2021.08.03.15.36.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 15:36:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 854DB6105A;
	Tue,  3 Aug 2021 22:36:55 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 4/4] staging: r8188eu: Remove pointless NULL check in rtw_check_join_candidate()
Date: Tue,  3 Aug 2021 15:36:09 -0700
Message-Id: <20210803223609.1627280-5-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
In-Reply-To: <20210803223609.1627280-1-nathan@kernel.org>
References: <20210803223609.1627280-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mhzUeMQR;       spf=pass
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
index fa4df4a3a2df..16d8f7317897 100644
--- a/drivers/staging/r8188eu/core/rtw_mlme.c
+++ b/drivers/staging/r8188eu/core/rtw_mlme.c
@@ -1626,7 +1626,7 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803223609.1627280-5-nathan%40kernel.org.
