Return-Path: <clang-built-linux+bncBCFJFL7RVIKRBTHFQKDAMGQEKOY3PMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id D85913A143E
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 14:23:41 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id b3-20020a0568303103b02903ed1990d4c1sf6367730ots.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 05:23:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623241420; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4soEEfsMXkBrlC2apu9GhrIgowohY0uzbfOyWF/87VW9VWOwEc6HVcyG1N20hApDH
         Fm/FskDKuhh3/N1n7G9pGkKgxrYbig/RNQRX107e+mv098YF5OoBclYUAHafmQUBsZKc
         vsDxQizlypPtui1lZVS8SNC9krupgM5908pVIywWOHBhwbYDkTxYZF1lKkSW8pI4i7Se
         lBj56D1k8rioA/yn//zK1QaNgCCzq5EbBWymJSSkxklMSC+VmwzwnQ60iQ8F0R/3TEuL
         iy69aEaZT8ZSXBZmCxFoxGW7ydbHL01wfAV6zT4eOOOAlkngPiZUef8s2K+kOdSIqCoO
         8D6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=/V4wQdEJ1jVakG4rOYolvsLE72+oZglysYybkcnxR9k=;
        b=by5MH7LvYrC5oPrElZODgIDWO+nP22M7PfCWllc10UANCpQKTHi1ftl58nRDjB+/Ag
         ZWD8n9fwDf4FRJkRoWjRf0JU8v0K4q1j4X3slPmzCI3i69CZDKb4H5oGHYFCuOENKVKV
         LKnHIoLi+hnV7BIowCoocPnLwUozKaFIGGiPYJDgu+wAqZr6r6sTNjaF5aM3JnM5D6At
         DatQjEgMA9w7QQ6C7m0vel8V0s4iYnan+1fxYBQH5LuhySRUnBFsqYDUwDSjUBQbwMTS
         DK9YaRqTReEyNpPYSAQEfgEyT69+0KW2dSxK5Me5cmTjunB9Su1gMHle7P+FqFZSMZ+Q
         z/ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623 header.b=1KnkowiN;
       spf=neutral (google.com: 2607:f8b0:4864:20::62f is neither permitted nor denied by best guess record for domain of lma@semihalf.com) smtp.mailfrom=lma@semihalf.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/V4wQdEJ1jVakG4rOYolvsLE72+oZglysYybkcnxR9k=;
        b=ZnNEAZ4jeKarhHLpkbObLVvCRCiNZnGISAaAQkE+zYOza3z7/f3RqUSiZgrRNaEBQs
         96HWTjWm1EDedN4DFT2rOfEwRkegbVSLDyTA6cakYufAwABtVfIiC7yUiGXY4zFvb2Lv
         nbDLT01QIV9fjcBqjPjFDgSKyxsWD/VDVF6TgI0o9nFZyeYmiVrO7r/GwCuyVEeOp5yY
         FoioRKX2FPxEhE+lNkgH2V0SVb1Je/08vKGDjWmjWASXPKljhqRjcV2TvS1MjL5fa4Ne
         tcYHMwdouDIcTtpueqgjvvkexWlebh2ioIGH4z89UyHiw08daH9+MFLoe6YsN4oASUQk
         lZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/V4wQdEJ1jVakG4rOYolvsLE72+oZglysYybkcnxR9k=;
        b=fgjVFYCOmQ+PWIAZqsHlh2FidQ7Vl9w+BFOGa3I4815IbjRgiFUP1JoFQ+rNhNRrFQ
         dDxT5envFD2upDZ2rvHgWe5ZaNxzDOAs8+f/JfrPmteWJpmSJnzbpFoOTpBF7HhwhFSO
         Ia1G5nUa6+doqEFuZaMh8+5IeRxfRhPn275Ipg0ZMyAd8R38CtGyELQrZRlws7pLIDt/
         xlvmlNevotGi5ObkKWg8Q+cYPm9lNVd9uuDpYYQwFRtvbzboxeEzXlv2Ib59Cru9tR82
         RPJkpJ0Ny79Jxeob445V69bBYDKbkMz5bXwIbslgcFCpxFCcxLlX1hKTTLKtluV7I61p
         z+vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TSmfIi8eePPXKoFvft3LeU3BhIQJeP/Nif2cvY6/BImObGKWX
	xqfJ+OKxhmqIZgCwCFGS40M=
X-Google-Smtp-Source: ABdhPJzx9fyP7QWzqhPBLtOmf9KCRFuZ1zlfhunNGP6LUFA8ozagyqbs5Inpra/ofP01pr9Fq8sR1Q==
X-Received: by 2002:a05:6808:14e:: with SMTP id h14mr2617368oie.151.1623241420659;
        Wed, 09 Jun 2021 05:23:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:14c1:: with SMTP id t1ls767518otq.0.gmail; Wed, 09
 Jun 2021 05:23:40 -0700 (PDT)
X-Received: by 2002:a9d:6a98:: with SMTP id l24mr12327994otq.360.1623241420254;
        Wed, 09 Jun 2021 05:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623241420; cv=none;
        d=google.com; s=arc-20160816;
        b=DryssWofA7VO9qsvtzUOxFJ2mDqT7FNSEdRGQbC1stTsauM5RpTnVvvofAy8Dj0N1d
         jsrcvrFZqEFl37bdbJva2W7C/0ohpN1Kkp7UVCJoOMjrJ4qqpjjMFO1ewfIARfeJahLp
         5BabOlfZlyzjhDC6mB9KzhMrk0yYhsHeIfgf+Ds77yUFHLGCQkjFSXJ0gvnAYUrGuws9
         2kS7DDUlNh5X09l05xlsqPFX0CgHwaVgN3cEIY4BclVW0IjWGRSdw1mu5RK13DOdn5NT
         MkqpEXf797wT8WIQicGGoOzpMllYmu2OvzmjKymmmvcNqhU0ET/dfjsjvIpMOlB03HIc
         YCPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JUxPE8wCUjEtv9Cm0b9jhJOj/m0Sh9161tmrSowqyJQ=;
        b=MdVuSLBaFb4zkH1Qhv0Qk6ui/oyVZ3+2rBs7nrbBF4rG22DPSxpiN2HJTcaRPD5FD6
         mLLdfyf+CHfQE+rCJfTNP9+RFDwD2B5y7iYpjQkiQ9GRrjcsubu+8+EeZ/kZdaVSb6Ys
         OOz4U/rJpsfAYBnTTyAPWRBcCxd9fLObeowAFjFVzBwMUXHZioxDdsuhwxwr5vQfvmBq
         CtFA2Oqjipqafu1qmpjSFs6PGOxRckJ5d7Mh5Wq4QNHUHg8Ye/E5ypD5qyu3vxNWac71
         fP35ZCRfsiHfSD2HRRgwSuwB/JaT9DY8mRtDrXBkjGaMz7erRw+zdgXVfX4g63T0CwDB
         3DQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623 header.b=1KnkowiN;
       spf=neutral (google.com: 2607:f8b0:4864:20::62f is neither permitted nor denied by best guess record for domain of lma@semihalf.com) smtp.mailfrom=lma@semihalf.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id a25si2459975otp.1.2021.06.09.05.23.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 05:23:40 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::62f is neither permitted nor denied by best guess record for domain of lma@semihalf.com) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id e1so1019175plh.8
        for <clang-built-linux@googlegroups.com>; Wed, 09 Jun 2021 05:23:40 -0700 (PDT)
X-Received: by 2002:a17:90a:2d8e:: with SMTP id p14mr375378pjd.131.1623241419590;
 Wed, 09 Jun 2021 05:23:39 -0700 (PDT)
MIME-Version: 1.0
References: <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net> <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org> <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org> <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
 <5dd58dce-c3a7-39e5-8959-b858de95b72c@kernel.org> <CAFJ_xbp5YzYNQWEJLDySyC_bWUsirq=P03k8HHW=B4sH0V_uUg@mail.gmail.com>
 <YMBrqDI0Oxj9+Cr/@hirez.programming.kicks-ass.net>
In-Reply-To: <YMBrqDI0Oxj9+Cr/@hirez.programming.kicks-ass.net>
From: Lukasz Majczak <lma@semihalf.com>
Date: Wed, 9 Jun 2021 14:23:28 +0200
Message-ID: <CAFJ_xbodWTQQaJ-3yJ4ZQOiTFFXo6M+cn_F0p157o=80BwrQAw@mail.gmail.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>, 
	=?UTF-8?Q?=C5=81ukasz_Bartosik?= <lb@semihalf.com>, 
	LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com, 
	=?UTF-8?Q?Rados=C5=82aw_Biernacki?= <rad@semihalf.com>, upstream@semihalf.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lma@semihalf.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@semihalf-com.20150623.gappssmtp.com header.s=20150623
 header.b=1KnkowiN;       spf=neutral (google.com: 2607:f8b0:4864:20::62f is
 neither permitted nor denied by best guess record for domain of
 lma@semihalf.com) smtp.mailfrom=lma@semihalf.com
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

=C5=9Br., 9 cze 2021 o 09:20 Peter Zijlstra <peterz@infradead.org> napisa=
=C5=82(a):
>
> On Wed, Jun 09, 2021 at 09:11:18AM +0200, Lukasz Majczak wrote:
>
> > I'm sorry I was on vacation last week - do you still need the requested=
 debugs?
>
> If the patch here:
>
>   https://lkml.kernel.org/r/YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.=
net
>
> does not fix things for you (don't think it actually will), then yes,
> please send me the information requested.

Ok, it didn't help. Peter, Josh I have sent you a private email with
requested information.

Best regards
Lukasz

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFJ_xbodWTQQaJ-3yJ4ZQOiTFFXo6M%2Bcn_F0p157o%3D80BwrQAw%4=
0mail.gmail.com.
