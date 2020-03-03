Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJFD7LZAKGQEWUI7X4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id CF29B177D3A
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 18:19:33 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id p7sf3195068ilq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 09:19:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583255972; cv=pass;
        d=google.com; s=arc-20160816;
        b=eOYNm2eFKohQz/2lIOIsvZ/fHx79RBgXFcCa9tYPeVhvVj748BFbx+oLS1pK8eKIz/
         kwaV8essfwvLYPlqqtCczDA3uRqeObtYl6EBk7/COqAdTx1b35mzWJiJMP+dRm7k15nK
         78+dkJdF9WqFU/Owsz0qAwrY9En8L2qeIxwJeT4ZEiXKcBp5AFseUZbTzvXaTcl0FIbt
         SQBE7X8kPLOlzjAqdNa/V7H+SQ76nfRF499vteMt4shOb+DZE6wgPRq06RzRYSsHU6iM
         wbnFEO6we2gzhtbD//pUNm5IeJ+sZSK8ClQftxk5pXaqJjMg84LTCPYjSHIH8csvlzVk
         elyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e6AKi4QC1bc4+PLABP/zfbrxXYYiE2jqda8byphcIa4=;
        b=HaY0LxVidR1DfoOvE6LpALrxvBS4GkjM77P9hepxcs/4Suky4Lhi4HhyKZ+vs7P5N6
         6X5VVwiSr5Vy5GcS7R7IAqeM/EWsMlUdxfHzFBBvdLpbkdtsuglachqC8HjhD9VrXP4p
         Wd4xGlFawoDlPJtga//3HYKg/avA4OOFwRxEHGJZ6iaWo8LZEaQWE++3odTWIq3KePfA
         eAZTfhnNp/UhJkYNvtGOVyfHhhtp2XUgj42GOQNl+lBJoU9Kz9S3n+RsYFOm5Db1Ml1I
         ZfbYu6R++JNXbQf/TFO64wV6mmhR+tSP5FmeWvyRrrwg5UeAG3YKXRxPAnBkfyACku5t
         ou8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="PD/R9+Mj";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=e6AKi4QC1bc4+PLABP/zfbrxXYYiE2jqda8byphcIa4=;
        b=lkiyM3DDbHVmwQ1nKaMl5od0lGype1vn/oNRxLffOJpFHkCbgGxeUCJGMWU1HdiHJr
         Te7qcndB6uBUbl83fpVvBRAV53+bHh0Kkn0u6jXyY3RkOpC310uH/KIPdODxEl1khN1w
         ncO6WhYhBv9FSzJwK0CoD5GsXGDh/QE0Tr9qssB74wfRkIXT1WR8W1ciqoIAi5IWFkn5
         +IYu9zOESnTEi5SmCM/gyxI1rOtxA881bTg0goAXtgHjaRM5jhrDXq8QOG4dqrJe3zZu
         vSi/OBUI0cu1vCDzqirObEIQd0jgpuQGjg0+Tju8AwoiiTpztF5mCUyKPk52YEOIaApg
         Rkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e6AKi4QC1bc4+PLABP/zfbrxXYYiE2jqda8byphcIa4=;
        b=VJi/bP+Rxjj3p3H2jRL3XbOzwKXxUpyeNt4JOwzeZ38ImNrEIG2K5oczvJAoQyqdfB
         i0CQhf/jgFxhA/0ugsbnde9f/AM1lmIZsBTraagmtHEuZUi6ZsBazT/RByAM0Srs3PuT
         iTqyv1qMthgI+z4RrlEAPzprPaq18VP4hSHrYhDPMNA1oUTFV2pcN+hpEWF8A3c33AO/
         eHe4wwTGkwDmlOeOjXHJoui2oua8Ownoz23IZfRDM2Pw2KrtCEuq+ScSJbd8J+haiyuY
         ndkLIEWDHLun0uGqsolgebrSPNXIi4pGJATxKyb6ynyCCs8ECW1gwihOObxW/yh9kqeF
         3UYg==
X-Gm-Message-State: ANhLgQ2iLLtrDJ36hN6bAhDV/zhs2jIUqqq+D/oJQo06QsznFBBzTz4d
	2wGkWoj57Z9LSs1SEAmxKhQ=
X-Google-Smtp-Source: ADFU+vtNOMbcemIELNa+oX1PgFAIwEiiIHmwRGHSfNmRKkpm6Qvo2woRqIWyl7x2hqzGhO6posFb+w==
X-Received: by 2002:a5d:9f12:: with SMTP id q18mr4799976iot.235.1583255972394;
        Tue, 03 Mar 2020 09:19:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:85cf:: with SMTP id e15ls842523ios.7.gmail; Tue, 03 Mar
 2020 09:19:31 -0800 (PST)
X-Received: by 2002:a5d:8448:: with SMTP id w8mr4838408ior.161.1583255971884;
        Tue, 03 Mar 2020 09:19:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583255971; cv=none;
        d=google.com; s=arc-20160816;
        b=UwdRL14cwX7Bf2IBvWrn4V/3DOebYJ9KMXgTmSJp53+DPW1I5XPUGwAnRQnc5sFVP0
         vVf2OXma1nO3pdjDfP95w+sdi7NfPaIePLnz8OFp2LoMLSOqw/ZhTeGGb2jXCY5oRG3j
         DWyv0DJiG7NOGM8JrTJSf1Rkvz3Dq+f0iF4yETtTT2b0qygZL1mVIhwjlv4MzfeaV1sT
         OtgOuXw74ZQ3hVMUPazG2CJj4mjv1jzKgUaCR/LARb6oa8R4X6gxKeqBzim6XH61a9wi
         A+aDj/jYzVYq+AecdpPP9eaqfIPYSNc727Du79bFDw5I24d2XEl2I4YrAMxWI4E5wlIe
         Sp+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jPSqNTJB6oFtzjzmDLc+9zVnydkmrV2ijq5zde7srqc=;
        b=h48JHrYbcVF5nsYHxCIZUFPHvL5h1tA2VpK5lj/cHXy0vqZwxoI5r/4tprKizLH/Un
         9mWSVEekgi40xDKoy7YFH+nyqZkIS2kyRfj7PHKkZrPdh+mI0scI4GTPyf5Y3UN3gENg
         vb+1Jd4ZoB71tNHtfr4yMaaX8ydCkuNoT9IUYU3UARXc09FTMIQR4LD0eK3P3EAiOnHp
         XXyUwgHLgLBoQEoWiLZz+5r3CmAe8on0MvMi16LCzvBfbyd72fy3DA4B2/rAHw1LdKVh
         VDjvm0JVLuRby2syPt9UVtuo45w8dCEdAWuRB3NzyUYO8g4AKmwfYDurvZ8HFh1FO1zZ
         LI9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="PD/R9+Mj";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m6si383996ili.1.2020.03.03.09.19.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 09:19:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id x7so1839223pgh.5
        for <clang-built-linux@googlegroups.com>; Tue, 03 Mar 2020 09:19:31 -0800 (PST)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr5151590pgb.263.1583255970960;
 Tue, 03 Mar 2020 09:19:30 -0800 (PST)
MIME-Version: 1.0
References: <afbe367ccb7b9abcb9fab7bc5cb5e0686c105a53.1583250595.git.mchehab+huawei@kernel.org>
 <e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git.mchehab+huawei@kernel.org>
In-Reply-To: <e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git.mchehab+huawei@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Mar 2020 09:19:19 -0800
Message-ID: <CAKwvOdmHMjA3YepX6LNpFAAvPb1eikO0KcDG2J2JwyP690rk4Q@mail.gmail.com>
Subject: Re: [PATCH 6/9] docs: translations: it: avoid duplicate refs at programming-language.rst
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Federico Vaga <federico.vaga@vaga.pv.it>, Jonathan Corbet <corbet@lwn.net>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="PD/R9+Mj";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Mar 3, 2020 at 7:50 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> As the translations document is part of the main body, we can't
> keep duplicated references there. So, prefix the Italian ones
> with "it-".
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Recensito-da: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  .../it_IT/process/programming-language.rst    | 30 +++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/Documentation/translations/it_IT/process/programming-languag=
e.rst b/Documentation/translations/it_IT/process/programming-language.rst
> index f4b006395849..c4fc9d394c29 100644
> --- a/Documentation/translations/it_IT/process/programming-language.rst
> +++ b/Documentation/translations/it_IT/process/programming-language.rst
> @@ -8,26 +8,26 @@
>  Linguaggio di programmazione
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>
> -Il kernel =C3=A8 scritto nel linguaggio di programmazione C [c-language]=
_.
> -Pi=C3=B9 precisamente, il kernel viene compilato con ``gcc`` [gcc]_ usan=
do
> -l'opzione ``-std=3Dgnu89`` [gcc-c-dialect-options]_: il dialetto GNU
> +Il kernel =C3=A8 scritto nel linguaggio di programmazione C [it-c-langua=
ge]_.
> +Pi=C3=B9 precisamente, il kernel viene compilato con ``gcc`` [it-gcc]_ u=
sando
> +l'opzione ``-std=3Dgnu89`` [it-gcc-c-dialect-options]_: il dialetto GNU
>  dello standard ISO C90 (con l'aggiunta di alcune funzionalit=C3=A0 da C9=
9)
>
> -Questo dialetto contiene diverse estensioni al linguaggio [gnu-extension=
s]_,
> +Questo dialetto contiene diverse estensioni al linguaggio [it-gnu-extens=
ions]_,
>  e molte di queste vengono usate sistematicamente dal kernel.
>
>  Il kernel offre un certo livello di supporto per la compilazione con ``c=
lang``
> -[clang]_ e ``icc`` [icc]_ su diverse architetture, tuttavia in questo mo=
mento
> +[it-clang]_ e ``icc`` [it-icc]_ su diverse architetture, tuttavia in que=
sto momento
>  il supporto non =C3=A8 completo e richiede delle patch aggiuntive.
>
>  Attributi
>  ---------
>
>  Una delle estensioni pi=C3=B9 comuni e usate nel kernel sono gli attribu=
ti
> -[gcc-attribute-syntax]_. Gli attributi permettono di aggiungere una sema=
ntica,
> +[it-gcc-attribute-syntax]_. Gli attributi permettono di aggiungere una s=
emantica,
>  definita dell'implementazione, alle entit=C3=A0 del linguaggio (come le =
variabili,
>  le funzioni o i tipi) senza dover fare importanti modifiche sintattiche =
al
> -linguaggio stesso (come l'aggiunta di nuove parole chiave) [n2049]_.
> +linguaggio stesso (come l'aggiunta di nuove parole chiave) [it-n2049]_.
>
>  In alcuni casi, gli attributi sono opzionali (ovvero un compilatore che =
non
>  dovesse supportarli dovrebbe produrre comunque codice corretto, anche se
> @@ -41,11 +41,11 @@ possono usare e/o per accorciare il codice.
>  Per maggiori informazioni consultate il file d'intestazione
>  ``include/linux/compiler_attributes.h``.
>
> -.. [c-language] http://www.open-std.org/jtc1/sc22/wg14/www/standards
> -.. [gcc] https://gcc.gnu.org
> -.. [clang] https://clang.llvm.org
> -.. [icc] https://software.intel.com/en-us/c-compilers
> -.. [gcc-c-dialect-options] https://gcc.gnu.org/onlinedocs/gcc/C-Dialect-=
Options.html
> -.. [gnu-extensions] https://gcc.gnu.org/onlinedocs/gcc/C-Extensions.html
> -.. [gcc-attribute-syntax] https://gcc.gnu.org/onlinedocs/gcc/Attribute-S=
yntax.html
> -.. [n2049] http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2049.pdf
> +.. [it-c-language] http://www.open-std.org/jtc1/sc22/wg14/www/standards
> +.. [it-gcc] https://gcc.gnu.org
> +.. [it-clang] https://clang.llvm.org
> +.. [it-icc] https://software.intel.com/en-us/c-compilers
> +.. [it-gcc-c-dialect-options] https://gcc.gnu.org/onlinedocs/gcc/C-Diale=
ct-Options.html
> +.. [it-gnu-extensions] https://gcc.gnu.org/onlinedocs/gcc/C-Extensions.h=
tml
> +.. [it-gcc-attribute-syntax] https://gcc.gnu.org/onlinedocs/gcc/Attribut=
e-Syntax.html
> +.. [it-n2049] http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2049.pdf
> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git=
.mchehab%2Bhuawei%40kernel.org.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmHMjA3YepX6LNpFAAvPb1eikO0KcDG2J2JwyP690rk4Q%40mai=
l.gmail.com.
