Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCMEUSAAMGQEFJY3NQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id C64C92FE089
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 05:24:42 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id l1sf450707uad.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 20:24:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611203082; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mmd5pdFQxl5dfevaGhW2jO18Hg9FTiOYtiOGrWznpSkq1qTedBrmdyq3IorMxLQenu
         B458Rxv8Oh+4Gj9GuLwKT/usZaDYfnpcam50Ye6gUkoJ0/BNARyzsyrLf11O6IJBVXsa
         q8Z4ucQ4lzzsLTDrpzsWhbgm6a5TNQ1TyxCP8QPRM+cnXZ8w4R8kbeB70N27lD5ItxDc
         wPicmOdvIPaObrqHfQ0mQal+heh3gyx3JdNh0BkytUZbLf1ZHiVKOJ+efkdNe9cR9Tlk
         nbRtgNsAvtiXg/pcPPRdMZijQAbbHCZV3NrOXB/8ScG3PA+N7JqL8ASMg1M1ZM8nXMMr
         uYug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Aug2uIZF4ypy3+RR2FuyOEamjB8jSmCRtb2o3Oac4cg=;
        b=i7OMDObe14QDzcPzBnk55NtQhgk16EdEqAOdLZN6l1jBrmjFzyV7yiQ8mgxcSrWeym
         +aUn6DkLpmV0/o81dOrYHY+hvlQG6c/qffUeza/ecnY5NQofbOx0YaAJIzcVvMrGbLPi
         Exj3PQ7WTgptH4pwvNYOdWrrs5SNZvdqjI7BnxOk963z40gCzGbqo6L/ekkdY40Jf/Fy
         vBLFsuOFgAzs+38tKaX9eMaSxbhwAB6bX9vHoEE5lxic3KLWwvoE8BBuGqiaDzxkkSYG
         /QE9hy1FSHM+0zp7V0pMnpCx5Nb6gJFnh0T7xMqEXVs7/KWtGInM1DHa5gnt/b9/AQNS
         zBiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thRPG2ix;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aug2uIZF4ypy3+RR2FuyOEamjB8jSmCRtb2o3Oac4cg=;
        b=OW49K3bkmVRXHOzhkuBl6uME2xLeqyacGqk4DyIChmevMx6d/NdLyIIyGZF/bjyaXq
         JALrgC3fcXnLHbZ8BbGqNQPT7MLYSrDHpYoSjTgNf5NhApdGp3PzBB6XmL5vI/jCYiig
         QEjodbdfqqWb+Wf3QcGruk1DaOdsaNP9/obfmuEUQsn6NbyZ4y1EIk7BBpmd/IwvOaT9
         cxibZAJlXhNrFG/sggMLZIZ/rWFMW1XljJCLU0NQizQuNEhTAuAH0s6e5mQHM2bs5BnB
         rD5YdwbjgN/Xyxs/WEdQ6j4AyMRnMPdEsq6DDEuuuCd+w0KcDUifYkQUB3yKsGU6o2b3
         GIeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aug2uIZF4ypy3+RR2FuyOEamjB8jSmCRtb2o3Oac4cg=;
        b=XaXVGaXUQBQh79QtcmPDCGX/T/jCySFEf353yrrJk+JYPYBNyE88NebO+COaANHURL
         kgV4WjmF5MgEoZIqvWNfgpiFHodYOg5c1My2DejtQcDHDAfd/RFodNBQSSJ78UzWNfSX
         eo9PLR995oDQKOXztSdSA5G/4vFA6wmB16E/KYXRkG7vGcWvR/p5MkqjKSPN62h5zs17
         Mwh5wyZzOGx3sRKd4ZCLf3VuTZNFvFWdkTYIPemkboMYlsB1tocEGyNVZWwpt2dezByl
         tKRqSukUV/K37C3MnMaPb/b41lxx4lezsvSdRhNTZg+3fWikiVWV3SmLt+1v3hDEIRmG
         YumA==
X-Gm-Message-State: AOAM531adXo7atHrDrh7/dKiHlvS4usNAAskyEePMMytWLXh6WWnTs0J
	RaT39+MKqjnWxKwRMvwhOn0=
X-Google-Smtp-Source: ABdhPJxxQY+k1jkW4qj0BbmFCNXnBnILn15cKD3nxCWvkYMFLs4R5w9te42le0uwwMU3LFV4VOnfOA==
X-Received: by 2002:a67:11c3:: with SMTP id 186mr8791873vsr.3.1611203081894;
        Wed, 20 Jan 2021 20:24:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4823:: with SMTP id b32ls77207uad.2.gmail; Wed, 20 Jan
 2021 20:24:41 -0800 (PST)
X-Received: by 2002:a9f:242a:: with SMTP id 39mr8506812uaq.49.1611203081475;
        Wed, 20 Jan 2021 20:24:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611203081; cv=none;
        d=google.com; s=arc-20160816;
        b=GS9zzh8luuJgryo7xe/to7gXnMx3N+iftZdCliqLuTvCW8HYaOsvYkFp7QjKsvwCWV
         2KA6vjMVUfVD9QSK3vl2gWsGSuBrcMBdmAbT9JoaO3WOhF5CgVNuU2yWyTUO6K4FCONk
         uLDrx0hjA9F3v9Jg2ZU1LcmsgMUzdWTwlpek3of5KTg4GBrqC0R1w2vnHB+k2u+r+LbF
         Xekeph35Im/0+gmUKedvKFyr9TgoHEZyLwgZuEcI2e9TqBWNyDXPGDZ5z4gy4NEaKV+P
         QebesoOiEdw0aGYMrbHR7qgMx8OsYFLlomleY9xNRZ/XZaWhhOy5sSl/texGkqvidHpo
         4ntg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0ruSWkvxK7Tj2d5WiCdrWnjESQKPua96iUP2imnkCtM=;
        b=WEOUta1ncLaBGoeSySialhI9SXwWiGmCYRPKPTmsmDbEEDw41yCQQQ4hvItL2XisYA
         mJ93F/mmche0TfiFntKoXK/O3aWC5jhN7Fso9WmPDBPc4V4tw+nzyELZow7odvx0EdmY
         j7Hl+FysReB6TEw1Y+zHPzd4Boi0csxUIbyarfjzylVG4ZBFTYjl5mgPXt14qTodIhyz
         EGnZYFMzSaIvg/91EuP6LzGoF93Z2asmPG5CenS04zQU8L4chRHA1Zqdx0Hucr26J5xT
         CqjgKx45fDNOM9to/6v6VwHI0YP51RR0SYH3BKBQr3dLtkk1TjLa730dsmeFJLnArIUn
         Ewyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thRPG2ix;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id 25si367978vke.3.2021.01.20.20.24.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 20:24:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id m5so776008pjv.5
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 20:24:41 -0800 (PST)
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr9279888pjf.25.1611203080496;
 Wed, 20 Jan 2021 20:24:40 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com> <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
 <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
 <CAKwvOdnVwkxQTQ-LkdZi4pFWTMg6d0Lddddp=j4pCEh-JT-34Q@mail.gmail.com> <YAj/VBzbRaBy7zLv@rani.riverdale.lan>
In-Reply-To: <YAj/VBzbRaBy7zLv@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Jan 2021 20:24:29 -0800
Message-ID: <CAKwvOdkLuVBzyvOxHR6SRz8qd3xyLzXsuMc=wnK2bEG5T_RWRQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Adrian Ratiu <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora Kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=thRPG2ix;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036
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

On Wed, Jan 20, 2021 at 8:13 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Wed, Jan 20, 2021 at 03:09:53PM -0800, Nick Desaulniers wrote:
> > So I'm thinking if we extend out this pattern to the rest of the
> > functions, we can actually avoid calls to
> > kernel_neon_begin()/kernel_neon_end() for cases in which pointers
> > would be too close to use the vectorized loop version; meaning for GCC
> > this would be an optimization (don't save neon registers when you're
> > not going to use them).  I would probably consider moving
> > include/asm-generic/xor.h somewhere under arch/arm/
> > perhaps...err...something for the other users of <asm-generic/xor.h>.
>
> We can't directly do the patch below since there are other users of the
> asm-generic/xor.h implementations than just the neon file.  If it's too
> much work to check and add __restrict everywhere, I think we'd either
> need to copy the code into the xor-neon file,

Yes; I'd rather copy that code into xor-neon, or someone under
arch/arm/ at least.

> or maybe do some ifdeffery
> so __restrict is only used for the neon version.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkLuVBzyvOxHR6SRz8qd3xyLzXsuMc%3DwnK2bEG5T_RWRQ%40mail.gmail.com.
