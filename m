Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXFTTCAAMGQEYF2KHPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A67092FADBD
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 00:29:33 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id p66sf14524669ooa.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 15:29:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611012572; cv=pass;
        d=google.com; s=arc-20160816;
        b=dyjzSw5KjrRXfnwOuj9gbGY6FFVsr9pCWgUYYV1VbeoeRK98Dv6RDzLtNHbYmI3Rtz
         udmVfSztnKS3EzrVN40NtzWrv+jBLN32XyMLRZ27ouQR6Xn9PI2u7RzAan2bN3iUBSMH
         F1FPRwzsemBLZwX3Hbdxq+gbV3ZPWO3afh+w3MpLQTUKuPmazDqWcCAZdAUMu55tnnCM
         r0dbx2EQCQJpZl/Tiol7ToDbimmktxBrJaYM89uNaU87B/Ah72fJUfiAvo6istWW0A3E
         Ul+nVtk3VU8uu3zMy2V8LKDEq3q+8hqMSWVvmC9e+U4R8k+EDxx/1v/vTyoiFghPXwcv
         ej+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=R/whB6vm6/xDD5hHZw8hmykGj+I4jJ/10c2+ntP/e74=;
        b=DKpt6mDGx0OQBoVr3zi7AuZgEPjp5eImwrYygkx7GtDsI0AYQ0KRD7IY00MTuCaxcz
         dMS6WjMqPfteYvcjkGeVgzpuIeVO7nh5ncEJj0h2w0iaaT8989KkaQ27ToA/LWJMBsPW
         L6FWOZrjsdq62kuZYCfNQ446Ddz6gtcMnFPw/vyPqH3c6zSvjaf6KAE5XALOZV6a3Bt0
         Mp231EjNxZfZXish9yEVz7e8t9Arr8zL379ZrFGx+o04pTp1h8NSFolKjMsR59Fw2IHA
         i/ojJSVka+27QBLchZhse4OWSNvJ5T9LmCUByo7NSR+ujL5OG1nK0abb2ASGHGNo5+yz
         HrsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sMYMSVO4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R/whB6vm6/xDD5hHZw8hmykGj+I4jJ/10c2+ntP/e74=;
        b=WqYTb1Tfki7Yf4ibx7/Yj/tAnUoRoIEilCDPvz3SHiqF6PWm2rjDvjG6XwrtOQHhNA
         +kBAaFFk8crIH/Lk0Je926rG6zQRzMB+jNmKTNrEUK9trCztXNXm/nXqRJDhzSOORU8F
         zlIiLf2iLsYR3cv+xVcYxLjmb44MxVquYh33WLwWs2kVciPo8SQeWZTt63pHF56fNxGn
         7tngFZh6bW+/igH11sp9wkeXzbVXybW0eQ4xHzZ2inmBfpEKM2KHbJdMJQQyQ4M5RfsQ
         7tV7i1IGLRj5KGSkEoy0yP0CCM9Iz1SQoMDxzBjuwoPWSHjKoaGW9RTXw8KGdvY+RIa9
         CPkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/whB6vm6/xDD5hHZw8hmykGj+I4jJ/10c2+ntP/e74=;
        b=E0o14vy9tosCPvdBcvE6Hhiv2sWjDQHhNieoNQz16A8hVLeveApqeUYOSu8Q1krkmc
         EDrBVkpWa70cR0zijUENm7tqVFxoTl4Tb6BBQtq2+JiLpOM2XsVO4Z3M4UH2wysFcOIt
         XYpe9XlTHin8K7wrdkDJXNXG9Jzx3z4IWi7357FdqOTbZe+91q9w+yjoNGopiePLf911
         r9hV5AmOLGcLjkT4rImTcl04C6RHw0u1yArW4mi8bv+7C9p6mHn2Tz7Q8SfWfoRri9N/
         pVUZz7y889zr2Qq+gR6TAKTktvleyp/dHK+7FLJLllUq8GGT2BpaQRJVB0fRVWlg4RMi
         ClTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/whB6vm6/xDD5hHZw8hmykGj+I4jJ/10c2+ntP/e74=;
        b=eUIjdx9Z4tZS4qziS5V62It3hH9Z+Wg60hkZa1gRpw6F0TqpTETtn/18KvyBX8x0d2
         Z6O9HGykA8zKgBDYIaoP3wTh539z8hMJWStU1ElD9234eD0yoJAxZX+gCUstkb/lrmBr
         4OJKqcIYoJXpk0r1/RbhUgtHE5vtLEQBOV5uIEVRfBgd+/fn783y4DKd2tLLpc5Y1i16
         1tZi62bwNJZxVkWemMFF0mklEr2RDpJmNenTMPQ+dfMv0us/YOTCw1/dX3dlFPi7fYEW
         x1egrnuSGIuvfn3nznb9Qay9DFlzCzooi3Ah37HcUpJkDqppSE4YhSx2/u3SSilX8lmh
         5lrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335XEk+88fRkWkl3yv09rWCuH1NIrQJ8/FWOEfY4cs8wMjX03qA
	5SIMCPgX/J/lN0XQ8O7V6BM=
X-Google-Smtp-Source: ABdhPJwAsJjIsy5j2ON5ocy2DUkYGad/+vNnTUleYQBlktUlSaeTNybjiC0nW83xNmN2P2pgK2d7bQ==
X-Received: by 2002:a05:6820:22c:: with SMTP id j12mr991515oob.65.1611012572573;
        Mon, 18 Jan 2021 15:29:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:714:: with SMTP id y20ls5076867ots.9.gmail; Mon, 18
 Jan 2021 15:29:32 -0800 (PST)
X-Received: by 2002:a05:6830:188:: with SMTP id q8mr1449667ota.96.1611012572117;
        Mon, 18 Jan 2021 15:29:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611012572; cv=none;
        d=google.com; s=arc-20160816;
        b=mpD1p5AJG1NQmtMgyPb1c0xq6ABBrwnTtYcmthPmxnml0M1x2KlrHKO+LxPwPGJVEb
         THObZ2MtNLVOTVxGpp5+zzotrxcF/Ft7aPvIc+ENykA7hEGtUVD1RfH8JUVlA34JsANE
         gqsFvD9P+BlnQkEk3O1WMRixW72z+5Vz0UlRnPAAQP/okwfjv4UcTcV63Mhe9I3kpkuO
         CYui0W+rJa6PZ1puN6YREYnsEz2Wora/PpdxmGO1OpzRBTttNMtsAPLXB/vdRLb8xMue
         xEeDitp2cDE4hK51lHh8fFILeoaO9DfKQ8wwA2XEYPkRGqGTS6UC5HH/pe6QuLIMD3RK
         tjZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r6GhUyjBJryqxkAoJ8s2TX/9ptHi3eesMQhsJFMSBQ8=;
        b=ePI8pgr8kGSb2JuH0mU53KNQ7iWJu+6rwCgLQnz11WymHo+PJUClhUgLAfw6kocYwx
         SSmVCSu2GWEnxUCDjuouo37fVI+RrJZfwa1uMYcPbXm+tjd9laa5rxRG8NKy+SG4Mxlt
         lCIfJ0COhuVyWvmO/iJXa3V5VqcwZKBNfCzEH7Jok+VuVqYRP6FCCoyMVBaMOLOdolJa
         id5FhkyMWCPN6AjnDXJRDFMOD9h/rFeHtgHJLUwFT+F8VYbm4iZauXgcaD3XyvlxqYC4
         OJdTggx7lNOf4yWvKU006BHzVvLsUeRvWzISQ6v6trIgf/dpNohWHbnIAwe0BoiJzev1
         fTEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sMYMSVO4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id x20si2155063oot.1.2021.01.18.15.29.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 15:29:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id d13so32836274ioy.4
        for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 15:29:32 -0800 (PST)
X-Received: by 2002:a92:d990:: with SMTP id r16mr1232898iln.10.1611012571781;
 Mon, 18 Jan 2021 15:29:31 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
 <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
 <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
 <CA+icZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A@mail.gmail.com>
 <CA+icZUU-3i7Of71C6XaNmee7xD4y_DeoWJFvUHnMUyBaMN3Ywg@mail.gmail.com>
 <CA+icZUXmn15w=kSq2CZzQD5JggJw_9AEam=Sz13M0KpJ68MWZg@mail.gmail.com>
 <CA+icZUWUPCuLWCo=kuPr9YZ4-NZ3F8Fv1GzDXPbDevyWjaMrJg@mail.gmail.com>
 <CAGG=3QW+ayBzCxOusLyQ0-y5K5C_3hNXjara_pYOcxK8MseN9g@mail.gmail.com>
 <CA+icZUU1HihUFaEHzF69+01+Picg8aq6HAqHupxiRqyDGJ=Mpw@mail.gmail.com>
 <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com>
 <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
 <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
 <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com> <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com>
In-Reply-To: <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 19 Jan 2021 00:29:19 +0100
Message-ID: <CA+icZUVTnH86M7=YkU_bQyK4wiRg7Oe46QTVD3AfZ2aNRFqD1g@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sMYMSVO4;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
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

On Mon, Jan 18, 2021 at 10:56 PM Bill Wendling <morbo@google.com> wrote:
>
> On Mon, Jan 18, 2021 at 9:26 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Mon, Jan 18, 2021 at 1:39 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
> > > >
> > > > On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > [ big snip ]
> > > >
> > > > [More snippage.]
> > > >
> > > > > [ CC Fangrui ]
> > > > >
> > > > > With the attached...
> > > > >
> > > > >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > > > > undefined symbols
> > > > >
> > > > > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > > > > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > > > > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> > > > >
> > > > Thanks for confirming that this works with the above patch.
> > > >
> > > > > @ Bill Nick Sami Nathan
> > > > >
> > > > > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
> > > >
> > > > The integrated assembler and this option are more-or-less orthogonal
> > > > to each other. One can still use the GNU assembler with PGO. If you're
> > > > having an issue, it may be related to ClangBuiltLinux issue #1250.
> > > >
> > > > > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > > > > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> > > > >
> > > > I know Nick did several tests with PGO. He may have looked into it
> > > > already, but we can check.
> > > >
> > >
> > > Reproducible.
> > >
> > > LLVM_IAS=1 + DWARF5 = Not bootable
> > >
> > > I will try:
> > >
> > > LLVM_IAS=1 + DWARF4
> > >
> >
> > I was not able to boot into such a built Linux-kernel.
> >
> PGO will have no effect on debugging data. If this is an issue with
> DWARF, then it's likely orthogonal to the PGO patch.
>
> > For me worked: DWARF2 and LLVM_IAS=1 *not* set.
> >
> > Of course, this could be an issue with my system's LLVM/Clang.
> >
> > Debian clang version
> > 12.0.0-++20210115111113+45ef053bd709-1~exp1~20210115101809.3724
> >
> Please use the official clang 11.0.1 release
> (https://releases.llvm.org/download.html), modifying the
> kernel/pgo/Kconfig as I suggested above. The reason we specify clang
> 12 for the minimal version is because of an issue that was recently
> fixed.
>
> > Can you give me a LLVM commit-id where you had success with LLVM_IAS=1
> > and especially CONFIG_DEBUG_INFO_DWARF5=y?
> > Success means I was able to boot in QEMU and/or bare metal.
> >
> The DWARF5 patch isn't in yet, so I don't want to rely upon it too much.
>

That means to build the first PGO-enabled kernel with clang-11 and
rebuild in a second step again with the same clang-11.

Just FYI:
I was able to boot into a Linux-kernel  rebuild with *no  LLVM_IAS=1*
(means use "GNU AS 2.35.1") set and DWARF5 using LLVM=1 from
LLVM/Clang-12.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVTnH86M7%3DYkU_bQyK4wiRg7Oe46QTVD3AfZ2aNRFqD1g%40mail.gmail.com.
