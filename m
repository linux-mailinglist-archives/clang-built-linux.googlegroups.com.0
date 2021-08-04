Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEFFVOEAMGQEJTBX4GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 552673E06EA
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 19:46:57 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id k6-20020a2e92060000b0290199022fba24sf617131ljg.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 10:46:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628099217; cv=pass;
        d=google.com; s=arc-20160816;
        b=rTV+bovUSm7nSDjF/GfJEyoDFl3R1b8FSuLqcCYAKwVnT2fXK4079Jj71xIyP1hTWE
         YbPL2MsaO9lcnyhIfrp5CF5XxCIEKBKpNk5HGXliDJKv2M9PQMLfNL8neoHEJAzpg90T
         hfCecVcAt1Z3YLW0sHMtWoKkvkUHmphviz+lvYLuYgzPxkcWm1Z/Wx2SEQ4Vbmt78y1K
         Ib2DczBjxFSDHWQTy5XXpjmMxbcYkt64bdlW9wAE7Msuib4Ed8CyF3e4K5lHTS6TeqyW
         tkGfyjm/C54zz7/waTx/wShkfuey9IXRhpyA/92pMhk5fpmhPo68cGf1WMDkKOKn1apf
         tc2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CGeqbu7cTNg5OjltsAJ6L+LWhkGAFKS7KYC1Fi634o8=;
        b=DYMG36dmf8kQ5Lsgtr38Ko9oJufdsoeY/hHDu6JSrtjsBveNCFkxhd1RwxTR7fjb3j
         HFW6Wj0WcC0kWxjlWrYkhMI3x5fseAoBlNkLlicG86wYTothwhTg1j/e+/Sa6HM40h6P
         TO/uI18+Df9g7y6JiYEXZAxDSpQW07y1A6eqEwJD3IMARCk32NaoiTJz/PK4trU6TWZI
         eWBUn3yWASOkM+8Em1lUY4b6ZKtZdRqUj/YXbWmu2e1yW5TlZDXAM5Tcf2VEROOxg+Zd
         c0foBzcx7udUKabqEPu+SkSGPsKTtARF7k3SgzsVOywrSsX999PQuhC4NzfXhpK0cXUP
         cWQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RRWCky2C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CGeqbu7cTNg5OjltsAJ6L+LWhkGAFKS7KYC1Fi634o8=;
        b=ZyfNvIi/n6IIXjDgm9QgxegpOJv9AYps5k846xDSgLz/cw4xu/zJtc2lWt+41S7T8k
         cmXPjps3WMIir7Fr4zYZW0kbegcSjBIV0CdhgeGiF+D0utGz+CJgic02vJwBr/KdEc2M
         YDCfDFMPrDSOolox4NWyEhEGd0aCbFiVuOBWXgyze9gTyl1if++gYhJ2BUiz2IUGHtk6
         bqw43RZKaYOIfWXg5CbFep4SbVpZCQMQcirdFE912ndZxIuPc/Rn7L0KpOnpjsRnQOUa
         KatBVJbFubFZC7Q0mKCDEWEkqnoXR+o6AyFR3SPVj6yujrUeNaeI4Z3Xsd2QEFA3RgL2
         AYBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CGeqbu7cTNg5OjltsAJ6L+LWhkGAFKS7KYC1Fi634o8=;
        b=VXKvAD4rS7/0wVKpY2d+NxF0BE66XXBZIDbXFcyawfDIA4JzC/CMNRReTMyKyWN6nL
         t+9aWWeM6v86UEeBiVD6ZWJcY0KZtpWiazQgVxQQNT1diZoZsVwzgX3XqU2VWevGvCs6
         B2efDRtRitBGgGzVMB/Y2TmaMgkHt4cNZV4eSem3G5dUbpMOOAd1W05Lpa+5UFPYo4qy
         CjT45KOBokSy8wXJ2rdNwH5B6q+T06YEfymr0V0cjXfnsO1f8yV0pGooSWRlZk+/jW6/
         qgXmqFRiK68tSJRTRrXZ/M8MDvzusQYnD6l2nFfZ5BaMkw0ViN2c4z0Rd0IfQdLetGnx
         wyQQ==
X-Gm-Message-State: AOAM5325QT8LM0SANMr0qk9Ic9WVMTvA5OSLLyylQ5vGfeGf28kOQlko
	Lu7pYJRDro/Bw3Bxlmjm+Yw=
X-Google-Smtp-Source: ABdhPJz/mwMU106wTlyLrsXxwQNeDysTJAYcbvWfGOk0uatweP9PRApOI2xlHUcXgY9G8Q+8W1Khfw==
X-Received: by 2002:a05:6512:e8e:: with SMTP id bi14mr271950lfb.191.1628099216775;
        Wed, 04 Aug 2021 10:46:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a167:: with SMTP id u7ls484133ljl.1.gmail; Wed, 04 Aug
 2021 10:46:55 -0700 (PDT)
X-Received: by 2002:a2e:8057:: with SMTP id p23mr62802ljg.80.1628099215767;
        Wed, 04 Aug 2021 10:46:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628099215; cv=none;
        d=google.com; s=arc-20160816;
        b=j1D9nuyBlYybcrjxscjGGKSq9/dPlLWqd8Wi9cPJroecHUlRh3CrzLsc70yy+elI2i
         gZurCeZ0Mbw5L7kGs3XTNRuRnCwz6Asi0msgVhKUKgD+rZ2I+NC0jR/XM0C9Bii9DISI
         dULTiQIuOqP+gQ84ZvbOvEt0I7vKdlJDvcUiueCFuRbqV5t6tZdP1rlZIHsPJ75cqwXn
         5D+kH4JRgP4cpjFSrMu+Fl3wgsw30QHsG2Ltt45p9qcGSbD5GdX5LD14hZ1gmDps/lkO
         xU8bK/uv/UQY8mRhpxHupG+Mek8SsxEy9A16ouaCrPuyg8eAUh7vFX9zJizacFxq7bKF
         lZXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i0fTnqSIwvP+B7/OhEc8RR4PahnQd+RFyLdkyhqe4Tc=;
        b=fwtP7Fd8iNwDBKuuQR6vg+gUWyDAqp9i9LgBzwObMrqNS0eOBn3WjPoeaerBfZDHzJ
         SZQ+0CTc+2u8+5ZItlxWrCu2+hxYUr07cB9gjniFBoFdYRCGBPjuZSutyxljVkw5kCW0
         J9G9YKr+sB8ijWWHxWQQaGUNtrWwElUvJ2B980Ok+LeXpGaE5/9jh94LfkhwFUoB0zhV
         LvfhV3d93V2YT0nP4wGQVdJwmzwyGA1amQEh/1KmeG+7jR1UY1cwxsq4AB8NT9D7S6QV
         YUAyhDlwt0qo2N9b0krUUvPxzcuM9u8JO1aFM0Ml1wIRGcSSDa50rO/Zkh9xYp2jTeiY
         UhWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RRWCky2C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id x17si141821ljp.0.2021.08.04.10.46.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 10:46:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id t9so5836982lfc.6
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 10:46:55 -0700 (PDT)
X-Received: by 2002:a05:6512:71:: with SMTP id i17mr297370lfo.368.1628099215326;
 Wed, 04 Aug 2021 10:46:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210803223609.1627280-1-nathan@kernel.org> <20210803223609.1627280-3-nathan@kernel.org>
In-Reply-To: <20210803223609.1627280-3-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Aug 2021 10:46:44 -0700
Message-ID: <CAKwvOdmMH6V1yK42Y9xBQX2+2UoCF38q5g=6NXVtk3EWNGz2oQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] staging: r8188eu: Remove unnecessary parentheses
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Phillip Potter <phil@philpotter.co.uk>, 
	Larry Finger <Larry.Finger@lwfinger.net>, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RRWCky2C;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Aug 3, 2021 at 3:36 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Clang warns several times across the driver along the lines of:
>
> drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: warning: equality
> comparison with extraneous parentheses [-Wparentheses-equality]
>         if ((pwrpriv->rpwm == pslv)) {
>              ~~~~~~~~~~~~~~^~~~~~~
> drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: note: remove
> extraneous parentheses around the comparison to silence this warning
>         if ((pwrpriv->rpwm == pslv)) {
>             ~              ^      ~
> drivers/staging/r8188eu/core/rtw_pwrctrl.c:222:21: note: use '=' to turn
> this equality comparison into an assignment
>         if ((pwrpriv->rpwm == pslv)) {
>                            ^~
>                            =
> 1 warning generated.
>
> The compilers have agreed that single parentheses are used for equality
> and double parentheses are used for assignment within control flow
> statements such as if and while so remove them in these places to fix
> the warning.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/staging/r8188eu/core/rtw_pwrctrl.c   | 2 +-
>  drivers/staging/r8188eu/core/rtw_security.c  | 4 ++--
>  drivers/staging/r8188eu/core/rtw_wlan_util.c | 2 +-
>  drivers/staging/r8188eu/hal/odm.c            | 2 +-
>  drivers/staging/r8188eu/hal/usb_halinit.c    | 2 +-
>  5 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/r8188eu/core/rtw_pwrctrl.c b/drivers/staging/r8188eu/core/rtw_pwrctrl.c
> index d67eeb045002..598c32d7eaa5 100644
> --- a/drivers/staging/r8188eu/core/rtw_pwrctrl.c
> +++ b/drivers/staging/r8188eu/core/rtw_pwrctrl.c
> @@ -219,7 +219,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
>                         pslv = PS_STATE_S3;
>         }
>
> -       if ((pwrpriv->rpwm == pslv)) {
> +       if (pwrpriv->rpwm == pslv) {
>                 RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
>                          ("%s: Already set rpwm[0x%02X], new=0x%02X!\n", __func__, pwrpriv->rpwm, pslv));
>                 return;
> diff --git a/drivers/staging/r8188eu/core/rtw_security.c b/drivers/staging/r8188eu/core/rtw_security.c
> index 2c1b9a6dcdf2..45fd8b1aeb59 100644
> --- a/drivers/staging/r8188eu/core/rtw_security.c
> +++ b/drivers/staging/r8188eu/core/rtw_security.c
> @@ -1211,7 +1211,7 @@ u32       rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
>         pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;
>
>         /* 4 start to encrypt each fragment */
> -       if ((pattrib->encrypt == _AES_)) {
> +       if (pattrib->encrypt == _AES_) {
>                 if (pattrib->psta)
>                         stainfo = pattrib->psta;
>                 else
> @@ -1454,7 +1454,7 @@ u32       rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
>
>         pframe = (unsigned char *)((struct recv_frame *)precvframe)->rx_data;
>         /* 4 start to encrypt each fragment */
> -       if ((prxattrib->encrypt == _AES_)) {
> +       if (prxattrib->encrypt == _AES_) {
>                 stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
>                 if (stainfo != NULL) {
>                         RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_decrypt: stainfo!= NULL!!!\n"));
> diff --git a/drivers/staging/r8188eu/core/rtw_wlan_util.c b/drivers/staging/r8188eu/core/rtw_wlan_util.c
> index 15edccef9f1d..4a8e52484cfd 100644
> --- a/drivers/staging/r8188eu/core/rtw_wlan_util.c
> +++ b/drivers/staging/r8188eu/core/rtw_wlan_util.c
> @@ -1306,7 +1306,7 @@ int support_short_GI(struct adapter *padapter, struct HT_caps_element *pHT_caps)
>         if (!(pmlmeinfo->HT_enable))
>                 return _FAIL;
>
> -       if ((pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK))
> +       if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_RALINK)
>                 return _FAIL;
>
>         bit_offset = (pmlmeext->cur_bwmode & HT_CHANNEL_WIDTH_40) ? 6 : 5;
> diff --git a/drivers/staging/r8188eu/hal/odm.c b/drivers/staging/r8188eu/hal/odm.c
> index 0bc836311036..65a117408d50 100644
> --- a/drivers/staging/r8188eu/hal/odm.c
> +++ b/drivers/staging/r8188eu/hal/odm.c
> @@ -1631,7 +1631,7 @@ void odm_EdcaTurboCheckCE(struct odm_dm_struct *pDM_Odm)
>         struct mlme_ext_priv    *pmlmeext = &(Adapter->mlmeextpriv);
>         struct mlme_ext_info    *pmlmeinfo = &(pmlmeext->mlmext_info);
>
> -       if ((pregpriv->wifi_spec == 1))/*  (pmlmeinfo->HT_enable == 0)) */
> +       if (pregpriv->wifi_spec == 1)

^ was the comment you removed important?

If not:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>                 goto dm_CheckEdcaTurbo_EXIT;
>
>         if (pmlmeinfo->assoc_AP_vendor >=  HT_IOT_PEER_MAX)
> diff --git a/drivers/staging/r8188eu/hal/usb_halinit.c b/drivers/staging/r8188eu/hal/usb_halinit.c
> index d985894c0f30..ec7badfd72aa 100644
> --- a/drivers/staging/r8188eu/hal/usb_halinit.c
> +++ b/drivers/staging/r8188eu/hal/usb_halinit.c
> @@ -1300,7 +1300,7 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
>                 StopTxBeacon(Adapter);
>
>                 rtw_write8(Adapter, REG_BCN_CTRL, 0x19);/* disable atim wnd */
> -       } else if ((mode == _HW_STATE_ADHOC_)) {
> +       } else if (mode == _HW_STATE_ADHOC_) {
>                 ResumeTxBeacon(Adapter);
>                 rtw_write8(Adapter, REG_BCN_CTRL, 0x1a);
>         } else if (mode == _HW_STATE_AP_) {
> --
> 2.33.0.rc0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803223609.1627280-3-nathan%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmMH6V1yK42Y9xBQX2%2B2UoCF38q5g%3D6NXVtk3EWNGz2oQ%40mail.gmail.com.
