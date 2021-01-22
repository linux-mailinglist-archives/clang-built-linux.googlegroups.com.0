Return-Path: <clang-built-linux+bncBD26TVH6RINBBPX2VGAAMGQEE7BOPIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D23412FFD46
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 08:22:39 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id j25sf1881984oie.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 23:22:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611300158; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPf+/EECV6eM7Ol8aJneWDH7JshodOEXl098BK5pT6U1GXL+B8TVQzEJkrnoqvopAi
         apTJYZGhvLDPcoVwDylbhntvccngKlYIkDd4T7VwbnuOQnx3t3s2cjzXmyiL5ujLggAQ
         hF0xYh/IjBgjbzgMMNannnWpyoEBrAWb93BT3q3LQMaX5Ihef86+DALIt5HmWUChJLSS
         jWIoWXa2izXUwmVhugotkmXBI9ly7iWihimImpoK0/zgEmJjM21Css3d1BXehQa8Ihgm
         tLt2qmmqtov/VKiZhD7r1NrMLIau5KsxQ8hCMoX5p3tg6AgD1Q0b7P05lA8vXhWJ3mdm
         /z1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=YhYqUlq2q7b4R23IPWl+s0Ghf/HwU6yiDuEG1ZO5BFc=;
        b=Ds/vV9SUyjcpuJx/C+V7fgc/h8Huxf3HstUSs+UVpmBOZKGSiCCDLsbTTBdIxVTSDI
         oHpslzSwsszXm4xba/ed6KidTSMNX7UKxizRI8THu7d9rB7JyiwDeLVnB0jCfNzpZzYF
         v7SHvI2YdWBMmUvFxT9VBbfgVtVvY6TH1QrK1r7whE505+F+DMFN+kgY9E4Nx5pGTOBI
         M10Y4552Q+CnbpqOt8Oemc5xqvGac9zEcvRaB+Uo1R7yIWaz15ryWMC74MEtuOYBVBzY
         y9rnbBkyU1K7vhEdxloCQ7GYgAxUAccEadGuUALxXQiQQ8+FZvETRLHtV8RlQHRzvSgN
         Ot+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YhYqUlq2q7b4R23IPWl+s0Ghf/HwU6yiDuEG1ZO5BFc=;
        b=Saxeshwc2EjgBTdM5WJ4NRmJBPtqV30oHeGifOgrqwPsbTStUWNAabP0QtwoBIlZP8
         6NC4IZKcOwy0OA3agAC/VKCD8ajQXpaVNwl1gB2BSu+ZCfly5XTJ18N+w34SdKoTqInR
         Ff8NSlMEplGuuxkXZjamf/QU92VS5Ige1oelW2HU5vuTbsUqgk7dERbqhcwDW5b/rk8B
         b7bHK2dhLZPLTfKTsfcD8ntl7mAJt7tmLPlUP0rIMTXsldCJHYfNpYftVfiujNhY6mx2
         k2vpsmzvo7gYix+Pgw/ul/OsXt+ucQo18RWFLL2ahjjXRWenw/tagGu/yk0eUC4SIShS
         QqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YhYqUlq2q7b4R23IPWl+s0Ghf/HwU6yiDuEG1ZO5BFc=;
        b=HQy+yJjWGdj1x33fCr4VaJSjuU7axq5bDCKKBzxWLfzzwGXFscJfTbd5RfsMKH+qlQ
         cC6UndTtXpXY9JEP6IjKJjywktW3A1TOSJvyONILFPzqXP+W2FOSIUp1vu4MknhMLOUd
         Nvf6NeJ3obiXixYw7E4eDzqHRWNglNo/rv9mQ4+X14imdUt1tLOjpWGjQ9EvGyOIrUCO
         7MUec7LRFr2R7RWh+PphXVYdmKjgrC+rnbORPTE0tuGh92WCABZadadU2LKYJT/DoVAP
         dqzq3cQyxtryBdRpylP73oZnsdTMmGiVBTLwj9E5XtloYQKo+mai94N2s3CCy+ijBeZb
         Ib4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nG53PBFR17SNwEeIwcJ5FBIr26m3niS3eubU09do5dY8n72Eq
	23ajgKtNIEDVkjqygXjic+M=
X-Google-Smtp-Source: ABdhPJx8biG9+4vswXVe6/n6HZAlZvXTSWKS8go2j2tx2WNCIiWJJ2dwHN8Gcc8E5U4ce90tVc6ODA==
X-Received: by 2002:a9d:745a:: with SMTP id p26mr2474858otk.206.1611300158497;
        Thu, 21 Jan 2021 23:22:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69c2:: with SMTP id v2ls601223oto.5.gmail; Thu, 21 Jan
 2021 23:22:38 -0800 (PST)
X-Received: by 2002:a9d:640b:: with SMTP id h11mr2326872otl.224.1611300158100;
        Thu, 21 Jan 2021 23:22:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611300158; cv=none;
        d=google.com; s=arc-20160816;
        b=t6HSzrmvz82GPlNz0FFAnaEbBBDOJi4nbyT88bfuGR5HyJdG+l0GI3X6JlwlV54dLi
         Rd3mOTz3i5MPN4oApvX/FNxx6CYKh26jn6fejN9WwJFUNZLyGniHEc7XH7BWFcOz5gva
         O2eAMBquu04cBwiOD9mYP81rPj0poSRbTK+PQavSzujAg5hpN9CBt6kYMaONt3NAJmIH
         DQtqPuxFuoVGgWCAZL/us8grM8LeBFW4YrS/9eE0cEjlmuyVuFpaSHyi+/DkN0m35SIJ
         uGJRKScCJQujGwb20e3cNTX9xO1myA9UsedM1V43KFKNtjRgx7TADSMhr0zDvZ7iukcs
         X00A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=m+qG0acOPTBtPw4I322UeAEEgmTYl000DH1snNaICkc=;
        b=tAmQB/811VW33DttuSB4q0gg0zzvDY4WBMAFrSPsbNnS19IHgJWKAuB89jrk5i/L++
         ZnFH88dVNoS73x7nEt+2RJ9iKe1MQzV8v74VHUhhUPSr3Lye91ZDtvB6H59Oi2kVGtF2
         ss7omJbgEM/d9bcv9LgYRMWw/2R/uU7H0jd9FUpwRDBp69uiFSNfjMDC4jNDCECFtnQs
         NLj69m1regDUkKhGD0n/7yMd3He1hRoja43H1hlupapqueE6fb3A/z7iVH4dvHvi99RC
         AhY275dcwpm/BzJYYwf9fA5kcK74xZYVefEGkKDpFV5fogzieMDjxPVFD976R4y0/7xj
         UHnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id s126si369505ooa.0.2021.01.21.23.22.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 23:22:38 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: DVOlaC2y/tRYMLTcHoWeTEaTxvZy09ANGWgzsAYcfIsxcELdCPqh9lgNJ+yeTrZvw7PgsRz3SW
 NBaxI0ScrLUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="179488740"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; 
   d="scan'208";a="179488740"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 23:22:35 -0800
IronPort-SDR: ErB1AWbj+DyAwa//ZXhe9li1HwS5CCKgY2kPqzlmhmgKRbDH5UvAvc2NUN3+mBmACk2IFCzy+l
 AsGEVr/obvUQ==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; 
   d="scan'208";a="427876246"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 23:22:34 -0800
Subject: Re: torture: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <i@maskray.me>,
 clang-built-linux <clang-built-linux@googlegroups.com>, lkp <lkp@intel.com>
References: <2b2a556c-5050-abe4-32f6-72621624bd8f@intel.com>
 <CAKwvOdk_yB9esvxyuYQ9zdraiK41fm5ncbdzw4GvLnX8FXbShQ@mail.gmail.com>
 <CAKwvOdn+TW8icmE7D_4OXPh492c908hTa7mA5MVZB1uRgg8btA@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <41c18ad2-e824-28a5-2a7b-cbcf33a9d8de@intel.com>
Date: Fri, 22 Jan 2021 15:21:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdn+TW8icmE7D_4OXPh492c908hTa7mA5MVZB1uRgg8btA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Hi Nick,

The problem was found by the CI but bisected manually.

Best Regards,
Rong Chen

On 1/21/21 4:51 AM, Nick Desaulniers wrote:
> Oh, this is a nice service! Is this new? (bisection of LLVM itself)
>
> On Wed, Jan 20, 2021 at 12:49 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>> https://github.com/ClangBuiltLinux/linux/issues/1250
>>
>> On Fri, Dec 18, 2020 at 1:47 AM Chen, Rong A <rong.a.chen@intel.com> wrote:
>>> 0day found a regression on commit
>>> a084c0388e2a59b9556f2de0083333232da3f1d6 which causes the below issue:
>>>
>>>
>>> user  :notice: [   90.913529] 2020-12-17 22:53:55 modprobe locktorture
>>>
>>> kern  :warn  : [   90.925547] torture: Unknown symbol
>>> _GLOBAL_OFFSET_TABLE_ (err -2)
>>> user  :err   : [   90.980297] modprobe: ERROR: could not insert
>>> 'locktorture': Unknown symbol in module, or unknown parameter (see dmesg)
>>>
>>>
>>>
>>> commit a084c0388e2a59b9556f2de0083333232da3f1d6
>>> Author: Fangrui Song <i@maskray.me>
>>> Date:   Sat Dec 5 14:54:37 2020 -0800
>>>
>>>       [TargetMachine] Don't imply dso_local on function declarations in
>>> Reloc::Static model for ELF/wasm
>>>
>>>       clang/lib/CodeGen/CodeGenModule sets dso_local on applicable
>>> function declarations,
>>>       we don't need to duplicate the work in
>>> TargetMachine:shouldAssumeDSOLocal.
>>>       (Actually the long-term goal (started by r324535) is to drop
>>> TargetMachine::shouldAssumeDSOLocal.)
>>>
>>>       By not implying dso_local, we will respect
>>> dso_local/dso_preemptable specifiers
>>>       set by the frontend. This allows the proposed
>>> -fno-direct-access-external-data
>>>       option to work with -fno-pic and prevent a canonical PLT entry
>>> (SHN_UNDEF with non-zero st_value)
>>>       when taking the address of a function symbol.
>>>
>>>       This patch should be NFC in terms of the Clang emitted assembly
>>> because the case
>>>       we don't set dso_local is a case Clang sets dso_local. However,
>>> some tests don't
>>>       set dso_local on some function declarations and expose some
>>> differences. Most
>>>       tests have been fixed to be more robust in the previous commit.
>>>
>>> :040000 040000 930703e51e21ae9aea20ad64530d74ea05ea8f42
>>> 01c6ecbff5899804cdd30358c09dd36119859235 M      llvm
>>>
>>>
>>>
>>> git bisect start
>>> # bad: [eea67baf8706d82268d26e908cf5415c5af114ff] [llvm-profgen][NFC]
>>> Fix test failure by making unwinder's output deterministic
>>> git bisect bad eea67baf8706d82268d26e908cf5415c5af114ff
>>> # good: [175ebad958a0ebaf6c56c20ab30b9d4347742c29] DebugInfo: remove
>>> unnecessary mtriple from test/DebugInfo/X86/abstract_origin.ll
>>> git bisect good 175ebad958a0ebaf6c56c20ab30b9d4347742c29
>>> # good: [c4a04059026b98e8c23981f1195a61494a661cdb] Add `Operation*
>>> OpState::operator->()` to provide more convenient access to members of
>>> Operation.
>>> git bisect good c4a04059026b98e8c23981f1195a61494a661cdb
>>> # good: [ad923edfc1ce0c0b60e8270954c8d098aab3c3f8] [RISCV] Add support
>>> for printing pcrel immediates as absolute addresses in llvm-objdump
>>> git bisect good ad923edfc1ce0c0b60e8270954c8d098aab3c3f8
>>> # bad: [9fe1809f8cac141fdb5cf7e6e05ef1ea4818343c] [X86] Delete 3 unused
>>> declarations
>>> git bisect bad 9fe1809f8cac141fdb5cf7e6e05ef1ea4818343c
>>> # good: [8925d2347432b69d7e4b721a4ced85df0ad782b1] [BasicAA] Add recphi
>>> tests with nested loops (NFC)
>>> git bisect good 8925d2347432b69d7e4b721a4ced85df0ad782b1
>>> # bad: [ee607ed5c36efd8e0536ddbeab1f2025b0e5f045] [debugserver] Call
>>> posix_spawnattr_setarchpref_np throught the fn ptr.
>>> git bisect bad ee607ed5c36efd8e0536ddbeab1f2025b0e5f045
>>> # good: [68edf39ededf97a12602676f9cd537ed689151f0] [TargetMachine]
>>> Simplify shouldAssumeDSOLocal by processing ExternalSymbolSDNode early
>>> git bisect good 68edf39ededf97a12602676f9cd537ed689151f0
>>> # bad: [a084c0388e2a59b9556f2de0083333232da3f1d6] [TargetMachine] Don't
>>> imply dso_local on function declarations in Reloc::Static model for ELF/wasm
>>> git bisect bad a084c0388e2a59b9556f2de0083333232da3f1d6
>>> # good: [37f0c8df47d84ba311fc9a2c1884935ba8961e84] [X86] Emit @PLT for
>>> x86-64 and keep unadorned symbols for x86-32
>>> git bisect good 37f0c8df47d84ba311fc9a2c1884935ba8961e84
>>> # good: [bfda69416c6d0a76b40644b1b0cbc1cbca254a61] [BasicAA] Fix a bug
>>> with relational reasoning across iterations
>>> git bisect good bfda69416c6d0a76b40644b1b0cbc1cbca254a61
>>> # good: [6b6c3aaeacfdc4a482de4af41719b0a4b50aeadf] [test] Add explicit
>>> dso_local to function declarations in static relocation model tests
>>> git bisect good 6b6c3aaeacfdc4a482de4af41719b0a4b50aeadf
>>> # first bad commit: [a084c0388e2a59b9556f2de0083333232da3f1d6]
>>> [TargetMachine] Don't imply dso_local on function declarations in
>>> Reloc::Static model for ELF/wasm
>>>
>>> Best Regards,
>>> Rong Chen
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2b2a556c-5050-abe4-32f6-72621624bd8f%40intel.com.
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/41c18ad2-e824-28a5-2a7b-cbcf33a9d8de%40intel.com.
