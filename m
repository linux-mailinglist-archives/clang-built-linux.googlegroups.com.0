Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB5P3SXVQKGQEFMTMN7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD3F9F2CC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 21:01:11 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id v16sf394742ioh.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 12:01:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566932469; cv=pass;
        d=google.com; s=arc-20160816;
        b=E0ySSalnNbPO7/bUKtXQ4Q7n2VdO/+kzTWYd0fVj1nPyhFGxEzsNqEhAdP76jA7K50
         W9994k6jxV/DtvgKnTPJ5620zFTRuMNN+xrb1utf0Jka0zvzLgmfW3v96cOSvQUMIpwB
         m7qNpS/4cHYytOUOrPNCpM8swLN/1J3NEE5ec9A9NsZPC6F5KctXNxPuv+Fj8II9IVZz
         tVu3vkDut1m5TTpOTgl6xgcGQin8Udr31vbUXs4cdMt8G5QN6+inns4vhEripEiizcug
         KNVLsKKkBB/V7JFh8p8QPnYo+syXdVN16Et0iXsaXhdEgKWGJJo8BuVSpJ0aTDoAxE41
         l4HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=udMDSyy0KAQFvM5rRd3xaN3lrQcbyaz0iI7vw82ztw8=;
        b=ADpnbb0cYu+gHRfK31XpFbHb0P8ZpdVUYKHiPZB3PeDwwixKmzkr2kGWj8vjBKHA3K
         sg+KjljsmsdtP6ak53GJi8yZZg/giPeRuul69AiGifUiZAop8DxB/4eoxupPmd6C5VBg
         FYw+3aKZ4l4RRRzsO+A1/1ulQWYPuNPOKfV2/StPXYMVr07gMajppd9UrC3YgWvMQmH2
         rooRqReeE9fUKQh2cdFrLu5DNbBf3JZarUoM82sXyVn3PshZCgJZxgYg5oBeUKDy1n1y
         LErQWKwZitqCPle2vSFKbWIgfv0Pcxk+4xyR98IWw3o9t3NYZzQHv9Pt+RGF09TeUvpS
         rinw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=udMDSyy0KAQFvM5rRd3xaN3lrQcbyaz0iI7vw82ztw8=;
        b=GbWXjmCn2dAU0Ip/uEpMoDHS2Rzei2UkjZ1TyNBPKSUoWttC6dx0Sd0Ctd8/n7ujBt
         NG/sXwrSm9xfNe350Zcy9tBl0ok20cTYtS1T3qkrJgvz06O0zosS/IuovfCJZTh+Fx4x
         gxYdCs6rGk2Bydtno08HSgcbFX8a3VZ+1+s5Wf9UHpoJeVq3Xgc4tpVmnCSMwM1w7MxZ
         /L9ASHh0Rnw4w99Q77q6X06ciSyRH5VmYEFg0wKWT1uDUm3283IMU/WR9SbZHRHJETuP
         q2nnLv28vETJKv2i29akIUK9zARDy2rarZDW3462OxNe1ftVz0bWxWuwxyW0Exc4TytD
         1ozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=udMDSyy0KAQFvM5rRd3xaN3lrQcbyaz0iI7vw82ztw8=;
        b=Jds9o4X2d0v+LUFV/Q4FfUuDYrTY550nMzn3yWFRiUPhjJ0zju4jEyFhGk0YmZ6WYr
         5ysdpZR+PsFd4uGCj8engmyB98SBEONtHVlta3coC9+HraKMuhaI+krPAQRyMui8IbJ0
         FPsUt8pVILFEIJ0ktZBlRqh1laGg/SwvTkvaGPU7mZFS56YOwlXtwDT23ERjCT5nt2Ki
         BAA3MdbCCnl2lYpXrzIyuiaycULkypJY8kGELSU1JSDPayNVYmzBV5f7TDKDqA18FcSH
         ELVifFmCLtnl1rj74ur9Jv87Z7Eub+X+kuY3NE5k1wZeGtOnPEqen7uNN4hkCNoH7QTG
         waDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDlBBjmMkCgc+amY0dJ7rT+oKoJ/A8UkuM2FjnQ+sHEUTvMqzD
	MGzODj2KouFv51cxQ4KP9/8=
X-Google-Smtp-Source: APXvYqxLhJtc5HQhiwYHfm3p2Ih2GUXsXLucDKL6a6O4u8qGF4TxU6N9K6hSQMkp5w0DaLRp8V+EAg==
X-Received: by 2002:a05:6638:143:: with SMTP id y3mr323526jao.68.1566932469646;
        Tue, 27 Aug 2019 12:01:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:878f:: with SMTP id f15ls48650ion.13.gmail; Tue, 27 Aug
 2019 12:01:09 -0700 (PDT)
X-Received: by 2002:a6b:7718:: with SMTP id n24mr554969iom.114.1566932469307;
        Tue, 27 Aug 2019 12:01:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566932469; cv=none;
        d=google.com; s=arc-20160816;
        b=gQ4omQisKH/p2NvqJYW54QXdT21cOX4s5coEIICXX48nTTLgGBO9B84I+r7ld++SSi
         2Dcev7/sIKJ9c0p+25z2dFXeR8zNXbusWR0/tjw8wySLbweBQngX5FmTzNOjSemoJ4IE
         X24UcKYLXkQHiU4w+7G2Pel1pqvNGftKLsIX2Ht3UQdUFhpfwWj/gxfcRBHM+5JgU4cD
         8yNJsB3qULHH1lMu0TDZydZOa/fBFL/h8Oi7e+QZl/Xc2qOCPi20cyAQWT2uAw7OmApF
         R5+Xk2T4wllazhTJ1oPjnYxY5CtMM8zxQLoK0ZiGGDsDvOC4F6cfKKrtaNkZM0S88SQY
         aAFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=R+ZzImw1JQRNETvby9DaqBU/AFeon5xlJQ83gAwLiu8=;
        b=t2BTq16pXiqfHHsQNpzMvwBi8M0PrHLGZcrl71Tf0z79p/gh1JucqZX23qvDuhVwYf
         8y70SRWMYJTTHjM8yVaL/d4z+wpvQXrikSMc5kN9aZGne30bkgai7TDAhF91GMBgBSdP
         CU5g8iCkwt0yR8O3O9PdD/ORDHL3xfA4y+n0RVs4kanYn364QcmvkS8U/7cd3yvtq2Ga
         WuAiXrh8bNI5vy+TDolDly4oxOZboBp1PR/E+yj5HP45X3Qt7uWUBgxw+o3ck0qOBk7S
         MzBU98I+jCffrqEaf6/3pnjUJm/Lc8qdgWXH90d9JyY4gMclxj8Oi8/caKe8T6CpmsKy
         EUhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id i4si1421ioe.3.2019.08.27.12.01.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 12:01:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id m10so166339qkk.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 12:01:09 -0700 (PDT)
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr6175qka.3.1566932468383; Tue,
 27 Aug 2019 12:01:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
In-Reply-To: <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 27 Aug 2019 21:00:52 +0200
Message-ID: <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Aug 27, 2019 at 5:00 PM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> > > $ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
> > > crc32.o: warning: objtool: fn1 uses BP as a scratch register
>
> Yes, I see it too. https://godbolt.org/z/N56HW1
>
> > Do you still see this warning with -fno-omit-frame-pointer (assuming
> > clang has that option)?
>
> Using this makes the warning go away. Running objtool with --no-fp
> also gets rid of it.

I still see the warning after adding back the -fno-omit-frame-pointer
in my reduced test case:

$ clang-9 -c  crc32.i -Werror -Wno-address-of-packed-member -Wall
-Wno-pointer-sign -Wno-unused-value -Wno-constant-logical-operand -O2
-Wno-unused -fno-omit-frame-pointer
$ objtool check  crc32.o
crc32.o: warning: objtool: fn1 uses BP as a scratch register

The kernel configuration has frame pointers enabled:
$ make O=obj-x86  CC=clang-9 V=1 lib/crc32.o
...
clang-9 -Wp,-MD,lib/.crc32.o.d  -nostdinc -isystem
/usr/lib/llvm-9/lib/clang/9.0.0/include -I../arch/x86/include
-I./arch/x86/include/generated -I../include -I./include
-I../arch/x86/include/uapi -I./arch/x86/include/generated/uapi
-I../include/uapi -I./include/generated/uapi -include
../include/linux/kconfig.h -include ../include/linux/compiler_types.h
-D__KERNEL__ -Qunused-arguments -Wall -Wundef
-Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing
-fno-common -fshort-wchar -fno-PIE
-Werror=implicit-function-declaration -Werror=implicit-int
-Wno-format-security -std=gnu89 -no-integrated-as
-Werror=unknown-warning-option -mno-sse -mno-mmx -mno-sse2 -mno-3dnow
-mno-avx -m64 -mno-80387 -mstack-alignment=8 -mtune=generic
-mno-red-zone -mcmodel=kernel -DCONFIG_AS_CFI=1
-DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1
-DCONFIG_AS_SSSE3=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1
-DCONFIG_AS_AVX512=1 -DCONFIG_AS_SHA1_NI=1 -DCONFIG_AS_SHA256_NI=1
-Wno-sign-compare -fno-asynchronous-unwind-tables
-fno-delete-null-pointer-checks -Wno-address-of-packed-member -O2
-Wframe-larger-than=2048 -fstack-protector
-Wno-format-invalid-specifier -Wno-gnu -Wno-tautological-compare
-mno-global-merge -Wno-unused-const-variable -fno-omit-frame-pointer
-fno-optimize-sibling-calls -Wdeclaration-after-statement -Wvla
-Wno-pointer-sign -fno-strict-overflow -fno-merge-all-constants
-fno-stack-check -Werror=date-time -Werror=incompatible-pointer-types
-Wno-initializer-overrides -Wno-format -Wno-sign-compare
-Wno-format-zero-length -I ../lib -I ./lib
-DKBUILD_BASENAME='"crc32"' -DKBUILD_MODNAME='"crc32"' -c -o
lib/crc32.o ../lib/crc32.c
  /bin/bash ../scripts/gen_ksymdeps.sh lib/crc32.o >> lib/.crc32.o.cmd
   ./tools/objtool/objtool check  lib/crc32.o
lib/crc32.o: warning: objtool: crc32_le uses BP as a scratch register
lib/crc32.o: warning: objtool: __crc32c_le uses BP as a scratch register
lib/crc32.o: warning: objtool: crc32_be uses BP as a scratch register

I uploaded my .config file to https://pastebin.com/raw/dmQ1CsNs for reference.

I don't see anything unusual in the configuration, but it's interesting that
this configuration has more of those warnings that other configurations,
so there must be something to it. Here is a list of how many objtool warnings
I got in some recent randconfig builds:

$ find rand86/ -name \*success -mmin -300  | while read i ; do echo
`grep objtool $i | wc -l`  $i ; done
0 rand86/0x694311F1-success
0 rand86/0x8D972A20-success
35 rand86/0x23203CF4-success
2 rand86/0xCBBF0EE0-success
2 rand86/0x4C14539-success
0 rand86/0xDAF4E782-success
0 rand86/0xC0A55734-success
0 rand86/0x66A9932-success
0 rand86/0x6EA0E018-success
3 rand86/0x39524E4C-success
0 rand86/0x1529A460-success
0 rand86/0xF8B3C01-success
0 rand86/0x3A38D796-success
1 rand86/0xBC23C91A-success
0 rand86/0xBB45D3A4-success
0 rand86/0xA907618F-success
0 rand86/0xE1FD6050-success
2 rand86/0x564C9F97-success
1 rand86/0x6B87B4EC-success
0 rand86/0x138BF05D-success
0 rand86/0xBEA383C4-success
4 rand86/0x13EDB348-success
0 rand86/0xDD0F59A6-success
1 rand86/0x1F629018-success
0 rand86/0x775CC509-success
8 rand86/0xC368A488-success
0 rand86/0x619AB1C8-success
0 rand86/0xF94B887A-success
197 rand86/0xBB7BE7F0-success
0 rand86/0x9C77525F-success
0 rand86/0x8FB025C4-success
50 rand86/0xA25C2C06-success
0 rand86/0xC96DF498-success
3 rand86/0xA9CE5E8F-success
0 rand86/0xC2F8A840-success
0 rand86/0xEAD8A021-success
0 rand86/0x5721D814-success
141 rand86/0x8259791A-success
0 rand86/0x9EB91B3D-success
0 rand86/0x5F1C100E-success
2 rand86/0xD132EF06-success
0 rand86/0x1C679BF4-success
0 rand86/0xE647B3E0-success
0 rand86/0xEA358480-success

    Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg%40mail.gmail.com.
