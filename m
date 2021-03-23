Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAXY5CBAMGQE6H4NEXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7C134686F
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 20:05:40 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id u30sf1409455ooj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 12:05:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616526339; cv=pass;
        d=google.com; s=arc-20160816;
        b=CyUEVV35tIEGNvRtkG7LdJXyFxwout3N+X7X9tu0ITOlWy71i94x1PHbHl/GHCRlSk
         C0V5eS9kll7X1euUhfpUgYwTvlC64AM0sPL6e/nGw6CBZrOW90dOSo7sJGaUVhhQCkU/
         xdwckT3rmsr27ewgEgN4lDhYQgOxhcvOyCmV5s+Wm9KgmYqRQhIBzP9akCe9RkSMlWBC
         QJmkbxaio4AKO7BBxH0Ebfsu0NO0tqeQSQeAqRe1MUTuBz7o0IK3OzKvPF551yP0DpmY
         xMsrC4mlKQfTqpI6EH4k9qKvYaRkJnrN7yM13Ytj2lSE9RbNA2zXaM/kq7lTo0GCmMhI
         n8eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=i/EuHgWoD77WwcpFPRl5sAd+yOd2RdBdOFy58uXRHRA=;
        b=Fjegh70xTwWDOZBuxc85lA26prYz9KNFMgtGhwi80t2Ah4ITTshKWv1oJefDWKlJpn
         vKP1uJpkuL6eLgnBKaC9TF3dtnqSV1nQetXGCbAzZGiZ0CLVQrzEYBwC4Kp/9sqKYfuB
         U0rGVhrIj4ewSCDQTKjSuoaODkTjHAocJqZ5i/PHKjHkF/HoI1vBvFv76/AzLr9KsgTz
         JVd6Uims1urrYZn7LtwHe6cR60TI3l8AYpAmHvrjIfsjdR0gikK1bKKdN8dPzkZ2XvJC
         qxNdus08lbYRSTGWUqJ5f+kGoVwF1cv9lLK9pfC+dJ3RDnS04/GXvpi136SA2TGCLzwI
         6RhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RWmrJKJy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i/EuHgWoD77WwcpFPRl5sAd+yOd2RdBdOFy58uXRHRA=;
        b=g9WIfN9qrT/DLQE1TGr/ZG0IKwgBpGBvCCTb/vyFfFbttynzymRHvfov1QXRvXd7fm
         hUVGNu8vW2+pvMvJ3wrhROHTT0J2HPzq7KNGL0OZGJYWaJQlPMnNNXn130d+wGaTyfZ5
         ZXlTXZwRwXloNqzIr2Itjm4ClwhQTGmtQV2DIWu7wEssM9qAxRI6mav3fbcQUaIdVAuk
         HVvrvHT4s8i2amUGBrfbGJXFfKK4qiyrQwahzCFkdmD875GNnJcf3HIa2e9aT+NlRgq8
         jFf5CPUoySve5sW4rjl3AHUOoByFx937Kxv6sgKh2z3dP7lO3e/9sJ8TVWXKhALlHe61
         XtiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=i/EuHgWoD77WwcpFPRl5sAd+yOd2RdBdOFy58uXRHRA=;
        b=m7lXqXP8lmB/KzfwGD8N3fup8/GfCO+pzOqABE1tbQW8BQhbFfN33T6plLKRL5BV31
         MCjioVklSXzEg2Qc/ysMkaI026VKV3NBCuXHlg37ZziQ4tfhl6QYbdBS2l2t6VhXsHQw
         G1Eo0h5PtU8n9X0CE3RXjZj8zTyKaURoWq4vTBC7zVDv2JEiTb559S/8MmVGDpsc/vM/
         trLtzlyW68V2K0CqgUp60EMXIa3lvP3g9j8UyWsGQSfKb0IcPC4q2VxFsQc18g+kVq0g
         Pb5CAGtkPOttaEp32zHIvwWKHJsVVG/NNy4MUxtKwrPu5993Y3qD4H5ofEZonamFumvR
         Lfog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i6A0Hf7o2RpfNi1iHpU2X+H8YbVQhRUXP68Uwfs8vPobAIsf7
	Q0d17aPBoebcIh+BccoTLfA=
X-Google-Smtp-Source: ABdhPJyu/4CSZkrOsLBuZ7Jb2+fFGl7zlM2lKgbKmkwCWCEuwSLhoPcXHR6KJ+cmzNOtkeR0yel/og==
X-Received: by 2002:aca:a951:: with SMTP id s78mr4568577oie.156.1616526338988;
        Tue, 23 Mar 2021 12:05:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls4052051oif.6.gmail; Tue, 23 Mar
 2021 12:05:38 -0700 (PDT)
X-Received: by 2002:aca:a8c3:: with SMTP id r186mr4365113oie.129.1616526338580;
        Tue, 23 Mar 2021 12:05:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616526338; cv=none;
        d=google.com; s=arc-20160816;
        b=gGINRaVdFlZsDzN+LcAFDTmQ8Xrft+/8v/39kwmDeOkBIM1BEzeNosCc9kPo1K4ERl
         hLg3ZT2A5MikWykfaxKQ4KPT0Q3KCuVJrQQnY9JM6VxPwRyGvfTD57z3DK3RzITjUZro
         cIv81QgkvwuNbj/4GxXVI5K30HelPOTZFav2iYAl4CSJRZg7dGoF3rkSHyWe6JS+PXFw
         giB2EVtik82VFpkfbMxxo/Bq8xwhoEcSF+WCXDFkK7f15nctmkyQzhXNE9WYOt5HryoF
         OrqmwYDcx2fQfCqbgmql+DTe2kCIdHJi+eALbk6wRRKTYNpytCTQgEnO041IIkvuNK4A
         De1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lPWwfyNfO8bcUCduKjq10HtVwEqcwZSzzrCLqvuaxQY=;
        b=nQxqS26quEuVl8ZqAE9qc4Q8tLIRkCOckOYnRq1AWCaNlF4YQwv/DD7EGvjD3vTE5H
         Wtq/OLXNHe7ECtIG8Y/tJaOuJO9fLuBpIGHWvrkMDBYf4yGT8b6UOtCJ9DaenztKbdZ/
         EBhA75aAF6XE4QpffIe6GyHFpLL4mqAyFSObo4aruCzOCCOevIt5o7o6dyo7VdZ70JWE
         IIZdHdlDxOOuw9QICsZy044pTnhtyIZxn4cQIVinSchHZpfvYb4qYUzj/daLnMJEbJdE
         wjzbA9gKPpwxBXXXPznAU6cJO4JWiGZzLAk3v3E9889pTRX6R5B0K+qJgeQyuEcuBl4x
         xGPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RWmrJKJy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f2si1531042oob.2.2021.03.23.12.05.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 12:05:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E5E4461481;
	Tue, 23 Mar 2021 19:05:35 +0000 (UTC)
Date: Tue, 23 Mar 2021 12:05:32 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Elliot Berman <eberman@quicinc.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Collingbourne <pcc@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Makefile: fix GDB warning with CONFIG_RELR
Message-ID: <20210323190532.eiqxmskiankf7hn3@archlinux-ax161>
References: <20210319000708.1694662-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210319000708.1694662-1-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RWmrJKJy;       spf=pass
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

On Thu, Mar 18, 2021 at 05:07:06PM -0700, Nick Desaulniers wrote:
> GDB produces the following warning when debugging kernels built with
> CONFIG_RELR:
> 
> BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.relr.dyn'
> 
> when loading a kernel built with CONFIG_RELR into GDB. It can also
> prevent debugging symbols using such relocations.
> 
> Peter sugguests:
>   [That flag] means that lld will use dynamic tags and section type
>   numbers in the OS-specific range rather than the generic range. The
>   kernel itself doesn't care about these numbers; it determines the
>   location of the RELR section using symbols defined by a linker script.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1057
> Suggested-by: Peter Collingbourne <pcc@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  Makefile                      | 2 +-
>  scripts/tools-support-relr.sh | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 5160ff8903c1..47741cb60995 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1088,7 +1088,7 @@ LDFLAGS_vmlinux	+= $(call ld-option, -X,)
>  endif
>  
>  ifeq ($(CONFIG_RELR),y)
> -LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
> +LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr --use-android-relr-tags
>  endif
>  
>  # We never want expected sections to be placed heuristically by the
> diff --git a/scripts/tools-support-relr.sh b/scripts/tools-support-relr.sh
> index 45e8aa360b45..cb55878bd5b8 100755
> --- a/scripts/tools-support-relr.sh
> +++ b/scripts/tools-support-relr.sh
> @@ -7,7 +7,8 @@ trap "rm -f $tmp_file.o $tmp_file $tmp_file.bin" EXIT
>  cat << "END" | $CC -c -x c - -o $tmp_file.o >/dev/null 2>&1
>  void *p = &p;
>  END
> -$LD $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr -o $tmp_file
> +$LD $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr \
> +  --use-android-relr-tags -o $tmp_file
>  
>  # Despite printing an error message, GNU nm still exits with exit code 0 if it
>  # sees a relr section. So we need to check that nothing is printed to stderr.
> -- 
> 2.31.0.rc2.261.g7f71774620-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323190532.eiqxmskiankf7hn3%40archlinux-ax161.
