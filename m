Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBBN2SCDQMGQENF63TJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 896893BC842
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 11:06:14 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id d17-20020a92d7910000b02901f00ad0c690sf10346897iln.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 02:06:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625562373; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbtjsyOks0bLyYAaY3RVCTYcbpr5aIlc6iDYZpa+DfXFLqwzmvnwLfipqtPeX5YI5T
         OIb9zRDklf2Bu9g9KfO0oa0pbAA2kN0mQgrBqlEjv21t1Ok63fkH7ditQ9/xcwswhwkX
         0tWT/8Pke9KdSKa8RM+jXbH5MnU8F595cLzptxAscNuhiJeHdA7Cw1Yzlc8GN323Uojl
         URZgXPbOz8y1rqezsILHjT7GqrEqqWWpq7OU8svf8JQdM8r7wdWwQU9tV/DBx4FkewBQ
         GkJTvHRQs+zFLcpCGBUPT5q2Y09jYZS1Meps9/qmWQTaPF9SCVnDSoAZDmaKYEN1wBBJ
         ZHzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aDIDA03wz3Av0R+e/OVzLSjsiEI8zUjDfNuQG+isLXw=;
        b=KKafExT6oTpMe/n4CjykPzuddZFadMdvlzXjdtarjW05jdLLk2ADn7dzoNQDLeOSJ4
         biJPTp2vJJkNLvAoTbbELgpp0LDS32nBCa/ETF0h/AtehYbs5ckzqm9lHg40G4oNAg1T
         7Wsvo279qDRr2PAqBV/X8q1Fz+fItnev4x1dG291bs10oWRGRHPdkphYO0tmih3iN5/R
         Kd9s3oCZFo/K+RvfG9eSb18AebJTiSPgmxvaJ4JEyuU/YvebDuFqQ7M6tTd0aLJJd/xs
         iNSfCnloNDBHZ8yBhf7RBGXT2mvN6FKD0EO7oPsV/JLdYURZrxReHtgNwa4OUK2W807J
         Kbhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aDIDA03wz3Av0R+e/OVzLSjsiEI8zUjDfNuQG+isLXw=;
        b=shCKerqT/FW04K9Ob9MAjlPeePaYxIqx7grqWQWxzscSopiv/8eZAFJ5sZS5haKvHh
         zOmzitUvwnEr42U7/Q6VL104KXSPFHKxyZaaInWeilzCReDT614q4clKkbCBMHz6ri2f
         19xQqMm4GoJoxbYgQZ9scNdaz5iA6lY/ofKgbySKYhR63x52G6qSv3uOByDq7j9QaxpL
         UT5t0mG2sA2Xk7C/gubMGaRwFPRRxdc1dKsdaW5qZIE+7TVVOFBmO7FYlhtvl/wOELFM
         Npa21GkRsE6uUXl9uhejVVnwZw99PZb2INpJEz9cmVvsmRt3jprJu4lwTyh6z7yE+Ydt
         eMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aDIDA03wz3Av0R+e/OVzLSjsiEI8zUjDfNuQG+isLXw=;
        b=hKk6yh5V4haUCSPVV4jpUItILnpO1UxEgAI9s7Jgc4Pa2W9U+2Sy1Q9Ee3X7Xmz1Ks
         w6pET79RWFZZ0UyFHhnfTU5zQesXIAqqpmTZBKuvO4ORkticzcxkvcQ6T+/ajVrDtFTE
         EUvJg+ojyrL5zPOL2m8dSOUqiXfaOnyfazeHGd1MwvVuktJojwPJ/LxRkWJLN8L0irM8
         nFQ1IHpG+KF7CyQN1OpJqM8xHETB4iQd0wR/uSQlrV9lykyc/bo7MWhvXJbFlryui8jn
         HMfGm0LN3PlCfzYNHdsGMMD7uf2+gJhysORW4MnGF8rvsG2o4+aUWqnf4v+m9dkepyq0
         Gu1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zc6uIXUgXAay6+oaC8VpO5Sjf+SRYYMbHRiohBSQ93ataK6nS
	Sm/jfj/64QdFBu1iP85Tp7w=
X-Google-Smtp-Source: ABdhPJxYB+9jadEtKWw7FptoGK8OQcNoN0ZuLRUvUFnREP81PN75pqX1T5RzWn51Lu7rMGADsqyxng==
X-Received: by 2002:a05:6e02:dca:: with SMTP id l10mr13558790ilj.222.1625562373308;
        Tue, 06 Jul 2021 02:06:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1e04:: with SMTP id g4ls5400373ila.10.gmail; Tue,
 06 Jul 2021 02:06:13 -0700 (PDT)
X-Received: by 2002:a92:5401:: with SMTP id i1mr13888835ilb.17.1625562372954;
        Tue, 06 Jul 2021 02:06:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625562372; cv=none;
        d=google.com; s=arc-20160816;
        b=eBrFXwRN/ne8AYeklmoD9jyWTTkNZWwOzIZNk5fDtnn5NjGKyfPv8Q6DvJyxQwzPhO
         oCjQVxDtV5msaCf2jr2gwLse0mNoSv/76VDMFnU9vsuJ642tchoDlppSn9oXDwK0lCRC
         pMWoyPTl05faJInNdL8yr5khmkDx9I4+W0axnXskTCC6HfAT62M2JYiQjyH2sOiPy83v
         SKNBLACoghnwiYp9cSJfLtmGjIdUnN8zh/yJkDc4ZXEIjidvbtpgk9+fpLPQyNklYaO1
         Tx2Df0Uxzkx/BnoijA9tabd/jPvSi95zcgoGpPq0CQ0PR6rMfaO4FgsJkkMal2pVtINr
         4btQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=jh2GS0hdJs/o6tPx3T6u+lXx9D2nTbRUMzg4HkBiBy8=;
        b=ys29jCsinHJjqLYG5GbnQybfxOydLOHAsNy6eLVe3sUBVZVuHMFNxBDoTXh0hhUSYZ
         C1yhaKyQNIYrUjyL9oW1sjJ/EtClV/HV9sYAntBvLlaIMUMVWMXvT1WxRwRh9clDCT8n
         6+13b755OrA5+am083CfnCR85NAGLGoE4dXJgd0fPNPGtAPrfBby5wKsjO3EZ8YDsu2i
         L1nT7hdGihA7Z9kiZSSY2QUjMAU0nuZvJFjxPOsbXIebhNm1gcRzbZJ2nhHeYCqFjlyM
         eph8CRGborOVXmDXLIGpfgz5yQYF7mTMgvjqr28U4ZvOYbsz/39flyVDzU0DjOVcqC6T
         3bkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id i12si1318413iog.2.2021.07.06.02.06.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 02:06:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: a40910a74eb44e2d8bd1078bd86f64ec-20210706
X-UUID: a40910a74eb44e2d8bd1078bd86f64ec-20210706
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw01.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 947538566; Tue, 06 Jul 2021 17:06:09 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 6 Jul 2021 17:06:07 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 6 Jul 2021 17:06:07 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <samitolvanen@google.com>
CC: <clang-built-linux@googlegroups.com>, <keescook@chromium.org>,
	<lecopzer.chen@mediatek.com>, <linux-kbuild@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <masahiroy@kernel.org>,
	<michal.lkml@markovi.net>, <nathan@kernel.org>, <ndesaulniers@google.com>,
	<yj.chiang@mediatek.com>
Subject: Re: [PATCH v3 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
Date: Tue, 6 Jul 2021 17:06:07 +0800
Message-ID: <20210706090607.19421-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <CABCJKudYQV6Nt=Qq+zY=9JF1WmLVLnx+--3mJA9dkhLMhMvuFg@mail.gmail.com>
References: <CABCJKudYQV6Nt=Qq+zY=9JF1WmLVLnx+--3mJA9dkhLMhMvuFg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 60.244.123.138
 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

> On Sun, Jul 4, 2021 at 7:03 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Fri, Jul 2, 2021 at 12:29 PM Lecopzer Chen
> > <lecopzer.chen@mediatek.com> wrote:
> > >
> > > To check the GNU make version. Used by the LTO Kconfig.
> > >
> > > LTO with MODVERSIONS will fail in generating correct CRC because
> > > the makefile rule doesn't work for make with version 3.8X.[1]
> > >
> > > Thus we need to check make version during selecting on LTO Kconfig.
> > > Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
> > > for arithmetic comparisons.
> > >
> > > [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> > > Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> > > ---
> >
> >
> > NACK.
> >
> > "Let's add MAKE_VERSION >= 40200 restriction
> > just because I cannot write correct code that
> > works for older Make" is a horrible idea.
> >
> > Also, Kconfig is supposed to check the compiler
> > (or toolchains) capability, not host tool versions.
> 
> I feel like requiring a Make that's half a decade old for a feature
> that also requires a toolchain released last October ago isn't
> entirely unreasonable.
> 
> That being said, if Masahiro prefers not to rely on the wildcard
> function's behavior here, which is a reasonable request, we could
> simply use the shell to test for the file's existence:
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 34d257653fb4..c6bd62f518ff 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -388,7 +388,7 @@ ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
>        cmd_update_lto_symversions =                                     \
>         rm -f $@.symversions                                            \
>         $(foreach n, $(filter-out FORCE,$^),                            \
> -               $(if $(wildcard $(n).symversions),                      \
> +               $(if $(shell test -s $(n).symversions && echo y),       \
>                         ; cat $(n).symversions >> $@.symversions))
>  else
>        cmd_update_lto_symversions = echo >/dev/null
> 
> This is not quite as efficient as using wildcard, but should work with
> older Make versions too. Thoughts?
> 


I've tested this in both make-4.3 and 3.81, and the CRC is correct.
But I'm not sure if anyone would have the "arg list too long" issue.

Tested-by: Lecopzer Chen <lecopzer.chen@mediatek.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706090607.19421-1-lecopzer.chen%40mediatek.com.
