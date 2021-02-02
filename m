Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBWOZ4OAAMGQELQJLUJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDA630B7A6
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 07:10:35 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id p8sf1187953pjg.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 22:10:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612246233; cv=pass;
        d=google.com; s=arc-20160816;
        b=btllh56GeiFZ/1TlCEAc6UaIuszpAppyJ8yXYxUvdxR5W7aJKYJk3lq+8OvROGhvLZ
         G+UAcNqQtOPgafuOdLfyLJDzkBxULBQ3RP0lZSqEgg5rVbnfgNfJitILuCi+z/Fs7xnl
         WtIRBC4M3v6lbWli5UOZio7lyizTj5keG/EG4kl/eju+wOnfHDGOHErYmq9dqtdVxgvJ
         dQc/XO2bW3O3C9Edj3LsCBSqtsMa5BVmuls5wCrFQ3Jo7p5WYmGNzcoEMSkZjQ3CuANt
         DN87ScX1NG3MyizGMa3KK8eSaV6+rww1EqR5gxpfQf6G+e6+XqxxY0Ops01IruCCeams
         MGgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=JjyGPu5t8IKCLTXsuajEACzN9w/FtvNXE6If/WY40lQ=;
        b=L8sjzPziyV3W27Be0CvDpdmRAVuNAwNiCWq8IBVgNQFtnFEXO6QUALkjhtj9n3fOYL
         CvAZEyLCy44TD1/sTG/ZoP2wAcSY5Z9hz2hFkCpChX54/LdqkvYUdkpoaXn1ASZavROU
         E0TqKxpGfasGGvLINerJJ0bNu+tsW7hAgtKlWOfo9aRIppeG4hzlV6SdK+AGcWrmP+CE
         0fzQT5imnwXkS+njJEQk5/kIO8JNp6IAkj2ei6Pvnj42QeeUPAtsf59pPV9tfCkGhFaP
         2be73MgyUJS5fCilju6RFcyqrsQ+NLmkDeBo5AC9aLDcJ8RIUT3M6k552bTQQK5UgweO
         b3hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xeb4ljx2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JjyGPu5t8IKCLTXsuajEACzN9w/FtvNXE6If/WY40lQ=;
        b=Zxcg+D3wqUTHHGcKl4vOOx7MgLpcUuS3XqzVSettYBCMTm+2m91RcHvxhlmAnzB9sO
         LPtD8U2413XsAmZpkDgE9Oz1/KNPXwdGs8NKZeFDkt8DPDtLyjZdmc9hRoM7u+jkG0Xn
         Ox6a5HRTcLH6Pq0plcnyEksR28Ytr3LHXeTaDVeC6PJz/g07LjQMHTnYeq7GCiXU3okx
         EIozMrUw4nQbWCZiCK6yuzxH100IpKSe9uW13t2W8Uo0NDPj6aGp39ZTdu8yQcUysU0I
         djd7tIrYkUg9dcGjU5XwqSVuDX9VVcWOC0zoucwnNvIHFy7B4UHxYPll4XnO6BXG0GHi
         mMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JjyGPu5t8IKCLTXsuajEACzN9w/FtvNXE6If/WY40lQ=;
        b=YBCMsZhvyswymH7QfELxfbG2e5lYjVlf9QnuHM2MCExil4bwoWHGZQ7nZCbnVFFBX9
         Rv50Dbq9smz9rGS/eu5EmciJX6b1TJnEfLALb/y9eYes5L3O3rpRht047CdBNNihat0c
         IaHuSJtTmobFGh1gfdBHStpJHEkcOr8syuC5Wavizvf57V3tYSvbWDv+LwUW7arPccm2
         GZ47AYVaZBu25f83xFH3ME5PwwEEV/Dmq31p4fHLcjkQzMTSPYBDsfKs93etlXe1LerF
         p32ls7rrKZsPlH2bFgq00nsR4x6HGxNE7PrJ9MBRKwdHRBERtTFT61Vl3MZEq+FkCKmU
         PkuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532B6EgmlHAsIAXbjJl2KkvpXZyQbDyK29tQ3S2Z3IOzJsxGFhGT
	qOnYdJA1sL8JbB2DtUnhCvg=
X-Google-Smtp-Source: ABdhPJyz2DVWPwsclIwlEIkEZK6DORqPyBPCo7LpCvi9RMQeUeMvTWB6ce2qOJzyh6TKtW9eeR/OwA==
X-Received: by 2002:a17:902:c115:b029:de:8961:47e5 with SMTP id 21-20020a170902c115b02900de896147e5mr20472924pli.46.1612246233543;
        Mon, 01 Feb 2021 22:10:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2dcd:: with SMTP id q13ls923486pjm.0.gmail; Mon, 01
 Feb 2021 22:10:33 -0800 (PST)
X-Received: by 2002:a17:90a:7887:: with SMTP id x7mr2736424pjk.69.1612246232919;
        Mon, 01 Feb 2021 22:10:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612246232; cv=none;
        d=google.com; s=arc-20160816;
        b=nCT5ZMXSeqDK1Bypz/qaPo3ClisMz8WGW+YgR7PeA1cdpgtuI0VMTn8uuSR0o5X0Zh
         ZHpgpBvzC1bak/PtBgNz+G2/4fOIVog6GnYqLexiyr6nQ512ECybBXje6mfKxv9Hsaum
         yZ2Td4vXyH24uGKQkOkpeFesLKL/7hTHQeJ8SUL51H/DDT+CuxZnj/koUmJy8bE9AbS7
         Pjq5C5at+QCCSPyYAKaZ0vS1nlawJkoP4iPIxwtw9OEVulYC6sBp+2tpkl51ke2WedHp
         gpS0Tm+O//S3FQCFiFkZgwALxoBUvgt6C1pD2bDxfS/YKp/l01+Cff03EhP0rYLq0g+I
         f87w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=2faiPUU1kCn9CAla/zsNtBG+tChwSI/0/LPuqDKvFFo=;
        b=kjpO7NwikVEGsAyzhEvBHfLbzyViQ75p/o4mDhFGdd+xc5cXTXljhoWKQpz34LYvdX
         fsZpMW8moSSerulB6HNErGokiycQPZajM8Ha2BQSodXpsfpv8uXwBoLiU2HBY0jG+RdN
         gHtvdGyOaXWVibGFCz4mbQVdHaCJae/Y621g3SMALAwgOv7tijg88KQ6EBBENrWLFndO
         07nVLB2tvan7MUgUitth5R/fJvM3Jf27M7Uj1aDcblWWHuGPEOvpFLQIs/gCzUzl31M2
         K4mxIzz+C8gDPbDTLShjdmMsL5AnuDToMYKe5qyQWnGqUnPH43bxyivSdoeKaULQNj68
         nW9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xeb4ljx2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id b189si867487pfg.5.2021.02.01.22.10.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 22:10:32 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 1126AFuI031939
	for <clang-built-linux@googlegroups.com>; Tue, 2 Feb 2021 15:10:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 1126AFuI031939
X-Nifty-SrcIP: [209.85.214.181]
Received: by mail-pl1-f181.google.com with SMTP id u15so11884031plf.1
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 22:10:16 -0800 (PST)
X-Received: by 2002:a17:90a:184:: with SMTP id 4mr2633282pjc.87.1612246215253;
 Mon, 01 Feb 2021 22:10:15 -0800 (PST)
MIME-Version: 1.0
References: <20210201010819.655597-1-masahiroy@kernel.org> <CAKwvOdnECGDFe=n6ms0Aj7FB0sN7ktZyk4dyVvV0UTgPvpuWpA@mail.gmail.com>
In-Reply-To: <CAKwvOdnECGDFe=n6ms0Aj7FB0sN7ktZyk4dyVvV0UTgPvpuWpA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 2 Feb 2021 15:09:38 +0900
X-Gmail-Original-Message-ID: <CAK7LNATSna9f8cd5Lm=zx2vfJzk=WUnAUkA8V593O304zTx=vQ@mail.gmail.com>
Message-ID: <CAK7LNATSna9f8cd5Lm=zx2vfJzk=WUnAUkA8V593O304zTx=vQ@mail.gmail.com>
Subject: Re: [PATCH] scripts: switch some more scripts explicitly to Python 3
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>, linux-spdx@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xeb4ljx2;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Feb 2, 2021 at 3:28 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Sun, Jan 31, 2021 at 5:08 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > For the same reason as commit 51839e29cb59 ("scripts: switch explicitly
> > to Python 3"), switch some more scripts, which I tested and confirmed
> > working on Python 3.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> Thanks for the patch. It's time to move on from Python 2.
>
> It looks like there's already a patch in -next for scripts/spdxcheck.py.
> ("spdxcheck.py: Use Python 3") by Bert Vermeulen.
> https://lore.kernel.org/r/20210121085412.265400-1-bert@biot.com

OK, I dropped the spdxcheck.py change in v2.



> What about:
> scripts/tracing/draw_functrace.py
> scripts/show_delta
> scripts/jobserver-exec
>
> Or do those need additional source level changes?


I touched jobserver-exec in this patch:

https://patchwork.kernel.org/project/linux-kbuild/patch/20210201010024.654526-1-masahiroy@kernel.org/


I have not tested draw_functrac.py or show_delta.





> > ---
> >
> >  scripts/clang-tools/gen_compile_commands.py | 2 +-
> >  scripts/clang-tools/run-clang-tools.py      | 2 +-
> >  scripts/spdxcheck.py                        | 2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> > index 19963708bcf8..8ddb5d099029 100755
> > --- a/scripts/clang-tools/gen_compile_commands.py
> > +++ b/scripts/clang-tools/gen_compile_commands.py
> > @@ -1,4 +1,4 @@
> > -#!/usr/bin/env python
> > +#!/usr/bin/env python3
> >  # SPDX-License-Identifier: GPL-2.0
> >  #
> >  # Copyright (C) Google LLC, 2018
> > diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> > index fa7655c7cec0..f754415af398 100755
> > --- a/scripts/clang-tools/run-clang-tools.py
> > +++ b/scripts/clang-tools/run-clang-tools.py
> > @@ -1,4 +1,4 @@
> > -#!/usr/bin/env python
> > +#!/usr/bin/env python3
> >  # SPDX-License-Identifier: GPL-2.0
> >  #
> >  # Copyright (C) Google LLC, 2020
> > diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
> > index bc87200f9c7c..cbdb5c83c08f 100755
> > --- a/scripts/spdxcheck.py
> > +++ b/scripts/spdxcheck.py
> > @@ -1,4 +1,4 @@
> > -#!/usr/bin/env python
> > +#!/usr/bin/env python3
> >  # SPDX-License-Identifier: GPL-2.0
> >  # Copyright Thomas Gleixner <tglx@linutronix.de>
> >
> > --
> > 2.27.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATSna9f8cd5Lm%3Dzx2vfJzk%3DWUnAUkA8V593O304zTx%3DvQ%40mail.gmail.com.
