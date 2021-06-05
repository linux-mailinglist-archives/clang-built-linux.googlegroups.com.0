Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBRVI5WCQMGQEEM2QERQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC41239C77A
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 12:39:02 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id l13-20020adfe9cd0000b0290119a0645c8fsf2419385wrn.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 03:39:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622889542; cv=pass;
        d=google.com; s=arc-20160816;
        b=kWqQmNV6AtUPWTroEq4vb2MDLtreQDL2Bys1DyLWOd/UDqCdPXw+jhqkpwfnSMc/Hp
         ouxJ7IBu2X97dEslqdz6Wxp5MZINR8YTnNUYfphDcvxCEfRg/ZknztVdljUXqWiPTu1A
         LdD8cVyAdqTllO8tVd70wUJLM82RFh3InemFkT11ZIVXfmVt31hZnTRKMMpGx2H+s0Ek
         wWXhh7xgu4hkw2TVRRwNI1ASER5oYQwfKta368YujXp8E0e9COqkpn0HOPUrlJQ8C/Xw
         qFZ3RiXkcqcOo/3ABFAXTVaJj465gcsmp9m1Os+t8jL2mfr0Rwtk5auqzEFGLfdOlVb1
         iTpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FbfgetAdUMOotAxuObfrkD7pWd57cOR5UD2q/bbchVw=;
        b=wFeOb2uEkq2EdlfgOAEHBQCqbBSNtLWc6D/MS9BD0r9SCgbgda2PYNniPeEBNAozdH
         jL+K9UFduMLYmn4wWBu4q7Jm56V+Y0M2DWI/eRZiDu9qH/M7QZ3dKu4dlAXHJqtLFLnm
         1UCXRnVCZNMELs7mUIcyJe97+m5ST9I0r9wuwqRUmERNbYFMxBMvyC9tw+2nAo+WWyvy
         myDT/B7WCE2whBQJNrYXJBdorFMk233Ju0EiVzfbmMywbijXw/EY3mrgg9t3nPB851TO
         npyBSbsfy21ZbZzTgn5gtcAV+yDu4HgB64hFI6P+TP/Trt0fJPEu9PgyUvcLeviywFkl
         KzZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ukIzKO2q;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FbfgetAdUMOotAxuObfrkD7pWd57cOR5UD2q/bbchVw=;
        b=OGrc2cFWEv65itxmvjA++1XlqMLuXbKfkOJ9FwwcmAlRDSBWy7NfzhUvYEWIc43tjJ
         rXw5WvSmPMDN/CNTjaVTGAQnG2kX01R1cqiDjNT17V8toAJnt8xhmBuS+XnvXwlRIoT3
         zgdbKe6geGmTUszV8NU+1e1nNrwrPacOEyPQifZ69AUPeqpcdCqG6mJi8VN2uFFduSx0
         P1kdfqu1ALVMOkUKZfmOPMCneWlS4+Ccp8wa2gWmHusKjKJD0vtXubwA7wd7oqlK4WCc
         mQU5Y98Aavi3t3j1O5Vf2E5La1R/Fv/AdCLhLFcleehmjnyUSlhgSFRMA7Kw7dDFCmSL
         FdUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FbfgetAdUMOotAxuObfrkD7pWd57cOR5UD2q/bbchVw=;
        b=hQEH8X8IL7Q3lW+YAfOF0EG6dQynmGtV6AIfsqVQj+VYFzIhXvotkMIiTgSrS2o+nQ
         bIVXBOGfB2wpFCjhag0XKgCOpwlV5GdKG0h+zEUUBkrkC9kbUzhbs/jf4wBPpSUjcYMK
         Ly8xw7cGohvXLpvwgDs3GWkUQqrmUeX6MsobWa9Zon9mGtCg/oM1qltK4PpEOxHTHU9K
         Rz5yHuukr7PFeu8V0yVYJQjiBEYvy9H09us+2mNW4WouzOt7QWynXS7bz+zPUAJVzY5g
         VpnYFRc3iNvuAfG21OQimvogZGx9jsWhe7mIgYKb8mHG+r3eAdJJ55Z6CAgJiuK+LiE5
         8GuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337g1oTJeRRcLIurjLMgfJqCZzROZhw7P5h/I+Yq59vlbTPRbPF
	Hbks87WzmNYm6GbWhLkHqbY=
X-Google-Smtp-Source: ABdhPJw1lo4OfNSikSxFL9OOm2aoannaymtoz4baScjKMUiWw8mgpR7K8B33Lrklpv4WwJPWzd8WRQ==
X-Received: by 2002:a05:600c:4f0c:: with SMTP id l12mr7556030wmq.71.1622889542440;
        Sat, 05 Jun 2021 03:39:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f603:: with SMTP id w3ls3757715wmc.2.canary-gmail; Sat,
 05 Jun 2021 03:39:01 -0700 (PDT)
X-Received: by 2002:a7b:cbd1:: with SMTP id n17mr7983442wmi.2.1622889541600;
        Sat, 05 Jun 2021 03:39:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622889541; cv=none;
        d=google.com; s=arc-20160816;
        b=MXouEyLTxo2rwdzzjq2DRRCGerAX5Ff4Cx0ss1xZRQrGmvs/NyD9U2jhQHACIhGZqy
         mkXIWMDetyl6gTMScZL2jVP2eTfQvCGS41Y8ee8ia3Az4iabxjHw0eWAij1t52NTiIO+
         cqFXehb2xgVynKjStaQd1TmXs0eotlWrzGywPSq+euTnNN8S2hcMs+GM9dqlJGjwXicj
         Kqgw1E+/OjreDlBF6WkpnPp5yY5+2CRs6DYrdE/XfRT4bJ3a0GWKUsz16paCj1h9YtiL
         ZkJRRi1n30kRWf+/E/C0K+o5J6peDZatD+YH6sRXN1hqk2T68iTHk4XvuA4TJxV0g4zj
         UE7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O6C1Dmxriqyn/gQ4Qn4heBEyEwp43YQhQLI8PrkD0ms=;
        b=e8Ch9smUxEyQJCktBd4qpSfMu4N8a/I2ZZXkFVQ2hZ5ycSFmpJ/URV0Z7hQi7nsge8
         SAgGjM3NmHVA9FHSn/er2ozOFfEBHHCR104CwYxYEzcpomK4HOw7IonX2nsUZSb2lHXk
         9epyRjIhe10jTgrS/AyQwUkn59dJ+5h96UsusfUL1D2xUV0XYYa4itf5mQkZXhWakQRZ
         JXfBzfZg10HvzSM8KoUVsAf6fw2mIZMIb2P0DbpyLtVO3YsOOiP1Up3F9C06CDaqmtof
         kNDXSWz6ptgXyMLHk5zOjqrLYgs/qgKq6qdFaW/aIzu5uaeL14ac1hw+gsxcdQ3GFYOz
         24qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ukIzKO2q;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s9si582095wmh.1.2021.06.05.03.39.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 03:39:00 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lpThe-00E1tM-Tb; Sat, 05 Jun 2021 10:38:56 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E231E300091;
	Sat,  5 Jun 2021 12:38:51 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id BD59A2CEABC01; Sat,  5 Jun 2021 12:38:51 +0200 (CEST)
Date: Sat, 5 Jun 2021 12:38:51 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com, rad@semihalf.com, upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210604235046.w3hazgcpsg4oefex@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ukIzKO2q;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Fri, Jun 04, 2021 at 04:50:46PM -0700, Fangrui Song wrote:
> On 2021-06-04, 'Nick Desaulniers' via Clang Built Linux wrote:

> > is producing the linker error:
> > 
> > ld.lld: error: drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o:
> > SHT_SYMTAB_SHNDX has 79581 entries, but the symbol table associated
> > has 79582
> > 
> > Readelf having issues with the output:
> > $ readelf -s amdgpu.lto.o.orig
> > <works fine>
> > $ readelf -s amdgpu.lto.o
> > readelf: Error: Reading 73014451695 bytes extends past end of file for
> > string table
> > $ llvm-readelf -s amdgpu.lto.o
> > llvm-readelf: error: 'amdgpu.lto.o': unable to continue dumping, the
> > file is corrupt: section table goes past the end of file
> > 

> tools/objtool/elf.c:elf_add_symbol may not update .symtab_shndx .
> Speaking of llvm-objcopy, it finalizes the content of .symtab_shndx when .symtab
> is finalized. objtool may want to adopt a similar approach.
> 
> read_symbols searches for the section ".symtab_shndx". It'd be better to
> use the section type SHT_SYMTAB_SHNDX.

I think you've absolutely nailed it; but would you have more information
or a code reference to what you're speaking about? My complete ELF
and libelf knowledge is very limited and as demonstrated here, I'm not
at all sure how all that extended index stuff is supposed to work.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLtUO/thYUp2wU7k%40hirez.programming.kicks-ass.net.
