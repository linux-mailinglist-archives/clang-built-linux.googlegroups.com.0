Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOGV4GEAMGQETLYTV7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1B03EC69B
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 03:15:37 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id a62-20020a254d410000b0290592f360b0ccsf13055779ybb.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 18:15:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628990136; cv=pass;
        d=google.com; s=arc-20160816;
        b=rZmEaM9P/xHMVBUi6BAGTzo6+hZA50RcMb+/TE6IPv0QV0w6eXN5yP8qwTuP3YzoNQ
         DW1ZqxbLlpofP9VJiTBb1FMOeZfkxUOElC8eJM9EoAh2ByAF0+ga8P1spnL4kuRIjdle
         xAIcrWxZNGrxOECYSeDW15FuUnPzpUqYPdsBugFlk8AfWhb9+z5HAO2Zx8D9FuDlkwlA
         5GjNwdCFaGvXGKoD9TZH8pMWIALxHWEn2DGzXdNtr1YjZobL38CfXDV9J/7/iYROUEQ/
         rL/YhBS87Kf41ScC/RJ7ogmWVoY3RiExjsQItwgW8hqwNheO548YZTRgVcnh9TMBLLDB
         BMiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vsptW6+A7fEBAbAFLScsfZ2rdXT875NPOQBTh9JxSqI=;
        b=wtLOGDoJUabBNpaqxLAVv5JRUqZzTP2VUm/SIH2TdZ94vK5IAra2xsRJqsVafIRXI6
         mLjDZmQsLTsLoWJ3IWH863I/lfiK6Nv+1WGSyfdOXYhRIqD1Ddz1F0MiaH27ZSACcwPZ
         INnJid0v8FkCaxeM9qPgiZkwiffKihsnmF40RksMKLNjdUQQmnPpmGA9p65fx6XXd/oR
         Yi/Ai0FqAS41QX9+4UclRBzCAHP/Uajy3orlUQ0kETH3GjjqIy3FhZgR2l+5AblUX4UG
         F1sNekvHWP9baqtUT1qOOTpbfPV7ARktDNOLLhkSAfTPC5vlbieGIjMuxkVV6sgkyYTp
         +JxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iBQq5vzn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vsptW6+A7fEBAbAFLScsfZ2rdXT875NPOQBTh9JxSqI=;
        b=ZlQWRA9wDhobvL6Dm8IWDp8O3NZNMaSEXomqUljzLljIXdI1flxQwnL53yUN9FjgX8
         bl7oQSUN/fbqV+FB1O/SSH1SaBDdh8btDOkWjY4ggpyCjjYnpA6VhUKSKdY8xOHRpF8q
         /p1nhPdNDDRA+LdwHNwmGWBHPlPEvU522KzzXgH4iNHdiLV52a1ZIKN4B5dtJZAS2J2L
         soqorJ6fD+shfNJ6mjdovZMQHqkuQ8MmwXkv7IB+V7R4+b+3y3Wb62IFQMroBAqaBoCp
         PJAPnrVPniz6X8diCi/Ffcvznb6vOaf/Wxq/krfy9a4wLzTU4MBPaOY9lVfRz18pqJMr
         ib+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vsptW6+A7fEBAbAFLScsfZ2rdXT875NPOQBTh9JxSqI=;
        b=mgQxXO7zUJoNfAgyBlA4P9t3mR/C2xUNt6aDqWKsi2fFi0gc4fWI3uWGjgTNNymzAs
         v7wLVn9o0o6EWfRsRhvpaqz3hyayk+XZWiB4LhnNG4s+1l6K8ngNjjiZDRBsQmKRTJKs
         SLec/rCiTGN6xI/t5XC2MjyrBkBUP3b4FhJeVWPZLlCnd+IrRtIznks1b7YTl8Jy2wQu
         QUyQpmi3h/ILMjm9S6HiDQgwA6ekJ+CP1RJ3JeY92n7LU0biznbXANapIJ6svTPK+mJV
         EVtC0x8SvkAdVbOkUQ0NiejK/S4lWp8+G+FPCGPygWwCRr70WV4a0tAQcm3i5nH1dV9P
         V+mA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yxB5vgABPHrbfLgYlB2QbdcDnx8AZuE0aAJok2fvSo10sraJV
	Km/d2x+HJtgq19VloK2XTng=
X-Google-Smtp-Source: ABdhPJy2SBPfWMiZEkuV87kwe9shjXr8Hvntye57Zse4mA0lNtj5FOwgSVKdfaunuys6B97oYDmkhg==
X-Received: by 2002:a25:8c4:: with SMTP id 187mr11728239ybi.369.1628990136161;
        Sat, 14 Aug 2021 18:15:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:24ce:: with SMTP id k197ls1770069ybk.3.gmail; Sat, 14
 Aug 2021 18:15:35 -0700 (PDT)
X-Received: by 2002:a25:ad51:: with SMTP id l17mr11644430ybe.54.1628990135671;
        Sat, 14 Aug 2021 18:15:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628990135; cv=none;
        d=google.com; s=arc-20160816;
        b=TQtnmFsU+tJFL+afOV40cO4S2ER/J1hPZHZvFdITh+zpR/TqC8L6lNE3fdow6t+Ae0
         mLDiby3ZFsb9/EhRhK7g7+29DAOAz4CZz+QuSyCMzB7k1IWbqK4t4Q4IVNhjIU37gncg
         6UjOEByHQADbxbFHQ+ZEhWhy+Qw54IOp/11FbqvYgFirn+EccndmMpnSRBOtXy1k7Htl
         4SyntWmcCMXJnFQtVhWLyOg/Pu3qgdJ94PvzxhmcIUb1UZK45BcNBooe4MQPl2mGDYZJ
         3YbZiTsT0OzQMRw7b66Dw1a4IAbJCfLagLJhQFQtKU1LqTK2G68nytyG7L8NZwNRlj1E
         QgaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=oTu05BmSQvuSGSM1dGMWBEcKpbbGByoSk9dRZEbm6u0=;
        b=GVfXlYgm1ybk0oJKeKWeOtnLPjkOx3sDKWyDzl0qCQDmhZLimar+DttbINMpWNdFTU
         ZCA8x4RuOODQyKyW7k6WW2HBOATEIXfWrkhvW1/iyTeZnIca4l0nFNh2iOWCTKieExrE
         Hl17BUZbBAsiNf9tRaGR0ObCZ5OzYldbNhvHSN88koqWCbNBrO3NtWYJibEOI31Vtw6B
         /NsVePQZhxR2/dBL0TRzqVHFg3zyHXYtjD0pcHQCAcJOAZ3DzRn3xyK4u92cWNtYjdCV
         zvsxNgVarQ8sH1WYIro8kT9RuuEEtMFfulW5h59660pICUwvpdAOzTbFd9zVAcNaFwK1
         E2+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iBQq5vzn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d10si315950ybq.1.2021.08.14.18.15.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 18:15:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3952A60F42;
	Sun, 15 Aug 2021 01:15:34 +0000 (UTC)
Subject: Re: [PATCH] kbuild: Fix 'no symbols' warning when
 CONFIG_TRIM_UNUSD_KSYMS=y
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 Nicolas Pitre <nico@fluxnic.net>, clang-built-linux@googlegroups.com
References: <20210814234102.2315551-1-masahiroy@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <3afe5054-8129-fe42-b5a4-00bd091b1a0c@kernel.org>
Date: Sat, 14 Aug 2021 18:15:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210814234102.2315551-1-masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iBQq5vzn;       spf=pass
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

On 8/14/2021 4:41 PM, Masahiro Yamada wrote:
> When CONFIG_TRIM_UNUSED_KSYMS is enabled, I see some warnings like this:
> 
>    nm: arch/x86/entry/vdso/vdso32/note.o: no symbols
> 
> $NM (both GNU nm and llvm-nm) warns when no symbol is found in the
> object. Suppress the stderr.
> 
> Fixes: bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
>   scripts/gen_ksymdeps.sh | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/gen_ksymdeps.sh b/scripts/gen_ksymdeps.sh
> index 1324986e1362..5493124e8ee6 100755
> --- a/scripts/gen_ksymdeps.sh
> +++ b/scripts/gen_ksymdeps.sh
> @@ -4,7 +4,10 @@
>   set -e
>   
>   # List of exported symbols
> -ksyms=$($NM $1 | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
> +#
> +# If the object has no symbol, $NM warns 'no symbols'.
> +# Suppress the stdout.
> +ksyms=$($NM $1 2>/dev/null | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
>   
>   if [ -z "$ksyms" ]; then
>   	exit 0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3afe5054-8129-fe42-b5a4-00bd091b1a0c%40kernel.org.
