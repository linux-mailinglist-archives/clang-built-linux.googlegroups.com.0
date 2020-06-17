Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBL5NVD3QKGQEFADHGWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EC01FCE21
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 15:12:17 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id o21sf945336ooo.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 06:12:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592399536; cv=pass;
        d=google.com; s=arc-20160816;
        b=cvdtx4Bs6kjx+u84+mpqAaRmyZLE5PNG+OFKAqU+FcQBqO05HK6aVBpncqb9WSNT9i
         dX6XZ2a5BR+s+qUhuQ4LbwqK5S10GwBQDkS2OxBNZLp3upjA0T9r69Ahs7pCfEG25C7s
         ksrKCRmD40OeYdww3nEd2h5gSZKIDuFqR+kkXfPLkz3KGKvJZZ36OVGxJfjTX60654py
         E1dDCDF7zFsWT/u+Ou/O3OlA3gQMqvYYQvf2Ri+wKterGBjNur977zVsWnowcSwe64Er
         +VNe5WdwNS/QiZVukhQijW/jYZ5M9K3g/bfCW34P2cVEph49e0GEP5f7x+G/dB3JaUlC
         GTuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BRQX7ozJAIkE6gMs0WDTMGKJZIPcdu9AdicQjbBgVtw=;
        b=F0NRd/akY7u0vlUcsEXotG1m538HLm3RqMW8X0eN3ljNPGcO5DWUS7jcR2II/o/eY7
         kO834ptK1orp2gU+Ls0kf3XDMPF9R+Ce8wuMb95cXjykO1oPKokk0Ry723FOr/B3svkI
         qSHMG/wA8cG234H23BAvIyXk00sEsgJhIn/9sJOAPvD4oyQWlU4VeycWymCnPY7/1AF6
         wFRHvSKvIQLriYrJ39oCtOj0u1oFNHAFP9M2M+3i1s4N7eRzhqaExkq+vytesmMdhydb
         XZqnp80RABn/0GD2taW6iJDYRZ78sXHcX7ICsE7LpHjg0c6x9aJb5T+nnPpeMVUaYWvM
         rZ9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JYmU4TxR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BRQX7ozJAIkE6gMs0WDTMGKJZIPcdu9AdicQjbBgVtw=;
        b=f+guNteoULI6eeEmiPJhYKl7UmlCXNWrNGXpMYdrnrQvNhcmrDuH+9CIaDBwd2C6uz
         8dT3Pa+BRt3hjYXUpaIn37aL6ijo7e8PYz/JeApED/bzgzER39tIX2+dJBXoMDurU5PH
         PyAUAFx9svF+VG2NoUHLL84fUZBlsDmlDoK1LY8czxSShY90CuziskbQNMsPc7vdjYNe
         /6dXYq8O3ozhVuuWcTJ7adPUZE7holxkwSTc3srL96eb5PDfHq9SqwpsyfYQ6gS/NpnG
         wynylivHFVMj2ZqOtuIT9GvTPOd8bWuDkQLTKGiunLoTnaqrsiRuluCgO6p9sOugvmEH
         vgEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BRQX7ozJAIkE6gMs0WDTMGKJZIPcdu9AdicQjbBgVtw=;
        b=ojYpbE0cL/PDdwTN9wp9A8cJZMREnbU725HkflPGWkYeDGcQoGq2wEt8wJC+VSCyI0
         6vqxljJcTk41SEB9KQkZKkO5sDVlmAzaHTQlb/+YKD/qYUNIktx/sV2PaI0X0xJd0muC
         IDv5p7fzcliUrayGLQHgCeEPC0o99J3lhppyAGHJ7qcGb40/fqro2ZZ9gBYez6Or+nk2
         j0nJKbHLI0181ByiSe3lUeHwn/Kw8uKAhacG9goz6FM6idH0fSJyl9NTo6KfRc/OyNoG
         I/uJhDr1j9cdKPtNVlpqnfsBqs4aM51FOjE9Q9tUhbd8fS/dV5ZWPEXq2QDzk9jHXUK6
         ZDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BRQX7ozJAIkE6gMs0WDTMGKJZIPcdu9AdicQjbBgVtw=;
        b=Q+lruCOmkhm3SRAP8lLTY84R7FfOMpD2TsE1bqfq5Zjmn674WLhnIKo0i3fId+nvn9
         WmX0+0r601M3FbEmD56vY0LAvwPNGc9FCkTDfgU/2+xCnj0lUAaQayc4nHyhzmGRmyku
         gd/+VoDgwDzoyqDKyFgAbDgUYHUvb6uouBcloaQ9SIqRWMlJZV9Ffw5jo8pEdC1ivlEB
         EJRvmlFt+D3CR5H0qZX1Md+k5z3e1rxea+zlySxURRKTAs4Ltpekd2IHdIgm2/GgQjQ8
         e24jtKqp2acwzNA8Yi+QVO+QHsUemWueo5xMYY3xmMoLDtcMqX9uakufl0eOkmLWXaiY
         ihnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531D+vdzC/s8SU2u3fNAh0k1xC+hGsHMvymJISD3Yo9N7dcwj4u4
	CIDTigZKtfdThCOfFYXmKmw=
X-Google-Smtp-Source: ABdhPJx/vRjUMjPHq0uMm53wllIb6vWIo2s3368ZR7KEFIpeE4yrNBOVFSMeKwBTTuHZzOfCDQxESQ==
X-Received: by 2002:a9d:2ae3:: with SMTP id e90mr4672612otb.261.1592399535988;
        Wed, 17 Jun 2020 06:12:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2c46:: with SMTP id f64ls485103otb.2.gmail; Wed, 17 Jun
 2020 06:12:15 -0700 (PDT)
X-Received: by 2002:a05:6830:4008:: with SMTP id h8mr6751818ots.158.1592399535560;
        Wed, 17 Jun 2020 06:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592399535; cv=none;
        d=google.com; s=arc-20160816;
        b=G6UdZE7QnJbExgBx/860JEzcEa5f2VegV9tzfj+DPcvxNsKO1w96AkUYZWhvbIvDSa
         Ct52xCiS6vxy+eMjpl1OyAls0aFiFzKmZl3gK0CmD2smOzMoYLe6a985ngQFkBkG4HId
         WuqsPRy19lWul0zrGZ4JQbAKBhGDC61Jv5UCQ698Y/zkL1G0taTUghETpRNNxJKeHWal
         mpfxtura8ucecmc1ZEpA3slt1woRPwCwWfoQfkJ0IH5iG5WnfkBr/hb6zLwDHRO69/cB
         ThJs5ZVLswqvIio5cD6m86X4gOlVU6ei5+8JSmil3dlCNFhj0L1GXtTxwnee1OEDGA3Z
         IisQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nnLDdqTSTScPXENSZQ+5/4HE7oL4dwhnL1oDAwB+G2I=;
        b=J2cKhifW5q458pqjQ+NTAZ/BvZd8/9st7dSJNWZytuOy2ttEckuRvkFw+mC2vKTLR5
         X/LVq92SaHj38fnEjDa8P5U2jevO6NXUMUUL/YzcMxzpqBtx0vxe4hYnpAN5tng3FG6d
         fH/UN8Bgb/4w88ew4a0EtnyntZ+urQKUqnLIAn2ogJeIXnlnEesQuXnkEWFXRlXT3cZD
         zgA9BPVI8MELakIINGotXOoX1rnpdQz6qFXl6hRhFEaAEqVLVkstIuaa7w2HMTKohuHV
         Q3obaGHHw4L9/NC40pJ82YTG4uv/Gyh2kikOk5EI4Yt7KoOKNk2rUoeV+3W+FTpJBAY4
         kEXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JYmU4TxR;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id f133si1011775oib.5.2020.06.17.06.12.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 06:12:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id x189so2610695iof.9
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 06:12:15 -0700 (PDT)
X-Received: by 2002:a05:6602:2c45:: with SMTP id x5mr8122689iov.80.1592399535234;
 Wed, 17 Jun 2020 06:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
 <20200617062109.woy2uyefdplw3pst@google.com> <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
 <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com>
 <CA+icZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ+bB4RzCHoA@mail.gmail.com>
 <CA+icZUXacdF8Fvd=8mz9wS3C_Am5n_yoE42DKc0X3L3ywfKRQw@mail.gmail.com> <20200617130547.GA2489039@rani.riverdale.lan>
In-Reply-To: <20200617130547.GA2489039@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 15:12:03 +0200
Message-ID: <CA+icZUUB+Q1SMBpwR+78hdT3MGNzZvvdPcLLaShLD4U18LG3Xg@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JYmU4TxR;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jun 17, 2020 at 3:05 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Wed, Jun 17, 2020 at 02:58:44PM +0200, Sedat Dilek wrote:
> >
> > Interesting:
> >
> > File "aesni-intel_asm.o" was built with IAS and I see DWARF version 4:
> >
> > $ llvm-dwarfdump arch/x86/crypto/aesni-intel_asm.o | head -5
> > arch/x86/crypto/aesni-intel_asm.o:      file format elf64-x86-64
> >
> > .debug_info contents:
> > 0x00000000: Compile Unit: length = 0x00002ad3 version = 0x0004
> > abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x00002ad7)
> >
> > Building with "-no-integrated-as" and GNU/as as AS cannot benefit of
> > DWARF version 4.
> > I guess my GNU/as has no support for it.
> >
> > - Sedat -
>
> GNU as has only recently gotten support for --gdwarf-{3,4,5} options.
> Not sure if that's in any release yet. gcc drives it with --gdwarf2 for
> assembler input, and no debug options for C files -- I guess cc1
> generates all the debugging information in that case and doesn't depend
> on any assembler support.
>
> How are you getting some files with -no-integrated-as and some files
> with integrated as?
>

For example aes_ctrby8_avx-x86_64.S is known to be broken with IAS, so I did:

[ arch/x86/crypto/Makefile ]

obj-$(CONFIG_CRYPTO_AES_NI_INTEL) += aesni-intel.o
aesni-intel-y := aesni-intel_asm.o aesni-intel_glue.o
aesni-intel-$(CONFIG_64BIT) += aesni-intel_avx-x86_64.o aes_ctrby8_avx-x86_64.o
ifdef LLVM_IAS
AFLAGS_aes_ctrby8_avx-x86_64.o += -no-integrated-as
endif

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUB%2BQ1SMBpwR%2B78hdT3MGNzZvvdPcLLaShLD4U18LG3Xg%40mail.gmail.com.
