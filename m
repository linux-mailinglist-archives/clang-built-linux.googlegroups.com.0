Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBFHNQH2QKGQE4QIZ5KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8644B1B4AE6
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 18:53:40 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id g7sf1337736wrw.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 09:53:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587574420; cv=pass;
        d=google.com; s=arc-20160816;
        b=MgiFGK+0vugmSKv8oB15JWlir0oVvqBLK5RGL3qURSFw+Aa0HtCDERfkBMPTr3lQvQ
         2gQinMfxGmkAOLDAsUmeKbYZSLgitod428aJMo6T5+HKe5M1WrXjhLhLRYD+MXCZ89EE
         p04Fbt/udcI7I+bUk6isMkM9522ynD07//yYyKSTrob768az6rg1Rp7lLCR93Xh11RQF
         i6hWZnTj0LBgFGgtJCcTY4v8vJb9ainGUMCSsBAU2Woi5qKOt2x/qTFoiCQOoncwsl57
         x7dZ31hRLhrkeD0tl9aqOT2NoL7Vcu7jE3r3nrZU40MdwRQE0+JyJds2YFdmNcsDxhqA
         a5AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Yreoew49uvZoKSAcs0hSKTmMzk9iZ1TYtL2e+MisHlg=;
        b=HU14SEmRmxFjD6ovoxrpJbvbhv7Hd3Wy4Ho2dX6tVSV2gvOdC7jFqll6X8IqLMdXvP
         vjvVPIYSEPg7yf3gXbUbrRGMv94Gmy8X2FJkwnQ1YvoIKYs6hJ93qNgQ78i6Pp5D9U8c
         q7YZ4yAuFvTNiSBLgwOorG53JJilSUcZeFwhog0CggJjE8/x9OoGaC/yCxM4x3aOvdO4
         Kl5G1bm4BW/XvrKZe4QPY6HIZ4BY17DAULXV8cXFgeXvjCmSVdFx/xhqFoeaLSNNB350
         VJaB+UsbSGl2IONK7kxBFkEBnA6xhHf1EOuzU83OY7UCC3ov0PIhz2dAALHaXyVZ2PFD
         Xb9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=NZV5+Dl7;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yreoew49uvZoKSAcs0hSKTmMzk9iZ1TYtL2e+MisHlg=;
        b=AYhotUdiHe3qFRXboYU0Wwq8zc6cRBWOYRo7sS1YasyUtw/h2ZGsDV2BssD9rbOiu4
         ZExq8s3cilYcEWn//FuZ+s+gKROvzSo3F+DwbAYLZmoUFl3L2fsLNySVpgu+Ls/pALzT
         DAEuObeYnpSBJ5IuxzGSItOo8tN4HWLZAMjPF5SatuNboKYmsfsES2qv4PiGuC/vt+Ec
         uyufkMMhHorBARDyhkNH6XGl7cFWsOF6AiAHNzuB0MRPoQG6KYcJXH5wL41sq5YZKTPE
         aUJSaASaqUUfTl3Hm7V5hpoZbXzRZt23TyUesWCBzj9xdxtl6gPmXi8F7SL+w6pGvusv
         Ia9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yreoew49uvZoKSAcs0hSKTmMzk9iZ1TYtL2e+MisHlg=;
        b=c0oSXxUD188gHJxx7rYNT4nUzZVnMYDtYCQMVM+sxZ+QE7Mc7CxAAcLAtDUmD26NyU
         LEFOpn1zIfvbqkoZqcRiLoGvqpFiHPdPyttTYX0Lca3KCpJ7IbRdbC7ZqX8O7ukSx72S
         0+95aye+L6AhjUVIJPiYLZspEOW2wtnLUq0Llq8Mc6Vg1yHhHtMFa84DP+HhYI+KoIHN
         Vjxoccsb/QW+eCe/tZauPL7uEOoZI+EnSsm7PTnimWabzYMJDHRmlaB4E2ezK5E2XCau
         g8lvCPcgfC+E2m4HwmrGfXrf2ERKsl+jGFvLBhADDqgavYAigbxZoN1ZU1PFCEQTKQPr
         RBhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaNrMW9nuf1cIqmvcC21Yt6DW0cfWFaYCabixytHMitSoY0QaNa
	2piZJLwJ3gXyEvac6cN5MAs=
X-Google-Smtp-Source: APiQypLKLn+4bxGcg9K+lDlOAkwt+gkArHhOkfQjfQCQXJxrneQmrkfhCWuBcaV/JA4Ry8547Q4Jjg==
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr12471149wmd.117.1587574420292;
        Wed, 22 Apr 2020 09:53:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:668b:: with SMTP id l11ls2150262wru.0.gmail; Wed, 22 Apr
 2020 09:53:39 -0700 (PDT)
X-Received: by 2002:a5d:6847:: with SMTP id o7mr30872080wrw.83.1587574419793;
        Wed, 22 Apr 2020 09:53:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587574419; cv=none;
        d=google.com; s=arc-20160816;
        b=KRJ4G1jg2iLewIKxdlYyN1RPG6GbWWCCtyUEFXI0IgrmhUK3JBzHtU86pp59GaNDd+
         s/msOBTm42cN9dvfSrrm10xVmbPzbgFZnSBXM7qEmayyQPxN7gbGhZ8day1W7VO22GVS
         aTHagAnjtBISzccHq0D5iYvER/SvtswJQjwB6gsDFI/hj3fEFWYBVN+36GHkSg7K03mW
         dny/34/gYeQ+dq13vF6ORTVFj8mREX4nf+7CFMtu5HDzOXhEn0R49aBZLv1p39/CMxTd
         4gU95ySGyoENyr0Sgh7zl8Lxufr/TOjtIcBEKad/r0eZC29tmY9IbyAW9lUUVJZMpXjq
         T4iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=AVKnR0QOloA4aew99lOCASo2crQf98GdsdZcG1lVtB8=;
        b=EWnG87urjUCtuKDig4jIfwWlAdI4rMdlnHfMi/juPAZeG6JmN8vUdDxMlAvyc1uNqr
         FcUebUfeLPCEWsv6qVIXKTpva7SOfa23iAcocR4MtOkFwo61jRAR0p2/atn0RP2ef+9i
         Or8xkRVqqiECRDou92hRR+xpZT9B0e5swXUOQ+FkKBWDm7VVCgCvt9zZ+pOmIuLuemk5
         l7ghrkJORHVH/uiCST31rDOY/rrAaBTs1BKocoAZA9QygwvZgDXKy2drulNdkU3OTsOQ
         kqPUTKO82gLKznztq28OAUMCK1Q9q0NxB6XfOcLsb7etbTFyXIUns/5E66qolxAgZRwT
         Mlmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=NZV5+Dl7;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id m4si448398wrn.5.2020.04.22.09.53.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 09:53:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F0DC10099981D244BC6B235.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:c100:9998:1d24:4bc6:b235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4D8651EC0D4E;
	Wed, 22 Apr 2020 18:53:39 +0200 (CEST)
Date: Wed, 22 Apr 2020 18:53:39 +0200
From: Borislav Petkov <bp@alien8.de>
To: Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>
Cc: Jakub Jelinek <jakub@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Matz <matz@suse.de>, Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200422165339.GE26846@zn.tnic>
References: <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <20200422114007.GC20730@hirez.programming.kicks-ass.net>
 <20200422134924.GB26846@zn.tnic>
 <20200422135531.GM2424@tucnak>
 <20a91f2e-0f25-8dba-e441-3233cc1ef398@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20a91f2e-0f25-8dba-e441-3233cc1ef398@suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=NZV5+Dl7;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Apr 22, 2020 at 04:16:53PM +0200, Martin Li=C5=A1ka wrote:
> And as I talked to Boris, I would recommend to come up with a "configure"=
 check
> that a compiler does not optimize the key code sequence:
>=20
> $ cat asm-detect.c
> int foo(int a);
> int bar(int a)
> {
>   int r =3D foo(a);
>   asm ("");
>   return r;
> }
>=20
> $ gcc -O2 -c asm-detect.c -S -o/dev/stdout | grep jmp
> [no output]

That is a good test to run at the beginning of the compilation I guess.

Without the asm("") it produces:

bar:
.LFB0:
	.cfi_startproc
	jmp	foo@PLT
	.cfi_endproc

I'd like for LLVM folks to confirm that this is a good test for LLVM too
Trying that here with clang gives:

bar:                                    # @bar
        .cfi_startproc
# %bb.0:
        jmp     foo                     # TAILCALL
.Lfunc_end0:

so this *looks* like it would work with LLVM too but I might be missing
something...

Thx.

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200422165339.GE26846%40zn.tnic.
