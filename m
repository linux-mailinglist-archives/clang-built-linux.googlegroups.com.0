Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGVKQKAAMGQEZETAS6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5DF2F6A56
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:01:48 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id w9sf3949385pjh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:01:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610650907; cv=pass;
        d=google.com; s=arc-20160816;
        b=e6LDGPb7AqR6YbxCdaonwlzORNv2SSLZpHW4wEBYU6r6vV+yEqAVsol21MSe5lf4PQ
         4P/pzB6G8l5DuGEyOyx0J8r+X638dQ7XbSb67WczFkDQ1F8RX3BEXPlDNtiRiaHCQ/iY
         agE9AKUSkqIejGEhzfpJ4lYXTDzSxKaO8KEYdFQzmEUjNNrvL+M/xTZo1vczbm6qUDYN
         7cGaZgYF7e7PQ7Uy3QL+DQOXmsMRC6ISTEbT7Lnlwtb5OKnmDcfz/y5+CoTx5OD/PPHG
         uZrQDQ7PwNNSk1JNaIobBshLHvFvwgrsa6cJ0Ub8jXxHlsVZ9yi+ZB1sUQkRCG0r/sjw
         YmNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q2Jd+xKfiUy46DsCrMCtzRrdI4Ipym+uKnXD/srxHh4=;
        b=fpMKxvRmTpcwl6pzvwTBo9Ul57WYP3uSBBBjunlSt21iin59roCC9faPRHMsLG9iL5
         jRuZRqtLeuGK+CNtxI4lGAUuYJ6R9S8awOpuql9Xd2o9wLwTCkC3waqUc2ApB1ZJR0YL
         LTKo5L36VSaYGDMGUhLfom3D8BDPe08KG6MZIWToFRDL2HTDjHLctLqE4wJ3qSrn7yMo
         PbLoNQTDGtHipA320zJjDmCzyLvzbR2EHQbvBtyBeMIZw5fW/LWA0EcU7Mtc7AGZ3Ep3
         VYWKrw0DR/pVmJD6hTu0GoSG/ruu8VlsmSY+0oUtovmOc2ncywwawkukBBQ/QoNFcPdO
         yIjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cHUsrtVU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2Jd+xKfiUy46DsCrMCtzRrdI4Ipym+uKnXD/srxHh4=;
        b=iLQlT/9I6gl5AZO/tuWgQIf3g3cPkyKo/Pz5B0cTfMIW2XgsWTnfy1OxtRSnGm4jgI
         w6JSZp3rZiQw+EhTOofZCWBXfX0k2VYKiVYup/75z8IOTNzrafpFcc3m4UJXOKh6FOxn
         pGGinn/GGKN+9KFJjjq69X72Gz7boUalpETaVAgkl8dFgISEOR8d1mhldE5mQllzexL3
         tVtRXIahVxrbX3+/HP737UZgX4y+Ifgx/XuFa+ttLRno+ZR9YnzwHmPlvxCbs09frxmt
         6HrVupACnAQmhADNLGPmQcN+CaLV9WaqtI1hz24otdFO+lYfmBcFYZZDcuzQN1zTcwlC
         JdZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2Jd+xKfiUy46DsCrMCtzRrdI4Ipym+uKnXD/srxHh4=;
        b=Q8jtGGSfFv1pLTcV/5hC9n3U90SvXrjnxHmwC4RcdSU0ZyB85+GBjwj1IrJX5bKiVU
         J4bJX/ejlQyqYHBcDXEDn1rrOj70EoPwZkPNxe5AvNyaAA3Ud25EcvxjLMWGoEAY/Hzp
         BxWvemxAdZm41lAyTHLZQy/QrnankIdR3UOjLedQtyGqCy5YF9cYnfNzNjz8N6CRnFb9
         VpwwtxsUqyCB8fxlD4F9bbU79WsWxhbkyIOxuIbSEB4PZVxyII/QuL6Fe2cuHu1rjJKh
         LWzcX3UNU7ZkxCXsu3WUqSBITnnwLRLkEsk2rAWQ7v8/uuTGSYmXbyvu9fG1L1ZmKS6F
         O7rQ==
X-Gm-Message-State: AOAM532Vnh7z31ycfUMkNie2B2REN6L3rtn/1PNzOJ53cF0sXNsdl5lK
	C5PYCd/lQ3uygNQPXhy1Rbw=
X-Google-Smtp-Source: ABdhPJzoqefhXu0x758ioffe5YneJ++eA3m2pKXorLcy+c69ZlBc7aZNZxPNNu5xAzxt78uIlWj5yw==
X-Received: by 2002:a63:5004:: with SMTP id e4mr8920976pgb.338.1610650906952;
        Thu, 14 Jan 2021 11:01:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2c94:: with SMTP id s142ls2562119pgs.9.gmail; Thu, 14
 Jan 2021 11:01:46 -0800 (PST)
X-Received: by 2002:a63:4301:: with SMTP id q1mr8774960pga.430.1610650906242;
        Thu, 14 Jan 2021 11:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610650906; cv=none;
        d=google.com; s=arc-20160816;
        b=aq0pV2Ga8IVgV/X5HWjDI6X3oznBeHvS4Noc7H1lnSG9SuueAlbRxgNp85pdmw8kDz
         wB7K+S0DJ/1UWJutSfbUovWCI3vvXYUP/kCuDLes9SEcT7KyFj1FfEMRlITRsWQu7AHS
         Kwl1gwt9EAvIduNs1sBOi+ZQoVjkD+WlbcDVuXOOJDM+KrnR852SzuDdnhSY4pXzG951
         hXPuomiV8/E48sCWH0tUWPI7g6xMqq6PYVzmz9CZdW7yDNfnFcBWiWka0aPcHZ1o3CC5
         T+iw74Qe3cs3mImkX5mMXg9TW38JwA0zZ01J/wMmbclvfUvaKhOKw/VB9WhnAC5y6sWa
         QcWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vgzrtQA6cwJYVB4E+QNjELHwDOFxgcKkT8fmdOGWavA=;
        b=eideIe3+w+UO1dv6v0QVfU59vNiL5BPixi5pClAqUbHt9ZbQGX5QDyLKp1RNxfUPnn
         JSnjOnatqTbf7swSfv7VYtvivzgOO7uDi1+cgUrEsdy1NP2jZwkZZHMngN0dHwFNV8zB
         mBY8IwprpmO1a8EKPadxG8fyoWX4Lv/cmyxLadNPnnceU3GrnRXla7ov1HHfibHvbeMg
         xe6fKywrMPNeyC+2QWI8k6ERA4fczoIZSozeXCu+qmoGRCGgqv0kezC7p+R1DTBvbyaI
         AX6GJK7rAMyJFYT+sRFIrnByERIRckZmA4C6JMh3BtgOOGS/nHVmcE1YEyAot9gCc+wT
         66Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cHUsrtVU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id o14si519120pjt.0.2021.01.14.11.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:01:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id b5so3747832pjk.2
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 11:01:46 -0800 (PST)
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr6220744pjf.25.1610650905813;
 Thu, 14 Jan 2021 11:01:45 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
 <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com> <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
In-Reply-To: <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 11:01:35 -0800
Message-ID: <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Caroline Tice <cmtice@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf <bpf@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cHUsrtVU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029
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

On Thu, Jan 14, 2021 at 10:53 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Jan 13, 2021 at 10:18 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Jan 13, 2021 at 11:25 PM Caroline Tice <cmtice@google.com> wrote:
> > >
> > > On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >>
> > >> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
> > >> CONFIG_DEBUG_INFO_BTF=y:
> > >>
> > >> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
> > >> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!
>
> I can confirm that I see a stream of these warnings when building with
> this patch series applied, and those two configs enabled.
>
> rebuilding with `make ... V=1`, it looks like the call to:
>
> + pahole -J .tmp_vmlinux.btf
>
> is triggering these.
>
> Shall I send a v4 that adds a Kconfig dependency on !DEBUG_INFO_BTF?
> Does pahole have a bug tracker?

FWIW, my distro packages pahole v1.17; rebuilt with ToT v1.19 from
source and also observe the issue.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnSx%2B8snm%2Bq%3DeNMT4A-VFFnwPYxM%3DuunRkXdzX-AG4s0A%40mail.gmail.com.
