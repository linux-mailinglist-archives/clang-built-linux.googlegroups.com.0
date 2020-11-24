Return-Path: <clang-built-linux+bncBCIO53XE7YHBBR4F6X6QKGQE6LDDZSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id B55732C2E78
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 18:28:40 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id q4sf4234778otf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 09:28:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606238919; cv=pass;
        d=google.com; s=arc-20160816;
        b=mK+nIPPtvyTWaL3uHf2hVR2wi2MpJGWZvl/ffKEsqcGfddU3N6pbdivc9PmDBkqQb/
         MIT03ivVc3l3j4RLuR0hVE+lmVgULk53sIHCaz9gM4Nw+7eZqjtJk04DnEfQ964DDEz3
         wGv1y0x+V87TPfLxRu4Qf+wd8dvUXqo2DNhoELmyymUMGQHO+FUkfYY6JR7MEfHmwAH+
         /FBluxPgD/lx8qbtSfgRj1rG+BjhZrpD+Z14IRpRQOE8i8C1zqH1Q9cqhN+RkoCFM+yI
         pJbp3ALu/5UdAHhOOpoxJgxe7cG2J+et2TAASYntdJ37thP/T8R+CxXpQ2gpSEuNpt0e
         Ctqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=OLGzFnS93BvTB8eJdclO3npWHQNEjlwW701SK5RK2S0=;
        b=VQGsXSEQLwb3YGpQyCTc3SyhLBEbbfYAkqU4WcKGjGiUMqDCWvcidjxpIfnkvSZKAe
         CYYMl6VmdwIcW1Bp7fdtackkO+4UOmvOy6ZdWxrRPoMvkAzOfwOn6lCMayaps+uvM6jM
         yjLgNFTnrgEexVu+ApGkivdM306q9pvhoFqDpl66MUUEsr3DwDCnGbWySXW4jQgXHo1N
         4AsDf5BjRp6v8gcEvIo02pyAZhWi9bJyUZnxIh6sxql/05xAO5Gvzmjr40f3Aa3nIYIB
         rC+umOQTZCXw7RSY2ias1PzNo+l9lySzDIoeQnsfKiBWpspcG6qky869hBrELWlHd9rh
         SQGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SPczykiC;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OLGzFnS93BvTB8eJdclO3npWHQNEjlwW701SK5RK2S0=;
        b=beKWlVngttO+6wkW08EwM9XePoi4MheoqXMtl+ZO6UciLbamlM714/Mi+TTDDeF7/C
         iWN/6VjlmySTLA2WTKOrllUPoWZo3B+eVuad8tHdZRLju6thsB8Fx4PFTxQJtiNYUmZa
         ouU4U5Z8E0FyzfvjBJnJUnvgcabTPAy9ncqwBM/4YIdmQJ+DmdAbVUSOaq2jp0pWpdFK
         5bTBzAwZD0n5Hcy7QpKm09CUnGTOw5+l4yeI6RNLQnDCNgRJazwN+exF6yoiNsp61XWn
         SGRMQYQHpdYcEqTZPAMhLOQBQHO/ssQlNNYAO+wgui7HW9ZscxYBISWLj52UNw1ynVX5
         Y+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OLGzFnS93BvTB8eJdclO3npWHQNEjlwW701SK5RK2S0=;
        b=nCuDFxKqYYTieY7e2FGCqQE14TBpn8EV3o3AmKKC+Xn5XmjvLm1jRG7gbMPT45k2Wo
         +g5V1rRzlJCSB7pJulZS0dXTGrb657ETedWv77kag/2CPyrerUBtaV4YIjPul4j3BoqF
         rVuWGJkJn1H8liCrAfmgjNu62Qcowqx9oq8f+KoqVANqU269mtqy3qW3Ft6O9DYcFBbD
         FiFhDdc8cRe9vcsVXmShFBD2c7P57nyjvNbGewcOuyyYSkoA10egLDWTXQ6qS7w0BfbV
         Afg6qhdI87jjWp44d3ql2W3B9UJyxUJsw5RmdcdqbId8aBNparkkJnyaVvIEtxL+sl5J
         aEXQ==
X-Gm-Message-State: AOAM531XgygwBxnPQf+itJs8HXpMX6dZmetZTjiuMRICqAxjhXFw+ew+
	Lc/3CEYuXasI/Ag+hgLTsUg=
X-Google-Smtp-Source: ABdhPJwC5Uw6XBmoEHPVA5asCQn2U9YkZLJ708h1egnihzb6EZ1/TIRu0IBt4VnyTlSMnAzY/Nv1vQ==
X-Received: by 2002:a9d:62cb:: with SMTP id z11mr4253091otk.191.1606238919653;
        Tue, 24 Nov 2020 09:28:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls4532329oth.1.gmail; Tue,
 24 Nov 2020 09:28:39 -0800 (PST)
X-Received: by 2002:a9d:3be3:: with SMTP id k90mr4391751otc.50.1606238919196;
        Tue, 24 Nov 2020 09:28:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606238919; cv=none;
        d=google.com; s=arc-20160816;
        b=mO+CEKFLyPv2Lb/lYnysqhscWuWqQGA/UKFR7Zec5UegsaEkaGbScHolsI9MyCo2JB
         DTlYwRkqiC90UZJ0JSBEEvTrdtrNPMrYxx8XVmAgVcJm5mjR9a4zOLq7HeEHvezo7gxe
         wWPLGNgVVqeXcemiSEbjBf+Uf4AjEVO63K5PbSAYaVUYQfpxlUpNDioEg59XuM4uZyds
         RhT4S9iUzrSeSW2bu/rFpL8q8jfDuHkaN3f1zWvj8X6+q+Az1dbqTP/Cl7mEUBPuJ4tK
         VM+tu0ey8TQ3M+htmU5yWLknIrdiAgarBbrw1wtAHCuzkUF/kGSNEQmGcTIHZhKpJQws
         2m3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=d9JcnTG5JgeooMfKrRunrCMwnGXThm1f4yiaLwKkVO4=;
        b=mQ22VO8o+B3YTKdGT801ict+BzNN9Pjf1afrSaPEtJjkLxrXLBuo7JCpWEd4Su0U8M
         cnJxXRDUg52/i5/dvf2x7W7XSTB5JlfmQdUMSsnHNMImnfarDYyLwVurRiDGGXJDgFME
         g7M0OkkPph8zE+OCERfJL6FaMziIsjro82/pWnEwMIqau6Qf+Uu3KWvYjyUbMXlECFuo
         e17N6DPIkdkFjTMplm0dqY7F6+L/MzRSqp8WfyZobxZ1riPfHCfX0C1xgzJC62inwnqm
         kBISEH6DQYxtuDdy2MuCPYysmIuqeAik4KPT3X4mZhSIZxMRwU8YsBhZrR/Wb9KdeW1f
         3Avw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SPczykiC;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id o26si1737426otk.2.2020.11.24.09.28.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 09:28:39 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id v11so16591218qtq.12
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 09:28:39 -0800 (PST)
X-Received: by 2002:ac8:7518:: with SMTP id u24mr5429666qtq.114.1606238918661;
        Tue, 24 Nov 2020 09:28:38 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p128sm9158424qkc.47.2020.11.24.09.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 09:28:38 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 24 Nov 2020 12:28:36 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Jakub Jelinek <jakub@redhat.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Alistair Delva <adelva@google.com>
Subject: Re: [PATCH v2 4/4] Kbuild: implement support for DWARF v5
Message-ID: <20201124172836.GA346213@rani.riverdale.lan>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
 <20201104005343.4192504-5-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201104005343.4192504-5-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SPczykiC;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
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

On Tue, Nov 03, 2020 at 04:53:43PM -0800, Nick Desaulniers wrote:
> DWARF v5 is the latest standard of the DWARF debug info format.
> 
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support.  GNU `as` only recently gained support for specifying
> -gdwarf-5.

With gcc, using -gdwarf-5 even without -Wa,--gdwarf-5 results in
considerably smaller debug info. gcc does not seem to generate the .file 0
directive that causes older GNU as to barf.

Should the assembler support check be restricted to CC_IS_CLANG?

>  /* Stabs debugging sections. */
>  #define STABS_DEBUG							\
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 03c494eefabd..c5b54ba51060 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -274,6 +274,14 @@ config DEBUG_INFO_DWARF4
>  	  It makes the debug information larger, but it significantly
>  	  improves the success of resolving variables in gdb on optimized code.
>  
> +config DEBUG_INFO_DWARF5
> +	bool "Generate DWARF5 debuginfo"
> +	depends on $(cc-option,-gdwarf-5)
> +	depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +	help
> +	  Genereate dwarf5 debug info. Requires binutils 2.35+, gcc 5.1+, and
> +	  gdb 8.0+.
> +
>  endchoice # "DWARF version"

Perhaps this can be expanded with some description of the advantages of
dwarf5 over dwarf4?

>  
>  config DEBUG_INFO_BTF
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> new file mode 100755
> index 000000000000..156ad5ec4274
> --- /dev/null
> +++ b/scripts/test_dwarf5_support.sh
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
> +# in binutils < 2.35.
> +# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> +# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
> +set -e
> +echo '.file 0 "filename"' | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -

This also actually needs --gdwarf-5 to really check the support for the
option, but older versions should error on the .file 0 in any case.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201124172836.GA346213%40rani.riverdale.lan.
