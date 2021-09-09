Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXUF5GEQMGQEMZ7K4AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FCC405BEE
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 19:22:38 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id r17-20020adfda510000b02901526f76d738sf755913wrl.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 10:22:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631208158; cv=pass;
        d=google.com; s=arc-20160816;
        b=PpNKXRs+C7qmRocptLRfCxw+WGfN1DVQG0Ak1ozSgVonyAKZogiCWCEiV1fnS4Bkrm
         lrqOEao/YniZ4hVAfDjoYMtMPwru5+Aoz/EQSyHWVqEY32/mJGmeW6kKksjIkm880eji
         qEboKc2UZshuXW2M+mAXAZIYlPKuVxdKQ9aioE+rvJmlY87XJHi1E5O8hqcyKtJP/FaX
         ZSnj1OL78qF4MbQRoA8snqggP+bfbk+/LqxS2QbNpIL6JFN1ZpOP30r677/DJCht09tm
         pWEvcCvMz4m62gKuEi0xSp0HqXPu0R6SVq60h7IDLD8sQg3GIcKnzhqef7mcJWVZKtBQ
         HIpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o8wuivRNZBCHcgK3F03PgtwKxPH3nVbrW+z6H/kE0ig=;
        b=VqExHxOM2K+tY8Ua9ywb6WtA2aWiQ6DbA24gYz+gCkq4NyN+R0/CjR5UDRnGIosUtq
         RXL6VpokE4YYGh8e99X+Aqcq2OhzA3aj/MtNBuimzvxC2N0TLRknT1jvNYXRWrsXS+oU
         Egz89dFktVR84fxCwbIpAZxLRGj/4CY12R3k4uZZHQvV5mllCxeiAcVPu4H7coaVl+mE
         j3qATJKVuRbt6NVdmGaJCeCHSWiXaljpp7DfZ4XsfKvAfTLUjLZn4qwJu3595KLkI2nv
         2fD3fzzGK38dR/QD2lNOes624lDAg7yd3dHxooO4FMxWyWoiNR0kOlkguj7M9EMnsLKI
         dRzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=daKTLDBv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o8wuivRNZBCHcgK3F03PgtwKxPH3nVbrW+z6H/kE0ig=;
        b=f6Zy2oihIVrxdP6h8+97/UmEYJj3vOhN7NPSCRSBtVWKrTPdRFbqBByRGFNqvJX7R/
         ww33swMeGssgWZK+Z2JfvD1SkVRVbcBj9RQbKLazMPpKgdY5RBv+4fn0KAYa8idirtKf
         puW/j/72lgQqMDsh35ISN6jXusKgVHus2Y5FrQk2XEyspWE/SkaP+DPa10EvA0JwoWxh
         ZEjEsvJNRGPGf0U7cznkMekUdqeOGdQusuP4fFJqPbVfB31TeUradNXSoZhWe89FB43J
         HO9o1Fd7p2B1kjtEPvvw24P7Pc159mT9ApIsnPujTDIMkclVfbpr9B88kJR8zYYskENW
         Dbhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o8wuivRNZBCHcgK3F03PgtwKxPH3nVbrW+z6H/kE0ig=;
        b=iEU38VK7k4OtgV2aQ6BbGB+6xnI7drVqeKBucNlp76Nkd3wFCYjrc4w3aUmAw/5kzf
         FxiJgW2i64vGdZYmXdEAsWvNm76qb7k+m4PqdeFqdyRzdzdy8sQu2N+ho97rhs3JXr5K
         w/Ju7o2wKJvG2ZWHH18RJB/EXcN5QgjvRkqBgLYpD6cVjy7X9wfWPbevgjqF31sOXruH
         MD91Umsr26NguF6M5y1z6mYBZAPbKReJpxxEgb2fzDMpAPk7n5Pg4Pyzua7gYXtJdW/r
         TlpUS2lDOkoGXAyiVmMDNyQrNDtTWFmZA057CXv05DLN7lPR2Aeopk6T8SJgonkFSaOQ
         51zQ==
X-Gm-Message-State: AOAM530X01U7uoTu26l4nFRe/2qvHNE7GyZgYwFpB4dzlG3zeKcbPcAU
	Tc5FJ/LNv0oops79Fpq1w90=
X-Google-Smtp-Source: ABdhPJxdlZCn5EJ/FDpUu1THi/ba952iuUm48iFKg19/qxUfqS97XMgsFZOhW6ZnIq3izTWnS65Pzw==
X-Received: by 2002:a7b:cbc8:: with SMTP id n8mr4154683wmi.53.1631208158443;
        Thu, 09 Sep 2021 10:22:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ba86:: with SMTP id p6ls3728917wrg.0.gmail; Thu, 09 Sep
 2021 10:22:37 -0700 (PDT)
X-Received: by 2002:a5d:4452:: with SMTP id x18mr5025751wrr.208.1631208157601;
        Thu, 09 Sep 2021 10:22:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631208157; cv=none;
        d=google.com; s=arc-20160816;
        b=WHw+Sbxlt+jUbIiTyLbz1H0DYTy1bwxe6IFkhZzRONUNIlvMyNiKdSlkihOs+PhV+s
         i5ita4wKZHk/94I7hDAOl70o/G8AC5VoeUzR4k7HAwyc65pDTT4D/swy8lypCwS7RUbw
         PTzBgf5WdHT49QLlXay3UaVw4vEP4VGvi7C0rfPkBdFQJVLG9APU/MBuAxHHDtXVK4n2
         Lr7yFnihq6q/PwX3i7IJrk/Yl3tYwOHfM8UjrKR1LZ/O5ZXh2lhfiY+Vo8c2yPYXl+Cb
         2F19knkB+6872XNSCV4fBFzDqzEwPdMqdDWWXxO/HBGf6522SwxeY1P76wxXsCinBjJm
         oLCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pf0sRl8GXCP8dz4WMUu5tGxz1KupPTUSRLTXOLgH9SU=;
        b=RbPwEfaKp0LJObKf5Etx8+xmaIh3g55omaHUEQGUEn2efEWZFEbC3r3b6sZx1bOBHq
         RGJUJrwZmbMU8IyMgVtjwQ0ILjyNdWIr+ABJGuQSQ3ZpFNFmqcSur19f9/lBGt0EHqZn
         TbxcYqU/3RmVBN5hYNNqQ/mhlD/vDPL9ao7hZF7lLhePX0WhrLuhHIzCSbxghXpWnSVq
         f5CzXKDgRgBF7AjeunTgxfyrcV742gx4+EPms5MbBtBN5oiYzD0JH1DbmISDihWr+xRj
         TyTbWRvCWfnoAm1/+eoSfrqctSOqyowUvm8A2aZl5dGOaTzzKcm+NyWXxI/kKpCOcoYY
         x9Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=daKTLDBv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id q195si54297wme.1.2021.09.09.10.22.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Sep 2021 10:22:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id l11so5165692lfe.1
        for <clang-built-linux@googlegroups.com>; Thu, 09 Sep 2021 10:22:37 -0700 (PDT)
X-Received: by 2002:a05:6512:139c:: with SMTP id p28mr649503lfa.523.1631208157162;
 Thu, 09 Sep 2021 10:22:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210908032847.18683-1-kortanzh@gmail.com>
In-Reply-To: <20210908032847.18683-1-kortanzh@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Sep 2021 10:22:26 -0700
Message-ID: <CAKwvOdnReHxf7ysorwTZtN65Hbw4dTk-z8fAQUaKCvEQ_a97eg@mail.gmail.com>
Subject: Re: [PATCH v2] gen_compile_commands: fix missing 'sys' package
To: Kortan <kortanzh@gmail.com>
Cc: nathan@kernel.org, masahiroy@kernel.org, linux-kbuild@vger.kernel.org, 
	llvm@lists.linux.dev, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=daKTLDBv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Tue, Sep 7, 2021 at 8:30 PM Kortan <kortanzh@gmail.com> wrote:
>
> We need to import the 'sys' package since the script has called
> sys.exit() method.
>
> Signed-off-by: Kortan <kortanzh@gmail.com>

I'm quite sure I've run this script before; how have we not noticed
such an issue before?

> ---
> Changes v1 -> v2:
> * Fix commit title.
> * Improve commit message.
>
>  scripts/clang-tools/gen_compile_commands.py | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> index 0033eedce003..1d1bde1fd45e 100755
> --- a/scripts/clang-tools/gen_compile_commands.py
> +++ b/scripts/clang-tools/gen_compile_commands.py
> @@ -13,6 +13,7 @@ import logging
>  import os
>  import re
>  import subprocess
> +import sys
>
>  _DEFAULT_OUTPUT = 'compile_commands.json'
>  _DEFAULT_LOG_LEVEL = 'WARNING'
> --
> 2.33.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210908032847.18683-1-kortanzh%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnReHxf7ysorwTZtN65Hbw4dTk-z8fAQUaKCvEQ_a97eg%40mail.gmail.com.
