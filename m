Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGGBVOEAMGQEIXLQMSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AAC3E081E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 20:46:50 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id q63-20020a17090a17c5b02901774f4b30ebsf2844850pja.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 11:46:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628102809; cv=pass;
        d=google.com; s=arc-20160816;
        b=HCiN+zZrxmhHnR7qUwKIMcQ5+CKsu9smO4LHZ3CZwslavWfk7jcABlXVMVMGvarqsj
         skApvqUqbLV/xXF6JKSDRjTyR+RJZNIwwHWHyBRcQtVywhbM4cpmT6C9IzlgmM2oTKTR
         jjtJ0iGNUUiX6DSCW2pMR73PGzKjog26FTIatUQgl6JUMMftUkO5JIN5SgpODMkoFjds
         6Jhx5L2X2DsH/nT4EMnr52qT4v5LNlffoK9pNOcABEoY9yeeX5cIRrUjUKFvOxEv73dw
         TsZOv63GlZBZLmztQaznwOlltSiuh2ywTGjujvVyjW2B2N7q34GSyTYmbB5gwEiH/lnq
         1pFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=XKAN9RNqrcyJflBC7fPjLGKXDrOQxu/GRS2SHS4iB84=;
        b=zbnuaeVfQJHllTSqv8enf6h11bxfGkxFlFEnU3iPB2ES2cP7d2JHNSvFzUp+TgzRDj
         /QnkG013DPThsa4QawmSiQqJ75LbztiKalxqybZcrhTG6sXGsw9szog1/jiVzGrUOwkL
         3WJHSNNM34HRHRKm80AFwKT2JmtaxXdu5FQOwrZqhfaydKkKl3tM26egRj6aVpzg9fhy
         AWFt5WTYkRfCMhVl8whtUcRr/FZOkMmgeG4MvzgwiFELyvk9zjmNJe68iFToWxA4xVIv
         EIqPkGkMEpuHxPs/tQ7La7yne+HqnhCMDkZnHC/Phv35WLZogUHyfFTQTHYVlAJOsdRg
         sAFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JnIFhgNF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XKAN9RNqrcyJflBC7fPjLGKXDrOQxu/GRS2SHS4iB84=;
        b=Gq3UDrnS3qI/fKqpvA+Ex+tGw7a8n2We30A2g7ye0ylCs3qGtR1cYLoEJKtqcOgi/7
         KoB+KRvrEi6i9TlkFxfpvTnQfRmOovFSvxQnwg2R+8yHD81/8JS5BgvShMSbyo32lqcl
         Vp+xPKrAQ5ElF398O+udtU29MUAJ1UeUG2V6TvSGihSMiFxojaK0vQGitCyVW22VNE2I
         DNmraozk+DIvJRFehsVVkfFhK6lSl7+eEFXEeHyIq9DZQUGjJDhm6eQYxKZ5MFKfpBIl
         dnpnoxQWjg0vhx3nV0StUm5PzIyXChheI/bYc1rs16DtNeCXCTyXkKswSS5GmAlRuugz
         QaBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XKAN9RNqrcyJflBC7fPjLGKXDrOQxu/GRS2SHS4iB84=;
        b=biYrL4L5ofwlc9tdX1qbsXxs+6cd/bFqa5HIEZBVxNbBQR4R+0l24Hrzh1fEt3dKuN
         9sg2s7TSXyMEdD9I5bHS6u8/BNXGl9kkWV7nsbA+h8yHHA9+WtycObEUzE7w2qHW4P//
         TPgud3tGGotyGfBtnBkh3loF24J+z7c4m5KP5a+Zk2ZdEiVLvt8uK0Jh3e/ynVY2+5Cc
         kZyonANIpcEQzBPrQgXE7Zp0uyvnR/dTmpWGofPRjZyiIqOfC7RAEVOGakxsfF3GujuI
         sruAR5fblNjw2idaI1AXvNlAgj2rDqaU5+yMwySkzcE27C6e1iVlrYpCKW47WQH1EC0i
         GTCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CMTwXq0xce+zCBolcQCBUnmXefeHbjYfVQiZEfRzVj7q2nVPB
	Mwa/HO729vyTXKGFmsW/zxs=
X-Google-Smtp-Source: ABdhPJxqyCL7T76TSKomAbK4Dd//vTXCBtEgtEQfuV/azPM1sC9Wnd36GSvPJbZiv72xa4kwt8eGlg==
X-Received: by 2002:a17:90a:8b81:: with SMTP id z1mr539585pjn.82.1628102808912;
        Wed, 04 Aug 2021 11:46:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:b92:: with SMTP id g18ls752336pfj.1.gmail; Wed, 04
 Aug 2021 11:46:48 -0700 (PDT)
X-Received: by 2002:a63:ed47:: with SMTP id m7mr548580pgk.194.1628102808394;
        Wed, 04 Aug 2021 11:46:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628102808; cv=none;
        d=google.com; s=arc-20160816;
        b=WTUmfadl3vfJpRuqMWKlKtAwRP1xtpeFDlqE0mIgD0RdNyB33NCFKjK76Xesm0Ge9Z
         gPaA/rD69p4+SAh0GHAlv4KOZ75IMxLtvu411MU+so+cCbEPKlqTvd4U4GJt67wKXBTn
         NmY2Fb19kmwI3jGZuIa+0B71Aj2WVfLw65c295nB/a4ruAmZJcJkNVEBwRN7y2UIZDFx
         zhrwnD8pGUkVCNztWCZ08M9OszDiNLmZZ7DHDe1KdVAm98S4ZibxIBVWuRDWy/DZ9OOi
         0osrWDGuVDZ+9T/rXA5Wuw6rrUji8Tj43Hk17LbyP6HgBMSS6GrmQE53fFZ416ZnVo5y
         MYYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gT1hAj8HGhUlhN78NyrpbFUut6+SrvxsCnIhVp0MksM=;
        b=GGNuW31H4kKjfj5pmi9jSYsi3sTvsZj8S//L/egn8peyKGVyOXAmB76xKyz6W05lD+
         JvpBZubJ9GACginw3s+xoyAHk+v6qxhK77Vrr00eomODLfrLT0KmiTX+S4lGB8vyzIQh
         WSlmLwtgkkjSTB/86OM0VbcT6jJjJY2L44phqklsS/x4AdvVIzgUy7r7l9ycM2iTat5c
         6XMajaGf7kDfykklJDdkiqeitQY0XAQSc6zHZc6gGJ6NcMNVPrLmc0eo3biWuR45HSl0
         4O4juI7HDRNTAc/Hw4zVHd9HTdvToZJg1Tb2D9KnMmSvLtVvVQ8tmrAaoT0gBrRN2pD2
         x4bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JnIFhgNF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si104123pls.5.2021.08.04.11.46.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Aug 2021 11:46:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8D20060EE9;
	Wed,  4 Aug 2021 18:46:47 +0000 (UTC)
Subject: Re: [PATCH 2/4] staging: r8188eu: Remove unnecessary parentheses
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Phillip Potter <phil@philpotter.co.uk>,
 Larry Finger <Larry.Finger@lwfinger.net>, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210803223609.1627280-1-nathan@kernel.org>
 <20210803223609.1627280-3-nathan@kernel.org>
 <CAKwvOdmMH6V1yK42Y9xBQX2+2UoCF38q5g=6NXVtk3EWNGz2oQ@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <a0453425-4907-a43e-dde7-112de434a2ec@kernel.org>
Date: Wed, 4 Aug 2021 11:46:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmMH6V1yK42Y9xBQX2+2UoCF38q5g=6NXVtk3EWNGz2oQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JnIFhgNF;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/4/2021 10:46 AM, Nick Desaulniers wrote:
> On Tue, Aug 3, 2021 at 3:36 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> Clang warns several times across the driver along the lines of:
>>
>> drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: warning: equality
>> comparison with extraneous parentheses [-Wparentheses-equality]
>>          if ((pwrpriv->rpwm == pslv)) {
>>               ~~~~~~~~~~~~~~^~~~~~~
>> drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: note: remove
>> extraneous parentheses around the comparison to silence this warning
>>          if ((pwrpriv->rpwm == pslv)) {
>>              ~              ^      ~
>> drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: note: use '=' to turn
>> this equality comparison into an assignment
>>          if ((pwrpriv->rpwm == pslv)) {
>>                             ^~
>>                             =
>> 1 warning generated.
>>
>> The compilers have agreed that single parentheses are used for equality
>> and double parentheses are used for assignment within control flow
>> statements such as if and while so remove them in these places to fix
>> the warning.
>>
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>> ---
>>   drivers/staging/r8188eu/core/rtw_pwrctrl.c   | 2 +-
>>   drivers/staging/r8188eu/core/rtw_security.c  | 4 ++--
>>   drivers/staging/r8188eu/core/rtw_wlan_util.c | 2 +-
>>   drivers/staging/r8188eu/hal/odm.c            | 2 +-
>>   drivers/staging/r8188eu/hal/usb_halinit.c    | 2 +-
>>   5 files changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/r8188eu/core/rtw_pwrctrl.c b/drivers/staging/r8188eu/core/rtw_pwrctrl.c
>> index d67eeb045002..598c32d7eaa5 100644
>> --- a/drivers/staging/r8188eu/core/rtw_pwrctrl.c
>> +++ b/drivers/staging/r8188eu/core/rtw_pwrctrl.c
>> @@ -219,7 +219,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
>>                          pslv = PS_STATE_S3;
>>          }
>>
>> -       if ((pwrpriv->rpwm == pslv)) {
>> +       if (pwrpriv->rpwm == pslv) {
>>                  RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
>>                           ("%s: Already set rpwm[0x%02X], new=0x%02X!\n", __func__, pwrpriv->rpwm, pslv));
>>                  return;
>> diff --git a/drivers/staging/r8188eu/core/rtw_security.c b/drivers/staging/r8188eu/core/rtw_security.c
>> index 2c1b9a6dcdf2..45fd8b1aeb59 100644
>> --- a/drivers/staging/r8188eu/core/rtw_security.c
>> +++ b/drivers/staging/r8188eu/core/rtw_security.c
>> @@ -1211,7 +1211,7 @@ u32       rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
>>          pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;
>>
>>          /* 4 start to encrypt each fragment */
>> -       if ((pattrib->encrypt == _AES_)) {
>> +       if (pattrib->encrypt == _AES_) {
>>                  if (pattrib->psta)
>>                          stainfo = pattrib->psta;
>>                  else
>> @@ -1454,7 +1454,7 @@ u32       rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
>>
>>          pframe = (unsigned char *)((struct recv_frame *)precvframe)->rx_data;
>>          /* 4 start to encrypt each fragment */
>> -       if ((prxattrib->encrypt == _AES_)) {
>> +       if (prxattrib->encrypt == _AES_) {
>>                  stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
>>                  if (stainfo != NULL) {
>>                          RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_decrypt: stainfo!= NULL!!!\n"));
>> diff --git a/drivers/staging/r8188eu/core/rtw_wlan_util.c b/drivers/staging/r8188eu/core/rtw_wlan_util.c
>> index 15edccef9f1d..4a8e52484cfd 100644
>> --- a/drivers/staging/r8188eu/core/rtw_wlan_util.c
>> +++ b/drivers/staging/r8188eu/core/rtw_wlan_util.c
>> @@ -1306,7 +1306,7 @@ int support_short_GI(struct adapter *padapter, struct HT_caps_element *pHT_caps)
>>          if (!(pmlmeinfo->HT_enable))
>>                  return _FAIL;
>>
>> -       if ((pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK))
>> +       if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK)
>>                  return _FAIL;
>>
>>          bit_offset = (pmlmeext->cur_bwmode & HT_CHANNEL_WIDTH_40) ? 6 : 5;
>> diff --git a/drivers/staging/r8188eu/hal/odm.c b/drivers/staging/r8188eu/hal/odm.c
>> index 0bc836311036..65a117408d50 100644
>> --- a/drivers/staging/r8188eu/hal/odm.c
>> +++ b/drivers/staging/r8188eu/hal/odm.c
>> @@ -1631,7 +1631,7 @@ void odm_EdcaTurboCheckCE(struct odm_dm_struct *pDM_Odm)
>>          struct mlme_ext_priv    *pmlmeext = &(Adapter->mlmeextpriv);
>>          struct mlme_ext_info    *pmlmeinfo = &(pmlmeext->mlmext_info);
>>
>> -       if ((pregpriv->wifi_spec == 1))/*  (pmlmeinfo->HT_enable == 0)) */
>> +       if (pregpriv->wifi_spec == 1)
> 
> ^ was the comment you removed important?

I doubt it, it looks like commented out code, which presumably means it 
did not work. I have cleaned up dead comments like this at the same time 
as cleaning up warnings in the past without any issues.

> If not:
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the review!

Cheers,
Nathan

>>                  goto dm_CheckEdcaTurbo_EXIT;
>>
>>          if (pmlmeinfo->assoc_AP_vendor >=  HT_IOT_PEER_MAX)
>> diff --git a/drivers/staging/r8188eu/hal/usb_halinit.c b/drivers/staging/r8188eu/hal/usb_halinit.c
>> index d985894c0f30..ec7badfd72aa 100644
>> --- a/drivers/staging/r8188eu/hal/usb_halinit.c
>> +++ b/drivers/staging/r8188eu/hal/usb_halinit.c
>> @@ -1300,7 +1300,7 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
>>                  StopTxBeacon(Adapter);
>>
>>                  rtw_write8(Adapter, REG_BCN_CTRL, 0x19);/* disable atim wnd */
>> -       } else if ((mode == _HW_STATE_ADHOC_)) {
>> +       } else if (mode == _HW_STATE_ADHOC_) {
>>                  ResumeTxBeacon(Adapter);
>>                  rtw_write8(Adapter, REG_BCN_CTRL, 0x1a);
>>          } else if (mode == _HW_STATE_AP_) {
>> --
>> 2.33.0.rc0
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a0453425-4907-a43e-dde7-112de434a2ec%40kernel.org.
