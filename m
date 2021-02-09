Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCGYROAQMGQEJKW3IRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id E744E31577A
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 21:09:44 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id x10sf11593216lfu.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 12:09:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612901384; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJDz5bUXy8WZVX0L4bY3ksI6CYQHUkqfRKdHuTfveJBYslPOCbV9cBUf5+iwG7883Z
         dGOhCugwoP31JRxJLPYbDzDcISVnWqhYtI3k9t9PWGfcnE5fCaUjPrbf44alWAJB1aGi
         zpkO0L3ztn3jIlJF6uM3VnsJZ95/1cyoArhc3+bmkAh/GqRVjccv4C9XaqnF2xLN36Uv
         S4s4m2MUVQU4ylOV4Xxlgryp3rHkyQY2fy3bYZoRzAKGT1gsU9KZboZNdGjMY5PeufD1
         R0tV6DowX7H/dwO2kFsyr1Gv1eYu+tkVrwOSMHTrSjLWl3NCtay4ktOtjE4hK0iYLjRL
         zWoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KnCX7mzP2DQlekfqJ0ScTF5o9f21cN+e6xw7NfmlJ98=;
        b=RurLXjWPaI1DGIn2plJFObsKB9ORaPnzAEoDNzbb2wcgeuMj1VOlvnm3Ld/Jp7IeoC
         xfcIWTQ784NFDVn3uCS2DM6K2iniveRmeMD4zj7tkcPuUlLxpxFjBpMKpkzmo/P8oJEZ
         awpvZqCsc9+IeQ1ocCSyRY0Y2Cv56EqH+5a+x6doy4nzqMVCNJhQDV1dQgsRhN6tMdw+
         x2p0OxaDJ9TP1heZidWjCbKEdhwgBdUsfP7xLQSjXerwP7Xdt64Tu0yLx9idCz58uj1o
         +Hntlsa4rNtbq3zy/4Dyl/6YisoeW3PNmU8uSZqTfxUXOiAkZS6J4Yr/NzOEa6TY9oJF
         XqNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AkqLjJVS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KnCX7mzP2DQlekfqJ0ScTF5o9f21cN+e6xw7NfmlJ98=;
        b=o8+ISUYlAq0p8xEmy+wRHygicDmnOczwhdb88nvy2cTtlDuXL40YUs/rm1DMiOkLe9
         A0Zyf9kbM9HEzZ5O1fPIovxl4M805ORZsgSDoWZlcQBLg4x3UTwx0GqIIQw/Fvf4bkf6
         piu2OvByjfR9Do7w83w1QVkPAQqr12ugVJ7i/93JNr1RcvDPwesezHNrF2Ql4Cf6eXpz
         Jn3ugOpfp5/etpm6U5zaSw17EH0puMzw4Lmrcslre7ulxJCV3doZLHqT+fqYUdL4mK1g
         Doq7/UXXK9AwFbQhAedTOQRzFQ3GCwW+iCJ1APL1NrMgJFEVUtrdC/T+bXK+gqNKWx6P
         J/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KnCX7mzP2DQlekfqJ0ScTF5o9f21cN+e6xw7NfmlJ98=;
        b=ucRIKAn6tuXLQ/UHoe0m7HmQ+WUbS3l3BJzycdWxhSAxHeU+/DMAJu20P5rsavFB6q
         +Jlw5wx90cVn7rfQMDfiFTnD6sMJeEWZAL+KT6VT6oMA+1fevqgTK8D7xI+RMdKNA7o5
         PiPapbsvhOwzfQDvoq3FZnINMDoe9NJ/39awCw2P/RFgvTs6yVk1YGCjHmO6E+hejZIA
         bJlJon3HBYsQs7Ft2U1HuNO+DlHV4cjD8q6ZMrI/MQz8ypfaFy7XEsLKtFpbcSM/qm8z
         REqeB+U/xJzZEO7KCOCQKTyKOf/8LcDBi3hx40hQqGvR3U/dL9M3wX1kbY6CY6H7kt6x
         R8Eg==
X-Gm-Message-State: AOAM531XfSPyM48BvO0JZ+KEttdFMOsMLWbwlXJ3A2inEKlOJFSUFvNO
	rfhmvz/zE0wD2jq2ixEd+Ts=
X-Google-Smtp-Source: ABdhPJwKcn6Cb7lOlxKjmzWWXBPtZbE2b7Z+ZHjxppCDLYKZK38JxENu/QhTcIH5JpRihuzGwaxHgA==
X-Received: by 2002:a05:6512:358d:: with SMTP id m13mr13999723lfr.648.1612901384486;
        Tue, 09 Feb 2021 12:09:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls1800565lff.1.gmail; Tue, 09
 Feb 2021 12:09:43 -0800 (PST)
X-Received: by 2002:ac2:4214:: with SMTP id y20mr14845104lfh.85.1612901383500;
        Tue, 09 Feb 2021 12:09:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612901383; cv=none;
        d=google.com; s=arc-20160816;
        b=nh3lap4XTyZ2qgRPDnNI5/u1YAJPt7DsgZwRBMSq2L3W4POqrXCvvDKqDfOL8SvAWS
         NeUfktUphhKk7c/X/eMenAmA6FQfv6ZX+mN2b6r1JAZwZmcGocjwDKmTU3d2xVFfgzon
         Mt+08TxVISerlSXS2GB1MMhObvTu9yeTUbaOT/fRhOFnZMCJ8cBTHgB5swKLmu0UtbyU
         xVmgkzrOHe8LxYQStvSI8Dt3WY10F7h5/dMEzLAA33VLpvI3R+mloHRhrycmwnHK/KuX
         NoJl2GVbgaikS0R4Ck2O88CYCCgq1US42R49r5IIcoGsrAJvGXXSpAstOJ/WqMHkGZBh
         KFvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5yicjJeOjogJ0GBzkbyijZntdK7Ju5RCDDq26xojPak=;
        b=f1mn9ftjoYxa249++Jl+uWVKcLToxnMMR14gkSTTxB/DJU8gDq78Ieu8360bv1Ghk8
         NtYTsDsTjLfNMyjvMiLrhRiHzHHpxFqAdqIzUzuhFEsojxsxFW/v23S/N1yN6bs+QUaQ
         Jwv84xjKaonZAw8UUmxH0PfCMuhmSF1OWrwEDLzAwT1e3/xEc2YhZA6ZO0XXdIrkLGJA
         fW0xzSGQH+PDYV0X1crr2fbgM8/PRUROCtPisIpSD8XKrVBYNLYeLCOh6sTVefOb/lw6
         fak839ywO9fpT/MJYIwEqawwLAX/WzbRcaNXDYt64qJ3Jwh0ClUBFhbT+2JaWcm6+dv0
         7hRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AkqLjJVS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id b4si505151lfp.11.2021.02.09.12.09.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 12:09:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id m22so30310214lfg.5
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 12:09:43 -0800 (PST)
X-Received: by 2002:a05:6512:12c1:: with SMTP id p1mr15136130lfg.374.1612901382990;
 Tue, 09 Feb 2021 12:09:42 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <YCKwxNDkS9rdr43W@krava> <YCLdJPPC+6QjUsR4@krava>
In-Reply-To: <YCLdJPPC+6QjUsR4@krava>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 9 Feb 2021 12:09:31 -0800
Message-ID: <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Jiri Olsa <jolsa@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Andrii Nakryiko <andrii.nakryiko@gmail.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@redhat.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AkqLjJVS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Tue, Feb 9, 2021 at 11:06 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Tue, Feb 09, 2021 at 05:13:42PM +0100, Jiri Olsa wrote:
> > On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
> >
> > SNIP
> >
> > > > > > >                 DW_AT_prototyped        (true)
> > > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > > >                 DW_AT_external  (true)
> > > > > > >
> > > > > >
> > > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > > strange, given vfs_truncate is just a normal global function.
> > > >
> > > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > > that appears to be nops, which would suggest it's traceable
> > > >
> > > >   ffff80001031f430 <vfs_truncate>:
> > > >   ffff80001031f430: 5f 24 03 d5   hint    #34
> > > >   ffff80001031f434: 1f 20 03 d5   nop
> > > >   ffff80001031f438: 1f 20 03 d5   nop
> > > >   ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > >
> > > > > >
> > > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > > addresses only for static functions, not the global ones (global ones
> > > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > >
> > > I'm still trying to build the kernel.. however ;-)
> >
> > I finally reproduced.. however arm's not using mcount_loc
> > but some other special section.. so it's new mess for me
>
> so ftrace data actualy has vfs_truncate address but with extra 4 bytes:
>
>         ffff80001031f434
>
> real vfs_truncate address:
>
>         ffff80001031f430 g     F .text  0000000000000168 vfs_truncate
>
> vfs_truncate disasm:
>
>         ffff80001031f430 <vfs_truncate>:
>         ffff80001031f430: 5f 24 03 d5   hint    #34
>         ffff80001031f434: 1f 20 03 d5   nop
>         ffff80001031f438: 1f 20 03 d5   nop
>         ffff80001031f43c: 3f 23 03 d5   hint    #25
>
> thats why we don't match it in pahole.. I checked few other functions
> and some have the same problem and some match the function boundary
>
> those that match don't have that first hint instrucion, like:
>
>         ffff800010321e40 <do_faccessat>:
>         ffff800010321e40: 1f 20 03 d5   nop
>         ffff800010321e44: 1f 20 03 d5   nop
>         ffff800010321e48: 3f 23 03 d5   hint    #25
>
> any hints about hint instructions? ;-)

aarch64 makes *some* newer instructions reuse the "hint" ie "nop"
encoding space to make software backwards compatible on older hardware
that doesn't support such instructions.  Is this BTI, perhaps? (The
function is perhaps the destination of an indirect call?)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd%2BzBScSOmEQ0XJe2mAg%40mail.gmail.com.
