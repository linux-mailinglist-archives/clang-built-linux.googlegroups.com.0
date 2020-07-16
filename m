Return-Path: <clang-built-linux+bncBDZ2FUU27AHRBFGXYH4AKGQEYUWJGEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 914CD22265D
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 17:00:37 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id t184sf2854784lff.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 08:00:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594911637; cv=pass;
        d=google.com; s=arc-20160816;
        b=uFCYB0aGpXBTl2B87y2SEFYEVqLWx/I9j6k88oTngmQ/7Or7mhyoHyTdMgvaYEyOby
         JiCQQpfcd3qx/C4d6fUO/HHJvLczf4S82M8EoyMeUv/9pEyAKTd9AuyTq7ir2vezbEMe
         ZA8GEyL7PPAcdOLDAcfgX1PjqT+yRUHqCa+m1IOgNp69EM5EN1JxEMj47GmNgTxmWUet
         U1/E8N7m2c2uSdWi9gttYUKsUC1vr8bw8ZYj+tjA5RCcQ+HL35uqyk7Xb374PwdUVIds
         YMNGCvU8NESLLHbq3Tp7kd4mx4h1BKxP9gnjvUC5I1ELARcvRax8XV9Rx5wYrnYUNhyD
         ibHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:references:in-reply-to
         :subject:cc:to:from:date:content-transfer-encoding:mime-version
         :sender:dkim-signature;
        bh=h68YIXPYHYntRZQZbSWSs3zYnIluRxjcNBkiQyz26zY=;
        b=kTpUcwy428P8IguPpAXqJg55N7s06rF8h2GmMP0IIiBok1a17rQSlSUDW8lvANwIRq
         cZWnrns6AnR5nPbgrqD+eqhtCTL/9iSBGVQr98y4rPvkqqhPYoDtP9VkpGp7aTuke/v9
         xqe9HLZvrs1J/gh/OT4ZnTQVW1U3A/b+qxNXs0BfHwwcXceM4kZuEE69WfnuJ0xTWNsA
         K1j3vnqbjTUsN8kDvorQ0B0sT/Di19KuE0Y+vC6FMFxrl2MmJPOHQkDb+3YykXx6Qawm
         pab1Ui2wDLNp4qt/r6uJp+yRabnF12izHIz1ZpW1oFw7JHdkHYAU7CHEo7nNp+VHi2Pb
         bx5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kolabnow.com header.s=dkim20160331 header.b="2oaE269/";
       spf=pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.42 as permitted sender) smtp.mailfrom=federico.vaga@vaga.pv.it
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:content-transfer-encoding:date:from:to:cc
         :subject:in-reply-to:references:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h68YIXPYHYntRZQZbSWSs3zYnIluRxjcNBkiQyz26zY=;
        b=nzcTNgThxMSiS0g2K9SJ7vzwZkd/oMAxoKfEgPgF5+i+Lfx71WZlbqQrC+6/xHOqzM
         I0IVMgbeZq2jlukJ6oII7j5MhDHbBcNipH+J8jVGBRyqjz/7v8YjSb9V8BwzWrjgJHuD
         WXq0xPZnblfihiKjbH2Q/tJWAN1uMbtYg7/N2WVJirl+H6lH1toVgbNF0dOT0KZoadu2
         ibiN/0CkMmojkvZqIF+/lsB4eVnTAcWj7VFU29e/kSrLtmQCafTfBKERPlMokWdH0Brp
         QqS5cVRPZFkxy5/h7n/1u7cbR+etSkp1DMUOqf08DEIu1Y2dyTp87kwhoZ19gzvfdgeJ
         PnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:content-transfer-encoding
         :date:from:to:cc:subject:in-reply-to:references:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h68YIXPYHYntRZQZbSWSs3zYnIluRxjcNBkiQyz26zY=;
        b=U4fpCSODS7NdaQgysVJfjz+YrIzC0KzbSMsftHQu5TMVZzKZraPxIEm0sP0qbqnmr7
         Cohm0fxi7BVO5w90owu8Z87OhSyykgpetTE3vDBdc7dqpsK4CEvBFR6hvRql2ZrgxHCe
         5vToEEVKOtlNe7YbPDJNWuNpMZclUQYtamGeJwN4oYXzX037w1Qkm/i1+fYmu4R5y5cj
         Rr3xDCF56uoi/CZgClVh+G8u9oPZW5bG6PXsndnBh7IW/8QkCvkuPxncwtr2223F34Bp
         ahsF2AGZ1rW2HYi8tBx93tU7NhKgpu/xV57XdYOm5PXP5wd3Ysgt8YcVPMLbTXt2IfCv
         UbEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tClrp8ZrB/GXsQfz4mdM/N3mqMa+r+a7T4IVPASaF0mDHGxoX
	86Vpc+4UexaI5Pu7iI0r2XI=
X-Google-Smtp-Source: ABdhPJxdOUe7hPHXw2gPtBhTKUfx2FO99Y4QD9vB7t54whyumNa+0w7YzPzhEn940Ch5gQ8wt2/pjA==
X-Received: by 2002:a2e:2c18:: with SMTP id s24mr2093365ljs.291.1594911637070;
        Thu, 16 Jul 2020 08:00:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8610:: with SMTP id a16ls712434lji.8.gmail; Thu, 16 Jul
 2020 08:00:36 -0700 (PDT)
X-Received: by 2002:a2e:9ac4:: with SMTP id p4mr2350617ljj.143.1594911636299;
        Thu, 16 Jul 2020 08:00:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594911636; cv=none;
        d=google.com; s=arc-20160816;
        b=P7WsbUNNh+XTscxH7w0NPgoZelnOlyuGRhh/5uotm1E6+ntzI+0+TzHpsfXat6fN0O
         Zht8pONcpbBQc1A/3dWyHQoE/8aZxID1I0ceFcYPCFfHkxtFTq6B0GMYDKcac0bUloFt
         XXQVSfndx02ek/ZK8hy8Cs2BWoJ9rmhuhJf9LRL5/NNjzrBduv5sJEAF3vFfT2oZHR87
         h5jPxy23X8ExxCI9kI2o/0cfprHxF1SvshaayrNrO2AgFg0QTaXmzWGWKyAgDhMM9ShU
         NiLqfcLokPAjisxOGaGUpfs3LPNWyBSXbrhHqJBWUYlLewdSvNCNxALTXB1ce/slIKto
         mdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:references:in-reply-to:subject:cc:to:from:date
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=sprv0swZgJ0cprIpnN8M/f26efVa2WNU/nNrTW2ClXc=;
        b=A1QlWjXqXnwkbKN70I2FiFOz1kB+IVC89lK8l8vqiDDFq5s+PB9++hWB73s0fFmAop
         cmzVpqE1nIf7VZNzFsfqKMcjNqbmKwpyG7Njntypo8KtqViHlm7J5xCDjBLRlIhaCGmt
         WWr3mDB90X8M83stmJrruhjDEYwav6uWSJM5/BRTCldueyHFNI0+pF0XHlnKVONPjk+G
         6wL0IwbLdPyxJjcL4KAzgyGyeIq7FX0DenSGIJ0p96rdApq6Sf5TqzG9MLFbsyWfe3gn
         u30I901H/rEcixAP9dssYme+/0qjtzHskdA9kkMJx470hyh7xb0gSpHNQsS+bx2F8KjV
         8aDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kolabnow.com header.s=dkim20160331 header.b="2oaE269/";
       spf=pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.42 as permitted sender) smtp.mailfrom=federico.vaga@vaga.pv.it
Received: from mx.kolabnow.com (mx.kolabnow.com. [95.128.36.42])
        by gmr-mx.google.com with ESMTPS id y2si341795lfe.2.2020.07.16.08.00.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jul 2020 08:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.42 as permitted sender) client-ip=95.128.36.42;
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTP id 6097FB2A;
	Thu, 16 Jul 2020 17:00:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.9
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out001.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fngKv0t-mioE; Thu, 16 Jul 2020 17:00:34 +0200 (CEST)
Received: from int-mx003.mykolab.com (unknown [10.9.13.3])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTPS id 7762AA6D;
	Thu, 16 Jul 2020 17:00:34 +0200 (CEST)
Received: from int-subm003.mykolab.com (unknown [10.9.37.3])
	by int-mx003.mykolab.com (Postfix) with ESMTPS id 014D4A77;
	Thu, 16 Jul 2020 17:00:33 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Date: Thu, 16 Jul 2020 17:00:32 +0200
From: Federico Vaga <federico.vaga@vaga.pv.it>
To: Lee Jones <lee.jones@linaro.org>
Cc: linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/1] doc:it_IT: process: coding-style.rst: Correct
 __maybe_unused compiler label
In-Reply-To: <20200715122328.3882187-1-lee.jones@linaro.org>
References: <20200715122328.3882187-1-lee.jones@linaro.org>
Message-ID: <4e50d1ee2ebd55f8f87fcd5c631e97f3@vaga.pv.it>
X-Sender: federico.vaga@vaga.pv.it
X-Original-Sender: federico.vaga@vaga.pv.it
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kolabnow.com header.s=dkim20160331 header.b="2oaE269/";
       spf=pass (google.com: domain of federico.vaga@vaga.pv.it designates
 95.128.36.42 as permitted sender) smtp.mailfrom=federico.vaga@vaga.pv.it
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

Of course, you are right! Thanks

On 2020-07-15 14:23, Lee Jones wrote:
> Flag is __maybe_unused, not __maybe_used.
>=20
> Cc: Federico Vaga <federico.vaga@vaga.pv.it>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  Documentation/translations/it_IT/process/coding-style.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/translations/it_IT/process/coding-style.rst
> b/Documentation/translations/it_IT/process/coding-style.rst
> index 6f4f85832deea..a346f1f2ce21f 100644
> --- a/Documentation/translations/it_IT/process/coding-style.rst
> +++ b/Documentation/translations/it_IT/process/coding-style.rst
> @@ -1097,7 +1097,7 @@ la direttiva condizionale su di esse.
>=20
>  Se avete una variabile o funzione che potrebbe non essere usata in=20
> alcune
>  configurazioni, e quindi il compilatore potrebbe avvisarvi circa la=20
> definizione
> -inutilizzata, marcate questa definizione come __maybe_used piuttosto=20
> che
> +inutilizzata, marcate questa definizione come __maybe_unused piuttosto=
=20
> che
>  racchiuderla in una direttiva condizionale del preprocessore. =20
> (Comunque,
>  se una variabile o funzione =C3=A8 *sempre* inutilizzata, rimuovetela).

--=20
Federico Vaga
http://www.federicovaga.it/

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4e50d1ee2ebd55f8f87fcd5c631e97f3%40vaga.pv.it.
