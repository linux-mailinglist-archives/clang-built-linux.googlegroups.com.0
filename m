Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4PG52AAMGQE65TLMPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E5830EEA4
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 09:42:27 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id t6sf1569270pje.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 00:42:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612428145; cv=pass;
        d=google.com; s=arc-20160816;
        b=YIYbWqOR/5vbchUbejCTl8+Xe6pNvx2Rj9v/TZYaOcmgeMhIAb3fJEQs7lgpCtZcXC
         PcmuKVjzV8HtQQ5JAi14Am56qioHfNPIrrL02SWdjx996/GyutlAeWsZ6Nxa8aa+YkoP
         0jnzvYgUG5AVcgt9m2sD5jWLT33IF0WZHmczl5poKusSAJmR8UGA1HoAfii1uwn4zLQ/
         9QZsK44whwULCCvhKodW6Rzme9ahdi/JMiPbRxLRqwYPpKxkDKX2I/12roPfRRket84X
         Gp5XGxzim7RNjEYhDV2ZH0uFpaMNU1HTvjjwMNMhrtizD3WhFKk6r5juD28MxeV1RDDV
         sLew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=w8Q7vsWu+yTkdQnm05MtRifVmfjPwY8XohuJecJjZN0=;
        b=OXO9USG02BcAfDWGH7wZgIbAaviXhsm/mpy/ezm2c0zTj+fT1n0Mqd7kIckZDNzlPj
         7/79nkNlTTDwTnd3ZG82m3K8j6AKjmfRYL6+2xNc75ccGz7lmKoH0H5I+/9Dzk57icIa
         VyABlaKdjyyegVservkGjpe463HoWVDBnM8mrxqbRYPuVoY6bNDm/9YCPtZRGtsjr9Sh
         LaIb3yelwIy7wTvOH8aoYI/dG8t64kRvAEsE9dGVcNoRdeZ9bxIvURtAjH4yQ1SlyPrI
         2aIIb+FdUi9PkfDBcLR6GFRwdtl600YlVTZu/P91x4NP2y08zwWi6K2/sryTt0hcZe5c
         jxXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z7Xo2oAA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w8Q7vsWu+yTkdQnm05MtRifVmfjPwY8XohuJecJjZN0=;
        b=FCPvYyw2YThGgAaaXhqxFucNHZHgzEaWWaw5YnwJ5CHhTNlItyPa972RrFPwB+J6XA
         HmBNDvosP8J4GIxXbGt8E9VzDjtASAEGCXl/0SECQaEkM30+4q64AIivTB4nSxL92l6g
         x09UkjGnx8Di9q1IKyg9PQNA4EXggADlLtUM0GVqXileP8mjAgZEenclOeYCn329Z2rG
         r9P/gO3RIQqwQcYY+Elyfs3Eflg6bb1o1upa08gUBPP0wnKdt8MO2gF/7ZHsXEGq/gdy
         1uZiuNRdm8pkM3Asn2nyKw+QSj8e9qyXqPZlJNyksdiVIO1XjICmY4fOcN596K/aDkgY
         tLJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w8Q7vsWu+yTkdQnm05MtRifVmfjPwY8XohuJecJjZN0=;
        b=dD4TCWaz2ZWYdiiRM27u9QCeuDB+N2pwz4PWjoGxykIx3S2NhA+E3gOAdnnnkYs7rW
         IhU4VZT67KrsW6/ZbUmyn94wCCt3zYv+bg9Y/x0wt9QwjvlpAt0tdKiNwlJheIga5ZVx
         zq3Qmt09qpwDVlbDHQBw4zLdY31W3AndRHTIbtcjzZ5OiV4CiwQIoOw2944dY0JcigkL
         Ll1v1qT30dMGKfg7acuH0a4P0jAjdj2SACq4VDvTAZVXGmpJecpC1rvfUrMxahELfVWy
         e9LWSFUjVQFTmDZZMSBdpf8iwXLClMlg9diQXgwXJ7TxVOn5IKGVFfmr2FEJqHaB0j97
         du9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w8Q7vsWu+yTkdQnm05MtRifVmfjPwY8XohuJecJjZN0=;
        b=OJryzoAxJk3UPYQDAQ9dAQAhXjxDLbi+Vc84dQlyNHLUmUGSlv5W6vBgIWnFdi7xSD
         i4i+XS8/B84uuof6NLrAgrrkdqtNIWZYXbCIocmMpRCdodK+hqmIlmjEizDH3okPoxDe
         Kl/G5In04TZb4i0ZujqqmxXvoPlr4SK0zuBZOaKGbsmdeb/ymQhSWsst/SKIZBGoapA+
         UZ6R1wkWawwmt+m1ZOLKNstNOseOHV8+4N5E2J9z+iTNLfoDnMv5IOHSM/02MCQE28xA
         yuFCjiaZhaFjDhYnv8LjkQsfaQdmWTHkhvDz8pOZ/Frss+M/0FPAPGAVwku4CAPGn8Dk
         /rKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FRvV7Q2rcySCNEvKTmEg9nKRemYwI7vCexkE+vZljqT5h03U8
	v9rWMMsXEKw23Cq1NtCGR2w=
X-Google-Smtp-Source: ABdhPJzGHmGBkzScVeM83YpACNse5R7o27WuuQehL7F5R5ImkhFDnk1mbjWALHXu3LlT8iO+UwLvYw==
X-Received: by 2002:a63:e058:: with SMTP id n24mr7828464pgj.345.1612428145593;
        Thu, 04 Feb 2021 00:42:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:87c1:: with SMTP id i184ls1630277pge.4.gmail; Thu, 04
 Feb 2021 00:42:25 -0800 (PST)
X-Received: by 2002:aa7:864d:0:b029:1d5:ca12:f0e6 with SMTP id a13-20020aa7864d0000b02901d5ca12f0e6mr472742pfo.58.1612428144905;
        Thu, 04 Feb 2021 00:42:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612428144; cv=none;
        d=google.com; s=arc-20160816;
        b=vpsmsu6PkGMBIKJ/3xG6MNmO6n9ko3GrcQId96MC0TuLIRfmxBiolAGEgKCfW2xiGm
         qWuZ2glt/4AklXZ56d3CLIj/EF3ucZIVgIl8Wry3MRFI3MBU/ptVpTaZmqNnea0UznQi
         k7p/0whs6ajTUauqbRMnpCI6g9QaDi8k8r9+cdkiF3ypsxGD3D86baW+vbB4rydteDht
         J5AouUrmSo9z+GLiBvgPkSSNTUv84BA64LhbM3hexNAf1m8aYSMOIgWAlre19LaNhQdF
         3J2C/Ge5C+h6U+Az6xGmtuNpOjFIPtER0JK8lxvEbnmHb4o9NhaTdi8/j+kRgEENLwDe
         HwCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oQO+dQVEX2nOVug2QIeMZE1dpbuWM/CVbjcmZ9bpCUE=;
        b=C8MlTCjJPDTxuknYcT3sKHb67otj+qbuPg1sGws53JmFSMNErFf8SDmzVRrSSbMua7
         Y1SxU7O4JE9b8XO0F0lQH+GAa7QuOfT1crhsSnWEfjHwPSpRIRhlTr8SNx2KEhLGL/IQ
         iYqjnzDQdRyGu82YItsdQ5rQ+FtIGvomkLH/1h1lTOObpoFiTBMLQTHwMnYfe1iiXH+I
         xIheWnziXQdrCzRifaejz706M6NGBFK4Vu7LK69BbAQHJZrNeun7VmxuCbOVzPU259oI
         GV0OR4n6ym4O9d3z0DBYfbW/2XZ2G+aaQORcMwB7Xra6GhPqhrmwxphupwDpSmi9pRrS
         r4TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z7Xo2oAA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id b189si170584pfg.5.2021.02.04.00.42.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 00:42:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id a16so1848482ilq.5
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 00:42:24 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr6059065ilq.112.1612428144646;
 Thu, 04 Feb 2021 00:42:24 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com> <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
In-Reply-To: <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Feb 2021 09:42:13 +0100
Message-ID: <CA+icZUW2omV581KN0Qv=nGsk=6a-GG2Cm2OYeRxETrZP_obwEQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andrii@kernel.org>, Jiri Olsa <jolsa@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, dwarves@vger.kernel.org, bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z7Xo2oAA;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133
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

On Thu, Feb 4, 2021 at 3:58 AM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
...
>
> Is there another (easy) way to get your patch set without the b4 tool?
> Is your patch set present in some patchworks instance, so that I can
> download it in mbox format, for example?
>

Just to promote the b4 tool - we have some cool wiki in [1].

Personally, I got in touch with b4 when dealing with the
ClangBuiltLinux project.

Note: Sometimes it takes a bit for the patch(set) to be available from
the LORE link.

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/wiki/Command-line-tips-and-tricks#fetching-a-single-patch-or-series-from-lkml

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW2omV581KN0Qv%3DnGsk%3D6a-GG2Cm2OYeRxETrZP_obwEQ%40mail.gmail.com.
