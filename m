Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBYFO5GAAMGQEYL6ETMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 801F130D46C
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 08:57:21 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id v25sf21065714ioj.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 23:57:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612339040; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2p9gvJg6XJLkkgTOwI1bRzymsnXmyMUImbCSmMHhD6U7LTkXTkMousw8kWtQmXpQZ
         YBuH5QPz9e908Snw7I3TACTdsShgsieiL6Z291jiFbeu2cBdAvrsa8udRE8o2Gepwe4r
         xrpgbIIdgagmscKcRMU5YTMIA0kBWlhCV71ApMrXI7MkRAV63Ar/Z6sU8vD3mW+MYVo4
         VnHuLX2guNQWJAGjjw1E6om7ymlWYw0H0zv/KMqRrcei2p9B4wAY7kByq6LKTxfD4Woe
         FfzlrCni/vU9be+X6h9+FwdgcbaEmpEu06onbYMJhGARJfUNhYFrzvOjYlgynRDlOkp3
         v3Bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=5GqnAIoQ4l4yqhcVPHQTKGJztqSZ2Pz0RZFGlltwTSk=;
        b=YFkp/YLf94aCMxcfwt0igZ93+jfxrOqLDCL0BCn72gK5CE2P3iOZMur9/C2mPWzNRL
         M2BBmf1+8a4oxn0Hc+hSVkUspbDZHGxAXGGKnorxrK3JUgM9Qf7+ElqxCPoMABgFncdP
         9QBaTPVmWGBQiWeIty7h6DTmKEm9t2YcPPX0Hv7VkoQ53uZDqFYv/M8DUuIwcBcAacsg
         azbra5Wmb9aKZpQg0jhx0OUZNltIVb9tIrMnJIeN5oMagYHPLc2AwlJFXVlHcOemVLDn
         bTacPZ0QQeqJpe9MiHejJ59FNTbKoBIhNF8Ln0MVv/P4dNdDmPjmsN/ibayBEH5ZckBB
         PzNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ym+O+5PB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5GqnAIoQ4l4yqhcVPHQTKGJztqSZ2Pz0RZFGlltwTSk=;
        b=jxFq6UFBP/YxeVR/PmYBKNvgwqgGJHKOZu9z1OOGJj71fAsqhFnlbEExnUwPXlJDxL
         XOYNGKzn2gBug9dDBucvjl4LvO7kBGoJzMUUzPTwo7izkc2Bk5c4g+VphL0NVmuC5Voh
         Ih2IW/x6qQyry4s157OH98ZRQj53k3vcFlvK6+xtKIp2AH5dLe4JyJypWqq8ANSoM4VG
         03JjXmP1gopFisi5yTyMA62qcTCGUmC+AIDyIozCn+1KjrGU3sP9V2ShcNuiJc6rzsPi
         ipLxZXGllrIpnbtKXsdQ/KHgFd230lZ/kvCPvaYu7VRXPs26TEshuvQL4dDIxpmwOenl
         Mu7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5GqnAIoQ4l4yqhcVPHQTKGJztqSZ2Pz0RZFGlltwTSk=;
        b=WS6JEIenyjlpYEvwYzdQUqQ+RX1CZ1ouki03iExBYvKhpXkJlpV+1/2Yjc7Vmm/nG6
         z5u9MpqyZZ68QzofuHGeokvWCUnc7TZigIT7Wubzi2kl8MwUX3gcEGpjrDl6nTAtZwGG
         oU3qKgeYKclOlDsFHsloKANMxSls73BdpTgxVVqLZpYvHz5eKvua2Sw0eh6wJNTLPVtd
         fEfr1mbisI/mGj6SOYIeK0EK0OW6Z0jImaoNl2a7EwUoptWx6bigDSH0YkcRtDxq/DfI
         bU1NPkEgjChdPq55VDdV/qDpxOg2xqbnvZ1urjuEFaFqQIkoB8QEQrgPYmBYHCbJMR4g
         57xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vh04Sdgb8+SjTUZQHtDLyqS4nqXXkdonxt9vURvDC56XMP4vD
	AtkH1hdiijhPpF3U2IqDFu8=
X-Google-Smtp-Source: ABdhPJwj0uk9NgAncfYKXkKovUHaqamdwmJ8uvLPvFF/Hrnxvx4SWQkjwFsllSGFWi3VfltKrRnyKw==
X-Received: by 2002:a92:a80d:: with SMTP id o13mr1682528ilh.74.1612339040311;
        Tue, 02 Feb 2021 23:57:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:8d0:: with SMTP id h16ls166546ioz.11.gmail; Tue, 02
 Feb 2021 23:57:19 -0800 (PST)
X-Received: by 2002:a5d:8a05:: with SMTP id w5mr1576093iod.177.1612339039935;
        Tue, 02 Feb 2021 23:57:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612339039; cv=none;
        d=google.com; s=arc-20160816;
        b=Mt/PmRRvckOOWDppn5M9kXbjuZNOtah4JCuFYDDKoElxevawvVPSMhCIw6FsQY97G7
         URJ6+5HS2Ih3tkyCycuiiYcqbFCXKvYRzjuB7fpYf//wYvlzaBL8bO+/ip8xr2N6yH7r
         0ZCQI+m3xXUupCUrrzVfqxKUYptUHKWWSkqFVBtt4C6MyMnCiEL+gbfrNf0DVYY0sy+B
         QKLV+x74rw0qMLwRn52Qp0u7YvZJxaXQ4nQet0CiLscCEUVg6YHER7ZIHS5uhG7vVRME
         qNT2kcY6A8F+su0SCg2KfEMuJlSqo2no9E5CJiADxaZ/WwdwQW1TLMnvO23Xtt/lVgBM
         zNhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=N/D47fbOBRad6M/ZDk/32EhFpPJEKVijkKmIa+v6ag4=;
        b=e98wiomrlTaziCul4/5kjijOj5kGG6AINzwRRk1+nZk7ctwelt5qmqVU584A9V9gdQ
         1DKsp93q6YwARI0gmbthHMZ5uulSYWYgddlSmjTSThlKCsh08ZOom3gbi9h5+81C9wje
         +3xTInUKTN1UwYng0GGvMMp29Mty5LO0Bvb96QQFuBFi9VvVk4f8ki5XJtf2kkgcABw9
         x95cFFyKOj2rbE8IBrjuqLgOwEOVa1vkwDlsj6bijr/F6QWnmvEqbe8Y3krDEa5pTJKt
         ///0d7jGd/TBKE/inxD0dkpBcdOBHDHyOS2khQn9TOSPvagJkgDcDNDxUWqmkLXNaIa+
         toVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ym+O+5PB;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id p75si86821ilb.5.2021.02.02.23.57.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 23:57:19 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 1137upG9023685
	for <clang-built-linux@googlegroups.com>; Wed, 3 Feb 2021 16:56:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 1137upG9023685
X-Nifty-SrcIP: [209.85.215.181]
Received: by mail-pg1-f181.google.com with SMTP id c132so16777742pga.3
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 23:56:51 -0800 (PST)
X-Received: by 2002:a63:ff09:: with SMTP id k9mr2382791pgi.175.1612339010996;
 Tue, 02 Feb 2021 23:56:50 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
 <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
 <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com>
 <CA+icZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ@mail.gmail.com>
 <CAKwvOdmWx0reabY-S3nXfTZuhs-_SP7pbb0uHyGeaNSQnm8eRQ@mail.gmail.com>
 <CA+icZUWsncyKvxPZ5g=a3ssWy=cYahsU6hprM3n=jFUmnjPC6w@mail.gmail.com>
 <CAKwvOdk4kG-_c3inNj9ry_xUU9SQE-2AqQp40YL_V=6SHU6E=Q@mail.gmail.com>
 <CA+icZUX576Rt7HJ4hvrwRTCC2pTmoH-Yu-haU+MDb8B6yADAYA@mail.gmail.com>
 <CAKwvOdmq=L_ob-WpNBE-fSc3oYXT10ZvttfiXiZw3+SxaWWy-A@mail.gmail.com> <CA+icZUXMxM4CuNa0P+JFJO7LSj6QvJneArYXpqLRJrzqJMYj6g@mail.gmail.com>
In-Reply-To: <CA+icZUXMxM4CuNa0P+JFJO7LSj6QvJneArYXpqLRJrzqJMYj6g@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 3 Feb 2021 16:56:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR0jHV9gdCT7-e0njtEjxpuADkAttYAxOT6N-sNUiuV+w@mail.gmail.com>
Message-ID: <CAK7LNAR0jHV9gdCT7-e0njtEjxpuADkAttYAxOT6N-sNUiuV+w@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ym+O+5PB;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Jan 30, 2021 at 7:42 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 29, 2021 at 11:31 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 2:23 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 11:21 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 2:11 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Fri, Jan 29, 2021 at 11:09 PM Nick Desaulniers
> > > > > <ndesaulniers@google.com> wrote:
> > > > > >
> > > > > > On Fri, Jan 29, 2021 at 1:20 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > >
> > > > > > > On Fri, Jan 29, 2021 at 10:13 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > > >
> > > > > > > > On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
> > > > > > > > <ndesaulniers@google.com> wrote:
> > > > > > > > >
> > > > > > > > > Can you tell me please what is the precise command line invocation of
> > > > > > > > > make and which source file you observed this on so that I can
> > > > > > > > > reproduce?
> > > > > >
> > > > > > If you don't send me your invocation of `make`, I cannot help you.
> > > > > >
> > > > >
> > > > > /usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
> > > > > PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-10-amd64-clang12
> > > > > -lto-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
> > > > > KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > > > > KBUILD_BUILD_TIMESTAMP=2021-01-29 bindeb-pkg
> > > > > KDEB_PKGVERSION=5.11.0~rc5-10~bullseye+dileks1
> > > >
> > > > $ make LLVM=1 LLVM_IAS=1 -j72 defconfig
> > > > $ make LLVM=1 LLVM_IAS=1 -j72 menuconfig
> > > > <enable CONFIG_DEBUG_INFO and CONFIG_DEBUG_INFO_DWARF5>
> > > > $ make LLVM=1 LLVM_IAS=1 -j72 V=1 &> log.txt
> > > > $ grep '\-g -gdwarf-5 -g -gdwarf-5' log.txt | wc -l
> > > > 0
> > > > $ grep '\-g -gdwarf-5' log.txt | wc -l
> > > > 2517
> > > >
> > > > Do have the patch applied twice, perhaps?
> > > >
> > >
> > > Switched to my v6 local Git branch and invoked above make line I gave you.
> > > I still see that double.
> > > Looks like I need some "undrunken" switch.
> >
> > Can you follow my steps precisely to see whether it's your .config?
> > Perhaps there is a config that duplicates DEBUG_CFLAGS that is not set
> > in the defconfig?  If so, it's still harmless to specify the same
> > commands twice, and likely isn't introduced by this patch set if so;
> > so I'm not sure how much more effort is worth pursuing.
> >
>
> If I follow your steps of make I do not see it "double" (in my local
> v6 Git branch).
>
> Looks like this is coming from my build-script.
>
> I checked if I have some double dwarf(-5) patches double - Nope.


Sorry for the late reply.

I do not know which command you input,
but this happens for deb-pkg builds for example.

Please try this patch:
https://lore.kernel.org/patchwork/patch/1374926/








--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR0jHV9gdCT7-e0njtEjxpuADkAttYAxOT6N-sNUiuV%2Bw%40mail.gmail.com.
