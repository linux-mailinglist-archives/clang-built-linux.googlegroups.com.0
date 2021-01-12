Return-Path: <clang-built-linux+bncBCS7XUWOUULBB77B6P7QKGQERASJ7FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 700FC2F244F
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 01:44:48 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id l5sf393239ioj.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 16:44:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610412287; cv=pass;
        d=google.com; s=arc-20160816;
        b=yTKqOf34wN8FZCebeyQRMjrpl84ZWA0jzqUgOIENJMxrynujditaWpCiplXLNLFB+S
         SM8hLgeOZLFppFegJj/UlIuqov0FLG4SpPKZyKZuna7K3+PtAwt1YWsPUst4VmqSWpIO
         HyrS1ljAbwiDllHfIBrOmnt1rnVwGV5hZbvnO4U3Qqz6XaZ5YtCxqTP+RzcTTMJl0VfE
         +RNchkS+pZOL9AUGgAd8m6BMJWsIyhS+tsEpwvCgq89EVaCc+/OlHhCDj0kZYr4P33LZ
         Kf7U4DbTlqNIiplGAXA/VzRNZ5cMODTjFt8lQtqoUjiXvvS6cCRtBfEAMkXbp8bo3Qbj
         uO7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h67nDiuPo4nvTMBqZ8pxRnmRsjG4ISvqvDzqGwnETZ8=;
        b=H5R/cBnpQXmL/UKSNn9WHNrXxaHMAMe3kOdn9KC6+BG/TW1kf+rk7/+ChR0BwUXK7p
         gNixpudZmnZZM92qMuh7erTQT0QpM5HmgWopkyMm4Phk++Rb9+C98WFYJMz2fgdIwxHh
         rAAMF49JL46EcmG5EHo/2c5avff2/JJGV77+JQT8tlHhx7sDMHqHtPL4gIx/qFL8Jluc
         R5STMbL468Xdp2sJ1wAJGqCHcsCf0cfzOhm8IuKu7hlJ4KsvpD7t5xs3QVVgX04BV7B1
         UgucOLw/WD1mpRo18Wu+WWeiOdtrRyUDK3wyvgq0aZm3e42CEbbg5GNIN/lGh08djxOs
         qIOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYZM3nC4;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h67nDiuPo4nvTMBqZ8pxRnmRsjG4ISvqvDzqGwnETZ8=;
        b=s9cHTzq6vLaluXrohpjiWTl33snCri7CQgQwVQ8HWIDpNpWNHzegC2CCIjU731aD78
         od4rpUfdB65DOJNycgmbxDM+e2sp0joB3CWh8Hp63w9wLfu02Mq1gNgFYm7oW3yt7Dv0
         vF3mnK0zRQ3VKv/0m9VMSy2NxMDX8N7XBg7BKc96XBDmLwIWa7u8vpMf0TtpSoqmw/L/
         IdfSrNYrIHcy2ACHSRBIOpz5P3cm/7OyHb//meiLGxbWfZ5pcV38da75CzYCOrLXRvEz
         kq0y3OucMdexlaevV0ktZJYXffp4s6GQMvwLaZLqhpTixBrMSrGUmDv5IQSeYQdmntMz
         a2mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h67nDiuPo4nvTMBqZ8pxRnmRsjG4ISvqvDzqGwnETZ8=;
        b=juyMM2A12g2nrS878SWRCB5Lj0ALO4Kd+eeAkihHZi79niWbcvPLMXYWAoTkpYaQq5
         3qXSCSme4dmqylYDy6Rwibwlt/W6WprEQmZRzmSby8HwP+lN0RVO7vH5rDRZpIONsDhY
         2raqfKbKSXv19hxcL/z/wEhagCLygTYyDhFPmiFEAvFFVuvTRG/jOtEHVIo4Oaiirpgz
         QR23qk/bNInHK8er0Ml0yNZPo3N6G4EEN/RTc8Z0YjNG+L/DageGV2KpLRx4bg/Tjqjf
         7MY6du6NdLB5OR42okEkVw5v7AYLyRqpkI6HE6sxUtaOTNAcW17uLUaE1OGxjki+/vXQ
         Ndyw==
X-Gm-Message-State: AOAM530+C66p28Aq+Evmp0hwtWZFdFoTkJaHeKZ3YW9d6feFENxuxOOF
	av+BhhbAO9bhZOuYfZ7hgAs=
X-Google-Smtp-Source: ABdhPJxDylp2r1nMFMW8zWH5FkfBmSXHK8ZB/e4/j4xocfp8gpPyDK245Enr3l+L6cyZm7seN4LnlQ==
X-Received: by 2002:a92:444e:: with SMTP id a14mr1577915ilm.129.1610412287230;
        Mon, 11 Jan 2021 16:44:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:390a:: with SMTP id l10ls251970jaa.6.gmail; Mon, 11 Jan
 2021 16:44:46 -0800 (PST)
X-Received: by 2002:a05:6638:19c:: with SMTP id a28mr1947551jaq.76.1610412286694;
        Mon, 11 Jan 2021 16:44:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610412286; cv=none;
        d=google.com; s=arc-20160816;
        b=aAW+0FVC3Ux8PVQME3jewZ1AJJHVBKXvdYi1rZgWiQw4Tno5FU3fqAO0Yb0tR8T06k
         UthbubUD+YyEh3SvvA74O7kJUY3DxoDKfZou9vd80RuqAwnBv86Zih8omdjqsd0hrxSX
         wlDKLkJiKdQ3A6oR394/uwg+ZSoY79UQ7M55VZpL43pmRZOvA+NVoqWOjPo8kDZRlsCK
         Ue7g0/ovP3b+tHEHsxnpIP4Gb52gIkPoFxAT5dW4Gqu/wMvXH+k4DC/aDulchTPMmvv6
         fTgM5JDP74X/KjSEq6TkYUrfGhRkmuYxLb1EEmtc2x6XX7B+S9Mmc4NjVO1QlHS6a9dT
         X12A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dPK8pNH4QCaFIUUZrNoOKMv2joVCl+mHPXFylSDuRyY=;
        b=aAQIslA4CJvHQtZvS9hDLAT8clhB9DQxCfLQeTvELZ/PjU0XKNym4GPy9zO7jxNJ91
         MAGE89btWeT7LxUITj12t2GaqmU5HKD9FqcFaBSx+cG1iDGJiaqFZgvji/29ZAzyZUc+
         rhZGr1RN5MY8Ica6TDF+JMzpIcUCNlkMRhD48IrLstDeBLVPpuURCySCIACoPg8ADYl0
         NpMo9vyM1AH92fvFqofNg1PQHZfLLuUYJZu4oXEsazxkkdNcKX3+gIlNb1Q5SiFvhej9
         jorglg797v5IJovgNdU1L9ztdHoNiB0baXkE4K/pvDWAlj/2sWOnNxN4lc/KeyUZnuX8
         q3EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYZM3nC4;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id k131si65210iof.1.2021.01.11.16.44.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 16:44:46 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id z21so286310pgj.4
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 16:44:46 -0800 (PST)
X-Received: by 2002:a63:5a08:: with SMTP id o8mr2065138pgb.118.1610412285888;
 Mon, 11 Jan 2021 16:44:45 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210111201224.l5r2zxuyd7ayszke@google.com>
 <CAGG=3QWo5_wwTMHtif4BzFssByaW1ScvpaEH1p1nZ6ymVggLjA@mail.gmail.com>
 <20210111203120.daeef4yuwgmk5em4@google.com> <CAGG=3QVs8dUaqcnuHYiaqccMhp7OmkxewZ_PAhAr96todNJhfQ@mail.gmail.com>
In-Reply-To: <CAGG=3QVs8dUaqcnuHYiaqccMhp7OmkxewZ_PAhAr96todNJhfQ@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 16:44:34 -0800
Message-ID: <CAFP8O3+knLmtt1M-wqdr0XGDFNbocz+1gmfTVUTtwDk5mS1FEA@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YYZM3nC4;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Jan 11, 2021 at 4:38 PM Bill Wendling <morbo@google.com> wrote:
>
> On Mon, Jan 11, 2021 at 12:31 PM Fangrui Song <maskray@google.com> wrote:
> > On 2021-01-11, Bill Wendling wrote:
> > >On Mon, Jan 11, 2021 at 12:12 PM Fangrui Song <maskray@google.com> wrote:
> > >>
> > >> On 2021-01-11, 'Bill Wendling' via Clang Built Linux wrote:
> > >> >From: Sami Tolvanen <samitolvanen@google.com>
> > >> >
> > >> >Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > >> >profile, the kernel is instrumented with PGO counters, a representative
> > >> >workload is run, and the raw profile data is collected from
> > >> >/sys/kernel/debug/pgo/profraw.
> > >> >
> > >> >The raw profile data must be processed by clang's "llvm-profdata" tool before
> > >> >it can be used during recompilation:
> > >> >
> > >> >  $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > >> >  $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > >> >
> > >> >Multiple raw profiles may be merged during this step.
> > >> >
> > >> >The data can be used either by the compiler if LTO isn't enabled:
> > >> >
> > >> >    ... -fprofile-use=vmlinux.profdata ...
> > >> >
> > >> >or by LLD if LTO is enabled:
> > >> >
> > >> >    ... -lto-cs-profile-file=vmlinux.profdata ...
> > >>
> > >> This LLD option does not exist.
> > >> LLD does have some `--lto-*` options but the `-lto-*` form is not supported
> > >> (it clashes with -l) https://reviews.llvm.org/D79371
> > >>
> > >That's strange. I've been using that option for years now. :-) Is this
> > >a recent change?
> >
> > The more frequently used options (specifyed by the clang driver) are
> > -plugin-opt=... (options implemented by LLVMgold.so).
> > `-lto-*` is rare.
> >
> > >> (There is an earlier -fprofile-instr-generate which does
> > >> instrumentation in Clang, but the option does not have broad usage.
> > >> It is used more for code coverage, not for optimization.
> > >> Noticeably, it does not even implement the Kirchhoff's current law
> > >> optimization)
> > >>
> > >Right. I've been told outside of this email that -fprofile-generate is
> > >the prefered flag to use.
> > >
> > >> -fprofile-use= is used by both regular PGO and context-sensitive PGO (CSPGO).
> > >>
> > >> clang -flto=thin -fprofile-use= passes -plugin-opt=cs-profile-path= to the linker.
> > >> For regular PGO, this option is effectively a no-op (confirmed with CSPGO main developer).
> > >>
> > >> So I think the "or by LLD if LTO is enabled:" part should be removed.
> > >
> > >But what if you specify the linking step explicitly? Linux doesn't
> > >call "clang" when linking, but "ld.lld".
> >
> > Regular PGO+LTO does not need -plugin-opt=cs-profile-path=
> > CSPGO+LTO needs it.
> > Because -fprofile-use= may be used by both, Clang driver adds it.
> > CSPGO is relevant in this this patch, so the linker option does not need to be mentioned.
>
> I'm still a bit confused. Are you saying that when clang uses
> `-flto=thin -fprofile-use=foo` that the profile file "foo" is embedded
> into the bitcode file so that when the linker's run it'll be used?
>
> This is the workflow:
>
> clang ... -fprofile-use=vmlinux.profdata ... -c -o foo.o foo.c
> clang ... -fprofile-use=vmlinux.profdata ... -c -o bar.o bar.c
> ld.lld ... <output file> foo.o bar.o
>
> Are you saying that we don't need to have
> "-plugin-opt=cs-profile-path=vmlinux.profdata" on the "ld.lld ..."
> line?
>
> -bw

The backend compile step -flto=thin -fprofile-use=foo has all the information.

-plugin-opt=cs-profile-path=vmlinux.profdata is not needed for regular PGO.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3%2BknLmtt1M-wqdr0XGDFNbocz%2B1gmfTVUTtwDk5mS1FEA%40mail.gmail.com.
