Return-Path: <clang-built-linux+bncBDY3NC743AGBBEVE534QKGQER2GLRYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id BABE62480AB
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 10:32:19 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id 11sf4544549uao.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 01:32:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597739538; cv=pass;
        d=google.com; s=arc-20160816;
        b=0jfCsmS2MbbV1lSf2ntUEuJMcayHmwHGoWzz5y7dFjtlsjVGQ/jhzHwX+wUOU+hCHN
         SM4M0ct16aIQx1ev5+R6bBB434ccof0EjdP7VIKWi+vDFP2S+f7Lw7Edrcw7gocBGfNh
         H+ZsgPzgaIfcuQEBMsN0ux6zhy719T4Lesfvom9cnaAa5nwWX0amQbw3CiKc1G2it+02
         w6+X8ySCDcBupLENiU2wjIhqghlc/QmDra6+U0IPgEVouKxOR8OUysAUfMdDV4XQOV4m
         ila8/v5nebcfWBYux8PzaBdiAeo3IM63mPQfTQxUl2Bh4LdxFLWbUIx2GPxKYa4XL+ED
         Urpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=B7ZqM47asUu5jpsIQBP9wjdym8+N3nKxyfPYsGcMciQ=;
        b=sn4quoSQ+e5GMiCMWdTPHD27hPtoV+Yne/Dj97eLSDChh6+10mJZGkZRGzo5xR2Nxo
         p4qCbW6Sct7OyJkOL44XLgJRjjagSqYYd5TscEjMCqU1gz2GXt5Pdd2+bCo4AA6zBWSA
         wjMy1R8wTjODmFupMx70k3LpRxd0UtbUlsKeib06ppCdk6za65CpxbsfI22tSLxpWAHh
         KuafRPw8VMFqnIf2LtJ+hBI1RDH0w9DQ3k/Htj1X4hzHsObmVK4I+y5d7pB4ru35IRr8
         QZJeaBmxuJ1mfMCZQEzwVlVkDhDDRmsBddooDEQMetAxYEQaIM9Be56nv5tFjrdZQ/d3
         m6Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.156 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B7ZqM47asUu5jpsIQBP9wjdym8+N3nKxyfPYsGcMciQ=;
        b=LZb/kd+HjOcF/G03lybCzNN/OhFTHH2uFK7aTbh+Iwvrho/DmIyRI7C7ySnNsHjr0c
         cd0JzU/5/iv33SS4B/EdH19aMa6sJVzCou2x/j0HFe8iJduTCk8T47pwXlT9ny0vBWbJ
         PS1Gqq5A5a6su/llUNgQWHefBUglvPg68HzppFjpJJ12VkMco7dy+pS6ca1Q77pAdXCI
         EQHQhXYrMi9gCAm45TQs1uTp08S07iZRBWQDGqrCETi8FRrQHeoQzJRIyo3cHzWFLCRl
         yFY9p7AE0RPk+eLiNtJUx1fTplA/R+MCo+EneY4j3akiR9yG6W6HWHNoK2ASe/SIEw6c
         hsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B7ZqM47asUu5jpsIQBP9wjdym8+N3nKxyfPYsGcMciQ=;
        b=MRwjRVzLEd1NPDhaH63di1dkO/3fbH8J/eKeZ8Lgw9ny5ppp9RnwHSd9Fg4M1zgT7t
         g/fBWWxqL9O+Nzv2cLMJDc2kpi+YCMvPSYV30NsYr+ldT2FdSJNXFAr2n3p+YWdYyUTY
         l38Q5gv27WCpPzt0gKvAl9q8Jr+0BP+FsAmykaeadzcc9mKpJddY1AMqrMymrz7ghDqO
         jnDESX7RqDacpC50Rb87If7gnDShN5G1FiCxm1GAEKakT82r7SSIIjLXgjiaPJt5b/dn
         eQNN44zCcpOkSyVXWrDjVzqBd7mLHm/Xt0MZ9CKtBiZHY29tb4aFji1qOiYIBd9vFy+L
         RNLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+oOogkBtXQgmcRIYulrZ4jg0+025KENxCL7LtrreXmOqpb7HL
	AwG6WsKsg+yuN2Ts4kmJQ7s=
X-Google-Smtp-Source: ABdhPJwEEt42b10dvIwzbBn8Goo2TTftfSl1MOp2EvDRFXsIusQcRaRYxAZPAMqxybVSf/rew6vwyQ==
X-Received: by 2002:a67:dd06:: with SMTP id y6mr11055642vsj.101.1597739538834;
        Tue, 18 Aug 2020 01:32:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:308b:: with SMTP id j11ls437274uab.3.gmail; Tue, 18 Aug
 2020 01:32:18 -0700 (PDT)
X-Received: by 2002:ab0:6797:: with SMTP id v23mr46348uar.35.1597739538536;
        Tue, 18 Aug 2020 01:32:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597739538; cv=none;
        d=google.com; s=arc-20160816;
        b=s3dm4DH9W23bjsgDt8HlMHc5tw/jlzwYyon559nYNJ7LyOQGxLWZLziHqtUs+3/PDu
         WEbN+7uPk2e9Po8wQXAyS3sH4uWVMa6rXrduTGkqpiy/zTfYc3Mi/L7duW4Z35VIL+ZM
         gOjIEm/ztXUWy44b/PKXzb1a0oTDI4rps1k2mzQMgUzqvto7C+r67s1pO/zYSLaoh+PW
         YOB6AqPJELoA65AVy9vIg1PWwo+gNmWFa92meI9NrBT2Ss7UstnbFltA+h1aXJGM33v2
         JDyR22HaMkcOVvLti5ZIyrfJ3vrYBRccBrO+Hsqa32uorq3Fq3gL8NFsTUDnmClmqEAW
         k6GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=cUjZiK5F2zDGuQf3C8IhgO3CI6NIciNgxqwShQBflsc=;
        b=NkARWZdhGNwWjsbU+OwfNxbOCDSHxdfNyCCWNwmW2hr2w7glPnyjBV91tnq571JGch
         1CDOItBafXkdjkxY1G4Ud4L+ISESlaFM75YfMhLALp39gIRra+hpn7DW8yA4zYibYpO3
         ook/CGRKs6zrVt1g5aPIvPYgGsgrpYhyBdEEbUedEaKQGgzcB07FCvLdtw7uvPflqXrD
         yn+2y1qb1YvLJh4Oq9JrMj8apWdZMLdat4Jic49ZvOlvy+DgwMVoUCS+HNH6UDQTmTDQ
         l5kKzBId7ntLaVIbLGc9yvc/bQg1Klea2cSKZ1NSy2sav6YbVu4c6fQyrp7zq+JxS9nq
         GYaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.156 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0156.hostedemail.com. [216.40.44.156])
        by gmr-mx.google.com with ESMTPS id q1si1464624ual.0.2020.08.18.01.32.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 01:32:18 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.156 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.156;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 92E4E18029129;
	Tue, 18 Aug 2020 08:32:17 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3866:3867:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6742:7576:7903:8985:9025:10004:10400:10848:11232:11658:11914:12043:12048:12296:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:21788:21939:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: brick48_020b1d72701d
X-Filterd-Recvd-Size: 2975
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Tue, 18 Aug 2020 08:32:14 +0000 (UTC)
Message-ID: <3ae89ad82dca2cf0adeba9d7d07f3c76ce577c39.camel@perches.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: David Laight <David.Laight@ACULAB.COM>, 'Nick Desaulniers'
	 <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, Arvind
	Sankar <nivedita@alum.mit.edu>, Kees Cook <keescook@chromium.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
 Andrew Morton <akpm@linux-foundation.org>,
 =?ISO-8859-1?Q?D=E1vid_Bolvansk=FD?= <david.bolvansky@gmail.com>,  Eli
 Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, Vishal
 Verma <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Joel Fernandes
 (Google)" <joel@joelfernandes.org>,  Daniel Axtens <dja@axtens.net>, Ingo
 Molnar <mingo@kernel.org>, Yury Norov <yury.norov@gmail.com>, Alexandru
 Ardelean <alexandru.ardelean@analog.com>,  LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>,  Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 18 Aug 2020 01:32:12 -0700
In-Reply-To: <77557c29286140dea726cc334b4f59fc@AcuMS.aculab.com>
References: <20200815014006.GB99152@rani.riverdale.lan>
	 <20200815020946.1538085-1-ndesaulniers@google.com>
	 <202008150921.B70721A359@keescook>
	 <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
	 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
	 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
	 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
	 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
	 <20200816001917.4krsnrik7hxxfqfm@google.com>
	 <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
	 <20200816150217.GA1306483@rani.riverdale.lan>
	 <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
	 <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
	 <77557c29286140dea726cc334b4f59fc@AcuMS.aculab.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.156 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2020-08-18 at 08:24 +0000, David Laight wrote:
> From: Nick Desaulniers
> > Sent: 17 August 2020 19:37
> ..
> > That said, this libcall optimization/transformation (sprintf->stpcpy)
> > does look useful to me.
> 
> I'd rather get a cow if I ask for a cow...
> 
> Maybe checkpatch (etc) could report places where snprintf()
> could be replaced by a simpler function.

You mean sprintf no?

Reminds me of seq_printf vs seq_puts...

https://lkml.org/lkml/2013/3/16/79


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3ae89ad82dca2cf0adeba9d7d07f3c76ce577c39.camel%40perches.com.
