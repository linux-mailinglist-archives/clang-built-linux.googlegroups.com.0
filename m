Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRWZQ6AAMGQE35FCFIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4F72F855E
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:28:08 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id s17sf7058189pgv.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:28:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610738887; cv=pass;
        d=google.com; s=arc-20160816;
        b=Puuf8NsqR4mwaKWYb51BpldI3Gy8u39VdugPwqg8htKOZufKViMwvf+OLX6uNaJGvG
         qQY2pTF6mhJbXyFljdhK/2FL7ie8JU8dc1PiKaSMFaYpN45QY3fu6/7fdW2LLJCTitnL
         6Fi9nQawwxR/u2oHBKao8frt5O72m44IYKA7dlExVEnpM4nJSKzu33kXiYfb4mjUpci/
         bamBNyqQpuh8meElXLq+MbB7qUNh5Dwjc9Bfs2Tf+gL9H6qeo9O2pqG2ZGECIoaH1wTh
         UQZVuFGjgJaW6lUGgkk2RioM/MKypGX6WcukmhIh8HLnHU8xyHQVo4LzZXHlRk0hbt0z
         ddYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=YBKjM2VTCFVIIsvuv6BeMpg0931UQrMy+7Raux1YQBQ=;
        b=hu59ksZnhv24fkfOv99xST7H+ayv3fPWA75RPNEUkotVg+6b3qky9MerbfkKOeSb7V
         uH5JmyVvjf9O6JpiTrwzzkxfPOj23uCRLcau7W2tp92/+yAVAHV91peKTxrz1uYoAbEI
         wALuBaVpHQu/xrg7KRI07FUF8EI57jg5XnrL1r7MrMPQTakEgNaYQBjbyf5CbMEBEViY
         gK6u8fR20NGLQkPVogANg15jJuATOHIKEqsUG5KT3RnsiJ041ixcswK5d1ZwTKVcWfpB
         lXiTXez7pX8JjLPrad7JSjerN7/H896j5KiAJUk8K7+w36WhzMlTRJ92nuuvcAvPfY4p
         DjqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vgj8FNW6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YBKjM2VTCFVIIsvuv6BeMpg0931UQrMy+7Raux1YQBQ=;
        b=pTI11RzTIhZ/J5CXOThD9tGU1JwjwrlAWs0jXW79PyOyYMUijLiAaRajh4/FWKkB40
         9g96x8JiSgw8ddhZ2QsPJZvducy2WZRaqBCT8F+GEWcKln87P6EZxxuA7Ay/GlJ+F0Hm
         aMSSqsGmFHnKtWF343tM7n66wcjIMa5jtl8SvZANiefB0VYCHXFcMquGeV3cMypBFmd/
         diSmiTyLjH07RBjoKGahRYKtmPXFf+j61kD8L2sglUKrQf86cX+W4YdnR5evRmQxluki
         TpK91RbeR54CAGign42549P8YqSIulyyOtsuK8C6RTkhnXL0uZmF6nBM/IVy3SO0gaaC
         C5xA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YBKjM2VTCFVIIsvuv6BeMpg0931UQrMy+7Raux1YQBQ=;
        b=AqH/DZKpcNUhnL/PDYzQQb8cwDrnEJLP3wCVR3okIt93xncPb5WR2I7AQ2F+ThrICM
         YplkYT86rXYVdNwtoQXPRaGpbmNQwWmt9BXr7wY2MzhtiptbFi/0ZuNXbSRsf5Tfj1FW
         2UojjhkzNsJSZWlxC3B9PJKvMWrmx5Tm64AfZ/2zUvERM69TrSGbog+PEc/pIIZGMxDk
         6oPG5tN39tjYF0Md3uHsC9dWBk5Zx5PW365vXj4bpxgFa87ahwK+IQ9tyaclS2hcdZk+
         JyxEpbT5Tt3dzfWNLJBI8uQ8vNui/nSbX1Wk9w+yHXCDYuKzt+WGDebzeJFKbvP9tw+a
         cYEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YBKjM2VTCFVIIsvuv6BeMpg0931UQrMy+7Raux1YQBQ=;
        b=XLm2Osq0mB82xTpZY9FZeq9DUB8jOXIq8LAtiAJ3P4bQ7gRSe5RtIr1K947yv7qgfO
         maUrzqV1+301UzdezVtz0EIHQLXiO8Fh+K43nU/Ktl1k6NFIqo3xyna7jsdYCqL/8Ayr
         peQPZVhL6QLlLgnfx3gobpg6LRrugBxSAad2/2Nk35vTQSVoFvoo8YLZp3qZsNbK/2rP
         b7LLr7KFo1TYL2x717Kad8bJMsk4QPXCPuzsSW0mJ8UJUmb+nVloT4wqVT91bYUFdows
         1fKJ5xuQK7b2/u+QIjHSL+S5AzShSIEineSvVMKtEQp/roUfsTBh4SjUmUzqulkQHrPv
         i6qQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jAJjy+hVRugsiPDhm8l0uecADRBEKkms6pdcKmojkKWUCN6qW
	ic8OrbdUniQGtNNhsbuig44=
X-Google-Smtp-Source: ABdhPJzqlc+ILaaalOYfaG8pXZLqQCltHNXLrVsXRM8/CqFOjTjXRFKMnXSBjLvZd74Y2tGcJbWoYw==
X-Received: by 2002:a63:184b:: with SMTP id 11mr14440740pgy.298.1610738886774;
        Fri, 15 Jan 2021 11:28:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls3847562pga.5.gmail; Fri, 15 Jan
 2021 11:28:06 -0800 (PST)
X-Received: by 2002:a62:19cb:0:b029:19e:75c2:61ec with SMTP id 194-20020a6219cb0000b029019e75c261ecmr14147696pfz.19.1610738886140;
        Fri, 15 Jan 2021 11:28:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610738886; cv=none;
        d=google.com; s=arc-20160816;
        b=tFiQV5lPweFtNW2zBmMrHy/JlkFKW/2cFsHSGfkK2yqNyhpFOsGxqa2g8hzKn4z240
         F/uRBYqRyxnEuhGGof3DtAqF2ehYOp15xvbjXGYyie3KQdNDfwhkAaaClNUt28QhzZvL
         iBFbzFgEs7xWM+swGkHrnu/3zoJEMNGEjed9khRxhh+tZxqtjA3r1LPrNnGrl0e84OLr
         UdSVZxDyzwlcMtadlU1d1pw9mbWkx5ck19l8vnI8Uk0RQzkcg3I48TpXekd437d7qUiX
         k2LJAzFjK+GM6WBWjMhXCKBEvuAlwn5I2tz0/Ap+ptNTaMxyWT/L66YTcGiISspDT4oz
         2nsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6zCZrnhgRt+dBoyQ8tcWZS1tIQoo0VWZii3AgJIF8i0=;
        b=VxZu4EYVwKgSALoCcAh1jeevbzQz92vwzfSsZxKuRrI+1OnpY+pj2SpEPBtOhjQ2wN
         vPtK3kgsR7Hj49FjQzG9SNaJbh/YJnrrQ41dkQdNu/32Eg42S+VmG+yjQnXQyAv9XmNz
         UNe000kaLtOHLkPU5Xt64pM0AYjbbsxVCHsPRS2mtCrSCrbZJG8b/JBtEvcw5prDAdyZ
         rhkidi6hSxHTUI3xM9z4uzoWK07u6qWMQbTHfyX+s1kglyT7fKoX+rrmJr7rSnAH2ETV
         GMzgVBJom9Fk8y9KA8nUutmlJiPJtLSzxRh5WYIfd/sn9cJ+Mpi80IwqE5q0/oFAgKoy
         60AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vgj8FNW6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id m63si515691pfb.3.2021.01.15.11.28.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:28:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Received: by mail-qk1-x732.google.com with SMTP id c7so12800808qke.1
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:28:06 -0800 (PST)
X-Received: by 2002:a37:78c4:: with SMTP id t187mr13833259qkc.139.1610738885332;
        Fri, 15 Jan 2021 11:28:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v5sm5619396qkv.64.2021.01.15.11.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 11:28:04 -0800 (PST)
Date: Fri, 15 Jan 2021 12:28:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Anders Roxell <anders.roxell@linaro.org>
Cc: tsbogend@alpha.franken.de, ndesaulniers@google.com,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] mips: vdso: fix DWARF2 warning
Message-ID: <20210115192803.GA3828660@ubuntu-m3-large-x86>
References: <20210115191330.2319352-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210115191330.2319352-1-anders.roxell@linaro.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Vgj8FNW6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jan 15, 2021 at 08:13:30PM +0100, Anders Roxell wrote:
> When building mips tinyconifg the following warning show up
> 
> make --silent --keep-going --jobs=8 O=/home/anders/src/kernel/next/out/builddir ARCH=mips CROSS_COMPILE=mips-linux-gnu- HOSTCC=clang CC=clang
> /srv/src/kernel/next/arch/mips/vdso/elf.S:14:1: warning: DWARF2 only supports one section per compilation unit
> .pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ; .long 4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
> ^
> /srv/src/kernel/next/arch/mips/vdso/elf.S:34:2: warning: DWARF2 only supports one section per compilation unit
>  .section .mips_abiflags, "a"
>  ^
> 
> Rework so the mips vdso Makefile adds flag '-no-integrated-as' unless
> LLVM_IAS is defined.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1256
> Cc: stable@vger.kernel.org # v4.19+
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>

I believe this is the better solution:

https://lore.kernel.org/r/20210115192622.3828545-1-natechancellor@gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115192803.GA3828660%40ubuntu-m3-large-x86.
