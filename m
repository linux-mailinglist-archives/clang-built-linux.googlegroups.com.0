Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3GRU2AAMGQELHLJLBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7088D2FEFF3
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:16:45 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id h129sf1972680qke.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 08:16:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611245804; cv=pass;
        d=google.com; s=arc-20160816;
        b=UCc3+4UX6RLGiUe01bIAGxVADKnY3rZvk8Vf4tsOQesV4abYzu/k/Iz6mHbUW36/6e
         wIBmDDtxgbcia3oGHPs+9F8K0XYfV0cc1sFYhlu+hcXhkc5fDQ5UZT21SBPRXW8/7z2E
         LvtdMMTxmYQyvhX6b8fy9xv96ztuRtb34TQmMxqWQ2CxTp3sG5H6Fihcr8pfxjwVpk5Y
         SBQQOpJeo/5laylF10yRpjZeXr7RJhxzhhR89pEqGWVvVv8FYM5GSgO0MiUg7EW0+znf
         /FlocrOXy5tDkNY/1sYq8dZSctqijLfasfvwXpWfH/zVLzc0pdjJgsxqIWI7WVMU5FLy
         Bwaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ML2uxOsosdfqwggK8WVEC7MFNcTw1ntO+NMtqQzmHtM=;
        b=XHmXsV0zooYVWE5Sg+EEnd3LWPwsHiPMZlCHKGp0GWFL1Nh08KA4Guiq3da8xiKxhH
         3X7Yc3Q3r1NAkxXBmJRYx4abb1WzwQmY1eDLeb7MMARODRQENtnSH/mHNC2icyLrNYzA
         CtbWBwvbaUB4pUXscMAFoYhvIuCz78dm7bAhyKhSO0GpwLzQWZA9DXQ/ZfE5IL+fFkBw
         BoMsx8MFkA4L8lUweHN6vh1kZyrtFmCIEog5Px3/kr0TjQxrEagtLu6LAxfTcp7+nMIs
         0Kzdz0ai39HW1IsgE0CxWZaxYQEeGls6QCOKjDjkCC6ixhYt4BC84aigrB3YtiFsf0sh
         jWkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qyOOy7u/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ML2uxOsosdfqwggK8WVEC7MFNcTw1ntO+NMtqQzmHtM=;
        b=bn/ZpnwrybAXcTNA36NABR3BBFUIVKPobFCWv32hSDxIpYvzilIWZxq5N331IunK4H
         WCXL+iXMMJJjDbottmvDn1vuBXcaUqxsX1dYVlAIWQXtWO7v47ZHF1Rzn4a4RPJ7zUy5
         a8PVENWItvt26RLVSYwfb49uR5W/Eptpmp1Fq7/eohHfXYYzm3Efae1UZqdnKlVNdFZn
         S1q11VOy5I/PM8MDot0Sl6vgcIZGgV0rtltwg/+Akyxf7yQa3RTNbCf9tJL1443want2
         7j/XcrRUs6TTxrRGxQVCAJ+VU4rgId1+zNoRQgvXebQAkgyJRFLYu3E22JN6RY67eTkf
         1Akw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ML2uxOsosdfqwggK8WVEC7MFNcTw1ntO+NMtqQzmHtM=;
        b=hMlJbPlZS8UJIhaeV4kU6tw7mW8zbRJL4Ge/RRjGC+jGTMJ+x+0BCOg43uzOebwaND
         DREeLDfgNbK8Fj4nLin84xQPokYQFFw+sovvfRMJn06jUEdw2QAp/oDPrADQwnIqeDzP
         yHF4Ele74sAllRJF+o/g6JLuctEBJpyVMoLEZ3bYALTNyoA4vHuCjlMPSHuvXobt99hn
         WeirbPrdTzkJQ96RTNDLecFP/8h0j9bpmTktJQvzvLpW7Fcxs3dLO5hWP/mGTqjp5Uxm
         Q0MKHH8VboMJw6Yz44IqqpKFnhu1NuIBFY9ck+YRacNqEUbzRxiwS25cqtxhiORShA8b
         ZffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ML2uxOsosdfqwggK8WVEC7MFNcTw1ntO+NMtqQzmHtM=;
        b=qT9AIjUs1vLcc89Vq0EP3r5ZSOYGMJkyS+NPuGdeLj+2jEPm8x2xgT7+REVWLOAtIj
         7FCV+xrSPvTFtDRWXCTKLxy22zbNGF3uiF0PYoTS4i5AEpNQZcGTLCzaNhif+k1HHWaV
         aEwnp5x7fJ9PC7pDKocQ7TNvL9O0TFD1ZzisTlQGqywiXjykCnivWDZm6COPtjJuY/Wj
         RJbFJnZYSkoqf8W4g46q8qa+We1XidYK59nPsKw6+P0I+cdjcCnQDMoqcdw0Ph111LFm
         CzmtIr6nhAx3FkAK7tbdDs7Urtq/neH2O10brRWB6szM6rgeB93ETY12qiyKegYwKnS0
         p2+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310hBIRsIXVibZP6UxuWqq6XU+XdsFcT6HLt9POmOi8d9Qjs2D8
	OqjWyqnDt8FxoK57eaA9+f8=
X-Google-Smtp-Source: ABdhPJzS7dfTGY9SQjXq7qSUBrRdYqA/YG+sDdvxUNqfy18c/F2tDSJG/d1p6AdVhohj7xwsm75W8g==
X-Received: by 2002:a37:67cc:: with SMTP id b195mr502610qkc.406.1611245804533;
        Thu, 21 Jan 2021 08:16:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4644:: with SMTP id t65ls1320204qka.5.gmail; Thu, 21 Jan
 2021 08:16:44 -0800 (PST)
X-Received: by 2002:a37:2dc5:: with SMTP id t188mr485039qkh.187.1611245804067;
        Thu, 21 Jan 2021 08:16:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611245804; cv=none;
        d=google.com; s=arc-20160816;
        b=IOu3/ScMY+eqvo5XifUJBm9w/LANEtjJLwExaBRY+r5DHPEQTQ+u3Ej9zd2b4QjUZC
         fDOBWrubViXGHy27oN6xa0jiRVEz+TgH4W1zh7PKgpjSjHI6YHsc9W9Og5EeNNc0ilk1
         0UhfqeplZsdNb3GuEa0i50VUEyWfQ7PdbcTyBDCLMnb9h2mowepl5mXqRGzFf3EYzNRm
         meaz9eqZMgYfBgACk4RVCOdLGFkprCAz73smRIaOjC5c6iMR+cJG/QP77PeWVjTaPMJP
         WX6zx/mfpL8rOC9CZMnIe9xF67KXCSLNKUZxlLUgho88ZrepC6ooHOfwoyEaNHtiaa79
         8lJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8WXB9ll3nuCQCMfyocR9odXhllARQS8g9DNS6GFa+Bs=;
        b=I5ZvKavYl6SxUwRl5PlDgbTumLcDcq6wjHIytRpuq7Ikv7Iof77HEkqjLaTa0qdeYt
         mDURVRv346wFgOIOorxMTNnbtyFd/N/uPetHCvWqSHmGs+JrGbEDwt6mfsOO/9fOKqK+
         FlgBZZT6Ep/DHHW3Zc2U4nd3FNjmnuD5pdTtpnNGfATBWtetcPpH4TkcNozbsnpWePID
         J+NGiB5hf5EAnESt1NrJHa42v1ylT9RBWC+Wit5AVz6ev5C6PwGerKz2QpI74vcyKtbY
         iUtoRgw0aKpzp87bdzH/N3R+rNF8cZNi/iuqPSgG+BZ/7YCUWdGXDC9VF4AuvA1Yoriw
         fsfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qyOOy7u/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com. [2607:f8b0:4864:20::72c])
        by gmr-mx.google.com with ESMTPS id g51si533216qtc.4.2021.01.21.08.16.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 08:16:44 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) client-ip=2607:f8b0:4864:20::72c;
Received: by mail-qk1-x72c.google.com with SMTP id h22so2152380qkk.4
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 08:16:44 -0800 (PST)
X-Received: by 2002:a37:a5ca:: with SMTP id o193mr504611qke.394.1611245803705;
        Thu, 21 Jan 2021 08:16:43 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id k19sm3827755qkh.6.2021.01.21.08.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 08:16:42 -0800 (PST)
Date: Thu, 21 Jan 2021 09:16:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Joe Perches <joe@perches.com>,
	Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
	Pia Eichinger <pia.eichinger@st.oth-regensburg.de>,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
Message-ID: <20210121161640.GA1101379@ubuntu-m3-large-x86>
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210121160115.4676-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="qyOOy7u/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 21, 2021 at 05:01:15PM +0100, Lukas Bulwahn wrote:
> Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
> Kconfig") removed ./scripts/clang-version.sh and moved its content to
> ./scripts/cc-version.sh.
> 
> Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:
> 
>   warning: no file matches    F:    scripts/clang-version.sh
> 
> The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
> changes in ./scripts/clang-version.sh; as the file is removed, track
> changes in ./scripts/cc-version.sh instead now.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on next-20210121
> 
> Masahiro-san, please pick this quick fix-up patch.

Masahiro cannot pick this up because the patch to add clang-version.sh
to MAINTAINERS is in mmotm.

I think the better solution is for Andrew to drop the current version of

maintainers-add-a-couple-more-files-to-the-clang-llvm-section.patch

and pick up the second one I sent, which allows us to deal with this:

https://lore.kernel.org/lkml/20210114171629.592007-1-natechancellor@gmail.com/

I am not sure it is right for us to maintain cc-version.sh but I am open
to it if Masahiro agrees.

>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e5d7cf38ec82..aafbea806a82 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4355,8 +4355,8 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
>  C:	irc://chat.freenode.net/clangbuiltlinux
>  F:	Documentation/kbuild/llvm.rst
>  F:	include/linux/compiler-clang.h
> +F:	scripts/cc-version.sh
>  F:	scripts/clang-tools/
> -F:	scripts/clang-version.sh
>  F:	scripts/lld-version.sh
>  K:	\b(?i:clang|llvm)\b
>  
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121161640.GA1101379%40ubuntu-m3-large-x86.
