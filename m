Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBAO6ZSAAMGQELMOEOGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9288930809D
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 22:39:14 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id z13sf4418485pfn.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 13:39:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611869953; cv=pass;
        d=google.com; s=arc-20160816;
        b=n1qzIMj7vuZ86ELm18hQTeewFjxMwqHgGnS17gUJF/maBkARRedU+mOzDYykw0ljHE
         VyKNsI+c0693KpmaQj+2d2jfvUBNkzr/WmNH+LrBSaQjx5a8dQ+Fdw8FUgwZ3r8beS4Q
         9Y14QIipPqymSNJwCpDf+QqH5osrv8/s3hF4VEDNxFJsnHGOyUfG0e6d8t5M97SEwrdW
         XCvWK2NYyjsKW+11+ZIa6IIxofBErpNygEJk9eBXwXbtrtuqinXg2cGCpU4CYYWRZLUY
         h7/XrVdgZjahbJIBdcOf6Sn7uCvUNbXR1aZjGD1jZuMLxQYKHH8gnkhfXhMwsdupsefd
         MOpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=n2Emgth8JDr6OtYp8rHJmmoCUpL4rnYaI2iLePQrycE=;
        b=yCIoVnswfEhC5qLpf5TZrjGLKY9c/bgX9YNu29bEUl1PepLOdHsq9YwNG20yyztRpA
         eIU5p8J3oHfOc5im5PcM8n35DQJSJ2ZI/8lCufW8ZsIfd7/oLbuVvTxD3SshOf71mUVM
         8FJSnmPEBEloR6xFZZTfrTzbwUpS+5pXBfy2p6VcRwj7dbu9KCFyHJosK72mGZq/EHnI
         1Y3vjwV1tuMSG974oEkvZVdIgenl6o09Uoyk5erupAAc19ILL4CmUez5ImddcS8GJHDA
         TZquu7vKfdjj9deEaYr38YRlqH8ZZV9tmkXfhgweHVTNiGkeASACM/PKoOw9WIuqfxj7
         nfmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cNJfHShS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n2Emgth8JDr6OtYp8rHJmmoCUpL4rnYaI2iLePQrycE=;
        b=AzIOwFfSTT49o4FSjLO73PNBy2MPIV/2emrxtm2wSghsuspClu/nCBLlppvZimjXCv
         YJb24s+eN5xzeun4UjUTao9QtapmnsIZyR9+5xk8RdtQiOwF5Q33p4nPQLGncnmPCIdB
         XOJqD8PO+/IXW7LwSZ6GuRWxIGxPLaFldRYdZdMOcOdlGi87Bw/vWAZni+cgcYYFgf3a
         CxNbOh6J5ZJj05+Yhcv10M+d5xL4NIrg+VbzMk0gJAxMbBblG68qiY8S57kLB33IXXvx
         3ThpO1Aps9usTvF6sjCuMJoAOmt7t1/0BprFjNApDlWGZpnFNHJPmGssGOlt1qD3YHLg
         ntVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n2Emgth8JDr6OtYp8rHJmmoCUpL4rnYaI2iLePQrycE=;
        b=uwnUiI48Yj9/CWRu7hYpffX9Oo/ndn3dmV+bYMRjjUqgzTFAbcWR9eo14WwxenVjas
         S3/eOhKn0C3dvojiSWpYhXQdAS6kzVSRWG44QKHAAR6LCxu8OhF4eDeiqDCJTdk/+3dF
         1tQNcwwPx+KVm6PxhoaU0gMJ4hCuOY03AItxkkWb9smFzPlnfEmAYkNjpFXcHF4RgbuB
         Y1G6HUT5UnCpS9rrHKrbV6Lz7Y5phHw/WdcnecDZIECBbtV5AJJKBZXCsaEnRRYekPx5
         TsqgYM0QvBOXg1LU2HnsOsDOp/FdJiVDUQhe9Z8hyQ6GflH4E3BUgKQAiCfJKZCdNNyJ
         zJlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n2Emgth8JDr6OtYp8rHJmmoCUpL4rnYaI2iLePQrycE=;
        b=EG8u4/PkcSvhe+HXWxMqsse6RAmvvqTUN5aF8yQpKbO8dZaYHeDBdq+9HHGblz1Voh
         GyaJk97+g92EPgtaHbwqFYTyZ7KdESdBTQY6OcnqPpq2sq1yhLfck14Ctrypwtw8LvPD
         C+gUx97cXjZc3RTOO35NwSZZzoc3W8bFRpUebf4atb421GVfVgGxI9ja8vkATA+//o9e
         F7LM4TxCT+IqqKavnIky08cTbLpeL7T3c2DFb3NUVsLUOPb6prWP4/XTOAa52sV2tzKc
         RropKzgzSnbx07KbjOkRpCNlmhxkoOevAR1y6HR7K+srWR6KIisay17tNtK8d9lU6aKW
         WeeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306ayA/DR3Huo/ff1uZIQbEXwKQwvMd4cKUAkcdXob2PP4tdwYm
	AxMs2VAQPQTysuVT4w1hRlQ=
X-Google-Smtp-Source: ABdhPJxLYS5Vsd3or0JLqr14IM8Ocpnk44gOkKiKPocGayWXOL3uG9m1B3vyZHkcDqnt3gXZ0CKTzw==
X-Received: by 2002:a17:902:e885:b029:de:abac:f9c4 with SMTP id w5-20020a170902e885b02900deabacf9c4mr1374657plg.30.1611869953357;
        Thu, 28 Jan 2021 13:39:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9f87:: with SMTP id g7ls3277984plq.5.gmail; Thu, 28
 Jan 2021 13:39:12 -0800 (PST)
X-Received: by 2002:a17:902:f68d:b029:e1:d20:8641 with SMTP id l13-20020a170902f68db02900e10d208641mr1110551plg.81.1611869952630;
        Thu, 28 Jan 2021 13:39:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611869952; cv=none;
        d=google.com; s=arc-20160816;
        b=dg+Apf3nIhSBNiflYfBUbk8/pAfbYvUq06MuEtqr+L02m+7fIWroW/VJUfYSrAJcNO
         v3VsGu0xI5D+NuYLihGqqPwUJ6rWM4kOfPN3aXNbaeVw5/wvjdGt0fs/edI/2guz7Nie
         qojAi74e5ZyMGTZUwtSfapKsJqVZkgN6DQ0mVuOwZnAYfI8lYSk5XcQS+cW+eQ/X/sgv
         oycXgitm+gHcTEPxE1YnUf7h9FUQw9egrgD6aNOZep2Arh83TYob1IuO08RR0bmghJm/
         dOkjAuGTsjJywuPvyMPN0wRP/pzTIYnqE91g1NWxC5yS74LHcpEyNKFwQ6GQi9a4R0Qy
         rMeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=/CjtAu+M0Wiwb7WvO8Hl9jt0o2jkZcEdDdnm/nslick=;
        b=tY3MHnxx9RAR4baTcbfP9DkwruOjLfGlL54B4Dk7bCmJvYcc2ZNLjjPQN84C0G0frH
         LWBX8ifIl32Eiomgltcyf8mpo7GP3rgsLSk4CFNdmEZpbLtNzEWTqzcAt8zD/pylzv4i
         r3dZ/6gfxfdvxEwPVOBmo7lab8HMRCoV59CLVYYdx5Yeb1eimi3pFdgJeyeqtWdzXCw2
         +mjDHFyBX/vrQgg5O7usiQwBFMJPAY+K3W1aiiRZh1Siw9FQ2F0o3K6GmId6c7zZjlTf
         UL4hO0DxX/XIQo/e6OIVty73cWEoscD/7ZstrMlfbWkRQ0yqN5j89DN8sFe4nukdLR+B
         NwRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cNJfHShS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id f11si282956plo.4.2021.01.28.13.39.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 13:39:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id q129so7188734iod.0
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 13:39:12 -0800 (PST)
X-Received: by 2002:a05:6602:2b01:: with SMTP id p1mr1647556iov.156.1611869951999;
 Thu, 28 Jan 2021 13:39:11 -0800 (PST)
MIME-Version: 1.0
References: <20210121082451.2240540-1-morbo@google.com> <20210122101156.3257143-1-morbo@google.com>
 <CAKwvOdm+3o8z2GivPjSJRa=c=UKdfkiY-79s6yn2BxJkFnoFTw@mail.gmail.com>
 <CA+icZUU=XfwqMcXYonQKcD4QgqTBW-mA+d_84b7cU2R3HYPOSQ@mail.gmail.com>
 <CAKwvOdnUm2FqC0CEF3qFuMCaWoqiUMqr7ddMjA2UNsJugA9DNQ@mail.gmail.com>
 <CA+icZUWJu0FWdRY0DMQxpYwjqq1WTB87y9u1-6t3YMmkR3UsBQ@mail.gmail.com> <CAKwvOdnVic2MiVSkiTQGGKPFKtJrf=kt1LgjWejOK6mMtMiX3Q@mail.gmail.com>
In-Reply-To: <CAKwvOdnVic2MiVSkiTQGGKPFKtJrf=kt1LgjWejOK6mMtMiX3Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 28 Jan 2021 22:39:00 +0100
Message-ID: <CA+icZUUVpUban7Fka6xE9fXzgZT+SuFWeMfLELMNdKVD4O0TXA@mail.gmail.com>
Subject: Re: [PATCH v7] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cNJfHShS;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 28, 2021 at 10:24 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Jan 28, 2021 at 1:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote=
:
> >
> > On Thu, Jan 28, 2021 at 10:12 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Thu, Jan 28, 2021 at 12:46 PM Sedat Dilek <sedat.dilek@gmail.com> =
wrote:
> > > >
> > > > [ LLVM ]
> > > >
> > > > Today, I switched over to LLVM version 12.0.0-rc1.
> > > >
> > > >
> > > > [ Step #1: 5.11.0-rc5-5-amd64-clang12-pgo ]
> > > >
> > > > My first kernel was built with CONFIG_PGO_CLANG=3Dy and LLVM=3D1 pl=
us LLVM_IAS=3D1.
> > > >
> > > > [ start-build_5.11.0-rc5-5-amd64-clang12-pgo.txt ]
> > > > dileks    193090  193065  0 06:54 pts/2    00:00:00 /usr/bin/perf_5=
.10
> > > > stat make V=3D1 -j4 HOSTCC=3Dclang HOSTCXX=3Dclang++ HOSTLD=3Dld.ll=
d CC=3Dclang
> > > > LD=3Dld.lld LLVM=3D1 LLVM_IAS=3D1 PAHOLE=3D/opt/pahole/bin/pahole
> > > > LOCALVERSION=3D-5-amd64-clang12-pgo KBUILD_VERBOSE=3D1
> > > > KBUILD_BUILD_HOST=3Diniza KBUILD_BUILD_USER=3Dsedat.dilek@gmail.com
> > > > KBUILD_BUILD_TIMESTAMP=3D2021-01-28 bindeb-pkg
> > > > KDEB_PKGVERSION=3D5.11.0~rc5-5~bullseye+dileks1
> > > >
> > > > Config: config-5.11.0-rc5-5-amd64-clang12-pgo
> > > >
> > > >
> > > > [ Step #2: x86-64 defconfig & vmlinux.profdata ]
> > > >
> > > > Booted into 5.11.0-rc5-5-amd64-clang12-pgo and built an x86-64
> > > > defconfig to generate/merge a vmlinux.profdata file.
> > > >
> > > > [ start-build_x86-64-defconfig.txt ]
> > > > dileks     18430   15640  0 11:15 pts/2    00:00:00 make V=3D1 -j4
> > > > HOSTCC=3Dclang HOSTCXX=3Dclang++ HOSTLD=3Dld.lld CC=3Dclang LD=3Dld=
.lld LLVM=3D1
> > > > LLVM_IAS=3D1
> > > >
> > > > Script: profile_clang-pgo.sh
> > > > Config: dot-config.x86-64-defconfig
> > > >
> > > >
> > > > [ Step #3.1: 5.11.0-rc5-6-amd64-clang12-pgo & GNU-AS ]
> > > >
> > > > The first rebuild with CONFIG_PGO_CLANG=3Dn and "LLVM=3D1
> > > > KCFLAGS=3D-fprofile-use=3Dvmlinux.profdata".
> > > > I was able to boot into this one.
> > > > Used assembler: GNU-AS 2.35.1
> > > >
> > > > [ start-build_5.11.0-rc5-6-amd64-clang12-pgo.txt ]
> > > > dileks     65734   65709  0 11:54 pts/2    00:00:00 /usr/bin/perf_5=
.10
> > > > stat make V=3D1 -j4 HOSTCC=3Dclang HOSTCXX=3Dclang++ HOSTLD=3Dld.ll=
d CC=3Dclang
> > > > LD=3Dld.lld PAHOLE=3D/opt/pahole/bin/pahole
> > > > LOCALVERSION=3D-6-amd64-clang12-pgo KBUILD_VERBOSE=3D1
> > > > KBUILD_BUILD_HOST=3Diniza KBUILD_BUILD_USER=3Dsedat.dilek@gmail.com
> > > > KBUILD_BUILD_TIMESTAMP=3D2021-01-28 bindeb-pkg
> > > > KDEB_PKGVERSION=3D5.11.0~rc5-6~bullseye+dileks1 LLVM=3D1
> > > > KCFLAGS=3D-fprofile-use=3Dvmlinux.profdata
> > > >
> > > > Config: config-5.11.0-rc5-6-amd64-clang12-pgo
> > > >
> > > >
> > > > [ Step #3.2: 5.11.0-rc5-7-amd64-clang12-pgo & Clang-IAS ]
> > > >
> > > > The second rebuild with CONFIG_PGO_CLANG=3Dn and "LLVM=3D1
> > > > KCFLAGS=3D-fprofile-use=3Dvmlinux.profdata" plus LLVM_IAS=3D1.
> > > > Compilable but NOT bootable in QEMU and on bare metal.
> > > > Used assembler: Clang-IAS v12.0.0-rc1
> > > >
> > > > [ start-build_5.11.0-rc5-7-amd64-clang12-pgo.txt ]
> > > > dileks      6545    6520  0 16:31 pts/2    00:00:00 /usr/bin/perf_5=
.10
> > > > stat make V=3D1 -j4 HOSTCC=3Dclang HOSTCXX=3Dclang++ HOSTLD=3Dld.ll=
d CC=3Dclang
> > > > LD=3Dld.lld PAHOLE=3D/opt/pahole/bin/pahole
> > > > LOCALVERSION=3D-7-amd64-clang12-pgo KBUILD_VERBOSE=3D1
> > > > KBUILD_BUILD_HOST=3Diniza KBUILD_BUILD_USER=3Dsedat.dilek@gmail.com
> > > > KBUILD_BUILD_TIMESTAMP=3D2021-01-28 bindeb-pkg
> > > > KDEB_PKGVERSION=3D5.11.0~rc5-7~bullseye+dileks1 LLVM=3D1
> > > > KCFLAGS=3D-fprofile-use=3Dvmlinux.profdata LLVM_IAS=3D1
> > > >
> > > > Config: config-5.11.0-rc5-7-amd64-clang12-pgo
> > > >
> > > >
> > > > [ Conclusion ]
> > > >
> > > > The only statement I can tell you is a "PGO optimized" rebuild with
> > > > LLVM_IAS=3D1 is compilable but NOT bootable.
> > >
> > > Thanks for the extensive testing and report. Can you compress, upload=
,
> > > and post a link to your kernel image? I would like to take it for a
> > > spin in QEMU and see if I can find what it's doing, then work
> > > backwards from there.
> > >
> >
> > Which files do you need?
> > For QEMU: bzImage and initrd.img enough?
>
> bzImage should be enough; I'll use my own initrd.  If that boots for
> me, maybe then I'll take a look with the initrd added.
>

You should receive an email with a link to my dropbox shared-folder
"clang-pgo > for-nick".
Please let me know if you were able to download.

Thanks, Sedat
=EF=BF=BC

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUUVpUban7Fka6xE9fXzgZT%2BSuFWeMfLELMNdKVD4O0TXA%4=
0mail.gmail.com.
