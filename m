Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWE73WAAMGQE4LU24ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A07309FC2
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 01:48:26 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id f3sf2510961plg.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 16:48:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612140504; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ocd9g77GuXzrAJX/aJ3QMIkXrBmQARS8SOPunPDLZggqNzMv6Kmn54wjSwEcPyiENp
         QrPbdZ9Sm1Toj59VsIxsWyXZggoA3FGKpEt2v13D793tHDkZSUjv8idRGKT9dkVesTj+
         /aDTFF0KjyM+7ngyI65xb2YJQ8V7NaMqMQ+jk+GaJQBkaInaJH26FaSDwoUOPVTi4Tlh
         Li5LhYVLTvdzw43F7Z7/rxYKifHuB1uf1BJZivcn0eMVjVshx7Gfx84dCesTZ1PTJhCQ
         aqoK2hvrSbvVM6epn9jV6QJIFsV+ToPQECzPRvPdG6RSJFuviy+rGAgoGN/DTRxL7Wpw
         NBzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pkiNexcJwMyBoBfgs+oYGxoOsmbsvpf/s587uunf2Ho=;
        b=O9wwFbmlhdc7yyoWrYJT3ifOCQMJ5xgY97agTRMKDDXqsELkqPmV2DfmhdDi2Jl62n
         +pc5tCbvfdMIfN5TK3h9MMH03aXSWyzNNZoGoRYyJf32G5wCy30bit0pp3HxQ+bfmYgu
         rXBzYTWUkJAtLSTxIzggy1AJieogSqbWYUD9wgIgOMBekAGvj/nT5LhdZkLgUwwjfVMf
         JTKuoMRs/5pWDFup0JwrJwl2wMpx/IfuGMKOd2D2xGI3i4V/+8GRnnVinoSCt1WaPlLz
         VrDP0Ha5bfNRX2v5r54K5aM9DjOlYeJ+TGhWV2e+C9Rt1Xmpqtx4OSOn+iZ3xRfrPVz+
         5gRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KNQVvgNE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pkiNexcJwMyBoBfgs+oYGxoOsmbsvpf/s587uunf2Ho=;
        b=bD2t3n/vwAcIRzzV0UuD7+hSo1cFEW7W36NE2kyueRKzw6bOY8TIj32VlYq4AtqV+z
         uccWFOGmTqq0uzrQjmCPX4aTThWhF1MwVpAaqHxdmtHP286iI/JY14wQHt5RmqHsptF9
         JR8rSs3YZhCR447F/X8JljUw58yO3oAUtVd6CJ9/TZpkxT26K1wlMIrxkgclBpp7F+54
         +FM6Jozm1XceM88I3bvembQqdB5A1KaOjTj0JjE/lUpZ3xRFmYKhF0IpxSoC6pOiqWk2
         zHxpFb7mic7niTZbb6/uJOGGvc/N3FEXs/9Qq5gawGp6xG7hQYS1VZkGYgKZO1dvXaRX
         GY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pkiNexcJwMyBoBfgs+oYGxoOsmbsvpf/s587uunf2Ho=;
        b=X5Y1PLv2w5qu1rUVu/QzvZ6HBUxENThj77aMDgg8nk14Q3KlFoboAF4WRjqurcEe4c
         VOlTxZtFN/RMMxM82+eHCfhEUUrCowrzM8PxslNrtmsb7mUG1YtSO+3NJ/0JY3vSUyR5
         rZfWseq9ldFCeeFjMAHQaox9vDmu8S9mEqMD9TQkNIVuTkpzd1P9ydNbi5Xlw2VDX7eA
         F5Ju/+OB2+Vm4azOkED4evarSarmxng/1LXeV4/txroacVNrJWPcosXmAR81Kvac2+go
         0Vlo614MgHMBaxRPhAytnA+nG9JyYWEuIdrN9I0IoYYU7M3Tr+1eRGS7BYDIx3zE2OOT
         BQgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ityyTnAcsNUvZZOcCGa5jixvrGvGe1b+6lgraUFe5cbp5eWDM
	HLhsBvqLbKCiK3r8VopB4lw=
X-Google-Smtp-Source: ABdhPJzs2A/J0hhGUvyXfrAC8Z2WKdBfOJdSs3acgqkq0iVOVCn1fq+Q3Iq0nA42eAEA/wDDbpzmTg==
X-Received: by 2002:a17:902:b597:b029:e1:54c:634c with SMTP id a23-20020a170902b597b02900e1054c634cmr15054853pls.5.1612140504316;
        Sun, 31 Jan 2021 16:48:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f683:: with SMTP id l3ls7422173plg.4.gmail; Sun, 31
 Jan 2021 16:48:23 -0800 (PST)
X-Received: by 2002:a17:90a:de09:: with SMTP id m9mr14436140pjv.117.1612140503746;
        Sun, 31 Jan 2021 16:48:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612140503; cv=none;
        d=google.com; s=arc-20160816;
        b=vHKPqAyC1w0UjpPKzQHzD0XLjsMY0aWnqKWgm3vuQYgEWnZRxtWKexn81djsgnHda8
         mTrlF0/JlS0yuH/zFAtauOTnY1g6sdG/zi1aZNywkssnSdY4vyXRbKaYPzAtdpZNpkjr
         XtXupN0scLJiTsI8hipP+S8NlSIhmRT9J1hKEEW9mh/kTro0XidYipPnDInfyP9IAD87
         6Y6towBaH+Nma7rNy7GmzU0oFsAsjgXpaBFF+vFDpGESHcNzibJ5VDcAcBF8Q/MtlzPd
         /P/VlVjBi3ZH2KywXtDtqheyaBT1DDTy09pBy6cS2k86vvdANskYJUvFu+hyMe2DMToT
         z43w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8CuwOBHzoIyEuAhrPlShTM4+7MdlcWc2sDIopY3Tp2E=;
        b=zB/0SQXRWNHbGdXqHxP0luDgBcLOrWd+RY8YnsmENtcN9luAQBKfwRgsw/mfHw687u
         sPa30eZNpaFdDVPFM7EfMPYOLBIxEKpBA97IsoD4F04z0+j+73EuxWsFud5Y2o/ogmFk
         sTYz2SeHAg+pB+5z9K03klsJuVtUmIhFfrTWhwDvMVbXhI1sNnKz6u7ycFi35g+j322k
         aPQm5YEJnxTeEu7drxEe2TBCb4iyyJr9VcvzXVnQf8Eydq6c6S/bvbKhWovYMIbV4DDd
         Qg2sgS4SZLqVBH1sPVr3nUIi+UjDye4AW1rySyCjCstZQlwLq4llUb1PP8gkDgf/pdof
         dfEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KNQVvgNE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a18si101024pls.3.2021.01.31.16.48.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Jan 2021 16:48:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CF70364E09;
	Mon,  1 Feb 2021 00:48:22 +0000 (UTC)
Date: Sun, 31 Jan 2021 17:48:20 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Vinicius Tinti <viniciustinti@gmail.com>
Cc: Andreas Dilger <adilger.kernel@dilger.ca>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Theodore Ts'o <tytso@mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Message-ID: <20210201004820.GA26230@localhost>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210201003125.90257-1-viniciustinti@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KNQVvgNE;       spf=pass
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

On Mon, Feb 01, 2021 at 12:31:25AM +0000, Vinicius Tinti wrote:
> By enabling -Wunreachable-code-aggressive on Clang the following code
> paths are unreachable.
> 
> This has been present since commit ac27a0ec112a ("[PATCH] ext4: initial
> copy of files from ext3") and fs/ext3 had it present at the beginning of
> git history. It has not been changed since.
> 
> Clang warns:
> 
> fs/ext4/namei.c:831:17: warning: code will never be executed
> [-Wunreachable-code]
>                         unsigned n = count - 1;
>                                      ^~~~~
> fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
> explicitly dead
>                 if (0) { // linear search cross check
>                     ^
>                     /* DISABLES CODE */ ( )
> 
> Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>
> ---
>  fs/ext4/namei.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/fs/ext4/namei.c b/fs/ext4/namei.c
> index cf652ba3e74d..46ae6a4e4be5 100644
> --- a/fs/ext4/namei.c
> +++ b/fs/ext4/namei.c
> @@ -827,20 +827,21 @@ dx_probe(struct ext4_filename *fname, struct inode *dir,
>  				p = m + 1;
>  		}
>  
> -		if (0) { // linear search cross check
> -			unsigned n = count - 1;
> -			at = entries;
> -			while (n--)
> +#ifdef DX_DEBUG
> +		// linear search cross check
> +		unsigned n = count - 1;

You are going to introduce an instance of -Wdeclaration-after-statement
here.

fs/ext4/namei.c:834:12: warning: ISO C90 forbids mixing declarations and
code [-Wdeclaration-after-statement]
                unsigned n = count - 1;
                         ^
1 warning generated.

The quick hack would be changing the

if (0) {

to

#ifdef DX_DEBUG
    if (1) {

but that seems kind of ugly.

Other options would be turning DX_DEBUG into a proper Kconfig symbol so
that IS_ENABLED could be used or maybe combine it into
CONFIG_EXT4_DEBUG.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210201004820.GA26230%40localhost.
