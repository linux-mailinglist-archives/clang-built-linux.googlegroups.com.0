Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBVUY637QKGQEMIAMUQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D80C2F2E49
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 12:47:35 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id i4sf1018102wrm.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 03:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610452055; cv=pass;
        d=google.com; s=arc-20160816;
        b=NBZvE14+EIOfdaveP7pyTGcNu94FkJO+Ibm2qmdbf2WYH8lUILqkP7NZ6eWDlJtYrm
         fy51yXtLfTaUpVMvC5ZN1Bm1RsIxDtKvqy5vBOilbLpM22FjdeAaNRQoIfWDHlRWOGHZ
         qKuXRHhN2H3VItG0GlSaQ3gC9ClIDpAv6aPe76PxLsUIF2GkVMshk2vcg7N76wvtmyEL
         OlGr6s8D1eXAzroOvNC02fibFVpQMiFmeDtQy02fY8IBpzqWyXoV5jb3U1e6FS4jRyrc
         m4f3Qe1iBZmRzCS4C5unAw359KtjMH8kvgxgrcQXP2gj//RZwMb46TmVNtl2oULlmQHB
         5lcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cV0F7mA/aTelrBTb/67LkX4qTw0mV7OFwWqA49B6qeg=;
        b=aRxsFWMnq6P0aunWZrOwkb0gpU0C08bKj41zz14Q84CR1V5c2B5oyqwn8w/a4gEkZy
         S/FB5GCv0j9tGwhYIh1jUzdVE4/IEUuJaiOisX3mmv56K65jiTJ4NJWWJ0sbyTN4QArJ
         FkUabVpDeXcepa6Fa+sA8yQfde1n8J6W+2CIe/tA8Y6uIocRQF9wXkU8paBhMc1MTNTk
         nVK+duKqaYF0YXdfu6aD8U6NBttfFPtULtK9iXjULrLsuupzj258Q4tcuDYFfezglWfC
         A6TfcHsTmMM2nnFAjdtAFDTCeYAN+yMDzTv+J9FapY2AbyuH0ku3DEZkFxLICS7277aq
         iNLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=SvGQcJ9Y;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cV0F7mA/aTelrBTb/67LkX4qTw0mV7OFwWqA49B6qeg=;
        b=r4RahQhbA6SdjkaB/9yZbtRkhQ+adJdkqvgQ1Ny4qnNjGgeuw9JXzhbEPLNGTaZonF
         1TJPVE/ofgcVE46PUS5koiO4V10AQNIkt9GZ42XQO8Vm5X8DHmQc5j8PfACklxS8oMKq
         +SRK6J5sV8PI4IStgJWc964XW3XSi/ZQlTKAXelLDBSVif1t4JQ9Rkyf53audT5EOUx8
         UVHVxbctsd0xCC40uGDD56bTqRltVqnOeZMhplriFZdzlxPeS+c4k9WBPZB8ZBEoJxB9
         ZolMigK/IGmynBho5bnHyguaGRBSPBbfJB4S6W41gN/uYpEnnUMmSQ3sEyMA9r3HYFBS
         Todg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cV0F7mA/aTelrBTb/67LkX4qTw0mV7OFwWqA49B6qeg=;
        b=buSr+v3wXUwdXXH+1KUyyXHEbNtiah0tHhVChIdctNkaKEl+JwfHTLbO11ZPPnraQE
         Te9p2vF85W2ThCP61leY0n6l8yUM5CFE931qQQW+yf4FsojvFMpZnI6raNH0yGW+EM87
         wCRCfLB1HmXhlfYs2M5AbSrbmoGwPXe5Q/smnKM9ssa8b1aG+sQe+sdqPgLfo2gimclb
         QFNSu9Z/qjkzaZowKEDc+zc7ikPBdR1ciz11OWe8YQ8BS3pOsngazLGuwPHXXTWigWvr
         xfqcOpvRYk5eM98H0trhxo14YLquYZVG6/0viGlkqcoVPf/6u9hui6o6uFOOnuxsoNqm
         bAiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MOWLcgJvGYDat8a+l8Vr0z5dTO3wzdPK4E6heu0B/al96sy9E
	1OzhQaDVKkVtf4sG67Vl2xs=
X-Google-Smtp-Source: ABdhPJzFUv2Lg7mSvqA0h+6pkZuT1gHnImsDwEjbaM9Xe02gtdQNCUajRe3s834s2DKGurpkVl8s3g==
X-Received: by 2002:adf:fbd2:: with SMTP id d18mr3988778wrs.222.1610452055029;
        Tue, 12 Jan 2021 03:47:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9916:: with SMTP id b22ls1139804wme.2.canary-gmail; Tue,
 12 Jan 2021 03:47:34 -0800 (PST)
X-Received: by 2002:a1c:61c3:: with SMTP id v186mr3202401wmb.146.1610452054298;
        Tue, 12 Jan 2021 03:47:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610452054; cv=none;
        d=google.com; s=arc-20160816;
        b=Eyiiz+/tqbELJB9idH8gMXg7X33Fcg5aRw0YPHwTLbz5y8BglETsDW28hif1VqxEi8
         yornRcBjYCieBKNcDDalBzkA8z2yo/IhTjQHcszZhcUH0EW7NnfQqf5/aKN1MT5Cu8j8
         7sT2u0fVceKb1ycLafIJGhhITn1kodUNyQ+N9e3X87v06YoVxtlKxmXtS1fIEDC/DQkB
         I7c+HORma83RtwNtYNYfh1fKs4CYOVVci3COV8Ad0HOHkHSetLB7qQ35WpBjND8A8t+z
         gAZXIKf7RRpG/j8aZ/Zg8FyUYO9nIm7ZDkEcAtCieIz+0epxPepSyLqlYaMkZ2afs1BK
         Phgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9ZHI8nF07rcMZHB/X81pRY/jX50+4Tbgi/vtsI2OQw4=;
        b=D1tqS4MzkUQhrqr5lu/4JEpB1Q4n9bOenuml6zriN7aQ79xID3jZImvhDfc5P6T3gR
         xcya8qsX9wHuh3Nz5v6xx818gt44yVpwbtZAnx9UfmjJTWETE/cTiysrtB3Wrb/gEI4v
         KQaNtLDU+GIv/p5Xlnt9/Bh8VSON4sWk1lPoHbfCxG7PHu0Wix0oK7x7j7ZBVkm45hXG
         Xia32cDiL9i7HLW6CHRa5pZIhm7fv0w6fMP2P6GuKx7z9sHep45rQciODTz4bGLWbX9F
         9yw0jXFV1piCo59vfMrcibHZI5rkP6TFcLSu6QdofeJNHAct0oE9r4ai0/QBOw3mopvi
         am5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=SvGQcJ9Y;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id x12si147233wmk.1.2021.01.12.03.47.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 03:47:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0e8c0026b5c8bc02f060b7.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:8c00:26b5:c8bc:2f0:60b7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 9613B1EC05BC;
	Tue, 12 Jan 2021 12:47:33 +0100 (CET)
Date: Tue, 12 Jan 2021 12:47:25 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>, X86 ML <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210112114725.GA13086@zn.tnic>
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
 <20210111203807.3547278-1-ndesaulniers@google.com>
 <20210112003839.GL25645@zn.tnic>
 <CAFP8O3+uEE4Lity-asyFLN6_+8qRUD3hgcZVapXwk6EfmGM+DA@mail.gmail.com>
 <20210112010010.GA8239@zn.tnic>
 <CAKwvOdmGS97e4Rj_oW+RnkYAMjycTFQiiPJAfCvKTdxgv2KfEA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmGS97e4Rj_oW+RnkYAMjycTFQiiPJAfCvKTdxgv2KfEA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=SvGQcJ9Y;       spf=pass
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

On Mon, Jan 11, 2021 at 05:13:16PM -0800, Nick Desaulniers wrote:
> Unconditionally. See
> https://sourceware.org/pipermail/binutils/2021-January/114700.html
> where that flag was rejected and the optimization was adopted as the
> optimization was obvious to GNU binutils developers. So I suspect this
> will become a problem for GNU binutils users as well after the latest
> release that contains
> https://sourceware.org/pipermail/binutils/attachments/20210105/75dd4a9d/attachment-0001.bin.

Aha, thanks for this.

> I can clean that up in v5; The section symbols were not generated then
> stripped; they were simply never generated.

I'd appreciate a more verbose writeup explaining why this is being done,
but written for outsiders who are not necessarily toolchain developers.
So that it is clear months/years from now why this was done. Something
structured like this maybe:

  Problem is A.

  It happens because of B.

  Fix it by doing C.

  (Potentially do D).

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112114725.GA13086%40zn.tnic.
