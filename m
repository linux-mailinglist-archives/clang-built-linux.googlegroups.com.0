Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ445WAAMGQEBMTVCJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C9330E975
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 02:31:20 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id v13sf966781qvm.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 17:31:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612402279; cv=pass;
        d=google.com; s=arc-20160816;
        b=pWzRj1xH2VU1rO4s19L+Yl960nHVCJ0GLA6YaE1frSsHpdZ/uNts9t9VAFn1auHmB6
         PzSCEgBjKHrRQt9aqeYV6okegutj86MQq2Gd5krBOaKmTjwetSMhs3C7WnSXn9C6RE8e
         dW+GaHxLKihgNQlURbCDQzsdIicCK1AA1O/ol7RRtVvmkRjD3aR9HH1nQxSV46k8irqG
         AaJqGaoUvStMXRT8yjkAyAX8POonlGMB9VwzYVwpvBzirShCJS5SOXy7+whgFjCZyhF5
         impCsi3PTeypXz+mcs4/7MUzhrzrv4skIln2abnH21lbNRyL/84F//uv9W4RT8TfaoeM
         Xn7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fUDNpxdSSeQqDaLeRMPvc/wcdFYx4Ea6MPa/OyM+irA=;
        b=bhyXucP+wBN8avNumnvrp/FB2V0nWdmPcCo1Two85ljTKbnL4RkO5bQqXGCaIzcquQ
         L2q81A+pMAdBV5VT+FayMaW068JXmDbCOjDvmgWiaZdDsJeXrjiOqyEvdL39XU2moxLq
         G/2YsDYlwziY2RpQxUhxsZTg3fV6gDCSt/iFpCdh4g8Ct8hq5MkCw4KFQGCPN7AJuvBR
         Mgdivh8zIqWZ+RJnngp11miM54CAIHBgDzX8U5Pj8FRdRdayLF0pNeXcrSq2DOiCzfec
         Ap4QnODS/fz/ZJhEyL0iTMUXdKfZ5Tp1Yn7nMAEKi0N+Shs+gMb4PAEozYjeDSfdiAJD
         AfNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m+Eh59y2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fUDNpxdSSeQqDaLeRMPvc/wcdFYx4Ea6MPa/OyM+irA=;
        b=mjQN516FbjPGIN4Rm3KoJjwZlVapm/tYECA79BxapyHkDWVUMpptjh2QORVsm7j4uU
         NKDdLHTv3zblYL9hYBIuinzKiMcI6Thfax4mcPy2ZgDOQYjUvNevVSBvFP7oDCv9+4qZ
         3/s+8Tl860yQV6/jJwYEE5uP6vzn+x4oRqRw9c1WPWjA/yomGPOJLjPBxK1sTXyvLCgf
         YI4RW2JgEZ6hgE1WYpywfRiXBDT76r+qEkeLEYuCuEhrobkbx2uFAzKAxxZ8W1FEY0jJ
         /nVtiJaDHIPB1BBnWLD83FPqUz+zbqVShTRIM1joMZLF/R7Dc6yNsUk6C1lPBfnSByE6
         F9Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fUDNpxdSSeQqDaLeRMPvc/wcdFYx4Ea6MPa/OyM+irA=;
        b=IL7M9sRMghjwi2sbbJDfmOONuixePF+oqQZlY9e9b6zEt/y2unBhhEI1YRo4VrHPIt
         xb7ygZui0GQKM4Jpw2n5fI1tEXviZlTLGbKSym8oLBRwSuPWV0O5wPL0ralxoItxQPj7
         bd+I01dD/ngsuBzfr+cM+22qagfkejCtd2sO+I3qks6WlgEMkMPO8BFqZ+6BQUjn5XyU
         CyjNvA5F4ZfNZFlA52dv+y1IE6ax/5cQR+/jdCPBKDErX0fN0NKgxB1U2QvlABYeUPW0
         Z5ElNhtdIDhqWeeeXtzO651mg9q+lut4CF9DfEprq6NDQHvGjn1TNUNsroH3OtGuUXlj
         6evw==
X-Gm-Message-State: AOAM530KYKwKvBgQhm5WNFQNCtvWTulByE8L9ySEDTBY/7qWzmF1Ofy4
	J8OsSnvp3LS/zk2eQM3Hj+Y=
X-Google-Smtp-Source: ABdhPJxkZUVqCLSgwgcgMQz92yD34zwGi9GX+/pJ14cCE4uMC/2Ia3tvcDnew2RsnQYfLjAspZIkVA==
X-Received: by 2002:ac8:6b0f:: with SMTP id w15mr5355789qts.62.1612402279178;
        Wed, 03 Feb 2021 17:31:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1c2:: with SMTP id t2ls1557581qtw.10.gmail; Wed, 03
 Feb 2021 17:31:18 -0800 (PST)
X-Received: by 2002:ac8:6b8a:: with SMTP id z10mr5444569qts.384.1612402278809;
        Wed, 03 Feb 2021 17:31:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612402278; cv=none;
        d=google.com; s=arc-20160816;
        b=PvfKkI+TyO31pUDCpTOPY1yTACbT/+T080kI/Q4fjoYJ6xldnl4TEzolxc4hWlkAwc
         FvG8YE9iNa8R7ZdBpLDl1RG1ybqx3WJsXg0oURujVlwPbdeWQJpBjEWLUbBEpy1GYZve
         afZbsIlZowQXFohcJHigVuSeqp6JN0kJI8ozHbrGe2dza+AVutejIglIGEf7fS+FigN8
         ho3WGhNJbXv2lpRoI3CsoubYast71WKvXqsMzUnjVCyOFVsz6KrJgbKW3QXBYYC44cQA
         vLeH7ZZWSwN+LhuOrDaVHhCFO5uH7LfZUkFJROl7toZRCGE4O5zbi0bQRRFBnjtSZ1gz
         +Tzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PJqnhB5HVj5MI8qvIgTsWnsv8A6arsvgFZ5dYqMe6qM=;
        b=z/IQORo7O9WkJgNBF6lqVY/nc+cbWlEUyYDdJ64bYt8xm32utbLfLYVfK4o36w71Dn
         Esn8DJD+e/VSnSqb/PrZMHgCjrw73ZzlfNhSgxh+yzpn4q0VKRByTNNrZwh2BL0jTCHM
         /RbUi5QYCsxnsEH1glVZuNe7hbFHyy7o3nLnX8iw1zI7D0YvLvUNvchzQJlhQSKOtGU6
         8yuPaZ87SjqjYdkSiXZZzJNXZGYb4OB4iw3k6ESzvLV8NAqTKR2OaTbL+vCzL9142XEV
         ohJUK9tpqy+R+woBhkKDqi5Q9L3/8lUAXf/kWyBWDlqHn2rkjq6qwCKTbucFvkyfhBCx
         jrCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m+Eh59y2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id f10si159570qko.5.2021.02.03.17.31.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 17:31:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id v19so984859pgj.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 17:31:18 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr6561848pgc.263.1612402277804;
 Wed, 03 Feb 2021 17:31:17 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
In-Reply-To: <20210117201500.GO457607@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 17:31:05 -0800
Message-ID: <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, dwarves@vger.kernel.org, bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m+Eh59y2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
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

On Sun, Jan 17, 2021 at 12:14 PM Arnaldo Carvalho de Melo
<acme@kernel.org> wrote:
>
> Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> >
> >
> > On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > >
> > > >
> > > >
> > > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > >
> > > Can you privately send me your configs that repro? Maybe I can isolate
> > > it to a set of configs?
> > >
> > > >
> > > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > > It is not there before and adding this may suddenly break some users.
> > > >
> > > > If certain combination of gcc/llvm does not work for
> > > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > > should fix.
> > >
> > > Is there a place I should report bugs?
> >
> > You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> > dwarves@vger.kernel.org and bpf@vger.kernel.org.
>
> I'm coming back from vacation, will try to read the messages and see if
> I can fix this.

IDK about DWARF v4; that seems to work for me.  I was previously observing
https://bugzilla.redhat.com/show_bug.cgi?id=1922698
with DWARF v5.  I just re-pulled the latest pahole, rebuilt, and no
longer see that warning.

I now observe a different set.  I plan on attending "BPF office hours
tomorrow morning," but if anyone wants a sneak peak of the errors and
how to reproduce:
https://gist.github.com/nickdesaulniers/ae8c9efbe4da69b1cf0dce138c1d2781


(FWIW: some other folks are hitting issues now with kernel's lack of
DWARF v5 support: https://bugzilla.redhat.com/show_bug.cgi?id=1922707)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd%3DpwOFF2Y8eSRXUHA%40mail.gmail.com.
