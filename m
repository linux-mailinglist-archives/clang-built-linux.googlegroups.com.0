Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBTWX6KEAMGQEVDPVFSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id CC23C3EFCFE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:42:28 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id r25-20020a2e7619000000b001b9769d3d54sf632023ljc.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:42:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629268943; cv=pass;
        d=google.com; s=arc-20160816;
        b=tnYCSYd1sVLGmDvJF6o1wqLRTkIfIEBSI1fYLmWe09O058kqZQijFZEVcqNQTkWpdE
         odR12kaKkUtgnZcvbFv8cr71DqDlbTISpJv2HKCELhPBQsyfM1NPZysyqEYEvDqTN8Q1
         HitxFKmmBCkePSY3BXIRBWoAtJ5JFkC0/K6mdkb4apUFTq2F8NVt6XnaTp18UpZSMCSM
         /LdP/PMBSPLIO9kIFBEmrwn/hSwFSCeleoKbOKwNy03RK/MjIsUm+IK2FSH91R1mKzrg
         Ki65FEFA7+7EmW/AZ4NNusfKPa3YCiGC/JXgtRdCu9p3V+1Sp3wLP2zmsN14qyb5ryhe
         QUkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=TaCxQQr++KEungI0muV8231NKGjlH+if879po5H4apo=;
        b=IfL+wTA8wemqXpg422+BnQNlECOo9d0IBUXHhzsQKvWDfBMZ25GUGbi+dYomMGhS8a
         XFMNEl7GR2TN/EV4ZjYlMQXWT6rhS8xD4eNeK7DgC/e/bsNoxONcfOKUDmPPNsyp3i4O
         HNu8rQPSFE20xC6QFyllyFeT1bPE1uwdgqx3/kb3qVEHyLiX6lj93BmbGziCwnbM36SK
         WTM4xMYBEtAmquSnz0vgwRk3SXbpQoHAcLsy+3jWLbtaQl04MAf82HWjZ2FkZpHEyWYK
         jKh8OoJh+9J0wduJ4cGgCaw6uZ2XJFBSUGcHrwXy4g/8bC+XxZ9slim1voOiZtCE/zyD
         KSfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TaCxQQr++KEungI0muV8231NKGjlH+if879po5H4apo=;
        b=Dm8d39FGxu1NaUrd91tH2133WasiHbNowihdORSgEiDAejgLjhikzj5Kn6RiUTLKKu
         xLBjKOuJZOobgmzKLgnJfsaRUZCcyCRx61YZfg7fGUhm0k/hXhKkSCOoxPJk9f8ScxF6
         3EaHX//OA7OGfRMf5qu2eDsqeb4d69nNqSOXQ09Y6RDXo9EpDkWzSQzoLpX279jUseju
         8cZEBgjaa5y/9M0aDnyRxhNaSG7iaFcPy1Y2QeiUP4ibEencBcC0FGZLiXWEmHs1dy6Z
         oGTJsmuSs2l2z25SqQ1wICMy7pIews3dpudii2WFcqZyAaxgkb580gXk0yJMJeMg6sMN
         V7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TaCxQQr++KEungI0muV8231NKGjlH+if879po5H4apo=;
        b=Hx54QVOCPQ7p0rQ9CUvVU2whtcD/3Ket3ie/BJYT0qctRd2IFSgc31UDQg0Kd25Iao
         C+So98yupv/Kdt6m894Z+eytOtQl3BF0wHhPwUDnDAWxXjRIuxB6UwjMh1aIWXqQqIS/
         7/QoAGGA1zJDS/Ra93vA6wDOLKyPS34OU7xp6aXEL3anakFXYBohwIPB12Kkx73zn5CG
         FRE17LyTYoaBJgW7ERChWmk0ysYvPBgYy6XA8OY7JqG9Ef5hvaBJw/Yat1kzOO/8QRNd
         6jqYnlEQM7NHxojcdXc5nZzGW0wAZ6H9my6OxilGBOFLaUYGA/kQQprfZs/vXH3Dg77z
         DGkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pcx5WnMkmF0sG8dv9aalWuUYY1lY+WmW4RVyRVZYAr1sfmh5s
	DecRipvgZmjE4QQDKBY1PH4=
X-Google-Smtp-Source: ABdhPJwlMKKOS2F/sNph5SL+at+BfQKlYqSRpkpR3mBpLruP27y+luZhReflxJ5EABJUmuCHKeVI6A==
X-Received: by 2002:a2e:84ca:: with SMTP id q10mr6616657ljh.490.1629268943154;
        Tue, 17 Aug 2021 23:42:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:15a3:: with SMTP id bp35ls625483lfb.1.gmail; Tue,
 17 Aug 2021 23:42:22 -0700 (PDT)
X-Received: by 2002:a05:6512:b08:: with SMTP id w8mr5223340lfu.400.1629268942011;
        Tue, 17 Aug 2021 23:42:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629268942; cv=none;
        d=google.com; s=arc-20160816;
        b=I142EPqtgTlhksDMP6AWJZT8WLQXdGhkgtLvl8lf/qOTWTAvgUcvX+Fv+Xihgh8NPv
         +qv8Yzi3/Tj3/gPcaEVMUTOu8+L+iBfPD+vSrPd42nkipTeMS0hP4/ksWDn178qkXQQx
         LaUUo/DqeL+DJ72ea3XikKGImU3aBoGxQIDX6TgoFANJGzCCEPd5ELrN7FYfUh3I9fEQ
         WSy1Bq8EBSlVHB404dNxMBwFsvcc1vE814MaxQ6U6JVzF0+tXLYL5tUrQ7V32XARItY2
         cD/EKYnjNVuaARxCRfz1WYmEEsIq3mWCo6TVYA81b79MvpnOAUB5wtoquEoiyFH+ZgJX
         ognA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=epuje0EsZZ/6rjFZdIxyWlZx4rZdiVZte1YqINoSUrg=;
        b=0YPCkzgu0lpG8XonB58oDb8grEtv6+igY/QYb+Tg6cqLOAuHbH46o2Y9DXIo+24MLH
         HqrS9a7W9U8jvt8miRjp8MyiffLuKWYJFzMpqFq3hn+sPQEi1ydROCTW63LMDHKyR+v/
         J4wJvr2cqRIkZjGerqEKjxpWl9ram86zFbY9jvqIe2w8aBZ7peiDzwpSafdn3BFtUFy3
         paYiFajI1KfQQQ3lb8DdU/OwoSbCgmywrVyu6nZBNEj0jG8vsNk/EDiiJozUIf9lSe0Y
         ssSYhvbJHFDWDKDMM9Yg9ekAbYvIVdN8TcCXHULB6WwNIv+6eRAPbXsXyaf0JsOhGGiW
         NV8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id x17si199533ljp.0.2021.08.17.23.42.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4GqJH06ckGz9sVX;
	Wed, 18 Aug 2021 08:42:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BlboCUcmPLhC; Wed, 18 Aug 2021 08:42:20 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4GqJH05SCXz9sVD;
	Wed, 18 Aug 2021 08:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 9988E8B7D3;
	Wed, 18 Aug 2021 08:42:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id KISUn5YdRZul; Wed, 18 Aug 2021 08:42:20 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id B20628B766;
	Wed, 18 Aug 2021 08:42:19 +0200 (CEST)
Subject: Re: [PATCH v2 61/63] powerpc: Split memset() to avoid multi-field
 overflow
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wang Wensheng <wangwensheng4@huawei.com>, linux-staging@lists.linux.dev,
 linux-wireless@vger.kernel.org, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Qinglang Miao <miaoqinglang@huawei.com>,
 linux-block@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-kbuild@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-62-keescook@chromium.org>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <7630b0bc-4389-6283-d8b9-c532df916d60@csgroup.eu>
Date: Wed, 18 Aug 2021 08:42:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210818060533.3569517-62-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 18/08/2021 =C3=A0 08:05, Kees Cook a =C3=A9crit=C2=A0:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
>=20
> Instead of writing across a field boundary with memset(), move the call
> to just the array, and an explicit zeroing of the prior field.
>=20
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Qinglang Miao <miaoqinglang@huawei.com>
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: Hulk Robot <hulkci@huawei.com>
> Cc: Wang Wensheng <wangwensheng4@huawei.com>
> Cc: linuxppc-dev@lists.ozlabs.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Michael Ellerman <mpe@ellerman.id.au>
> Link: https://lore.kernel.org/lkml/87czqsnmw9.fsf@mpe.ellerman.id.au
> ---
>   drivers/macintosh/smu.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/macintosh/smu.c b/drivers/macintosh/smu.c
> index 94fb63a7b357..59ce431da7ef 100644
> --- a/drivers/macintosh/smu.c
> +++ b/drivers/macintosh/smu.c
> @@ -848,7 +848,8 @@ int smu_queue_i2c(struct smu_i2c_cmd *cmd)
>   	cmd->read =3D cmd->info.devaddr & 0x01;
>   	switch(cmd->info.type) {
>   	case SMU_I2C_TRANSFER_SIMPLE:
> -		memset(&cmd->info.sublen, 0, 4);
> +		cmd->info.sublen =3D 0;
> +		memset(&cmd->info.subaddr, 0, 3);

subaddr[] is a table, should the & be avoided ?
And while at it, why not use sizeof(subaddr) instead of 3 ?


>   		break;
>   	case SMU_I2C_TRANSFER_COMBINED:
>   		cmd->info.devaddr &=3D 0xfe;
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7630b0bc-4389-6283-d8b9-c532df916d60%40csgroup.eu.
