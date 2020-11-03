Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB6MQ36QKGQE2OUMYLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6618E2A4F50
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 19:48:40 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id p17sf13567759ilj.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 10:48:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604429319; cv=pass;
        d=google.com; s=arc-20160816;
        b=BLIZwFucjt83AdZJtfrbyGWNGtZFsQIRQX8yUQHjAbZkbpXOpqur7Zo3HqGk5Aicsy
         U2j0VnapygcwM7Z3oDkT6kpQMFMMfJdbsYgPMtQXpzLXOOTFYY5z61OUCC5KCL3JeQSW
         LLMq2eK9BuKqaK+MF4FpTAvos0w/s1inddZoR++/Z8wT0wEGc994Cg55jP/4ulPhs74m
         GSHnYBnaiXSJfGl9br7jX7gd9caPq9VinDHe2lR6yt7dRRXPPJKoEyEejQNTKr/Fd+nG
         6BKnFtsDdMeafxoFFyrPxE261qcIrAthPfcLwgsegpD8HkgDI5YMvOqStMYcg3ylDfk4
         3fug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=35Vd3eOsFUKqZvU6qUHvZOI+g2YyL4hsdbNUzG+FGvc=;
        b=GeheWa6/wzrazqpFSCPxwS7Uk7HsKnNQc68QENQ25chdt/MRjf7Z7ZKuZa+DCwfHk+
         cy3iEpDESb/Z9mf+D6/oSccH0wLVeV9Zj2PTW/AHCdOfSmiRu2QZTD+D1NGzokOF/34j
         JE7PPHTyVrrr9DJLJkLRn2tVJDy998iEuwszXp1di1KlMQxJJKQ3t6o6v3dcMqSnlTZO
         eE9Nzn+W9fH+nvK4CRjeauwnZjEXs738ey0AoT9MiFyV1QMAhpUx67SZOxSRjqZ725MI
         72vNpe+QartoDJU8diWS0NYCQBK7pHhQL/2E/e+CklMlj9svgu2LijvVJSMJHur8Ovuv
         XNLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rTsKDoME;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=35Vd3eOsFUKqZvU6qUHvZOI+g2YyL4hsdbNUzG+FGvc=;
        b=q3gR4X8sJ+8iZwdIoJPVo4RCRxiuzf35soaA0qTFoLIJ3iEfSp8f6gyBca1oTMHABc
         Y/+xARFPay3xEKa78mbTqQ2Fgqh/SnahbibNmmvZaGgJdoINzZz5KPFCFvCFswCTYX5d
         N1V4R4VDOFxtAzRVKWKeVo6m29QVQUvxt6OvNoaBDmVFNZaup/qvNAIt5I4DJRmZkvgo
         AVssH2IjYu0E6emdRyLpKoqFqqA+NsL11XBEjOczOw0zFwmLdLM7tPvcN3hGOw2cW+xj
         15FRs9IqHDe/z+07BM79LgVJ8MdnzE04u1V9Cnp5pnYzRNxQ8Beurz1gS7ki+I8U0Bgd
         KOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=35Vd3eOsFUKqZvU6qUHvZOI+g2YyL4hsdbNUzG+FGvc=;
        b=N9AwD6wuMQqa+6Hpt79RS+NveS/mXGmaNVGBqxHvmfOI1haYCtLejctkrVhlcDPQmt
         c4fcLBSyozx9SfLnBxt9t7JGAaNvLrBfi1tS1E5vMr3YJ8tH7VtFNpv5VcMXzGlGivHV
         NTVuLYfVzD8jt92yZGuvm5dqmYw47nW/OD002gLd61o9vv5wTguWnKVX3zWWi7jPxmYw
         2qk9KvR//oMOe3UkSdRm4btWKfhPow5INwO6OFlda3fAf8yAtFrchQ0JKtyGkbeqVd9L
         B9/v47id2q8qlQNZ6SlOtkmnZb04xcTqUruft56WkBQGRuvDEpCdi8cSfpvLDMegVKzf
         urPw==
X-Gm-Message-State: AOAM532qWptktkxGupM9StAr9pj7Esxu+5wB7sl8mySeguXERrNvoDZW
	D5UrqBBseTbiu3bNxEe360E=
X-Google-Smtp-Source: ABdhPJyCbqsmzqRLVxMlCoo39zbMP8KlShqpmcH3eyYJ1TD8lKFRvXoxrh3RagXkebx2I0ED9YUnoQ==
X-Received: by 2002:a5d:991a:: with SMTP id x26mr15145342iol.13.1604429319392;
        Tue, 03 Nov 2020 10:48:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b47:: with SMTP id p68ls646523ilb.5.gmail; Tue, 03 Nov
 2020 10:48:39 -0800 (PST)
X-Received: by 2002:a05:6e02:1247:: with SMTP id j7mr16006917ilq.304.1604429318986;
        Tue, 03 Nov 2020 10:48:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604429318; cv=none;
        d=google.com; s=arc-20160816;
        b=RndlkpX1auiX/A+mdy3+FSMxSYzn2muDo6glelytfuXg7E1pHT7j38a2HLQhaeHpMX
         o2gKKiytmviOb6F9O41NoxASklul1liK61HK27PZs5KPtGZse7fq3Derx/tv1rplVUvw
         bfUulSzVQ14FuWDbyOfTeQ7TzvX0DS2gCU/HBucTbsD6i1ez0CNRLkM4jziwyr/uHCMa
         0TZtsXNp5H6/kDYu0VQUs6O2hRCV47b22knrUht3VQWz2+NeSJsDONCCfua1oPYAL8Md
         3FNgyhnbZ1+DIMdH/mZJZRxbYgn+0MmD5xGjfrYOD1Omrbzr3KPTu5THMkXAkE53hLR4
         n4JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5esmZTIDSPwFgm48WzjRwJqywpsnP/cE9qQCx6CwSYI=;
        b=Fp+5J7dvPFNi6G4yrhRQTLYCQo3gxyl0/aUek9wsQQUS0CxbOjW1SUHFnmeOzqMKEI
         oDmngCTUJ38gbHr3xwF5Rq3KfkrTk/aCtvQnrORG9K2PI4n74+Q21b9knoi/HyyNRoWG
         FdX2lK6onCIXitTJMAHCraqKkVvqZr2P2pcb82rm9urcy0/ozZUCLiKYmaX2YOtr+1vm
         RGiax5gRUz/dkLZzAE/CpocCkxuKaMaD/VqdoRtSh6JEeLqHUBeIzo6E64I8Q7NqNbAW
         danybNUP78cnYF7UHh8hJNDHniYiykedSEPYGLto++xFDbiu0MVazB99WSZ5/ru0zFi9
         5AyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rTsKDoME;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y16si1005720ilk.4.2020.11.03.10.48.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 10:48:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 13so15039342pfy.4
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 10:48:38 -0800 (PST)
X-Received: by 2002:a17:90a:d486:: with SMTP id s6mr622007pju.32.1604429318312;
 Tue, 03 Nov 2020 10:48:38 -0800 (PST)
MIME-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200902225911.209899-2-ndesaulniers@google.com> <20201103045521.GA58906@kernel.org>
In-Reply-To: <20201103045521.GA58906@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 10:48:27 -0800
Message-ID: <CAKwvOdk-bMx3Jt6=oN=PHqRv_tx5cF=9cVmumazb4vMNHdj5Ag@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
To: Jarkko Sakkinen <jarkko@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rTsKDoME;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Nov 2, 2020 at 8:55 PM Jarkko Sakkinen <jarkko@kernel.org> wrote:
>
> On Wed, Sep 02, 2020 at 03:59:05PM -0700, Nick Desaulniers wrote:
> > +#define CLANG_VERSION (__clang_major__ * 10000       \
> > +                  + __clang_minor__ * 100    \
> > +                  + __clang_patchlevel__)
> > +
> > +#if CLANG_VERSION < 100001
> > +# error Sorry, your version of Clang is too old - please use 10.0.1 or=
 newer.
> > +#endif
>
>
> I'm trying to compile a BPF enabled test kernel for a live system and I
> get this error even though I have much newer clang:
>
> =E2=9E=9C  ~ (master) =E2=9C=94 clang --version
> Ubuntu clang version 11.0.0-2
> Target: x86_64-pc-linux-gnu
> Thread model: posix
> InstalledDir: /usr/bin
>
> Tried to Google for troubleshooter tips but this patch is basically the
> only hit I get :-)

To check the values of the above preprocessor defines, please run:
$ clang -dM -E - < /dev/null | grep -e __clang_m -e __clang_p

If you have multiple versions of clang installed, you might not be
running the version you think you are.  Particularly, if you're using
bcc, idk if it includes a copy of clang?  If that's the case, we may
have to work out how we can support older versions of clang for the
express purposes of bpf.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdk-bMx3Jt6%3DoN%3DPHqRv_tx5cF%3D9cVmumazb4vMNHdj5Ag=
%40mail.gmail.com.
