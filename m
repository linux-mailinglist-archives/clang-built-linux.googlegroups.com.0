Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUUN2KAAMGQE7CDEPUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A6308FBF
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:06:11 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id g76sf4716179oib.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:06:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611957970; cv=pass;
        d=google.com; s=arc-20160816;
        b=KTi6VGmeja0As4YHNWuo+CvyNqGfTr4xOKwt4ll/Q1HJfa7uU/5a3fxa/q3ihJuDXZ
         Bo5z2Q4H+ZQ5mnpPmh3snVA18k/Za4dqnz37qaBSLAZ02na6ycX0ynaYij9wJTLoOWN4
         lTcyAdbjJkO6RLwOkkz36ML23KmJQ9qeKhGYqO0wkB0De0+JJtN0L5J6R3cZeo+/1Agt
         wNI1P0gtT8lxFTc77+hnSEbQ+abb6p+UvdHdWExd3fmNnV9eI4I62vMZcv1EmrzBwLOJ
         s3jrFPOOh4AOIDc6V9SwwgwJc2NimxKpYS5OtdnTyyci0wsXvrgmw3ym50+qmH/47bt/
         972w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+vdLenvA+tmx5znkf8oves57N2mdeuUtTPOiBxy526I=;
        b=INCv7GhjxWIqGaZFo9AIUh/o27mL4Qp40LwqCyTDl7IfA+TnWYIfx6ovMjGw1PtbQ6
         d3Mwsh5+8kPSaOwUdOiTgoynM/6Rmb1pjKedsfopBGLo7ZLXeLYeZ3s5rducSZdrLUKb
         9ZvBBS7kQ4wgB/1CtsTUEeFfPkjqyn6SnfpME15GZ50uzEveGVNKyHIiDZ+3iVM+ije1
         uWZFruW4lCCkYRwaOCDZ193BUPII9XVTseVViypYMbt3gtBblq16URR5WcjTxwLBUbaE
         e5ZraUMt6P3skyMvZyOjT0LGOG431GwNzo5NugYXyaEZXsQYOVANMh/YcHT9BoZE2OIL
         XTFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lb4i2596;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+vdLenvA+tmx5znkf8oves57N2mdeuUtTPOiBxy526I=;
        b=TewzS8Qg+xLxI6dTI5fqZiUUg1tukILfXuenSAEeRYLprB7Lnadjgbw8K787jf0wIW
         yJ9/GFZ0T3zYvBvbvcFnVNT/tC6TjIBZYQ9RK6ShMtWVbUpesE40NVz9baTXers7jOBu
         IHA1YejNq8K9GPXsClB4UWkSwSY7nnNBSj6B/4dbnCWDv9SeCogsPu14VU3bOV2PkK6b
         C12FvBgpHn82+Bp2dWhBCKlAX4XR43SE0EkM1fXsyp77r5dVBJQWtkjEMbllFMy1fe2I
         zVp+0j6RlpNxAyC9Sf+xMe3ZzuTloycRcPanTDsuXp3O+Dz05RIjQ8HV5qgDII9uPJHS
         t72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+vdLenvA+tmx5znkf8oves57N2mdeuUtTPOiBxy526I=;
        b=cUJ6E4duSEWNeq31bHSghh1tGOc+AgLUx0XxOzeMwJ62ZO673WBsvQu+QSck0YfHWD
         +jb/rE8yve45nmDEDWA0pia55h3jJLWdssF/l1jp27y+wMIOQZzq+N8tFvNb+haDiM7/
         Z06tGZ7Hzr3sb7f+UKdx2OkZmxPL6fpP/lppjwPkJERQ/Za0qQySMkO//JgV7+ZS6CJP
         UcINO4JkxHwqcxQbDAHu6Qyz5Nyr7ONTRfpclPwHVRVat51yKjY6YD91lXYNXhh2EKSh
         KHjY7Y/8VXR0wrudLSSEvwUn4mB1Vje9m2aiUmgX6uKvMyx69B5AdT3+v1rtiVE2abkZ
         M9pQ==
X-Gm-Message-State: AOAM530EeQOVIIo+1D5agVceBIqJqW8DQ1dna/MtCU1HiCkgeGDuGk2h
	YXXNAmJ6sFfmpp/UZqRmjmw=
X-Google-Smtp-Source: ABdhPJwRnbUGTNMN7cJDEoSa0Gx/H1yEOPpOPRcWxjgHn/lYJasTvNiFwj/vW3dBj6trzf5AauxbBg==
X-Received: by 2002:a4a:4c97:: with SMTP id a145mr4463226oob.16.1611957970666;
        Fri, 29 Jan 2021 14:06:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e31:: with SMTP id t17ls648746otr.3.gmail; Fri, 29
 Jan 2021 14:06:10 -0800 (PST)
X-Received: by 2002:a9d:6a07:: with SMTP id g7mr4129039otn.285.1611957970281;
        Fri, 29 Jan 2021 14:06:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611957970; cv=none;
        d=google.com; s=arc-20160816;
        b=0U4KBQPORKeybO9pnq/Zrdj/xLXR3wTuBfbtBCuMsevuL+xncGjlsAwvDMVqDj/cD6
         1hnRN/wuVnnD7OVl+6ZGBDnYveWLp2QkfuUMNgrkAebOFtgZTD7N93hjigP9wqdNs2MD
         jsCC2J/llncLUwZPR6xJsqDO/pG2ucDHWwmFi/aJf/MwyyOkcxwgPppcymBUB+medt2f
         FOnGtsyfx2/szhyIbWadSWUbRj8hisaEDH2QfRvPGHzNq7Lt//1lqIwMF1+dPfXOO+xa
         oM56qwvqIPFMY5xvcgC8O+y0OvROOve6Xu1e8LeHuPS9EBj8j4Xv3Dyzs8qMyw3ekCrv
         Ywgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xbB83yQ/mNcv3yi7gTIvEjnZRAP51fOKghx1oZz8Us8=;
        b=Rp08ONuZfC0P88NoB4VItS7iQBjBgmVuYkjUEjfgldAD7F46NBhaXwLK03ayfRLh/M
         gZQBq1SF29WLFOqPCKSKNzVPwtXF/PZEA/5gWK9EOJLUNx7J7pyuergwJfEsCrBVt+49
         dSyWPdOj1+1Oc50C8MMFh5yblQ3+9UANqJPlFByjbAj2KU1Z6hgYeoPHWC/7SwpfhonF
         Bx6bC1OqlOedtLYJxf8ruEYA4muUFoNgMsDT5AsmYVvzQ5qQjRM4wcGau/VZOKRqpED/
         HLfYrg1jsGnU/iLsx283YfIRXUCLCawrKm7tZoJwHPoyMHhWc1ox0uqewkoDQ2aSiyrp
         GhIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lb4i2596;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id m26si417651otk.1.2021.01.29.14.06.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:06:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id b145so296833pfb.4
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:06:10 -0800 (PST)
X-Received: by 2002:a65:4201:: with SMTP id c1mr6554563pgq.10.1611957969765;
 Fri, 29 Jan 2021 14:06:09 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <20210129205702.GS4020736@tucnak> <CAKwvOdmuSaf28dOdP8Yo6+RyiviMNKcq8JY=-qgbwjbPVwHmLw@mail.gmail.com>
 <20210129211102.GT4020736@tucnak>
In-Reply-To: <20210129211102.GT4020736@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 14:05:59 -0800
Message-ID: <CAKwvOdm-+xK=diSKKXXnS2m1+W6QZ70c7cRKTbtVF=dWi1_8_w@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Jakub Jelinek <jakub@redhat.com>, Nick Clifton <nickc@redhat.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Yonghong Song <yhs@fb.com>, 
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lb4i2596;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a
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

On Fri, Jan 29, 2021 at 1:11 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Fri, Jan 29, 2021 at 01:05:56PM -0800, Nick Desaulniers wrote:
> > > Wasn't that fixed in GAS?
> > > https://sourceware.org/bugzilla/show_bug.cgi?id=27195
> >
> > $ make LLVM=1 -j72 defconfig
> > $ ./scripts/config -e DEBUG_INFO -e DEBUG_INFO_DWARF5
> > $ make LLVM=1 -j72
> > ...
> > /tmp/init-d50d89.s: Assembler messages:
> > /tmp/init-d50d89.s:10: Error: file number less than one
> > /tmp/init-d50d89.s:11: Error: junk at end of line, first unrecognized
> > character is `m'
> >
> > which is https://sourceware.org/bugzilla/show_bug.cgi?id=25611.
> >
> > $ as --version | head -n1
> > GNU assembler (GNU Binutils for Debian) 2.35.1
> >
> > Maybe GAS should not need to be told -gdwarf-5 to parse these?  Then
> > we would not need to pass -Wa,-gdwarf-5 via clang with
> > -no-integrated-as.
>
> That is what sw#27195 is about, just try current binutils 2.35, 2.36 or
> trunk branches.

Ah, I see.  Then I should update the script I add
(scripts/test_dwarf5_support.sh) to feature detect that bug, since
it's the latest of the bunch.  Also, should update my comment to note
that this requires binutils greater than 2.35.1 (which is what I have,
which fails, since the backport landed in ... what?!)  How was this
backported to 2.35
(https://sourceware.org/bugzilla/show_bug.cgi?id=27195#c12, Jan 26
2021) when binutils-2_35_1 was tagged sept 19 2020?  Or will there be
a binutils 2.35.2 point release?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm-%2BxK%3DdiSKKXXnS2m1%2BW6QZ70c7cRKTbtVF%3DdWi1_8_w%40mail.gmail.com.
