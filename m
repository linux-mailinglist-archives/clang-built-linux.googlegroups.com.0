Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMEZ2KAAMGQEGM3JUBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AF469309016
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:31:13 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id n80sf8086789iod.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:31:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611959472; cv=pass;
        d=google.com; s=arc-20160816;
        b=BMTx75eyteSg3rPwzxmJASRmqJ5v2RzYDpZtTLPGKaCTpn4W4jrKOSabDA9BOIoGQ2
         HWOUWm3Ke/aqYvZjC9cypkTlL7YtWUVHIl7sx90y98kw1AjtCNqCpn+hrTMs9eJutStC
         PFM2/fiXw10vEWPK5RnvFTUQ/agttiiq8nxfV/oxzaVxLqKUySj/uP+bS8BYKXj2hlWW
         +p3y7D+uANk8xtrb4H8ygMnfPtj4sHPR/hj+EcOx6Gz71AV3+olTDOSkQ3RdDPoS/FPV
         FOPCJdSgk08RsPouJOUZ/joR91YXhD4cfJ+OHUR8JEBzTB3irpQ9SvOPSjY4pbLEIpji
         BIQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pig+PnX9MfHh0i8+ugy6JQAmon75TFAkIWGBYA6cCW4=;
        b=MssIkLzopOCfxfzNJgAD72qJdqKWi0PBFJ6TG0u/dNO1euMm+r4O0430VX6l+WjLSI
         RwqBDHQJfejvzOGycTn8hQGlsrMDDExgQXGTicV2mWCFtvJmOtI0df8jWqun8HUC3I9a
         AFYANgJ4rgvWm8wHQK6LVe9euR2+p1w92zfsmbkFCtw4vR8nOkdz40GW+LN0rdnpp8cd
         wQya2G6jhnLHyvy9Rv2VdQ2S2K8OVHKujasIHIKbdijyRnas2G6uJ93V6xmGWFoCznNE
         eZHcrXqnxJIZJchFtlckV+80siTXGuY9zCiwFWRTE1qOGR03gJylG/OW1VU83yB+5QkD
         c8HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MXQ3szzy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pig+PnX9MfHh0i8+ugy6JQAmon75TFAkIWGBYA6cCW4=;
        b=UtI4CHgsoyCC566AfbK9LirXcvRxOGNtVxZX1zLFIaBTmOcZ96eEcYy6bKgKA82+P6
         U4/OUfMI0F/r3uqmR8MD9Bj+TOOkc6sqJKsHqPvbngdXOisbLs9qoEgNUMr6HwNCsvUA
         OLG6abpyYqGpH8BxzJnHa+u/m1J/y2o1Sfd9GvzUk6GOYd5G8l/Yd7/E1yavoKbq5rw7
         Ju/7uQav4Sb8zodtrEFyEdU32cVOfsGmjN8VAt0kwMhpWou7IKEInhrd5JhUxRq7Bxxk
         //WjgnJgh5P3+X1+6BaEQ/Q0aqnZnp0bTDNz8ZugUA60FS6cgwccvGFV2x3C+eJH8L4m
         6kVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pig+PnX9MfHh0i8+ugy6JQAmon75TFAkIWGBYA6cCW4=;
        b=XepkElBMkMVOlr9hkcQn+7xDNssut0GY7LhpUZh+jlumHLhlVLP8FQKevBREJdPQqU
         XJJXALjUKC7EvidrZPf4t585RL1D/ozS+vkJNSFrAV0MM4tIC56brzs7BryhRpMcj388
         2Fcd5J0yjp1Z2QkFUobnkoTLrQ5AHy+jSwpZMjXPtB8EqkEYEMlR82NcCRWbOm7X7Beq
         7ogSs6YBpriM2hOvzigqNFncQMeQ1+NG/gfh0EREg3Mq5ZS9Io0YcRuag2RdE21lsQiC
         WO/8h53msP5hYmGaTqm0kZW4Y/njNLoREh5w2/+S2+6DTcJihy96beACpbZxUYpT6brh
         aQCQ==
X-Gm-Message-State: AOAM533Nm2W7AUmRqAC70S7EjvSbuIXau3ZTdpsH+WloXFjgfKsz6Sa/
	1pxGgU1JVxgN98mg31irSLs=
X-Google-Smtp-Source: ABdhPJzG6QpDlH3O6Wmvbi2jShlmN65jGcEo4bD6QZJuX4VfIX04G2vU3JLa0kbupEDgNA8dsJP+XA==
X-Received: by 2002:a05:6e02:1d0b:: with SMTP id i11mr4630768ila.206.1611959472651;
        Fri, 29 Jan 2021 14:31:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2656:: with SMTP id n22ls1091615jat.4.gmail; Fri,
 29 Jan 2021 14:31:12 -0800 (PST)
X-Received: by 2002:a02:3541:: with SMTP id y1mr6189675jae.66.1611959472172;
        Fri, 29 Jan 2021 14:31:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611959472; cv=none;
        d=google.com; s=arc-20160816;
        b=rbZt5qp2dbegr6UGH69LEr+raJ0tBF023rIXAwwU4oDfxhpD2yd53qE28s4wczbYXA
         JFlDlAXqOnz4yWJH59lfU4vEbEJzJ3+MtpPjNYZBNlCZziTJwlvIzzur712yPddCFxVX
         WIdUfEw2nmMVoti0uiD5qP1BJHyLJtYJ44FN+BhRXtkWot4lkEZUjt/vXJYyIlhe+Gj9
         KEmUlhs15BA1euXrS1ilEnjX2gsuQ8QttiasMv4dDQSimWGpMzbRBRS0yKEC9Ppk8XKs
         7C707gzcXYHjWdW8W7+H055HqaWpE3KTS8bX4kYPlASYxYusGEkKKVRolIUxX1arkDob
         77EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mEuUNTLPjyCKU+1m6bFPUEO4cIWG2fR+kA7IEzmsiA0=;
        b=dIlm6dbaxAVkqDk+DTe9vogKRZVJ7T6k/u8/OvVrLb2IkfYPO4mkY7Wpt2943wnpo8
         Px+Ga/US21vsNuKxH88p30JFg0Dr5i3H+vXatFYggbhtE6Ue2dk6JUzlL474cRTlHB3S
         Ts72/jg8wg2jjmam+DIh4sW41kpzEVCM+abnOk6gKq7Limi0FC+ckXr9QnytNou3xvmd
         NrQyr0MzuIHzOyFFhBneptF4DtujSQGqMrCHuz6+PYzj4Fa9Wle3q7P3bDEJt788URNO
         VUgL4KOMRY7M2zfzu3lcEQ65mSJKgCgC4ToC6iDIHKjFOu4e6cq7I3j0NOJ7I+5IoEOp
         XKHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MXQ3szzy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id y16si134973ili.3.2021.01.29.14.31.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:31:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id u11so6098349plg.13
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:31:12 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr6462674pjn.25.1611959471740;
 Fri, 29 Jan 2021 14:31:11 -0800 (PST)
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
 <CAKwvOdk4kG-_c3inNj9ry_xUU9SQE-2AqQp40YL_V=6SHU6E=Q@mail.gmail.com> <CA+icZUX576Rt7HJ4hvrwRTCC2pTmoH-Yu-haU+MDb8B6yADAYA@mail.gmail.com>
In-Reply-To: <CA+icZUX576Rt7HJ4hvrwRTCC2pTmoH-Yu-haU+MDb8B6yADAYA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 14:31:01 -0800
Message-ID: <CAKwvOdmq=L_ob-WpNBE-fSc3oYXT10ZvttfiXiZw3+SxaWWy-A@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MXQ3szzy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

On Fri, Jan 29, 2021 at 2:23 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 29, 2021 at 11:21 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 2:11 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 11:09 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 1:20 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Fri, Jan 29, 2021 at 10:13 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
> > > > > > <ndesaulniers@google.com> wrote:
> > > > > > >
> > > > > > > Can you tell me please what is the precise command line invocation of
> > > > > > > make and which source file you observed this on so that I can
> > > > > > > reproduce?
> > > >
> > > > If you don't send me your invocation of `make`, I cannot help you.
> > > >
> > >
> > > /usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
> > > PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-10-amd64-clang12
> > > -lto-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
> > > KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > > KBUILD_BUILD_TIMESTAMP=2021-01-29 bindeb-pkg
> > > KDEB_PKGVERSION=5.11.0~rc5-10~bullseye+dileks1
> >
> > $ make LLVM=1 LLVM_IAS=1 -j72 defconfig
> > $ make LLVM=1 LLVM_IAS=1 -j72 menuconfig
> > <enable CONFIG_DEBUG_INFO and CONFIG_DEBUG_INFO_DWARF5>
> > $ make LLVM=1 LLVM_IAS=1 -j72 V=1 &> log.txt
> > $ grep '\-g -gdwarf-5 -g -gdwarf-5' log.txt | wc -l
> > 0
> > $ grep '\-g -gdwarf-5' log.txt | wc -l
> > 2517
> >
> > Do have the patch applied twice, perhaps?
> >
>
> Switched to my v6 local Git branch and invoked above make line I gave you.
> I still see that double.
> Looks like I need some "undrunken" switch.

Can you follow my steps precisely to see whether it's your .config?
Perhaps there is a config that duplicates DEBUG_CFLAGS that is not set
in the defconfig?  If so, it's still harmless to specify the same
commands twice, and likely isn't introduced by this patch set if so;
so I'm not sure how much more effort is worth pursuing.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmq%3DL_ob-WpNBE-fSc3oYXT10ZvttfiXiZw3%2BSxaWWy-A%40mail.gmail.com.
