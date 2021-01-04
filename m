Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP4CZ37QKGQE6DLCOQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0512E9F17
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 21:57:37 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id q21sf297058pjp.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 12:57:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609793856; cv=pass;
        d=google.com; s=arc-20160816;
        b=DCLkDB0yTccwdIfhGnh97/mtdi81T5sZePvuuOKYSnRaTMi6/fGKYHUqlJbGCzAzUW
         PVwzhxMzOPGmK0p9hOGz9OiWGSXTr/tN7gTZSgRn33Qm2XQEvUE+odTJzj5NkVc7tXgI
         xPgxJxK+F2kwqEGhJouJeljJPLN0I6DceNBiiuFhtW0AkzdPJ4jbwKdjOq48FnpNEiZf
         e65ZJD3CcCChNGRNBFEVhxtPsKUWNxJ8Is0Tvs4GNRZ1Pbz7quzfFXmSnc4BI4KT/CSk
         gdoDQ2+ugS99+Br+j1u2t+E+mPlqFgZaOXnsKC26xdwr+uUoFUtqajZxbjUce1KJAJBw
         88ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=UC88IUJk3nZUAOM8A5VFXqfMH37kQWlug+e1uXsNjq8=;
        b=qDsl+8+U3+TumKZ8X84Yi5Iaymab90VKWiRrt/9lJuEK5e8NXZGlNzd2ECFo30+7U5
         2kg6QJfNhfTWulUQrN7G0wxg8v45XC6Dea5fqm4o8Q+S8JpyEpyfmmPeeCCtWCT+PrsT
         JyS2BezFF2sbtJnICFqHRV8G83lEGU1VCQ6TWbkSnKbd1kdxCML2pV/A1IOQZu2yxFli
         ay2FrZGuNNZkxDFrgktaHBjwxCAA0hDu8Tj/R6+cPZEi3Pd/qSh+2emHZSOSidMAtykr
         sVJt307tCRxGY7BXOJ/f2+GH7HgZcSVVG75CBC35bi6OlBYgWnCPxVskeN8trB0nyUbj
         4u7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=smDa0LCh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UC88IUJk3nZUAOM8A5VFXqfMH37kQWlug+e1uXsNjq8=;
        b=Ssts82vvLGwfin8EBR5x6YNTeld4P/BvEzC8NQErA+LECr3AsdCTlAbFI9a26m0V/R
         TjQOfbpezdU81XrbtoaO351ciHFWEMSSmfwNyR0aOfAs1+cnSMcvJ9cnGniiDDoRbORx
         9LokeFXG8VbM3FyOe4dIyraLpYLTwi9aN3zEhgN72ieNA1juTGYgIikVTFO2Xz9w45/a
         uDLLi1ramJRFDSWPTNiZV/tVn3lgYzCeLhVLV9U6ZYzzLSZgf2WhtBKTFBNCEmZ7/cRp
         2S0a7V6FuWRdP+45acf5D/n+EkooyX8stKU+652jdT/DhE2ZiPxC5ayYgnias89lJ0ZL
         9Ocw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UC88IUJk3nZUAOM8A5VFXqfMH37kQWlug+e1uXsNjq8=;
        b=K08aO2ahJtzCMULXrbl3vk4AJg0w9c8dvR6hHghnkZ6xEQhTaRZi75kjWpnOiJFml7
         On/BNnz0gjCleQ8ZSwoOukfRZ0E1+HjOBVzMgVlvRfFWEhim2OD96nIxrBZv4tqaa+st
         vgY5fw7Nv9ZXFR2VjUoFrg6aaDTYgskBNpTb3EqAOhADDDDXJq7ghnTs4uVLwmd8eQFg
         nkg1XraMmev4VUXyrO5OCTpdPp0QDw5fZcy4gsA3uh+EbarlPBAoSkBjE53G8OyayebE
         o6yCJesvFG+0LQVicVZkC2IbEvE5OVFFWR95lZdtwz9uJ/sFjE4xC0KDTMR8qEDGu2M7
         t6Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UC88IUJk3nZUAOM8A5VFXqfMH37kQWlug+e1uXsNjq8=;
        b=daKi/ALjgTFHzU5iXwWPKGKOxasj6d5Q5wf84e/5Z+hIskabmNNe5vx6e+4uYsA693
         bUM+uZ0KO5DD15WHnNfV2R9QFG1xfhEt8r8YXJ38CTTW0+/3H4pyywmjVSQsZc0v+1gk
         bcTdvW/Y2IzPaY0DuxXx4X4SDBmCWbvms3CGng1mC5nSHSizH4WQN4kmkqlkf2mM8/Rb
         kMwy4Qf8NS503xXOGYaVCjO49mymKVHAX4Jceqt+f2AtyRSmkSUprajZDusRmQ10+kzd
         JfwwBxNivyHA3rwoRBwhSq6vhl7LuNEvvuWtpMvA9JJv6uiEBGcNXoknq7i1nP44wDNh
         LiTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sxXHw0ZkpmnR3N8LifEnOofHFrb9HYORHdq0tDEfWOvDXld6P
	gve0oLjxLAHe4Thd3C6I4tM=
X-Google-Smtp-Source: ABdhPJx6laXLG1juie/t34Yd0vFOMLy4raSX+LEjW+NPs7vkGAMFtRrltTzIHVUwRF0ZnD3OnKB/Rg==
X-Received: by 2002:a62:4d03:0:b029:1ac:6159:4572 with SMTP id a3-20020a624d030000b02901ac61594572mr63319118pfb.10.1609793855734;
        Mon, 04 Jan 2021 12:57:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96b7:: with SMTP id g23ls28682869pfk.9.gmail; Mon, 04
 Jan 2021 12:57:35 -0800 (PST)
X-Received: by 2002:a62:8fca:0:b029:1a9:39bc:ed37 with SMTP id n193-20020a628fca0000b02901a939bced37mr67121836pfd.61.1609793855146;
        Mon, 04 Jan 2021 12:57:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609793855; cv=none;
        d=google.com; s=arc-20160816;
        b=zz8zBQ2rw7AyGTY7++R81+Xv8Iw18vj6wCa5ASKrqdUJQV6eqA6j5eqgqsdshmvogJ
         FBUF+f/eCIdmJAtMnICJvzzjRcSjcQxFz/BAO3bkBMqAqdin/j99ahbqbV238kaNpBGj
         MJPnpqs6fnfgdQ3/nS2cnsdwgCV73YADwHidPA1xeJnbADawAhqZp/3PzwdGiHOk/sr6
         S5PPknzGhe4CUXW714xukKYaW5pox2E3inWaQvgyR3SAnjTDuDqau0tKgEjIJ1jAH3Nx
         oPSpIANpc926PJ4IP4o9sfu80rSmDX4Egkz2kk8c8M/YzMboJJotv2vS4BNHfwHmGIVI
         qrWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JKcn5FmVjtdLgYOASDjA00unBiKKTt/1fSkBmrjqn/k=;
        b=G878AnPRduMOHhkNwSj+KK1fEHYqWCJljqqlrGRSN3t1grAfXGIeg5q0D0QfiCZpdw
         ZdHo3iS4Vrt9QzGh4XzDyY4ZNS26hHQjCnQCyIXTTKTFVZgUGAFWcNwfszICNta2zGuv
         bSw5FfZdDnn0aZ0AukVVNeR7d1BbcXBngqDZ7aau3vnZOb74+DJOToTqoI9ygsJH7Q1+
         E6qXjenLdjv0uEeV38AWVgxBv/YoGCZJw2IQo9FqcWgiYmAEtuRchVM7yDfBh8VOsMaX
         vWG+7kLZIr3/9C/tItknHUyqC5CdQ47qZ3tXWGy0fUgb8mOMnzUTW9vLjRCTwvrkGdnK
         z4ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=smDa0LCh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id mp23si79470pjb.1.2021.01.04.12.57.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 12:57:35 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Received: by mail-qk1-x735.google.com with SMTP id 19so24703249qkm.8
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 12:57:35 -0800 (PST)
X-Received: by 2002:a05:620a:4db:: with SMTP id 27mr74435319qks.431.1609793854321;
        Mon, 04 Jan 2021 12:57:34 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a22sm37490512qkl.121.2021.01.04.12.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 12:57:33 -0800 (PST)
Date: Mon, 4 Jan 2021 13:57:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH] powerpc: Handle .text.{hot,unlikely}.* in linker script
Message-ID: <20210104205732.GA1398664@ubuntu-m3-large-x86>
References: <20210104204850.990966-1-natechancellor@gmail.com>
 <CA+icZUVe4AJoLWMqS3MEx700jcwDaJhw78tUgg8iD0dJvEmmYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVe4AJoLWMqS3MEx700jcwDaJhw78tUgg8iD0dJvEmmYg@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=smDa0LCh;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jan 04, 2021 at 09:55:20PM +0100, Sedat Dilek wrote:
> On Mon, Jan 4, 2021 at 9:49 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input
> > sections") added ".text.unlikely.*" and ".text.hot.*" due to an LLVM
> > change [1].
> >
> > After another LLVM change [2], these sections are seen in some PowerPC
> > builds, where there is a orphan section warning then build failure:
> >
> 
> Looks like you forgot to add your references/links to [1] and [2].

Indeed, thank you for pointing that out! v2 coming shortly.

> Might be good to mention...?
> 
> With CONFIG_LD_ORPHAN_WARN=y is enabled

Since this symbol is not user selectable, I do not really think it is
worth mentioning, plus PowerPC has had this enabled for a while :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104205732.GA1398664%40ubuntu-m3-large-x86.
