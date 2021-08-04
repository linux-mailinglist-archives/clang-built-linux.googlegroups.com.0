Return-Path: <clang-built-linux+bncBCRKNY4WZECBBK77VOEAMGQEPAFJN5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBCF3E09B5
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 22:59:25 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id o32-20020a0c85a30000b0290328f91ede2bsf2366852qva.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 13:59:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628110764; cv=pass;
        d=google.com; s=arc-20160816;
        b=yWIHlqQUJx7PNHRjaMEc+S88B+LNo/3kEazA3PndoOk4R+tl7fXeBzax7zcXq8d3HC
         pd3/0gTGSnjuVt75cTjJ14j8YJtHh8SWyiViBd9dQbR2Z3J93hx6MRE1L6NsJuJvZT/W
         6pjlbaZX2POtdMQKJeWiTOg84x9mvKfGBRD4bY3JFkiPeMqo4/9Ik22jOjTN1mIDuGVW
         Rzc6z2g7VIgdqJ+CRPkvjzFxqFPtqHNvoOc7wY+CAhfox+qU1h+IZdoEJJDCgSu5VUmC
         hQqjs5t6yUv3NfhoMgAN2VcFQTXnqjBuI39sY6A7YD4kJLlSspQnaMlnnxzx/KyZsrAV
         BJ3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=B17F5TcT16qJfCwHQi8NU/DurZElZfdFgZp81wTskyQ=;
        b=AcTJsLnM0xkHZCTLwpSU9nnb2EZWywWQfsqJFEAtm44WiBZ2Bg20iXYp2nXWWWJN85
         h+S2Fpcml5RjkUJaGG+gJVSbub3PGom8zyyFMeTvT8aNJEU0JGL1rMBgcNWxcSUQoXjw
         tMVO8i+QJC+StgJDrYlojesiTjk1mOyNnjAqLxXMKwNBKzc33+suM/EhZ+Ac+Dsf9DIs
         dvnOD5Tyb2h82NQQ/vN6+iFIk2tx0iIKio3xP3XvAVXQz6LUAPXOHrPgNI2iwEu3Sdzv
         3YolKaLcbl7eFPnusbnMfWBoLPJLa4NXRJFL0zS+nwLNAltLTBiV5MG3NlpaTdgFNJUy
         nfRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=FEC2AuJ9;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B17F5TcT16qJfCwHQi8NU/DurZElZfdFgZp81wTskyQ=;
        b=lL5l90LDWUZsvfekS1uLkB2nzj8FTBNAcehITbG4DhJ6kWzMy0UOGkqMEHb1ZR9dLH
         flNwly8mF5g2s9W7+Ra0iqmNbxZ2FmIFSrQWkMCOJNcAPiyPS6ZXXnW5GUSPrMnpfp5T
         HRreDE6xR1zX7uLz8YfLxUVfTiiRmzqD+MZIXLxpmlcmyzrbawUZJ4Wpe17W6VqeU9Ya
         pqs7Pe8RNxF0F5v9b/3oZ+/4MGDoL+uPTBWxjBEQggTSiwuB9nAqNl+K9RwoxZ5JqZ3o
         Dob9EDKNKDqse78+2KMDcT7h+YjQB4mXKQt6BBxUpO0AFLUDZZb0R5yEFiQV78HbNRVS
         EFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B17F5TcT16qJfCwHQi8NU/DurZElZfdFgZp81wTskyQ=;
        b=VmKKYNNsUXC3+f7rhNHen3yu0hbTWIGvp1ouec5ifdGXL0N3UNbJ1vCYnvKQwCP6bK
         rfoiteCsfLyKc3x9hE9ZM0Qf714aBjYoy300ZkOg/jiBnrl26uOvYpmgG7199NTV3qBf
         2EerYtiB38l8zTVLrKMxXkkt7QzWY7Rcp9IQisAAJOMbN4bBBRAVagBubu+wvyihLzc2
         DqRC3cQ/4qFdKUxSV/uLw0/Vn4QZbO7gb/+4x3hzJktoe1vW3DRPdyLfZUTBiA07hQYp
         4QpNxJC6Vq1XSwbbRkuuSZmZH9AnbsE9QhpbgFy29CL11Hx+imYeAy0F36P5ZWNgNWCc
         UVcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Y4AkJNTVcNVxGNtQs8QN043qXqUDDALbdLD9ng7LNEw5un9Qh
	gWOr7F2Ru4vgvs6KFHftjpw=
X-Google-Smtp-Source: ABdhPJySOSdl/la1fHODjLcokCBUFpTttKhW5MSZqZegzVo2eQAJPLNPR8Ywq05ga/u7OfL+vciD8Q==
X-Received: by 2002:a05:620a:1661:: with SMTP id d1mr1404784qko.346.1628110763989;
        Wed, 04 Aug 2021 13:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:60c4:: with SMTP id i4ls1439333qtm.10.gmail; Wed, 04 Aug
 2021 13:59:23 -0700 (PDT)
X-Received: by 2002:a05:622a:3d0:: with SMTP id k16mr1371969qtx.331.1628110763539;
        Wed, 04 Aug 2021 13:59:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628110763; cv=none;
        d=google.com; s=arc-20160816;
        b=tZBh1ewq64/2yje88YnPnkJU2djmvzCooaK5IEHFn04jhI+BK21Cdk8oAHT2g+TFRi
         idGzrfAn4EbgxFP4CXxpio4aoxEMCPdWzjzI1/4c6pQbg+TA2/rJ2ypw9enZYSfNf6L9
         PupLRPS/KUJkeHBvhVieaX0opbxpkEVqq0foIHpIKk5hBZRDnNhWZnfEmKhrl0mmCaE/
         2+IkvgDErPpI9CTaX5bRWOHGqEfXtTs60J3kYcg7RrEQ7Hzh5Ef60ZDczME6JOTIU+/M
         k+HmPCY5GFeE5ddS/tsIf/mNdK0tnBsgwPUZh9Or5bDB01EwNNboUcS73kYbpeXXOw+/
         d+LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=pZBQ6NL4F4+toaLhVHgrZoytLyRcSML6nQBC9FrG22A=;
        b=f6NruRqlwu6sZSc9EhC+hZ7cXGoBGhpxCyU/2duQDL2b7tQXEgvds6B5bRH1wNEZN+
         s8fe9waqYZiKehiibO+QDT5D1BOxdFz9rE8VmCcUDqmVyKnnxnWAtmTIWhxSmhs1XJps
         3YK4ZtyHj0VaNPRpIc+dOzxNR41JAmFh1ZrbzHiSs9OG8QVlHNy4SEcoljUJIZCv9ecH
         MnW6gLSwMPjCQ9Hv91LizOzf7JtnRC5J9fOIVpDtgTU+f1Ok4JgKJzHnF+T1LeiZZyms
         fPM8X4HdQGd+X5XoOXirY+Rr4+ia5gI3TwYL8Hi/TCJUGIYqj8swYQvZDlw9EQGemdpW
         hSlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=FEC2AuJ9;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id d11si102969qtd.0.2021.08.04.13.59.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 13:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id z3so4421431plg.8
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 13:59:23 -0700 (PDT)
X-Received: by 2002:a05:6a00:2142:b029:3b9:e5df:77ab with SMTP id o2-20020a056a002142b02903b9e5df77abmr1284235pfk.52.1628110762446;
        Wed, 04 Aug 2021 13:59:22 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id q68sm4657244pgq.5.2021.08.04.13.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 13:59:21 -0700 (PDT)
Date: Wed, 04 Aug 2021 13:59:21 -0700 (PDT)
Subject: Re: [PATCH 1/3] RISC-V: build: Pass `-mattr` to `lld`
In-Reply-To: <CAKwvOdmNji0AbYUiOSfb5cLD+g7YCpXk4oDupa8gTfgzYmxvBg@mail.gmail.com>
CC: twd2.me@gmail.com, Paul Walmsley <paul.walmsley@sifive.com>,
  aou@eecs.berkeley.edu, linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
  masahiroy@kernel.org, keescook@chromium.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: ndesaulniers@google.com
Message-ID: <mhng-4af8be52-7620-478b-bf69-73306a2ffc3b@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=FEC2AuJ9;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Mon, 19 Jul 2021 14:14:59 PDT (-0700), ndesaulniers@google.com wrote:
> On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
>>
>> Pass `-mattr` to `lld` so that it can generate proper machine code.
>> By the way, it seems that `-march` does not work well now.
>>
>> Signed-off-by: Wende Tan <twd2.me@gmail.com>
>> ---
>>  arch/riscv/Makefile | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
>> index bc74afdbf31e..bbc186a3ab45 100644
>> --- a/arch/riscv/Makefile
>> +++ b/arch/riscv/Makefile
>> @@ -52,9 +52,16 @@ riscv-march-$(CONFIG_ARCH_RV32I)     := rv32ima
>>  riscv-march-$(CONFIG_ARCH_RV64I)       := rv64ima
>>  riscv-march-$(CONFIG_FPU)              := $(riscv-march-y)fd
>>  riscv-march-$(CONFIG_RISCV_ISA_C)      := $(riscv-march-y)c
>> +riscv-mattr-y                          := +m,+a
>> +riscv-mattr-$(CONFIG_FPU)              := $(riscv-mattr-y),+f,+d
>> +riscv-mattr-$(CONFIG_RISCV_ISA_C)      := $(riscv-mattr-y),+c
>>  KBUILD_CFLAGS += -march=$(subst fd,,$(riscv-march-y))
>>  KBUILD_AFLAGS += -march=$(riscv-march-y)
>>
>> +ifeq ($(CONFIG_LD_IS_LLD),y)
>> +       KBUILD_LDFLAGS += -mllvm -mattr=$(riscv-mattr-y)
>
> We should prevent the proliferation of the compiler internal `-mllvm`
> flags from Kbuild Makefiles; these are indicative of LLVM IR specific
> issues with regards to LTO.  Can you please file a bug against LLVM
> that `-mattr` should be encoded in the IR for LTO's sake?

Works for me.  I'll hold off on taking this until the LLVM bug gets 
sorted out and expect a v2 (ideally with the other textual changes Nick 
suggested).

Thanks!

>
> See also:
> commit 0236526d76b8 ("Makefile: lto: Pass -warn-stack-size only on LLD
> < 13.0.0")
> commit 2398ce80152a ("x86, lto: Pass -stack-alignment only on LLD < 13.0.0")
>
>> +endif
>> +
>>  KBUILD_CFLAGS += -mno-save-restore
>>  KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
>>
>> --

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-4af8be52-7620-478b-bf69-73306a2ffc3b%40palmerdabbelt-glaptop.
