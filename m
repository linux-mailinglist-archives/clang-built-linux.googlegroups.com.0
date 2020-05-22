Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMXYTT3AKGQEDSDOVNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 730D11DDD4C
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 04:43:00 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id j26sf3261882uan.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 19:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590115379; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJJG0vhOGCpBgoyDj5z/w0mAUgHPo9Do2j4I2HDP5YlISmlWXiayWa7oLPy1KwiBCh
         05dHQXY1pJoaXCVvkIzbvkFWbfWFW+KfrhVw9CZW2Ax6ffoiKqLl1GztOZ/uG+IWiV+X
         GTeYtHx55AMILjc88VjrTyIzZASd5t8i7AoNmoKnmjlSMOd6UY68OpQVeOcGE1Li9IlY
         7mK5lU6pwawk3LJ56kRh3D5LMoqZwUPBEm7jZerVdx6ZyN33nO42asvaOT20y7w9dABM
         X3HPU7sEHsYfMX2CJgdDlt0NgCRCM4pI8WARUD7wbd2+rsLeWVzWkGDhT9TByqbJR7bR
         5UhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rUUdIr3vxlotwEsVYmxZSRHmhaXFgcoT4tIzWWIHqMQ=;
        b=mue0CmczqQNx+IlNNW5CR7Z1ZlLNQlkDUn+TcskaJSFy9c3/VnB8pUz1UpDAyBUVer
         7Cpb89C/YTIIgybBvrLN5IChIAlZA6h5Qj0ZXUfBgmu0glJl9SCaxPYKFSg/fqTuIiGw
         WMxG0k4yVkmYSO+rTTmNmtWDBb0oa/IDRCq/eS7GAV34XIMTyuMlpKMi/LRSUcKQyl4P
         36NAWvQ/0beAjP7QqnO9eJlM8kChfvaHS6JYG/NiuXGwanyRCAF0rTQ+XmK58P3+FamI
         UOsrakpMNB8vovWZXGpZ1hKAu/DRD5bQFriaJmm7SnzApj3xur46+weRcIblOZfuEVsc
         +8ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ql4DdAx+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rUUdIr3vxlotwEsVYmxZSRHmhaXFgcoT4tIzWWIHqMQ=;
        b=PSnGrZOlhJaKHizCgCi/ca6Jt+wKeHHM+7Vs06IheQuElwDeEg7C15GOouaF4ykcXq
         PHlhQ6PKW8xT2Uo8TW4/OAbPlb9KufzfauVI2UwZw+vDOLe+AOx1IycV3Cr3cLAw4p/W
         FeqDsidNlU+0+9r03D5lR0DuDuqW0rSq+cdPeBrJP4A/ZPCxJByQV06MeM3kmgiI1jFs
         zNMqNod8oIt8UBgwh2T7XrhvQAuoATaZUE1sw5b3nj9lP0hH8H/3DLhjS8S5yU+s/+Gv
         ULp4IgoF3iEqpLrVcxr+WeyOhllz6wPSBQ4rLgN6m0ukwKiBQG4AaIjHnXZnkjN4DEYg
         lbag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rUUdIr3vxlotwEsVYmxZSRHmhaXFgcoT4tIzWWIHqMQ=;
        b=NnAX8PsihkL8JMm0QB9nMN/A5ClvSIpfCO/kgKGLuLHrnoIdvE3C2fq5NfuHiFuU17
         zKFulZWcCjVKYq70JB3si14smwJ49hq7GM09JX0rQSC7NkW/kbGJZfJ1qpkRet8bwons
         yQ6QKJVh7LxDZbyYVK3uautEAWErBEijN5kWC8uZ889tMFfh4yWMJUUXIE0F5B9mMble
         LaxpkeHsLRKaw2gYdqv+snR6TtRsrhQ419O8RZ8tOUOaIxxSb1kzcAjf3GAoYwEzAw4o
         jlVNeHlAUqDezG0KzfyQz8iVK4dTXVpDVpyAcYY73F1iU4Su/WYbo49m8VFuJ8TbMZTY
         S8lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VKYARLQQWHyIrpbGdZZ6HzuIcHraJZ4AfrIQF0/Ry2dNPuJ09
	tiS+kku2nErcRNtLWiZdMLk=
X-Google-Smtp-Source: ABdhPJzD1LNoYHg6WoBsI8pmTIlwLLbGLxU/WvCGexnkTdTC4k/TMwYhpOaVXnuRRP/jDy7G5a1ybA==
X-Received: by 2002:a67:e88e:: with SMTP id x14mr9686055vsn.180.1590115378545;
        Thu, 21 May 2020 19:42:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:5d43:: with SMTP id r64ls66563vsb.4.gmail; Thu, 21 May
 2020 19:42:58 -0700 (PDT)
X-Received: by 2002:a67:f586:: with SMTP id i6mr9287219vso.41.1590115378138;
        Thu, 21 May 2020 19:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590115378; cv=none;
        d=google.com; s=arc-20160816;
        b=i5x94UnKtQ8CA+j7VX0/8whZCWjjGnUCLr/OuWFWD06fle11+5W2IvYbkVub5WNqXb
         ZVfZXMwowRdl4U47/wKOaGBG8yNmucCR4YS2NLoCCHVhJN6HSJyABuic21wu23dM5L6o
         M8qeliAcFsGP72efMyWkqRTAUpC40hIGn0+ryxU0VtObsKFgHgyq3auVmbs3lG5uyWjB
         aqRXxCNg3d7gpcfAG27q0d0hGQOVhZ8ebx+jKmQaYdYu/WwK+I1KKMhklMP8EsVOMDU5
         8aFbhey1wuDxxtUUPiNZ+7coTGpfOv04e+JkpZ7Ob8M1Zb4ItugXMgp3TT4Josoqjrf3
         2hGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9r9+AoRulBVTVcXSeonVL+yRisP4PacBY1m16VwmigY=;
        b=R5nZzqJys6MGzFP3y29spCSRqymAiwUU08LLbOc38JzmN2RFFtrbWZeElvYoRbaU4m
         dxNlUPpue2xIvnMDGRomvg6LAzFaOLv1it5jKXeA5/ZQ4w4Kr6qCFsQAR2mU4C6QFROF
         Q2R8EoMIyxt3FK+cYeih0LuLzAGoZMnRxkVNboh6JpFgBZXsYFeLspJpNQYI679lpZ7O
         l5Uoe8tCsnslDIit88RfcfPjGtsK4pvxrytPBskUlj1AlFb6kF5c31f4QfRUmNsob4ds
         9E8hmz1o2JKbLy064Hi/iEo9K62MsdStwVtNQVvOcoXLp6H0elVpsYAXqSAMDpOcQqeH
         3hsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ql4DdAx+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id m16si477272ual.1.2020.05.21.19.42.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 19:42:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id f21so1291462pgg.12
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 19:42:58 -0700 (PDT)
X-Received: by 2002:a63:7e5a:: with SMTP id o26mr12055854pgn.134.1590115377175;
        Thu, 21 May 2020 19:42:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u4sm9767336pjf.3.2020.05.21.19.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 19:42:56 -0700 (PDT)
Date: Thu, 21 May 2020 19:42:55 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: x86@kernel.org, Arvind Sankar <nivedita@alum.mit.edu>,
	linux-efi@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] x86/boot: Discard .discard.unreachable for
 arch/x86/boot/compressed/vmlinux
Message-ID: <202005211942.6E5061433@keescook>
References: <20200520182010.242489-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200520182010.242489-1-maskray@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ql4DdAx+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, May 20, 2020 at 11:20:10AM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> In the latest efi tree, ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> "efi/printf: Add 64-bit and 8-bit integer support",
> arch/x86/boot/compressed/vmlinux may have an undesired
> .discard.unreachable section from drivers/firmware/efi/libstub/vsprintf.stub.o
> 
> .discard.unreachable contains an R_X86_64_PC32 relocation, which will be
> warned by LLD: a non-SHF_ALLOC section (.discard.unreachable) is not
> part of the memory image, thus conceptually the distance between a
> non-SHF_ALLOC and a SHF_ALLOC is not a constant which can be resolved at
> link time.
> 
> % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds ... -o arch/x86/boot/compressed/vmlinux
> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''
> 
> Reuse the DISCARDS macro which includes .discard.* to drop .discard.unreachable
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Fangrui Song <maskray@google.com>

Yay macro usage! :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005211942.6E5061433%40keescook.
