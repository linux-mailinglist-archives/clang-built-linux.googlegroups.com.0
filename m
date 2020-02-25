Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBC7E2LZAKGQET2FTVCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0533316B926
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 06:35:09 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id cp3sf11566254qvb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 21:35:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582608908; cv=pass;
        d=google.com; s=arc-20160816;
        b=cwCnJD5q53pXyrJ5OrPhUsq8hkeSaz88tKqP95zqsDCFHyimYkelFpKJbyawQTNV90
         Epv1hk7ZMo4DDcUW/0yY3/hiI19R3Y2R6py50Vurzh2LJ44g9gtu1DSYZgJzSPVQ84V9
         AtGzw+1aEiPB7L1Qd2f9iabu3TsdzsJg+DhwGZWRwtSgGDIKpuSAGoWhwlzzNwVdZ161
         YA+gHcMeWYbIi4SDAQjw6SsJnRwh86rI8I4ohrg+LhomzoOi1e9O1yQuO2k/ywtglKCy
         H0966t8CiVbAkj4e2mzvk3vPMDe+SbNLtwyVDdbQ62mhVmLf+ClJgIHrf0YgTdKn3pHu
         Bzdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1MuoRjPqmGSOFG3XeWAHYtp1kE23ftoclkO65WCr6lQ=;
        b=QrmsH+5MKU1zj5ouTeEMD04bk3g00io0fefgM0Dp/PNaa+8APd+N7hwNBuvylK+2Wu
         61uwBD0bWZbpx/C1RFj1GFVn5FQroxmLJw90LXFPiI1wCQfxuIxwsiDox0UO4+prdAaP
         4gOeDvADG+cv7rZaGIb8gmYhMaGcLPARj8VzJe32yc9IRbgHwctE6zDGx2LYkUrGrWSe
         5wNIVyHcwFXX8y0y9SM/KhPZdRBApg4qkgu5TGkh0Vj8SVNZwliveQVkAQHAMoHWue3W
         UOj5Swht4msmfvKVTvjseP0na9AyP0fIflSLIWf3BdICr8EAiVnM9k82XPw2SqMZKOQ8
         Fkkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lvy1ps8N;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1MuoRjPqmGSOFG3XeWAHYtp1kE23ftoclkO65WCr6lQ=;
        b=fLsjTHjY8xgxHsTyPbrIwrHih6bqkI06JrYYOmVsyvDhZ7Qh+mc9mKAVrotlh20eZH
         3fXV57mTPxiKukMoJ7Ykaam9haYxyvhm764Z0bJ5Ffws6GZxiTkUadXYpz74QKrIfvFB
         wq/27BBja1jUBW6Spu+rEnmqgzM4MUDSxog/yI/F2TI2XhKliwFpmym0YWiqL30MXnLb
         xcImJSl8oP9U5qP73+ubttUqqD5kY9TX777jUbZKmWiOcmIu1K1tEXzcKFb9nWYTHEQ1
         hgAfRkgXQjA1e6bFnkBNcNxNs41JNqA7EUthvBnF3dc/gSeY881xn/8ACLSYzYMcAvGY
         fleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1MuoRjPqmGSOFG3XeWAHYtp1kE23ftoclkO65WCr6lQ=;
        b=k+nnnOtyyueQJdS84EVTYEWzt8CAvGzao9vgfmpA8a4OVnMAkBwzwOGXDjXDBK4hZp
         N8tRfmu/ydHuKt1jDbwEIOd6UQfX0IMh51PB7leWGttjSkGeGAaj7gt6Iq4wyIxVqW0/
         NSyMIIDw2tDuVyu+40Phy0Bt68PAOjlQRcJ6mpJVTk0eeikyPS4Lde79sEidhBg1hsSb
         4TA0+YPayQfhbAWcZ4r5Xu5jblZ1FFUiKvFVyZkEFptlucnZr6z6jiyvarmJj1dfPNwG
         4i6mMMOtXYJzJlPIQDBOFACAX2+jGIegUG7w8rltwpITY57ePxbMRsEBMozOigG6PW9X
         cxGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXVGT8HbJfgETE02wwsljb3jKs+LPBVSr1FJfVY9NvH9AOMZ6D
	ayfculjEWXpXJN2uxr2el1I=
X-Google-Smtp-Source: APXvYqyut0orxKXuQ3uyRIkA9hbRd3ODlr4/88deeFaTWTnyp9F5F7qVpR4ECrqv3LX2GMXuCj1SVA==
X-Received: by 2002:a37:be44:: with SMTP id o65mr802735qkf.185.1582608907879;
        Mon, 24 Feb 2020 21:35:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1762:: with SMTP id u31ls4566279qtk.9.gmail; Mon, 24 Feb
 2020 21:35:07 -0800 (PST)
X-Received: by 2002:aed:3ee5:: with SMTP id o34mr51815220qtf.164.1582608907555;
        Mon, 24 Feb 2020 21:35:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582608907; cv=none;
        d=google.com; s=arc-20160816;
        b=i52Bk6T5jHTHe2ZBBfEJ1nUJVEVJ06F6hKZNpipxOfMff7Umg/n0/y3vyhicPmEadJ
         ladMs5NfmBewDJmURMMmDEMikN7rRPPNpr8ivrKvz6+x7T3dIOjK3ZXo4thhGvVekPMT
         Pq/MCmh2kkvowwQ5mLYtp35kZgc5AXVpXsSB+RYjilJuMJI5+pzuA1VHnkMTf2lbvW3D
         ca5I0iDj3Ydk0moNCAfNyDRpnZCscc+7QaKgedJ+7bOgTO2g2qIdsFigui6TMqSE/M8t
         fhSugP7nEcbwe372YR7/IB3p9EBb/MlSxv1AK/xzisYb/9NICXqCtJxnS3VvYSyzfYXS
         YKbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w5F0TAnwoqyiRFFX6FnhAISLjzmCHL8nrpmKA4Sv/Wc=;
        b=gt5O8Rg4i7zXEAWm3tUNA9juSMJJQ/Z1U1di+DoYDLaem+1tGjZ70M7SPtNko/pJeJ
         +GmNBdu9xfXSO6D2Uo56QMvgpkaMCwZ5OnDX5Yj57XiK7uBFDg1UJx2zKlWewUOnRa4j
         1k7Mi92Zogw/SvNRpyvq/M4iPcFHjakGYgx6j+RCQT5BGeF8MG2qijiNLR+VpM/ACw9H
         ouwMqP4FeMp+1rYVEYAdFAfC1yD4tuDlqhK8d0NuFZPaj0ejwqmiYsfjUrSLMrx4vgh4
         eRVi6UrexY77y0Tnve58MEBYP5OWR+WBJeLXsA8Sh7UzVcWKJylQXUnwRxV0S2ERTEnr
         +J5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lvy1ps8N;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 23si656016qks.6.2020.02.24.21.35.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 21:35:07 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id j4so6319827pgi.1
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 21:35:07 -0800 (PST)
X-Received: by 2002:aa7:9a96:: with SMTP id w22mr37952913pfi.210.1582608906597;
        Mon, 24 Feb 2020 21:35:06 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l10sm1414942pjy.5.2020.02.24.21.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 21:35:05 -0800 (PST)
Date: Mon, 24 Feb 2020 21:35:04 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Fangrui Song <maskray@google.com>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>
Subject: Re: --orphan-handling=warn (was Re: [PATCH 2/2] x86/boot/compressed:
 Remove unnecessary sections) from bzImage
Message-ID: <202002242122.AA4D1B8@keescook>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lvy1ps8N;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Feb 22, 2020 at 03:20:39PM -0800, Nick Desaulniers wrote:
> Kees is working on a series to just be explicit about what sections
> are ordered where, and what's discarded, which should better handle
> incompatibilities between linkers in regards to orphan section
> placement and "what does `*` mean."  Kees, that series can't come soon

So, with my series[1] applied, ld.bfd builds clean. With ld.lld, I get a
TON of warnings, such as:

(.bss.rel.ro) is being placed in '.bss.rel.ro'
(.iplt) is being placed in '.iplt'
(.plt) is being placed in '.plt'
(.rela.altinstr_aux) is being placed in '.rela.altinstr_aux'
(.rela.altinstr_replacement) is being placed in
'.rela.altinstr_replacement'
(.rela.altinstructions) is being placed in '.rela.altinstructions'
(.rela.apicdrivers) is being placed in '.rela.apicdrivers'
(.rela__bug_table) is being placed in '.rela__bug_table'
(.rela.con_initcall.init) is being placed in '.rela.init.data'
(.rela.cpuidle.text) is being placed in '.rela.text'
(.rela.data..cacheline_aligned) is being placed in '.rela.data'
(.rela.data) is being placed in '.rela.data'
(.rela.data..percpu) is being placed in '.rela.data..percpu'
(.rela.data..percpu..page_aligned) is being placed in '.rela.data..percpu'
...

But as you can see in the /DISCARD/, these (and all the others), should
be getting caught:

        /DISCARD/ : {
                *(.eh_frame)
+               *(.rela.*) *(.rela_*)
+               *(.rel.*) *(.rel_*)
+               *(.got) *(.got.*)
+               *(.igot.*) *(.iplt)
        }

I don't understand what's happening here. I haven't minimized this case
nor opened an lld bug yet.

> enough. ;) (I think it's intended to help "fine grain" (per function)
> KASLR).  More comments in the other thread.

Actually, it's rather opposed to the FGKASLR series, as for that, I need
some kind of linker script directive like this:

	/PASSTHRU/ : {
		*(.text.*)
	}

Where "PASSTHRU" would create a 1-to-1 input-section to output-section
with the same name, flags, etc.

ld.bfd's handling of orphan sections named .text.* is to put them each
as a separate output section, after the existing .text output section.

ld.lld's handling of orphan sections named .text.* is to put them into
the .text output section.

For FGKASLR (as it is currently implemented[2]), the sections need to be
individually named output sections (as bfd does it). *However*, with the
"warn on orphans" patch, FGKASLR's intentional orphaning will backfire
(I guess the warning could be turned off, but I'd like lld to handle
FGKASLR at some point.)

Note that cheating and doing the 1-to-1 mapping by handy with a 40,000
entry linker script ... made ld.lld take about 15 minutes to do the
final link. :(

> Taken from the Zen of Python, but in regards to sections in linker
> scripts, "explicit is better than implicit."

Totally agreed. I just hope there's a good solution for this PASSTHRU
idea...

-Kees

[1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm
[2]
https://github.com/kaccardi/linux/commit/127111e8c6170a130d8d12d73728e74acbe05e13

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002242122.AA4D1B8%40keescook.
