Return-Path: <clang-built-linux+bncBCIO53XE7YHBB4FVWD3AKGQE27MA2LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2701E14BC
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 21:22:26 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id v87sf15594430ill.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 12:22:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590434545; cv=pass;
        d=google.com; s=arc-20160816;
        b=UiUElI+eixSYBqKdCcclGLz979jSAdYW5kuIvwNxqILgTsIP16byRPKarEWy5ABFxl
         POc3EjGQbpzom/vhACjmbm9GxlvzsFaB4O4wT56eeGuDaHBwWoS6LlxFXyYbqNOUI8xo
         T/9og9upX9j32VA9N3/cIGmqzvOv6aZQmzq9rO9ynfo3H2KlybrLnEwk8jodw6t/h1dX
         09DxU7dkGAaEZmki8GsabgkL86c1XCFhiPOZopFOEjlg+RV+VyheOjeA+8rOlvRzrxzj
         23WvzX0A6xruONjj8gEyAhkIiAd74QzsYaqHTuEpARQoxPgB58tN8h+YUYGBdydaljIz
         DerA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=/LgoRb3haiAdmeCJ9pEuSEyUMHQn8z/L/PgxKGMBKLs=;
        b=a+9g+Xw6vBMkB/vbSZLOSomBfyov2JouUrP4S7bLN7dyrtBEwUvXBpLBiE/la2XcEQ
         mEFWhzy54gz3DVJzvbf68Ra4iRnjJC7SStCN7wlj76Ko2B561OfK2JTHu0wH87czdMBn
         kru33HXkGaprQTezpTdT681koRGwOZrR5LgL7ag077vkTEDrnyxjsNEFdtuFssA3c2Vr
         6asz37JIcEQV4Xi4NcJm8duG+u6I5W0paijSZD/FS58J+xKuw2sA1scvG+n/nYWDobqQ
         BdObg85qbL74YcwYCwFUxIfuFBvbkpEFWlZz8lIQCzqjO35d/kW+P4JoXfIAKlKM23BY
         9F2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j26s40At;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/LgoRb3haiAdmeCJ9pEuSEyUMHQn8z/L/PgxKGMBKLs=;
        b=amCHCdJTKfe20+HMO0rehtG78XudNPGCqdvfqUIlnfpdUHWKwOW2nvaL/hQCQOxrp8
         14Z34dI06UNx3CXEoJXdLTSNQj+95SL8gPZIjhUKv88HdbNE76S7PautoDgNji1xfKKb
         9vKugyICNdhAaKtPkSFvtIl1sd04eHX/zoRl/pE3UiSZkCJme9JpeKcdKGTzcmkRlwWb
         PpmF2kz2ThovDJ8NhhwQeu155yRpxCzf6Nz9HkV+d1uKVZINFt/GQIDl4lRAqxtJtswI
         onBa4Yjl0X7iz0Z9kZq6uRxTlv1ggPB3KuL1C0GsuZxXlOpWPoj54wYjRGnP5w10ufHo
         cwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/LgoRb3haiAdmeCJ9pEuSEyUMHQn8z/L/PgxKGMBKLs=;
        b=fEaOne3zunAW6HWXkSF6BwNCcY9NwqzALQ9zllaHLdld/P5xPISXLRU8klm410S2Wm
         YeZke6H5rFLBjZzVaGGn66yldadQj/JiU/1OYsbwrEwdxkpKEYFR5bP7zfLX8/XOTT5Z
         /ci2V/BCUj9yMc7JsW/zXSY3/2ao6wCNk4CPKEW2U/ZTLJv3sIfy/AqjAiBNI7I48Y4w
         VuRzfdnyLNU83YLXgAxvzQpLASNjfiImRpPTFqIHCc8Jb1kVH4no8OWXW66WtOahAc6a
         ivUh0rtkx+TUOvbT7eRKrBjwqG2RHNZmwK6MkSewYr6TCWLvGhWW2XvWptZSW0n5zpDO
         QzCQ==
X-Gm-Message-State: AOAM530e/ZAltsFQ0LfXS3fdi4xBo71u6EDZo1pcFVdIIwfvhk+mUWor
	jIZ1kyMREzFJ/sy1J4m0QMI=
X-Google-Smtp-Source: ABdhPJwZV4vw3qUubav8oNyMEV5uQReFSesuip5drjb2xX43ShU6dykpo1D6WKPE6smtjf2smZfnqA==
X-Received: by 2002:a92:984e:: with SMTP id l75mr26196372ili.22.1590434544842;
        Mon, 25 May 2020 12:22:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb8d:: with SMTP id x13ls2203498ilk.2.gmail; Mon, 25 May
 2020 12:22:24 -0700 (PDT)
X-Received: by 2002:a05:6e02:11a3:: with SMTP id 3mr26046552ilj.84.1590434544464;
        Mon, 25 May 2020 12:22:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590434544; cv=none;
        d=google.com; s=arc-20160816;
        b=WtM7Whopf/l2mdfWXlU5e1SkCwFaIAe8pJgiDTh7G8avy/3Do/Gal59IRKDT1SkNe9
         I1ctFJfynBiUqlu3DuOJx9XGNwVFhrygEe+DoUbBTgAAOsym8FXskasrrECPdPKsxfmy
         H/VrqibSug2fYseAUvD69vtBK0m3rJayGcM4tgARWBRAYv/lB8DqK+b+9eKYyYGIBP5Q
         272dT/WpbGIbABCDWXN0VMEmj6XqcATo9QfeDwm0WgeYRf1j6Ftx4jeUyj4IBETJS9kk
         R0F4dxvZkbs6QmuAY3unXH/T3SHWEN24HAQOUfnR7svEGPI4tssztkgH6MJ0QLmaJ3sE
         LO2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=sfZXJ75xgK8Z7AdSn/t8ZW/rrd23X9AtbdmWzY3vzbE=;
        b=QlY7Fu9p0R2pyWT8OE8bjug7PwfPKgUUHrcMG+dsJrk4ogJo9/1VdRtYRNr3KUU1qV
         8MEYkbIoXGaTJaaRwzOnEmQiN1S2yiE1dIetVZC4Joe0uquqfWPEe0LTx69vrWzFBta6
         D6vxOLLnDca4SuQVFbKZ2m3Mh4AkD6NdOAvHHU4yD+xKGtjiQhBkoEaR70I3SXf+jw/F
         Lys+sqx4XMNcKi8y4PCeKiKAphE/8+krfnS0yhNWajnMTHNTL5FH17ETuu6lm0rEynJN
         mL/0IxlUacuieoL3dlF7C3k9+yCMqs38G5cm9ONe7xYJ9lOjbWS9TCgAYd5a/0ETu+X/
         6J/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j26s40At;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id s66si1171962ild.2.2020.05.25.12.22.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 12:22:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id z80so18412753qka.0
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 12:22:24 -0700 (PDT)
X-Received: by 2002:a37:b4c7:: with SMTP id d190mr26969826qkf.432.1590434543882;
        Mon, 25 May 2020 12:22:23 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 99sm15323275qte.93.2020.05.25.12.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 12:22:23 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 25 May 2020 15:22:21 -0400
To: Fangrui Song <maskray@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 4/4] x86/boot: Check that there are no runtime relocations
Message-ID: <20200525192221.GA920865@rani.riverdale.lan>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-5-nivedita@alum.mit.edu>
 <CAMj1kXFjDMuLekYKiPoKDqJhfkY8UViApdMd3JaPmGbnKLO+NA@mail.gmail.com>
 <20200525162626.4covxuycii6bvmjg@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200525162626.4covxuycii6bvmjg@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j26s40At;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, May 25, 2020 at 09:26:26AM -0700, Fangrui Song wrote:
> On 2020-05-25, Ard Biesheuvel wrote:
> >
> >Do we really need the macro here? Could we just do
> 
> The output section name does not matter: it will be discarded by the linker.
> 
> >.rel.dyn : { *(.rel.* .rela.*) }
> 
> If for some reasons there is at least one SHT_REL and at least one
> SHT_RELA, LLD will error "section type mismatch for .rel.dyn", while the
> intended diagnostic is the assert below.
> 
> >(or even
> >
> >.rel.dyn  : { *(.rel.* }
> >.rela.dyn : { *(.rela.*) }
> >
> >if the output section name matters, and always assert that both are empty)?
> 
>    .rel.dyn  : { *(.rel.* }
>    .rela.dyn : { *(.rela.*) }
> 
> looks good to me.
> 
> 
> FWIW I intend to add -z rel and -z rela to LLD: https://reviews.llvm.org/D80496#inline-738804
> (binutils thread https://sourceware.org/pipermail/binutils/2020-May/111244.html)
> 
> In case someone builds the x86-64 kernel with -z rel, your suggested
> input section description will work out of the box...
> 

Ok with me.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525192221.GA920865%40rani.riverdale.lan.
