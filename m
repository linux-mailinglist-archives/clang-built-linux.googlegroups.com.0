Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBN72QKAAMGQEA4CRXJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id A923D2F6D7F
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 22:52:56 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id r7sf3480611pjq.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 13:52:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610661175; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NoMdciFo/a7Ip3Gt7Ol3YbN95T9G3Awop0nVWSy8fDNXBBEzyMvV1KtcMGE1kTUV/
         tEgwuOndPVWYpATVxgyWgmnEh7JzrWz5xEKtPFRRlJtQ641DPKKZLRc4qpjnjESs8/go
         9kuLnEvhTqe3c+IXF6etg3HKIu0lUmYIF9WnvsIbQMtRTgw16mu90H8mKsRWPUv+JJjP
         SVx6fykg442jh1165ArQ7THZRxYmsrQsJIQzgItDbqWq/3BFS6rO/6eGXjfD0kqzwiT9
         osG2yhWRwKMN0LqWqxR20lA/1IZP6hNpEMvxeGxwmnVzdW29u04D+HrWkCQmjolBGk+7
         Lt7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=mEcXzMrRcDuCfwa8IQ7JSjAd9mZDG9RSIdX8JZMTW78=;
        b=1DHL096K7kkoR+OwQsc5nlArvQsNEMwadLWPCKvmERHXh2rBEQ6UfkBHh/5mC0zuyX
         swJigEymy/EibUPcd0nklkh0bV0ZBxU7sXL6qGdAi9k566GnoNWkW0VAGpVvtNyPUUW5
         0DA/EIEKhD/G+NdiIYPnpcqn66V0XdojzlcUlSnv+UF12DrZlg7JIxE+GqF7cZ0yWr/5
         0FrWhUVK7ZMHbsaADMIsfWOMGB4OlGVuiRGN3/CDiiTxNDFA58cWfV59Rk+bBLs3yXnM
         Iz6ULL4+Ri+sl74DJtwVText/mUNuFrUFIw0KFKwC/qclm+uppA3+In7obIkVwXtcg2B
         wxCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1graEbZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mEcXzMrRcDuCfwa8IQ7JSjAd9mZDG9RSIdX8JZMTW78=;
        b=bevAB28FUOjugdvXkUlXobCpjoU/SLp+T+Phhr8BWIKdA1bsOe1hXhHhrsxkEXxdHm
         L0Ng7zIAJJszYug09/6Szs3fPTX2ugoznEV6ln71ouQ5ES73hBqtaIDBRq2Q+zkL094a
         zZZ3QPwFcoCrG5l1I9EEQ4mf4YiDrQDpW5fzKNbvV9aT5KtdDZfZ1iF97PBGvMGvV1ob
         n9cMHXNzeaIqP3/biKW1oj/NhTg/3tcCGL/dzw7bSgweT7s8ydErqGN9AFQqvBJyPxL9
         JUr93Y3gMjbDdwArFnXsb5PetfiqQXy3b/wrK1C4L4hRZNUhLEHbkd/PYWc3mlfnywaT
         iZkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mEcXzMrRcDuCfwa8IQ7JSjAd9mZDG9RSIdX8JZMTW78=;
        b=SZr7wQDNr03fv6htXI18exlkRVD80c7omDCi5FXlCjAKyySCxFGnyK0A0CYD+4kP/m
         OE3UQuxR0UOZKTqfaU6JMWMYnRDsC+qBr8a7R8O1EQGqSlyMZfwm1lGLexY347/9cAzh
         9KSoSAUyyG4Mg6bgrXDSCJ8XxMMhb2znKlLvLYLNhV4MTPMuTuURHvNa4SL1wDEGcCTB
         csnofb4Zpt78p2kSY4hWYBuHAilxbcII+n9gk8RIDybp+zGIlDIZvOUtHxyd5OtEx0fk
         zyTus63G/5fl/NOQamuFPttejRbj8awnR2bMXfeyHTWjkWxmP+s3ajY1QfowKA+GErgY
         Wh8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mEcXzMrRcDuCfwa8IQ7JSjAd9mZDG9RSIdX8JZMTW78=;
        b=XRVnd8Q5v1R4l8kfA3bSwUhiGETDGeJ9Npd5Fdj3Xf+5G1TWjxi+wFJCnpp5lJusr+
         YMeyr7VSa6X8iTGqskcV94x8gAR7KAYGQ2iL5fVXZGjKhGqSYZQ2eI2pDGoPYaKnTMCK
         oH39VPLrOjtsNXB6D8KVnkZc/VuT70rdi3eO4J0ksiVmyNVR4OKPTlRag/K46u13tBBj
         i7JhCc8gH5rk/PgCQNaiC8ymXFp33Yw5phXu6tUlTJ1xmHL77sqYOV4RuJi++l1fwDaT
         +Xhim3VTLkJqAQVKYQ1lG/LDeTLBE3M/SqUgBGARo6kB9C5VHBFDTbeP497SfncmtDkz
         Tvyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mmpkx5GWxDy7hAoontPp4uL0nvoSw7cnGLzKb+ljtqRNbcVY4
	tY4sqpln1JxqQ93WPKY0d+s=
X-Google-Smtp-Source: ABdhPJxyUlTmtMYEO9vr4bfMcL7izupufmvcaEbECb64S7ohxme5IOPiVuNGd4c1mxkxnbGTn6jvRQ==
X-Received: by 2002:a63:f21:: with SMTP id e33mr9864775pgl.84.1610661175415;
        Thu, 14 Jan 2021 13:52:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7615:: with SMTP id r21ls2622296pfc.4.gmail; Thu, 14 Jan
 2021 13:52:54 -0800 (PST)
X-Received: by 2002:a63:1047:: with SMTP id 7mr9705969pgq.292.1610661174592;
        Thu, 14 Jan 2021 13:52:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610661174; cv=none;
        d=google.com; s=arc-20160816;
        b=W53R7hhvD7prHRsCpw7BIeDAAIuVZwL9kwgktFpEmiV3dDby9vmw/bT2ChflfoA+Ip
         zrVGn4az3O/ClrF5CzXWpxs9nVaGpwN/3hBlRqsFLdhbOUSV8Do0cTIexTgC/7E8+rKl
         5MGZkQ2z4SYFHXG5eLfiCL2E2oLQJwo1XSC6KiONsx+s4R+EgjcvcNxP/va8pvhOAgrh
         Po9YZZyEB0eBkrji3ex7rIkO8Wxng4U028iNOAQ+5OEyNTCAOHNfIh9MyelqaOEhomb7
         rGNE9aEV63gaoa4UbAean5zhScT8My8NpbpJCaE3JUU6r7u/sFcqg5JxS1zZ2sw/ShaL
         b/Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=25UGyailuGkSlV0rEAoFPYluemtWcBTnklauhq8H0ck=;
        b=BvMV0u3fS96gJp6ymZ0KL/weqoBTJgcvl1ShIVywctXM4zt+9Fc5X4bB4gwF4BAlWp
         Gq8qAH0SxTFKoe0IFu4xL6Y4vpuv6E0j7VTR1MpZgL8kAiUEVBBcJUWkfwis1j+xpy2U
         6eCFqtVS9tp2McGChOu/pwyaUJgUmIcOwN5pjtulTYSo4jTRt3BbnotUp+MEB42YkaWa
         MGXQLEzdNNwGO8ubf+ptcac7J9IOfmx9TDBXpM1/XB1BS6y6KJMiOafFRcoVG0JhyBFR
         bFDcBv0yySKaj49uJtHeRcvlNhwrBI3gVMdfScU+jUJS2NBKNsRsCh2aLkgIMATu1Q8Q
         bKnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1graEbZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id m63si323933pfb.3.2021.01.14.13.52.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 13:52:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id z5so14241513iob.11
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 13:52:54 -0800 (PST)
X-Received: by 2002:a92:d990:: with SMTP id r16mr8530650iln.10.1610661173930;
 Thu, 14 Jan 2021 13:52:53 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
 <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
 <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
 <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com>
 <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com> <CA+icZUXuzJ4SL=AwTaVq_-tCPnSSrF+w_P8gEKYnT56Ln0Zoew@mail.gmail.com>
In-Reply-To: <CA+icZUXuzJ4SL=AwTaVq_-tCPnSSrF+w_P8gEKYnT56Ln0Zoew@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 22:52:41 +0100
Message-ID: <CA+icZUXQ5bNX0eX7jEhgTMawdctZ4vkmYoRKDgxEMV5ZKp8YaQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Yonghong Song <yhs@fb.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, Caroline Tice <cmtice@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf <bpf@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N1graEbZ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35
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

On Thu, Jan 14, 2021 at 9:11 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 14, 2021 at 8:13 PM Yonghong Song <yhs@fb.com> wrote:
> >
> >
> >
> > On 1/14/21 11:01 AM, Nick Desaulniers wrote:
> > > On Thu, Jan 14, 2021 at 10:53 AM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > >>
> > >> On Wed, Jan 13, 2021 at 10:18 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >>>
> > >>> On Wed, Jan 13, 2021 at 11:25 PM Caroline Tice <cmtice@google.com> wrote:
> > >>>>
> > >>>> On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >>>>>
> > >>>>> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
> > >>>>> CONFIG_DEBUG_INFO_BTF=y:
> > >>>>>
> > >>>>> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
> > >>>>> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!
> > >>
> > >> I can confirm that I see a stream of these warnings when building with
> > >> this patch series applied, and those two configs enabled.
> > >>
> > >> rebuilding with `make ... V=1`, it looks like the call to:
> > >>
> > >> + pahole -J .tmp_vmlinux.btf
> > >>
> > >> is triggering these.
> > >>
> > >> Shall I send a v4 that adds a Kconfig dependency on !DEBUG_INFO_BTF?
> > >> Does pahole have a bug tracker?
> >
> > pahole could have issues for dwarf5 since as far as I know, people just
> > use dwarf2/dwarf4 with config functions in the kernel.
> >
> > Where is the link of the patch to add CONFIG_DEBUG_INFO_DWARF5 to linux?
> > I think you can add CONFIG_DEBUG_INFO_DWARF5 to kernel with dependency
> > of !CONFIG_DEBUG_INFO_BTF. At the same time, people can debug pahole
> > issues. Once it is resolved, !CONFIG_DEBUG_INFO_BTF dependency can be
> > removed with proper pahole version change in kernel.
> >
>
> Yeah, sounds like a good idea.
>

Today, I have observed and reported (see [1]) bpf/btf/pahole issues
with Clang v12 (from apt.llvm.org) and DWARF-4 ("four").
Cannot speak for other compilers and its version.

- Sedat -

[1] https://lore.kernel.org/bpf/CA+icZUWb3OyaSQAso8LhsRifZnpxAfDtuRwgB786qEJ3GQ+kRw@mail.gmail.com/T/#m6d05cc6c634e9cee89060b2522abc78c3705ea4c


>
> > >
> > > FWIW, my distro packages pahole v1.17; rebuilt with ToT v1.19 from
> > > source and also observe the issue.
> > >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXQ5bNX0eX7jEhgTMawdctZ4vkmYoRKDgxEMV5ZKp8YaQ%40mail.gmail.com.
