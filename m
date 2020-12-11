Return-Path: <clang-built-linux+bncBCIO53XE7YHBBWP2ZL7AKGQEZDZYEQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D37C22D6C82
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 01:29:15 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id a200sf1626061vsd.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 16:29:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607646555; cv=pass;
        d=google.com; s=arc-20160816;
        b=psHRjEKeL43i1axkO/sbmuLOkBKPRHLttyPW9iMZ1KIMnVb64vJ7eWPMcZYNI04dma
         8li2p6I0M5zLT01Q8CSbDggg5RErFIgxFVp88KSUA5uAIcJ6CP5odbTBCNxyz51eKaeW
         0u7Rb72O9SxWMm+WjfP80OYOMbByVpmyBnO7XQsyXNeKldE3yxMawDzHBm+WgMLqWXz1
         524j3XeiJh+uq2j+VHuK0AyxnqbRKXLC23hafU4fKpDKnn99ZsqCgxVyIgvQ6ddB3ct0
         8T6nxXmPdGtlwMilk3IXUEFJPfgAzyEHr2cmKaNI56wPYIpFCSzV6YAT5ZdKiPXnXtC1
         PI3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=loKVZSCCsi2t7pHqanmBhu515j09x8eadvsJNOlfVMc=;
        b=wh+iI//E3af58IdXN/0RVNfBCjZaA88eQvs7PdWooP9NKgT/kEMV4PW7bNaLRualot
         FTjrpBopmsJNLZVDrLz9ebjku6oa2qfnuTKEIY8mOMRGI74CEL5mMDP2c1vYnWNVTpYF
         jD4LHEUIGiWprqcTZxhY+r9Ygo/8eszbj3yudthdcuYMx++n/Vseu1bRik65cnvDbCtn
         MjQnQNqt8MsTYp5RFAp/PlR16bd7LawQYFVTH9PBWig9p6806TbCmqwVIfCmIGAU0nyy
         twcMj1YkhK3Ob0XsrXOmrca5EbRLnHDjZarA/P10b3y9+4jWre9rWQsJlZP/g1quzo4A
         9JGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JS2eCDhe;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=loKVZSCCsi2t7pHqanmBhu515j09x8eadvsJNOlfVMc=;
        b=JM6mPYW2tULajpeMBuRMYygzY9qscPTg1kVaJB7vaGk02t/2qlhAaSDZHGIpaz/c/U
         imb55J/brJ3M3F/6fqcOPy3B4dj1TBpMSqgg0qY55MJ2lfG+cl5JAUnuX3/0CIbuOU94
         gEND5rh9Fao1XWDhw+D4pjlzH0ahGqA5UqJ1ul2FRLOYushT9Ckwzf70RDyBIcrfhXUB
         Sz9YJ0GUALY+rd1uhyKgezSTlazUwBRKphtfkPe7XqHN4QSuThAemSBxzzVb66flXyOI
         HG+kwf1/6gfNaLk/nj2/f+VUbfUnnFEufPvMD3kYyJ/xJCoMhk4pdbL/4Nc7AdIKViu1
         WiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=loKVZSCCsi2t7pHqanmBhu515j09x8eadvsJNOlfVMc=;
        b=RZSBW4QEaeECb+jeM4cNaBP/HONbSTR6KM0cJwcB58iIKRGBkR/HokLf4W6PlssxR0
         vXjNG7VJFKZnvOQsj71C9zzRQ+XZbj8qAy2d6a966LIWdl5m4XD4YK8h8IjsSMgxPif4
         Lx+niNv8HnPH+YSZPD8vnYYCiQBQNM5QasZJ2+ObgFHh8hapgD1oXNSHYu4n9mE/mj54
         uWUiZtyXUhFVvH4JnexrqmaAw66j2eDIze/pNHEm0q+JH/hgortOx0a+Omv8bpW1sk1u
         MFDNNk/dLXJ+hEb1bmkhRNesj58Ca6ToyOzF1wuEZwhkRtKIAdxk/dNL9zZwOgH8khS8
         zm9Q==
X-Gm-Message-State: AOAM532LWvF9As+cVCLo7/4FA7zXCFA92pr/dGPvA28jHKKq88uL0uxW
	N/lIx6ptDwYrGPUsBybgv40=
X-Google-Smtp-Source: ABdhPJzg3vI9R9ekAf9ADVS8rm6taZMaSne8e/tKW1uUo0Vpc89PfJF98G4UKCShdjAm3FXa24Binw==
X-Received: by 2002:a25:4153:: with SMTP id o80mr15065152yba.198.1607646554114;
        Thu, 10 Dec 2020 16:29:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:19c3:: with SMTP id 186ls3417225ybz.7.gmail; Thu, 10 Dec
 2020 16:29:13 -0800 (PST)
X-Received: by 2002:a25:7349:: with SMTP id o70mr16060119ybc.282.1607646553716;
        Thu, 10 Dec 2020 16:29:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607646553; cv=none;
        d=google.com; s=arc-20160816;
        b=o5gDXfQsMhjghydHirlppYAtLLD+gTnHvUv439Q0CLQO6R7Fz1aXaoHBoRHkYhn8a9
         SdnNyv13MVamzmpxXy4OW9Cu5zoqwDXf4dV2e+JXMNwSrQ8gzPUxhuaXsRooifc90rb7
         ZXzJYhbAhwb4V0J7z91d2CUkxBepheDRPf9Xy1YDe0hPBc/Uykq7DGQ5aCGv0B5trWEL
         LV26ewEbLODRDQzx4AOStxsligP0nIjExSjYisr1SQ0uAP+XOuz7+TweAsA630nuSH/E
         pZMGCCr0fIu2lAj3Ym3oV5W6YW44aUviCTYmbYEPASj0kznWFoDq6HNc201KZLY5WC0m
         jVyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=Rmf7XBQbFrTt9I7PMZkiNuKnWeN4JeUQNc3H8Tyzf/U=;
        b=CyABLIey+gZ8WVN7JYc7EfkK+ZDzUggELq+tf/vBLljAYqYhubac7K+VdXaOr0L+Cb
         vudh9gadlqYaVnBEB2bU/kIqXFIIhKQexth+DevuWRnSU23njJ2Tgog+n0431l06258+
         WmGDfJz38epZjJoJ+QJagnwKVlDJQxjA2DzzSgxex9jI6bmEEplDualJd+8j9ujeE8wf
         1zugQs8txCkM0ErrtUqZZ9ZhiXg4m0jRBp+UYCzpOHfikys4w50dtxDpcVhb38y+ehc3
         6a1lcVYcxsiisBTSep/BjNLAPXk1koPWsL0+bAVjJhdi5XoGOeJlzhmToqFStg2gReLG
         fytA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JS2eCDhe;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id r12si492037ybc.3.2020.12.10.16.29.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 16:29:13 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id a6so5280634qtw.6
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 16:29:13 -0800 (PST)
X-Received: by 2002:aed:3025:: with SMTP id 34mr12349937qte.39.1607646553220;
        Thu, 10 Dec 2020 16:29:13 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 187sm5646082qki.38.2020.12.10.16.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 16:29:12 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 10 Dec 2020 19:29:10 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Masahiro Yamada <masahiroy@kernel.org>,
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
Message-ID: <X9K9VrHkcgMhG4zc@rani.riverdale.lan>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
 <20201104005343.4192504-5-ndesaulniers@google.com>
 <20201124172836.GA346213@rani.riverdale.lan>
 <CAKwvOdkGvLrPr4pHi4LKCF5t74+wencdy7r38d3k_4pC9pQYwQ@mail.gmail.com>
 <CAKwvOdmEVM67v8PqPWHP-VyGTkQpkWv8FdOTbxQ-7ebvSummMA@mail.gmail.com>
 <X8psgMuL4jMjP/Oy@rani.riverdale.lan>
 <CAKwvOd=SbbJptBbv3y39_ZCeTbO0vb_fa5ZbQQ2LUquegzLycg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=SbbJptBbv3y39_ZCeTbO0vb_fa5ZbQQ2LUquegzLycg@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JS2eCDhe;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842
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

On Thu, Dec 10, 2020 at 03:18:45PM -0800, Nick Desaulniers wrote:
> On Fri, Dec 4, 2020 at 9:06 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > Why? Does this actually cause any problems?
> >
> > It seems like the options for gcc can actually be very straightforward:
> > you just need a cc-option check, and then add -gdwarf-N to both CFLAGS
> > and AFLAGS and you're done.  Adding the -Wa flag is superfluous and
> > carries the risk of interfering with what the compiler driver does. Just
> > let the gcc driver handle the details.
> >
> > Clang/IAS is almost as straightforward, with the only additional edge
> > case being that for assembler files, DWARF 2 doesn't work, so the CFLAGS
> > is the same -gdwarf-N, but AFLAGS gets -gdwarf-N only if N > 2.
> >
> > The messy case is only Clang/IAS=0, which needs to check the support
> > from the external assembler, and needs CFLAGS of -gdwarf-N and AFLAGS of
> > -Wa,--gdwarf-N, because Clang doesn't pass that option on to an external
> > assembler. This is why I was asking if the assembler support check can
> > be restricted to CC_IS_CLANG: nothing but Clang/IAS=0 actually requires
> > that check.
> 
> Oh, I see. Yeah, that might be a nicer approach.  What should we do in
> the case of gcc < 7 though, where -gdwarf-5 won't produce DWARF v5?
> Maybe that's ok, but the intent behind the Kconfig check was to
> prevent the option from being selectable if the tools do not support
> it.  Maybe it's more flexible to pass the arguments along, and hope
> for the best?
> 
> As a gcc-5 user, I might be surprised if I chose
> CONFIG_DEBUG_INFO_DWARF5 if what I got was not actually DWARF v5; it
> does violate the principle of least surprise.  Maybe that doesn't
> matter though?

Even the current gcc documentation still says "DWARF Version 5 is only
experimental".  If the user wants to try it out, I think it's fine to
let them get whatever subset their tool chain produces, as long as it's
not completely broken. Your latest help text does say that gcc 7+ is
required, maybe add another sentence saying that gcc 5+ only has partial
support for some draft DWARF 5 features?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X9K9VrHkcgMhG4zc%40rani.riverdale.lan.
