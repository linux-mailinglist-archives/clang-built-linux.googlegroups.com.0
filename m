Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBVNBYOCAMGQEJEDOJYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFBE372531
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 06:43:02 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id g7-20020a056e021a27b02901663a2bc830sf6130593ile.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 21:43:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620103381; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9F3EjdXjT4asf6Pp3J83Qi6OVC7Scs6Xjn2mQR7kwZpiXyIXx1BiPc0SXTmv7Z4xd
         h2bzWGhE1Go/TPcjvm8Qiv8Z3kXuzbJFSgsx3l0T+qLubctKt+pMlpr96wT03QdybJoA
         jtYFnaKnAGce/of7b5dpL1eZ/ORf6cTQ56nP8MHDDGngQn+8KEhwAenWW0ibkji1ycgA
         uRp9U2lzAMYp2hGqb+4/YgCf+Hj1bR7WKTbcv6XVIKMy11bSGRi15C1Ub7D5ay9jiUel
         pJhfaVokZOnhKgkBCDd865LURSl9VHSjM+bAwOaCfN4k4zX401U6FPkjc0gb/jGgUSQI
         vxFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ArpA0WJiRHRIRv+7xt17K3W1+KIRHUCkyHoiElHWQLs=;
        b=MkpLYL5Za3z/otcIM30dI3MbxjJZz1/R1rUfwZzYx9wjbBkF6SS2FrE2tXmTY8yNHW
         C5Xq9lwviTZQmoyT0ZAjBnkGvEitGsBDrLRm8PhQKm5p3BJal0BwQvrZmImbGynz/vU4
         FNeg/eU8DtdsrleKSRnjmriO4mzWzadXsJB0hZpqHN7OYmSOEsUs5FeZPtzSxehZy+wp
         BedOh423H77bWIj+6vxzyuFoyHusOVAMTPzx97W0e4PDXj8iO2K8e4tydikozaDNnFRL
         Qz2Ppuwe7a+HIPGTfU8s77nSSW5YSknDz61Sk3QJLUYrvE58KtAE7ryysP0iFfsKVLth
         DMyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=cjngS0LS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ArpA0WJiRHRIRv+7xt17K3W1+KIRHUCkyHoiElHWQLs=;
        b=TrU8GXl1qljZr/ZAiT/02QsyU5qlNNkqYusO03Gs0xN1n+hm9SF3+a39mp5ckOcWht
         DfsQFr6ivIrbCJcLLlcL1crGjkVbcWXsY1JGQOT3wVwKhtIoQickf1Xc4qcYAwqHazun
         fGxcVctL9BZ+4xWAEvIt5M3Dcu/FhZBaPn7HihR0SwApsj2Y6VY/8azZ7Hw4D98jUZQd
         jOTKbtsFRmUElUvGKXjiXgeomS8+OByfidpqjocx31ti/+yYAqZT5c0ncMHl9cbC3sue
         ZvNuqBkU2QQQHEleJiRRRRSutQCjxRCzaVmrwi9xo7LkgLLPkeBRAuIgTS/FUdfXXAuC
         yhZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ArpA0WJiRHRIRv+7xt17K3W1+KIRHUCkyHoiElHWQLs=;
        b=oImjORqP5A6iTmF2Ni9QG5kLvhGpwbT1quI0g5tIk4iUAPFha2XxRoYN7OP87Tvy2K
         KUcc0jp6M9ia77ZAHobR2d6emnpjfJQmNPt9kk1C6yS8Cc47nGlfqlNpQ0z/eKA0j+KP
         bb8WFOP5emN3dr7+10ueQileKWD/Z0xIi49uyULedDsLAaGMETHqNlI0BdodwUiSgJbj
         3CuNKsDry0Qs2QVfvu26wzz/EHS/w76vVtHML0cdZ71CeRNF/r2EaJsoAVq+w20I8fOM
         Ld6EUYHuMKc6AHNnKBnNq4ByIQB+4xHqfIdyVg2nd+hIOW5N1bZZEJHKlvc0yXn8O1II
         XWgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SH1Q+IYVf7hwVWnM7fVUrwA1sfmOAvSTv1W6Xo3sq8WBDLMVv
	9vgyxAPFfd8H+4fP3Jmd7wE=
X-Google-Smtp-Source: ABdhPJyntSrtSeWELLkqyKJaXWVLHZwf9CBGv281T/aAVaWvjC2oUE8hUVio152v+oM50FL2vzYqOw==
X-Received: by 2002:a02:b793:: with SMTP id f19mr1662421jam.128.1620103381438;
        Mon, 03 May 2021 21:43:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1506:: with SMTP id g6ls531646iow.9.gmail; Mon, 03
 May 2021 21:43:01 -0700 (PDT)
X-Received: by 2002:a6b:720b:: with SMTP id n11mr17678091ioc.80.1620103381075;
        Mon, 03 May 2021 21:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620103381; cv=none;
        d=google.com; s=arc-20160816;
        b=oNgkIdGsT8idYOa/00F3MU5qAxSrYZx3F7l8fXT7pvAuXFkHZjRnqzDoiG+TDYBBrX
         ONlfveL6gN+V6J3HqsDWZQOoBp7cnZAyBW44jvwgM5Vw0WIk6ymNNArvx8SS7tXVbDl3
         42ZTDwg4b8uOoj8U6e1u2fWLZepSiNxeKZsYB8Md0S+c2KTj2y842y/ZxFsKDEvfp0uN
         II4Juo/hTaJNn2LUWAtRpkk8/DmLXEZVzvVWcJ/BC8sWIG5Mz0u3U2M/HHyWBnYO038Z
         CPXnNmS1+uxRTFgK05biNsxNJ3NyI8T0WsdX7meN40h9QirW98ETlArcNg+oDj58WOAa
         qUNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mQZl7E1IlA1R8qCQBt29n4hs1prKhgNyqbb7ZdJX/9E=;
        b=evYrE1EasA2/17FjJttibz7axhRQ5TDybbUYVsd4MwUrrk+Vatz12KnBYiDSiO5QrS
         hxgerk4z4mRhVog6dTTmBR2rDcqYZ3zIMvADFDGayr/dObKZ9I6O/y8t2ssPLm80eXCT
         YWzG5HyBVKKuMGH2YiMbq7VVU765k9AeFkRqKuRWNsFURCy4aO1BfvFpyMwiyWXJCBsS
         1blChJ5RviGkF1uf/bZexzpEr7LeIQNqpo1y6SFuLoTxutr/8M5o81D5dZetDGPgfL1t
         raG7NocM0pR0moQfObfEY0xOS41U3xAbXe/wi8DEjlItp0cPFa79nBtzRxMX/ECRgzKq
         YmYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=cjngS0LS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j1si203063ilq.0.2021.05.03.21.43.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 21:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D13F161076;
	Tue,  4 May 2021 04:42:59 +0000 (UTC)
Date: Tue, 4 May 2021 06:42:57 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Sasha Levin <sashal@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	stable <stable@vger.kernel.org>
Subject: Re: [stable:linux-5.4.y 5541/6083] ERROR: "__memcat_p"
 [drivers/hwtracing/stm/stm_core.ko] undefined!
Message-ID: <YJDQ0ePGHxmcB7dX@kroah.com>
References: <202105030311.xWwkyV9z-lkp@intel.com>
 <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
 <CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w@mail.gmail.com>
 <CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=cjngS0LS;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, May 03, 2021 at 09:16:42PM +0200, Arnd Bergmann wrote:
> On Mon, May 3, 2021 at 7:00 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > > > >> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!
> > >
> > > I'm fairly sure this is unrelated to my patch, but I don't see what
> > > happened here.
> >
> > It's unrelated to your patch. It was fixed in 5.7 by
> > 7273ad2b08f8ac9563579d16a3cf528857b26f49 and a few other dependencies
> > according to https://github.com/ClangBuiltLinux/linux/issues/515.
> >
> 
> Ah right, the big hammer.
> 
> Greg, not sure what we want to do here. Backporting
> 
> 7273ad2b08f8 ("kbuild: link lib-y objects to vmlinux forcibly when
> CONFIG_MODULES=y")
> 
> to v5.4 and earlier would be an easy workaround, but it has the potential
> of adding extra bloat to the kernel image since it links in all other
> library objects as well.

I've lost the thread here, but what _real_ problem is happening here
that doing the above is required?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJDQ0ePGHxmcB7dX%40kroah.com.
