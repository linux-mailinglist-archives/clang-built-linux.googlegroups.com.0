Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBT6LQKAAMGQET5VL6IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 686FD2F6BD4
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:13:04 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id g25sf2105215ots.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:13:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610655183; cv=pass;
        d=google.com; s=arc-20160816;
        b=SLKrGagSGXB8PPQWhSWQJph6u9iMKP8aG2cE2RsIJWCcN9rQrTXdV0HEuneDrV8l35
         NuwBLsHEwXbHU0EydGhDeooXOcpWfMA1MAV2pG8nlv8iHxks3fcko3ERsCcHo+82HTxm
         5wLjFx/T0/X2uiX6/6ofNnpmO2ZV/eoFs9gOSSYUcBeIe54EpT5NbxD+cKv20cUVvhm/
         NtET3x/RTZPDju4C5vH1nfqPvoec9MJfJLe7vDT1jfsGUOIo9xjHRRZBPAay69pzDpQO
         ZnOIyGDtQ7N5vQXF0yJdCnr8cuUxgPLteQzGM134Pf4pHEKfbH72HRKEqxpl858HSwCP
         TsQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bo449fPlf9IT3FpqtgW9eFjNdbhK4CNEsPKrmk7G7lY=;
        b=mmTXtLrn/kAtgSj9QtutLUEMGL9WVX1ZdHVk5gp1xdJEWeha408YtKIwNUb8f2c9Nr
         S+1RUvnb6TFB4WPy5pofMKu61diTjdqnBPuRdfJgdJPUg8paO9vCvt9M4L1+/BVXj1xX
         itmJVGcvwA826s35BkasvyoIRs9vvb7COj3eSOLkf4xUe47x84mnosI4oknrT4lmLAeU
         v9j8P0Hl6GIF1/Jr22MUR2pZYUCEmoG2sWKHXX2+K1rl8aJPbY90SQ46EC8WVqpIqa4M
         DHV3QKVm5N7oN+J7VLWHalQbWpW/LFAjrgTDUBnIK7UFLDoxNzNWwvpQkeYyGOCD/IAW
         +C7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X208WmP2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bo449fPlf9IT3FpqtgW9eFjNdbhK4CNEsPKrmk7G7lY=;
        b=Tf77fEQy3atqRyhyQ/E41VhYhi6lO0MxQilhK1dgawCLhL8RBqYCmnT25I99Dmx6yq
         BbRay8/vCQ+y4BFMG/hnwagSxAThggkkkSCF8b+ZI4V8OXGJtGOyyBrTfE/V9yZcqCPe
         jR68n0r2Du8Un+Y6uuj6bgvWXURilml3EuX7WuXRHGuCGcxj3O7DzmeRaFOuHnapPo+B
         0hok0Fekw0U9OkUMN4tKyw9u721Cx32rTSJiYygBJmvXKxP13ZEWY2pN++mWHVFkWhRl
         T6HnpOEuWF6XmtU9enKvzlCf4DHfRfbszn3YoyZhHW0p9huJQJk4pyT+MMHOyfrz0L1x
         7ZKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bo449fPlf9IT3FpqtgW9eFjNdbhK4CNEsPKrmk7G7lY=;
        b=HCqfqGsfudsd/6Vsly+pnl3ugVA2GEXKBj1ec0E21oxs/UGP6HUzm1KmEIXVBC1zMw
         FJ117Bv5FpOG9hFPaCvRfo9U88i7zc8JbHF2dEKmvnOFEwPMdKLNth5m8YRKIzHqWLEO
         787PmQ6NrdkKeGOtgxwXzFZGjRDEgb881XXSF+YzgCtmOqoGQDrrNWEdWHaVjvs25DRR
         humM7B2csiHnj+sfWbamuzddzJo0Qy72Lo8gTXBVutNbTugXFfGtEa5hCoN83p03Mv/S
         cd0+jNuYUSQESyDBRSFmDkl8/ht3wLYXnHOWD/VD3o2R+4V3iud/u3zoW8PEz+qgnWdj
         Dd/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bo449fPlf9IT3FpqtgW9eFjNdbhK4CNEsPKrmk7G7lY=;
        b=VJA0nvVGtUh6uMfqSZNLUgxnlLGzhHGv1LXCEVFlhcGtdn8N2RTSETF07/c6wvXdx+
         tvHQRmA3ZzR3R1Y7l9CkH7lVhjIxZIeZWdrvLpaM4TPC1k+PX0sDFE7Pnspa49c5S8YC
         qwXBK3yCEKU64O5s0EpKIhsO5MeMuLUj4nRLM2QUcD1goP7DkZrQfjXx7XwhymQWIvLv
         7wZyi7hHppf0VdfyIVlWT7iUpDuqSS1NydxCURnn3z1ixjaA0gj5UTGxQPSvlJvaSP4j
         Hvk+KOpyhObcSOWH7AbvnNCjL2ydYI3wFKxxprEU1SxoNCMSXPtDRbaDADMCT8QVqjLQ
         J31w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TJ96GAqdlda8I56wBhW+hS+8elALXDXTqJv7VAXgAyvCnzFBu
	yAE31eaUoMP9Uu/QMpX9oC8=
X-Google-Smtp-Source: ABdhPJwMAIvzNsAHa7ZxCNgAmc7hMX+tXbYk10QYUSC2RyV93vbXHqB05u49WKWIlWh2prgZeGIzTw==
X-Received: by 2002:a9d:6c44:: with SMTP id g4mr5566317otq.246.1610655183415;
        Thu, 14 Jan 2021 12:13:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4758:: with SMTP id u85ls1648413oia.3.gmail; Thu, 14 Jan
 2021 12:13:03 -0800 (PST)
X-Received: by 2002:aca:4fd0:: with SMTP id d199mr3647281oib.33.1610655183028;
        Thu, 14 Jan 2021 12:13:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610655183; cv=none;
        d=google.com; s=arc-20160816;
        b=MYlKov4LY0VuXCCIkUGBf77E66m0ggFAIzx3n0Lte8WbUnMwJnKDF/QX/Iq29fBQ+h
         CW2qEvRJEYAhFah29S0G+iMS2Lk8KjOLvdMk2OTI6/todlSokra7V9TQkljyeJ64400Z
         cxg5TjD/mJkHutG4MaSaposIBbb51mYwBU/ZTgIwRfbv17/0tQ4cDgh//a+15Iok4j5r
         zVuxGlVFTU3/wBG09OVIX5Oaxtvda3FHWNV9EfQ0d1NaJfiGxb7qaCpxPyo1hbRA0CP4
         IwDIVXJglVcBEME/dmJ0GD/+81JhbMKE71YeNU8To1pMS2TRp13oN0HQLQpyq7TQmN5D
         KfOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=erIA/lSh4mbluHxm/ANIO8rRbgUM63xnChvxcoG6rx0=;
        b=PnzkDQegooWolDPjfYLSurb1JFgHNiviUaHDTiiSk6v1whULRi7fea1+Yr8g6kBK+w
         tsvgu6m7qh1/P0pEMIK4/Y7QruseWXFEQk0aTrZkTBAeRQ9GENH7JdZhkennx6dXdDmc
         E76FkXNlWJPXKLgPGBuSixY5c5qQyforGrJrV0nRLqShIo/Dqr6+OT9+YW4/3Zd5LtJd
         nz41cjtD2jZi3XVY3bR4Jrlh9AVjwdZ7XQ61WFdqKZJgV9TOtiYdeITMmw3q/yGobi+b
         0J5HiCMl2gjGCSiTIs9uFR6WZz/uZN4uXhBNWVLiJJKy9YgApeuaeGp4I6V+fsYrXzbd
         taoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X208WmP2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id x20si667252oot.1.2021.01.14.12.13.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:13:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id q2so12122423iow.13
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 12:13:03 -0800 (PST)
X-Received: by 2002:a92:c692:: with SMTP id o18mr8296573ilg.215.1610655182714;
 Thu, 14 Jan 2021 12:13:02 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
 <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
 <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
 <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com>
 <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com> <CAKwvOdnZW03GaEbSC0Hpg1wb-mniAbT2gBeCwB66+RYAdSr=7Q@mail.gmail.com>
In-Reply-To: <CAKwvOdnZW03GaEbSC0Hpg1wb-mniAbT2gBeCwB66+RYAdSr=7Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 21:12:51 +0100
Message-ID: <CA+icZUWUJzG1XcFosgDHmyCaWdCwk8hT8xedQMW66k9Y39YbMA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Caroline Tice <cmtice@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf <bpf@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X208WmP2;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29
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

On Thu, Jan 14, 2021 at 8:20 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Jan 14, 2021 at 11:13 AM Yonghong Song <yhs@fb.com> wrote:
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
>
> Latest is v4: https://lore.kernel.org/lkml/20210113003235.716547-1-ndesaulniers@google.com/
>
> > I think you can add CONFIG_DEBUG_INFO_DWARF5 to kernel with dependency
> > of !CONFIG_DEBUG_INFO_BTF. At the same time, people can debug pahole
> > issues. Once it is resolved, !CONFIG_DEBUG_INFO_BTF dependency can be
> > removed with proper pahole version change in kernel.
>
> SGTM, will send a v5 tomorrow in case there's more feedback.
>

Please CC me on v5.

Feel free to add my Reported-by.

- Sedat -

> >
> > >
> > > FWIW, my distro packages pahole v1.17; rebuilt with ToT v1.19 from
> > > source and also observe the issue.
> > >
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWUJzG1XcFosgDHmyCaWdCwk8hT8xedQMW66k9Y39YbMA%40mail.gmail.com.
