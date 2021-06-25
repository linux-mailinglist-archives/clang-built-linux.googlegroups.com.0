Return-Path: <clang-built-linux+bncBDPLL4MPIUIPT5GUQYDBUBDZ4HL3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5043B3ABD
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 04:07:54 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id l124-20020a6770820000b029025d866a613csf1781726vsc.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 19:07:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624586873; cv=pass;
        d=google.com; s=arc-20160816;
        b=xeTY5N1NwCImgnKVacpgYOHuLTSHH8cpDAZPsv1UqFMRcPeg5lui8aRqXx2TatKMc9
         bk23nB6FZ8G/2BDGAxs25EP7PwPjnev4YG1xPVvD04UtijlY6rC8z6Ssh7L8NZ/PT31V
         slNnhERCD+Dz5WaAoB0ROIOwyg75rL3f61JZeumxMvtTq2fl39dcQK03nAqYujiANWLv
         CHtpyI6H0TceZhWKTOsN+Gbw1/cxGC0IXuCWODpK3Po2wa0Q4LIYXdmkShzv2uB1rka/
         84cTw8h05Ss51GN8IUe4ftG9UTIy8ghEtOlrHPn6ob/b2rB7D23YPQXDRJHOxeFQ0nls
         Y5Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=O2sk/JtLdSMjxzG7tCP/mVG4xV3yBdJm9WLyNQSPa7g=;
        b=TR1wzvnQc15fjLitOGWK9Ngeg3VLRZ+rGhZxplzgYj+CuCwZaYBQfapoh4cztXDJr4
         jm1G5bZbudEDteINLefvcYFbDrh451gXdjjwYNJtfr0ZXUkVUTtB98MAhvi8NrhGzNN9
         RNw+uJzhmQK9ENi1ZyjqCjZON3tSihpVWFEFbAmW2u3EokPBZYTeiHDapsK3AR5Bad3k
         3LS5N2CMlbheI3PEydOF6N/LX5Q9XuCiKSBitQxhyIgQZISg590TSUdZVcnecBUezble
         csXPD1cv8oKxL7GR8IHyK2xkOXmd6VNE2IcSpkg+YL9SBwgUB+OyIKOhx9MAdjZel0tk
         Bsbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) smtp.mailfrom=g@b4.vu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O2sk/JtLdSMjxzG7tCP/mVG4xV3yBdJm9WLyNQSPa7g=;
        b=XK7Ss/85cdE+iLLj3j4PSvj7dA7iAAcs+7nMXKakNASag7PZ0TcDi9o4n0cB6gROLQ
         k88MFh3lobW3kqFFbYDXfCWDzKTeB8HVkTznQFAhcoq9e/Ek4Ven9Ggykutv1kZjD13M
         G+Vw+UpO9ds+5Tdi6HXRiVTUxtR7sin7ZGKMj1o50anjph4iP34ganCBa7Vcpq8a5osJ
         xP8+sbW46f9/0QM72aquWWVUlvyOJvocGtDPAMLuhffDDawaN5cTFrCVwkvUoxA4Lygs
         x78n1N2s2rB2NWx9KFDwrOucgCQsvKNKt0zDO3+hHsLqux4dz6XX3uAaBJIvId1vB1s0
         7nPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O2sk/JtLdSMjxzG7tCP/mVG4xV3yBdJm9WLyNQSPa7g=;
        b=oN3ximK5ybJ2cN8u8fn5iBAJqo7HU0NmDfiYVsfjXYUs7yG5G3fMWpqFw8rJM72xEm
         n+kapVlNmSmSrDQl5xHZHoDQAMEMCouPz/FIpf1JFIVs/no8VOcWd1nEkNDQD9CZYK8z
         r8HyoACaCk03L3jw44OBnwt/WFlFlYNXnZEtr570tJrxYYeY5S1upeQjHY9Xq47x0jAT
         o9ARSwMVrey4RcoO5ATASESCL+t7MMj//2xfY0ToccaAOth2BZYWMq5AK5QdnG0wET6g
         WhIs452qlyLvgE0btLVxPOwRZq8qI6m/j+D9a8HHt9KgieFDoZ31gjrLC7w467gjjMbN
         OADg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AVpTyvq8oh1cXV6BnZ/X86mfpT18evPMrgRdTBWJg9y0pyRiN
	7uqrkSnxZ9V5jxge1icXTMY=
X-Google-Smtp-Source: ABdhPJyAMJErr/BC59Nio7jGiaUYpHZKSYLAeHnQ+CePXlLPPSPnk43KLln/SCU77oeCjjFcHOvZug==
X-Received: by 2002:ab0:2118:: with SMTP id d24mr9483339ual.36.1624586873713;
        Thu, 24 Jun 2021 19:07:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e9d5:: with SMTP id q21ls2152415vso.3.gmail; Thu, 24 Jun
 2021 19:07:53 -0700 (PDT)
X-Received: by 2002:a67:cf84:: with SMTP id g4mr6693558vsm.23.1624586873161;
        Thu, 24 Jun 2021 19:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624586873; cv=none;
        d=google.com; s=arc-20160816;
        b=kyO0AwUlx7ldvCWdhshUZ4O3oVtv7n/C/N3DQsRe9DQfkogb1F8Erlo+okXSWU8AhO
         kmuofPHxl5Dhf/Cnw0TTcHeMy91djTBaUPUaUzRrdqKvTpMIu/+MjsO+7rlfzHe3oI89
         z+3HMjs0lYwwMjLRt9q2dxFnk2aqQ+FNNYaFCf4DTRCke+bm5pF2CGTpI2GvAkHCWozn
         D9/NyKo5s/cKMROM7sNPFT2ytTLrXqJz9TUPreIog+QVcwFuNCxHzDkBOq61wc5b/DR9
         4iq2GiOkGFla2TaJUf7oMjgsxhMIVbRCxKkNqsQ46VTSaU5zF3iwBx5U9J1PCQsRxW1U
         TMWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=vNTblVxVN8oM/4gXY22ov9uJQgqNxyCrQNkKvQDbono=;
        b=ihOoUMQDLJvEFR4eaPC4xDRSHH//C0TqmYxVETYqoOGeNqev70O1MuBdFuzZpuIEjo
         fkPTncw2SEplCbSWziYjn+Gz+HzpNrhvQa3R0CtPXV24AVzfPSW/mY45uiPD/WAVBb7T
         nUZvWJXp1kJPhJGoDKb28KRP8PJsfIj6qqIVR8BgMIVE9eGTzvHsMp2RsIdeWsyv5DDY
         k+EOjl1aMIgGBLYj28HOtdkgAF9p5H0erxajZCcTVZ0wdlRtcTTXD1y6tsqwmNDZm3ib
         htHJALwU+18gmg153RDUGr371Js4lJYu2/Db4FbhY6y8/JVRdbi8LRgzP3IEnLbP0LrE
         CE2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) smtp.mailfrom=g@b4.vu
Received: from m.b4.vu (m.b4.vu. [203.16.231.148])
        by gmr-mx.google.com with ESMTPS id a6si10235vkm.1.2021.06.24.19.07.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 19:07:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of g@b4.vu designates 203.16.231.148 as permitted sender) client-ip=203.16.231.148;
Received: by m.b4.vu (Postfix, from userid 1000)
	id 4094561E5F02; Fri, 25 Jun 2021 11:37:48 +0930 (ACST)
Date: Fri, 25 Jun 2021 11:37:48 +0930
From: "Geoffrey D. Bennett" <g@b4.vu>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ALSA: usb-audio: scarlett2: Fix for loop increment in
 scarlett2_usb_get_config
Message-ID: <20210625020748.GA21766@m.b4.vu>
References: <20210624212048.1356136-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210624212048.1356136-1-nathan@kernel.org>
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

On Thu, Jun 24, 2021 at 02:20:48PM -0700, Nathan Chancellor wrote:
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

look -> loop

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
>  		return 0;
>  	}

Thanks Nathan!

FYI: although incorrect, this caused no bug as there is not yet any
case where count > 1.

Acked-by: Geoffrey D. Bennett <g@b4.vu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210625020748.GA21766%40m.b4.vu.
