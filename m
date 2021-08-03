Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBEKU6EAMGQEOHF2D3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF53DF7F9
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 00:36:53 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id e145-20020a2550970000b029056eb288352csf854511ybb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 15:36:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628030213; cv=pass;
        d=google.com; s=arc-20160816;
        b=fe5T+61G0pxp0i6fSuwke3FPLvj3vrxMPlr+q1bVpCOQyfbWQ4ZdakvasbRjOxUOEz
         1X7eLukQ5zoQ3t3rZmp6pDs1YEQteB9MzKlIm8FCUtcHk3Wr6+dePXSNxS8wfjg8U7P8
         3tWzMDcR9SsTbr2vJp+xjWgpYAOe0UyueSGqL02Xc4VQDK16yLDpV9/47c242rLexPIL
         r+dTSGhFftyMUiYBKPzwKf+pvlTes3UJpKrm7eUlgIUHJXzCv+sAxRDEHxEsfKYGTOc+
         YnG4ukkrhTBrYNxj6a4qwPzjZhR1lE1y4U2wzkwqAvWoSftLkh3vUFhcpGYfGlNAiJJN
         C5rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OzDrIiDVY+g9gDcDOAoZh/1f5o6SN8lI+7xbYXO4C2A=;
        b=gc2AsGa5LN2jJr135RyAg3dXtVmxlKiITXBUvpHvsFLCnM0KrgEhS21MPXEt+3xbYc
         7o/V+apDL6t4A0pXJKoPU0FyE4STwM6erZK55n8cWtx3vd2l30AFF5vOFoRXQH3YTrWI
         72DUPWuSRRTlEc/cs8Jd5LmiWKHSuJ5t+hOq6Qs15nYfbLgXV/chJaBZE6RvFANcuMuU
         1lweWznwEvtmxXsJ39TmDVS0wO2+tKe3jl7A5k9LVVGm6jk7M7I24JOV23myCE54hBMx
         Ak/EFw8Ygmoo0J4IvtU2SEPm4yIBI4837/HRklhUtEn1BUxgXcLLzlBfhqCKahYjYVlO
         yDEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I5sdIuGY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OzDrIiDVY+g9gDcDOAoZh/1f5o6SN8lI+7xbYXO4C2A=;
        b=UT2i4XcN+pXt8DMmqTvkeIiQ2bKKrxRALLi3VJ5b0/bLtsrkr+mEFSx2E7ZKxitJgm
         CBUS607BehKC9fyCM413aQqUD6k9cbkchYFBJcOxRzdORjAsD8vIv0u4GZORIJI5Bc8O
         vDpTgGAZAFPkU/VN7gn1+R5kSbqh8D6rPTBTaNQXVsHDosZOlPpM5V/nhMpTets6JAFa
         YA70il9T+iPbF2bD60G+e6a0XWgCjq7rxV8P88Hk05AiXZPeTdbnRWdkYPom334W2BKQ
         wSesWTcVUyK3cij5WY/iWkLPYfIfhScjkLeATlW+YxF7UWhPlO0HenFVssQHlv/AzUti
         nlvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OzDrIiDVY+g9gDcDOAoZh/1f5o6SN8lI+7xbYXO4C2A=;
        b=N1g5jvIrnW2iAmOaFh1pFd4NL+QhrBa/s7NYoCxhu9FUi+A8xBK/saJUv2Ybz2YN9P
         l1BXIg4euv0Ur4Ar/XZrh92fxoFE8j3+1zOv12tJn9tGMDDhpxOoifG72AJjOfXUWaMc
         hV0WddMf6qgevGzBbb0mpO9bvY4BbKdKXtL+PknnsyZ29zlc9zydjkCyEcPKLE67qjI0
         8sYl9TxtZtdXX6VIy7CiQOVi6uOuF6IJEoULpKNGHQ47O7VH1feLMZmU4xzAUWPC8jiz
         xX15tm2BR5CE2IbdPm9OY9K2lnWQLGe1R4N6GYGS/W+h0TsU2c77Od0N8DUQIX4Vpqsp
         9LAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531H5I69iv40rI5EJ5ckoJbEhFzcKz/TinLx+4F+IT7Oc5PPNa9y
	Vr6FIvWLZLzbpa9uf9wEDsY=
X-Google-Smtp-Source: ABdhPJyc6vQ5ycH92eLfGK761D601op60CeKeMgQS5Y/Jj8YRKoSJD1fSHlh9/Fz1XnG42uds8LlHg==
X-Received: by 2002:a5b:48f:: with SMTP id n15mr31500745ybp.457.1628030212997;
        Tue, 03 Aug 2021 15:36:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls39246ybr.9.gmail; Tue, 03 Aug
 2021 15:36:52 -0700 (PDT)
X-Received: by 2002:a25:6c6:: with SMTP id 189mr29966070ybg.33.1628030212619;
        Tue, 03 Aug 2021 15:36:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628030212; cv=none;
        d=google.com; s=arc-20160816;
        b=U6B+yHNCO4es8CFa5fCpgEiJBtMQm7bZYPFAqstn/UoLOSWA+8yUIR9fxu13xcBjuB
         HxNK2+/whxm9FIUh1PzxXs9+OdlT7a0HsIGXpLc0kXfSOt8LgLfRbqsLdQNLPefaY3MH
         DxK3NJ6i0Wbr0b5Ii/g03jtmeezQVrTXWbNtTxH3gYeQQ23+cGFVe2l2QkCtof8lFKDO
         yCURwKte/BJgQABHJCRxkVVzDvqKhcusE+MbPD39AOYYfw93ABUXy78S/iVKy+ZTvvP/
         CzD87WxeFm4sBhDPU5Yit9yRCaztzjV2bc7H1Xy9WaRcPSv6TAnN/fhFSvOnTD6zUWXP
         pSvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pg2+YTS00Wggf2MhCFdLax60z+Uw6a27XD3P/G4GVlA=;
        b=osT5Wt11mXOc5WtkU3qLbRFWBsdL9fsfUDUvMyeI5HALg7aXkeQ41t83X8WS2jXYok
         Xp6p/5vIJck9pk7qcL1nbuVCXYIzAH5ynLDVqGCYCz/qobh7afmfQUahCLaQRfilfqPr
         odbj7YdzM0ruM1illHHhrHa0+e4p6+FXrZ0KjVIanx1XUfIqOTpWsAOdtV+/t1lvqGOO
         nh/QKhY0s0OLmGnALzSI9cp/UjJDfmzq46iJgFsVZjS54DszKussRdMWYUC0VVPGJhwU
         Ersw35a845wSlxLaKGZkVpO1QBF3jx/E5fLqzzQEI46VGxQSyUIxs1SvBh9s54O4KCr0
         qIHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I5sdIuGY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si11117ybj.2.2021.08.03.15.36.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 15:36:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 39B7661029;
	Tue,  3 Aug 2021 22:36:50 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/4] staging: r8188eu: Remove unnecessary parentheses
Date: Tue,  3 Aug 2021 15:36:07 -0700
Message-Id: <20210803223609.1627280-3-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
In-Reply-To: <20210803223609.1627280-1-nathan@kernel.org>
References: <20210803223609.1627280-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=I5sdIuGY;       spf=pass
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
---
 drivers/staging/r8188eu/core/rtw_pwrctrl.c   | 2 +-
 drivers/staging/r8188eu/core/rtw_security.c  | 4 ++--
 drivers/staging/r8188eu/core/rtw_wlan_util.c | 2 +-
 drivers/staging/r8188eu/hal/odm.c            | 2 +-
 drivers/staging/r8188eu/hal/usb_halinit.c    | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/r8188eu/core/rtw_pwrctrl.c b/drivers/staging/r8188eu/core/rtw_pwrctrl.c
index d67eeb045002..598c32d7eaa5 100644
--- a/drivers/staging/r8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/r8188eu/core/rtw_pwrctrl.c
@@ -219,7 +219,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 			pslv = PS_STATE_S3;
 	}
 
-	if ((pwrpriv->rpwm == pslv)) {
+	if (pwrpriv->rpwm == pslv) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
 			 ("%s: Already set rpwm[0x%02X], new=0x%02X!\n", __func__, pwrpriv->rpwm, pslv));
 		return;
diff --git a/drivers/staging/r8188eu/core/rtw_security.c b/drivers/staging/r8188eu/core/rtw_security.c
index 2c1b9a6dcdf2..45fd8b1aeb59 100644
--- a/drivers/staging/r8188eu/core/rtw_security.c
+++ b/drivers/staging/r8188eu/core/rtw_security.c
@@ -1211,7 +1211,7 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;
 
 	/* 4 start to encrypt each fragment */
-	if ((pattrib->encrypt == _AES_)) {
+	if (pattrib->encrypt == _AES_) {
 		if (pattrib->psta)
 			stainfo = pattrib->psta;
 		else
@@ -1454,7 +1454,7 @@ u32	rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 
 	pframe = (unsigned char *)((struct recv_frame *)precvframe)->rx_data;
 	/* 4 start to encrypt each fragment */
-	if ((prxattrib->encrypt == _AES_)) {
+	if (prxattrib->encrypt == _AES_) {
 		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
 		if (stainfo != NULL) {
 			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_decrypt: stainfo!= NULL!!!\n"));
diff --git a/drivers/staging/r8188eu/core/rtw_wlan_util.c b/drivers/staging/r8188eu/core/rtw_wlan_util.c
index 15edccef9f1d..4a8e52484cfd 100644
--- a/drivers/staging/r8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/r8188eu/core/rtw_wlan_util.c
@@ -1306,7 +1306,7 @@ int support_short_GI(struct adapter *padapter, struct HT_caps_element *pHT_caps)
 	if (!(pmlmeinfo->HT_enable))
 		return _FAIL;
 
-	if ((pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK))
+	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK)
 		return _FAIL;
 
 	bit_offset = (pmlmeext->cur_bwmode & HT_CHANNEL_WIDTH_40) ? 6 : 5;
diff --git a/drivers/staging/r8188eu/hal/odm.c b/drivers/staging/r8188eu/hal/odm.c
index 0bc836311036..65a117408d50 100644
--- a/drivers/staging/r8188eu/hal/odm.c
+++ b/drivers/staging/r8188eu/hal/odm.c
@@ -1631,7 +1631,7 @@ void odm_EdcaTurboCheckCE(struct odm_dm_struct *pDM_Odm)
 	struct mlme_ext_priv	*pmlmeext = &(Adapter->mlmeextpriv);
 	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	if ((pregpriv->wifi_spec == 1))/*  (pmlmeinfo->HT_enable == 0)) */
+	if (pregpriv->wifi_spec == 1)
 		goto dm_CheckEdcaTurbo_EXIT;
 
 	if (pmlmeinfo->assoc_AP_vendor >=  HT_IOT_PEER_MAX)
diff --git a/drivers/staging/r8188eu/hal/usb_halinit.c b/drivers/staging/r8188eu/hal/usb_halinit.c
index d985894c0f30..ec7badfd72aa 100644
--- a/drivers/staging/r8188eu/hal/usb_halinit.c
+++ b/drivers/staging/r8188eu/hal/usb_halinit.c
@@ -1300,7 +1300,7 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803223609.1627280-3-nathan%40kernel.org.
