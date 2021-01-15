Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUPRQ6AAMGQE7OGVH5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDE72F8678
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:19:30 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id u6sf1642547uaq.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:19:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610741969; cv=pass;
        d=google.com; s=arc-20160816;
        b=S0NnfSMerT4XhnZYij9Rdwnek5NuQKKKGl55wT+LV0SS6D9Gun+5a5tT7dRwvOUf0M
         ePTra7cj6eUh4IMPO5l48pvZ2hbXwQFr+fSSLMGfAtlV0M3lq7wQuR+j92JogVxaxqVP
         npXbqKVngHlAXG0ewTkxrflHfVbQXVVMA+q9R+eDfccQsZGx7TwynlYwXb7wb0ilcgr7
         gOcEYVIPnr8m0BMp7ZcJqVZPUBs3Ss9KgfMtWI3netg6G0L24IsfQzsQC/mTH2nqZFkb
         Jdmn4qul/ihP3soWqkYAtpN8qn8YP3dLLav1+J6ZUe28RXF5pIAWY196DONiqSjP57QN
         ZROw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ugF84TDtGxNJHQXaOs3E0yTc2wtKcOVlyrm6zdM7Zjw=;
        b=c86r0yBg7AYDtmlBVKBmDGyQhWzWoEd+60LvscPwkO6lJLz3FbEt7bActArFxato8I
         BI2SHIBkX8m+0aSFsN2BU3Jp0+Vlw7VOBpOBtIdGZf/iwQx1YbV0Gn6nh4HkrhYVwmsT
         YBLRxGoiCfFN5boW3mKwxt6OsNt3j2AytNBkOURULJeh49sIkU7GBBUg0B9eKGM0Z5vD
         AdaHBKysCu8rLufZ/DEz01AB0zt4xo8YX6FVvJCk0dLnAzV9HTua3gNrD2EVZx1NceR0
         xOORuNyZFhLEu7P2EeSvr/ZqYg6c4WE0pAH4jlYgpbEKjBh3BfdMzGFi2FFhUnJ64h+a
         Mxkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BGyVrrUh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ugF84TDtGxNJHQXaOs3E0yTc2wtKcOVlyrm6zdM7Zjw=;
        b=aEKzzl82e5o2YPKLxoaM3SnS/TYmRFpOCPdidJb3gY7aH1yulZub6vmeHwnNOLjQc8
         9NJQv9s78bPyl94V9kGL9ouhMLLvxZRKQCF+pGZe+O88QXtI/yjqRv6T8q+ux21m6QA0
         hpYK/uIQeYJmndcFsbHzTJo6r2QRw5V0vNBgAG+M5b7tHr2vxwgTIfPjlsd9VIAasmP0
         4qHb60Rb2jU5p8cl2CPUbecHOU0IpLkq8tsKIiGgZxRiBRxUYJep+j68RKLG9AW0FBHE
         EZiZEf7OMALt/qmQp2/bGz1JyBJzr4AApszwOzdxXX4jKV5MAUwxMlII+1wPXs6Z4T6W
         nGAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugF84TDtGxNJHQXaOs3E0yTc2wtKcOVlyrm6zdM7Zjw=;
        b=jlMAdVekVR9cbv9g0uJDLo8DQ2rD/wbWuSceylEgs7g2ns6T551PxqJV42qoy9rpsP
         zyjUJ3sRR5myd5HMmzz5t+5RVvym5K/ch1HzgyQkbHeMw8mowkj1ZkGZz75pMhfbft3m
         46ZZCkmWpDK0aAAkB6u53uxmHNnPXAeFlW3/2vr9QCFRDwB/vNeK/8rmMPHhaP6YTSmZ
         OxB9BunoijeofAdtnd4oJUfVXir/TSMXQY/vmOUxZwu0aR8U/QvjKognRa1j+8CCiECE
         4Kl0O8qanmt5ka1SnxOTGtHKSw/X6gUyJN/WOTpi2sRk+WHNI+P40J9Ix4Uu+42qr/La
         ontg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugF84TDtGxNJHQXaOs3E0yTc2wtKcOVlyrm6zdM7Zjw=;
        b=ddPBHlchLTs5rsK+fiLFifHmo8/vXjSjzPjzOaLWm3VENikUSGBMFmgURYqmXYqGtu
         490F3MqQII8kx/mpnjUUKnakijdbUijzSrHwTE1SFso4X5+TvTIu0laemquO9gsvGP1M
         Jz98WABNRVMWPlHXXqfrQjPKbcPG8DN1ZpYSPkebinx4rQIhMBR+ky89gLNOu2i3vXUm
         v2DDGhwvxa2GH7+sfM5pbMfINHHjGT+4dFfBlTBQubJV/7VTcfZWQNdbHLeo0KfiOVVS
         lrdJ3ggtCxoC6lZI9s2oKL1SAiIn2+RVreWYFspfgnvpv57WkFJq/tx0xeIjm43fI+va
         jirA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XSDDbOAWnp81GIn/CNSRs7IdiRF9Jae6kCZytiVJycDAH4EQx
	q//C5p0FChJKBkg/BpXuy9k=
X-Google-Smtp-Source: ABdhPJwjZUN2yM41ia7o/L6wvSGc5Mj8xFn+DO8ej72ZvdnpIFOhkktc8vqViy6yZnnAvgENeZNToQ==
X-Received: by 2002:a67:5c03:: with SMTP id q3mr12212766vsb.47.1610741969342;
        Fri, 15 Jan 2021 12:19:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls807856uad.10.gmail; Fri, 15 Jan
 2021 12:19:28 -0800 (PST)
X-Received: by 2002:ab0:3b59:: with SMTP id o25mr11615722uaw.62.1610741968836;
        Fri, 15 Jan 2021 12:19:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610741968; cv=none;
        d=google.com; s=arc-20160816;
        b=UhrUAruFsYT626wUVg8dbG6JXDfTZYHLo7Rx0jHUQ+Z0VveCbumU2BEVFAqh6Xyrlq
         jWIxpXVcezexVMSQ9SpB4AhJazism/35qmUO2kIT1SrYQb0L4SSe0zEwMHE4vZgQENh1
         CZVPflJ8GPUdI2Pquw0s7N6TfdM+3G2qEGemDtQkJLX/Jhp6AF977bwbf6xKwvsXB9MZ
         5cNBeoRCtmIDj/ky3gBVHLG8AQ5+kp7P+3qs9lCwTaf8c5Y2uEyVKmVqdx2s5PMZ9j6/
         DKEWXJliymF2mP2tLor7dYDNKDa0TPCV7tZWDuuiY2ZnZkyCkG1dPZKsdbgHOMMBkazt
         EoxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IrqnTD22eGyeV9KEEPPpb1M8jwdQm0lLlcbUlBKW3fA=;
        b=eTK6+P24ldZU4U+GYxIW5oa041KN7J4kO06bsNkz7xgJsCgaOBtKAZ8Kgo8fJbCMyM
         5M1yWmkV0RdjhSzysHP1N00VtGRxX6G423fOJ4iQMSV96XogDfOPDCzwH1acOIwkKZps
         GrAWqcJSAEXBOmtEmy21s3wVn8LCJofrFood2pgIfxzBquOENVnS3eKn5WtfGBXOK3/R
         mFL7M6iXNjy7PKCAzN2PUgCffferBQF0gyZGG9sCmm7Z2R8OOa2mYkd1iI7pT4Vqg8Hl
         4DVuR6nuP9l22tB73wXL08PRY+XQqSIbR5Um1mGlh3tEiphpKgAUne++QQEjZ9Sp1gQI
         msFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BGyVrrUh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id v23si740518uap.1.2021.01.15.12.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 12:19:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id x21so2350754iog.10
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 12:19:28 -0800 (PST)
X-Received: by 2002:a5e:9b06:: with SMTP id j6mr9842170iok.171.1610741968131;
 Fri, 15 Jan 2021 12:19:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
 <20210115195226.uiclol5lji3tuxgx@treble>
In-Reply-To: <20210115195226.uiclol5lji3tuxgx@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 21:19:16 +0100
Message-ID: <CA+icZUXPiE_ES4V7SbKs6Et9nJua5j4HhxFcBjgzvyttaxszDQ@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: multipart/mixed; boundary="000000000000d600f205b8f6162d"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BGyVrrUh;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
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

--000000000000d600f205b8f6162d
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 15, 2021 at 8:52 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, Jan 14, 2021 at 04:41:28PM -0800, Sami Tolvanen wrote:
> > Hi Josh,
> >
> > On Thu, Jan 14, 2021 at 11:40 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > Add support for proper vmlinux.o validation, which will be needed for
> > > Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> > > objtool anyway, for other reasons.)
> > >
> > > This isn't 100% done -- most notably, crypto still needs to be supported
> > > -- but I think this gets us most of the way there.
> > >
> > > This can also be found at
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> > >
> > > And for more testing it can be combined with Sami's x86 LTO patches:
> > >
> > >   https://github.com/samitolvanen/linux clang-lto
> >
> > Thank you for sending these! I applied this series on top of the
> > clang-lto tree and built allyesconfig with LTO_CLANG enabled and the
> > following crypto options disabled:
> >
> > CRYPTO_AES_NI_INTEL
> > CRYPTO_CAMELLIA_AESNI_AVX2_X86_64
> > CRYPTO_SHA1_SSSE3
> > CRYPTO_SHA256_SSSE3
> > CRYPTO_SHA512_SSSE3
> > CRYPTO_CRC32C_INTEL
> >
> > I can confirm that all the warnings I previously saw are now fixed,
> > but I'm seeing a few new ones:
> >
> > vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack
> > state mismatch: cfa1=7+192 cfa2=7+176
> > vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7:
> > stack state mismatch: cfa1=7+160 cfa2=7+176
> > vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to
> > do_strncpy_from_user() with UACCESS enabled
> > vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to
> > do_strnlen_user() with UACCESS enabled
> > vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call
> > to __ubsan_handle_negate_overflow() with UACCESS enabled
> > vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected
> > end of section
> >
> > I haven't had a chance to take a closer look yet, but some of these
> > are probably related to
> > https://github.com/ClangBuiltLinux/linux/issues/1192. However, I can
> > reproduce these also with ToT Clang, not just with Clang 11.
>
> Thanks, I'm able to reproduce these.  Will take a look.
>

AFAICS, that misses the v2 diff (see attachment) you sent me when
dealing with objtool-vmlinux and clang-cfi.
It does not cleanly apply with the combination of your objtool-vmlinux
Git and clang-cfi Git.


- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXPiE_ES4V7SbKs6Et9nJua5j4HhxFcBjgzvyttaxszDQ%40mail.gmail.com.

--000000000000d600f205b8f6162d
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="1-objtool-vmlinux-clang-cfi-jpoimboe-v2.diff"
Content-Disposition: attachment; 
	filename="1-objtool-vmlinux-clang-cfi-jpoimboe-v2.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_kjyq65sk0>
X-Attachment-Id: f_kjyq65sk0

ZGlmZiAtLWdpdCBhL3Rvb2xzL29ianRvb2wvY2hlY2suYyBiL3Rvb2xzL29ianRvb2wvY2hlY2su
YwppbmRleCAzZDZjY2ExMjYxNzguLmM4YjJkMjZmNDk1NyAxMDA2NDQKLS0tIGEvdG9vbHMvb2Jq
dG9vbC9jaGVjay5jCisrKyBiL3Rvb2xzL29ianRvb2wvY2hlY2suYwpAQCAtODM4LDM3ICs4Mzgs
NiBAQCBzdGF0aWMgaW50IGFkZF9pZ25vcmVfYWx0ZXJuYXRpdmVzKHN0cnVjdCBvYmp0b29sX2Zp
bGUgKmZpbGUpCiAJcmV0dXJuIDA7CiB9CiAKLS8qCi0gKiBDT05GSUdfQ0ZJX0NMQU5HOiBDaGVj
ayBpZiB0aGUgc2VjdGlvbiBpcyBhIENGSSBqdW1wIHRhYmxlIG9yIGEKLSAqIGNvbXBpbGVyLWdl
bmVyYXRlZCBDRkkgaGFuZGxlci4KLSAqLwotc3RhdGljIGJvb2wgaXNfY2ZpX3NlY3Rpb24oc3Ry
dWN0IHNlY3Rpb24gKnNlYykKLXsKLQlyZXR1cm4gKHNlYy0+bmFtZSAmJgotCQkoIXN0cm5jbXAo
c2VjLT5uYW1lLCAiLnRleHQuLkwuY2ZpLmp1bXB0YWJsZSIsIDIyKSB8fAotCQkgIXN0cmNtcChz
ZWMtPm5hbWUsICIudGV4dC5fX2NmaV9jaGVjayIpKSk7Ci19Ci0KLS8qCi0gKiBDT05GSUdfQ0ZJ
X0NMQU5HOiBJZ25vcmUgQ0ZJIGp1bXAgdGFibGVzLgotICovCi1zdGF0aWMgdm9pZCBhZGRfY2Zp
X2p1bXB0YWJsZXMoc3RydWN0IG9ianRvb2xfZmlsZSAqZmlsZSkKLXsKLQlzdHJ1Y3Qgc2VjdGlv
biAqc2VjOwotCXN0cnVjdCBzeW1ib2wgKmZ1bmM7Ci0Jc3RydWN0IGluc3RydWN0aW9uICppbnNu
OwotCi0JZm9yX2VhY2hfc2VjKGZpbGUsIHNlYykgewotCQlpZiAoIWlzX2NmaV9zZWN0aW9uKHNl
YykpCi0JCQljb250aW51ZTsKLQotCQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGZ1bmMsICZzZWMtPnN5
bWJvbF9saXN0LCBsaXN0KSB7Ci0JCQlzeW1fZm9yX2VhY2hfaW5zbihmaWxlLCBmdW5jLCBpbnNu
KQotCQkJCWluc24tPmlnbm9yZSA9IHRydWU7Ci0JCX0KLQl9Ci19Ci0KIC8qCiAgKiBGaW5kIHRo
ZSBkZXN0aW5hdGlvbiBpbnN0cnVjdGlvbnMgZm9yIGFsbCBqdW1wcy4KICAqLwpAQCAtOTM5LDkg
KzkwOCw2IEBAIHN0YXRpYyBpbnQgYWRkX2p1bXBfZGVzdGluYXRpb25zKHN0cnVjdCBvYmp0b29s
X2ZpbGUgKmZpbGUpCiAJCQlpZiAoIXN0cmNtcChpbnNuLT5zZWMtPm5hbWUsICIuYWx0aW5zdHJf
cmVwbGFjZW1lbnQiKSkKIAkJCQljb250aW51ZTsKIAotCQkJaWYgKGlzX2NmaV9zZWN0aW9uKGlu
c24tPnNlYykpCi0JCQkJY29udGludWU7Ci0KIAkJCVdBUk5fRlVOQygiY2FuJ3QgZmluZCBqdW1w
IGRlc3QgaW5zdHJ1Y3Rpb24gYXQgJXMrMHglbHgiLAogCQkJCSAgaW5zbi0+c2VjLCBpbnNuLT5v
ZmZzZXQsIGRlc3Rfc2VjLT5uYW1lLAogCQkJCSAgZGVzdF9vZmYpOwpAQCAtMTA0OSw5ICsxMDE1
LDYgQEAgc3RhdGljIGludCBhZGRfY2FsbF9kZXN0aW5hdGlvbnMoc3RydWN0IG9ianRvb2xfZmls
ZSAqZmlsZSkKIAkJCWluc24tPmNhbGxfZGVzdCA9IGZpbmRfY2FsbF9kZXN0aW5hdGlvbihyZWxv
Yy0+c3ltLT5zZWMsCiAJCQkJCQkJCWRlc3Rfb2ZmKTsKIAkJCWlmICghaW5zbi0+Y2FsbF9kZXN0
KSB7Ci0JCQkJaWYgKGlzX2NmaV9zZWN0aW9uKHJlbG9jLT5zeW0tPnNlYykpCi0JCQkJCWNvbnRp
bnVlOwotCiAJCQkJV0FSTl9GVU5DKCJjYW4ndCBmaW5kIGNhbGwgZGVzdCBzeW1ib2wgYXQgJXMr
MHglbHgiLAogCQkJCQkgIGluc24tPnNlYywgaW5zbi0+b2Zmc2V0LAogCQkJCQkgIHJlbG9jLT5z
eW0tPnNlYy0+bmFtZSwKQEAgLTE3OTEsNyArMTc1NCw2IEBAIHN0YXRpYyBpbnQgZGVjb2RlX3Nl
Y3Rpb25zKHN0cnVjdCBvYmp0b29sX2ZpbGUgKmZpbGUpCiAKIAlhZGRfaWdub3JlcyhmaWxlKTsK
IAlhZGRfdWFjY2Vzc19zYWZlKGZpbGUpOwotCWFkZF9jZmlfanVtcHRhYmxlcyhmaWxlKTsKIAog
CXJldCA9IGFkZF9pZ25vcmVfYWx0ZXJuYXRpdmVzKGZpbGUpOwogCWlmIChyZXQpCkBAIC0yNjU0
LDggKzI2MTYsNyBAQCBzdGF0aWMgaW50IHZhbGlkYXRlX2JyYW5jaChzdHJ1Y3Qgb2JqdG9vbF9m
aWxlICpmaWxlLCBzdHJ1Y3Qgc3ltYm9sICpmdW5jLAogCQkJaWYgKGRlYWRfZW5kX2Z1bmN0aW9u
KGZpbGUsIGluc24tPmNhbGxfZGVzdCkpCiAJCQkJcmV0dXJuIDA7CiAKLQkJCWlmIChpbnNuLT50
eXBlID09IElOU05fQ0FMTCAmJiBpbnNuLT5jYWxsX2Rlc3QgJiYKLQkJCQkJaW5zbi0+Y2FsbF9k
ZXN0LT5zdGF0aWNfY2FsbF90cmFtcCkgeworCQkJaWYgKGluc24tPnR5cGUgPT0gSU5TTl9DQUxM
ICYmIGluc24tPmNhbGxfZGVzdC0+c3RhdGljX2NhbGxfdHJhbXApIHsKIAkJCQlsaXN0X2FkZF90
YWlsKCZpbnNuLT5zdGF0aWNfY2FsbF9ub2RlLAogCQkJCQkgICAgICAmZmlsZS0+c3RhdGljX2Nh
bGxfbGlzdCk7CiAJCQl9CmRpZmYgLS1naXQgYS90b29scy9vYmp0b29sL2VsZi5jIGIvdG9vbHMv
b2JqdG9vbC9lbGYuYwppbmRleCBjY2VlOGZjMzMxZjAuLmIzYjMwN2JmN2VjOSAxMDA2NDQKLS0t
IGEvdG9vbHMvb2JqdG9vbC9lbGYuYworKysgYi90b29scy9vYmp0b29sL2VsZi5jCkBAIC0zNTAs
NiArMzUwLDExIEBAIHN0YXRpYyBpbnQgcmVhZF9zZWN0aW9ucyhzdHJ1Y3QgZWxmICplbGYpCiAJ
CX0KIAkJc2VjLT5sZW4gPSBzZWMtPnNoLnNoX3NpemU7CiAKKwkJLyogRGV0ZWN0IC1mc2FuaXRp
emU9Y2ZpIHJlbGF0ZWQgc2VjdGlvbnMgKi8KKwkJaWYgKCFzdHJjbXAoc2VjLT5uYW1lLCAiLnRl
eHQuX19jZmlfY2hlY2siKSB8fAorCQkgICAgIXN0cm5jbXAoc2VjLT5uYW1lLCAiLnRleHQuLkwu
Y2ZpLmp1bXB0YWJsZSIsIDIyKSkKKwkJCXNlYy0+Y2ZpX2p0ID0gdHJ1ZTsKKwogCQlsaXN0X2Fk
ZF90YWlsKCZzZWMtPmxpc3QsICZlbGYtPnNlY3Rpb25zKTsKIAkJZWxmX2hhc2hfYWRkKGVsZi0+
c2VjdGlvbl9oYXNoLCAmc2VjLT5oYXNoLCBzZWMtPmlkeCk7CiAJCWVsZl9oYXNoX2FkZChlbGYt
PnNlY3Rpb25fbmFtZV9oYXNoLCAmc2VjLT5uYW1lX2hhc2gsIHN0cl9oYXNoKHNlYy0+bmFtZSkp
OwpAQCAtNjA2LDYgKzYxMSwzMyBAQCBzdGF0aWMgaW50IHJlYWRfcmVsb2NzKHN0cnVjdCBlbGYg
KmVsZikKIAkJCQlyZXR1cm4gLTE7CiAJCQl9CiAKKwkJCWlmIChyZWxvYy0+c3ltLT5zZWMtPmNm
aV9qdCkgeworCQkJCXN0cnVjdCBzeW1ib2wgKnN5bSA9IHJlbG9jLT5zeW07CisJCQkJY2hhciAq
c3VmZml4OworCQkJCWNoYXIgbmFtZVtNQVhfTkFNRV9MRU4gKyAxXTsKKwkJCQlzaXplX3QgbmFt
ZV9sZW47CisJCQkJc3RydWN0IHN5bWJvbCAqbmV3X3N5bTsKKworCQkJCWlmIChzeW0tPnR5cGUg
PT0gU1RUX1NFQ1RJT04pCisJCQkJCXN5bSA9IGZpbmRfZnVuY19ieV9vZmZzZXQoc3ltLT5zZWMs
CisJCQkJCQkJCSAgcmVsb2MtPmFkZGVuZCk7CisJCQkJaWYgKHN5bSkgeworCQkJCQlzdWZmaXgg
PSBzdHJzdHIoc3ltLT5uYW1lLCAiLmNmaV9qdCIpOworCQkJCQlpZiAoc3VmZml4KSB7CisJCQkJ
CQluYW1lX2xlbiA9IHN1ZmZpeCAtIHN5bS0+bmFtZTsKKwkJCQkJCXN0cm5jcHkobmFtZSwgc3lt
LT5uYW1lLCBuYW1lX2xlbik7CisJCQkJCQluYW1lW25hbWVfbGVuXSA9ICdcMCc7CisJCQkJCQlu
ZXdfc3ltID0gZmluZF9zeW1ib2xfYnlfbmFtZShlbGYsIG5hbWUpOworCQkJCQkJaWYgKCFuZXdf
c3ltKSB7CisJCQkJCQkJV0FSTigid3RmIik7CisJCQkJCQkJcmV0dXJuIC0xOworCQkJCQkJfQor
CisJCQkJCQlyZWxvYy0+c3ltID0gbmV3X3N5bTsKKwkJCQkJfQorCQkJCX0KKwkJCX0KKwogCQkJ
ZWxmX2FkZF9yZWxvYyhlbGYsIHJlbG9jKTsKIAkJCW5yX3JlbG9jKys7CiAJCX0KZGlmZiAtLWdp
dCBhL3Rvb2xzL29ianRvb2wvZWxmLmggYi90b29scy9vYmp0b29sL2VsZi5oCmluZGV4IGU2ODkw
Y2M3MGEyNS4uYmNjNTI0ZDczZjUxIDEwMDY0NAotLS0gYS90b29scy9vYmp0b29sL2VsZi5oCisr
KyBiL3Rvb2xzL29ianRvb2wvZWxmLmgKQEAgLTM5LDcgKzM5LDcgQEAgc3RydWN0IHNlY3Rpb24g
ewogCWNoYXIgKm5hbWU7CiAJaW50IGlkeDsKIAl1bnNpZ25lZCBpbnQgbGVuOwotCWJvb2wgY2hh
bmdlZCwgdGV4dCwgcm9kYXRhLCBub2luc3RyOworCWJvb2wgY2hhbmdlZCwgdGV4dCwgcm9kYXRh
LCBub2luc3RyLCBjZmlfanQ7CiB9OwogCiBzdHJ1Y3Qgc3ltYm9sIHsKLS0gCjIuMzAuMAoK
--000000000000d600f205b8f6162d--
