Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBKXLU7VAKGQESKYG7ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6359283CE8
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:48:26 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id y3sf54809378edm.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:48:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565128106; cv=pass;
        d=google.com; s=arc-20160816;
        b=iu3+8B2Z42Xm69r4jkYMPb9K/Exktgc9rdNPjMyQzwVuFgIdA4AlhEik43mhbg30VZ
         doIDdv9nTr1UwCWZd7/MTZT3BYAd+o7SN09EWvNrEYr1mdX7TadWQ+LSqxSBEoKdkhfg
         HMrJu200hvwvgTo9JyJQftcDEPbcvm0FSd6pTDLm7Acl2JW1kceLYKpEJYzZN4El1jzO
         TALiP0kt/foF2W6zIq4Xjt+T90jIg5mhnmSINmmcuAWxRDC1O+O2xFdgdbnqB3ESKAF6
         JCXkABLW96o/dyh5Su8+M3bUnMPSGAc4TvA9VPj5J7ltKonlwHdajpJUGlYQ/iFif4VE
         eE7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8oYj9Sgtrk/th/bUmEreGQRGgJJKoTxN43HRFaD6WzM=;
        b=J8ozl3dAphZ7AGWZO8XUdY7EGI4tQ167rqqryzmhwFDyyeG8niWCXHc3ITobvI1gc2
         2gRr39uhZujxrUhEpUem6TgPSYIQqC50LO5noKMpenL44D5fsbD9EOd6hwtPEQCwCfWM
         BUMwJgdW7xVVL1ImQH4m+0wkWyDVBdtQg3t3GlmgxSIrs6TgWFUgOWKVrdU0L8pQrKOj
         TbJgNgjwy+g7Hbsrv3BP7HA/aEj0KbRViKK0ZV8ZsXAPNoi/Cn7s72jJ7xXbLpeT1440
         MnG6SjpIyQfICO6hjzj2z2D1Cljvl6/K2DfrDHERP7ofNaEbGNSEH3YbICTC/f1QlGji
         yMrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=veaYmKxi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8oYj9Sgtrk/th/bUmEreGQRGgJJKoTxN43HRFaD6WzM=;
        b=VQLv6oe9rpvtegySPJgfhM9rhObsMmVfHZVz66DtRNCXTQs1mHsJHT+gw8T6peBLbJ
         DCYYYLNyNOfIAnXXQNUzAXk6iEPlfUJO5S+j3BQkjPLP8yDoSCQ/9DzP/i4RzFecEiMz
         ozElZA4KGxISPK6p/zX6cFtx/2CS9oLG9mtGT3dYE0O3FZnZUwKjMna6tsZrfzDnwdmS
         HDsmTJhcRPRTbh4Lpiy1ShqWLfogk/m++D/JWU5JwwJ5AG0NqiaH/0zXNhiOHuRo99Oj
         LVH4ylosasxOgr4IYPpuVevVO4C+vwN6IuIi+sphw6+ce/0tn1+165UT/Fj2/9l64zLy
         6H1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8oYj9Sgtrk/th/bUmEreGQRGgJJKoTxN43HRFaD6WzM=;
        b=NqLdMxG8sO8aPGtOyCWdUMGq/1b/wn+6ZMGPJqGIfh2t67YajvLbGqIcFhFKO4C+bB
         hJ4GCRv7pebwihlNUqApuXsev8Zo8agqf6IyDHqNLcJyxoC4bPogYfTs14Zj+YT8EX5W
         WBrGCOO22TR+zq6iND3Oai1/eKhzHCSJyGJVzutvLbC9lZ3v4HJoSNXOgbOli1X4pPwO
         +KU3aV6Zm/Yf5qroV5ypCzRLpGagZQSX1umtbEcWqjUHaQI4v55PTUGhXTctK65/+p4j
         dkoWcaRsp3hD3WDv7fp12lu5KD3+W+Iw8lgyRY0HMxvMTp5twfjSpJ7kmk4RKgHlOstl
         FLQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8oYj9Sgtrk/th/bUmEreGQRGgJJKoTxN43HRFaD6WzM=;
        b=slsLiwYlUyrExeZhrr9AtPo3ntOhDkj49TC7GI72hxaNpLo8VES3BkWaDzl9/CKMlI
         44hfNuEPG8/iDRxeSmy1AMlG4C0zcKthfPi2+Xm+RGylVAPN++Lq7ZQtY8LyovwTSoTw
         dqQjl+Z7VQAN/nrPvxzCX3FuS50QKasA9BKWUnJTU2m4gWgcv4tzv2LUToPzkawjYtmL
         1q3Z9MbLuJ7JBjRwIFzdyA66sD343etPfokBQj4tUtRHdU89puXogrv5hQ/4+2JFJtnW
         uMCEbrO6GuM+IpW5S0nO8veMj5F08NKHofI4Kk3Q8rfvrUilblBBmDL4gB2qwtwU+liB
         ErJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfhP5/kWXX+9Q3He3LWqVbVdXHjTf6Ms8OEsNOjcFkWmy3dT9K
	c8KWztIzpKEA7ynrTOD29xA=
X-Google-Smtp-Source: APXvYqx2N/97VnuilXhKt6eOJT38pblIiE/xoRg5TBd/0ZABrlTSJG7R6NR9IAW/uLSsfnBeDgnP6A==
X-Received: by 2002:a17:906:f1ca:: with SMTP id gx10mr5388846ejb.184.1565128106148;
        Tue, 06 Aug 2019 14:48:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7345:: with SMTP id h5ls21493289ejl.16.gmail; Tue,
 06 Aug 2019 14:48:25 -0700 (PDT)
X-Received: by 2002:a17:906:1292:: with SMTP id k18mr5531189ejb.146.1565128105664;
        Tue, 06 Aug 2019 14:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565128105; cv=none;
        d=google.com; s=arc-20160816;
        b=rT4JpVkkLJkGkKdTaTznO84k8I/kAcdImgaMD6yKwQDAalqsREKJZhzx+Z1MvgV2qV
         Q8EKrtW5JCEoWidymxq1+GzcEcSkpBeKL1y+P8hIlLuRfnefZqCJgKyyUkeHoZtoBLs0
         UhqNulaMzvTgs2xjuvrc2d03msRdPEohZ5kCGXx0lwDNlOXje7wZ8KwUOZWSLh8Es5VO
         w8LqmtvB67hI5z4sEpqqZXE9hQ1YUlg+KJohcYY8vHrzQcQIkesiVADfvY6U8TGSegg8
         EhAp36bOIqUcfqoojHmv+dzlnSC8N+qShNZUxmMYrhusytrgpypi6nVDv8JhKg5cU3os
         PoHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MJz6rrRfP8NihMX6l5WQ9ZS1mAqB9d/5+Nlg78nkMdY=;
        b=ZeJ7vCvMmvaMIVpsL+QtEtrouRFydjo+HqwbUbnQptHfnmwAWB8wop/VPonhHirAtd
         gNW+5y4XCxWksdHMsT2PXd9ECRodJyP7+Hhu5qyM9sCjkiE4wWMtBcKDAiCoymY2x7+C
         qeI31LWZHto2aMuZe539EdK+AxOWhkh2WHZulrUWGd2WMLmZU/OVxFccDO7R1juSItgY
         IXlxVF7y6zyCGQtnotilhoqqHjE9wni1xDOnr4DLz/CImoAdg7HUku0GMg3G0gGvrbwT
         /dgqdeSwopVlQx04bmaf6gkHzPGq+S14/kwevtrLBMGKwMyJa/ANpOBu5vv3yhgyBQ9y
         0S0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=veaYmKxi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id a41si5099973edc.5.2019.08.06.14.48.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id v15so79685771wml.0
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 14:48:25 -0700 (PDT)
X-Received: by 2002:a1c:5f87:: with SMTP id t129mr6815383wmb.150.1565128105355;
 Tue, 06 Aug 2019 14:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2FecM1Phd7HRK3Mx1rD92MuU8a1N3++DHX4sq-R0S-nA@mail.gmail.com>
 <CAKwvOdmXMAeNQ_abJehDhXigYWeqZjnUWjxeE+y29QWcQczFzg@mail.gmail.com>
In-Reply-To: <CAKwvOdmXMAeNQ_abJehDhXigYWeqZjnUWjxeE+y29QWcQczFzg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 6 Aug 2019 23:48:14 +0200
Message-ID: <CA+icZUW9F=sXwgxAzu0GtEgs400ftrm197gHOZakvFVg0+tw7A@mail.gmail.com>
Subject: Re: apt.llvm.org builds
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Sylvestre Ledru <sylvestre@debian.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=veaYmKxi;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
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

On Tue, Aug 6, 2019 at 11:34 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> + Sylvestre
>
> On Tue, Aug 6, 2019 at 1:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > The llvm-9 builds I use have not been updated since July 16
> > (r366056), and I keep running into linker errors from the lack
> > of your final patch.
> >
> > Nathan commented on IRC
> > > which just missed that snapshot (r366056 is the base, Nick's patch is r366130)
> >
> > Can you make sure that r366130 is in clang-9?
>
> It looks like the clang release_90 branch was branched from r366426
> which should have r366130.
> https://github.com/llvm/llvm-project/commit/2cf681a11aea459b50d712abc7136f7129e4d57f
>
> In fact, here is the commit:
> https://github.com/llvm/llvm-project/commit/c4f245b40aad7e8627b37a8bf1bdcdbcd541e665
> From release_90 (link likely to go stale quickly):
> https://github.com/llvm/llvm-project/commits/release/9.x?after=13c43456a9a81293549e292c31cd29e9aaa67ead+349
>
> >
> > I see that there is an Ubuntu Disco build from Aug 04, but
> > the other ones are still on the old version. I tried installing
> > the disco version, but that requires a newer glibc than I have.
>
> So it looks like r366130 made the release_90 train and will ship in
> clang-9.  I assume then the underlying issue is that clang-9 hasn't
> been repackaged yet by Syvestre.  (I assume that distribution gets
> hairy closer to releases).
>
> Sylvestre, is this a known issue?
> --
> Thanks,
> ~Nick Desaulniers
>

Today, I installed clang-9 from Debian/experimental (1:9~+rc1-1~exp1)
over the packages from llvm-toolchain-buster repository:

# apt-get install --no-install-recommends llvm-9 clang-9 lld-9 -t
experimental -y

I had to manually update/install (package came with
llvm-toolchain-buster packages but was not auto-updated here):

# apt-get install libclang-cpp1-9 t experimental -y

You should have:

# dpkg -l | grep 1:9~+rc1-1~exp1 | awk '/^ii/ {print $1 " " $2 " "
$3}' | column -t
ii  clang-9                1:9~+rc1-1~exp1
ii  libclang-common-9-dev  1:9~+rc1-1~exp1
ii  libclang-cpp1-9        1:9~+rc1-1~exp1
ii  libclang1-9            1:9~+rc1-1~exp1
ii  libllvm9:amd64         1:9~+rc1-1~exp1
ii  lld-9                  1:9~+rc1-1~exp1
ii  llvm-9                 1:9~+rc1-1~exp1
ii  llvm-9-runtime         1:9~+rc1-1~exp1

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW9F%3DsXwgxAzu0GtEgs400ftrm197gHOZakvFVg0%2Btw7A%40mail.gmail.com.
