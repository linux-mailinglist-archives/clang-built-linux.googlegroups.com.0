Return-Path: <clang-built-linux+bncBDD5ZFHSSQARBXWEX33QKGQET6SY3ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DEB202BF7
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 20:09:35 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id g14sf2345746wrp.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 11:09:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592762975; cv=pass;
        d=google.com; s=arc-20160816;
        b=HOWXQNJf6RmS6u6DnBmz5Ka4lPcq5yj0XYlH6FVCj7KKf2r0KT+8xD8RQx1AciR3oS
         P81sRu2UjXVaSxqzpY5HQyFIzMqdbkf9ZvkneaZLEcJQmg742MoJAld9+buqhyeiwWyY
         +T6zZA5YH36bjiLjYN98VN5Dh/Vc/hUWk/qm+kDITlSb3IVyOU0GcqpKFVVqaBCiq+7K
         v0c53axTU/Y35kSqtW5iknmvqRRD10667yGQaHV5KvHUtdER6u/jKcQDXJTq8v0E11h5
         VwTKCXEt7+u+JWOPXig/3AnXpoIHPAbGhejcPQXTbt1x2/Zg2kVI5jkOVGZCjnXW/NiJ
         iAnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=Gyp6EufBdWPnRfZ5xObVJoeUxQqymMDZ+8ye7zk59ok=;
        b=DXdub9Z/V0wSaIM1UZ89POgx8Nn9jmWZLaSJhsxMV3uey9aiej85WUPMR764PJrhKa
         yPBrLvKu0dhByGxpOg+Fp79IHlGrI6sweZCeCZvgBq8iUB+qDrtOBtBlJRzkc06h4PAi
         I4kd3gFlExBW8OjsJk/71rnFlc5lR8O8LVSw8nxWAipfu3jFsw2pyWGGlYYndszLJzh+
         T12OBqM1cJTNe6g8qPWq8Uiz/gd4xOGLiNeWK/hlmY2g7CtHAOWG/x54NP8zkPdWbSXl
         jD2usD29Xyc+loNhsb0bJoSrZeZljxCqw4PFh3UKsL+c7Q/ZubOub+Vk8VUxGZsqbm2S
         hVwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gyp6EufBdWPnRfZ5xObVJoeUxQqymMDZ+8ye7zk59ok=;
        b=V5x6qAIFdYwS15OfVjaHBfMVBOGD3rza3/myJD8xZWBw1xRDnQH1CBRAiwY7azNniZ
         xN4pON9PxMq/hetrTlQHUKA4djuLMccA92O5tsnmFvSSnV3n76MahbmrA2oT/26T8oOm
         pLu6crsJrsiOQUY06tUnQe15A6rSSYlnmq0VGbPSU6hcG3hVMaWMeZgpcQyZbKIcALNM
         jp0SqKy/Q8k6+34oI/RuYf9sYdx+uNzmyuA0MkMT8eqcZG6yYpBeDru0shk1kE5LVaXO
         m3lUNxKFXT52i4oF5lUf8AId8zg+vST2ycvlpsjxdkEWWJtVHFaiIPVcpRIZy9tM3Fha
         GNeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gyp6EufBdWPnRfZ5xObVJoeUxQqymMDZ+8ye7zk59ok=;
        b=qmBMKj8VwOLiSOizq13I+VoA04M5sk6Kf5y7NiKjqEllCRfp+lXz+pViSpTNXfrunc
         WOozXx6jrqiJzqbFR+yvjfwL+P3jmkCWRht2bSp4eGtcpXpDdKZW5nwASS/MIBsnhUrT
         klusees3lGLR1tn40Vgx1Jst+DTt7sREHHK9HZNo3UAjynCjIfGe9GyTfC5Ya1zG5gaa
         /ONIKOUQcjSOJFzbhUObI6x3rpTsmsWuyuJKzltIlyXcqS9tY3fAqje9f+12yT8IY2Ab
         iJFKv7Bk68r8B72h/BHaYYKY/Ijbk3Nek1QIp5EGPj3ZU+QlDg5IiXzk3fDqEnM0Yp8Q
         t/gA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305RhquihS6T0BxKVG3QbPO0np6tRTMURNOgqt+4YQzbgyyvs7V
	Ph7zN95twCLrO7TNW90V+Ds=
X-Google-Smtp-Source: ABdhPJx830NHLirzChko0thAt/7kqoRNZ9dDN3wupL1MtZGGd6IArnvlPGWZsktjHlfnNGJ1Eo2neA==
X-Received: by 2002:a1c:a949:: with SMTP id s70mr8839850wme.137.1592762974979;
        Sun, 21 Jun 2020 11:09:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2885:: with SMTP id o127ls2243530wmo.0.canary-gmail;
 Sun, 21 Jun 2020 11:09:34 -0700 (PDT)
X-Received: by 2002:a1c:4086:: with SMTP id n128mr8324049wma.118.1592762974507;
        Sun, 21 Jun 2020 11:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592762974; cv=none;
        d=google.com; s=arc-20160816;
        b=YnTSeYihhWVsRF+XrtrzJIZMPMpC5ZFWxjIW71+XXuVRqn96JTIDp+4qqkKwKW58hN
         6jrx4SyjJhOca4i0wu/o4Lhc9PBhSP9NolZSZmZ1gHnRDUrQK7CmV/oUgCiQt6ykPz0Q
         3DHHs3u8aBedDlaFTcr/QX0DoVHuKL85n6Vt/Dod73OzxV/Af9IWuX+WNJvq7Pnpcdr7
         i9hPFy8aXg68+qbuV7dOQIpLXGoSthvRtVnsf6OJ5zby8JA95GFeJjrbJZTmcjlkL6NF
         N/r4KgIFaDB9Naf9oFp6gpUDTQ+BcexzuAsj8266M51//cIYx+gKxGRZQe9cMrDUTBsQ
         YRjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=j4US/rTcvsu7qC8RpvZfnfSYmu3C/VcMCDFdf7NNKBw=;
        b=JWSYSFFwA1r8ERGk0ODLCtoIWb9OBCjvhidJKbT6omdxyQNHc+OuLrq5qp88xY9ArM
         CNp0DkMDtTrjEzh4l9WDpmvagX1rAe0pTjNwsxIYnNKQlGP23lRdXeX3VenrK7dhj6na
         IgVEtEFSFlP3LWn7MO//Qw6E+rwfA6yEoE3Ga0qnjNmnuxjsTiFHWDQzv/ZAqP0GeOns
         VUKwfYnCRYygj2/ooCD1gnqi5m5amv/Awvgs3ASS8nRBc1j8uLsOygsFyuEWjU+I/xm6
         xPQKDcC3lsE6974D0ChoH7vIIXfbkdOlapPIWcXpqhV5v9nUnwTDR9afibkqOIQsL3zc
         cUvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [78.46.175.9])
        by gmr-mx.google.com with ESMTPS id 14si255922wmk.1.2020.06.21.11.09.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2020 11:09:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) client-ip=78.46.175.9;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id D2B2D467EF;
	Sun, 21 Jun 2020 18:09:28 +0000 (UTC)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/process
To: Joe Perches <joe@perches.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
 Tony Fischetti <tony.fischetti@gmail.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>,
 Will Deacon <will@kernel.org>, "Chang S. Bae" <chang.seok.bae@intel.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Kees Cook <keescook@chromium.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Jacob Huisman <jacobhuisman@kernelthusiast.com>,
 Federico Vaga <federico.vaga@vaga.pv.it>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
 <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
 <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
 <2c60a30eb1fd3616fccd496e76d3d1cc54afc732.camel@perches.com>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <61b1a32f-e49b-6667-6fe3-d4348b7cf38c@al2klimov.de>
Date: Sun, 21 Jun 2020 20:09:27 +0200
MIME-Version: 1.0
In-Reply-To: <2c60a30eb1fd3616fccd496e76d3d1cc54afc732.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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



Am 21.06.20 um 19:42 schrieb Joe Perches:
> On Sun, 2020-06-21 at 16:30 +0200, Alexander A. Klimov wrote:
>> Am 21.06.20 um 15:46 schrieb Miguel Ojeda:
>>> On Sun, Jun 21, 2020 at 3:37 PM Alexander A. Klimov
>>> <grandmaster@al2klimov.de> wrote:
> []
>>>>               Replace HTTP with HTTPS.
> []
>> W/o a
>> such central "rule on how to HTTPSify links"
> 
> Maybe:
> ---
>   scripts/checkpatch.pl | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 524df88f9364..4e49187a6137 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -3115,6 +3115,12 @@ sub process {
>   			}
>   		}
>   
> +# check for URLs using old http:// links, suggest https:
> +		if ($rawline =~ m{^\+.*\bhttp://}) {
> +			WARN("HTTP_URL",
> +			     "Prefer URLs using https: over http:\n" . $herecurr);
> +		}
> +
Good idea!

>   # discourage the use of boolean for type definition attributes of Kconfig options
>   		if ($realfile =~ /Kconfig/ &&
>   		    $line =~ /^\+\s*\bboolean\b/) {
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/61b1a32f-e49b-6667-6fe3-d4348b7cf38c%40al2klimov.de.
