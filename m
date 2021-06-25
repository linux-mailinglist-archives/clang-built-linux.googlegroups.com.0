Return-Path: <clang-built-linux+bncBDPLL4MPIUIOB56YQYDBUBC6GFPH2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BC23B49BC
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 22:26:10 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id y1-20020a655b410000b02902235977d00csf6742486pgr.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 13:26:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624652769; cv=pass;
        d=google.com; s=arc-20160816;
        b=IuFh8XNZ6XW4PghrfZGpjpy7mmP0PVuSf0G4of90YYcKJ9OsAWKPfsTiIv15G/0+P8
         u4n/OnUcI3p6cjSLHq9he4rr97XNKBr94ncNgO2955a+Onof2CBb7EhNpfYdAE4D7SqI
         0KlU4yexSG+qy9cjfDSGhKZyeXfkYZXFYDLiqHyvvweMU49bBYUFpP2SFUivonBfr8zQ
         3EiQ8xz8u3M2/Dd5GFeZqvs8aqjFBLlB4953YbBvv+oj1NC9YiB6a3Fpy5RM77DztLI8
         03XfzrGs4SNQKaQwNtnCF42wVeUQqJ0Cj1/AL1wgiXautBMyqe5dF5pQIILO7DUUXl/M
         rcSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JcxoxOl7xom6OpYTWC0EVFBVgdgtHN+F9YQvU0GUrTo=;
        b=c+FUHjpo6ii1pmkkODkad67AJrGnGXWQbZGkbFvHT+ULWmBPPVKoPSFdAmlHuPKJrB
         gN+KUWhlpDsBsOAXEW4T35ol9BTWWuLLuW29AZKNC1efNWp2hyjAfWpNkoY03+Tl14uz
         ypELZNFYQJcqXvd73ucMD6s3XEMEDK5JXIjJYhB2d1byMS9fMK04kflA6SJ0SvHQMPnY
         u1CQXdPJweTYsadr+qv1j2NjXPuTVLnbpkpD0bqlaQeDr+hrQIabj9aaex8EUIVsNhod
         MNFhMikb/mwmjTZsNbyeEL2M8WR7A2xEbICnyfeUePgb8QzBuU7n2MZy4H3K/0rjNj7Y
         aedQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) smtp.mailfrom=g@b4.vu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JcxoxOl7xom6OpYTWC0EVFBVgdgtHN+F9YQvU0GUrTo=;
        b=VeDgYmUDoRZoSR908SZrz2NOeQz+M4wQlk6Y4doyvgKI0KB0xmuptDrPCXWrxsaqpx
         RaicrxvEKzJangFuHmBqbTDXocOOQOHPLUKL+heZcbHLO/WxoSpkGepsKuQ2K45rwsfx
         cdHYp3bam8/rI0R9fexVehqPZw7qcsVWsB0wJ5moTKWIWE6uDtu7OHdNRmHkHFsZmb92
         C8/HERG3eX1lPAaXdVvh8QHm2ZHv6vKFYVTnkUfOfpFsqpvrF7HAfLs1VKKJFoK+hGSv
         E8dRiZMpAKeH2kB1KXAnT7wbJFrvUmuiLNU7uD2+xptVM6Sg/takiVldB7K8cxDcw0SQ
         vioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JcxoxOl7xom6OpYTWC0EVFBVgdgtHN+F9YQvU0GUrTo=;
        b=CoPDWvtERA8NfNLrMgNhoakLVyRcRwKW08hsbtdobp8hZVD7n3SVwGXFiJOSdQdbsS
         0vee4nnP+4/vEt5UGKl0l9h/wgrWSFOCbY0rZdJprFrPGH1TS46T5VwJ0xM1VyF/yn2z
         WzQ3Ldyzkkyjbr1LE4vGJ5iZfj4pRxXuMsTrgbFc/wCtud8GtElZtPKhRr6rkmyvZwJp
         7/4ks1gvETohZ7vgWA0cIzpzQi7eg/OOBPp2ugWzMWKiTtVn0ArAC8Ac8k94AyGRbHuX
         eUe5wiHTftT2/zdS1uVRuDTfEeo2a3yN0FtNn/mDVJQuqm2eM2rtjpn/oGxFCO5Se0gJ
         31NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WAPua80h1juLr1T7Ml/XGZB4dCDtgw89dpZfs5P9QnpRuYWKW
	77lmlf0bIMbUpRfSvqaSkYc=
X-Google-Smtp-Source: ABdhPJw768s/KbygYLa4hzuGF0KFj6Ltn+KaHzeZ/kNOqR7XNcoWzsFj63h4NeDPj8YdkWc+DXv6Fw==
X-Received: by 2002:a62:2fc1:0:b029:305:fd1e:e3f4 with SMTP id v184-20020a622fc10000b0290305fd1ee3f4mr9428860pfv.17.1624652769054;
        Fri, 25 Jun 2021 13:26:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7747:: with SMTP id s68ls4740968pfc.0.gmail; Fri, 25 Jun
 2021 13:26:08 -0700 (PDT)
X-Received: by 2002:a62:5444:0:b029:2e9:c69d:dc64 with SMTP id i65-20020a6254440000b02902e9c69ddc64mr12035674pfb.32.1624652768267;
        Fri, 25 Jun 2021 13:26:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624652768; cv=none;
        d=google.com; s=arc-20160816;
        b=BLYwh9GTLfassP99KmDC8g2iDbAvaoz43lrQPj8h2+ksR6P2n0BdIbljkb/2syoEA9
         C2+rbiaHmUfaO5JP5fHuONvy0gnpyTzmSTiSX7aDN6JiOTocAN/QvywkTbCxH18dwkJD
         hH/67Jehx5G5Q3/LlUz84KvqGJI9yDfZlmzTdWu4eFN2dsvI2XXrFkRsCztVWRfsVpml
         mSCDO1W6QmApQ4M3Pjxa2KVUZOQQemzXpfvPvFDHhe/K1gRsZ26Gv31wuUhZu1F3J64Y
         1v/e7ktlXQG6UWIFMkGt/nlnLrDGxHA2dSfI4Vlqf73iv8Ifp3xCv2sM3WfxvHffMDqY
         KnNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=cv2GbKVqxhxE1zz9CP1sfClE8osSDgJl+AwA7DrBqw8=;
        b=mCo6oXuEnnP87SO+dVcaq+nquAQG6+d1xz4pM9exbE4U4n+svDGqmvflUyifcljS0a
         ZnUpHkoxbxxWRcCC709fta6xh+esia618Kh4hBb6kxpFwjtLkPYjr2Fb7//Ingxokak3
         98yZ4x1l4piLUA+X+szF3ysg3FeV/t8Z86OY8CbwKZnXe3pGOBiS+P8q1U9sgZCvmsLl
         uTzgyG5hcrzZygXCDyR4CGvFJLBcWXc0Zhz2SIiLIoFw07sUUP0MLa014oBVdrtvl/TJ
         DxG4Z5+r1eqlzPseHtBjggAFDBMNDkP4lOiNfZ7cM+clC1mUgKyCYUy9W20otk8j1fOK
         FQ2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) smtp.mailfrom=g@b4.vu
Received: from m.b4.vu (m.b4.vu. [203.16.231.148])
        by gmr-mx.google.com with ESMTPS id b18si528678pfl.1.2021.06.25.13.26.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 13:26:07 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) client-ip=203.16.231.148;
Received: by m.b4.vu (Postfix, from userid 1000)
	id E89B461E5F02; Sat, 26 Jun 2021 05:56:04 +0930 (ACST)
Date: Sat, 26 Jun 2021 05:56:04 +0930
From: "Geoffrey D. Bennett" <g@b4.vu>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4] ALSA: usb-audio: scarlett2: Fix for loop increment in
 scarlett2_usb_get_config
Message-ID: <20210625202604.GB23780@m.b4.vu>
References: <20210625200549.1061113-1-nathan@kernel.org>
 <20210625201150.1523987-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210625201150.1523987-1-nathan@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: g@b4.vu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of g@b4.vu designates
 203.16.231.148 as permitted sender) smtp.mailfrom=g@b4.vu
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

On Fri, Jun 25, 2021 at 01:11:51PM -0700, Nathan Chancellor wrote:
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

Your note about no bug which was added in v2 went missing in v3:

> > the loop does not iterate as expected. This is not a bug in practice
> > because count is not greater than one at the moment but this could
> > change in the future so this should be fixed.

> Replace the cast with a temporary variable of the proper type, which is
> less error prone and fixes the iteration. Do the same thing for the
> 'u8 *' below this if block.
> 
> Fixes: ac34df733d2d ("ALSA: usb-audio: scarlett2: Update get_config to do endian conversion")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1408
> Acked-by: Geoffrey D. Bennett <g@b4.vu>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> 
> v1 -> v2:
> 
> * Use temporary variables of proper type rather than casting, as
>   requested by Takashi.
> 
> * Mention that there is not a bug at the moment per Geoffrey's comment.
> 
> v2 -> v3:
> 
> * Restrict scope of buf_16 more, as requested by Geoffrey.
> 
> * Add Geoffrey's ack.
> 
> v3 -> v4:
> 
> * Fix stray newline added below
> 
>   if (config_item->size >= 8) {
> 
>   leftover from buf_16's declaration.
> 
>  sound/usb/mixer_scarlett_gen2.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/sound/usb/mixer_scarlett_gen2.c b/sound/usb/mixer_scarlett_gen2.c
> index fcba682cd422..161d832cafef 100644
> --- a/sound/usb/mixer_scarlett_gen2.c
> +++ b/sound/usb/mixer_scarlett_gen2.c
> @@ -1177,6 +1177,7 @@ static int scarlett2_usb_get_config(
>  	const struct scarlett2_config *config_item =
>  		&scarlett2_config_items[info->has_mixer][config_item_num];
>  	int size, err, i;
> +	u8 *buf_8;
>  	u8 value;
>  
>  	/* For byte-sized parameters, retrieve directly into buf */
> @@ -1185,9 +1186,12 @@ static int scarlett2_usb_get_config(
>  		err = scarlett2_usb_get(mixer, config_item->offset, buf, size);
>  		if (err < 0)
>  			return err;
> -		if (size == 2)
> -			for (i = 0; i < count; i++, (u16 *)buf++)
> -				*(u16 *)buf = le16_to_cpu(*(__le16 *)buf);
> +		if (size == 2) {
> +			u16 *buf_16 = buf;
> +
> +			for (i = 0; i < count; i++, buf_16++)
> +				*buf_16 = le16_to_cpu(*(__le16 *)buf_16);
> +		}
>  		return 0;
>  	}
>  
> @@ -1197,8 +1201,9 @@ static int scarlett2_usb_get_config(
>  		return err;
>  
>  	/* then unpack from value into buf[] */
> +	buf_8 = buf;
>  	for (i = 0; i < 8 && i < count; i++, value >>= 1)
> -		*(u8 *)buf++ = value & 1;
> +		*buf_8++ = value & 1;
>  
>  	return 0;
>  }
> 
> base-commit: 0cbbeaf370221fc469c95945dd3c1198865c5fe4
> -- 
> 2.32.0.93.g670b81a890
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210625202604.GB23780%40m.b4.vu.
