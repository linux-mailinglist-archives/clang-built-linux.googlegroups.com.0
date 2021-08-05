Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYPJWCEAMGQEKTKXCHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F35D3E1BE0
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:58:42 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id j1-20020a253c010000b029059339a33fbcsf7266yba.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628189921; cv=pass;
        d=google.com; s=arc-20160816;
        b=BublZ5nMcmr6u+I0yZica1iYNleAB1Vlm7U/tpxnMbXR68FGoC0BUAn9RXuITsL9W9
         IKsJqNTQ5wa6jkRW5IW4a+ILEvN/lCaRVs9FNCIXopLEZsnWBpqs7g6p95GDXGzPWVwv
         sGIeedcSLJSIpb1xnea7crZ1UPHaj0x+ooN3yjxY1LZBNcbvhijmCkyvIa80gHa5jucy
         jNMVL6YLV3ZL+EODg1A7B/YzT1+u4ZX4iOum144NtzKEbJxmQer1UnBze44/4g63kKIY
         30Uk9XifW6U56a5CKLtsIq3ZB46FuOMIBBxqLs3QApBmVWivpyPJ01GIEQgS+rKPGUZQ
         IAAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=w68kRgFggpmRWPzm+CBvHsTpLpRwDeXbavhUvmkj+LI=;
        b=IlCKtlxKVbCKAZ45/NI2wrmGAPiqZjifFcFtk8lOxh0Oukv1hia2mBU6UoqiMLRCO6
         u39jtYja6d8RD+nVxa6QCkWFyl0WqFBmJu8Ahz/tjgyJGK8VXKl2v/fQIABwWMiYj0aY
         NWxbxJP+K5TK4MYwj79gzMiAUGPVHf0wBpahiAbxEr1o2GB7bSTm+ZkRpbnwUexzgRTr
         mG6wSGlqRD0Ju43KFRPkL/ULRoKLlW9f4n/L/G2pvKfwE9k8ozNuol8PHDEWbzkS33Nc
         ehDOklsoHhep6znw8OtlaqwTO5EAoiv5dT+rPuMCNHBGMcaMJ4gmqyPpUEhDucVfkxoK
         DQkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="JN/9R2Tg";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w68kRgFggpmRWPzm+CBvHsTpLpRwDeXbavhUvmkj+LI=;
        b=pgY/v+YvgAFXk3SzlJCOr8q3FDv0k4okOlnBRPwVs9K7ScBBVAKVbbcTFUiPJnJv3+
         gieYyKx6AdiOhwUYKSOO7pePVaZDmlZjNDNiP0AJ33sNot/9sTou0Jd2Tj18itxd/chT
         l7TYfRm5809OTGwPk9rvq8fx7ybrjh/yHybPtya6/M/3GYwR7cEdhjdjiR0p8ncB8YSz
         9NzU8bIGGAgzMRg4IgT2Oxp+jjxtcaSpUJlju7juNrt/FCy0claRlnReXcfbxY3BkziB
         ZGOf+knhK83vaDGjGTgpe+VhCse+Lu1juYnFOJNv/+Vdx3gy+rkkuFa40KAfoRRMEw0t
         MRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w68kRgFggpmRWPzm+CBvHsTpLpRwDeXbavhUvmkj+LI=;
        b=m1/Jox6dTG9QEFIxzmWQQJEPvZkCXxMBGw/cLT8Ktd9iK8Hr6CrSm2U4KTjDSyqpQM
         BfQU8jRBfSSfl7nb4TyUxE37Aot1SLZ509Sm+KxHFa3Db6u1SxvtjULmtpM9N+lLzddJ
         s4tlWLbKR41/k3F6s6upuZAOqXqyrrPTgXRfdFio5wvo01wyvbwTGT8k4uCy3TPU/AGc
         vQ3guMsQvVB93UPbw9/whg8v6rfdegx4F3Z9V7FPACE6cIDCvnayw14eYgS46k5u8S5W
         4JgtlIB6zuTqICNSAOdTs4OEFqYayn3oZJ4dfcNMcxnNuXVNlbsF+Byf11zQbGiXMQ92
         rAMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jAMYoaLgxdQ0hCyrYTh8fXQEKHbcAqePKIpVamHUi7CE06ylv
	7yYhXpe9W72b98F+nZRi8ho=
X-Google-Smtp-Source: ABdhPJyx7R3YJI27USeMKUQQfZNaD4zG9dw0afA8rJjz2QxoCcVsx1b6rEjZGqorxomQgefNPMu9cQ==
X-Received: by 2002:a25:d052:: with SMTP id h79mr8496032ybg.246.1628189921295;
        Thu, 05 Aug 2021 11:58:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls3166231ybc.7.gmail; Thu, 05 Aug
 2021 11:58:40 -0700 (PDT)
X-Received: by 2002:a25:d80c:: with SMTP id p12mr8025591ybg.389.1628189920849;
        Thu, 05 Aug 2021 11:58:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628189920; cv=none;
        d=google.com; s=arc-20160816;
        b=E7IeWkM261rcHicnGQENlE95HLcfuxot+Ccvb+XEZ1UJQBA3C8ESB50tb0xCpMc88Q
         FykARfw1DDvY4eYI0mDm/46pXvU+vi4Mpx+ncTrpsFUI+CPSiUrsaOyYEJdgihyxKFAh
         L+BBnZ16uUCozvsc5Z2GO8JWqatNWPnADmnNT4GfX51GJNlOqWQKf78GPnufyUirj4dU
         gS2O7x3ol0+v0v7wSJrzxwlf5enl/Xc/ADeF7M839cmpXjYbq9r1bimO6MkkYnB++Qpj
         hnJNbeCrxZrg413Hel3gdcfKnLRKBf0qWh987fr2CkeTALFrn75156RmF8CF5E75zjSW
         tytQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vONurfKDxGgj1LESZ1Vnf+1+TPzFcBxBYvIfExbn8JM=;
        b=sgOiawF6nNwfgwIdugeOU2YWlQHgOr+AEJzNCeyIdQUWpHiOXc7pwTsQTkCPOqzi5J
         ZNPYYSnSAXxbBhjUEuVipN94ZesoSPQFpK8zR/xmrYkNY9z1qeoCp/j9pzzI+8K8GsV8
         q9SrUPkUG97zvY7NCbok7Vtx8J6MOnoeCzy4R/gTjgPcS8KJgWBtY+m92Y8B4HBx1Q/J
         uLuEh01RUz6lBOHD6J3mfKNjkVYMWs6TtcloN5XPZnds6wos23mCvnJc9lEJfV0BCwep
         3tUXlxQtDepe2agFQaKhIvq6dtnT6Xnwb/Jn47a4MUQSj/gbF9GErFsOCD1idG0nIkXq
         0DMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="JN/9R2Tg";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si392197ybj.2.2021.08.05.11.58.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:58:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8723960EE9;
	Thu,  5 Aug 2021 18:58:38 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2 1/3] staging: r8188eu: Remove unnecessary parentheses
Date: Thu,  5 Aug 2021 11:58:05 -0700
Message-Id: <20210805185807.3296077-2-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
In-Reply-To: <20210805185807.3296077-1-nathan@kernel.org>
References: <20210803223609.1627280-1-nathan@kernel.org>
 <20210805185807.3296077-1-nathan@kernel.org>
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="JN/9R2Tg";       spf=pass
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

Clang warns several times across the driver along the lines of:

drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: warning: equality
comparison with extraneous parentheses [-Wparentheses-equality]
        if ((pwrpriv->rpwm == pslv)) {
             ~~~~~~~~~~~~~~^~~~~~~
drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: note: remove
extraneous parentheses around the comparison to silence this warning
        if ((pwrpriv->rpwm == pslv)) {
            ~              ^      ~
drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: note: use '=' to turn
this equality comparison into an assignment
        if ((pwrpriv->rpwm == pslv)) {
                           ^~
                           =
1 warning generated.

The compilers have agreed that single parentheses are used for equality
and double parentheses are used for assignment within control flow
statements such as if and while so remove them in these places to fix
the warning.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/staging/r8188eu/core/rtw_pwrctrl.c   | 2 +-
 drivers/staging/r8188eu/core/rtw_security.c  | 4 ++--
 drivers/staging/r8188eu/core/rtw_wlan_util.c | 2 +-
 drivers/staging/r8188eu/hal/odm.c            | 2 +-
 drivers/staging/r8188eu/hal/usb_halinit.c    | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/r8188eu/core/rtw_pwrctrl.c b/drivers/staging/r8188eu/core/rtw_pwrctrl.c
index 2c029f85d63d..967c9623e7d1 100644
--- a/drivers/staging/r8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/r8188eu/core/rtw_pwrctrl.c
@@ -218,7 +218,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 			pslv = PS_STATE_S3;
 	}
 
-	if ((pwrpriv->rpwm == pslv))
+	if (pwrpriv->rpwm == pslv)
 		return;
 
 	if ((padapter->bSurpriseRemoved) ||
diff --git a/drivers/staging/r8188eu/core/rtw_security.c b/drivers/staging/r8188eu/core/rtw_security.c
index df8107a0f5f2..08a5a1975d11 100644
--- a/drivers/staging/r8188eu/core/rtw_security.c
+++ b/drivers/staging/r8188eu/core/rtw_security.c
@@ -1209,7 +1209,7 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;
 
 	/* 4 start to encrypt each fragment */
-	if ((pattrib->encrypt == _AES_)) {
+	if (pattrib->encrypt == _AES_) {
 		if (pattrib->psta)
 			stainfo = pattrib->psta;
 		else
@@ -1452,7 +1452,7 @@ u32	rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 
 	pframe = (unsigned char *)((struct recv_frame *)precvframe)->rx_data;
 	/* 4 start to encrypt each fragment */
-	if ((prxattrib->encrypt == _AES_)) {
+	if (prxattrib->encrypt == _AES_) {
 		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
 		if (stainfo) {
 			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_decrypt: stainfo!= NULL!!!\n"));
diff --git a/drivers/staging/r8188eu/core/rtw_wlan_util.c b/drivers/staging/r8188eu/core/rtw_wlan_util.c
index 5a9a824dcbfd..21a3d0868214 100644
--- a/drivers/staging/r8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/r8188eu/core/rtw_wlan_util.c
@@ -1283,7 +1283,7 @@ int support_short_GI(struct adapter *padapter, struct HT_caps_element *pHT_caps)
 	if (!(pmlmeinfo->HT_enable))
 		return _FAIL;
 
-	if ((pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK))
+	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK)
 		return _FAIL;
 
 	bit_offset = (pmlmeext->cur_bwmode & HT_CHANNEL_WIDTH_40) ? 6 : 5;
diff --git a/drivers/staging/r8188eu/hal/odm.c b/drivers/staging/r8188eu/hal/odm.c
index 08ec1e18b3f0..0deeb21c8006 100644
--- a/drivers/staging/r8188eu/hal/odm.c
+++ b/drivers/staging/r8188eu/hal/odm.c
@@ -1630,7 +1630,7 @@ void odm_EdcaTurboCheckCE(struct odm_dm_struct *pDM_Odm)
 	struct mlme_ext_priv	*pmlmeext = &(Adapter->mlmeextpriv);
 	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	if ((pregpriv->wifi_spec == 1))/*  (pmlmeinfo->HT_enable == 0)) */
+	if (pregpriv->wifi_spec == 1)
 		goto dm_CheckEdcaTurbo_EXIT;
 
 	if (pmlmeinfo->assoc_AP_vendor >=  HT_IOT_PEER_MAX)
diff --git a/drivers/staging/r8188eu/hal/usb_halinit.c b/drivers/staging/r8188eu/hal/usb_halinit.c
index b214b7b1e9de..c2d9c0359e64 100644
--- a/drivers/staging/r8188eu/hal/usb_halinit.c
+++ b/drivers/staging/r8188eu/hal/usb_halinit.c
@@ -1277,7 +1277,7 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 		StopTxBeacon(Adapter);
 
 		rtw_write8(Adapter, REG_BCN_CTRL, 0x19);/* disable atim wnd */
-	} else if ((mode == _HW_STATE_ADHOC_)) {
+	} else if (mode == _HW_STATE_ADHOC_) {
 		ResumeTxBeacon(Adapter);
 		rtw_write8(Adapter, REG_BCN_CTRL, 0x1a);
 	} else if (mode == _HW_STATE_AP_) {
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210805185807.3296077-2-nathan%40kernel.org.
