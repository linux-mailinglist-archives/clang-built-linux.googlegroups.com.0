Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGUP4PUQKGQENJ7QJAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id A94B474090
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 23:03:23 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id d12sf18664284oic.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 14:03:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564002202; cv=pass;
        d=google.com; s=arc-20160816;
        b=jHLOH8J8F/Tfxfv+j5OUiVeiMh+dpKTzSKwxZ1/12MDlVC76citK7tKI/4TICtO1mW
         NgroFDl3ONzpjS5yeX5c8dhG4w6wG1v9KVSUg/71htEiMn526qUrJyQ8AExSwWFMX3/P
         C8KZBM6/HscDgStqxQOf22XGVhF5CnJaFYdPV8IMTRhx99wFK2TqWVyVU2c4o1UDXpIR
         z8gjLMhACpxJiVRxZFz4S2RcAgaOqDD7IM+erg31B/VJaczBjEvK3BZzrllczfX8pkvM
         0VbiX8Z/8xI9l482XDRGPRbLxgRoJeRuV/g1GLUVEc8VmAilltAVySOlpJQSZ4O2yUtO
         yVTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:references:in-reply-to
         :subject:cc:cc:cc:to:to:to:from:date:mime-version:sender
         :dkim-signature;
        bh=uAjAiVPlJfa8U0BKGXWjnaX+UUw8VpCqhL6uAtYzpRE=;
        b=kXCtVlv+P7kbccGkj+eTQO6RJLBCV9rkYh7BYmLcmL8QceXrP3jYx6mhBKdsvGElm6
         GQiJ1vhxF7N+6D7qtbkF6Ow89nlIgp/Aq2Z4imHT7vQ7PwmFeuaXn939nGfodQmFGMOU
         Jxv78vQSrk3smb3E3g/mcMgPKJORUn95nYDTS5utWJ2rmJeb1mJIgxN434+euk0HU1E6
         aRYggHS5ADCzWm7sFAliqXejBKY2pwqKMQrHDC0byBSriz+7lGJWtUi3mkBtlJSj400L
         Y37WFeEahMq8rXAlRNSW5cEwbxwMJ7m3zzhVvd0rgzTyH3uu1gFoZhyMIE9dUn6HRi/6
         2wwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=A+eFPeCW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:to:to:cc:cc:cc:subject:in-reply-to
         :references:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uAjAiVPlJfa8U0BKGXWjnaX+UUw8VpCqhL6uAtYzpRE=;
        b=GbLvr3FICnc29v3dpXBUoV0nQGLiLrpvgySCYRneJYMjV34aFkzSkAj+o5KcMaCUH6
         HtI24f3kvnvAn9sTrQlSyE3Kmt+vRcM6iu5mf6DYJWLAUuSeBnz/FPv6EI8hhd9WQk8a
         vdpEPgQsO3fFcN2nRXhjkAQBVtKE8FFRslsh98d5zqnOpDgEkhJVvrzOFzNoQjzDcPaP
         jGirSHBsr1WcVLkzloBiDWby9BWxAWxUL12adhg/i1ezCcqDhjpJFGLq08f43AyeW5cl
         0lCCSa9s0Xe/5/KrBUF/nF4zVFyikT4Tuov9u/El+GT6WLUvvBQVwBiwhc7fVzo2IV9k
         qC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:to:to:cc:cc:cc
         :subject:in-reply-to:references:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uAjAiVPlJfa8U0BKGXWjnaX+UUw8VpCqhL6uAtYzpRE=;
        b=lXhADDUC5vViSKzLk/P2wy1UOMh0GLXhjKhII11Ch68u8gRgqlxIggreJ6CuWRLdT1
         WkboxDQ8drFV/iLdjm4FGPaUTgtdiBwnxQUO86qU1iYJwdCE2W+Lpl/uZJvjQ4qF0sC5
         zrfJUwYMsceNTuOvHyULoeUmoMKXfob5spaNprcaRG+dPEw0Eoqbv/Is8qGGReBSuxGj
         Rar3e7D3hWBxh1nz4L5z91VcMDy3t3y7D4VjaTl22op7jODQtAN+m3eE1PU3+cE+PmCd
         LnqhKlwIcoUgoHMKpgbb2ij8vhwtHWLGCSSPQIu1BRaSU3sWWJTmXbTyUhVTbAtloCvd
         mG9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlff6ed8B3SbSvxte1OubXaC19vQZcBIA80nHtjnJFJEqSj9Yf
	Xju39Xbd9YgKbGWqBwkH2vI=
X-Google-Smtp-Source: APXvYqwFiH6RfN9h6IuEs/DC+rKS7IWKTCoauZLAxoZiOqNnrNZCCazbpJ+aIRdaJWeq91q+2tling==
X-Received: by 2002:a9d:5c11:: with SMTP id o17mr36623872otk.107.1564002202245;
        Wed, 24 Jul 2019 14:03:22 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2f43:: with SMTP id h61ls9119663otb.8.gmail; Wed, 24 Jul
 2019 14:03:21 -0700 (PDT)
X-Received: by 2002:a9d:2969:: with SMTP id d96mr63796017otb.85.1564002201927;
        Wed, 24 Jul 2019 14:03:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564002201; cv=none;
        d=google.com; s=arc-20160816;
        b=joD4vCMwcFspForkO9bcrpNl0be8cH+LouZpU9k6cy6QEBRz52XYZSvG+90JAqnPML
         vzhC0jXpWF/Gd3qZnSAMAejsHgb2VA9uGCPqDtQQBlechUlnyDeg4mFaos/6+ISF0fA2
         hFD9HV7v6yHELe8l53JiNriLx/q7fC2ddNENlrc165LEtlVVZcUQXAFGoQ2jrOTSeUvs
         MgZq7uQb0DqskUAautp4+tyJUKCI6odWiWJ7MeYedT+4hDN/7VdmrcuSJpShNjvZ/Dxx
         Jjy2bUaLTfeA0Kizz5KWyPGb2smawvhrHvNV4unZH1sJfbdbOpZH/hvKghBhQow6AsG6
         W0bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:references:in-reply-to:subject:cc:cc:cc:to:to:to:from
         :date:dkim-signature;
        bh=Iy+NrsyYaSZF9rh4ct+GdN0atjLLPK5ozfHfoS7b7dM=;
        b=wKwhR0Spsb8DBE5TQDSw4/OBRMeNqdpczQpu0E9kogl4Zj6oGBjsaiC+R7QIBcs8EW
         Os3N7f6wg+6PkYslQuv2ie8FgB0BzSnt9a12y9BC3LyVQHMY3jufFzWkSjbRBssqHvt5
         KBEYw6EEB0CBfR74RQMuT3wm6Mvnut+MLQPYAhqmkkaHDFoEszZE20gvk2+Zln+JaDzB
         qWMQuQb0bAfEvsmAEpX7eTTpQqB47InboFuZrtvKhuCXKf7uY1ueiKD92wZeC2HcDdM9
         CKFV0iDOptusvcATVkZSts9jiZlwviG6TLq7quxJdqb8PIzFgZaL7Su+Yxi3Z9Re577X
         WJCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=A+eFPeCW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q3si131700ota.4.2019.07.24.14.03.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 14:03:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [23.100.24.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C8A9F21873;
	Wed, 24 Jul 2019 21:03:20 +0000 (UTC)
Date: Wed, 24 Jul 2019 21:03:19 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com,
Cc: stable@vger.kernel.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH v3 1/2] x86/purgatory: do not use __builtin_memcpy and __builtin_memset
In-Reply-To: <20190723212418.36379-1-ndesaulniers@google.com>
References: <20190723212418.36379-1-ndesaulniers@google.com>
Message-Id: <20190724210320.C8A9F21873@mail.kernel.org>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=A+eFPeCW;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 8fc5b4d4121c purgatory: core purgatory functionality.

The bot has tested the following trees: v5.2.2, v5.1.19, v4.19.60, v4.14.134, v4.9.186, v4.4.186.

v5.2.2: Build OK!
v5.1.19: Failed to apply! Possible dependencies:
    40b0b3f8fb2d ("treewide: Replace GPLv2 boilerplate/reference with SPDX - rule 230")

v4.19.60: Failed to apply! Possible dependencies:
    40b0b3f8fb2d ("treewide: Replace GPLv2 boilerplate/reference with SPDX - rule 230")

v4.14.134: Failed to apply! Possible dependencies:
    40b0b3f8fb2d ("treewide: Replace GPLv2 boilerplate/reference with SPDX - rule 230")
    67704c2a0586 ("netfilter: nf_conntrack_h323: Remove typedef struct")
    bc7d811ace4a ("netfilter: nf_ct_h323: Convert CHECK_BOUND macro to function")
    ca9b01473a47 ("netfilter: nf_conntrack_h323: Remove unwanted comments.")
    df6f2801f511 ("kernel/kexec_file.c: move purgatories sha256 to common code")
    ebc4768ac497 ("add w1_ds28e17 driver for the DS28E17 Onewire to I2C master bridge")
    fa8cbda88db1 ("x86/purgatory: add missing FORCE to Makefile target")

v4.9.186: Failed to apply! Possible dependencies:
    0cbaa44841db ("lib: Add crc4 module")
    0d97631392c2 ("powerpc: Add purgatory for kexec_file_load() implementation.")
    2c927c0c73fd ("w1: Fix slave count on 1-Wire bus (resend)")
    40b0b3f8fb2d ("treewide: Replace GPLv2 boilerplate/reference with SPDX - rule 230")
    40c50c1fecdf ("kexec, x86/purgatory: Unbreak it and clean it up")
    5fb7f87408f1 ("lib: add module support to crc32 tests")
    67704c2a0586 ("netfilter: nf_conntrack_h323: Remove typedef struct")
    692f66f26a4c ("crash: move crashkernel parsing and vmcore related code under CONFIG_CRASH_CORE")
    72042a8c7b01 ("x86/purgatory: Make functions and variables static")
    b6e92aa81038 ("kexec: Switch to __pa_symbol")
    bc7d811ace4a ("netfilter: nf_ct_h323: Convert CHECK_BOUND macro to function")
    ca9b01473a47 ("netfilter: nf_conntrack_h323: Remove unwanted comments.")
    d53e3fc3906c ("netfilter: use nf_conntrack_helpers_register when possible")
    df6f2801f511 ("kernel/kexec_file.c: move purgatories sha256 to common code")
    e3af95e60738 ("w1: add support for DS2438 Smart Battery Monitor")
    e98fe5127b9c ("x86/purgatory: Fix sparse warning, symbol not declared")
    ebc4768ac497 ("add w1_ds28e17 driver for the DS28E17 Onewire to I2C master bridge")
    f6887531c0c6 ("drivers: w1: Add 1w slave driver for DS28E05 EEPROM")
    fa8cbda88db1 ("x86/purgatory: add missing FORCE to Makefile target")

v4.4.186: Failed to apply! Possible dependencies:
    0139aa7b7fa1 ("mm: rename _count, field of the struct page, to _refcount")
    073bb189a41d ("net/mlx5: Introducing E-Switch and l2 table")
    0b10710603b2 ("net/mlx5_core: Modify enable/disable hca functions")
    0d97631392c2 ("powerpc: Add purgatory for kexec_file_load() implementation.")
    26a8145390b3 ("net/mlx5_core: Introduce flow steering firmware commands")
    2c927c0c73fd ("w1: Fix slave count on 1-Wire bus (resend)")
    2f48af128d9a ("net/mlx5e: Use function pointers for RX data path handling")
    40b0b3f8fb2d ("treewide: Replace GPLv2 boilerplate/reference with SPDX - rule 230")
    40c50c1fecdf ("kexec, x86/purgatory: Unbreak it and clean it up")
    43546d8669d6 ("kexec: allow architectures to override boot mapping")
    461017cb006a ("net/mlx5e: Support RX multi-packet WQE (Striding RQ)")
    4caf9615247a ("kexec: return error number directly")
    692f66f26a4c ("crash: move crashkernel parsing and vmcore related code under CONFIG_CRASH_CORE")
    72042a8c7b01 ("x86/purgatory: Make functions and variables static")
    86d722ad2c3b ("net/mlx5: Use flow steering infrastructure for mlx5_en")
    978e30c9b461 ("kexec: move some memembers and definitions within the scope of CONFIG_KEXEC_FILE")
    a46e63764eb6 ("thp: update documentation")
    b6e92aa81038 ("kexec: Switch to __pa_symbol")
    bc77b240b3c5 ("net/mlx5e: Add fragmented memory support for RX multi packet WQE")
    dae28018f566 ("kdump: arrange for paddr_vmcoreinfo_note() to return phys_addr_t")
    de8575e01468 ("net/mlx5_core: Add flow steering base data structures")
    df6f2801f511 ("kernel/kexec_file.c: move purgatories sha256 to common code")
    e3af95e60738 ("w1: add support for DS2438 Smart Battery Monitor")
    e98fe5127b9c ("x86/purgatory: Fix sparse warning, symbol not declared")
    ebc4768ac497 ("add w1_ds28e17 driver for the DS28E17 Onewire to I2C master bridge")
    f6887531c0c6 ("drivers: w1: Add 1w slave driver for DS28E05 EEPROM")
    fa8cbda88db1 ("x86/purgatory: add missing FORCE to Makefile target")
    fc50db98ff87 ("net/mlx5_core: Add base sriov support")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724210320.C8A9F21873%40mail.kernel.org.
