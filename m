Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBQHK47ZQKGQES76SEUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B509F190CCF
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 12:55:45 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id s10sf12863717oie.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 04:55:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585050944; cv=pass;
        d=google.com; s=arc-20160816;
        b=QnrJSUPJYQSxBkfJeO823AdeSihB/e9Xcwg/XkMtJRzTlz2e1kq0jd5S03Zg8k5a1y
         E34/2srZVI3uh7VxdU28wBzgphwyrNXlDW6Ju4f6RXoeqqS+f6WMvkcnWMhjBHyaIKAe
         9WovtjgyMNWxGt4qoIa2DefR5GKNQ9VLHost5vBE96vKB8lGzJ3BwUox5Jtuqnup+mHZ
         NB4klOYdzqegO+a93FL/xxkGky6U7P7B9FtajOArxxiUv0ZtxVvMuj539dbAHERFPHpU
         fQR5UwEP3NOes3sJ3W5IYPd+Kzayj6oMcPL7kFvmOnwAs9YnNgmMrN6fgulD9rQk4iO0
         S31g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=j/dp9GSJiif7z9AgEL6RSAHmDLduD9IuHNc3fWM0ZUM=;
        b=UA7DJZRgiP+/nHjOlZpW4HmKgoM8n9XWZeKt0c7f5JpowKVA7aQ5LLfPj8sbjy4cX0
         0OlhR2WjbA8Myzobm3whlbxk7LzTiQ3lnx0pKb4hqoxOvLRZSRGRuww8o7liwt14zf6f
         6jR2JmPDAVTfe7JFsESPKcz1yfGufaFaGMOhfjn6WWmMKCEozMhk0KFICCjwQV+9gLQH
         3MohUsR5/LwRnhcRmWXNriuX86HJYwGWVjPZKQmhauPxs9Mar6LAIfClY62BvKOJyWD0
         X0ISmVhUI9GtVFEnNPNMeZq7ExKs9/7R5lMcUlDPunlV63XlP3HmMBp9WkdqZCTn49Zn
         ViQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j/dp9GSJiif7z9AgEL6RSAHmDLduD9IuHNc3fWM0ZUM=;
        b=sepd3nALaaVggNLKgpPJkjSe/mw59p4QxoKpSXOoee1LGzYShfXQBnpQjiykOg09YQ
         XCZ89ddYAP480mCOmGRyOUoiPAc/iXoJZJ1lnfRJe26DhsriNlfDV3M+DE4xxPZzKJBa
         CLaIIpzUm0ooSKBsTUJmnHHOB5RPpbjsyZmZ61VNIXGCg4qazkTa1tZmIHXfIR811tV7
         gEItzY9UexwfgF36Ap5bdu/SwUOEQGH6d769oLE0sD3xiS3dSI1UidvuPWgiYY3JCRu6
         1caD6OX+Rc1cXPbeFf+niS7xyQap25BoodCeIbOTZYCNoxpy0UlzGA84R+LYZjAstCC+
         Aj4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j/dp9GSJiif7z9AgEL6RSAHmDLduD9IuHNc3fWM0ZUM=;
        b=qLbnfqZnmQjndCC//qr9HvLzgPXhDTmMnW1S61jEsnGI+W7ajzkKmwDvqUbGQrRaM1
         6beMXT6/uXKpRDI023JdYtFWjFe99P6JhumYYyTNOzRjKMtzmXrszholarmwHVmXVfL1
         fjzWl2Yu0of+frxFQWqeJm9zPog6dgh3nSIg/xPXTtSGMSNby03ieVLsrtZr+4qG4uH/
         fwRWSIPzsIdbYThssRseEsiKn2JuNZnKBg6qPOaJ5wEBitYYaxNbVPFZH2svtAkKmcfw
         edUUVoPVEx4k10Hk6PCOrWXwUiUrMK4fdr36bhvsFQl/mpMpgPREKahSOxeqcEY3j9vl
         bVcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1XS7P+L02I2eEl5cOiRkNEkLfe+X1HS/UblE4jpNK1YQny605p
	/pe5KomyEJBqVr+iMCx2Loc=
X-Google-Smtp-Source: ADFU+vuY6qTkyOt3yIcsoWDrTk9zMikYES83YEJj4pgq7gc7z+UFV9oZelpu3X2nhtjD+Rzb5OSVZQ==
X-Received: by 2002:a9d:7696:: with SMTP id j22mr22701808otl.188.1585050944718;
        Tue, 24 Mar 2020 04:55:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls1568401oif.3.gmail; Tue, 24
 Mar 2020 04:55:44 -0700 (PDT)
X-Received: by 2002:aca:b144:: with SMTP id a65mr3112286oif.75.1585050944111;
        Tue, 24 Mar 2020 04:55:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585050944; cv=none;
        d=google.com; s=arc-20160816;
        b=IM10o1L9NcH6TqzfKSiii+La2m61SHMT3ojHsbd2JcTXlRmlxs4yfhVtXXzBw9BeOP
         NTI9/95pOH0HvnYX6A8savKmww/EEOc69ARHYqC4iu4ZI8DtQ0n0Ldz2zawu138eXauM
         sOIzUbBJW3LmuKDQdy2w00/2JpvXT5Ivst2tjUSTiktXsq7xSBvKFsstYub8DEh834W7
         wVUBF9qHAEtyZfC4pauOrGdoUdB/3cDuzNDjGXBj7xV7F7QxYwmQ/Z52z5YmwYoUEi1M
         Z3ckT5+vO+s5AzKZPmGQ9URZOK5NNzI+5EJOWj1AwoxDKTXSv5aAtXzuFx/w0zAhahQF
         mxgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=INDfyDG13JHQJulrp6OmvE+vCXcSRL3cJzDUyXi2B68=;
        b=OcrEORoVNycl8LwTawWDN65vzggFCenh5cxJWYHUjDLs50JP9B45s6DOQ9TQkd6TqM
         UR2RNSlJpak3kJHw9uIJ6buq862TkCjCjB1lbFP7CChTcgUumzFNltXS4V76pA5bKDHc
         Cb5kTVxIbv2wyUpeS7UbWMJy8/I+DIePFKxz1LR6V+OxWzuO7A4X4OdfOrtDopUxoJGd
         6uoDDpnwNN3/bjGdBIDgJmQInwHl5o0TwjzkKleMg0Um5YsIaV8Pcd/ApC9zEOBSi2dK
         5U16jLrleVH9wpzAJY5dAH7+4IrN0F48PRuiao88P0rL6wvMqrc5oiIH4ewfjsc8Jpfu
         ranw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id m132si1197155oig.3.2020.03.24.04.55.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Mar 2020 04:55:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.me.apana.org.au ([192.168.0.7] helo=gwarestrin.arnor.me.apana.org.au)
	by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
	id 1jGi9Y-0005xY-1w; Tue, 24 Mar 2020 22:55:29 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Tue, 24 Mar 2020 22:55:27 +1100
Date: Tue, 24 Mar 2020 22:55:27 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com, linux-crypto@vger.kernel.org,
	Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>,
	Peter Zijlstra <peterz@infradead.org>,
	"H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	linux-kbuild@vger.kernel.org
Subject: Re: [PATCH 16/16] crypto: x86 - clean up
 poly1305-x86_64-cryptogams.S by 'make clean'
Message-ID: <20200324115527.GC31003@gondor.apana.org.au>
References: <20200324084821.29944-1-masahiroy@kernel.org>
 <20200324084821.29944-17-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200324084821.29944-17-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Tue, Mar 24, 2020 at 05:48:21PM +0900, Masahiro Yamada wrote:
> poly1305-x86_64-cryptogams.S is a generated file, so it should be
> cleaned up by 'make clean'.
> 
> Assigning it to the variable 'targets' teaches Kbuild that it is a
> generated file. However, this line is not evaluated while cleaning
> because scripts/Makefile.clean does not include include/config/auto.conf.
> 
> Removing the ifneq-conditional, so this file is correctly cleaned up.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/x86/crypto/Makefile | 2 --
>  1 file changed, 2 deletions(-)

Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324115527.GC31003%40gondor.apana.org.au.
