Return-Path: <clang-built-linux+bncBCR5PSMFZYORBHPQQTZAKGQE47L7GUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B428415732D
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 12:01:50 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id f25sf4916844otq.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 03:01:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581332509; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLubeCGatvA0f5oWY64RWV8gjyQWohZOrEBty/SLIVVjwGWsbhwgvdBZBmrsYHasOp
         Qmt2lnXOPe5YKcHpPhEu8qojZpuslbCBXnr/LepI/ku7+B84HmUX8GQfcmr/FqjKEogm
         Xas3TO+isH1bbRMx/lhW6+jqDd/3JSt65R0J9ZwA97dL5w5IibpM9rSh8nGjwFqYYKzW
         O1+aQ957TNju5hnaKxhAdG0tA7I2iMAINxEyWDYR3BypW/hzMPcGYIV6n6k5EVLuFL1g
         /fAi7pRucSjrRmxYDt4bd6dMcUqYLeZIMl2ttHp4iw/fbVFlRSKsjmgQuLjPrVjRRCRZ
         SU1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=W69N+XxTgFJ+J2QfMNgbrUQb4OL4wNKuxjskN+/f0IU=;
        b=Z5RsSiCwQHCCVtQ5QT4lCjlg6ujv3m2+QFT2hWUophyJHPZujdulrAmXohR7BwekW6
         lk/Dss2tERnGIqkn/wvbLGTojjSajuTDypxYOJctOMgdwkcn+CN0o7QhZCRoNzQGIRW5
         VJZ72xSBPdWKXLFavhRsk/BObVPjd1S1Vwp1InduTn/cH1HOa0DRWE0UjVyVXJM12alq
         AijBfD+4Ilm2pCNCuwfsPbNbmxD5wtOAMrLnEFMDf6P34CEQTJY5Co2/CxfdYZ9fn88V
         +J+O5mBqP9VE7B8cbw60Q5Ny661aaIcOGdIpPOK276qkmJUjGO3B3/vy/87L9TOPrbWq
         GEEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=I+3CIT97;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W69N+XxTgFJ+J2QfMNgbrUQb4OL4wNKuxjskN+/f0IU=;
        b=JtsRvB+8STLJzdCtb6QKPmzL3oCuUAg/19PEioSyPd+W6Cp+HqtLnupmMqJe5yk4KZ
         CEHjPM61b/dL5ajNIUOOXjLkQOmYhLIqm61RMcAu+vGr4nXSPn5xIoMXSahZ99NvzdQn
         7LLeJwYSkcU7iUXIbWIC6eoYSo9yblodmVAvMWzLwKkFt3j19fHDkLotjfyybV0h/Uwk
         0Cial1NKAErsiZVPJ+2WLWT1Rc6fVsDiwKg3rlRHP2nlx6MxPqzyCPlae4l/dQWNR2j6
         8MqzpaVxxl7wgGiuLcGZOewGsIz3J//H0sjPvN6RN//axto6qh6/O/OK5eaXm3eLroqb
         mPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W69N+XxTgFJ+J2QfMNgbrUQb4OL4wNKuxjskN+/f0IU=;
        b=lA90MMErEfef+i4CsYbVM0Tq+L3d6af/BULwpK3gcGQx+gKX3HWGFFmiKP0a0mCo+v
         iiVuZYc6eAfFWXUwLoR2OhyT8JuhEbBcX+StUog27SrOfPy7NMPO/h/x+HFIZouEGPsU
         QCReNoJj9ZejodXR05rE/CG83rFCjrPXtBW7E8jVjMfUrwsBZQ5EtcQ2JBvRmuGA4MZ5
         EpCmsrDclUyLGrfIFVpN2GsUUCd2zwr3UJ+0d+AqnX+hxCO4c2ZCIZYz8sXJR2v1gRj9
         C707N7EBqVn0lpLQW7YlHpIxxvdAoDgcbvliYbUk0R+GEzblf0IbG5VQexIHoUKrBW89
         jmVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnK+wZuoWirbR/VjUhEL24YhgoqttJ2dVmADs3gx67WGa98MG+
	31bcZ/Z0QSzruxooDjhCW0Q=
X-Google-Smtp-Source: APXvYqyEM1xyg5WXrZNGPwQCd746uvaFAT/baj6yYaYf7XGVwWU0HZgXtEJRuMcwoD4oBEg69SKLqw==
X-Received: by 2002:aca:44c1:: with SMTP id r184mr419422oia.151.1581332509410;
        Mon, 10 Feb 2020 03:01:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7109:: with SMTP id n9ls2120038otj.10.gmail; Mon, 10 Feb
 2020 03:01:48 -0800 (PST)
X-Received: by 2002:a9d:4e99:: with SMTP id v25mr621009otk.363.1581332508836;
        Mon, 10 Feb 2020 03:01:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581332508; cv=none;
        d=google.com; s=arc-20160816;
        b=qcppdO1HmjqrxsUVmvvZvltQJxW+xnrUz0sT/sYQU6ZfzjbgPMcwO4zVbsb0XMg4xJ
         PmAAv7EKKF+7ZqL06F2ZyvKBCWb6pVzRNVtD9XiQbEK07gcBSWlhg9KoTOSsffrxbpYT
         DctxQtorwYGeGWxbtHnV1dnWHokn7d05lL9QOHZfiKYZKn5zfXlVCEWwnhgf6NeuYb5C
         SHU0vOHCsZ+MjxytGO8kpDxWsk6noyNuU1BDojzDx0B4xW6iRdS8S9IJfxC6OZ8avhmj
         mEVmxjp8/xPiXPgrVeExzuKWrY76JWsNdz5N/6n3X0yquUMfYujGenONnbPKJXzJQeI4
         n3iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=3iXbS5rL2Gq6Vm+5t72NnNkbrQMAKpMwkUFpaTv41K8=;
        b=GORvJOgC9T4zQlgowycMDlrsSsvAO9mtWSrARm2+bE7Lz4+9TIbBlOdtM/fysz1mWs
         Jy5rLY+GUWkd/SmM8XfuUw6+lFuGXFeZjba2sF1ibTr3/uUSSkWKiMgxa/606lFerCNh
         vTT6YIQzMURuis9y174M+W8Bxg3gaUZXp/3f7NhenLj72z8w0ovDOx66DCWyCektCf3d
         1G2kgSukKftmuYVugp1zKHsvb3WC+/VgVjj8WLVwBjBJ0FodNsY6hHUFe382eNlivzod
         pQArtqB8EdT3e3zgZ9iS0P3tHxmq8mDHS5kuA/D8NCv+qrTg6VlW4d2w7MuRDudu759d
         +MtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=I+3CIT97;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id t18si365569otq.5.2020.02.10.03.01.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 03:01:48 -0800 (PST)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 48GNJP0Cxwz9sP7;
	Mon, 10 Feb 2020 22:01:40 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Fangrui Song <maskray@google.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Christophe Leroy <christophe.leroy@c-s.fr>
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>
Subject: Re: [PATCH] powerpc/vdso32: mark __kernel_datapage_offset as STV_PROTECTED
In-Reply-To: <20200205005054.k72fuikf6rwrgfe4@google.com>
References: <20200205005054.k72fuikf6rwrgfe4@google.com>
Date: Mon, 10 Feb 2020 22:01:37 +1100
Message-ID: <87pnemzoxa.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=I+3CIT97;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Fangrui Song <maskray@google.com> writes:
> A PC-relative relocation (R_PPC_REL16_LO in this case) referencing a
> preemptible symbol in a -shared link is not allowed.  GNU ld's powerpc
> port is permissive and allows it [1], but lld will report an error after
> https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/commit/?id=ec0895f08f99515194e9fcfe1338becf6f759d38
>
> Make the symbol protected so that it is non-preemptible but still
> exported.

"preemptible" means something different to me, and I assume we're not
using it to mean the same thing.

Can you explain it using small words that a kernel developer can
understand? :)

cheers

> [1]: https://sourceware.org/bugzilla/show_bug.cgi?id=25500
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/851
> Signed-off-by: Fangrui Song <maskray@google.com>

> ---
>  arch/powerpc/kernel/vdso32/datapage.S | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/powerpc/kernel/vdso32/datapage.S b/arch/powerpc/kernel/vdso32/datapage.S
> index 217bb630f8f9..2831a8676365 100644
> --- a/arch/powerpc/kernel/vdso32/datapage.S
> +++ b/arch/powerpc/kernel/vdso32/datapage.S
> @@ -13,7 +13,8 @@
>  #include <asm/vdso_datapage.h>
>  
>  	.text
> -	.global	__kernel_datapage_offset;
> +	.global	__kernel_datapage_offset
> +	.protected	__kernel_datapage_offset
>  __kernel_datapage_offset:
>  	.long	0
>  
> -- 
> 2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87pnemzoxa.fsf%40mpe.ellerman.id.au.
