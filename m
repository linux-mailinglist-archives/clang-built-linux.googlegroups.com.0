Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBP6F5WAAMGQEE3R7JTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C666830EA84
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 03:58:08 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id w3sf975292oov.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 18:58:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612407487; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0F2EgmOTGNt5W6nSq9tpBfZfN1gtjmB+a/4YzmERPOnA0sf2L74Tex47Up9lDgGkp
         sq9cc8IhK4PGVKIraI5TlPwJCV0hvwqKYDY+if0LCWS23UquC8GQD6SRklVZvCJHtxcf
         P25HC8yGtu1O07wCcUy8YuVSX0Nb1Ox8nZ/dU+CJYEOuZWXu9DY+DDProBNbrBsKyehh
         tdsmcVLYweq2mR57lxZTRM18HeFRbP6oVG2cCiFh0QJTx+wNuKl5vr/wZbKP+LddpXOV
         lfOqZA/cT1q6shX3rpxPnHe26tSD+TzR5vMTU3SGyIPKwHA4AEbnNFVxMZ0Sss0NedGc
         nQNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Y2Uk8zdST56ALM1UcJaFZC0qzoym0iWJb5WLwVyJpoo=;
        b=LFx+AabYW96PKBlgxe3rkdq1PI18uHrApKr9GOT4hP582D0uCCuFHja3ABQs6Wxggj
         Ir7KmwlsgCoW8YpSG29EHlVGbujjSj3064zkgF85K1oOZcsnuCz0kOhGnoOcuH8j+mOy
         9rpacEm9BC5ApAaj/9PN+JMc7MVf3Uj35yssKHXkmvZvfT4Y4cOCqV1Yh+IxLDJsTkPg
         Qkgt94zafB9248GEw6ZCoN4k7EsIE8T5J9QNqDYpy58gzF2np3L154bNDoGVmD5Yt7sY
         ccSBgipUmbnL+M6DauJJUMDJH2BNliJzM9NRerSX1lf+FIcaglfSGxXqBRwOT185MnO7
         kjUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D3geB/+o";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y2Uk8zdST56ALM1UcJaFZC0qzoym0iWJb5WLwVyJpoo=;
        b=Cnus31V5tM7unrSLbLwQGXT+GdoiYb8gWRWil2eJFRjwsgTX7A02RhEucCCEVLr/ft
         pw+cnGgOYzl9KcD4Bm+VFnkOdFuzAmsoU55UhLeR29Z/+zN4V34dmK/9GtgH4rYR61t/
         C/y/le3NAkelzxZS2vGH3Kcu6xhpTV8Rulexf1A7wkVxQhcbTpRuijgoQWjFMJUu19Uo
         JsjMzNZiJmMZQ3gcQEGbQuyI7a3SfECZwbP7KlNGAtWWF780IgrgzoFvXujuXELSLgs4
         3JbquOg89171Eil3LOvVf8hGqGbjJjD65zs8VuOFnfxNMwmAVfqfrlafiBo26r6Mt5Q4
         92+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y2Uk8zdST56ALM1UcJaFZC0qzoym0iWJb5WLwVyJpoo=;
        b=Zialu4b8CvNp5/eadB54AtcWnUoPDSAB602HYhtIFVQq9UFGcSGq8U1vZoiOPQqnxI
         F8e/4tPReJMkjWV00JLjnQQpdJNLC5CJSmfmvoAK/y4n8U1r3KP64sVbeswF3cpWpF8J
         9WrF/ppgn5YeSdVYiwRTjZaZp3CIgP3fTW8+YmGKOPRrihOk4V38Wk1r218+l4lNCXGi
         ns9WYKusosDzrf4bRl8vc14y9tS4IMkLKbJgpRuHg0tqfBt6caKpiq5pgy16bXZhkKSj
         6F/VXVzpQ/OirXLCy72nz0Q0iqDH61AwuOm0Pltgrgbmhc2rqbeUUNLKgJ22d16PA/UD
         OemA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y2Uk8zdST56ALM1UcJaFZC0qzoym0iWJb5WLwVyJpoo=;
        b=HFJY4UB5QDL5B8gSYlL/+slsxQyMLak4BtxqRlJVYYm+1QVbMLInTuExqlhHLyh7YJ
         GnYYhw59+ro0vT8vRhAucWNM9mI2H7HeiEWwa9Vjx9e629YAkTVTVgw6UI2VrBskwSfp
         UBp6qK/4PSM+4BXnvHnfTYGyYB4EAnm5xpU8TgRSS8Ys4IM5YNIyOfxYHlb+rPjdKPZ0
         n3SpBJO7EKZIQxwqiJsA3xWjxwMh/n0NfJmmZ7ymIu9mKYchKQffJ3UurmkhlbyfFnRz
         1O2rLVhckYuiTMH1XhRSYpJy2qxFeZiGH+lRgTOdL8ZYLB86MIajw3In4No/yM7qaNzX
         /YEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JlBZl/U58h+wu/vsNr2klNU1dk/kGcwtGo5+MTAiKxNk4e8Di
	mt6KbWJq6y6gRWn8ErXqgDs=
X-Google-Smtp-Source: ABdhPJzfNGiLqCqZM9ugITxjG2sejqzPBV+bNlVO03P2PkXpi2MPwIfgvA/ciM+HUJrv/yCuxit56w==
X-Received: by 2002:aca:a844:: with SMTP id r65mr3872101oie.35.1612407487561;
        Wed, 03 Feb 2021 18:58:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3407:: with SMTP id v7ls990534otb.9.gmail; Wed, 03 Feb
 2021 18:58:07 -0800 (PST)
X-Received: by 2002:a9d:22:: with SMTP id 31mr4262954ota.99.1612407487158;
        Wed, 03 Feb 2021 18:58:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612407487; cv=none;
        d=google.com; s=arc-20160816;
        b=UPcPVoM8f6uSy34WhJ2O7N+xJHw2Xjiw+ZlgSur4Pw1RC3SLPWXT0KxPIW1qnWqHYk
         8eynaku7JAYbTpmWxMjD+m5XCRFnq/Y0NR85w7NWBQRzlBkx6GLurQa4a9FAG+01tse0
         vsDmINs7VfLmyJAvGNdNm19GcCGhgZMA5V3sruhfdpmB3ZIRj7bRxcPl3saGJGzikTSw
         RpuA95fphJffmaAN3NhA2wB1VNydQGT8BBML8eGMPcjik/A7JynaVN3smxGIDgXN+X0/
         p9UvKJf99ZL/wxM9qVWDpxONV+MCtadjxX1KAeX3/REgzjXUCkOMMEc6FSfDkvRDzoh/
         NtrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0pV/dX7XqYEFbj7sI73k5lNUEukYihH5qvKxzPGQn08=;
        b=Z3cd+e363McPXRLpkyAoiZSoSG11EPeTLWsYKNziyJ0NK+EuRRF5B+NVPfuZj5gMbl
         +CSEZNORaO5419Rfw3k8rC4yx3ZVYrD0EORDQx1rNWXoQkBqczirhES+MY+GWkWqsN/t
         qizUX5qgd4WRdlpg0029GmV0+irMWLWwzcQMR7D9W3G+zv34+1OMHBY1BoYTNaBljN3A
         YJHZEErcQm4ChfuJgndoSC0SxrL7kovKmbXgae67/N5Pzgz3r9vBQaVPcOg9/euV57sa
         LJJqeUf9aCjADdXXvXe7xegPo5ZT60BiTAVunNMPFAaZMfJQsQ9LTzXSEFeR9PhtFaw1
         2oFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D3geB/+o";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id t22si276925otr.0.2021.02.03.18.58.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 18:58:07 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id r2so1708882ybk.11
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 18:58:07 -0800 (PST)
X-Received: by 2002:a25:f40e:: with SMTP id q14mr9051760ybd.230.1612407486747;
 Wed, 03 Feb 2021 18:58:06 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
In-Reply-To: <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 3 Feb 2021 18:57:55 -0800
Message-ID: <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, dwarves@vger.kernel.org, bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="D3geB/+o";       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Feb 3, 2021 at 5:31 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Sun, Jan 17, 2021 at 12:14 PM Arnaldo Carvalho de Melo
> <acme@kernel.org> wrote:
> >
> > Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> > >
> > >
> > > On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > > > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > > >
> > > > >
> > > > >
> > > > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > > >
> > > > Can you privately send me your configs that repro? Maybe I can isolate
> > > > it to a set of configs?
> > > >
> > > > >
> > > > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > > > It is not there before and adding this may suddenly break some users.
> > > > >
> > > > > If certain combination of gcc/llvm does not work for
> > > > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > > > should fix.
> > > >
> > > > Is there a place I should report bugs?
> > >
> > > You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> > > dwarves@vger.kernel.org and bpf@vger.kernel.org.
> >
> > I'm coming back from vacation, will try to read the messages and see if
> > I can fix this.
>
> IDK about DWARF v4; that seems to work for me.  I was previously observing
> https://bugzilla.redhat.com/show_bug.cgi?id=1922698
> with DWARF v5.  I just re-pulled the latest pahole, rebuilt, and no
> longer see that warning.
>
> I now observe a different set.  I plan on attending "BPF office hours
> tomorrow morning," but if anyone wants a sneak peak of the errors and
> how to reproduce:
> https://gist.github.com/nickdesaulniers/ae8c9efbe4da69b1cf0dce138c1d2781
>

Is there another (easy) way to get your patch set without the b4 tool?
Is your patch set present in some patchworks instance, so that I can
download it in mbox format, for example?

>
> (FWIW: some other folks are hitting issues now with kernel's lack of
> DWARF v5 support: https://bugzilla.redhat.com/show_bug.cgi?id=1922707)
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7%2B7fg%40mail.gmail.com.
