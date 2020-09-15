Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEHZQP5QKGQE2ETT6CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D86B26AADE
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 19:40:34 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id p11sf183037pjv.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 10:40:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600191633; cv=pass;
        d=google.com; s=arc-20160816;
        b=j5QrWWzvfOLB07+Rznn8zemk7ckpuRimoJWY9JaMd4ualMZGjQoVMmFyV3ioXAbeVI
         +MlErb/dZ6CJcNyGfw76KWtO7/1UIlvVlO3Zq80wEm7OAc1WriSCUSWnGEQ76LYHfICm
         3fICeil6b8PXCTRhID80jZZDtqpp9spgu5+CgsTFSLQ2fw2jcrL0jgIDG+I4ZmHLg40P
         8NgwlLrIQPfffisNupA+6Kccurgy6SnWgjrJTCFfC9p/g8J3hiD6kep7tzvGGqemQ+VE
         fsc//+2R7QalBSowSjuxdAg2MdXImILPgvi54zi/rEqUo174L02DZ1q2BDc1M16/nHkz
         IwTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1n5R5P0B41Bt3bRX3fzPuahzoa1+SDNr4B7Y4Wa+Wug=;
        b=lSHVo2YQQrp8O25Arlkw+UnEd0pYQA64jOOrEPULYENsjYgPCiqADt7/p5iKDmJrQH
         apyHsIApIS6NUXZ0W5S8oGLE9iN/qF0Q+4pZarrioyRUo1vuhfRUlqIkRCb5CjSkJvY5
         HvLuLHO38Q78+xHSc7Zjvo/BrAwcSd6AgoDDa+5q7/d10oCAmfJQFNWWgUsTyk41/6Uh
         mK7RC2RaNmR9mL9YZALnzmVs5q8Ra3DrECar5aEOTvkamTZGl4yYbx7CIWBXP7SeDyil
         bZS+AGqjIM8lYwwM9YtCEzlPczKpm+1CuvT8zr+NkAY3kjhTDxJ7y6QdNdsQ2MBcJKFb
         Tugg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MOD+7WcN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1n5R5P0B41Bt3bRX3fzPuahzoa1+SDNr4B7Y4Wa+Wug=;
        b=kRCRM4TkNbHjuehHkbab8slkFEfuWuBw/e3Gz+6oZXoB2Le0dYkmmMkPMwTrxlwj21
         ajLDHUaB+UcUZOW+MezPBTz2Mi1zbTISp4u69RCFSNv6/UhYLvDoaS7Kb3ZNsLn8qeZY
         eMHXhK/9hssF1wh8sIvvK+7vUUri8JRZgmskgpUAPGpOmm1RPKTJNnYk3H92EhLWpbYd
         jHSszV6uJV/i+zgUMItXoa6xmnPt5scB6X4yHuOpKAImDDcSfn2BArn3JiECr2a+KXID
         xUspRgrlX1m2ZKVrqQA2XpjLiyOAxicYULYkNHQl3n7GM3RjTUdPtsCQhDtj6lug9Bs/
         Ih8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1n5R5P0B41Bt3bRX3fzPuahzoa1+SDNr4B7Y4Wa+Wug=;
        b=reUUT2FNZfYGHkmiE6oIqBsELVpg+6RvcfsavlwgKa/543Tdf1T+TWsjEx1XoFM8Fm
         5cC7ZFnFHMkAd8BjHwz7mXvVk3yckTaI+CVR9qn7VenQP4fhHDiOovKPwh9KxLa17fOY
         wB5j6NeykeqKQ+h+q0hIOCiQ/fbSrroB7U1kPmDbJS+b/eHjCMHqRDPz6XroGATropwE
         KVBl92A5iqUKcDRtqiJWejTzDZsk0jh+1tvW0LbIitnPe0Y43rrCu7T8q6rsKdFBC2JA
         ZVvzlapnaTcLIYd/wYU5dgeXkopwJ8C+RGpXA/AE8AtaZLdI0QQFd+rq2VVzSD1DJ/Gj
         1x+A==
X-Gm-Message-State: AOAM531Rx0cHrlh2IqngAn7ei3hCvquK0l++shq6EMI4xkVhGvF8hFcU
	Me0o8lOVBzJnTQWe9IPqA1g=
X-Google-Smtp-Source: ABdhPJzctapW5a52Zhtyo2hZmISO1Hb+2YSVbNk7UD9sgIg1OKQzVdb+OTXIwRK9iyaooVyg07bhyg==
X-Received: by 2002:a63:1644:: with SMTP id 4mr15675533pgw.232.1600191633127;
        Tue, 15 Sep 2020 10:40:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls5377700pfc.3.gmail; Tue, 15
 Sep 2020 10:40:32 -0700 (PDT)
X-Received: by 2002:a62:6287:0:b029:142:2501:3982 with SMTP id w129-20020a6262870000b029014225013982mr2862771pfb.71.1600191632488;
        Tue, 15 Sep 2020 10:40:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600191632; cv=none;
        d=google.com; s=arc-20160816;
        b=iYlb05kP1FTSpUYtOrfifgQ6gDAu1nKDIuVrCdzNygtE1wR9Y5a1G0rHwJ6ZWr9NAf
         GIbV/b8msKp7wwG/jnkRxgOG8QcvtTAqDpuORbOkElC4uS74GiopsQ8D7mYQL7kli+6f
         m8oNH9vu4Iay/gpEx+1FunvIuRkOR0YW+khx07KxvnQtELMBdCoScVLbhTabu3cQX2C1
         +K9F8Oay4V8EvznwkERNW+hmJekNxvvi49zZfnTkUaxSfaAwPXBjNQXmMz0yMo70gjaN
         o0X8UB2VS/LsaPtUsJIlhKPqQj7mXINTFVYYLNZGsEsIQzHY2XyjdrDGb8+9LG1NI6Rp
         MGNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PPSpjHBCelnP8UAXZSapN435KbhWggIRrKC2Ye8r8Z0=;
        b=rHwYCVAoFjPUuIwQvRoc61QvdXIzIeh7W88zWanj9QGhHWiIDSI6Si9IeSZJJBzLEg
         3vMzjsKqpfvRKx2Nlmw6kYHW9YAcZh2Ue0YTxLSt7S7a6Z2eV731ctjzXjmzOlHDcDOu
         TmKHcA8HHYab/DWV/gWMmme6REBDsklX+AoV+n4z9X+hGWQcfg3mEuC3sZs85Gis/kXI
         4C/fD5RWgAAjqX6i1vy4ekqp5iREI2KhQZCckSYhin4Uk3971i4QzzZu3fqisTzpj9B+
         tvHkaFXZ3zO5r1TeQjGJCOw1mpsEfOn7kUdbKmjbA6is5Ly15eNlZXkkMzFOV5S9hfEb
         +79Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MOD+7WcN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id mj1si24283pjb.3.2020.09.15.10.40.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 10:40:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id u3so156217pjr.3
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 10:40:32 -0700 (PDT)
X-Received: by 2002:a17:902:7295:b029:d1:e3bd:48cc with SMTP id
 d21-20020a1709027295b02900d1e3bd48ccmr4255700pll.10.1600191631819; Tue, 15
 Sep 2020 10:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic>
In-Reply-To: <20200915172152.GR14436@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 10:40:19 -0700
Message-ID: <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Borislav Petkov <bp@alien8.de>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Rong Chen <rong.a.chen@intel.com>, 
	kernel test robot <lkp@intel.com>, "Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	kernel-dynamic-tools <kernel-dynamic-tools@google.com>, Marco Elver <elver@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MOD+7WcN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Tue, Sep 15, 2020 at 10:21 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, Sep 15, 2020 at 12:02:48PM -0500, Josh Poimboeuf wrote:
> > If somebody can share the .o file, I can take a look.
>
> If only I could reproduce...
>
> So I built:
>
> /home/share/src/llvm/tc-build/install/bin/clang-12 --version
> ClangBuiltLinux clang version 12.0.0 (https://github.com/llvm/llvm-project 74a9c6d7e1c49cd0e3a8e8072b8aa03f7a84caff)
> Target: x86_64-unknown-linux-gnu
> Thread model: posix
> InstalledDir: /home/share/src/llvm/tc-build/install/bin
>
> and I don't trigger that warning even with that compiler.
>
> What I do get is a lot of those pairs:
>
> init/calibrate.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> init/calibrate.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> init/version.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> init/version.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> certs/system_keyring.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> certs/system_keyring.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup

+ Kernel-dynamic-tools

> ...
>
> and a link fail at the end.
>
> ld: arch/x86/events/core.o: in function `events_sysfs_show':
> core.c:(.text+0x469b): undefined reference to `stpcpy'
> ld: arch/x86/events/core.o: in function `events_ht_sysfs_show':
> core.c:(.text+0x46f7): undefined reference to `stpcpy'
> ld: drivers/tty/tty_io.o: in function `alloc_tty_struct':
> tty_io.c:(.text+0x2da5): undefined reference to `stpcpy'
> ld: drivers/tty/tty_io.o: in function `tty_register_device_attr':
> tty_io.c:(.text+0x6a09): undefined reference to `stpcpy'
> ld: drivers/tty/tty_io.o: in function `show_cons_active':
> tty_io.c:(.text+0xa819): undefined reference to `stpcpy'
> ld: drivers/scsi/scsi_transport_sas.o:scsi_transport_sas.c:(.text+0x6139): more undefined references to `stpcpy' follow
> make: *** [Makefile:1166: vmlinux] Error 1

b4 am https://lore.kernel.org/lkml/20200914161643.938408-1-ndesaulniers@google.com/
-o | git am

>
>
> I'm thinking clang12 is too unstable to take it seriously...

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkh%3DbZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw%40mail.gmail.com.
