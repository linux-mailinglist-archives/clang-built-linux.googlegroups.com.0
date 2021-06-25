Return-Path: <clang-built-linux+bncBDPLL4MPIUIOHR6YQYDBUBAYTF5M2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E52B3B48E5
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 20:43:49 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id l13-20020a4aa78d0000b0290245c8f11ac2sf6330850oom.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 11:43:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624646628; cv=pass;
        d=google.com; s=arc-20160816;
        b=vwx2BbtDkbg7+YZuvzV0mBbjfS3rmuYTmg9FSY/8ztglN6knqZbHjm3iXHigBruaH0
         0SXuREvWUwBsGu+Cb3v6Q5jx3EnnA/RXyyOrH5aBa0sL0w80DCcVwVHeXYJ6QTefTgNX
         W4A2a9+JuX/smqn39Mq8MK+GXnf9F4OPWM8BvqqB5eXBW2WZlCBi+CvUONYo0JgnIKrj
         rhaDs7dNlYjnqAl1uD7YbRV0akxoqmEGmSIOxUiQFCjLO3CUXmgkpvzlvtgGUsnY4WM0
         O6fnafYsBUo2FTZd5SP2+TIjvK7WmzxYRXdgdaCA3Y2eWozm5ona5uOUG96Hs3PtVDUr
         lGdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+RrbFMgWiDLxM5Q49TGIaFy7Qtt2kWyoO322+EnISIg=;
        b=qwf66ao/7Bh3oz3Kg6Lw9UlZCgmxgL5GcubnKXB73aABSl8HMoElhcrP9Pp6oWF3IK
         DXL6DWuxD9QnlGSQRTPwCAwMY4srYaT5hFJxGNQfsfDmSPGzsVpJMDYYosQJNQtmvCXE
         mb+/hq/POlWap8cbrcleFnaNcbOzjjaGwmjJikC18qAXiKQ2FOMYqLp/po+FKS541AIn
         zIDQUTy+2BolRlfMCpn6OWkHsQtENmNAIK1VBhGeFKO/ecLmqv/OIS+X2ak+VDucMiez
         UZAoAU5efe/EtDtDqm4CjPauLymbTTMwKnmOXzthS1LTpWrv+GsuxDakT/mzGHBRVWvz
         DOSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) smtp.mailfrom=g@b4.vu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+RrbFMgWiDLxM5Q49TGIaFy7Qtt2kWyoO322+EnISIg=;
        b=ly+ItiaZJFgET/NrW1LHtkH3PyxkcnlwBhzPMrBkl3ywsaIROoGr4LRj4NQ5Ev12K+
         kA0BcjIdVM3ZdkgMj08BftA+D66kJwSKEYkWxzmW2pct6BSPzXpS40Rr+DHtF0VgZ/vT
         I8MsjuvIa7y6ICReJf2yhx/4+W+RFhh709syXY+h2Lat8Db1z6PjIBotu8rlUJqSkbPr
         NTdd0kMoq0IMcFgv/xEeMOmCRUHC6z8gI9LLMGwoEgFLcJU+eLFYJcBfMYwrLZfPCbms
         MbGWAzwUFujjzZW9L6Y7nm/rLJAg5Q2qXATCtjq5YTkJyY2I6EiivvWx7GHo6JqCQYpy
         XZQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+RrbFMgWiDLxM5Q49TGIaFy7Qtt2kWyoO322+EnISIg=;
        b=MOpkQsaFMupL5Q39tx14nzyJqUC3H8xyZAq806Rc5VR8Hl5FRyi6Pye+3xhHdLiddo
         dc7LW/AAIN2URvKl4UECzgqcnBQej3f+SZ4x1Nfqx/XXVKxmHyFfdwLEuqOI2F6L34yL
         ey+ol1ghMorWQQvmjio6TnbiaIU90m1raeuy8MJtEbygL37Z1H4o9sSQqMWJDXL7DqV2
         BH+76RBisvwdIQQ3XviDhOSXpYGq4VryRQ+m82Kn3rZyj+uILsJItQW/gCKFrGpnr9xr
         /uWtRVUzo5XDZE6D7DZ/p3XzuqWHbx4fRNoHJHaQLm5YyKLA7CKqDzIs2BbRy9SH32rG
         tr8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Rzvi6VnL1mTCktIofEOZjHbihTpjXuYNpOAYkNAnbbH2hMs4Q
	9CPCmIhmMGMsem1/K6oKx4o=
X-Google-Smtp-Source: ABdhPJzf3Hz0MChEFEYBeD/16Sx+0bP7ZOtJQ5l9bJbPTRcFhy+fDrls+0j3ZFIK6QqsLeibQGceMg==
X-Received: by 2002:a05:6830:33ea:: with SMTP id i10mr10634772otu.342.1624646628276;
        Fri, 25 Jun 2021 11:43:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f05:: with SMTP id t5ls3962502oib.3.gmail; Fri, 25 Jun
 2021 11:43:47 -0700 (PDT)
X-Received: by 2002:a05:6808:bd5:: with SMTP id o21mr9159700oik.172.1624646627638;
        Fri, 25 Jun 2021 11:43:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624646627; cv=none;
        d=google.com; s=arc-20160816;
        b=vWY42SBxBFbTK2IvhvQOErbvGR3+H0fQTQ6Al9DcA86RRtBrOA93p8ugP60L96GoT/
         xW29mdjLfIHqYSVyJFBmrY4m0ga0CEtowZjJGpNEqVaUvJAAiMLBkoFq3/8SfDKd82lv
         w2sRJWM6D48/EjJCqZWVqXi24KH0l0WayvcuVkIOX0iGj9MMDlFBNVCt78yOCeejzg8t
         Jlt/ih50ulLn3bq9WKm+jbTitPQ9xzI/jIwdWPQn+vQlVGYgWmyYmgSw0wD9rEN6cOe+
         ybHlzKedBWz7Qjhd70LILtZkH/f67hQsfF05Q1Vo8ZV2FoxnhdLI9mFRd1LRngQaM26M
         KynA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=GUEV7GwUx3/FhLLk+Ehnlopkx5GZByWDc0MJNMK+pw8=;
        b=cs05dEHKffGxVvsZclsLCH02YWHhhlimlxAqGpDWF61xaubgxHpLWJf936Y1CbNH5A
         L6HUw4od7fmuQu12DZaPzk0pEtWrD9xXSGRgCG66v+sRWBGf2vB8HZ83xMtdveZ54OTl
         aMqQPipVSLOZZ4Okv8m1tCnUxf8xeXktYAOPg0OQwXCBy71jYaUXSy+1BrZnqzJB1YSa
         zqwdCaQlGMkDPwAxKUAbucssdp7qKjRuH0MsjPmKf63KE4oi3bT1hI3maxhHCA7bx8tB
         W+dJ6a/DoRYBMkATluxpWeyorBGA7Oq3cPfT+v8r3ouU2m9IHSEv4GyStfFNv90PjhpR
         oStQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) smtp.mailfrom=g@b4.vu
Received: from m.b4.vu (m.b4.vu. [203.16.231.148])
        by gmr-mx.google.com with ESMTPS id g12si850754ots.2.2021.06.25.11.43.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 11:43:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) client-ip=203.16.231.148;
Received: by m.b4.vu (Postfix, from userid 1000)
	id EC5B861E5F02; Sat, 26 Jun 2021 04:13:42 +0930 (ACST)
Date: Sat, 26 Jun 2021 04:13:42 +0930
From: "Geoffrey D. Bennett" <g@b4.vu>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ALSA: usb-audio: scarlett2: Fix for loop increment in
 scarlett2_usb_get_config
Message-ID: <20210625184342.GA23780@m.b4.vu>
References: <s5heecql74j.wl-tiwai@suse.de>
 <20210625175418.2019892-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210625175418.2019892-1-nathan@kernel.org>
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

On Fri, Jun 25, 2021 at 10:54:19AM -0700, Nathan Chancellor wrote:
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
> the loop does not iterate as expected. This is not a bug in practice
> because count is not greater than one at the moment but this could
> change in the future so this should be fixed.
> 
> Replace the cast with a temporary variable of the proper type, which is
> less error prone and fixes the iteration. Do the same thing for the
> 'u8 *' below this if block.
> 
> Fixes: ac34df733d2d ("ALSA: usb-audio: scarlett2: Update get_config to do endian conversion")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1408
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> 
> v1 -> v2:
> 
> * Use temporary variables of proper type rather than casting, as
>   requested by Takashi. I did not include Geoffrey's ack for this
>   reason.
> 
> * Mention that there is not a bug at the moment per Geoffrey's comment.
> 
>  sound/usb/mixer_scarlett_gen2.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/sound/usb/mixer_scarlett_gen2.c b/sound/usb/mixer_scarlett_gen2.c
> index fcba682cd422..b13903bed330 100644
> --- a/sound/usb/mixer_scarlett_gen2.c
> +++ b/sound/usb/mixer_scarlett_gen2.c
> @@ -1177,17 +1177,22 @@ static int scarlett2_usb_get_config(
>  	const struct scarlett2_config *config_item =
>  		&scarlett2_config_items[info->has_mixer][config_item_num];
>  	int size, err, i;
> +	u8 *buf_8;
>  	u8 value;
>  
>  	/* For byte-sized parameters, retrieve directly into buf */
>  	if (config_item->size >= 8) {
> +		u16 *buf_16;
> +

I would prefer that the u16 *buf_16 declaration above be removed from
there...

>  		size = config_item->size / 8 * count;
>  		err = scarlett2_usb_get(mixer, config_item->offset, buf, size);
>  		if (err < 0)
>  			return err;
> -		if (size == 2)
> -			for (i = 0; i < count; i++, (u16 *)buf++)
> -				*(u16 *)buf = le16_to_cpu(*(__le16 *)buf);
> +		if (size == 2) {
> +			buf_16 = buf;

...and combined with the assignment here, like: u16 *buf_16 = buf;

Regardless:

Acked-by: Geoffrey D. Bennett <g@b4.vu>

And, thanks again!

> +			for (i = 0; i < count; i++, buf_16++)
> +				*buf_16 = le16_to_cpu(*(__le16 *)buf_16);
> +		}
>  		return 0;
>  	}
>  
> @@ -1197,8 +1202,9 @@ static int scarlett2_usb_get_config(
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210625184342.GA23780%40m.b4.vu.
