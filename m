Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBSFC66CQMGQEIYNBJKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF0F39D668
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 09:56:56 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id f22-20020a1c6a160000b029018f49a7efb7sf2449365wmc.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 00:56:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623052616; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2n7nbXslL6Qq61tPzZL+OFZxL8P0zxRXGT6QIRRtJSa0nqudRyaERDhGQ51kV52QF
         VcMmicR2bgaJUf/h81fR/FX8Pf2MEMIMh+WW34KFi5IC0sp5Nn4NRDAbsjutmcwepggV
         ucvrN/qYiU2dY5mfR9gGTJaHCM4em1tOiFpeYBOn9Y7fIAqCbl5yo2JMZ7YGK+jXeup2
         nc/YUMa+U28AxX7uyyGRC8LOFA1SAmSnR8UYZ9QSyH93OlaGLIwvhVMLsjUv/mReR2p/
         BQRx4dM3hBExs5FmVjZReRfxnf++dm6lq02uJcZs43HWbwz/Qdo+qFvqg8k3E9Ynqzzz
         B/mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=NR1FTXaM9wFjGMwDlVhoFOMkEWMDNX4kNqPeTv/BLHQ=;
        b=iIVlgqBHi9s514oCF2sfE6pEiKLjSJ/OuXJ1O1nuPdnMzo0GYjsKGZCljCWevr9FqQ
         DQGjAEOMFaIexbPfq3rMdfaneMASV0kXCi/GqqMSArnKp7JTKuwi9R0tYys40dnX2eJN
         HCbd6XZuatO8sZBIh1dUe3HAaT9YzVQQ6rsxjDoCv4sbHO5FO9UnrnA8gESrbfcOdDE9
         jraoFHTV2NBzmq3pbZf2mz9KBj1f4GAvRZhHy9hiAPoLS7DfCFo1YYtVRN1lcEePF8eG
         ToKvo8SzIFQOXlfjAS/Yrnbf0LX+nyZoJPHQMAjCM9lTyLMcVi0GgGM6vY6dnO0q+3DK
         k4qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qVRE6udM;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NR1FTXaM9wFjGMwDlVhoFOMkEWMDNX4kNqPeTv/BLHQ=;
        b=O/weyG/DrI8zLK2NlfOc5luWcwmk6NaXqDNrcZs7cQWJCbxh88T72g3rTImDIT1Tj4
         LvA6j390v7Ho/O9OWuNW9/hexT4fUCKoE5pLanQkzSIiiPWrl5hWmpqDu9zPO5342XQm
         n2jGCA5GB57ib3OGN/0o25dcs+kyB91zpCO3iBwKY5PZZ7mndIP0iqgnuxEU3a4rZmo2
         c0x203hN5vhtODmPqWuaNGEvZu47IOyVdmGBmdcoS9Zp6wvHe4Vq+s0JgiPdT7Q1qIM+
         Xrjymt1UTYin2VFosIcenl6+L/WyKGkYZJSnH0btjex4WhA1UdN5WchuV1FguulMzYww
         Rc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NR1FTXaM9wFjGMwDlVhoFOMkEWMDNX4kNqPeTv/BLHQ=;
        b=YqO9hCTRYK9HQibXEmXXw641RHkToBxfGeoqp7L4phhBOYuYkyqw2kGo68nGBdZIgb
         BtNNDgVB4aKZ1UKISC4KnwO4aX0w7sKVjgEIV1Uz94A+2Rh43GhP2WB03D+bP30T1Uon
         oGKbFiTu5mUstUPzBie2PnOvYgcBsvIY4yB8azjJQ+78tU1CJ7d4XdqLJvIyFgSf9j+N
         KbZ9yO/aJWKeb+KzPK5m1Ic4GW0wD+ZCT3xBL800Xwmd6gbXPQ0VbDadzZskplgZH3j3
         uXjHOmg1tzbVvu8x3UQIXWZ5YGSQ3ne6U6G9MO54/GWiBzWSMITCJrlOPiNVRU0kyOKv
         uD3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aBlgfDxxqcGz2jBw8bjxJb0WtA76yDX4bK3ZS7Bstjh9o/lnV
	r6lnjEpofRX1fCnkr8Nqqc0=
X-Google-Smtp-Source: ABdhPJwGuItERbCojfjEYb8gOGxKINehzMWJiBXm49CwWZ8U791OKyg9b2AwS/A6soafLyAllRA90g==
X-Received: by 2002:adf:f54a:: with SMTP id j10mr15295646wrp.383.1623052616616;
        Mon, 07 Jun 2021 00:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1d0e:: with SMTP id l14ls28713wms.1.canary-gmail;
 Mon, 07 Jun 2021 00:56:55 -0700 (PDT)
X-Received: by 2002:a1c:a516:: with SMTP id o22mr15744567wme.136.1623052615780;
        Mon, 07 Jun 2021 00:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623052615; cv=none;
        d=google.com; s=arc-20160816;
        b=I+4kLPM+TeKCdrMSzwOwFOI1eA7el8eS6PzXbmWrp0t0tGZ6AUK1FZMXGatpRh9OeA
         bCrmQ5gLJWuTnhleGa984/d9/UYUnnkFeej2q36xLvbVrXZiSFD/df8EubPCiydu8Lfk
         CAy5Q5BzUUX1CMWKBd7J9PCuMnVDNI3QjmiaLyPjLf2O8GnU2sITdlWHdgfi5jQfPDR0
         hO0LScxAZmbk7le11SPuH27qPjAUuMIKDnX0SH8OrI30xt1RikaGKoH74M4+Uc8M8FQA
         9FgsQCKCGorkylr9I4tFfHmSnbi/EsJJqSGDee/4hryWCbidVQ5tAjhEN8pDtpIq/8nz
         yarA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=RI7d+MKqVAlBJe+aXBCqULwS/BkkdRxtZ0dH5H9X58I=;
        b=xFHzHENJZt1XrbBWWId6n19URyBWPhvNwj09JcgCHB0DG/lf5G5h3kOcE2uMDdxeX+
         IGpX30AQWydOjbVIVerJ/YmaakH7T9ZOa5j0MheClLRDx8n4lTkZ5PBpQVxh0MIVL4di
         Txz8Kusc+cbtE4ON81GNcn8hNC/5xDquUFHZmhvVKRYBbJFBPVfoPL4CPV0wqZY845NE
         uuL9vcAZZtTiZ54yZhWj2B01hpzGXA/I9X8KPmUIsHXYT/m7K6uNej/GqOUnDeE6HdVb
         LKiTx5CEuRg+OY7tjN+sh1DDQ8cUzkK4r577h90sOUeU8yiyWn+XMcH/1oOxGikkY9Zd
         ix9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qVRE6udM;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f23si19529wmh.2.2021.06.07.00.56.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 00:56:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lqA7u-00FVF0-OO; Mon, 07 Jun 2021 07:56:52 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 00A803001E3;
	Mon,  7 Jun 2021 09:56:48 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id D06CB2CEABC0E; Mon,  7 Jun 2021 09:56:48 +0200 (CEST)
Date: Mon, 7 Jun 2021 09:56:48 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=qVRE6udM;
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

On Sat, Jun 05, 2021 at 06:58:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Sat, Jun 5, 2021 at 3:39 AM Peter Zijlstra <peterz@infradead.org> wrot=
e:

> > I think you've absolutely nailed it; but would you have more informatio=
n
> > or a code reference to what you're speaking about? My complete ELF
> > and libelf knowledge is very limited and as demonstrated here, I'm not
> > at all sure how all that extended index stuff is supposed to work.
>=20
> The section index field of an Elf{32,64}_Sym (st_shndx) is 16-bit, so
> it cannot represent a section index greater than 0xffff.
> ELF actually reserves values in 0xff00~0xff00 for other purposes, so
> st_shndx cannot represent a section whose index is greater or equal to
> 0xff00.

Right, that's about as far as I got, but never could find details on how
the extension worked in detail, and I clearly muddled it :/

> To overcome the 16-bit section index limitation, .symtab_shndx was design=
ed.
>=20
> http://www.sco.com/developers/gabi/latest/ch4.symtab.html says
>=20
> > SHN_XINDEX This value is an escape value. It indicates that the
> > symbol refers to a specific location within a section, but that the
> > section header index for that section is too large to be represented
> > directly in the symbol table entry. The actual section header index
> > is found in the associated SHT_SYMTAB_SHNDX section. The entries in
> > that section correspond one to one with the entries in the symbol
> > table. Only those entries in SHT_SYMTAB_SHNDX that correspond to
> > symbol table entries with SHN_XINDEX will hold valid section header
> > indexes; all other entries will have value 0.
>=20
> You may use https://github.com/llvm/llvm-project/blob/main/llvm/tools/llv=
m-objcopy/ELF/Object.cpp#L843
> as a reference.

Excellent, lemme go read up and attempt to fix this.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YL3RQCJGIw9835Y1%40hirez.programming.kicks-ass.net.
