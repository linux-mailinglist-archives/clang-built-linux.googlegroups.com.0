Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3OM5WAAMGQEHHJBDUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 1194430EABA
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 04:13:51 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id v65sf1561707qtd.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 19:13:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612408430; cv=pass;
        d=google.com; s=arc-20160816;
        b=VWRffGmDBGawV+QCOtraLLutaXQRRy/N4OkQPyHRXn66GYnSXw9LC1d1/EP1SuylR2
         FDfzSg86mnQ6tHYJPhcp5jyzxh8b1zLDf96/f5NaVRTHZw/MsglzNeqalu1u29wNdWlA
         WT3KKjSeKg4juhM94MnEzVuR1dwQXFGP4qrR7U8UxpkNOxk71fc+sC7cM05xnvpfC0jG
         PC2UvGFDRNjs5nisZx4ONTRhw/qPalb+ePcXaW8fpus88abdUyeNXGjRDDstTjDxUTBZ
         92Yx7ZsuPn4k6zWWwGGFnZ/sOlPXg0xIItrVSpJly6UQAJQo9vR7fFFwUHEAClw1t14e
         Fv1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NLdSntJUvf2k0yweoEGtYiSnB/PoefItlmBoa3hgaLI=;
        b=tffhJjAVAdEoyiHDW6HJsschZywIOYfTUnnK3mlEwiZDp/6FsiJQXxZi39Ylh4Y3yN
         IVpR7ISVTSbxmmp70ZoKNvP/cuT+yGstUWhytpK3gExhKxJLoFkQBsCUCOSOdH06TZzM
         5ahJpAcUHheCAXA3J6y40GPQXKXrs7qN+wyZnS1Ba7bO8wukpxyZqD0QGwX7//wlpH6w
         SRrAIi/wdWzzDZkTFhOnkOz+wI2sLi8kTfaunq/knZ4ZFz2728SNkz6vXSZFKRUabLrr
         KYU5gMZs7Vr8WN0mp6rTOL5EfFXHQF/o2YfAlIYu7Yegl0Rg0WTtJVRTflR76wNi0YFJ
         POzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q3o8eGlI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NLdSntJUvf2k0yweoEGtYiSnB/PoefItlmBoa3hgaLI=;
        b=Bi5X7PI7NVllHhLtGjfe/5t3aNQFModCv7mBLDdj7ijogXv1lOtFlJ+J2FpNnsKig1
         oL0AOqfWKAA4hS9uQGrvIRvpn7mm7bgtAhm0xeWPu26ElPf1jn2BO0j5g+CeMjfyG6k/
         LnipFHAZ3OeMfFBoCJY9sp6xvFO27cC16E9dRmOBMco227btM7uQmNPBV4NPt5/GP5Po
         Z+18lnzmhxnXSbW6WKRR9XVKdtyoMS+4z+UBMVk4GUpp+XvNqshkdkIvBGWKrBdJjDJP
         8VX2Eh6Vu1qz/6n/7+fFH9tkSsmfQLXfGIGbb5WnykLgi4mst+iTVrmkUAzmFmo9wx8/
         Ig6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NLdSntJUvf2k0yweoEGtYiSnB/PoefItlmBoa3hgaLI=;
        b=swsI+qquSVV/ieBjzpek300/oZZEifWcArz+/wRvuONX/puBbUxCAQ2fLLWM1oyfAw
         cqRQDLHPqQFqivhqXqepiUA/apimQz6wsqAGimySB7Ata8EnPwIZ7K1rErDOpBCObRxZ
         hM7igUv03NoeYuiwo31nQ5TIv/B2YEjE+5rw1NhNBIRQSdhr9JRKlHibg7UNt4i5YC7U
         lA1YGEhtEEp0Y4vIwzbBxrAQUDXeLqn/PQD5BIZh+bWMknCAkAe4a47WvdCQsvDdGPfc
         8kMRwlmV+/Nhepja8LcWQcGa4hhYQsfHu4n5FsVTFMVsRRA4Qhuo/1IIMH6z7H0IK4Rl
         w99A==
X-Gm-Message-State: AOAM5324/cJ8TW1/Ho9f2hi+nN6h8Mib4Fd6u0Eo36xq6v3DK6xM4lx8
	wKqTr0aSF98AJ60XWDEC++4=
X-Google-Smtp-Source: ABdhPJzv9k40Z4FYfuJsFToQ6Ri1flIuNOIgRxIOoHyNTDCyIDynlY9Zlbx/kc8CosxG1uf/J9rV2g==
X-Received: by 2002:a37:c40b:: with SMTP id d11mr6063581qki.73.1612408430053;
        Wed, 03 Feb 2021 19:13:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1001:: with SMTP id z1ls1655198qti.4.gmail; Wed, 03 Feb
 2021 19:13:49 -0800 (PST)
X-Received: by 2002:a05:622a:4d3:: with SMTP id q19mr5483078qtx.316.1612408429709;
        Wed, 03 Feb 2021 19:13:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612408429; cv=none;
        d=google.com; s=arc-20160816;
        b=RqJe14/qkjFY8vctFI8926ogxYFT0gaR4oGuaIEri/KFaSo44YwDKtDmHF83p96GQS
         sQ2FAUciDoU2cejc2YVMwGT6wCsvZY/vIl89qieHIJlL2DgPRPCQYxSId9PyugamGo6I
         0Jr4f7y6FsRrq1jkjVas7kF7hrcGL5Mjxgc9g/7opfvCqiWUbXfeG6Z5Rr4b1EDYcX1B
         3WGinPnZBRU68D3HfhrhZFxIJ8mZh7Hi5R7QcfA4NOdmf2/GdXOg/fU7AXJBi53kwdP2
         gkRWbr+34NWpRo2v4lc83xkjxFHZa3XcmrD0EXu7sWtY/niiYah6KmK6ZtR8qqx/BFR/
         qsrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GaD6sGrh13jKf92b5i6r6S0mLTiP02KjIFA6/14apQ4=;
        b=fU8AyaECFmQh9XvgyCFQNPZQPQhrqHy7GbL7jfShQOS8xDlVE+yqhAjXyOgqwp58Wq
         aK9E2ZqO5zsK0jwOD93O0vwr3hlVb4Ce/QAj8tILHwGaytSyAd64YRSj0o1tBGBDRnBK
         0EdKfDrkS7Pqdro0lL9IB0tIN032zgjmKtHDcAMUWg63KCugyB3QZ7SQWU18ekaKO+2E
         1A8H7MVQHTPQdmJYY0AgXOgi5v9KV+nvRPE86Hr0Gq7o4Br8WmI8vpA8d8wZ2su5M4cN
         nQpQG3+2rbeqPHPHaMUvSoVCFdKhrXCY7/fzhFOiax9iIOtgwcVlu8qYyvcPHR2/VaeO
         Yigg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q3o8eGlI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id z14si313805qtv.0.2021.02.03.19.13.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 19:13:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id q20so1188021pfu.8
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 19:13:49 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr6908717pgc.263.1612408429056;
 Wed, 03 Feb 2021 19:13:49 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com> <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
In-Reply-To: <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 19:13:36 -0800
Message-ID: <CAKwvOdmrVdxbEHdOFA8x+Q2yDWOfChZzBc6nR3rdaM8R3LsxfQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, dwarves@vger.kernel.org, bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q3o8eGlI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

On Wed, Feb 3, 2021 at 6:58 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Wed, Feb 3, 2021 at 5:31 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Sun, Jan 17, 2021 at 12:14 PM Arnaldo Carvalho de Melo
> > <acme@kernel.org> wrote:
> > >
> > > Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> > > >
> > > >
> > > > On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > > > > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > > > >
> > > > > >
> > > > > >
> > > > > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > > > >
> > > > > Can you privately send me your configs that repro? Maybe I can isolate
> > > > > it to a set of configs?
> > > > >
> > > > > >
> > > > > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > > > > It is not there before and adding this may suddenly break some users.
> > > > > >
> > > > > > If certain combination of gcc/llvm does not work for
> > > > > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > > > > should fix.
> > > > >
> > > > > Is there a place I should report bugs?
> > > >
> > > > You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> > > > dwarves@vger.kernel.org and bpf@vger.kernel.org.
> > >
> > > I'm coming back from vacation, will try to read the messages and see if
> > > I can fix this.
> >
> > IDK about DWARF v4; that seems to work for me.  I was previously observing
> > https://bugzilla.redhat.com/show_bug.cgi?id=1922698
> > with DWARF v5.  I just re-pulled the latest pahole, rebuilt, and no
> > longer see that warning.
> >
> > I now observe a different set.  I plan on attending "BPF office hours
> > tomorrow morning," but if anyone wants a sneak peak of the errors and
> > how to reproduce:
> > https://gist.github.com/nickdesaulniers/ae8c9efbe4da69b1cf0dce138c1d2781
> >
>
> Is there another (easy) way to get your patch set without the b4 tool?
> Is your patch set present in some patchworks instance, so that I can
> download it in mbox format, for example?

$ wget https://lore.kernel.org/lkml/20210130004401.2528717-2-ndesaulniers@google.com/raw
-O - | git am
$ wget https://lore.kernel.org/lkml/20210130004401.2528717-3-ndesaulniers@google.com/raw
-O - | git am

If you haven't tried b4 yet, it's quite nice.  Hard to go back.  Lore
also has mbox.gz links.  Not sure about patchwork.

>
> >
> > (FWIW: some other folks are hitting issues now with kernel's lack of
> > DWARF v5 support: https://bugzilla.redhat.com/show_bug.cgi?id=1922707)


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmrVdxbEHdOFA8x%2BQ2yDWOfChZzBc6nR3rdaM8R3LsxfQ%40mail.gmail.com.
