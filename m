Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBYXQQ75QKGQE6XMDNVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA8F26C227
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 13:34:59 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id c25sf2329170edx.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 04:34:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600256099; cv=pass;
        d=google.com; s=arc-20160816;
        b=iSg82Hg6cW8fVVINIkR+97FVDvfrzGOqK5p9QM94PHpYEidRg4CC0q1c5ucVk3K1vQ
         NIlecVxVdphN44SBza81mGiQTKTu4Y+D7PwTaJoaHD9R39oRDFVNW86/T631ShhXMxpM
         4dS/MN1dECTmqZ+UcYJ8+ahvKS6tGzrS0m26zwzkLnN9w/vYyNEmBljGq6w98vULMRyb
         KU0bbyN+HwUHLAJRTBCD7V9sG/6qOsCNYeyjjxHmPm5fIC/4ayk9T/8Q+3rdhwysxvnk
         I/FbmGaOnF/aR7/ImCrub9QuxoPEg9RsHmEizo0SESC+mCSfEqyiRwlY/dcd8C9aA0PN
         PHOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=XVRCK/0Zxg/Vs5NAhrtpj/dUvX/X2RWI9bbTsObi4wA=;
        b=uHHjXf2uIXM9FhCz1NasZiM5OH2Pvx8BmuXpGoLsLXhdfzO7eHVnej58BRljwNxUam
         VdhHyVzw/8bidezoHisFAr7TlNAj0GpDJa5oI1TycOIAoWvQoJ1BempqZMt1/mqg7BR0
         Dlt2Jwz70NlhWDb5lwBOZ/0fmS04ER4RarJzQJeSDxiWL8TmXsqs/YxBp7flvFwPF1qs
         /+A40FEaGc7TMIne8C9IwxIXYj9x5wvTzyMqhsdGV159qZsggrQfgGlLk8H7PvaYBTwM
         A1dEqZ8Cax/XFiDsTHPg4q5g/x+dAo7Hbhx3lKkwsSYB5osIsF4K57WPhHmIm5CCRK+q
         NecA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=WFTrHxF7;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVRCK/0Zxg/Vs5NAhrtpj/dUvX/X2RWI9bbTsObi4wA=;
        b=JHJ+0jMNlW4wuv5dyNvgF0VUWNBqkRj8WZs00HpBDRBF6qi/3+FZBbKuc1zwAm9tai
         z1SVSNy2h6d9YqGn1HKtCFyKzy3pb0MWu2ryAAaov3y1vkJJrMPY39SEFcS+Yr3Qf2Zp
         25HaWZDWx7kgF9JD47fwm2/roztVbsjfsPZcGG9q7WGxFHKJ3Sw6QkORb/hCAHKGRI+4
         8QQClD93470+JHAqk9Gtenq1oPuF0LMA2jgapbEYXCuVJ0JRRDFfVKbGMpBmaZrUR18k
         1ApyHzO9h+yf+kmvaJQEVBbLy3YKIb1D/OE3kCs1/bzYROjoppC8+YTE3N5dH5pCVXdb
         rtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVRCK/0Zxg/Vs5NAhrtpj/dUvX/X2RWI9bbTsObi4wA=;
        b=TCvXWiDZr6eDgxtLwXaVhUZX2EczbD/8Dlmd3wrjYdF3MVfQZvQl3i/tV1TSn681m/
         UZMxuUvL4PGAxroRyhPnWjiOHrPpQIhX4lTAb6lXnTL0O6Fcj/NqBMnx7BOeckSYVl5K
         Ws5ScaiOQzw4V8DQfLYoYpQn4JEdwsZxQxf+VWPRIEtpoct4TQXJiaD7NzXZgqBX2K/Z
         1PNj4wDLpWAWx6QGL+ClEe0uXao/8xJtjH/9F9hL/vpPLURhvLesWw5Zn+HLSl1AXFT8
         QLVu8l77pchXxiebP/8bfj1SfQV1gIuDHqk+TiouGsnvzLEEKBvWE3PoHSaFRUSt7D69
         xqxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53232x/zQvlPoNqIs0M+5Ey9OaRJXFZroStQVDinU5pdRbHjRjed
	0/cV/YLf3AhFmrV4RAxFT2M=
X-Google-Smtp-Source: ABdhPJxYb3Hb8AJlMUtImIcbX9J+KGIWEGFppqANXJO/5ASWeB0SKrNR2X8ZXoZukUDVtaUS/bS8NA==
X-Received: by 2002:aa7:c693:: with SMTP id n19mr27968985edq.101.1600256098957;
        Wed, 16 Sep 2020 04:34:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:32d9:: with SMTP id k25ls911649ejk.0.gmail; Wed, 16
 Sep 2020 04:34:58 -0700 (PDT)
X-Received: by 2002:a17:906:17c6:: with SMTP id u6mr25453308eje.95.1600256098027;
        Wed, 16 Sep 2020 04:34:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600256098; cv=none;
        d=google.com; s=arc-20160816;
        b=WFEHnoskSVMDjFISv/qCTzAUU8pEDvO22E5dySHBPhxlcdNP4th3cvlU4NHsJ0EZzZ
         GvxDMUSMG7C7RJL76V4VllgSAtr6la5Q7hhPDFK5rF1uQiIATwXsNsYRoKtshUt1+YzL
         L1WVr7GnHmewV9qGDvzBSzDcxWAoakc8/s3YzYjVFlM6k0VyCn0NvzJDSv319V6WUsLU
         FSpUt4/5pHJ9/AXuyWOFwIXtpjMHLSF03DLUZEf2c4pAePeMf/uBsbravknyBds6rl/N
         RMuMiOKZDRhNkmIa+QC9Y8XFSD/Xd00rhhXqDiyNGH3HaJsUXD4hhH8TytjeRG493d2+
         7otA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=4PTEjwjWCxnifqmay2schcOj42jghOVREf92+55yeao=;
        b=tztdBYarxeQz5NadUUDDQYpOEqNl6fgBwsLzuIFKU3XEUZGjvHiZ5ToSvBjELYG/CT
         8FGRsDkRgkZYObaEPSmzz+pwlmLfQOUP38H4lr+FERZEV6NY1+hmOtwHMWJqkhn+fZsF
         LYYmlkWEOj3nG8b64rplUECZpSDQ+6qC7U9VlioNTW2BQORBqxJftAeYImr4PyRvd8xb
         pyZwA7SOH5ht/tmqTAtRYnzjIglOZhnMxzza3jS+20/ATAET3Nkdff3elB2ccNuohAhn
         sGzRa5moHKUAouEFZrEhkbhUeMhSLzOA1kCAx+j3CtcjcWevGfPHzE5xZoIAIUeagHeg
         5mWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=WFTrHxF7;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id t16si401712edc.0.2020.09.16.04.34.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 04:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0c3e000ee699b54c433a91.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:3e00:ee6:99b5:4c43:3a91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 892AD1EC0136;
	Wed, 16 Sep 2020 13:34:56 +0200 (CEST)
Date: Wed, 16 Sep 2020 13:34:49 +0200
From: Borislav Petkov <bp@alien8.de>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Marco Elver <elver@google.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200916113449.GH2643@zn.tnic>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic>
 <20200915215054.GA1104608@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200915215054.GA1104608@rani.riverdale.lan>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=WFTrHxF7;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Tue, Sep 15, 2020 at 05:50:54PM -0400, Arvind Sankar wrote:
> On Tue, Sep 15, 2020 at 10:49:12PM +0200, Borislav Petkov wrote:
> >=20
> > (Btw, clang doesn't need to add that "xor %eax,%eax" - panic() should n=
ot be
> >  returning, ever. :-))
> >=20
>=20
> I think this is because panic() is varargs, and clang doesn't support
> gcc's -mskip-rax-setup. The normal ABI requires the caller to set RAX to
> the number of arguments in vector registers.
>=20
> https://patchwork.ozlabs.org/project/gcc/patch/20141218131150.GA32638@int=
el.com/

Ah, good point. Found this in the ABI doc:

"For calls that may call functions that use varargs or stdargs
(prototype-less calls or calls to functions containing ellipsis (...) in
the declaration) %al is used as hidden argument to specify the number of
vector registers used. The contents of %al do not need to match exactly
the number of registers, but must be an upper bound on the number of
vector registers used and is in the range 0=E2=80=938 inclusive."

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
clang-built-linux/20200916113449.GH2643%40zn.tnic.
