Return-Path: <clang-built-linux+bncBCS7XUWOUULBB77OQ6AAMGQEFTVFGCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A352F8665
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:13:52 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id x21sf6675490pff.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:13:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610741631; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tjvvd0nEkiHt3a+ZP6JX5UFg/SXEiT+kCQ5On1SQOYjrJb3YK1XXghkCZyiS84QUli
         pNEyL594DMbjcJCTAlbpV9zlh4PVOGSqfeR4Aj1jhTnCG0uagzVjVQSEw9AJwLU22aKF
         3y4GKrNZ+w0BMGJeC/gLW94xgHETrEMcFPwDo1YwiT2oVTx6KpbCrP/f4nPUdEqtRNYK
         35A9sU8TbXkg1fxzOjUvpt+v3Ubb0d/oQOFuEoJULdCktUqZIn0VlNWx9+niw99j/Unk
         k855d5jTYDOrE+t3ha80xb5JQ1BwVh+bpGeaV88dDeKuHhR8yzwUJjdem/aKsNjMzdd5
         qwKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=gsGtIeLU3YhMEa0Qe9WzBB/26m1KwY5bHFTTUSWZkGg=;
        b=OqM4WUH6TIRPXFq0Ka6otY9nIh1Yaz1/LaIXodXJ+KspKTUtOBjgQTYFo3PRGWheDj
         +sKvP+5xuAugzNuT2ZDAYBWErruM3zTO9k/PztirYVAgcRap9xylIK4nfzpUbsO+btJG
         SbHFIj0T3nov1nnoAIgYpaqG+2Ar1FzJ94pTbB1hnCifu/CG0Nu+wg6Eai6uaPyBJVIG
         FZygIKUhb+egfkRIp1IRE3ZJukh4mDDYadZAZ9vs9/ias+dUBakpGgTqF8VqZX3J6TUE
         QS53ldTD2rjPJ0ff1oOlqsRlhvwykPcMpSgTt9yIbjOpcxZm+ubQvginRUtFpBVU2w0d
         2L2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ox+MuupI;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gsGtIeLU3YhMEa0Qe9WzBB/26m1KwY5bHFTTUSWZkGg=;
        b=djLcQpj0Gtp5oh2K37oZhVFCS5zpcry09/viom3TJqnBsrl2+fSp7niJMlmjAo5jE5
         fTtXKR3jbGJAtQrDOecwACtbyhI+0H9WQaDaGVuepezJiZODSzykpgQW6t23OZ2K+1Es
         p8UE3tJJz0mOpWNyUQQau6CE6zzPwQYk7M+kxUF5X+08RSVI0Dl3DuuTyG4ieM3hviBe
         rv6dVds7rmhPZhV3Rcl8wchI75MJEGuISuBF/nR/ZnZgCqUmsPddyu5qoKYI6woAi+T7
         FWFDttpYzOPI4RH4lQPehmucaSA92Xd3wVcO1oQLSqE/+2QSpU6IkP/FCJbZjBXzS5gX
         XWBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gsGtIeLU3YhMEa0Qe9WzBB/26m1KwY5bHFTTUSWZkGg=;
        b=bfPv/ZfVRpmeMpSuDCIxkwaMvEOaI3+2WMtrM2WXuxPuTj8VK1KtVL+VVtb89pqvYN
         c5LBht132TBBrApl8b2BoK1TfbnMnoE15brb8+0wyEDAnxWM61OLYlAMLLkPWqWWoAPk
         7UgyLhbnyIWyxga8O+m9tqT+vcTG6OqIOeFASGIrX8jz/3xHON3CaIyKmusV/KCrNwz8
         JXPCHwRSFpserqWXOzexsWgd4p2d0RADW97r9R6b2ae1dhnyEn1Ji7kySKm/qHImUAD4
         j805eBARHGz77UhZ3V0zr2gOA//AwtN9ad6Uig65yuRgM5WIum3RiAc1XULBCLtcWzHi
         +hOg==
X-Gm-Message-State: AOAM531LCD+cVp+ybSu+K2aBZvlYomvwUoGD7tbDzOG8QPqANjU2CLKw
	pejXAABHhypOPaGYydUH/BU=
X-Google-Smtp-Source: ABdhPJwfkp1fXG8RXJA71wxC+fqLIgcz31DT4G7SXdHl2hf5qGBVRsxj2SfrE7spBYvNEnmTv+y+bA==
X-Received: by 2002:a17:902:ab91:b029:de:30a4:3607 with SMTP id f17-20020a170902ab91b02900de30a43607mr14313944plr.28.1610741631497;
        Fri, 15 Jan 2021 12:13:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2c94:: with SMTP id s142ls3876085pgs.9.gmail; Fri, 15
 Jan 2021 12:13:50 -0800 (PST)
X-Received: by 2002:aa7:8641:0:b029:1a1:e2f5:23de with SMTP id a1-20020aa786410000b02901a1e2f523demr13881738pfo.35.1610741630862;
        Fri, 15 Jan 2021 12:13:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610741630; cv=none;
        d=google.com; s=arc-20160816;
        b=gNZDyH1wLKK5mUVlPaqs2eS7GxgProKOfFmBC6d/MA+HqLi+sanvz2v7wFtzHY0DDL
         hqxQTsaOrIL239MmtHsvcvtkaekYxewq/zinvCznryJg/TQo+/QZ3TX0yY1iTZ4wg0U2
         lwIL1bgqESYsYTUFo3w0KeGCLzXYFQNdtDpMEKgRdSgRsAYuQS+nP0pQs9bphtuO3spY
         SfbWcJZi61uXO2CybE10knJokyr7hpmdTNFG/KFsjX+2DqhasmziXVCwdqgX0CtJ0Iuz
         afaYuLOMMPUAkTrotURQ8+Dte6hybQCJaSDw22oji/LYmYV7nTNo8ywy9nXbr3JsvPR5
         Wd/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Gb2K8a9/AUSvvfvrbCs7WHO9VXw0fMuK9BslVxQRn/0=;
        b=lNdjjW0i3+tfRsTPdPgtaRdckdv5vIbAz9AL0UUIVTJVk2N1WrO5oTuVOdeZmGRKq5
         qfj2HO4nFbOfD+0KLwLgjcC8NFN84SmaMeBmcH+Ysdni65e69KG6fg78Q4m6BY59yCwU
         pv1lJDL27xmHCflWK5p5uM8To3/esKWIjzHZSMupamTkZjxg25h4HLACV+cftHDPCWHg
         gjizE95yfzE+fPiK9171cQAf3RXZX2lI8U33etJ0lYYQ/YPAv1tjq4TMF5QIlBEr6tFA
         uzVw6ERQuxAL7hCkTNoLSWaRq4b7mAxYSjhrt4q/03xVqCgkmiFehBBiTrPgGlaAaAiW
         o58Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ox+MuupI;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id 13si671954pgf.0.2021.01.15.12.13.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 12:13:50 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id w1so6693170pjc.0
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 12:13:50 -0800 (PST)
X-Received: by 2002:a17:90a:ac2:: with SMTP id r2mr10180034pje.145.1610741630370;
        Fri, 15 Jan 2021 12:13:50 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id z13sm9163495pjz.42.2021.01.15.12.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 12:13:45 -0800 (PST)
Date: Fri, 15 Jan 2021 12:13:42 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Anders Roxell <anders.roxell@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH] mips: vdso: fix DWARF2 warning
Message-ID: <20210115201342.76nssqtbs4kttgts@google.com>
References: <20210115191330.2319352-1-anders.roxell@linaro.org>
 <20210115192803.GA3828660@ubuntu-m3-large-x86>
 <CADYN=9Kt597LsfW=Aq6v+kWr+ja+55_+Z3s5mFaJULa+9J4EfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CADYN=9Kt597LsfW=Aq6v+kWr+ja+55_+Z3s5mFaJULa+9J4EfA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ox+MuupI;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2021-01-15, Anders Roxell wrote:
>On Fri, 15 Jan 2021 at 20:28, Nathan Chancellor
><natechancellor@gmail.com> wrote:
>>
>> On Fri, Jan 15, 2021 at 08:13:30PM +0100, Anders Roxell wrote:
>> > When building mips tinyconifg the following warning show up
>> >
>> > make --silent --keep-going --jobs=8 O=/home/anders/src/kernel/next/out/builddir ARCH=mips CROSS_COMPILE=mips-linux-gnu- HOSTCC=clang CC=clang
>> > /srv/src/kernel/next/arch/mips/vdso/elf.S:14:1: warning: DWARF2 only supports one section per compilation unit
>> > .pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ; .long 4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
>> > ^
>> > /srv/src/kernel/next/arch/mips/vdso/elf.S:34:2: warning: DWARF2 only supports one section per compilation unit
>> >  .section .mips_abiflags, "a"
>> >  ^
>> >
>> > Rework so the mips vdso Makefile adds flag '-no-integrated-as' unless
>> > LLVM_IAS is defined.
>> >
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/1256
>> > Cc: stable@vger.kernel.org # v4.19+
>> > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
>> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
>>
>> I believe this is the better solution:
>>
>> https://lore.kernel.org/r/20210115192622.3828545-1-natechancellor@gmail.com/
>
>Yes, I agree.
>
>Cheers,
>Anders

http://lore.kernel.org/r/20201202010850.jibrjpyu6xgkff5p@google.com
Personally I'd drop DWARF v2 as an option.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115201342.76nssqtbs4kttgts%40google.com.
