Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPGO5D3QKGQE7WFLUXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A3220D072
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 19:39:09 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id r62sf2013159oif.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 10:39:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593452348; cv=pass;
        d=google.com; s=arc-20160816;
        b=VySMFL+z7rB57LXNt2nyoz15f1IeUK4Sq31+sX72avewJHt4Q+fvQcS3bAWstEl3Lj
         w4zdPP7ak0c6omUFozxaDCfPi9xPvvu+b3hxUv42HcXRdfEbe8BZCtm9HFBgVKcCL7OS
         KgGhDta8TV8d/25AUIbpopYotCiIvCP7LVxKJN0DFdNCuD7dPQNmWurbgtMspjES5jFZ
         1V4/aFk7ylTdnvWjKHHAgiaPVmtidcSVHn5dJtHdHYcU3e+fa2L9toaWV6p156lRg/cC
         HwHvDGj3LRzR7d23Qu2cveT1Xe8ruiGbH5M5R3xqFccnn4AKudR0aR+gIr50Y8/QZ8Jn
         cFCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=scNZssCGri+db+bKQXGtmiWq02rerRSMC5abPfsTQCY=;
        b=h7BrwVjpcIPfEUCa0ynHESX1kzjve3n9duqvm6TLduWieuRgoX4j3/2WQ2VhVYuG0B
         o5yRvNtGe5Lq5NT+NZ1GBvYYC/4oF1BV00mWrsN+FyiXDd9BfzXPNJ0tjD02dEP0Lgy6
         MRnqwe0vjSZJ6rjeGRp7C9ykYgTR9D2c0n5XlZo9MDAyEWQBGoqC6u6tkSZashH+xjVM
         whtQoJJWnf61mslODDiHokcuisIakbLo/81Ah57SZ8b20cQNqc727Rlw1U7oD1UD5Skx
         eKaCa1N79UIBaAJTcTShzph82WFjlX2suADtLioVzFeCsy5Se8DpVS+Mvi9kU+4KnJI5
         CaFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eWpyylI8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=scNZssCGri+db+bKQXGtmiWq02rerRSMC5abPfsTQCY=;
        b=MlDUe8QjngnpgK7NKqLn6b4SarCvmol//bx8dkzk8RUkzyOsJ5Vn6wxp8KcAdaAGgj
         1BJJy8EuH5K3qUZj9gUTqpMNGx78HSr25f+EK0CjbpMsiC3AcaEPG2MCkmTgaqPS3hOJ
         utM+xJCjZvFkagztVd5XoIAEYX+ZXwVf3kLGY375z4n5jnODW/LinAznRJW+fn7cNPQ4
         eKXvv2JJvymKQeYroDWriI2y8zwNMysAJWdLaEg5NlxV3U90RZZr7p+JQhXmEqG8WBuL
         TwOUGxqimxxECALW5QnsGlPZs8tBOmWa9cqdbttWY7ZU+ZJ24afD5iPfbOA9ZQ7o4fOo
         /cMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=scNZssCGri+db+bKQXGtmiWq02rerRSMC5abPfsTQCY=;
        b=dJeW3CM11Wcuqp/PR0ZxQJsJ3Plv3i42nlzs3nafxQX2rfgVyLBau4r0EVhCO8pCTg
         5nJxN+S7cEhp5ODZWtON1ydc3ZIMa22LJiGEZY0Jt+uWx9EpBb/haKOw38qqlgjAdXJN
         GxlULoyaX4iKrf3XNSZddiIwjL7RxwHJkHujcDzfIMhUdZt6pSosKljZKzORHen9LFfZ
         7hzm60bUdTWzBhkdDSjli4m1eP7MwBKdpwWjTwU/tX0KVuRcUlviuypf8NaqDJQYu4CH
         unhVX0sOaEvGLdyyGZJNf6qksOwZLSxRL+C7FIe81tkxr07yxFqtAwq7xDZpuglViT0y
         RlSA==
X-Gm-Message-State: AOAM531LOWu6Daef7WWDPMmf6ilt1r1hioaCI0Nna3dV3EV2h+fYB+oO
	GvPVB1fRS2MZGyJl7Oug2WI=
X-Google-Smtp-Source: ABdhPJwRszbC/NiM4JBXm1/Kxhms3UxQNUnGBqB7ejn7oawk4MJatgtuql2x9R1jY9YVnOyetJG45g==
X-Received: by 2002:aca:5c1:: with SMTP id 184mr12122508oif.119.1593452348279;
        Mon, 29 Jun 2020 10:39:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cfc3:: with SMTP id f186ls1251475oig.11.gmail; Mon, 29
 Jun 2020 10:39:08 -0700 (PDT)
X-Received: by 2002:aca:f087:: with SMTP id o129mr11482970oih.47.1593452348001;
        Mon, 29 Jun 2020 10:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593452347; cv=none;
        d=google.com; s=arc-20160816;
        b=askse8NZf51+5i5qYeVMekwLjya22fO60gj45QM/sKU3Sp/c5SSNFqHRqVjxhFtM7Q
         mv1KM/orNAIMNmU6wCcUgGhHPx04gluzLU8WKvKtR6ASv2jW8ln79mveuet0XMaYykOr
         T18s5c3wWhJNSyBuVjm0BUDknPuH2aSWFhH47gOVpKgnqV5i0q+VLwpyLfvP7XPgARe2
         j8twd4Jg7JEx8P3QUdY03UdqVF4YPTtRBdSrnbDX6Lynb0P2+yG3DRtdSt/aYy74+zjP
         5VbfLx4y18llnL70ZHODu4AN6esDyRX+J7sXKoaBI/CutlS7vdS0c7Em05Lj3knEVCYK
         zDpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ymZPYXlQnFHAh4p3MfqCbK0ew51uYtV97Wu+f+eSAbk=;
        b=tSbL/DkCyxxahnpd9j39iBvI6BMhRUAJNdrG2EFRW57xrFOCHYPGFqo5FEWbLBKyRn
         qQL8N8Ko0SR5KGnyNYIDFjBznmLkhlegpK/fZS8k5VrvTfrbGdE8QvsHxT+BQrOBiRVS
         OuJTFRR2UTHYd7rfTO3gNTeI3UQ+hyCFS2ywHXkuQen7CBjl3fVVId6C51Lq3MQ0CUV2
         dobHGWJ1SiJlkJJ0YeIRcv0Fteo/LWsqV6iQRceIDh1a++PZk4CCEBeOhI77N8vASBQU
         SdGTfXGe9Ex3EVo2bC4XpmN+tmj9QOr8r5PHxzryUMuqC84rcUayW+BdGF6llllqJfGe
         aBDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eWpyylI8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a65si28987oib.1.2020.06.29.10.39.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 10:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id s14so7365172plq.6
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 10:39:07 -0700 (PDT)
X-Received: by 2002:a17:902:7208:: with SMTP id ba8mr14269978plb.179.1593452347063;
 Mon, 29 Jun 2020 10:39:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200629085911.1676554-1-masahiroy@kernel.org>
In-Reply-To: <20200629085911.1676554-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 10:38:56 -0700
Message-ID: <CAKwvOd=qe5KE1vdUYQmpsW2zmDbk5i-MgRujs9B7wqnAj+af0w@mail.gmail.com>
Subject: Re: [PATCH] kbuild: make Clang build userprogs for target architecture
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Sam Ravnborg <sam@ravnborg.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eWpyylI8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Mon, Jun 29, 2020 at 1:59 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Programs added 'userprogs' should be compiled for the target
> architecture i.e. the same architecture as the kernel.
>
> GCC does this correctly since the target architecture is implied
> by the toolchain prefix.
>
> Clang builds standalone programs always for the host architecture
> because the target triple is currently missing.
>
> Fix this.
>
> Fixes: 7f3a59db274c ("kbuild: add infrastructure to build userspace programs")

This is a neat feature I didn't know about; looks relatively new.
What's the test case command line invocation to test this with Clang?

> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 73948798ce3f..cac29cc2ec25 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -970,8 +970,8 @@ LDFLAGS_vmlinux     += --pack-dyn-relocs=relr
>  endif
>
>  # Align the bit size of userspace programs with the kernel
> -KBUILD_USERCFLAGS  += $(filter -m32 -m64, $(KBUILD_CFLAGS))
> -KBUILD_USERLDFLAGS += $(filter -m32 -m64, $(KBUILD_CFLAGS))
> +KBUILD_USERCFLAGS  += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
> +KBUILD_USERLDFLAGS += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))

That should be fine.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
https://www.gnu.org/software/make/manual/html_node/Text-Functions.html

>
>  # make the checker run with the right architecture
>  CHECKFLAGS += --arch=$(ARCH)
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dqe5KE1vdUYQmpsW2zmDbk5i-MgRujs9B7wqnAj%2Baf0w%40mail.gmail.com.
