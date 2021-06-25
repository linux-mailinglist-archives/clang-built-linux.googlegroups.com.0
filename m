Return-Path: <clang-built-linux+bncBDOMDVMI5MBRBLUT22DAMGQEGCZ26II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B43F3B3DE0
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 09:45:51 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id t7-20020a2e81470000b02901477fea061csf2904854ljg.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 00:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624607150; cv=pass;
        d=google.com; s=arc-20160816;
        b=hu5os/mVuS5jbHcttK+ebs5W1jvsOUbQjOj87jfB5CwWpCbQ5TbFKrtjwJq4wg635O
         boRV08ALBv6p+Ijxxn7e9BLjW+JFbRdxbkRBO8638qgZ4JNhP0PUxmi5ae2ZKXHZ+Fze
         m+r2U2nlr+p/NppnBBS+No/mTnL8EAlznDPDOd2H9uxITD5L9J141maNY2zWGOwcBpvu
         kQB3rghA8nHxCpxBR/CTMPJoQA/SOtLpz2lnPw3txTaYOqtFUgnbv+lzd3M6TLDy+Lki
         BH33lpPuiilnSXzJsCjV9FhiQU6yVE9AWcaOWAHdZ/PC612tvEh+nBhqN19eHGRxJNHn
         2Bkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=PjkEEDENCVf00QAz+drTJt6COuoZ5b2zzuUbpr1b6j4=;
        b=I442pBAcSDUmwmbxGr5Fl+xDj1ypwhYyeeMqxdWv1Q4gVDx7BuwyJft1VqJnX3/dDQ
         KqucrcX62EuM5Z8pczjU6uMO6nf3DQ8QoGSeavtPO7PcxMZwBJKLtzo8Ak8UMqBpYbrc
         yprWbgnA3jDwBHk29InTUYb27pjyhiO8E4yGvSgrj7mckfDjMhPxXeRdilQwBfcAQ4eR
         cweeJhtYsnw/Z1i5dlqIgUu1TJzYb+KWbLazP05ia0cNyaFluX5w+/LkbBmtrmS2XIdz
         4k7ZxBuSiTeBf6KxXH7jiyV01x8l232ChjHs2ss6jzjQIu274YOGDs2l16SSVaskwWDj
         myCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="M7+xz/a9";
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=tiwai@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PjkEEDENCVf00QAz+drTJt6COuoZ5b2zzuUbpr1b6j4=;
        b=q8KUhQx5CRdOCqxt9VxJgjq7Dw5+z99kckrV7ruWEEF+S/zFjRIrJ0Z78ZlRAhMiw2
         9VgH1DwbQO0gHH18T0Rn1xQfk6z3e3MJpuv5QHQuWpRj7pe9vnx3WPUUw/wjhe6V+urx
         gXHNDjVS12hdZH+OrWhuAGDZUVN6V+m0K2LerA5tahNrhMrQ3dRIBE53/wedlVNRnYCV
         BNV13n7chex1yOwDBb52fa29zB6LyXJU1WJAvrqsZmQ3nsr2LBoPcGKWb/kHTjy86cEF
         OkCUnBa/8ihqjRtCMDldCDAXvKbLVeiratW2tmhGiLiWPLstI+PVJaQFuw1NdRLiLJLH
         cF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PjkEEDENCVf00QAz+drTJt6COuoZ5b2zzuUbpr1b6j4=;
        b=lVixSF35lhg6qQjRJKWbTZgF+pXXJq39Ohk2/O+kRq3EIngdcZlicn6StALQJ0t908
         T3RVA+83cuRzZF917BG+gBFXkTGP3RjGIzKdVbQYyg3eUXwYxcRX9PfX8NyvmaP5ENls
         kmZJXb9IqmiZl3u4IHKeKWhDAdh2auU+ML3pN2VdHotTM1rdgWCwy68WzmgizRXe8F+z
         45eqOxb4BVzodDET9a5RpnPmtzUxpI55dA5jsKCxO3fX/cpcE4I4pK/Dfpuj/RdTxGjm
         xil+ubRJWWCYvbRGf4d1CTxJDCZAJmQ7C8wzv6rr7vI7fv8KyqDJNi/85qCPrZP6lSC8
         M8/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IM8qAwv9Rlw796H2tdx5+9stPoClwDLUprz54hliiuiVMBkl2
	QwZhrLasqn+wmuxqwtw7YVU=
X-Google-Smtp-Source: ABdhPJxSiSJGKej3BSAZHXOIOK/1lO3sPn2/VSk/KJ834AIRpqvhQSlpP5Ui2hG3W6GudTCht6T/JA==
X-Received: by 2002:a05:6512:169f:: with SMTP id bu31mr7077842lfb.486.1624607150637;
        Fri, 25 Jun 2021 00:45:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:46c6:: with SMTP id p6ls2371709lfo.3.gmail; Fri, 25 Jun
 2021 00:45:49 -0700 (PDT)
X-Received: by 2002:a05:6512:260a:: with SMTP id bt10mr1045805lfb.100.1624607149496;
        Fri, 25 Jun 2021 00:45:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624607149; cv=none;
        d=google.com; s=arc-20160816;
        b=DVGkYd7v4rGQSm6Ncly5HoCZEIn0jyiTsMC6MMNWY+ec4kfV+H9MTxJmPb2H7jky6v
         6vXQIHsGpOSqFO1u7liSDDIukXdUEFCbzqt0+7SUaIVxO99AYZXP5EWhcvRg39yQy7ah
         ribCaBwl1ywX5X9jLKLMN/FbIkW9vENruXSLH7oPQR8PyCtQg8YHTlb1q2gUpaiWcVug
         LVLGi3/E1D8dVpQpcUX1FObn8rOtqh5QuC7E1gLQo4BmI+/CmUEyUqTBwuIA5PLzfjlQ
         cfDuwxzs0tDKlsMcjIFVpS7bahC209jufOYLA+q/fzxqJhidkXCx51KYzsyfg9Qtxfzo
         YwQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date:dkim-signature:dkim-signature;
        bh=36BBIWb4P8ecW+8XwIEeqQKz0t/gusqeVesShI9xHg0=;
        b=y+qp5i1Vp4xJHFDtIslNovLsiPibdPSFb9pYrdLSvwmNN8gKllnbyUrM9VSe+Qinmt
         zvL6apNPUvhWfwLuj2/9jl9BkSXHLksWKKntloDfr5urh/F9lmxx8i1q/z/kWUs/kshk
         fGeYsCay++ssPDxw+JjH8lk87Hu89rduVRTiDWa+fOLrE0V+GnlZVlwPDeLSQmxz/Lw1
         U/iWilrA1UCwh4MRDrkcKBbm6W/TFvD++e5jO8EcQwbII7DT8cQ8eLvXPga9GuLjXB2e
         JYToWxTtcc+YKMfy4QaM3iq+kbvb53T2k5FahNWCJ3Qpt4MMkwLTnE6V/5qn447fwqC/
         ERZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="M7+xz/a9";
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=tiwai@suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id b43si178605ljr.6.2021.06.25.00.45.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 00:45:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of tiwai@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id D16311FE44;
	Fri, 25 Jun 2021 07:45:48 +0000 (UTC)
Received: from alsa1.suse.de (alsa1.suse.de [10.160.4.42])
	by relay2.suse.de (Postfix) with ESMTP id BBF10A3BB4;
	Fri, 25 Jun 2021 07:45:48 +0000 (UTC)
Date: Fri, 25 Jun 2021 09:45:48 +0200
Message-ID: <s5heecql74j.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Geoffrey D. Bennett" <g@b4.vu>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ALSA: usb-audio: scarlett2: Fix for loop increment in scarlett2_usb_get_config
In-Reply-To: <20210624212048.1356136-1-nathan@kernel.org>
References: <20210624212048.1356136-1-nathan@kernel.org>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tiwai@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="M7+xz/a9";
       dkim=neutral (no key) header.i=@suse.de;       spf=pass (google.com:
 domain of tiwai@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=tiwai@suse.de
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

On Thu, 24 Jun 2021 23:20:48 +0200,
Nathan Chancellor wrote:
> 
> Clang warns:
> 
> sound/usb/mixer_scarlett_gen2.c:1189:32: warning: expression result
> unused [-Wunused-value]
>                         for (i = 0; i < count; i++, (u16 *)buf++)
>                                                     ^      ~~~~~
> 1 warning generated.
> 
> It appears the intention was to cast the void pointer to a u16 pointer
> so that the data could be iterated through like an array of u16 values.
> However, the cast happens after the increment because a cast is an
> rvalue, whereas the post-increment operator only works on lvalues, so
> the loop does not iterate as expected.
> 
> Replace the post-increment shorthand with the full expression so the
> cast can be added in the right place and the look works as expected.
> 
> Fixes: ac34df733d2d ("ALSA: usb-audio: scarlett2: Update get_config to do endian conversion")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1408
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  sound/usb/mixer_scarlett_gen2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/usb/mixer_scarlett_gen2.c b/sound/usb/mixer_scarlett_gen2.c
> index fcba682cd422..c20c7f1ddc50 100644
> --- a/sound/usb/mixer_scarlett_gen2.c
> +++ b/sound/usb/mixer_scarlett_gen2.c
> @@ -1186,7 +1186,7 @@ static int scarlett2_usb_get_config(
>  		if (err < 0)
>  			return err;
>  		if (size == 2)
> -			for (i = 0; i < count; i++, (u16 *)buf++)
> +			for (i = 0; i < count; i++, buf = (u16 *)buf + 1)
>  				*(u16 *)buf = le16_to_cpu(*(__le16 *)buf);

That's still too error-prone.

Could you rather introduce another variable of u16 * type, and use it
instead?  Ditto for u8 access for the code after that, too.


thanks,

Takashi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/s5heecql74j.wl-tiwai%40suse.de.
