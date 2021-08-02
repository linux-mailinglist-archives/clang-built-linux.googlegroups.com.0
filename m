Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBB4JUGEAMGQED32MUKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F643DDFE6
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 21:16:25 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id w19-20020a170902d113b029012c1505a89fsf6640887plw.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 12:16:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627931784; cv=pass;
        d=google.com; s=arc-20160816;
        b=nZfg2rr6Gbdh0xKwRr34MEPOh3nWkUm2uBL70HO0lCqBn2gZGZmMjuKeLkyK86gAh4
         9w4RXJBCbEU9JL2c8kag6AcFi4ffsjO+Ntx2UlQl9qYnXtsxYQWeZyxwBMFrTxqkAIjG
         GOR+ZK4uaLWEALU6F2yhJ4VDwS8U1w3pBgDg18iSHSRURH7gRACYz5l7Z8kJWhUu3JwX
         M4prtSpNCvqrhzoXBh3eX8RiRC0IMBIocEH1XKgPzoot5bzQ6K4g96OYVqMIRGexpbDy
         MBU4EQ4oIh2IZsjJH4KxePlYifkQbj73K9fmx7XaF/r8fqe/0NO8WHEBDsKMwZvx5p3c
         Xn6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=PbM0/ELM1uYf487rfcqlzs+C8/QCIGnVsVM6bDk117k=;
        b=axHQ0+M3g8ixPm3juDrecHYNUnbzOmIQnheHf12xwfs/9wcmVd7TJC9TC66dle5kc6
         JCt4uNgby2HnJS0kr1N8dBUVU94ECl/O/c8GoPN8N9zyTYT2ijRpmhQSzJd6aAU2BX3/
         vF2Gm2AKyxTxe7GVktTinSGHfl2t106JqlmDArfKqak+YNI+VUFk59Yihpq66UIzwHJW
         EWAP9JNmKBVDFNo2djjK7XPkJpbX83rbUJpNmElEB6jeyVQB+WNhNpB5XM7zgMogzWZ/
         wULGl+WJwgP6qHpp6rNrYca7bBvvY0xJF20avj6jnxJf90t/R9byViDR9rr4Tjp0T+an
         is2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CgZFdceT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PbM0/ELM1uYf487rfcqlzs+C8/QCIGnVsVM6bDk117k=;
        b=rxojfeALaytdjmmsjQ6Dv0ka6vwJ4pQNxaq+o4e32ewurzYywq6/ZhRoYgvqPYdZv2
         ApQzji8j8cXbrlBBO8+SEoKTeBwmi7sp1Otw4wzwirPuG37rjDe0915NBd+9sgMneuK4
         xFhzReHuu/OSRjB04Xz1eZXcXr+sTlUU2uH/1jtLbqocmzODOGVlqvjuXHRThzcqjMbI
         kV7Ep4zc0Z92jk2/zGSpJyvgRRgHYccm7JWekX1BPPs8T3vUQB57KSkRz+zAJ21YMFpu
         l27DQI7mIRIBEU4rdErdNi7gbaVM1y9yBNKwX/MWQTJOe+yupZlA6GqVMl8Ko/FF/3vP
         FTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PbM0/ELM1uYf487rfcqlzs+C8/QCIGnVsVM6bDk117k=;
        b=sr4Q/ldseFH2B8hGqtHCm4qCk0Ru4M0RwDKyQP9VUk/hLh/Y6Maxx0rL1yD1sBjtpo
         RNngjAukamqmj1Z1nN5oVp7CeKpQqMs5kBRRvfFbL5pO7s81ZSg2VubeE0003q9Xz8+z
         h+4gyPE0ReQCktS4GO/5NYgQyt5ma2AzfGG/ohgUwdAJ0ZsS4jY/lDyAv2pl6AkV/LOt
         jsrLoZJJAGVQtVhrko+NAKD9LI4PJr1q5XcTfpiTuaKUgQ0o7Lb6eVhD/l8VwmbTmk7I
         pjwrguK2A2j+pRg1YEIOUUUMOYeZANERSD1OMDY9EaihRXlsrWG4RFdxEWJse+Huu7Tw
         e8Ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Oi+KyThedtERROOqynCqaDeVSZuTYpVKW/FfERGGDdIwfVXIN
	KLREye9ou2sNvgC74oO1fzc=
X-Google-Smtp-Source: ABdhPJx7Wf79KdlVRilSmOvnNdaCy0Jb1ZOt36JggKCftOmQTLfIg2L2IsiGpZF0Z9M1Bw+lrl+Yug==
X-Received: by 2002:a63:c113:: with SMTP id w19mr2495249pgf.168.1627931783949;
        Mon, 02 Aug 2021 12:16:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls5551613pls.3.gmail; Mon, 02
 Aug 2021 12:16:23 -0700 (PDT)
X-Received: by 2002:a17:90a:4404:: with SMTP id s4mr389247pjg.218.1627931783430;
        Mon, 02 Aug 2021 12:16:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627931783; cv=none;
        d=google.com; s=arc-20160816;
        b=SPQCjo5Xsdw2DySJjzKCcOgKsNIjgMVAi7+L4ijUnsVpNkxTC2GDGr/v5Ok3vT1K7g
         LkjNvUxSKOg+JUH2eb1CmQzmGfN+OQoQNoz6OFkxYwTf25PpYakUuIMRdEnuZA+q04jQ
         1gMDfgcEeJSfU+Vs/T3AKCDyTA2aj4HODlcha9TeCFKWVz4Q4ZW/k6z7ljeUVNjgHk1q
         ZYdDRoGD6mhHM095BsIobT365/bsN7gqWLXghyoRxZHyFlgGAdabvA4fGsX8zkDMj7SJ
         /ajdjpNkLtllYjk1Yh5XGqY8O3t599RObAqGjvbs6z6RoWBVcv8dhIzkflsCCK7umrQY
         tc1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ZLfvUWXbh5V6pHR5OWkUX5ozbRIHg/mNXbOhh77U1jM=;
        b=dHsAweJhcyr7B85Jb3GExPIFSXatRHBrIakdinEOCeKFJ3wh0m++FvKx0nqRL9b9Gn
         bIb8XMYdiixKAGqmYWX8EKv8YLiL6tDNE7ZG1Be6Gzs+cdsyxuV268wrfkgXZ+U5CDR2
         J4Rk8goe1/6ifH3w/fm7Eodh5zFxGyIZwj+iRkYjLs68NkupQkzAZx3OM2vJwgMiomyO
         AugZdbFRfopYPHuzhmOHUBVG/AhfixEsmxw0ktyFn5FOxsnrHqzzl0taP16ktUpRenzT
         w3FANh20lb9VQI+1pwHSUVXZICsAClSSuk9EYY12eyOlEqxKr5G6jYFPDHrAjMlezWRc
         aBCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CgZFdceT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r7si773159pjp.0.2021.08.02.12.16.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 12:16:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 27F2860EE8;
	Mon,  2 Aug 2021 19:16:22 +0000 (UTC)
Subject: Re: [PATCH v6 3/3] Documentation/llvm: update CROSS_COMPILE
 inferencing
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, Geert Uytterhoeven
 <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210802183910.1802120-1-ndesaulniers@google.com>
 <20210802183910.1802120-4-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <95712f4c-9da5-b7b6-f617-b6b686b6eadc@kernel.org>
Date: Mon, 2 Aug 2021 12:16:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210802183910.1802120-4-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CgZFdceT;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On 8/2/2021 11:39 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
> As noted by Masahiro, document how we can generally infer CROSS_COMPILE
> (and the more specific details about --target and --prefix) based on
> ARCH.
> 
> Change use of env vars to command line parameters.
> 
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the update, I think this is much easier for non-CBL folks to 
understand.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Changes v5 -> v6:
> * Pick up Fangrui's RB tag.
> * Change use of env vars to command line parameters for consistency.
> 
>   Documentation/kbuild/llvm.rst | 19 ++++++++++++++++++-
>   1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index b18401d2ba82..f8a360958f4c 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -38,7 +38,7 @@ Cross Compiling
>   A single Clang compiler binary will typically contain all supported backends,
>   which can help simplify cross compiling. ::
>   
> -	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> +	make ARCH=arm64 CC=clang CROSS_COMPILE=aarch64-linux-gnu-
>   
>   ``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
>   ``CROSS_COMPILE`` is used to set a command line flag: ``--target=<triple>``. For
> @@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
>   Currently, the integrated assembler is disabled by default. You can pass
>   ``LLVM_IAS=1`` to enable it.
>   
> +Omitting CROSS_COMPILE
> +----------------------
> +
> +As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
> +
> +Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> +``--prefix=<path>`` to search for the GNU assembler and linker.
> +
> +If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
> +from ``ARCH``.
> +
> +That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
> +
> +For example, to cross-compile the arm64 kernel::
> +
> +	make ARCH=arm64 LLVM=1 LLVM_IAS=1
> +
>   Supported Architectures
>   -----------------------
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/95712f4c-9da5-b7b6-f617-b6b686b6eadc%40kernel.org.
