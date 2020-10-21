Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBHXJYL6AKGQESEM46EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F272954C1
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 00:22:23 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id x12sf2345456eju.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 15:22:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603318943; cv=pass;
        d=google.com; s=arc-20160816;
        b=GnV96SRbag3CYBZXlKC7b2VwZ0WDMB69BjQtyLOwDav4nbfwqbDVy9FvvcjWcHqyuW
         r5FOehCwaOCCqgwAHzJytkZtLW9mk0Nad7k461G/+4BnbmDnXsMt9ocMc2z5cALjlz9j
         +pz/Diad8pUG4suU3Zj9VNrqypnhxo76RZyEnEGyrum19iBUwW1yjggPd4W0VBupj8Gy
         e29M1+7OkcEIlqXF6ZWiuCzMDtPBnXIsZYR6N08gAq5rsMfTSeWu00qcQos7eiQex2qM
         F7+wnfWq6rozTkWInfV3+QZ0BWFDTRjFqOl0Z9+vgeNCy0dtzrdt5BT+c1C5A1osE4xo
         NCeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=a9iQolso3thw8t7PKI4VBdZLh4/qQlV3DPi+SP0yRik=;
        b=er1a6yj3Y75Nj9+3+EbayPwBUYFaBxUpntL7Q6dVG9dTJETtnh549WwvkqGdR2OuxJ
         MoO9PLWicJkALrkO64MdExkopcibRxErIqlVSX8vSVBHUPpU89du0fhUeBNgo1rVt3ZD
         IafvSk83GDP/x38UYjXnFjE5nghY5ZLse4/Lckh6R/1rb1ptYqxqMiIji6MVxIg4XwWw
         s1lT2Rax6P188kpbq0r2T5sMzV/VR9eNVKvilnGAM/qCfcUMN3fWoRdIiA7bQ9LQ0KNM
         zaVpuzF/SfZylIjnDjACvtC+d6uWNFivvZgsVe6A3ErwqoJyvY7axBXE4JXELxcuAmPk
         js1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=d9R7r7CH;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a9iQolso3thw8t7PKI4VBdZLh4/qQlV3DPi+SP0yRik=;
        b=N0HUtaT0CBtXplXIbGZz+xi/8/qHMT4L7wV5cfV+3Nze5eYfiL6I1ab5nx6bL/2gpq
         Ste8P53YoQbxmuPykIqSbtFjjGQzIsCFvrtzvWySotJpUyI9h1mhQiiIxpos+fdNTRFw
         T/zpq+PJC83Epmi1VT+9hFq69ZuzwTiQhs6nKXOwzkPHoJEYnFG8l6OZvuaybRB015lF
         U2ohXx/TIGWwAgGxsdXPs5GV0Hx6V2nZgrEfa+xowX8s6ETRUPNOSrk9DF3O5hWTOZy5
         YfQokcScPEdLAr28EG+rruHcORKqTT57Clsw4qwMwJKfMfAPAvS/jYyhgLUlcUCbtpk0
         FjWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a9iQolso3thw8t7PKI4VBdZLh4/qQlV3DPi+SP0yRik=;
        b=Tg2nGV0Lo4PCVKNTxrT6nK2ru28ESOM8wCFOyJF58p1zd+tiKugRcY2CbSmMsnDppO
         GZosWFSgfmRUp+RXr1A+ZDC4BGp+GzejhuDrvm4IruX5S/PB7zc53wgN7MxpGZvxwQJW
         uH8EBkNlSd4i+aYHyWZ6CdtgsWHFUDl4GlUok8Gsa7adWnEE765zuTssVaw3Okb9E8Yp
         p+ReOOPv2TSkWvE2/vsvr4KESb94824ujkeIbBbzFhaise+ccf5egEMWFXtPG9McSjiI
         PJ9KpnJM0X7en/Zr+F1pPYKwVGIySYdm2WRp8r2DQH1kTJUrGPVhyCDEZD9+iNARJ8WB
         u1Qg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ok6303OMBe/mKmnMYtdtfcgMM1z1AO397KmGzGN6PMMNF2QaR
	U2nzIDPHsF3f92bdZ2r5Uv0=
X-Google-Smtp-Source: ABdhPJw28OTd0qXirKn7+Vz1t69K2iLBdmUM1bFajWILSCQLaManPcQrQY+HD/QgUSt+plzcxVHC4g==
X-Received: by 2002:a17:906:b216:: with SMTP id p22mr5710652ejz.228.1603318942831;
        Wed, 21 Oct 2020 15:22:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c04e:: with SMTP id k14ls1107814edo.1.gmail; Wed, 21 Oct
 2020 15:22:21 -0700 (PDT)
X-Received: by 2002:a50:a410:: with SMTP id u16mr5291869edb.350.1603318941839;
        Wed, 21 Oct 2020 15:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603318941; cv=none;
        d=google.com; s=arc-20160816;
        b=zy16KIFA+abXtolYzN7KcW2kL2CUM1FTRS3HiwrqYfNZA9zSQcRO0oNZ8NR2KvpMRe
         +WYgICSArWsvHduUGZEcQ+IGgCPTa2V73tIsMrUz0jUXDpGRPeb8FfA3vMr7j9A0kYfs
         gkYW4tRf7kxbzeGS2e1ll3aqvaLlp26R/1YdISGTJeOzTsVT9JL3R86rUKjoXnNQuuZb
         2IBnh5MeG5aORtZZODIWDsfWmX5YA2QHAZzzTbTuMGDnnkieRaDRlzKRahOvGgXoBrtG
         69J6rH8NPtWzJxXs2yRw7LOs5ny/QtBDXs2ZrMK5KiIy0mpQlpixudTdMz7uDy9cQ+YT
         YckQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YsA4LxCD90qsXl9QcJzxXqiwck+t+i7IkKMRItUt+fY=;
        b=SAm56Knv7bp4kPFTuIRLPfOcKDWnmPLOB5aD7q60Il82ILMnMUOkfM1wfkmyftb/qY
         RhW0O6jWIeab4edX3s/FpMM6fOhIu/VeKW1iyolap7yyiTZh4zTLHDvJ+q420Twub+Zh
         8c9AE3eQMUwT+byR7v25Fesduv+CS4+2MKOClLbqBmhP7VGm7GwpxULl2+Tz1jlCIBuM
         2PbgDSBFxaXMpF2xBQvJYGFgto7XO+snFkT+BjEelyeKce4surfJsOhXW7PbzpKYkhaw
         jQuNXV2mQeQUP/EDbhI8d/OXDBN4/Dz/qRxJarYBPYZ4XR5wA/eS3T/BqYWZeMVaQs47
         Q0Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=d9R7r7CH;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id lf25si156278ejb.0.2020.10.21.15.22.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 15:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0c9a000363ca1046998683.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:9a00:363:ca10:4699:8683])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 28B271EC01A8;
	Thu, 22 Oct 2020 00:22:21 +0200 (CEST)
Date: Thu, 22 Oct 2020 00:22:15 +0200
From: Borislav Petkov <bp@alien8.de>
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>, x86@kernel.org,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
Message-ID: <20201021222215.GC4050@zn.tnic>
References: <20201005025720.2599682-1-keescook@chromium.org>
 <202010211303.4F8386F2@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010211303.4F8386F2@keescook>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=d9R7r7CH;       spf=pass
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

On Wed, Oct 21, 2020 at 01:04:35PM -0700, Kees Cook wrote:
> [thread ping: x86 maintainers, can someone please take this?]

$ ./scripts/get_maintainer.pl -f include/asm-generic/vmlinux.lds.h
Arnd Bergmann <arnd@arndb.de> (maintainer:GENERIC INCLUDE/ASM HEADER FILES)
...

so that's Arnd's AFAICT.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021222215.GC4050%40zn.tnic.
