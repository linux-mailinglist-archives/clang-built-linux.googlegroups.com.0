Return-Path: <clang-built-linux+bncBDY3NC743AGBBXMH3OCAMGQEX3VXKVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 9261637734B
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 May 2021 19:01:19 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id n128-20020aca59860000b0290159ccfcbd31sf6495291oib.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 May 2021 10:01:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620493278; cv=pass;
        d=google.com; s=arc-20160816;
        b=ozmdSIWgn+bTkMb7oDmoT5hPeAL8lC6XpMN278ZdwAvaihGGZpBZiOFkHutvKRAWz7
         bOyAUCbRNThw9DHsagIT3wWuk2oLTR5iuztSEwG8JJjBJSyJBUIgnw4p53XBKhp+tF5I
         gLBifuVWHth74tcuHxNBFdBk6QPfyhr0UfN8qdy4m18SNgRs57+HcZSLJ+jBNauK4VVY
         HpK1C7d1ZUXUZS+zTOu93iV/sLGFT77S/iLZGgq2JUTbXxfa5l/AcNefBTNwNCFb4Y0/
         2Qg1dQlmGTQMq4sbIrfBk3kK3CBVEbvKFx+kX4d6TTREjp5x8awiuagbIrJjjqQR9XxU
         FwsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=sidgfsnh+QNc5rwVslBE9k6ZbX2M/GctWd48meq4Ls8=;
        b=MgEAXgQoofJvv5QUb9UbxhyEkm/i9kGaGCDQ0MRpvQ/U/W7XVwhsQp539uy05K+v9I
         Cnig/4tk5FbwUZ48siOd5RFKA/lWBcasqywmuURMGN8Dyy3l5Nksbj9CqOftsBNi2KE4
         lbz40KyBKPj/iESKPiZ5SAsOgaCiNJxK34q43fS+fuCON269hutr4c0YWdprIiemjRBu
         oYGI0vjXlYiws9epMHFovpO7RfViTXoD7hscE872rmmUjhsV/kY4CAxQmPEsBFFtDPW1
         20VVbsL7ZRs5ZkfchfAJRyEHUHMmQfcUFTs52sNhhz5wNOu9H7LJUYxknb/a7t0H1d6T
         fR0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.76 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sidgfsnh+QNc5rwVslBE9k6ZbX2M/GctWd48meq4Ls8=;
        b=oZSEzx7thFookBQyXFco24+yHgZcb09VA1fq+fqzAIcUJVPY43gJ9oYnLEPm0EwJTm
         CHszzkGWlg/2P11h4avZ+mj2hChgBQBoiprKjnUfIeyjej3DCHudHpaOIU4dV2hO7Q51
         5FtG7Zm9eX0h3fOnBhs4u1KhEkWdQIFkpN9oSDYTuEXB+Y6i8/Yj6JigkHEFGfefeBNX
         F6BzejiLo9HFGH0HiJUaBmlkFxPfvJsJpv7LgOsw914hkZ+iEv2TTDzHRUlW+gXhxjdw
         gfXKA2JOlTlEOshHGX880JSJw0Uoj4F5sP+qzZX/VNPISVzTL9ifa3caUtCRJtPyDaPJ
         w0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sidgfsnh+QNc5rwVslBE9k6ZbX2M/GctWd48meq4Ls8=;
        b=RGK+i9ZoKV3/HeAl566GmvTWLvLcI10bE6qEjAealTnFDdDA//iA6s64DVaafoeQAz
         mIfkxn/EDPLHqOPmnIrtVUqYpbIpJ4lYbt8PZLwZ6FNJ1UvHOdFGp5niPXhl30RJUdR5
         m/Ud2nh2ubxq32AZrVxAr/9tT72P/dOwNCOi7jDCkPepdcJCgmiLuv1uXye9PxhQ5/P9
         F3N0H4IqXiTcWT/Xsq2rvMeJTVVtkENpFR27Xvf6N+5HKxTO0j70/QmO/7POKXuqXmqA
         McQXkCvIexXViaNiuyhPzQ7OkhoZ9IxrDLeo2TDXcwGvvRh3yLqB5p4Fr1w7e+dfMSp4
         bH2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Zwjve0sV8XUTnNThggr5HNlKGXViQUS5Dydrtrz7IuKgk5OlQ
	ox5oPknBXPonTgQad4G5/bo=
X-Google-Smtp-Source: ABdhPJyrh3im4zA46tfG1NCrdlB6RS+05PwnCp3rC1KeDUm8HuasZrDWWxN7wasaRBX+A0sWkwWRbw==
X-Received: by 2002:a54:468b:: with SMTP id k11mr18675666oic.85.1620493277981;
        Sat, 08 May 2021 10:01:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:95c7:: with SMTP id p7ls655489ooi.0.gmail; Sat, 08 May
 2021 10:01:17 -0700 (PDT)
X-Received: by 2002:a4a:cb15:: with SMTP id r21mr12413752ooq.38.1620493277616;
        Sat, 08 May 2021 10:01:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620493277; cv=none;
        d=google.com; s=arc-20160816;
        b=PC8wR0gR/EsRlhTWVRVhdHTTvtjxRQJrhkY/uEqPMEgti9OYnjRV37sSvmSIAjrhGu
         EAcNKi6YF9D/oi/n8LjufnEjqsuqu762nV/XjUbsfySB21FKD2Dt+FbgVeEAnFy902rO
         8bOMw6UsVxgnY8x0St/ISWOoSOJLwd4GSdbHF/oIlo66PRTMx0VRp8m/VAQWNxzl4zM5
         oB5CBGEYJ4sFdd/SH0zCqeGYNlyUT0IuTuvIfEO5HyOjwoLvps4MPj5fjohda7h/0EY6
         KHC3LQITR6MJPP6wjkaTiNpwa307Wyaxj7qP1sP+Yq1UVvkYRyyP1Le2D6qrRWmQlX8D
         BgYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=ackA7HjLlUxz2HUYFyY7PAfOpwrofWc1W7YOhSmZLKA=;
        b=TNEgFfMNcYjclAd+FmlfxiGK9aQWjA/Wcnq69pmUbwyqJQVPpLfyMHgJL0GEAxQNUw
         4UoAQLGFdKtON2oxgNJqBJTdDD2sbhMKd+Wmhus9WD3rGcJ/xHdbgbDXZCkF3o6SSI3J
         RBNlhX3bssZsr0gnGzdk18vvS6ZM4eZY6VY/Vq0Yvd3mKrM9hKu23rdBzO/4yMMAo+Bv
         xpcY7B0OnwlRo6oYvs2iJBG+IV7QSG8Ge6PQqmt5NIGEGjwzzh7B3ZfApOv/2rl6r4ER
         hBfEgpmroeFuZBnAxrIdxpSahqB8ai+/hfHV0lkJ+uOrcQaewbpR0Nxj+H8VHVMaqswW
         IIXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.76 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0076.hostedemail.com. [216.40.44.76])
        by gmr-mx.google.com with ESMTPS id e13si1183795oth.3.2021.05.08.10.01.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 May 2021 10:01:17 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.76 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.76;
Received: from omf19.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id C92D2837F24A;
	Sat,  8 May 2021 17:01:16 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf19.hostedemail.com (Postfix) with ESMTPA id 442CA20D758;
	Sat,  8 May 2021 17:01:15 +0000 (UTC)
Message-ID: <1eb0428d352be2498739de71eb65746309c90f4c.camel@perches.com>
Subject: Re: [PATCH] iio: tsl2583: Fix division by a zero lux_val
From: Joe Perches <joe@perches.com>
To: Jonathan Cameron <jic23@kernel.org>, Colin King
 <colin.king@canonical.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Nathan Chancellor
 <nathan@kernel.org>,  Nick Desaulniers <ndesaulniers@google.com>, Jon
 Brenner <jbrenner@taosinc.com>, linux-iio@vger.kernel.org, 
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Date: Sat, 08 May 2021 10:01:14 -0700
In-Reply-To: <20210508171258.2ef71a70@jic23-huawei>
References: <20210507183041.115864-1-colin.king@canonical.com>
	 <20210508171258.2ef71a70@jic23-huawei>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.90
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 442CA20D758
X-Stat-Signature: wnkp43btcie7ymskkaw68ca5r135z3t9
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+/qTRbq/tfWb64s6ZzCDbmjtWe8vVdDaM=
X-HE-Tag: 1620493275-211571
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.76 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2021-05-08 at 17:12 +0100, Jonathan Cameron wrote:
> On Fri,  7 May 2021 19:30:41 +0100 Colin King <colin.king@canonical.com> =
wrote:
[]
> > The lux_val returned from tsl2583_get_lux can potentially be zero,
> > so check for this to avoid a division by zero and an overflowed
> > gain_trim_val.
[]
> > Fixes: ac4f6eee8fe8 ("staging: iio: TAOS tsl258x: Device driver")
> > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> Definitely looks like it could happen so applied to the fixes-togreg bran=
ch of
> iio.git and marked for stable.
[]
> > diff --git a/drivers/iio/light/tsl2583.c b/drivers/iio/light/tsl2583.c
[]
> > @@ -341,6 +341,14 @@ static int tsl2583_als_calibrate(struct iio_dev *i=
ndio_dev)
> > =C2=A0		return lux_val;
> > =C2=A0	}
> >=20
> > +	/* Avoid division by zero of lux_value later on */
> > +	if (lux_val =3D=3D 0) {
> > +		dev_err(&chip->client->dev,
> > +			"%s: lux_val of 0 will produce out of range trim_value\n",
> > +			__func__);
> > +		return -ENODATA;
> > +	}
> > +
> > =C2=A0	gain_trim_val =3D (unsigned int)(((chip->als_settings.als_cal_ta=
rget)
> > =C2=A0			* chip->als_settings.als_gain_trim) / lux_val);

Is a multiplication overflow possible here?
There are also unnecessary parentheses.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1eb0428d352be2498739de71eb65746309c90f4c.camel%40perches.=
com.
