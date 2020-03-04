Return-Path: <clang-built-linux+bncBDZ2FUU27AHRBOWQ7XZAKGQELWP5NSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CF8178C99
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 09:35:06 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id a1sf445808lfr.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Mar 2020 00:35:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583310906; cv=pass;
        d=google.com; s=arc-20160816;
        b=r9E3MHDNzeVYe7aW+chBg1kw6MaDBjJ5Qzf2s9hWTiNT/0INOMoBWBP9wjwIUyflhj
         q7cnjdNJ7ypuPJVmNPCpk51mfoNbBqZxKiBCenM2qlwJW37G4nYQjwo8MiV+eLql/UW1
         Ab0bLK0jfJ6qFzSH7BsOP3cWy/wvi7EvYaW0aWtwMj9P76phfn/G/5Q2gVGXSzLQM+CY
         LSpa+0q8wbc1cHxRkvsJWC22hkQF+HSbA0w0pgOlDgLgaVC601LfRYN0n7sjXx6kP39x
         btfKvJkuIgz3LJh89k7pmM1tn7/cNCpQwFeFiS3edejO7Hj5MKQ62LpMPYStXr+EfMvi
         O8dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=LVOalIYnK0yPyUyJMeER2xX9eLqFL0LVSmUCI1625ZI=;
        b=N1oZJogWF5DCODwGZ22NrPZ6cx8D9gmehOCO8X/1xeitpOjk7EWswiM1s2kNpOWYbZ
         Lzvw8Dn3yXR/PxyL96phm+cZwn0ZQbQoX7OSl6/Sb4feJRs9vd+DeOYKPRO1Z9AJW50q
         +mMCVWsU2hosiGZi0I4FJM15LjubK/COUK7km720z+KjUEsiknL2nqP6vEztSQNwIM5y
         WYbenN1h8u/mjsKHnM1Di59tAh8Mph4IVhePMbJadwiYUxtFDrwMmg+B5jgSl6W1qPQ2
         ChbvjT7mEE0XrNYATWEasL7SUqV09QHP/7/QQs7ZUZpfoY5Wwp9DpT/ehfuPK1kdajX+
         1/4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kolabnow.com header.s=dkim20160331 header.b=xyTDMquN;
       spf=pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.42 as permitted sender) smtp.mailfrom=federico.vaga@vaga.pv.it
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LVOalIYnK0yPyUyJMeER2xX9eLqFL0LVSmUCI1625ZI=;
        b=eZDLU7lCQqdzuQVa7YtUy+Zn7/i57q6pU35NO1LuiwvHWX8zkX4zqhoqsNyPSABZ9q
         jb8kLbqzklOM67JjV3oRI4qVPmuNgTTGpBLv0/Cx9v4z8TYX+E2x8YtLtvojeQbOPtIw
         oVCBe2u0Q16bIN1QJ/h8YiDZs8J14WXOls8gUKUNum7WmPzn7kHsmyNMBXvlZyYVIDIj
         G1yn/gLhIzYMmA4NcFlCErnvq3L63XY/ag+sFfkyVJRbqw44UH3YmqnC1EJSrHaIUGpp
         be5yXj011YBD/edJSgkAcLn+cI0sWC/DWm0GfcpDFo6xMKNSVWy9hO5o+zjzCgKNarNA
         uB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LVOalIYnK0yPyUyJMeER2xX9eLqFL0LVSmUCI1625ZI=;
        b=nBax/vyRp3vTvlTYF1L9tGiHu8jh1OEj/yPWP5jhseEPz1WGxxbNOOZtZMuqMmjHxE
         pqdEl1GRZI+Q8eqmEapKY9Mex+3MsM8eqHZvUgxGeadLjXQQlkEUxo8/M2EC0qXEOyu8
         bCcgKhMxhjZ70HAoCGtGZjXjRF2yYJ6rLqPhpO8Ljlogg8wryGGMiWVHxS8vicFYJPHC
         lElcwYmG9ew/SPqHdq0AfzCHpMioFkjjygy9R5T/XSd2LpxCpQR2a+lB64IruX4+glVv
         eXBiPjsMjbrC1sEw6e4TKqa+JFZHwChN/baCc2noxOZjmInr9I8prm7RnhkubjdOEdvd
         fMGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1LE42wNHSfVEBaJKy5NH0GNFoz/AVaYuJKfOs+46Q/1EQlaCnw
	KUPdmh4ZhWFBqy4kwbgJ9LQ=
X-Google-Smtp-Source: ADFU+vtfdy4e93ssyOKFjFwtvWk2vn4DS8nOefYjisNthGUolxwsXwrv2T1zZPg0zHhfgUBXlzmLAw==
X-Received: by 2002:a19:110:: with SMTP id 16mr1354938lfb.21.1583310906431;
        Wed, 04 Mar 2020 00:35:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b5d9:: with SMTP id g25ls209796ljn.9.gmail; Wed, 04 Mar
 2020 00:35:05 -0800 (PST)
X-Received: by 2002:a2e:9c86:: with SMTP id x6mr1218573lji.282.1583310905716;
        Wed, 04 Mar 2020 00:35:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583310905; cv=none;
        d=google.com; s=arc-20160816;
        b=MLrUdPMkIQXmGGFCeUptX1T4vE2UzXYhG7eQA28fTWnl59YqY8RsTcv70d5dUFcvxZ
         QqQp9qEh95HYOCUNHE/AhsbpNuuvO0CvZgxxjuA4mVvxnXQQAEoFlWDa2MNXkocydv1q
         nw7l0V/TG0JDlBSXEU5wPYbym6nv2ff9PeVU7Ap7L60LtXuLc4gvori//0z5WEdBBny1
         Q0Kmjf7u1IjoJzztdugcvGRAP+44URCW53BSVPTQ/MZEHuVcXC8tlrg1Yycv+HBijxuK
         HzJ9mC6qfVF+be8wguBKCG2SXytoe5P/JASh4wXvS7dJkkYIdPWTANnCpPjQ/7KBz0S/
         aM/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ARjgys6wnNKVl92ykcAcXMzpN9kzBsDWxuu6ynvn+j8=;
        b=OPNlZJ3+O37CziifW+Lx5tcnr0XXHWmXREwX5m8jIyPCHtyikp+7NgRv5MTWUSBQQu
         ZVN2yfJTujmvibwnqt/D1pbqfAt6R0BUzW3XApbAV0RgXwBfunC+Yk8oZ9UVU1frC6iO
         TokIX8cmqKRXJAD30eBCLBoHlOrANKAAXOGwfNVqDlxf0Xgd0pWXKuXki1LdAJFfxKXw
         wjZbDQrG7egNoWEGdm+ugpqWLKygpzZmRwPu+FDmVl32yfwA7TIrtaxpXGGP2QGVRg6c
         ZLpYiaB4QcNC/m/Cu/eoHr8yvXYnDR0kFaUs+xaGX0aCuQ6Y3V+Srg1bMMWFy6rGzT4V
         bCHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kolabnow.com header.s=dkim20160331 header.b=xyTDMquN;
       spf=pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.42 as permitted sender) smtp.mailfrom=federico.vaga@vaga.pv.it
Received: from mx.kolabnow.com (mx.kolabnow.com. [95.128.36.42])
        by gmr-mx.google.com with ESMTPS id p12si97361lji.1.2020.03.04.00.35.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2020 00:35:05 -0800 (PST)
Received-SPF: pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.42 as permitted sender) client-ip=95.128.36.42;
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTP id 39D165ED;
	Wed,  4 Mar 2020 09:35:03 +0100 (CET)
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.9
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out001.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 93dAO4nFNplu; Wed,  4 Mar 2020 09:35:02 +0100 (CET)
Received: from int-mx003.mykolab.com (unknown [10.9.13.3])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTPS id E0A964D1;
	Wed,  4 Mar 2020 09:35:00 +0100 (CET)
Received: from ext-subm002.mykolab.com (unknown [10.9.6.2])
	by int-mx003.mykolab.com (Postfix) with ESMTPS id 89999BAF;
	Wed,  4 Mar 2020 09:35:00 +0100 (CET)
From: Federico Vaga <federico.vaga@vaga.pv.it>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 6/9] docs: translations: it: avoid duplicate refs at programming-language.rst
Date: Wed, 04 Mar 2020 09:34:58 +0100
Message-ID: <1950025.KkpgXc3J7C@pcbe13614>
In-Reply-To: <e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git.mchehab+huawei@kernel.org>
References: <afbe367ccb7b9abcb9fab7bc5cb5e0686c105a53.1583250595.git.mchehab+huawei@kernel.org> <e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: federico.vaga@vaga.pv.it
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kolabnow.com header.s=dkim20160331 header.b=xyTDMquN;
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

On Tuesday, March 3, 2020 4:50:36 PM CET Mauro Carvalho Chehab wrote:
> As the translations document is part of the main body, we can't
> keep duplicated references there. So, prefix the Italian ones
> with "it-".
>=20
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

I thought this patch was already there, it was raised some months ago;=20
probably I am confused I can't retrieve the thread. Anyway:

Reviewed-by: Federico Vaga <federico.vaga@vaga.pv.it>

Hopefully in the next weeks I should be able to be on duty again and fix al=
l=20
the issues and re-align the translation. It took a while to fix my personal=
=20
life :)

> ---
>  .../it_IT/process/programming-language.rst    | 30 +++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>=20
> diff --git
> a/Documentation/translations/it_IT/process/programming-language.rst
> b/Documentation/translations/it_IT/process/programming-language.rst index
> f4b006395849..c4fc9d394c29 100644
> --- a/Documentation/translations/it_IT/process/programming-language.rst
> +++ b/Documentation/translations/it_IT/process/programming-language.rst
> @@ -8,26 +8,26 @@
>  Linguaggio di programmazione
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>=20
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
>=20
> -Questo dialetto contiene diverse estensioni al linguaggio
> [gnu-extensions]_, +Questo dialetto contiene diverse estensioni al
> linguaggio [it-gnu-extensions]_, e molte di queste vengono usate
> sistematicamente dal kernel.
>=20
>  Il kernel offre un certo livello di supporto per la compilazione con
> ``clang`` -[clang]_ e ``icc`` [icc]_ su diverse architetture, tuttavia in
> questo momento +[it-clang]_ e ``icc`` [it-icc]_ su diverse architetture,
> tuttavia in questo momento il supporto non =C3=A8 completo e richiede del=
le
> patch aggiuntive.
>=20
>  Attributi
>  ---------
>=20
>  Una delle estensioni pi=C3=B9 comuni e usate nel kernel sono gli attribu=
ti
> -[gcc-attribute-syntax]_. Gli attributi permettono di aggiungere una
> semantica, +[it-gcc-attribute-syntax]_. Gli attributi permettono di
> aggiungere una semantica, definita dell'implementazione, alle entit=C3=A0=
 del
> linguaggio (come le variabili, le funzioni o i tipi) senza dover fare
> importanti modifiche sintattiche al -linguaggio stesso (come l'aggiunta d=
i
> nuove parole chiave) [n2049]_. +linguaggio stesso (come l'aggiunta di nuo=
ve
> parole chiave) [it-n2049]_.
>=20
>  In alcuni casi, gli attributi sono opzionali (ovvero un compilatore che =
non
> dovesse supportarli dovrebbe produrre comunque codice corretto, anche se =
@@
> -41,11 +41,11 @@ possono usare e/o per accorciare il codice.
>  Per maggiori informazioni consultate il file d'intestazione
>  ``include/linux/compiler_attributes.h``.
>=20
> -.. [c-language] http://www.open-std.org/jtc1/sc22/wg14/www/standards
> -.. [gcc] https://gcc.gnu.org
> -.. [clang] https://clang.llvm.org
> -.. [icc] https://software.intel.com/en-us/c-compilers
> -.. [gcc-c-dialect-options]
> https://gcc.gnu.org/onlinedocs/gcc/C-Dialect-Options.html -..
> [gnu-extensions] https://gcc.gnu.org/onlinedocs/gcc/C-Extensions.html -..
> [gcc-attribute-syntax]
> https://gcc.gnu.org/onlinedocs/gcc/Attribute-Syntax.html -.. [n2049]
> http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2049.pdf +..
> [it-c-language] http://www.open-std.org/jtc1/sc22/wg14/www/standards +..
> [it-gcc] https://gcc.gnu.org
> +.. [it-clang] https://clang.llvm.org
> +.. [it-icc] https://software.intel.com/en-us/c-compilers
> +.. [it-gcc-c-dialect-options]
> https://gcc.gnu.org/onlinedocs/gcc/C-Dialect-Options.html +..
> [it-gnu-extensions] https://gcc.gnu.org/onlinedocs/gcc/C-Extensions.html
> +.. [it-gcc-attribute-syntax]
> https://gcc.gnu.org/onlinedocs/gcc/Attribute-Syntax.html +.. [it-n2049]
> http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2049.pdf


--=20
Federico Vaga
http://www.federicovaga.it/


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1950025.KkpgXc3J7C%40pcbe13614.
