Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKMGY6EAMGQECEDA73Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 643043E503F
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 02:07:07 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id v3-20020a4ae0430000b029028735f9d900sf3667836oos.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 17:07:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628554026; cv=pass;
        d=google.com; s=arc-20160816;
        b=byrpkXq6dOqACyjbsS/CrsC0cSgcBSHyGfvXFkCRDbOo/O5TlKcbIhTH+pezk6UEPm
         5LMXx+8ioftprhdaIxgw+SiPD7pYxN/LC2kCbcgT2WluqecO8tipkNcbeVHXxNDtj9CV
         gS8Yp4EumSXTzUDTVv/VYdBkDUmnIWeo9/cJAL4bDMi5O2IrohhWB94ESURAoJvOoNSo
         hiIwzGyRbfoGj+l3kCyExpzridOneGnanoW1zhl8dR2/N8eE+bEx8CU18gEWnyz2NO9L
         suvZrzFictQiiKaE17hZud5CGFJeNQcCHjD89MKIxPXLVXYsx8MlZIrIund7ci4fHJQO
         TbWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=sxU4i+OaAft+nanSsgeSn3rcel4FpgsN2c6LFkvC05g=;
        b=I2rZhccjJmnIFIwJw7VKCwZ8xevKdfM/LpsX61iw9kKiaQsh8SXbKWpazmWu6ZdtRv
         pjguf58gcNacZ209mN/yWzAX0phX9Q3RYn9Sl5V8BBmk0ReiE7ExMQM0ilOwmA8YriBn
         0J8F6eatgt7wjFrjJyjFevkfxegD3GWYwPd8H4wS/r9P3L4b1YW/6Fq0DPnyWvyuV0xk
         ZllDRcZpoJ0nNs4c6bZVrciE4cb7ZQNN2rUqOtdnEIEuBFMnnwaNHDScwefQqiyXQgLe
         R7CWFE6LgXSGAeJcbX10Rn2boLe7rUy/MMxM0tylESs2watFS/jq1iMF1Yl4sT6GYaXI
         Ojbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=L8nrKPMi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sxU4i+OaAft+nanSsgeSn3rcel4FpgsN2c6LFkvC05g=;
        b=aGszlWgqS8WC8yrYW8/ZPIMtuXklY9k9rzetc7nhG4P5ZBFux3iV9kBJFfCWWuE1U0
         GBAnFP0agSWQQn63+n5kuQ4C7+EabsJ56vbQ0kf8VU+1UdDHT3YUnWQpnHnbM+ByBlp9
         0i/oq3RouIZWf6zpT9NtPIp6xzdWswCjUpREco6lx591TE5pPk50zZ2u5tYVIghbIwVV
         EcV/+5692i78m9Bxql97kriW6qNgSD5L7CrW93b7UDpAAZj7KGKTsS8OtGtDubDXoDbN
         Tmw/IA9I9DPAhDQptcatjTrVSpx3dlwmWnyAjgTQfnCkpfA8AKRV1H/CjaLg+GTF5874
         zaaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sxU4i+OaAft+nanSsgeSn3rcel4FpgsN2c6LFkvC05g=;
        b=mjgAd83ECIorlqJQiwIK3NVEcgw1ywu34AC5E6nyhyecpBlc9Hh5nD95obqZj5s6VB
         ECXx6YxAcAhu6o8+SNstlyvH9019sBiiLV4ShS0bxmXBYgmMGbxLmtRHnb035Et9kF6t
         nlg+Z7QgTyLNDTG1kZPV8eO4SEgKwqD2rX6aXIoV2L9WfVFFRjqho82wFs9j6adZpB91
         +iTeUs4mA0QIIdPezLJzUQA20dH2qgYlFpxfeRf4QvOhtTyDkHT9p483s01TWqUVvwug
         zJMF3oikv8zP6guH8xdGosPMF3Cnd8IAG2eO1Il/Lu65Eh45s6MeSuG9Jvj/pVLcj6/g
         Tv9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530T5TVbNHVl51uHunBxt3fpQV7I3QNzbSVUcDWH7U+aJ0r7bMeh
	zrjNXL4UHrVrCbTHCOCZGFE=
X-Google-Smtp-Source: ABdhPJycqg+CKPbcu5/26l8YEkHy0ocFRlm3wyqERvKyiWk0fUolBnuOfhdvBLBthZLoqEedXAJVSA==
X-Received: by 2002:a9d:2601:: with SMTP id a1mr11519856otb.122.1628554026074;
        Mon, 09 Aug 2021 17:07:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:300f:: with SMTP id w15ls2267336oiw.6.gmail; Mon, 09 Aug
 2021 17:07:05 -0700 (PDT)
X-Received: by 2002:aca:5c0a:: with SMTP id q10mr1386044oib.11.1628554025695;
        Mon, 09 Aug 2021 17:07:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628554025; cv=none;
        d=google.com; s=arc-20160816;
        b=kTqvPC+FSgiqr3zUSBujXgBZmS7CC4LRfcOkjBQmBuBotCSmJbZRP9xiTzNHC4S4wd
         C8dWDcPgOHWLBImefM4RopYH1I1K6ew1PX0ZJDZWbPiC3skY4pRorvBIjUSFAKw1oM3Y
         Se0y3gM25vahflgkC7GG1sbIc6Dri57vnTZu6Namdn2UgDD/xJnE5Zr/qD066JHI6xMi
         MZfSSryZcK37oCdTlEV+ONnEmk56hUWfWQ5jcf7FE0GUJagvws57q/iqRpKKXWQW6TYq
         f/X9aZ8i/P8o0TNSvc6UChFo8xMRLCpxM6hozhri5cHE6H8Ia23QBL6pVP8+xKX/PPRn
         tZ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=JjfxB/NWBg6Ktsgql9hFjDsswtW13cjHVcXKJN/HvB8=;
        b=vegF7sTRORgVrzS/pDT0gLUSORyfmK7ovwP6ep6ZP0VxE6YF1egYLXwJfUezIssS6K
         jX3UuMZQnLlhZ416bO09pZcsB1j8ZrLCAuGWBTWjDawfS66oCGdxNkydibk1hXV1cILV
         yz/nsa7o6DChOkFv1wRvq1rKnqWdQCd2CdrQ9VtHHZSWQo3AOf4QKgLQsgz4lK0/AEdM
         UJmRTfxgUD/tLBI3XgrcMUPltiklphqHPoj2eZtNgsrMZyyUDOgHx7ywbNFmVmmqz99D
         YXryzpXwZvXv6ToW3djv3FWZ9ZhWIUNXJdS2oOZld5USd5jOlPvsUZ9CBf/KxzsG8Pu4
         uAPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=L8nrKPMi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id bi32si59662oib.0.2021.08.09.17.07.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 17:07:05 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 17A06Zdd027297
	for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 09:06:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 17A06Zdd027297
X-Nifty-SrcIP: [209.85.216.42]
Received: by mail-pj1-f42.google.com with SMTP id fa24-20020a17090af0d8b0290178bfa69d97so2699115pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 17:06:36 -0700 (PDT)
X-Received: by 2002:a17:90a:7384:: with SMTP id j4mr24142360pjg.153.1628553995364;
 Mon, 09 Aug 2021 17:06:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210805150102.131008-1-masahiroy@kernel.org> <59ce441e-8deb-39ff-700f-4e1c4e871177@kernel.org>
In-Reply-To: <59ce441e-8deb-39ff-700f-4e1c4e871177@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 Aug 2021 09:05:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT+7y+uNXKfTfW7HpQa1mVt0nuKHFPMQ3tMhjJrKt0v7Q@mail.gmail.com>
Message-ID: <CAK7LNAT+7y+uNXKfTfW7HpQa1mVt0nuKHFPMQ3tMhjJrKt0v7Q@mail.gmail.com>
Subject: Re: [PATCH] kbuild: check CONFIG_AS_IS_LLVM instead of LLVM_IAS
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=L8nrKPMi;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Aug 6, 2021 at 3:46 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 8/5/2021 8:01 AM, Masahiro Yamada wrote:
> > LLVM_IAS is the user interface to set the -(no-)integrated-as flag,
> > and it should be used only for that purpose.
> >
> > LLVM_IAS is checked in some places to determine the assembler type,
> > but it is not precise.
> >
> >   $ make CC=gcc LLVM_IAS=1
> >
> > ... will use the GNU assembler since LLVM_IAS=1 is effective only when
> > $(CC) is clang.
> >
> > Of course, the combination of CC=gcc and LLVM_IAS=1 does not make
> > sense, but the build system can be more robust against such insane
> > input.
> >
> > Commit ba64beb17493a ("kbuild: check the minimum assembler version in
> > Kconfig") introduced CONFIG_AS_IS_GNU/LLVM, which is more precise
> > because Kconfig checks the version string from the assembler in use.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>





Applied to linux-kbuild.




> > ---
> >
> >   Makefile            | 2 +-
> >   arch/riscv/Makefile | 2 +-
> >   2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 4ab151060931..8b56c9692c3c 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -844,7 +844,7 @@ else
> >   DEBUG_CFLAGS        += -g
> >   endif
> >
> > -ifneq ($(LLVM_IAS),1)
> > +ifndef CONFIG_AS_IS_LLVM
> >   KBUILD_AFLAGS       += -Wa,-gdwarf-2
> >   endif
> >
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index bc74afdbf31e..dcfbd2a87d41 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -41,7 +41,7 @@ endif
> >   ifeq ($(CONFIG_LD_IS_LLD),y)
> >       KBUILD_CFLAGS += -mno-relax
> >       KBUILD_AFLAGS += -mno-relax
> > -ifneq ($(LLVM_IAS),1)
> > +ifndef CONFIG_AS_IS_LLVM
> >       KBUILD_CFLAGS += -Wa,-mno-relax
> >       KBUILD_AFLAGS += -Wa,-mno-relax
> >   endif
> >



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT%2B7y%2BuNXKfTfW7HpQa1mVt0nuKHFPMQ3tMhjJrKt0v7Q%40mail.gmail.com.
