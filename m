Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBNHLROAQMGQEPUMY2BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1573157FD
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 21:51:01 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id p5sf3603343uao.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 12:51:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612903860; cv=pass;
        d=google.com; s=arc-20160816;
        b=n1ubbbTh9nCVY14GmsIRaEuMOOHTGFu4aH//tvNaFXMcWR9FHDBoCN9pIEVNWmwpho
         CT/enYWb5G21MXo09B3M8ETCARLxTMcvg0kPyKOh+khfKBcyIxp0fat1CbNo+UZNA3dG
         gf/NinzVJzxm7Huw4+o1qnq/QprOrIJXU6lXo7QZM3qlqjhbVLAOLjLhGugFkPEojupa
         uLg5V3LtDjdP0XtDqJXBftGXYDEM7HzfLIJk37oecFBcEI+KJDKpjnSGxN01msFD330d
         j6qaqyBDJ1OnIm+B3m1TB4YLjqn3vko5AGFMfsCt671wQTZEZ87rJ2LSDQUDB9egl+Pj
         c5NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BhtwUJCCPQ4Ooy2FbPxOImvjI5fbEffP2TOVrZ3ZvZ8=;
        b=ZmUKLTA9rv78XoUI9I2pDtUJXIeTphSG4eR/FtAhtLzcwZMhBRhIOHbCvksZNHlkCX
         1/Y2s1VlbNicpPqVglyvle02AS/rzCT/7Ve9RScRpFJ1HvWlimrPj1QtaKtwu1w17Alk
         abIiJNMFDV7BxW6DGjcmNA8/Ntts3IX8aw/Qzj39lwCq3MtUsjuEhuC+3ZrY3a6vFd0a
         Kmsd00F18I7x1nb8fazEJgOEo2LsZVe588YfJKAlm5iWOE2DZmt++f8Q6vp/61Vpdz+Z
         kFZloD+5cLUo2Rw6bZsxwnoJcMHsLc6htlK5GFYIWdZLQukC2Zef3OZHm2F84veIvuA1
         Qsgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RZ+GSEdG;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BhtwUJCCPQ4Ooy2FbPxOImvjI5fbEffP2TOVrZ3ZvZ8=;
        b=BNPBuJOn+gnRm4cMlAwWAG2qqJRx80QI+uWU/UqJkXvMt/OgNaQXlbmDEWUYKb7G17
         67q6M6pSMCotP+ZZgRAo+pkTuSG7gNNzxj6NVLHuhTPzYluhZlmjUTNXfGWbpbyOX7dp
         8nlx8KyddgHoOtfeKa0lOeYLrA5OWo3AV8WU0Qh6QPz44/YGZUtSbmOUFZiB8BFQVXNH
         ttVbXzb++ZLv5zggasR+ERMLIWMeoW3qbg9dFYaUUTvQM7LwXYGGdUMXoY8MzUHp6BnY
         2GaKqMDi3WE/CVIeFIsLXbjau0uESB9umv5ZR2HNskSdAMh0TzQZ7X2wTrtzoe/3Yzut
         Dwew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BhtwUJCCPQ4Ooy2FbPxOImvjI5fbEffP2TOVrZ3ZvZ8=;
        b=DLmMTe1yIpj8f48NhI7YNBNUOq+kE/ffy7OHSQ+G2o6attDG3MAO0lcaFx3w224IO3
         tFbd9YlU7F2fnUluzL3nIz3rt7xK39Mrwc6PyVFf11XEy5Ol+EdRxwy3KiX/QEuVefxY
         DmHeL6SjNAq848+b4gXFq8JEsla1r/lpZrNVz4k5L9R0FYTGKEbZzmrAgtnjezHLnEQd
         uGhEopgxmc7VFZn0Hi9Xo68sgNdQZaAb4QoRco8cRSXhBZH8a6hfUIsQrDYk1EcKEdb6
         mWyLzTEmDL3LgX9tLUGMTOkshedXexnwdAcCH1MUyiP9wBOiYwT0B7Rw4kbGdF9d+dbm
         MeKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZTQPvVpsO7b0YLgF36+kpd4lr6hiGyiVMSLDA+ZY095eEyUIY
	4JpqvPIgkawdI0XCAf+eAZU=
X-Google-Smtp-Source: ABdhPJxRbP9yQU4P9GnysNca3Y7HxNiNzUWvXn68BgRxQmeQfLyLcrz7Vx6VzAIj9ItBicf+ifD35w==
X-Received: by 2002:ab0:25cf:: with SMTP id y15mr14930989uan.76.1612903860386;
        Tue, 09 Feb 2021 12:51:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bc14:: with SMTP id t20ls1267402vsn.6.gmail; Tue, 09 Feb
 2021 12:50:59 -0800 (PST)
X-Received: by 2002:a05:6102:22db:: with SMTP id a27mr7506875vsh.1.1612903859861;
        Tue, 09 Feb 2021 12:50:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612903859; cv=none;
        d=google.com; s=arc-20160816;
        b=FzgPxI/VGAowEF4DeVUBBWml3n1HBRaN1wEVpRX8Y6CLDokVVl+Vinkmgm3DyKfWov
         3mCsjCwPgaAwJPqOmPWgYuDqDmkYpY8rXFuOSq+kvBjUnyP+JHrQvMrBDMo//Qj1CpvJ
         7JYk+7PlAkvBzCiO/p9UFildEoL1lt4UFIEt1j5kMBtSRJ2xl6noeXtx0b32xoRV8Vw4
         2J0otZQZziX3gu++w4io8/qmR94L6gnHnTQ2fK3V8E5UVG2CMLKI2Cp1sutZ9dnKjGqz
         k635xYtf5+5pZ+9cMvSiZGaWq6SauKtblalL8D2R4+2W4AjAsm6JHCo0jPQQdH0JfnJd
         kNpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ffZWl0zAkeShUXi5oSKZSyfqba08rmdzeXxgPDXidzE=;
        b=RHtZx5xx8g5udaNU42ylCnlo4OjlNEm+nsZ/kN+XERHzAdnwRuxbTltGFaxGKvbqqW
         aGPh+p6W6X2rE28XyP7MTN+5455SWXrE6ribXQ2CXNAFVtGxWL3ZZFszTEFGuG5oH0HT
         b+SI5dEdeYf2SEfDUI+VbzlDTHLvgQsSll/6XrYelPMyxxTfIOB2bWh8DuBn1RX6Xstk
         GENGS5sU8obXWfFllPULELSQvfxvxyLcC2b5+zIy+YPKDaiH5S1xDkGuNvLWHa/vPqrs
         LTlwdxwRKT4inp97r9Fylwdaz2g1qN988ml4qzgK4nUs5Qe7VsDmMIoIsoMYC8sGPlYu
         c7AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RZ+GSEdG;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y127si931024vsc.0.2021.02.09.12.50.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 12:50:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-TPMk_TRPPyyGwYD-JA5hEQ-1; Tue, 09 Feb 2021 15:50:55 -0500
X-MC-Unique: TPMk_TRPPyyGwYD-JA5hEQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F28809126F;
	Tue,  9 Feb 2021 20:50:52 +0000 (UTC)
Received: from krava (unknown [10.40.192.77])
	by smtp.corp.redhat.com (Postfix) with SMTP id 7D6C86062F;
	Tue,  9 Feb 2021 20:50:49 +0000 (UTC)
Date: Tue, 9 Feb 2021 21:50:48 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>, Networking <netdev@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Daniel Kiss <daniel.kiss@arm.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <YCL1qLzuATlvM8Dh@krava>
References: <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <YCKwxNDkS9rdr43W@krava>
 <YCLdJPPC+6QjUsR4@krava>
 <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RZ+GSEdG;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Feb 09, 2021 at 12:09:31PM -0800, Nick Desaulniers wrote:
> On Tue, Feb 9, 2021 at 11:06 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Tue, Feb 09, 2021 at 05:13:42PM +0100, Jiri Olsa wrote:
> > > On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
> > >
> > > SNIP
> > >
> > > > > > > >                 DW_AT_prototyped        (true)
> > > > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > > > >                 DW_AT_external  (true)
> > > > > > > >
> > > > > > >
> > > > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > > > strange, given vfs_truncate is just a normal global function.
> > > > >
> > > > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > > > that appears to be nops, which would suggest it's traceable
> > > > >
> > > > >   ffff80001031f430 <vfs_truncate>:
> > > > >   ffff80001031f430: 5f 24 03 d5   hint    #34
> > > > >   ffff80001031f434: 1f 20 03 d5   nop
> > > > >   ffff80001031f438: 1f 20 03 d5   nop
> > > > >   ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > > >
> > > > > > >
> > > > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > > > addresses only for static functions, not the global ones (global ones
> > > > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > > >
> > > > I'm still trying to build the kernel.. however ;-)
> > >
> > > I finally reproduced.. however arm's not using mcount_loc
> > > but some other special section.. so it's new mess for me
> >
> > so ftrace data actualy has vfs_truncate address but with extra 4 bytes:
> >
> >         ffff80001031f434
> >
> > real vfs_truncate address:
> >
> >         ffff80001031f430 g     F .text  0000000000000168 vfs_truncate
> >
> > vfs_truncate disasm:
> >
> >         ffff80001031f430 <vfs_truncate>:
> >         ffff80001031f430: 5f 24 03 d5   hint    #34
> >         ffff80001031f434: 1f 20 03 d5   nop
> >         ffff80001031f438: 1f 20 03 d5   nop
> >         ffff80001031f43c: 3f 23 03 d5   hint    #25
> >
> > thats why we don't match it in pahole.. I checked few other functions
> > and some have the same problem and some match the function boundary
> >
> > those that match don't have that first hint instrucion, like:
> >
> >         ffff800010321e40 <do_faccessat>:
> >         ffff800010321e40: 1f 20 03 d5   nop
> >         ffff800010321e44: 1f 20 03 d5   nop
> >         ffff800010321e48: 3f 23 03 d5   hint    #25
> >
> > any hints about hint instructions? ;-)
> 
> aarch64 makes *some* newer instructions reuse the "hint" ie "nop"
> encoding space to make software backwards compatible on older hardware
> that doesn't support such instructions.  Is this BTI, perhaps? (The
> function is perhaps the destination of an indirect call?)

I see, I think we can't take ftrace addresses as start of the function
because there could be extra instruction(s) related to the call before
it like here

we need to check ftrace address be within the function/symbol,
not exact start

jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCL1qLzuATlvM8Dh%40krava.
