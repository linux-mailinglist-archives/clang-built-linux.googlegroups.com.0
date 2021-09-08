Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2634OEQMGQEMSLUDBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id B29AD403E22
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Sep 2021 19:07:56 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id x3-20020a92de03000000b0022458d4e768sf2222337ilm.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Sep 2021 10:07:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631120875; cv=pass;
        d=google.com; s=arc-20160816;
        b=lowo4tcI4Po83JLTQYYHyP/q+cXP8nhyH6yyG1UD1EWqHAPJiWmQ3wKi98tJkV8IQM
         xVrFjC2Bdjl4fErBBUnuBdYtBsvBUTMFsNn4rkwQzYSSJMTVI71NlzFUCKlFnPB+C0U+
         2IZMEzNMT66/da5XVw3w7AcmZbT0CyFpFwYwY3tzheEz6oLE2KTdooNMCJLxUxGWEten
         mWlc6KzlfRYZ7ADrry+ySgOcJPWTqg1eFfsI1iafC3UnjbIUXvCpH2jdPmPhILYp5K7q
         oHeeTHeo5umwVfbmUAxLMUF2K1+gUo/g+qF25fnYdx509YeQfkNhd/wn+XHOYuOI8m1O
         o4kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VsfauzAuuph1bg4+dhMT0XMeITt9mciBdpCZDt+4c/Y=;
        b=NFGKnIwekVTgPZpXIjgnligHc/saz32fAvwvcuR+qaGEoA29T8nEW1Pk0uFWUSmTpk
         SHZz/5LnGcn1VwiPQS3vCJkQrbfBBXVbsrahdHAPOzFi/vpxZC0wu3eD2KuxzdJMnMrW
         hn9ju9gg8AQIzNU8JGFMr87rA8q+GTwQsSomX1DoCcu/EpmiX5cnJwEL6ErHDmZcGg8I
         odEGTpH1VcutzrpzuU6h0UdeWUuEf58r4drjo5WR2AUfaHlAkR2+j2SvxCQ8vB60Qslk
         sUz5KY+rrzixj+IPZiqDRj2WWGqRXNYBqle5NVcfqu2QtGJGFs9ss8qa3/iTg5yZgyj3
         hCGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Mnwyjq5B;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VsfauzAuuph1bg4+dhMT0XMeITt9mciBdpCZDt+4c/Y=;
        b=KP5EW2NW1Xbo3MB2cPUY4v2fT1+LroYz0ltCDfW5w3C8PqzLl1XYbuGz8ymzBVWDiL
         N2rF6NMB3v8FEAoDaJyuy+PshN+xV2+by5vD/rAg8V14bxL4SVTjCMDMawDuTUxHUiQs
         y/gJRuEqnTf7Wxv3DXzVzo9/AoWsFzF3122D2hEKCiShAumoOl75LGJ5bfsTCi36P/km
         oQRxzVUwZ7lkgXOxXq58GBLPdcZiGd3n4m4+mYRQYBZ4s82b9jWNV4+rPE8M+uOOJOXG
         Qjiu92eQvQQJEmalPsk53+n77As4ecH2b2r220OW8D9jBnqWmbXBDGDEfeQqMOA6J2U8
         BXYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VsfauzAuuph1bg4+dhMT0XMeITt9mciBdpCZDt+4c/Y=;
        b=IlKavH3+zo5+da8su4ClXQtAk/dtHmflOkznRWJEiQBWX087KRESZUCzVN1tuYegls
         Ja45cUFsrdzw6oBjo83abnIWaIHfVWlF21W5oH6tMRwuMhNdXo+RII64VuarTgeiw+Os
         itGbDwApvJEUa6Y+34WkqT/fzB4/Wu+APXVXdlpXf0WQftuRwNTFR+dO3FP0k8dQHwHZ
         9qNPJNJaWQNF9cWrWZJNvdsK5EC6V+JVHd2eWGgRpSO0mAuK6PcsmIXtk8AWsXG6P5Ub
         l8LyB+K0zIhaT65A+7SDnQNHDKaFWSEKvdu1svc3kxUtA7QNffnmCt2XGJBz8til0Njh
         JhAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LbxRWNrQznclriZsclthBO9zNWQnTd0xyhbZhKPVp/Lgcqx9l
	n0ae+NKDwcgGHSpAwm6Iwd8=
X-Google-Smtp-Source: ABdhPJwobSyvFBvrR7zNl2LNJc5hOd70xNNzLwpJFPhW4cbPTF/tLRiksDFfXFrgWrWcsauT0iUI0g==
X-Received: by 2002:a92:c841:: with SMTP id b1mr670750ilq.300.1631120875688;
        Wed, 08 Sep 2021 10:07:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls489904iol.6.gmail; Wed, 08 Sep
 2021 10:07:55 -0700 (PDT)
X-Received: by 2002:a5d:9ada:: with SMTP id x26mr795955ion.50.1631120875257;
        Wed, 08 Sep 2021 10:07:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631120875; cv=none;
        d=google.com; s=arc-20160816;
        b=b0ltBteLV09ThNAfjkCoZggJL50QQghZlSvk7oRm9iLH4T+fYSTLIHCh/xHUYA2PmJ
         boiWeCOsu+H7Q1/HQ+bVrB0zpFFnnYWm4laCf87s2TiSvSh0sXWH5vEUqqcUZ6rG8cZO
         rP/QNXSqtBchlbcx8yxnY4g2AQCimkNBttgk51B6u8tMY9veFHDIt9KTr8lEmh5lMJ24
         fRCptr/OuAfZiek1m1U5BiLnptpn1eUIfMzkf6bUo3r4l844xYPpRKSeJheWQbR1k64u
         9t+5LcXbWIsPB0jeU5c/1si43J2hXrKONRBekJ9usHLtFAmruZWXtcFh6TDduipkOd4d
         PIiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eEGI5OEfj1DMJJpHYlMmDK/oDCFx/kdMTwWW0feYK+o=;
        b=j5aCttKsA4GxeSu+F8/qsu5OwYpcYr7//dPjKfPGBH+YN3jxoDuDjHsKzXf1+pE2b3
         Lp7Ur5RgNVSweFHCitqtJIGsgOgJ+BhuCge8ToyOdpCbrEibs91gUZuChsibL1UmUjvn
         q3x9wteSw0Lfh7Magga2s/a6PVDH3+UtDub5Sf7BoRCI9hH0kJuX0m3Q/alJRJih11gJ
         hDHGXn6+8nk35L7LT77br1LBWCqhPB0lMd4ze8/nsih3NTucrtrNZv2ezWjzkrwgHNa0
         71uLPxRZUJF4A5ku1b4Kiz2F7HJDbwmK0hkl5P8I0xWBPYcVBXrMS9v1dKG94zXm08W1
         GXJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Mnwyjq5B;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y16si170376ilc.5.2021.09.08.10.07.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Sep 2021 10:07:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 34BDB61139;
	Wed,  8 Sep 2021 17:07:53 +0000 (UTC)
Date: Wed, 8 Sep 2021 10:07:48 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kortan <kortanzh@gmail.com>
Cc: ndesaulniers@google.com, masahiroy@kernel.org,
	linux-kbuild@vger.kernel.org, llvm@lists.linux.dev,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] gen_compile_commands: fix missing 'sys' package
Message-ID: <YTjt5C7xTqNLUSl/@archlinux-ax161>
References: <20210908032847.18683-1-kortanzh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210908032847.18683-1-kortanzh@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Mnwyjq5B;       spf=pass
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

On Wed, Sep 08, 2021 at 11:28:48AM +0800, Kortan wrote:
> We need to import the 'sys' package since the script has called
> sys.exit() method.
> 
> Signed-off-by: Kortan <kortanzh@gmail.com>

Thank you for making those changes!

I should have mentioned that this probably warrants a Fixes: tag, which
can be generated by running:

$ git show -s --format='Fixes: %h ("%s")' 6ad7cbc01527223f3f92baac9b122f15651cf76b
Fixes: 6ad7cbc01527 ("Makefile: Add clang-tidy and static analyzer support to makefile")

as that was the patch that introduced this issue. I personally have a
git alias for this as it comes up enough.

$ git config --get alias.fixes
show -s --format="Fixes: %h (\"%s\")"

I do not think this warrants a v3, just something to keep in mind for
the future.

Fixes: 6ad7cbc01527 ("Makefile: Add clang-tidy and static analyzer support to makefile")
Reviewed-by: Nathan Chancellor <nathan@kernel.org>

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
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YTjt5C7xTqNLUSl/%40archlinux-ax161.
