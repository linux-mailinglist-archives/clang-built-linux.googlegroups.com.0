Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW5KW75AKGQE3H36O2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD7225872C
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 07:00:13 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id z5sf8118ilp.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 22:00:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598936412; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+KytXtQE01ma89NdmEqq7yi7H7rAuqWDnHkL21YQ0wrwlz4zKGoATQGb6DbUBr807
         K6vdxqgeBriLpEo2BFP43qhFruU7Yrg5mnA2aA6Zbl+FlEK1McLQ6nW+NQpPXc4puRg0
         Kt79LovLmAVJsmeeqQinZPfvmSKHBIukVMCqyG9ViQ8238s4JxQxDmpmSxP5MdXOsYQy
         3WlWly2O+N5o5JRP4AYRA1NyOP5S55ahDnN2Dws7xz9pTyAIZnWvpM7ZcjwMeYSZ+vDl
         K0T1kDFhE68yWYHYdnAJ74uVxfrAR6pUpvj+pYirEaHnhhPuNxGE69eb+KwK2pLeKdhY
         NygQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=bRdwMInS0bFcSP22NvIszM3qC9xCZ7sSLhFGRvWfroo=;
        b=q/x23pHCPT7uGX2g2K+sNrlnp+MzdpXcCEv6CGYUZD+MxmOT5F82GYlLcP99GfwNDY
         HHqhtZ7UlFdEWfze+8jndyrifhjwqgEEdQZ982z1oUnYqvZwG38jktzdG7sW/h8pMCSr
         pG0mFTT04QMQ8i4FBzt/l7K1BYd+LQ191YMGf60oiPKfZUpVgjA882UB2F3A9ZAvbJKl
         POZEuULcPmhf/cp1VpnBXk8WG4uAc9ntQe6FJKk5IajQrjmv4bI6xqOzRT77LUsz1414
         pJVK/8npANJVp7QTaiXDF2BuUl620rUdE0WqU9Np0rE9EMRv6Cnp3W6S+h9UX/7CDiWi
         c9dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdYzAnvh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bRdwMInS0bFcSP22NvIszM3qC9xCZ7sSLhFGRvWfroo=;
        b=eZUTA+20hgqBicELcqGjbCUd7Oi0nGNYF1UuTAnm8lnpjOT5YTYLyok74pu7zH/CB6
         ANDQ/vsjP1QPNaBVAfq/HrzyBmiReQj2AoKU5iNKn1yvK8LWoI0/pWH0ru/fuq1MuBJG
         rpWfsLZP7LzsLlzX0egVWrpcXzU6lUCcraAcz6EI+UpZOkVDbjG+RS/yls8j7AfHWmaE
         W0bSiL1ilPAmXICJUABB0augGrwLKVCHiX7BdTwSPakj3OdZrLSplbHtn+hqVS1qvd+r
         u18nHqnfYdxECOn/fee2ZKNUMTsbCYr7svD+PK0zKk+2ZJyr/3s2gxfcDM9oigHmwQtY
         XoFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bRdwMInS0bFcSP22NvIszM3qC9xCZ7sSLhFGRvWfroo=;
        b=T1ass3aaHdQUS6Mbxwvp5oJ3B6J+F+TATXnV3JrTvUhuBN/OkPtL46olpR7Vm47Wqx
         2pelbega5vJaVVqBvxH4N2+ZFGWiu5sBjCvsdJPHRb4L/tyMbt7rw9IklqIDbJuFZ3un
         bMistt0NlCenwSUaT2FApdMrRoRcme8ADdyC1fl/LEua40J5Qw4lK5R9T0cMHgvSH3/v
         /YVl9p/jtF2HsG4/NJ1w72n3pQIJ0a8mnCT0KlwsZ9afODx+2M0a4jzLIYS28s2iuL0+
         c2ASKZc+PCjjmFnI6awsA2FI+T7z5tnNDaEG/LnZkSQbh7RwHuIzOWHFRkXWpuIUwanH
         R0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bRdwMInS0bFcSP22NvIszM3qC9xCZ7sSLhFGRvWfroo=;
        b=kW4Przgpdk28sC3fiLH03QnV5xUUiT3jEi24glp6DIj+eZtxKuSuvufaFoU7ccGpWF
         01GalQTN25H8bDgaDazFHqpv9qRT1vGI8LEmG4bfLDluJFj2KaQWCwfqmo8Q0vIgLJJB
         /ykVkhlNHhLd2wcy/iZ8NKSrsXk3AUX3fY62qHH6EfBHmfsCGfsWpyh3DRjNQUG4H2kK
         4rypeRIbCGYXxk79HjQm8pn9k3QhNAcUT0i4VVJaxILyf6xK+Jrvo2ShTNXFom1+vAbL
         bMddh8q/eIlaTmllfGlJUPCIZwHnH2jtoQQp1YMNUWDwuk+2k7ljz9HtAkGXis25AW5R
         +kgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LZkCJjUNdHA8Ddb/+Mp7l3AepRdOGpMUomGeH94ELaJtB5kUO
	26p0V5PX2FLKV58vEu99Blg=
X-Google-Smtp-Source: ABdhPJxQAILaVIWCcb87eZDbyasifJH6sCadIY5h0ud7cRHXfPqYdGzkXFOLsKJyLdE+vxu4F2JlSw==
X-Received: by 2002:a5d:9051:: with SMTP id v17mr69335ioq.88.1598936412093;
        Mon, 31 Aug 2020 22:00:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6f56:: with SMTP id b22ls1173470jae.9.gmail; Mon, 31 Aug
 2020 22:00:11 -0700 (PDT)
X-Received: by 2002:a05:6638:6a6:: with SMTP id d6mr4429925jad.67.1598936411705;
        Mon, 31 Aug 2020 22:00:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598936411; cv=none;
        d=google.com; s=arc-20160816;
        b=wg/6OtiYQQrDHJcBTEDCJImA7QgQsxu8nOm/I6PmYXPtNXphNhkIzDcD/02kkIgaTB
         ih0jYXxwrDuKpQAOC7xZrz3NqLtUgOnc1szDWgbYVtqzm8yMw9dQaLZPodPeU3qFNowH
         8tEAXTp+kh3bv0ACyQorIykh8jTedkZrpat6VYi57E9or8RHqkrE3xWcH028alOZha5z
         MPTxKKPu1At8wdipMFtZDqgx4aGPTmhiebQmIbSvHGiO7odFEG7VLVRlw3X0ZX2u/OfC
         kM80yJlMxSq4BOgi+X9oB7k9762iOhse4XnYR0sFTK++8hkDZ3YrhoR6YvqdZ/ueDJzW
         u/Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vk2gX1BCYqANDPcxvPWahORASUA72oVkRN2etYZLoxY=;
        b=ldAtahTXPsmBuEU7roczxMjmhR4LbCJMZTWpi+zDp8IOgmo/iT5Hi/bNAeQ/ypRCO4
         9ifjF7sF0P3uKFauFnCRZCUp8rBjfipJDnzghpMi/kBPmUz1wTiHcpog+RBzHKo8SiGZ
         zACNelAjBJKR1fFxw2PUzqg8p98JNneC0XmpmQWHjmkz9Tn62hZ+/kJ8xu8YPIB38FGp
         sO0YAwdDPBWjTP9m21T4MVbt3ojp9dc/NCM9w4fLahkgkpVuwJZ78TJ8TJZnOxOgqrN0
         pQ00obehrC8s3yPhIoOkUZ9jsY2n2nICMnnbUIx1u5UjT3uRKjBDA3YyQYWr17Xbta3R
         bV9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdYzAnvh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id v15si6384iow.1.2020.08.31.22.00.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 22:00:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id z2so23517qtv.12
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 22:00:11 -0700 (PDT)
X-Received: by 2002:ac8:4f4e:: with SMTP id i14mr4487917qtw.213.1598936411151;
        Mon, 31 Aug 2020 22:00:11 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id z14sm12392131qtn.92.2020.08.31.22.00.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 22:00:10 -0700 (PDT)
Date: Mon, 31 Aug 2020 22:00:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] compiler-gcc: improve version error
Message-ID: <20200901050009.GF1561318@ubuntu-n2-xlarge-x86>
References: <20200901002326.1137289-1-ndesaulniers@google.com>
 <20200901002326.1137289-8-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901002326.1137289-8-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CdYzAnvh;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 31, 2020 at 05:23:26PM -0700, Nick Desaulniers wrote:
> As Kees suggests, do so provides developers with two useful pieces of
> information:
> - The kernel build was attempting to use GCC.
>   (Maybe they accidentally poked the wrong configs in a CI.)
> - They need 4.9 or better.
>   ("Upgrade to what version?" doesn't need to be dug out of documentation,
>    headers, etc.)
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

It would be nice if there was some easy way to link the documentation
here so that patches like commit 0bddd227f3dc ("Documentation: update
for gcc 4.9 requirement") did not need to happen or be remembered.

> ---
>  include/linux/compiler-gcc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 7a3769040d7d..d1e3c6896b71 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -12,7 +12,7 @@
>  
>  /* https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145 */
>  #if GCC_VERSION < 40900
> -# error Sorry, your compiler is too old - please upgrade it.
> +# error Sorry, your version of GCC is too old - please use 4.9 or newer.
>  #endif
>  
>  /* Optimization barrier */
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901050009.GF1561318%40ubuntu-n2-xlarge-x86.
