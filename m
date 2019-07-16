Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVESXDUQKGQEFR3LSLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9BD6ADA0
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 19:28:53 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id f28sf18726045qtg.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 10:28:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563298132; cv=pass;
        d=google.com; s=arc-20160816;
        b=wFS0l006EdUYJX6mzKVmFffRV/HOrcGKhktUossJBkydBKdbT6riwlfhtMwZd9QhxC
         c4hxcsmVMZhP2mevB9jCvApC9NLaQAQva47q6xJUoVT5Z8uVnP2c5c/hHFMOEQWPYCyg
         dSCD97A7ogg591dL71Hs6hAkICPrrL2KsJnUGRpzoob27xaXxazG36tvvaGiQ4/nuMv+
         FkRU/pIijk+ugyFsIcP+iQl2Z5yWtI+UucK4d0xEftI9cLCGkwdg7UAvtv7uCMMJPFWY
         3bL3jGnTEIEqz+hNOgDUOdnznJEqy0EyR9dPVGvB77dYPgSXO2my97AHoEKrSN0VlC2X
         OEYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k87FOkgWigwgVa2dihvptyqABnQufBU/a5LqxCPt9b0=;
        b=TXj8MJIDjFsUvQZAyNt0KHuwsGhMcxuuVz15ABZuRZVqMpyqsj9CXAEyxSK0eb7TkT
         HpZmb6r167pLyeErcpJRNWISbWySxu64G2CLUBdR9sdAhMzu0d6nPXDwtmHJlekaWwHU
         DeeLa4ZbZT7J7viNn5BXsHqvdfza2JvUFTMaNT20vRclBUbdwy1POa7+f4iYRPNd65VC
         ZgOo2p2HzKhbUwMQI8g7inDnM0q/NaQe6FknbkRVIUrqyAp8chg+d9qEYFLWWnb33CRO
         ObJyFbp7b5z5tGdcOfwjzIDw2ENsr8V0SojbRqPozfLZ3N6yj75XdYomJsIYBcEyP0RY
         3S6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h1+V62UQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k87FOkgWigwgVa2dihvptyqABnQufBU/a5LqxCPt9b0=;
        b=Fdr5+vxMnKek043inM7/9H19yIOq3koNzcePI7rzHdUwaoJhoAA295x9+/kQzLehGu
         RRSAy3UN4P5kYPlh8D9+ROvG4bsAPokoMP5wWbmLHxEFuht4+HnC5ketjCQYl7iLe5QX
         m59BoJCeYktY5dCXX5vMdxVpBrhBT8IssU3zt2wwJlBRhbMj8x6+oVwzYPXKYeVe9s4I
         i5NxyvbQY0nStUaH7RqR6RniGithDTM74NKlKqE3lX9+NEynS2STBOXfBepFpoiAGcag
         zgr0UVR09OKL4DXrz9aW3ZoIaQ2ZIwTDDMYHgpkDuPMU1z1kfbc944An9HpvPn1fmnXK
         2wTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k87FOkgWigwgVa2dihvptyqABnQufBU/a5LqxCPt9b0=;
        b=Lq58QdLa5MtpKReQKfUrJSw0hA1+gsfQw/4zf3E2CxQuI4fyZ4H8+aRGgF67HzpI3r
         GEZ7iYHi0rZCt8A/aHHTPqz3KPsE9p8QHLrepc29ArRFY2k60YZjebd40mwqmSA2y0Iw
         2884oGeL3NxPbW1wiaHOCpTEcf0reL1epupznTNNDsHNsH1IMbNQnvFUXO/sB6GoN00K
         6kbSVHyjidzBbKUuOoO1n4d9ue6DQBt2RFCLUSXc5rdnljh8buXYOB1gcAnhGxR38gLv
         HcquI+gEu3Iiz848yeBd+AbfYkt6RRChPI/A5id9N9MUykW1Hw3LkTD4sWaBVJbh85UH
         /SwQ==
X-Gm-Message-State: APjAAAX5eihFqMchEJ7/gajO/ZDPoBKZFrJgqEzNmcs/cbb0Uw+wtPVx
	0bCyovNAB3LAD1R5AxERIxg=
X-Google-Smtp-Source: APXvYqwCFE2n6hQ0qpq68baVecO7b3Q0qFCGPMTN4rQS/mGaaPYpBxoGZG+iypwjH7stKKe5G49z0g==
X-Received: by 2002:ad4:490c:: with SMTP id bh12mr24213776qvb.59.1563298132334;
        Tue, 16 Jul 2019 10:28:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5d4:: with SMTP id 203ls6571363qkf.10.gmail; Tue, 16 Jul
 2019 10:28:52 -0700 (PDT)
X-Received: by 2002:ae9:e84b:: with SMTP id a72mr23247815qkg.355.1563298132050;
        Tue, 16 Jul 2019 10:28:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563298132; cv=none;
        d=google.com; s=arc-20160816;
        b=AdQJqP+GQRgZDU8C+D3oKeSWz/0SOqZI4ZVMSqji4aU35Wqno3qFMm54Du9Std/9UA
         Z2GU7UP0mjgdsWjXvPV1ZJua7lVAJL1njADT9BZRTsupBwNrxUOYKp1cJSfTPrdVCxZN
         MSMq6hveSf2DzVDUrkgz5oN7km6DuDG9qQTm80rHywHnTFYKAibziZBrmI3MpAZUpRRJ
         ZcaNGwTR4Len906OTbS4QbTjAZeSJ0lRI2TqP0baVB+J4AV+dYRzAP3LKjHFfgQR/tcI
         KXz0IHegEuEOtWBN/poeW1wHC3kSA8fy/m2dgNoC3m9kCK8VJWX8I80EbbNaYT61D2Yw
         sBuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FdipyjVpCY6f56Xd4OimbS+PX/++xiAeJwdsr6JXrj4=;
        b=hjo7sY4+eyaZQhdLrJsZffECPijeaSCRsWhqOt1B2o0QJw4ez3ZNP3KLkeej56swaM
         9f2MlzPAdP3yjX7YDRW3KmapGbGFSpS5J00BrQs5HSwDis4wzlQiwoi2qL3ioooDzKe9
         exbg3QgmUbQstRxduIaBr9v3olhR/9rodPmRgCPkrdfJl7G994EMnoYxxQ40v+VX2pTP
         QLgREEZufrVWopQL5EmUYVyiQKbaIgpnUNxuDWZA4ZWZi6uKt+ASG/rs2IIEDBAy0vZf
         8ISFkMWNhyWD60NlBHChSDS3ctrkOgIhbt74Shs0QEu4+yE61UHr5r9clFlkeFZWZaR6
         FXKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h1+V62UQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id c79si921136qke.4.2019.07.16.10.28.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 10:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id i8so9756000pgm.13
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 10:28:51 -0700 (PDT)
X-Received: by 2002:a65:5687:: with SMTP id v7mr36183069pgs.263.1563298130577;
 Tue, 16 Jul 2019 10:28:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190712001708.170259-1-ndesaulniers@google.com> <b219cf41933b2f965572af515cf9d3119293bfba.camel@perches.com>
In-Reply-To: <b219cf41933b2f965572af515cf9d3119293bfba.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Jul 2019 10:28:39 -0700
Message-ID: <CAKwvOdkD_r2YBqRDy-uTGMG1YeRF8KokxjikR0XLkXLsdJca0g@mail.gmail.com>
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
To: Joe Perches <joe@perches.com>, Kalle Valo <kvalo@codeaurora.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Johannes Berg <johannes.berg@intel.com>, Emmanuel Grumbach <emmanuel.grumbach@intel.com>, 
	Luca Coelho <luciano.coelho@intel.com>, Intel Linux Wireless <linuxwifi@intel.com>, 
	"David S. Miller" <davem@davemloft.net>, Shahar S Matityahu <shahar.s.matityahu@intel.com>, 
	Sara Sharon <sara.sharon@intel.com>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h1+V62UQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Jul 11, 2019 at 7:15 PM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2019-07-11 at 17:17 -0700, Nick Desaulniers wrote:
> > Commit r353569 in prerelease Clang-9 is producing a linkage failure:
> >
> > ld: drivers/net/wireless/intel/iwlwifi/fw/dbg.o:
> > in function `_iwl_fw_dbg_apply_point':
> > dbg.c:(.text+0x827a): undefined reference to `__compiletime_assert_2387'
> >
> > when the following configs are enabled:
> > - CONFIG_IWLWIFI
> > - CONFIG_IWLMVM
> > - CONFIG_KASAN
> >
> > Work around the issue for now by marking the debug strings as `static`,
> > which they probably should be any ways.
> >
> > Link: https://bugs.llvm.org/show_bug.cgi?id=42580
> > Link: https://github.com/ClangBuiltLinux/linux/issues/580
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  drivers/net/wireless/intel/iwlwifi/fw/dbg.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > index e411ac98290d..f8c90ea4e9b4 100644
> > --- a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > +++ b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > @@ -2438,7 +2438,7 @@ static void iwl_fw_dbg_info_apply(struct iwl_fw_runtime *fwrt,
> >  {
> >       u32 img_name_len = le32_to_cpu(dbg_info->img_name_len);
> >       u32 dbg_cfg_name_len = le32_to_cpu(dbg_info->dbg_cfg_name_len);
> > -     const char err_str[] =
> > +     static const char err_str[] =
> >               "WRT: ext=%d. Invalid %s name length %d, expected %d\n";
>
> Better still would be to use the format string directly
> in both locations instead of trying to deduplicate it
> via storing it into a separate pointer.
>
> Let the compiler/linker consolidate the format.
> It's smaller object code, allows format/argument verification,
> and is simpler for humans to understand.

Whichever Kalle prefers, I just want my CI green again.

>
> ---
> diff --git a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> index e411ac98290d..25e6712932b8 100644
> --- a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> +++ b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> @@ -2438,17 +2438,17 @@ static void iwl_fw_dbg_info_apply(struct iwl_fw_runtime *fwrt,
>  {
>         u32 img_name_len = le32_to_cpu(dbg_info->img_name_len);
>         u32 dbg_cfg_name_len = le32_to_cpu(dbg_info->dbg_cfg_name_len);
> -       const char err_str[] =
> -               "WRT: ext=%d. Invalid %s name length %d, expected %d\n";
>
>         if (img_name_len != IWL_FW_INI_MAX_IMG_NAME_LEN) {
> -               IWL_WARN(fwrt, err_str, ext, "image", img_name_len,
> +               IWL_WARN(fwrt, "WRT: ext=%d. Invalid %s name length %d, expected %d\n",
> +                        ext, "image", img_name_len,
>                          IWL_FW_INI_MAX_IMG_NAME_LEN);
>                 return;
>         }
>
>         if (dbg_cfg_name_len != IWL_FW_INI_MAX_DBG_CFG_NAME_LEN) {
> -               IWL_WARN(fwrt, err_str, ext, "debug cfg", dbg_cfg_name_len,
> +               IWL_WARN(fwrt, "WRT: ext=%d. Invalid %s name length %d, expected %d\n",
> +                        ext, "debug cfg", dbg_cfg_name_len,
>                          IWL_FW_INI_MAX_DBG_CFG_NAME_LEN);
>                 return;
>         }
> @@ -2775,8 +2775,6 @@ static void _iwl_fw_dbg_apply_point(struct iwl_fw_runtime *fwrt,
>                 struct iwl_ucode_tlv *tlv = iter;
>                 void *ini_tlv = (void *)tlv->data;
>                 u32 type = le32_to_cpu(tlv->type);
> -               const char invalid_ap_str[] =
> -                       "WRT: ext=%d. Invalid apply point %d for %s\n";
>
>                 switch (type) {
>                 case IWL_UCODE_TLV_TYPE_DEBUG_INFO:
> @@ -2786,8 +2784,8 @@ static void _iwl_fw_dbg_apply_point(struct iwl_fw_runtime *fwrt,
>                         struct iwl_fw_ini_allocation_data *buf_alloc = ini_tlv;
>
>                         if (pnt != IWL_FW_INI_APPLY_EARLY) {
> -                               IWL_ERR(fwrt, invalid_ap_str, ext, pnt,
> -                                       "buffer allocation");
> +                               IWL_ERR(fwrt, "WRT: ext=%d. Invalid apply point %d for %s\n",
> +                                       ext, pnt, "buffer allocation");
>                                 goto next;
>                         }
>
> @@ -2797,8 +2795,8 @@ static void _iwl_fw_dbg_apply_point(struct iwl_fw_runtime *fwrt,
>                 }
>                 case IWL_UCODE_TLV_TYPE_HCMD:
>                         if (pnt < IWL_FW_INI_APPLY_AFTER_ALIVE) {
> -                               IWL_ERR(fwrt, invalid_ap_str, ext, pnt,
> -                                       "host command");
> +                               IWL_ERR(fwrt, "WRT: ext=%d. Invalid apply point %d for %s\n",
> +                                       ext, pnt, "host command");
>                                 goto next;
>                         }
>                         iwl_fw_dbg_send_hcmd(fwrt, tlv, ext);
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkD_r2YBqRDy-uTGMG1YeRF8KokxjikR0XLkXLsdJca0g%40mail.gmail.com.
