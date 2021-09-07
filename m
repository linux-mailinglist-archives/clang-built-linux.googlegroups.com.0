Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZEM36EQMGQEZMEA3TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 70426402F64
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 22:07:01 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id z5-20020ab06805000000b002acefa3a57csf3056522uar.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 13:07:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631045220; cv=pass;
        d=google.com; s=arc-20160816;
        b=d1QXni/b+vt0wGOZNjyzEexkw66bmingci9GXI7gu0Y1ox7ilZHNEDjT2eUa7jXlvr
         NFG9H5iz7QNpz8Ww6KEmDvhZQ4bgmpV6J9OsWP33uuGaQxvSIn5c2UsFs/1SEd19RP/c
         qHzArQLGGrIFhUE3AsVawQGWfEiY0gp7RZVlrKqIQLEjAJtYnUHVlCcldA7mfcCS/RRb
         C87Lt2Fn5n8SGgkxYHkUY5HsjqsbjNFxqbbmmukVAliVyY7vFiShCmHYycQkFXhiAfrd
         7DX2XVvAf0Er5cgbEszZE5uer7B3z/Tih+bREBXVO7C2hHo3XUlGMjtNbTo+ReQ7IR62
         eqJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wltq3z+ez1wxvXxLx8X3SQ4otv2aJWmWcEPVDiOsDL4=;
        b=N5i6Fa045JgW6wt/4amFRq7PE4NWmZus+l4bCw0tb+Qhy9BepQZjm+eUuzHZaO2XX+
         KJoWtpqI8NWPl7cfHeVlfySUa/U86WZ1CWLTo+gzjuD83Er11RN2amlzGdnScnSqJho8
         bOBuYy/RoU2f54vaUhpWg2i75D9f1KJqTqXNSEg0oBKisfYCWTj7lFS3o7O/SUcewZ9f
         ZiT5wQ65jpRahAqn6aqDi7MgHedOi6rOg/E6f/cftbOyLOzrXvjsGEL2VBqCvvbbbeR5
         HCIQmKgmkqMBBttYTYjLB0rxXtu6Nb8VT2H4yEVDy1cAq6BL+wEW+70NNXB5UGQA+4aI
         DC3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ICc32nMj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wltq3z+ez1wxvXxLx8X3SQ4otv2aJWmWcEPVDiOsDL4=;
        b=DEljF7cemWYhQA9w0zuyXNoKmI6Ftm7MDSi0eWtxJqBMkTz0sMTQn9bDneyRuakRZk
         aEDMD+4B/e8Im4Fqvj0s5Dc44uH39E3xPKtayTNcOMbCMLGzYluOpOq7ZLjn2wEjGy2C
         VzXj4LIilrHfPnSa7MH7i2x9UUmGJFRaG6RgoUv+eQoh6M53OpFiwSCTASCoEpL+Extg
         rP7qgPJyFnrkxmHzz01I+gd0c09d1tr9tMWHCIbDaLxnqs+61H77Yx/l2DDcbrdhr4sx
         m9pDxLlJHdAt/hqwd6inDQXVO3E+NKQkpVANxYkkriR+5dmIB2uB6Rf57Mu1XXUkFuzR
         AJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wltq3z+ez1wxvXxLx8X3SQ4otv2aJWmWcEPVDiOsDL4=;
        b=M4HreeRwokT2lOcxh1LIk+DXHOLr7YZKJsAeipkKTAQ6e7eoKhT+y8kt8a/SewgtI6
         SRVUyRduhHuZNf7pJn1jVu9rAiojymv6AfXb7SMm64IvhOnvBLrNW0h5Rd7vWaRlHb+5
         UNZh5G4aV+7RYD7VoZ9DWZFOntud0OlB7wZ4ftXrww3q2Va/cpMoQOQ4URIiyxImNHbQ
         ImFrm3c74fXhuXdyR5DZGFqVKvLgMmbDQ4RHRsAgyXRLn2MaSvE8ZBHrjElSD/hQ9CVJ
         a2E0hGd4pMywlem08F5cggIZAv4fQbbM8EwRIZ9zbc+7y1/Cq3cuWKRLu9m86KNeBCJB
         heFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532n4PS5tfNZ1TtDNYMHFZiRs/k78zhfiUrCTrm2gPWafEaxWs56
	QdxkEGa+LZSrG5GaJLcZFgs=
X-Google-Smtp-Source: ABdhPJxWkSW3U6nwvS/qLklByncDj1nUqcI1Dg7nPA/DRpb3itZCGgCnSr1dxLAm0mvU60nW2MfZJA==
X-Received: by 2002:a1f:fc8f:: with SMTP id a137mr93116vki.19.1631045220539;
        Tue, 07 Sep 2021 13:07:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2459:: with SMTP id g25ls1540339vss.10.gmail; Tue,
 07 Sep 2021 13:07:00 -0700 (PDT)
X-Received: by 2002:a05:6102:3552:: with SMTP id e18mr49820vss.61.1631045219960;
        Tue, 07 Sep 2021 13:06:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631045219; cv=none;
        d=google.com; s=arc-20160816;
        b=xyHthgtrVxZpOFIcfuWp4GxlNSzHJpo7BIChW0aySGCEaIaPvGkYURE5q7r//TK04/
         Lkm4eBbH2vZk2LM3bInBFJGBt17WsyFzvBUwBY4hmB52Z6Z1pn2YvY/s174ox686hd7+
         zsYnHGdReeh1q+cqEodandddrEYDy6OaLwbTxEht7+QEPpLrlcxYo9IUtjqpD0IYnVZX
         vqZWLKMpSiAUfN9BgInPidkBIgQ9HkmaCd0DF4BJ1EiPaunsm8szAfGFfQP4IUNSyuVX
         ebX+K0JHkHWXbZMRr6mCGX1p962iMeJA0ZCoccKToo1kan0o8mcG7UGVPi4xH1lOzYuZ
         vz6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wxnR7MZs0q6Qxyjvdv9pFLhOh6Q9Ds0dRGheCZQKmxo=;
        b=bxvkX5iZm7rEXCBuQqz8z3BaXkt4sEKoWQl5wSuNWvPgdxtHvMoSlobgHYVuncGqEA
         7DCeuWLb0Z6SZ1HR6cJydmn8UE7hpwGY5swc4OpJuIXgNbUaAGGPtXUeKATCXsD2uIvJ
         waLOXYjAU49cFqQoZ+vfh/cpHK/t3AOjN2Pxaon92VXyhx9UTw2Ga3vmJ0Q92n1VOHoB
         LQ2XOXWkdYwOcR0L32y+q4w/Ged4nSWe27NvlVgYYQWLacQA0D/b1R5EmdZCQgqXyfDe
         vuv4KBm0reZkz6fEGxDjGFGf+rtKCT2P2gXyXLTqP+UR4umQLw/SI3HG7Q6q6qFR2sGR
         MXaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ICc32nMj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q26si2583vkn.5.2021.09.07.13.06.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Sep 2021 13:06:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BADE0610E9;
	Tue,  7 Sep 2021 20:06:57 +0000 (UTC)
Date: Tue, 7 Sep 2021 13:06:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kortan <kortanzh@gmail.com>
Cc: ndesaulniers@google.com, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH] fix missing 'sys' package
Message-ID: <YTfGXn4cTZ87zTP1@archlinux-ax161>
References: <20210907094336.16558-1-kortanzh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210907094336.16558-1-kortanzh@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ICc32nMj;       spf=pass
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

Hi Kortan,

Thank you for the patch! I have some comments inline.

The commit title/subject should have a prefix to it. You can see the
prefix for this particular file by running:

$ git log --oneline --format=%s scripts/clang-tools/gen_compile_commands.py
gen_compile_commands: extract compiler command from a series of commands
gen_compile_commands: prune some directories
scripts/clang-tools: switch explicitly to Python 3
Makefile: Add clang-tidy and static analyzer support to makefile

So your commit title would be:

gen_compile_commands: fix missing 'sys' package

On Tue, Sep 07, 2021 at 05:43:36PM +0800, Kortan wrote:

There needs to be a message here. It is obvious once you look at the
file that we call sys.exit() so we need the import but that needs to be
explained up front here. checkpatch.pl would have warned you about this:

WARNING: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 7 lines checked

Otherwise, the change looks good to me. Please make these corrections
and send a v2 of the patch, which can be done with the '-v#' flag to
'git format-patch' (e.g. '-v2' in this case).

> Signed-off-by: Kortan <kortanzh@gmail.com>
> ---

Describe the diff between v1 and v2 here like:

v1 -> v2:

* Fix commit title

* Improve commit message

then be sure to also include Masahiro Yamada and the linux-kbuild
mailing list as he will pick up the patch.

Masahiro Yamada <masahiroy@kernel.org>
linux-kbuild@vger.kernel.org

Please use our new mailing list as well:

llvm@lists.linux.dev

Cheers,
Nathan

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
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YTfGXn4cTZ87zTP1%40archlinux-ax161.
