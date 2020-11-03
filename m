Return-Path: <clang-built-linux+bncBAABBQOFQP6QKGQEPAB5YJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id D70892A3B8E
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 05:55:30 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id j11sf4646256vsj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 20:55:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604379329; cv=pass;
        d=google.com; s=arc-20160816;
        b=cH3xm3gi0Fp1F7q94vG1XlLnMvnKCzQ1U8Oe4ctdidkLUSn5X49snBVSuEgx0FCipw
         iNE0BMkjZU9wQlsog0D57oeBCH5ciyXMJyILfVCSVHTychigedW8wEAbdCw+5/ypXFli
         rR9nASfobZMxBSIhngere7lyfaX9piWILmEjCjz355OueGqk8CybmnXJvYK2sbzPXtn/
         bjudWX/VCF8ckO4hafMnsucXIzfVaaaAhiSKOrNKfiSWhmvQEqwQpCm4Drf856B+23Dy
         QLHb3z7fZ63ULZK1MiyjPEMLlewqePB075EOBS5p4cSSstvJXo110SEy+doFLus++MeP
         oZyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=UsjMMmu39LhtVS/x4toD/5oPzXM7DvUPjt8qtC4oC6Y=;
        b=YM0AK38kQocq97WW5Zo5LYckB5KvQWiO0qcp2dhaXpFwfQt3caDDO4qGjiMCjDCXy1
         YmsCIxJjGjsNhiS+kZPe8Z9/mLB73QUvooGH+HAWfZvAGBIpDOcZKamJs9Df9RCU1o9V
         tlO9uEy+KFMPXYc/KJieaeK72JU3ZD7wnBhB5K4QuanwiroCtDlyRUhcpyzjRjv4EDJS
         1b0sKlq185UvkauD9261btJdpQovWbAGNEW3Aqmm0S/GdxwT7wv7gDM1TU0u6+ztvE3f
         3QS9lfXTWOBXiVmnkGyMNtdwA8EXkToEnyXj4EpENxYjCVC7Shgi/RuouhHh3Q3S8awN
         8p/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gPKVNGX3;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UsjMMmu39LhtVS/x4toD/5oPzXM7DvUPjt8qtC4oC6Y=;
        b=nNkJma91S+zsS/4xxZkRthzpDSIqy/LdYWvl2Tl7R326fNVp3PCi7ucfHSMtY+UYJ9
         uJ6vyylrtIEsaTjyAX/m6pG6zKJ3w4k66Lj/uHea61hl8k0o6rGB115pevAn1PicZVhg
         dxZs6GQDK4fcIvgGZB/rR+XM0gDDPqHGqonShepy/zmKoxu6nFOr0l2jkWWfGz3ydFsK
         VgdhSCn72i1Lw/jQN70d5Yr9ZSfTtZDKpisx9RQz8DGNAnYaSOJhql63OcWUrqeNMTHf
         1Hxrm2+4zBjIOqcpS3ZC8XXh6/7OQY4vdt13NI7XFT3iwsoqNfKqHNxxjStK1k9SZ0l7
         IRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UsjMMmu39LhtVS/x4toD/5oPzXM7DvUPjt8qtC4oC6Y=;
        b=R7cqcpUGeAW3lira/H+93rSwb5etYrMxx+M6ej3zgYCkjlNSkLcir7LtpzDE5eqRh7
         MtZD8pOkKYetPfdvCOfax0QifWMMK0nqOZV8ddYEXIVK/DuJfRTvS0YtM1E56kngrf2D
         h0fIACKYJR2zSntZ4/m8Ff6ewGby/du68Ngj909DUa6xaK4xuxLYjo3/Q7tt5+ew5sM5
         rwCXRY6FefTyqlQDMvUV9v+B8LCr7QYYkgyjVGLMDbUTg8UhORdfqRERC90EznucOt9Q
         NJ5tXSpgNO24yOf2+y7r4cjIR7BM1E7QjJ32+h44sLdNB+1fNByPHGYV/6EHWarWCeeW
         3F6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318o2In9/k/aqUqv7B21lhOOweeXS4ysHh3I/k7TCeN07R08epu
	EDn/3BYMqWKdiEbsSB5orIE=
X-Google-Smtp-Source: ABdhPJw4WmdEhLXLwbaN+53mU5WhlJvbHAMqABXGTf7Z4Vt3EvZn80EfjWSSafUxUu6GUjDukQJWrA==
X-Received: by 2002:a9f:3dcc:: with SMTP id e12mr9845836uaj.72.1604379329644;
        Mon, 02 Nov 2020 20:55:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6102:: with SMTP id v2ls52619vsb.7.gmail; Mon, 02 Nov
 2020 20:55:29 -0800 (PST)
X-Received: by 2002:a67:503:: with SMTP id 3mr15082731vsf.21.1604379329185;
        Mon, 02 Nov 2020 20:55:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604379329; cv=none;
        d=google.com; s=arc-20160816;
        b=qvw8mez1w9Meux15W7R2mAjdnx+Z7Yto5WySvTnN1oFoztWDuX5hfH4OGVpT2aNu5G
         VmRnugdzj4Z4QvehXGHrIAfHKlCVeyqQD7J7TsCobwXATYXjIwhsKP6XJnteHA/sha01
         /+/nQKtOsc4Qe1pMfc+8DX02wqpRNIzm39wGgpaNN53XRX94WJidcbYIHnG+AOyFie45
         S2yNucS51Xvqp+rx16cOSUYqxaNB7AcpTGTefGF9RI/U2u5pOKbIxmJT7RYSrGPGu4q4
         o/E26sahtXfGzNYAW3C6X375clFQL0GyXWyObPfL4DzU4c6S/W/lXlglgZQEAprsOZgy
         s0/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=jbo9eRt6GAj1tPEWuLj9BiBAJ0tgqeasBaHuIkPxzjo=;
        b=En0so4YYGj2uzHbI6T8W/JRYho7eERxkJlJu1MHKiaifnCx3r/X72pEokc7Is+s7VU
         FhliCK2hRwca7DQnSrwSZDayyuPZNy2xuX+NhClAEc17wY5hc8sHZ0ch99aJIIBpGVVz
         jPaCh6bMJXcMZRrCi5JP4dKOY/eH2y/rsN9ZzOBBfYTQV2b24Z/2DoTt7xnQiXdhEGmb
         hKVnwKXEUGVNLHg5lpds1na826XvuklisA+IdHE+q3+4EERuu0i4Ot56St5U33MgE69Z
         af6BjQDP7R+Eoh78ut02BsjFbDn+WK0xGmqfJrm4rXB4fYZ08MQvQ+QVpwSxCLpKBhB2
         yQZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gPKVNGX3;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s4si651923vsm.1.2020.11.02.20.55.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2020 20:55:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (83-245-197-237.elisa-laajakaista.fi [83.245.197.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 08A5222243;
	Tue,  3 Nov 2020 04:55:24 +0000 (UTC)
Date: Tue, 3 Nov 2020 06:55:21 +0200
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
Message-ID: <20201103045521.GA58906@kernel.org>
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200902225911.209899-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200902225911.209899-2-ndesaulniers@google.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gPKVNGX3;       spf=pass
 (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jarkko@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Sep 02, 2020 at 03:59:05PM -0700, Nick Desaulniers wrote:
> During Plumbers 2020, we voted to just support the latest release of
> Clang for now.  Add a compile time check for this.
>=20
> We plan to remove workarounds for older versions now, which will break
> in subtle and not so subtle ways.
>=20
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> Acked-by: Marco Elver <elver@google.com>
> Acked-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Sedat Dilek <sedat.dilek@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/9
> Link: https://github.com/ClangBuiltLinux/linux/issues/941
> ---
>  include/linux/compiler-clang.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clan=
g.h
> index cee0c728d39a..230604e7f057 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -3,6 +3,14 @@
>  #error "Please don't include <linux/compiler-clang.h> directly, include =
<linux/compiler.h> instead."
>  #endif
> =20
> +#define CLANG_VERSION (__clang_major__ * 10000	\
> +		     + __clang_minor__ * 100	\
> +		     + __clang_patchlevel__)
> +
> +#if CLANG_VERSION < 100001
> +# error Sorry, your version of Clang is too old - please use 10.0.1 or n=
ewer.
> +#endif


I'm trying to compile a BPF enabled test kernel for a live system and I
get this error even though I have much newer clang:

=E2=9E=9C  ~ (master) =E2=9C=94 clang --version         =20
Ubuntu clang version 11.0.0-2
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin

Tried to Google for troubleshooter tips but this patch is basically the
only hit I get :-)


> +
>  /* Compiler specific definitions for Clang compiler */
> =20
>  /* same as gcc, this was present in clang-2.6 so we can assume it works
> --=20
> 2.28.0.402.g5ffc5be6b7-goog
>=20

/Jarkko

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201103045521.GA58906%40kernel.org.
