Return-Path: <clang-built-linux+bncBAABBZWM477QKGQE3SNNOEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 644C92F0228
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 18:22:47 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id g82sf4346879wmg.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 09:22:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610212967; cv=pass;
        d=google.com; s=arc-20160816;
        b=erfioPvpHM1hMQPzVwBV9gAgCgtYnWMpV9bWfcpG7Dx3gs0HDYylMI/47dB53xF+q0
         dnMVdD0kicWxzEEOCRjQLQ5+KagIYe/7rNVroiuB15ri44IGbYbX0fQ/CsihvmLqyhAN
         lJRbjk/slSu0un6KQXnnzPu1fWMIdLSgAez34KBSjDZ9FOPER+odx/fPRQheKaAOMH8c
         btO218L8drqZKeWUw+MdzeLZ6moHnjBFQZlRk4PG3OOabSbSjdubsb5hAR8tNxXFrKek
         DREJDkJ7Tqp9kZcBYTpFG5Y3dxHpM1EKyKSN5eSbpcYSkHMznD1zdiLzF+5CLenCDpyb
         bhPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=BPlQhWr1NI2CFVZC7chVj/U+uPiKz7pInrHoUo2aR8k=;
        b=jgZq6rpbqcp6cee4/tF/O2JtQglexRdwXtm3yfWOk4X03aNpeMwfFwa3qXZTd/73WB
         0k1gniqkvh9Q8SjxDJ7rDA7tRd7LBwdlXb6sYoOc1jwkT+/Z/i7swLrNKjgjW4Rl4BzA
         GUj+Z19/mf8F1GlwL54UzRdeMQumQP48LFmT0d2rAWjOXMahhubY8sFlVTE5PeYFP0hp
         IQeH5HaFrLSS5m1H5p2w1oVRa4apxbaPQQuoF2X3PDVfUe16D3dnspSa/BuY5g2Njf1t
         46VXqBFMeh3qt8BJYVkbufjWh3b/LgFh7vCHrbl/6DfOkKF+3Xya8xwrH7qXFtxbDGJC
         DNWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="Ri9U/Od4";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPlQhWr1NI2CFVZC7chVj/U+uPiKz7pInrHoUo2aR8k=;
        b=O2umibKsXElcARVpux6Ey8yJRsqTzzgt5CA/gY0oe06N98mYRRWqsz8gTZk/v9B3XY
         i3ZF+VTPXwsPFXJrZrYfM6XnDwixL2SkkcMgxsdUVxY9pn/icbCXZAK0DqUGnsP+JrB5
         Enc4XgpOQxRvmbqC1BX6c8fm9CC2TEsANLKHIsw/JYzXy5TRI9zzJ2pBsqHQDdl7eO6D
         fWfGhSR4ZZrzTr8L3TeQeO82MuoMqpCSwAApYemByVqCalzxfi3eVo40uDdWPZ0uxy1y
         hPdWcid3chWFwH8wzUo9jCIIZcmkBymT7EuwsFp/LaSqo1H5VJrFwP5kvYJIDv2pIa0B
         7TFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPlQhWr1NI2CFVZC7chVj/U+uPiKz7pInrHoUo2aR8k=;
        b=RYsB5E7vpBoaXbBlGGpNw7k6ZLolj/fl2uH/ZZ+t/L5PvVWkyHpd5kYO6reKVe4tOv
         RcTG5fMci5IfADW87AnRRtCvoodZmKFUd+1xgz6FOm+iGynJw2MmmADrqdJsgwLz57i0
         34YhrqhottVwh7d8mpEcL/OYqmuX1by+e/vSK+zCq7yWofjup4p+sqPE4eUYWPBZtBOK
         JMwFAiQVAgLJFfKaKCHv+JX8MwrpUfxcJKMFj53rMPGnYkRDKpF3MaScE7S7cRDFZlEW
         yiMrIMDxVg3CCjAFizbM70TCMshSF9X+S/kX4Xuo20bOD7qb+XOGAmNV+qKDtmq4q0Nq
         azUA==
X-Gm-Message-State: AOAM532quOAIRkqI3IA9AbIdGQKzsStzdJZyTheBZcXrGDbi/dMVbPI8
	9suzbgRxsLR5k3hMGXtta1c=
X-Google-Smtp-Source: ABdhPJwhgUntfSj0JjjNU84OLqbMoBAR7SZVQ4RIV3FgeAt2nITU99TLfRuUstUpD2wSvPQDzn+deg==
X-Received: by 2002:a1c:ac86:: with SMTP id v128mr7829804wme.76.1610212967149;
        Sat, 09 Jan 2021 09:22:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:66c5:: with SMTP id k5ls991491wrw.3.gmail; Sat, 09 Jan
 2021 09:22:46 -0800 (PST)
X-Received: by 2002:adf:f78e:: with SMTP id q14mr8884828wrp.320.1610212966464;
        Sat, 09 Jan 2021 09:22:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610212966; cv=none;
        d=google.com; s=arc-20160816;
        b=PwKdPJhvkwFmmIYULf+HKkPw2YLxhUkQVDRPGS/vejg0DPMx8NTcbwY5QWgbaU6KFd
         zrbMN47dmlpBCn8jITGjaOokrt5cOs8Xos55Fjq/qa+KDENQNKZp/T0Ziz2niG3yLFf+
         pLani9CXev2E5IrBO1QGzU7K+9t1kDNL3GzJTBWjOpyXt06gqJ+1kCeWxN4RQk0+D9vF
         SmjYWN2Em61sV9ETFurdDRWrJNOhM91pE3/sD7XsKVmcj1Xb6RE5xiOKgnfx3YUeuJMi
         R5wTVgDgheGFdFSSxX+rJH1IdP/Z9qmo0jktzBX4JpI+JXBl+XZwCbw+N7bwDo7Whpdt
         KPdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=lopjhVQdd7RoqSJIPbFqTTvc23zHkmg9CyWUgEh5sKA=;
        b=FGiOfXO69p8rqY/+o4xp+uiGxEYzbWAQhs4ERXOF/boxJjFC9B5VhZAwWqLIG40cd1
         IUGel+x5SUcoXILesvm6xZQO7Es4ku1P354bTt4sxEkq4SBAK5wivCtPsdiWMZ/RoRjf
         RV6z/eYCQhWbxKSe6rcCw2mP4sLAPZgHqAsXpjd76vtkrgGDXv45+dZk1aA0HuY5n3t8
         GskspH/dBN3ne9WpHGz8CNGITN2wLWD1lH5Peqsk5c0QSaW2A1vxvJ/nZ4w7q4251Vs6
         PwFn0cZYiWA03F+Cj3MJFwWe6PQh3EaBlYcIenn1C7DInC+W0UOxuGCXgeib8RCIcRZt
         +L5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="Ri9U/Od4";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail1.protonmail.ch (mail1.protonmail.ch. [185.70.40.18])
        by gmr-mx.google.com with ESMTPS id 7si498421wrp.3.2021.01.09.09.22.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Jan 2021 09:22:46 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) client-ip=185.70.40.18;
Date: Sat, 09 Jan 2021 17:22:36 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [PATCH v4 mips-next 0/7] MIPS: vmlinux.lds.S sections fixes & cleanup
Message-ID: <20210109172204.498737-1-alobakin@pm.me>
In-Reply-To: <20210109111259.GA4213@alpha.franken.de>
References: <20210107123331.354075-1-alobakin@pm.me> <20210109111259.GA4213@alpha.franken.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b="Ri9U/Od4";       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Date: Sat, 9 Jan 2021 12:12:59 +0100

> On Thu, Jan 07, 2021 at 12:33:38PM +0000, Alexander Lobakin wrote:
>> This series hunts the problems discovered after manual enabling of
>> ARCH_WANT_LD_ORPHAN_WARN. Notably:
>>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
>>    placement (marked for stable);
>>  - properly stops .eh_frame section generation.
>>
>> Compile and runtime tested on MIPS32R2 CPS board with no issues
>> using two different toolkits:
>>  - Binutils 2.35.1, GCC 10.2.0;
>>  - LLVM stack 11.0.0.
>>
>> Since v3 [2]:
>>  - fix the third patch as GNU stack emits .rel.dyn into VDSO for
>>    some reason if .cfi_sections is specified.
>>
>> Since v2 [1]:
>>  - stop discarding .eh_frame and just prevent it from generating
>>    (Kees);
>>  - drop redundant sections assertions (Fangrui);
>>  - place GOT table in .text instead of asserting as it's not empty
>>    when building with LLVM (Nathan);
>>  - catch compound literals in generic definitions when building with
>>    LD_DEAD_CODE_DATA_ELIMINATION (Kees);
>>  - collect two Reviewed-bys (Kees).
>>
>> Since v1 [0]:
>>  - catch .got entries too as LLD may produce it (Nathan);
>>  - check for unwanted sections to be zero-sized instead of
>>    discarding (Fangrui).
>>
>> [0] https://lore.kernel.org/linux-mips/20210104121729.46981-1-alobakin@pm.me
>> [1] https://lore.kernel.org/linux-mips/20210106200713.31840-1-alobakin@pm.me
>> [2] https://lore.kernel.org/linux-mips/20210107115120.281008-1-alobakin@pm.me
>>
>> Alexander Lobakin (7):
>>   MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
>>   MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
>>   MIPS: properly stop .eh_frame generation
>>   MIPS: vmlinux.lds.S: catch bad .rel.dyn at link time
>>   MIPS: vmlinux.lds.S: explicitly declare .got table
>>   vmlinux.lds.h: catch compound literals into data and BSS
>>   MIPS: select ARCH_WANT_LD_ORPHAN_WARN
>
> this breaks my builds:
>
>   LD      vmlinux.o
>   MODPOST vmlinux.symvers
>   MODINFO modules.builtin.modinfo
>   GEN     modules.builtin
>   LD      .tmp_vmlinux.kallsyms1
> mips64-linux-gnu-ld: Unexpected run-time relocations (.rel) detected!

I think they should be handled as it's done for ARM64 [0]. Will do v5
soon.

[0] https://elixir.bootlin.com/linux/v5.11-rc2/source/arch/arm64/kernel/vmlinux.lds.S#L219

> $ mips64-linux-gnu-ld --version
> GNU ld version 2.27-3.fc24
>
> $ mips64-linux-gnu-gcc --version
> mips64-linux-gnu-gcc (GCC) 6.1.1 20160621 (Red Hat Cross 6.1.1-2)
>
> Thomas.

Thanks,
Alex

> --
> Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
> good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210109172204.498737-1-alobakin%40pm.me.
