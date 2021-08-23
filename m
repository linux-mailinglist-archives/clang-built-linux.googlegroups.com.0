Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBYNPR6EQMGQE3OQEMTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA63F4F44
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:16:19 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id co4-20020a17090afe8400b00179436a9ecbsf293999pjb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:16:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738977; cv=pass;
        d=google.com; s=arc-20160816;
        b=OMW56/k6CimowPqg8xAC+LJP2ZuG4xeXe+mzW7wvqrhY1r4fjfW19hkxExAE5sKjbP
         1mLP38oJ2Z2znMLwHgAgPmCdFrCC5SyGctlYYEsfA3p9penCHNfGteeGRw5yrO2glOAM
         nSrFCh65XWbfQ4PtRHqLd6qgdX133g12/+K2t7IuPPjFOEdxoY2lB5mm45E0m/xx4KUC
         X3hiRK7/+7w+GqDMivIxcCHsXJH1REydGJvwNZ9ZToBZSvhkuGSeQa8+2eXNKLxBPI3z
         jkVp/VfO7XFraGc5rZA1MCXnBXX0CeyuR8ZAUm1uyVnC0PmWlRT6Pcau29Kt3lYII8nL
         V8yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Eu6bSGkK8AG5q8EktTr/euhDVn+a5qTbgw+0EHuElmU=;
        b=gNhP7u40iemRkTwZ2y1sGuLLJjNjp/j4GQEXdjBxNeeQQKrXhKNEMKSoUCCXHqrVm3
         jrIP4F1fLleG/Ka3v/+5RbaqajBbCC5wlAPAd8EWXJxbG7r8VaBIvi6lI9ymmn0Rw83K
         +6ggvEwBOz1B+Xf+94Jd4SLRmsZqQ86DM2ODsrHGn7Cpe9AGDXGPoNTr8CiP9d7ti5hO
         8s87YonGI6wyGwhg6jP01E85QtCKa+hS+Ho1P1GFKAPMmEzlbXSiUPHy9CjC6bAQ0KG/
         yypFO2GwFQSHaDmjrYc/6IhYIzk9J6BBfz9nh4G6CWRtwAaohlDyAejouzOr0gcTu4+H
         fusg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=A7hs2Qyt;
       spf=pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Eu6bSGkK8AG5q8EktTr/euhDVn+a5qTbgw+0EHuElmU=;
        b=Q5cSXDgUpi86lcrJzazs7wpykm2AzeiNiqhxxdHM+bPc7rZ3Ucx/th1Yxn8kGf0vJp
         jVgN3XAXOLPSwVgf8JLHAuZ9H5qgduAyPH4/jWuxRZ7Js1RLzb4SUuMB1sR0TrhqXad/
         U0Yt4pb3aQIfRsY3zScHFxsIYPqJx/UGjp5Pfqp6LCODdygz+taVoGfP4MqISXHJ1SkI
         ibTGGOKFkeQk7MfWKGou9muUc3KM4oM3eXAfksxGZBLa07TuHxgBtsK9CJmI/tHtl5me
         u6OKSQstqCC/gKalxtaYK5YxVr+S8uqJVtycYv9nz7chQHfT7/Mvt4kTyf0qA9cpbelW
         N11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Eu6bSGkK8AG5q8EktTr/euhDVn+a5qTbgw+0EHuElmU=;
        b=ZX/1pYPi+YsyAOzQ84/MFAIFwHwy4RdTO8IFO03HKrts+Fw+OTCmUMF5AkuLqjUiWV
         2d+/aWRKlq1wfMb6afsoGgiVOdJQhzze/k4K807qUgqiJeejVeJWOdb2uxQ+1EhgnRuh
         w2BGn/K6EQycy/mwJjkzRsSFIo+S/kYaFcBP7/lwiEL12J8FxpYSngrSuHbOLCsGHs3N
         9qyyObxIF72/8Iwhh+PGrlc4rfj8llHMTHtmayhvntV+bd60y23bOze7NBpSQeG4Iw/9
         +Bg12PV6BwIyAd7S+iKrnJSsP5OhQafLG2QBYGXhuT1wt7M6KlLs5/wIjn2rIM7s8VBE
         VYug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IZOOjo7Mpx3C4ZqyXjP8EtCUV+XDtpQ3sPQxiy0cbVM8kPjiK
	ZqdRRHdErdaWir/s7dmVJKE=
X-Google-Smtp-Source: ABdhPJy3u9Lq/V91Y4+gNkXx8dKwPnBaG70xNIKatWlwsOPM29b4NHTqFaYr2bVN9WDW2dYsDG/d3Q==
X-Received: by 2002:a17:90a:e416:: with SMTP id hv22mr4157019pjb.232.1629738977805;
        Mon, 23 Aug 2021 10:16:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2345:: with SMTP id c5ls8850591plh.8.gmail; Mon, 23
 Aug 2021 10:16:17 -0700 (PDT)
X-Received: by 2002:a17:90a:b284:: with SMTP id c4mr21488117pjr.213.1629738977204;
        Mon, 23 Aug 2021 10:16:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738977; cv=none;
        d=google.com; s=arc-20160816;
        b=wgFXz82JmnZPzijhJKmevbPAfpVH8jbRZppwaqrpXhvN3cVO+r9ZSp2clYNec2O0g4
         oUGkD/6UAp97VJIPAvj7Um/p3zbJleiwuwgvNdxGn7nFBHgk08liE8y/ABOUmUgJrQXw
         GR5ZXFiSfjHE4cC5j1NY7miXsvl+eqCyJD7mmbFZgMRAm3LARD0UQPnA+YN5r7/LAMfx
         5N/rA7eFReyxwH9BycKPPzgLj2yv01Fo4I9CQpGeq+i7icdsfSgSYFTNJvfm+HCEoVnx
         SIExwWQkWYCfRDATKO/zWUDPN12vBVNNWDomFfACynq7ZecCrs+UK90GzF1OmKGQSRW4
         7Mcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=xZFFKBLXvmTDOWmqTIb0MtmNKyCMkrWY/MlBcYf3Qag=;
        b=GoTk5as8Y7/whFhLSnOBDoZbpewDNROTvCn81gXhcTmD52bbFgrte0Urfu+mfox++8
         EcOJyIyzSwESH/BRpVU7st+qb8FwjvPFF/TD1onyN6ZXKjNBDcio8YXfgXl2gaRSGEka
         wgn9dh8VZI1lB0BIltHG30FZiEsoFEBNk8cPIf7uz37lBPD5Ahsqry3LwnYlgtpX4YiS
         wCMvyu8vi5xIrYVcXwYFJLN7ASH0WLZ+Adv2z41beeJ+zcBYT5ye4x8stGvdVDiLRZLG
         utGdPmfSy6STAEPyZ3cpedPKiwl2ed1FZoSsCj2Catm78sKzfDnHlD8xuYc6ZxtFCu1Y
         Mkxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=A7hs2Qyt;
       spf=pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id c23si816380pls.5.2021.08.23.10.16.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-eX77AUwpOJ2ZpUV-n6F92A-1; Mon, 23 Aug 2021 13:16:15 -0400
X-MC-Unique: eX77AUwpOJ2ZpUV-n6F92A-1
Received: by mail-qv1-f72.google.com with SMTP id jq13-20020ad45fcd000000b0036c273baa23so4669157qvb.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:16:14 -0700 (PDT)
X-Received: by 2002:ae9:e915:: with SMTP id x21mr22225270qkf.183.1629738973514;
        Mon, 23 Aug 2021 10:16:13 -0700 (PDT)
X-Received: by 2002:ae9:e915:: with SMTP id x21mr22225239qkf.183.1629738973302;
        Mon, 23 Aug 2021 10:16:13 -0700 (PDT)
Received: from tstellar.remote.csb (97-120-182-34.ptld.qwest.net. [97.120.182.34])
        by smtp.gmail.com with ESMTPSA id i67sm8999978qkd.90.2021.08.23.10.16.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:16:12 -0700 (PDT)
Subject: Re: [PATCH v2 00/14] x86: Add support for Clang CFI
To: Sami Tolvanen <samitolvanen@google.com>, x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210823171318.2801096-1-samitolvanen@google.com>
From: Tom Stellard <tstellar@redhat.com>
Message-ID: <1706ee8e-c21c-f867-c0be-24814a92b853@redhat.com>
Date: Mon, 23 Aug 2021 10:16:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=A7hs2Qyt;
       spf=pass (google.com: domain of tstellar@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 8/23/21 10:13 AM, 'Sami Tolvanen' via Clang Built Linux wrote:
> This series adds support for Clang's Control-Flow Integrity (CFI)
> checking to x86_64. With CFI, the compiler injects a runtime
> check before each indirect function call to ensure the target is
> a valid function with the correct static type. This restricts
> possible call targets and makes it more difficult for an attacker
> to exploit bugs that allow the modification of stored function
> pointers. For more details, see:
> 
>    https://clang.llvm.org/docs/ControlFlowIntegrity.html
> 
> Version 2 depends on Clang >=14, where we fixed the issue with
> referencing static functions from inline assembly. Based on the
> feedback for v1, this version also changes the declaration of
> functions that are not callable from C to use an opaque type,
> which stops the compiler from replacing references to them. This
> avoids the need to sprinkle function_nocfi() macros in the kernel
> code.

How invasive are the changes in clang 14 necessary to make CFI work?
Would it be possible to backport them to LLVM 13?

-Tom

> 
> The first two patches contain objtool support for CFI, the
> remaining patches change function declarations to use opaque
> types, fix type mismatch issues that confuse the compiler, and
> disable CFI where it can't be used.
> 
> You can also pull this series from
> 
>    https://github.com/samitolvanen/linux.git x86-cfi-v2
> 
> ---
> Changes in v2:
> - Dropped the first objtool patch as the warnings were fixed in
>    separate patches.
> 
> - Changed fix_cfi_relocs() in objtool to not rely on jump table
>    symbols, and to return an error if it can't find a relocation.
> 
> - Fixed a build issue with ASM_STACK_FRAME_NON_STANDARD().
> 
> - Dropped workarounds for inline assembly references to
>    address-taken static functions with CFI as this was fixed in
>    the compiler.
> 
> - Changed the C declarations of non-callable functions to use
>    opaque types and dropped the function_nocfi() patches.
> 
> - Changed ARCH_SUPPORTS_CFI_CLANG to depend on Clang >=14 for
>    the compiler fixes.
> 
> Kees Cook (2):
>    x86/extable: Do not mark exception callback as CFI
>    x86, relocs: Ignore __typeid__ relocations
> 
> Sami Tolvanen (12):
>    objtool: Add CONFIG_CFI_CLANG support
>    objtool: Add ASM_STACK_FRAME_NON_STANDARD
>    linkage: Add DECLARE_ASM_FUNC_SYMBOL
>    ftrace: Use an opaque type for functions not callable from C
>    lkdtm: Disable UNSET_SMEP with CFI
>    lkdtm: Use an opaque type for lkdtm_rodata_do_nothing
>    x86: Use an opaque type for functions not callable from C
>    x86/purgatory: Disable CFI
>    x86, module: Ignore __typeid__ relocations
>    x86, cpu: Use LTO for cpu.c with CFI
>    x86, kprobes: Fix optprobe_template_func type mismatch
>    x86, build: Allow CONFIG_CFI_CLANG to be selected
> 
>   arch/x86/Kconfig                      |  1 +
>   arch/x86/include/asm/ftrace.h         |  2 +-
>   arch/x86/include/asm/idtentry.h       | 10 +++---
>   arch/x86/include/asm/page_64.h        |  7 ++--
>   arch/x86/include/asm/paravirt_types.h |  3 +-
>   arch/x86/include/asm/processor.h      |  2 +-
>   arch/x86/include/asm/proto.h          | 25 ++++++-------
>   arch/x86/include/asm/uaccess_64.h     |  9 ++---
>   arch/x86/kernel/alternative.c         |  2 +-
>   arch/x86/kernel/ftrace.c              |  2 +-
>   arch/x86/kernel/kprobes/opt.c         |  4 +--
>   arch/x86/kernel/module.c              |  4 +++
>   arch/x86/kernel/paravirt.c            |  4 +--
>   arch/x86/kvm/emulate.c                |  4 +--
>   arch/x86/kvm/kvm_emulate.h            |  9 ++---
>   arch/x86/mm/extable.c                 |  1 +
>   arch/x86/power/Makefile               |  2 ++
>   arch/x86/purgatory/Makefile           |  2 +-
>   arch/x86/tools/relocs.c               |  7 ++++
>   arch/x86/xen/enlighten_pv.c           |  6 ++--
>   arch/x86/xen/xen-ops.h                | 10 +++---
>   drivers/misc/lkdtm/bugs.c             |  2 +-
>   drivers/misc/lkdtm/lkdtm.h            |  2 +-
>   drivers/misc/lkdtm/perms.c            |  2 +-
>   drivers/misc/lkdtm/rodata.c           |  2 +-
>   include/linux/ftrace.h                |  7 ++--
>   include/linux/linkage.h               | 13 +++++++
>   include/linux/objtool.h               |  6 ++++
>   tools/include/linux/objtool.h         |  6 ++++
>   tools/objtool/arch/x86/decode.c       | 16 +++++++++
>   tools/objtool/elf.c                   | 51 +++++++++++++++++++++++++++
>   tools/objtool/include/objtool/arch.h  |  3 ++
>   tools/objtool/include/objtool/elf.h   |  2 +-
>   33 files changed, 166 insertions(+), 62 deletions(-)
> 
> 
> base-commit: d5ae8d7f85b7f6f6e60f1af8ff4be52b0926fde1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1706ee8e-c21c-f867-c0be-24814a92b853%40redhat.com.
