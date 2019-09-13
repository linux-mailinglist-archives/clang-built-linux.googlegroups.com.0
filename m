Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBYPI57VQKGQENONGG3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4C4B264C
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 21:56:18 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id h6sf1669235wmb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 12:56:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568404578; cv=pass;
        d=google.com; s=arc-20160816;
        b=nxKWAdXRkncdVnu5ihrR5/lCz36VdoeiL9VxYmQwxKiqRlpjQZ9SzDHP91pWEutTmZ
         WVG2gwlALVHkQQNl1uYKiUXZN4KF8OoySQLWpYh5txEA6zJ58f1qcU/afoEpZ+1miFmX
         ZAfDl6r3CNyxG0TV7FqKiiLo5800XgLDIukHQr+y4nfjVp4TPbVDVadms76ClmD1PjwL
         RvPTGpuJGvqY29hwgSYrddKhRkrxbugILXxmgQpBAtGvVISHMFWmfidm2jv34MhDTUYO
         5ZE1RS0yeLk+PDSM2HLlo2FYrQ09ptLOdJrB7f6cUeOiS1p5mp+0w29fl6WZHB3yoYok
         GL5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:mail-followup-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=0fCBWuiC5XAIxPyX56eTAOfM0jNPGlncyw+wFFc+NWE=;
        b=Ke7g3noOOcpBE8p8xM5jS9/gUAfSXPTXesDkhXUCDvvarKhOOw0rW0Vs5/cq4zI3Pt
         GMBGSWqlfJ/+bDwWntPIn0krDCJqta7qgvY8MKmTQuDcXPA72kEIIeuVP9tIsDdZfWQ/
         kOroh5wmd6gRu1HW3eqwj0NfBjBb7SK/NHBpqmPmiVCu+zKWK/tlL/oesIYU6DnmYC6I
         ob0ArmmyMNp1ABYL+6LSj8ZtEyXHSxmP/LkPTepkeNHypPOuGK1pbvPTWsZyDJwKcBVG
         jIeHBCfaYmgu7R2b86uUDy+O2ieVdW81Qy6yXn3GxkRBHRzKiR9der0C3dIdPCwbcxGt
         wUtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Lv802009;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0fCBWuiC5XAIxPyX56eTAOfM0jNPGlncyw+wFFc+NWE=;
        b=RT/0418p9iaCTiIF2aDbVMAeMsHJ7OOdYW4FGBaC/OI0YFCkDea0E0Zm1xPmGvjebL
         +0bOrHhzmWvAVWCKMSK74anY24RTabPO/bNZEYzDyb6PgDMlR5oe8kX68/LZhvLzoAn4
         sSdFfBSh/BffA1HMuymDs3xraDUT3SBAL7yi80jR4w/TIIKpRA9osxtd7FFa1qc67jmw
         KO7zkJ6YfpJER5bvii+cZoBn3qp2NXyu5vPhXeNQ6ockvFTZgK/qBlf1Cgh2awUMBXtL
         A+GapGmQuSFWBCxNsfyz2hr+0qxOH0lYcKYWZ30b9zTtv3ObqY89epeK7qBpD2un0ltq
         SCuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0fCBWuiC5XAIxPyX56eTAOfM0jNPGlncyw+wFFc+NWE=;
        b=UsdVTqEdk56Tv1wLX+5L1SRVWe0JJWBtBIdEwoM7316tOmiUnloc40ZU6jdv7PI4C4
         A4piK+yenbcQJYqM6ut3aCikmw5gWhK2pspagtZMQp+N/W6Rfzz6YtVEUnhzCxNG2GO4
         yZpRh3fw+nde6n0vISxcrH8exy7UgCoJ+R66Yvdkvz1xhElkZvIVxvaeluDRF6UNwqy5
         tljFqF89T4i+D0mt6rcgc0scaJXK3EXD79jsT5FFdFqUbXZPuLVjtM3ONPpC/gHFtu4b
         0b+mL9SEKt+PhpRbnBswzZzykCFgW8+v5Ib2Eerjt83nuasGZvPl/8iQCk8tuHT9GC5a
         Ab1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdsfpG+/fg+cCztzw0XmcMd+3YxQbM0X7FG07Od2FZtfJb1VX+
	OP9+Qm299/xfQQmyJuGI0V8=
X-Google-Smtp-Source: APXvYqzeL2EBbC9zCAZo16iCmcVU/7YMMggR0lYMjMT3nVQmrgeJkknz7Xixrexg3tIyIUfGQkYVDg==
X-Received: by 2002:adf:e4ce:: with SMTP id v14mr8480127wrm.15.1568404577977;
        Fri, 13 Sep 2019 12:56:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:e709:: with SMTP id e9ls1735134wmh.2.canary-gmail; Fri,
 13 Sep 2019 12:56:17 -0700 (PDT)
X-Received: by 2002:a7b:ce94:: with SMTP id q20mr4738732wmj.97.1568404577578;
        Fri, 13 Sep 2019 12:56:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568404577; cv=none;
        d=google.com; s=arc-20160816;
        b=sRD/mPQGrirWHD5waQcU9YvCLR22UYhArx9IttIQ6j8vvg4qwYhebM73vEn0zeD5ql
         TSYiiAY5L8dz92mG9zW9l5zuke5T9CWjJyatcFiU00ot0DMMxnnP2rgOsKKF3ftbAow9
         5O7GXE/4hepV0PnXjqPR7C7C4tUP05V346rbBLUA3Xu0BL85Q390KnksVS2koykIY9bJ
         YpWpRvBAvPMEhN0QrztJIDRhpCfNCRlO4+iR7Yp+72k0SN10TzMkeNXLPw0cyjlyWirB
         p2ofvKMq6z5fblkrRdNfQmBgTfcSydh+nMWqC5cg1yF8zYTA6Op9hcvxXtUEtcmsXW/B
         yE4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YangW0nZxTvuxMasR2T71zvAAP15OctV2hgPwvy27lg=;
        b=EEh7WowppflNCJ0kwyUczOEfFvan2ID0mycl5dNFV/ZIRO2Bz4K36ZNP5AW/1X8W2M
         xErm7ElXRPnzBRxj0vCkgFKqU6U1pRt3Am6D4IV0TyYAameWOwRSw0zOD3G2zDG65z6E
         AowUKLsXeqHha5hkM+uxfvpE9fUx40nxhQllGGmUL0EZnbqNfLlYJsK4OLXhceLnb421
         g16+Nri+ug773hJMqhO3F8u9ULnZQzacSCsfQ3bdnreW9wRqoHx6uT336ikUZAUiM1kt
         7/n/jtLGMUzViEw6SZwz52GGb14AlzM8cmx/y0cOCOayA2s6HOblyBH10vFg4nmTq/Z0
         CnoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Lv802009;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id s194si191374wme.2.2019.09.13.12.56.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 12:56:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id q64so17720453ljb.12
        for <clang-built-linux@googlegroups.com>; Fri, 13 Sep 2019 12:56:17 -0700 (PDT)
X-Received: by 2002:a2e:7801:: with SMTP id t1mr16881585ljc.140.1568404576977;
        Fri, 13 Sep 2019 12:56:16 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id p8sm6581687ljn.93.2019.09.13.12.56.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Sep 2019 12:56:16 -0700 (PDT)
Date: Fri, 13 Sep 2019 22:56:14 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 01/11] samples: bpf: makefile: fix HDR_PROBE
 "echo"
Message-ID: <20190913195612.GA26724@khorivan>
Mail-Followup-To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
	ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
	davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-2-ivan.khoronzhuk@linaro.org>
 <55803f7e-a971-d71a-fcc2-76ae1cf813bf@cogentembedded.com>
 <20190910145359.GD3053@khorivan>
 <4251fe86-ccc7-f1ce-e954-2d488d2a95a9@cogentembedded.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <4251fe86-ccc7-f1ce-e954-2d488d2a95a9@cogentembedded.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Lv802009;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, Sep 11, 2019 at 02:02:11PM +0300, Sergei Shtylyov wrote:
>On 10.09.2019 17:54, Ivan Khoronzhuk wrote:
>
>>>Hello!
>>>
>>>On 10.09.2019 13:38, Ivan Khoronzhuk wrote:
>>>
>>>>echo should be replaced on echo -e to handle \n correctly, but instead,
>>>
>>>=C2=A0s/on/with/?
>>s/echo/printf/ instead of s/echo/echo -e/
>
>   I only pointed that 'on' is incorrect there. You replace something=20
>/with/ something other...
>
>>
>>printf looks better.
>>
>>>
>>>>replace it on printf as some systems can't handle echo -e.
>>>
>>>=C2=A0 Likewise?
>
>   Same grammatical mistake.
Oh, will correct it next v.


--=20
Regards,
Ivan Khoronzhuk

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190913195612.GA26724%40khorivan.
