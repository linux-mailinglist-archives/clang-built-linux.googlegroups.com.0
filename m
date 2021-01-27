Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMWRY6AAMGQEFHPNP2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D7230672C
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 23:27:00 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 143sf2174236pfx.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 14:27:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611786419; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCqv26t04mn9qkerfOzZaJ4xoY8PGhDHUSSN7WFgG6dlBiHo40XHc7Qc+PU03AUJYG
         fXGXaiBAKT8+NCOAhCczNWak0jX4GzHVO9ptWKc466bgfa1k2EdF1vsf1jXtuCCYXa5P
         H7pHP2PErHRmm2oW7e0eeqD3B8527J3CG/GCw6s+s1x5fccZRBwWdgTijGbeLS2Lhp/e
         j3XAE4EyxPMIA7V5nwu4Z5eicPeD2H8f+hL2/ymVj5WDc4dF6jPwRoXGv2vurG09hVzk
         vDsWQ/RIOqAsAVHM9InKBpbS/V38OEFVanWH283DDhRDG5+At6y4GH3YmfFFf7Fe4YLb
         +o5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6W6EboTIL2ZLpKjS6lc8IpTDWLJOYhsxuNGNxpR3kjI=;
        b=CnePp6HXQyUvEKKvKgObXJfTn6b2yXd3q5DcxPvanU0VOvZSFPGsZ1jeG1Qoagi9sN
         X8aYGVZKd1cVusRY0ao5y+B5wTr2HiPqU+U8onWmJSNECooZGCmtJBdkwtz4zJKCzYr6
         mRmFgzjYY+rG34G4T4GhjmwEjjBAzOoRRRFCd2yjt9cAysjdcx7JJki/V7HqK4xiDI0/
         2AKoeJYuKpoXxrYAAMyiwXnPI8+qw50312wwkFc5ajgsHG3S6HMhi2sBXuoRdre6oQGf
         9f7ElxvHXrZkPfrT5zisFKj0I05Y2ppqEoKbbOWYRe4LLp/y9MHkdz3Q+xharCzClwfj
         n9yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CRXdKGJO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6W6EboTIL2ZLpKjS6lc8IpTDWLJOYhsxuNGNxpR3kjI=;
        b=VBMcNuHDekQDnjprKe6mQLlHDGIvwK0TiYRaIrNSbO0O2wlzilAqMme1G84UQpo9R6
         9UkBL3jQVFt6XZr/30Ae54oCKp647Isjedicpe8nQ/Pnu7JTNEhM0pDwnNsAQPPq68Gw
         R+GWqq+Y4acly44oAx236Yr2YgGMNeCnccNnU7b/Ypn+E1wWzq3ylC92SXMH7QcD2QsZ
         FZHweWqhVs0CPUsgrUQd53owvaxCOMJpHICjtVDspljyYEKldl6LOOHgiI20f6V1qtGz
         RZ52OUatWksCZHu2kIcIQcFGK5kQ2nhLN0u0sa2aHHmLEH39+MsokiiUi2WLzyx+ADjW
         58YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6W6EboTIL2ZLpKjS6lc8IpTDWLJOYhsxuNGNxpR3kjI=;
        b=G1umRBJA3NbrSQRgvZTVaaoK6TI8KzWWQJafi947zPjbLz3i+V3MyZuE0HLQMNmc8J
         Z9jx6TcTC+0j3OS1dfiiQwCAcmKqzvuKZZZU9G2zY1gnlAPdThG2jeiSC/njpLNB5mIo
         UGhTNleNda4vaHuktt1tGNfUZkpjlVqMII8N4K+IjiePOrDcsDGMx2SwRexaNXck42B6
         RgXG2xgm8QL+4zHq9TtMxA7Bh1BqTFNwqAn1ciGMYJJf6pwiOj7RIeAK4ux5jsq7sjdP
         mOFDdVvFzPGGcjPkDhRCI6GzOTa4hjxGT8FwZtquoshAoNDBKMnz4LU7TSMOEYRFzZUe
         EgnA==
X-Gm-Message-State: AOAM531xgSt1G8aOCCQieKiPq0McL8jG3kVeMQ9E66Wz8m9i43JqBNjf
	x/MmUmOJ2Vub6U6Wpe3V0zI=
X-Google-Smtp-Source: ABdhPJzPEhM3Eoe9xElnbJYDzHrj+53IyOEsxH8dVX7700nOI4JPTrA6kuktha8iDDE4uuxScCobzQ==
X-Received: by 2002:a17:90b:4c8c:: with SMTP id my12mr7789173pjb.29.1611786418897;
        Wed, 27 Jan 2021 14:26:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8bca:: with SMTP id s10ls1356590pfd.10.gmail; Wed, 27
 Jan 2021 14:26:58 -0800 (PST)
X-Received: by 2002:a63:1220:: with SMTP id h32mr13548083pgl.309.1611786418267;
        Wed, 27 Jan 2021 14:26:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611786418; cv=none;
        d=google.com; s=arc-20160816;
        b=dymWri2sUzJjhbCrILNCuYHM/cxB2mFE1XH5oHuYu6qVeynPdfhuqx5Fmr2SbU9vMJ
         3At7dUv642Qo9AjhdUFox0iodA2+VrNZTSg9dqlWpZvhXbWliNZRNIX2ugxJFY8PpaHs
         S8JgnlDi32vvMwXcxuYk06m4wtcl+rsqYgaToy4T6Cvd+wRsPZPQ0i3sjZ6yDSmS4hFp
         ZtuWpQ5RUQ4aF26PkxXLMNGqCSCw1uvsJ8JO+n2dDd9tZM5as5OVg65zj6YU9aqW+NUW
         xAkUDe+Kacrp1syKwU1jJNu7Dbq2mKf4gmAIdqsV4/MzySrw4RPbjNpF3j0ISvDmPP4d
         OMtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MMFtAtZNI0COZaqF8mB8/06frm5QBEITJpap0cTagq8=;
        b=wHgYTgUxbuan4oB/XCBgl8L2S+A0RUkCMwL4U8DfFJp3Gu+dp50uRk3iRpQ2xjncZI
         GI0ZcjkwQzkM0nOXw2kRJUeUHxqcoiQBX+pwjcBNbJFU+x38v89wQgGuUhlbIoD9cK7z
         qvnb+WJB7ewDOexRVqGYFM8bV5Da7rK1Lt3duQmwHfvjdicqw7aeUk/f0oSaHCyCEG/Z
         oRtMZFJae3aDEVBlZPnAATgF610mnu5JFOs5LNfmAAaOUkA37mirmLBEMYT9T1zkmfnL
         gLIUG8yK9pdf4uYhgjFVVlCkvP6cl2f1PoJ57Sbp1H8sIBBX5OfoGjfNKCgI2eh24PYO
         M3kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CRXdKGJO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id d2si202379pfr.4.2021.01.27.14.26.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 14:26:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id v19so2631055pgj.12
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 14:26:58 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr13557544pgc.263.1611786417749;
 Wed, 27 Jan 2021 14:26:57 -0800 (PST)
MIME-Version: 1.0
References: <20210112205542.1375847-1-natechancellor@gmail.com>
 <202101130859.JSORPQUn-lkp@intel.com> <20210113013130.GA3446359@ubuntu-m3-large-x86>
 <CAKwvOdnx99YTGhP-mH-9E6YTLLUfauuteFtqZSeXLv5Vy+XowA@mail.gmail.com>
In-Reply-To: <CAKwvOdnx99YTGhP-mH-9E6YTLLUfauuteFtqZSeXLv5Vy+XowA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 Jan 2021 14:26:45 -0800
Message-ID: <CAKwvOd=WpK52Y4HpqoeaukmfOAWqTg-+NV1wdBjokwRuumdtSw@mail.gmail.com>
Subject: Re: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Kees Cook <keescook@chromium.org>, 
	Andrew Morton <akpm@linux-foundation.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CRXdKGJO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529
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

On Tue, Jan 12, 2021 at 5:39 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jan 12, 2021 at 5:31 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, Jan 13, 2021 at 08:39:52AM +0800, kernel test robot wrote:
> > > Hi Nathan,
> > >
> > > I love your patch! Perhaps something to improve:
> > >
> > > [auto build test WARNING on 7c53f6b671f4aba70ff15e1b05148b10d58c2837]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/Nathan-Chancellor/ubsan-Implement-__ubsan_handle_alignment_assumption/20210113-055714
> > > base:    7c53f6b671f4aba70ff15e1b05148b10d58c2837
> > > config: arm64-randconfig-r031-20210112 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32bcfcda4e28375e5a85268d2acfabcfcc011abf)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm64 cross compiling tool for clang build
> > >         # apt-get install binutils-aarch64-linux-gnu
> > >         # https://github.com/0day-ci/linux/commit/775adad26a60878926c0ee6cd460a1375bbe51e6
> > >         git remote add linux-review https://github.com/0day-ci/linux
> > >         git fetch --no-tags linux-review Nathan-Chancellor/ubsan-Implement-__ubsan_handle_alignment_assumption/20210113-055714
> > >         git checkout 775adad26a60878926c0ee6cd460a1375bbe51e6
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > >    lib/ubsan.c:192:6: warning: no previous prototype for function '__ubsan_handle_add_overflow' [-Wmissing-prototypes]
> > >    void __ubsan_handle_add_overflow(void *data,
> > >         ^
> > >    lib/ubsan.c:192:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > >    void __ubsan_handle_add_overflow(void *data,
> > >    ^
> > >    static
> > >    lib/ubsan.c:200:6: warning: no previous prototype for function '__ubsan_handle_sub_overflow' [-Wmissing-prototypes]
> > >    void __ubsan_handle_sub_overflow(void *data,
> > >         ^
> > >    lib/ubsan.c:200:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > >    void __ubsan_handle_sub_overflow(void *data,
> > >    ^
> >
> > Given that these are compiler inserted functions, there is not much of a
> > point to having prototypes to them. If people feel shutting these
> > warnings up is worthwhile, we can just add the prototypes right above
> > the function definition in a follow up patch.
>
> Same as stpcpy; it would be nice though. ;)

If you would be so kind, I'd be happy to sign off on such a v3.

> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DWpK52Y4HpqoeaukmfOAWqTg-%2BNV1wdBjokwRuumdtSw%40mail.gmail.com.
