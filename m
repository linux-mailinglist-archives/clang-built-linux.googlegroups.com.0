Return-Path: <clang-built-linux+bncBCRKNY4WZECBBJ4WZKCQMGQEVVPM4DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 25619394DB1
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 20:42:49 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id r6-20020ab066060000b02902424254f3fbsf2601541uam.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 11:42:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622313768; cv=pass;
        d=google.com; s=arc-20160816;
        b=aCV2g9hRennvYmq1bcQDgp0kAQW77hYnY64SoYk6yqTu9I51TYrWt6Xx9Dnd2+iFrD
         ycHIRcJKM4bZrbjMLo0wQoKam6zbO3IrNFbMmC1U4ZcLTtMXDAUdfKyAkYVc6wwPuxIA
         gKj4gq395BRdlxzvHKsyMUyDVdtQ38kfympiQCFSHP+eChWtMBijlS7Qx37PwE+F7HPE
         RPjIdzlhbuVjUtN9+iMG1+mA8px16hli9ys9QV28ZeVcvmRPA/PD+ntolTbLQtAlPvEE
         /20hG5YBhzlGc5+D6Whg5bpY/dU1vmVuOvDm01BPktlJBMG9ipUzCiDNGGgyXNvFdUgw
         PEoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=5BgNiMGXdLFAoJIG9hb8sMovLxL0uCv7zX7NIG/z49w=;
        b=yAfIpymTcMep2RbG2Asw+VCeVxXoMOTzzK/VYbNp5JrNe32UHV1Gu9u1sYV73mwzqK
         NhEKpwjhSCGR1z77RdB3U+GT6abU5qPE3DZeWWYHZJi0D8COniaqVmwWX4OrSqwndn1j
         XzkV0u1T42qSOoJCFTcQNKHgPDTHIrV4rumK2zg0MFpJNrFysNe3uhoHIj15toIWgmJ5
         JmSSjLJpnlu8MRrdrztGdbkVOfuER/TWeYU8zjv7NsHSWpnvtm0n+bmsq+uHM8ytGgOp
         URgHqvz6o3AHGy51RGkpn8SCtjk51QgIIdMYR/HJICN8xR76H6f8zkrnOQ+QS+dTsQEb
         i2Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=qE1EKzqn;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5BgNiMGXdLFAoJIG9hb8sMovLxL0uCv7zX7NIG/z49w=;
        b=ahJIyFU54mppS92jbi6m00MtvoggAx+v1XQgVBgzE6HN8Wka9qFOSG49sQgx6lHR+5
         SVaVwmIlFBLrw8/yaVWBl/RhgF0h1l+Gx0sL1WjZtkR+yTLMEP5cn5jZg5FJFf4UgVxp
         OlJRdsS56s7LMT1P0v95KIgWbB16cgR4y8Po/v1RoqZisH4WpEcsSpNtzy/DOHSRTvY3
         OBzfBODdKwV0qQy08nVtqGr/h5/ai8vmOkRLHwT6OKkCDfelW+v44ruMLBfC4wIP16BE
         PCq9fqNDEsTlri1utLjH66qGxR0B1KSeD107xM1YeqfTmVBovCy7cJgX4lSnsFpD7l89
         NFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5BgNiMGXdLFAoJIG9hb8sMovLxL0uCv7zX7NIG/z49w=;
        b=EzY8/J6pVjnwqIIEkasEyISgYqWAaA8FzwSC+6mIYZ8Sm8ytjoLCkgzVNvq9YscC/G
         lb/MH0/8haVstF++GIoHSzgXrqX5nXku/rrxV+vPwIUYza+3stmTIXePdECNcM26KN+o
         QWOFwGrhtNl45ZotImu823oUJJhTmtTVhvac5LkIjTfwI94EPqo1giMQCnFsG7OfIWUj
         jeCyhg7vO5utbYndWLr/gfW85toMj/4JYEpvCycTzP03Urz2/O2bc4lCEwEBmRccB3CD
         OazZz/VeNLp6jD1LTQ+FnHgQ4rEYCeoLlHozK7gpVf8L9tRCAaI+oTSpoDOOUDryUunH
         Fg+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Tt0JMrtlhAxTxlTIDQb6MILDpcxdJLh8cav/uZnTS+kAPPEEr
	FkTJw+2pU3Lq1LWlt+gwVH0=
X-Google-Smtp-Source: ABdhPJxTgiuLn9pIyJVOLYe/FbgWR47UhMr8WbP/tNaA7SCIHBbVFgqESzp5I5duZrH6TvTk/mBE8g==
X-Received: by 2002:ab0:2381:: with SMTP id b1mr6916065uan.93.1622313768120;
        Sat, 29 May 2021 11:42:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c704:: with SMTP id x4ls845563vkf.4.gmail; Sat, 29 May
 2021 11:42:47 -0700 (PDT)
X-Received: by 2002:a1f:9907:: with SMTP id b7mr10208250vke.24.1622313767610;
        Sat, 29 May 2021 11:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622313767; cv=none;
        d=google.com; s=arc-20160816;
        b=a5k+BZydoEnUHo4lVx9lhHBpmtD6GQoSPXdiWy7z+mhZHeHdePwdAekJ8mC6mU+JSw
         rVU34roE6PbhqhfnhhpjA5ZiTaxEwa0XDmAroXnSYX8ZVm4hEPktoBjblUBhlr26sK16
         2+oK+fxwwbUrpT0QcNjGvPjReY7O/E7YYi0HxilrUWqCC8D2X8y56X4kbyqKApjm6n26
         8hauQMTiBcHgYDtKXeVJ0f4bLI4xEaQHdJvTgmoY3LRQPfmLqjDZkZFa+2N4XQ57ZQ8o
         EAZM0dgDyeJME4qn/0CGSncbtXhMG+WS75+2jnXBOX/2CebfuycZDnViLu1Mu/PXf3nk
         yjdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=QRvt82Fk5G1R/VJTNZv2cjtE+BcwohNm2dB6FQUZyq8=;
        b=iaceNkH+l14BJANbTxMJcUhvmwonyya29WlwFwmXSKYUU/mdLZ6vSht3z6c3VDCmtG
         r439xCYEHnUkZUU6DbVkSBA2oJ8BX0kxeuPTfzIeop2qRex3ALc3R/GyrlLQ2E0KvucO
         Ug9lN+qK2eGouwzUs5x34X8HkwLR8xUfy0EQhJRRx/Vc4AC48cq4QRCJuz40MljAAxaC
         LvUgL6+5Y8QNj54t/zAw0OMbhKyiVz46W/fHTixW1qxD1z0YFbu55xXijvtD1WTQGkom
         skc93cx9cmNmdfUc66JLAYUsY0n6hdi1xIMGTUSeSmMHbjLNPw6ngIYODJJ5P5TB7u0R
         Yihg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=qE1EKzqn;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id r12si16775vsl.0.2021.05.29.11.42.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 May 2021 11:42:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id y15so5781927pfn.13
        for <clang-built-linux@googlegroups.com>; Sat, 29 May 2021 11:42:47 -0700 (PDT)
X-Received: by 2002:a63:fd46:: with SMTP id m6mr14696455pgj.403.1622313766709;
        Sat, 29 May 2021 11:42:46 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id n6sm7758439pgm.79.2021.05.29.11.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 May 2021 11:42:46 -0700 (PDT)
Date: Sat, 29 May 2021 11:42:46 -0700 (PDT)
Subject: Re: [PATCH] riscv: Use -mno-relax when using lld linker
In-Reply-To: <mhng-d39fe45d-7a16-4287-8cbb-1233abe46729@palmerdabbelt-glaptop>
CC: linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
  Khem Raj <raj.khem@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  nathan@kernel.org, ndesaulniers@google.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <mhng-43e3ed27-afc3-4842-8bb8-ab6cc8f79231@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=qE1EKzqn;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Sat, 29 May 2021 11:40:39 PDT (-0700), Palmer Dabbelt wrote:
> On Fri, 14 May 2021 13:56:43 PDT (-0700), Khem Raj wrote:
>> lld does not implement the RISCV relaxation optimizations like GNU ld
>> therefore disable it when building with LLVM=1, Also pass it to
>> assembler when using external GNU assembler ( LLVM_IAS != 1 ), this
>> ensures that relevant assembler option is also enabled along. if these
>> options are not used then we see following relocations in objects
>>
>> 0000000000000000 R_RISCV_ALIGN     *ABS*+0x0000000000000002
>>
>> These are then rejected by lld
>> ld.lld: error: capability.c:(.fixup+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax but the .o is already compiled with -mno-relax
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>> Cc: Palmer Dabbelt <palmer@dabbelt.com>
>> Cc: Albert Ou <aou@eecs.berkeley.edu>
>> Cc: Nathan Chancellor <nathan@kernel.org>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>>  arch/riscv/Makefile | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
>> index 3eb9590a0775..519f133e0d53 100644
>> --- a/arch/riscv/Makefile
>> +++ b/arch/riscv/Makefile
>> @@ -38,6 +38,15 @@ else
>>  	KBUILD_LDFLAGS += -melf32lriscv
>>  endif
>>
>> +ifeq ($(LLVM),1)
>> +	KBUILD_CFLAGS += -mno-relax
>> +	KBUILD_AFLAGS += -mno-relax
>> +ifneq ($(LLVM_IAS),1)
>> +	KBUILD_CFLAGS += -Wa,-mno-relax
>> +	KBUILD_AFLAGS += -Wa,-mno-relax
>> +endif
>> +endif
>> +
>>  # ISA string setting
>>  riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
>>  riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
>
> Thanks, this is on fixes.

Sorry, replied to the v1 but I merged the v2.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-43e3ed27-afc3-4842-8bb8-ab6cc8f79231%40palmerdabbelt-glaptop.
