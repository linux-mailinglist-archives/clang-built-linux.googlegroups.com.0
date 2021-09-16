Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGNORWFAMGQE567B2TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id A042340DCFC
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 16:39:22 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id h15-20020aa7de0f000000b003d02f9592d6sf5628731edv.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 07:39:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631803162; cv=pass;
        d=google.com; s=arc-20160816;
        b=l7/Uvh8u/M1TEfn6QoH7qk4aYGgMsHgH2L6RFD5msRbxlA89G/DpaY09ywG87K6vd8
         kbr/tHtirgwQWDwMdwz/sgMRuPom3LdnFelCmDIV29jBqgDoGbr8YhpFyb8GpakqN2D+
         6QSaavDqG2JqmfZfk8j+ETzHl105GR4mncdcmEILVsjdV3PYjbm1lQjAGbQNIUgi3dFA
         SaQRfJ91nJ2fTuJg+Vv5mC/7ZkZjxjvyaDFKhSMWL5lTL2/Hb6W3N221d3yxnCkkZkvu
         TixKpkKdT5at3x5XNIYyzNJTC9sAMmb0u42L12ivN6+x/XTGC9pWdQnvtn5PzBYPxP3v
         Wyug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZNL1+NQBXsFa0z0Lch6ayCG68ppD4Gq32LnKRzQ7zaY=;
        b=H4t6KPS0k2JLjbA/k0uA5joK1KWWfB+O/HPfvBC7PbB0/ae/ImIAhoXINBb6OBS8PH
         jXKQkWu5P9TBDLD+BTsIWaKgOn/egMTDf5EswDObikGemOaPmo2NbFJVCZ6l7arBp/+5
         bKto2s9nxhtk0rH8Ku4+PH1YMyWYTAUY0yjIIrQe3OwfJJBnkM166fagmOBw0JInzA0z
         9gBlt7+fkObGaVYqeNh+6PeBmDfFUTUHWemkMAFb/n9o21N/7txoq+E6f+5JaSsfqkU2
         yQs8q1ZiRy6jc0VQrXC9AUFAi+kiW3V7guElFkrsPIjK+Eg+tLnnSS3uYAwpDX+629yu
         DyVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=HHRiIhoD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZNL1+NQBXsFa0z0Lch6ayCG68ppD4Gq32LnKRzQ7zaY=;
        b=G9orIP107VcP91TCKe34JYAWc8DICFcCz5t9eT3s8M2BC3goDdsKDhESnsnKkocv+d
         lGOpyo+mVoKZ6dQrb3C1Nlv5Py5X/0foHZGFDByxGF2UjT4mSuNUXl2G6Q71rfAtujQH
         4Ef75Zxn2e5Hua5z92UJDBwtfH0nSq4Gt6AVBL1SHOUvSOyxWxF1PJJmKHTjpN5h4aaC
         77yUTzy1w0VSfzB7QFfkrscgBZf/GAXevubVXqQ0qAolVce09oc0Gk8ajadu9TCDC6Nj
         QvqEnREHb+DrXXjZx8bSxr3p5ziQr6JRqQ1AbgUaFTsg17tZ3H6ei25Vz+vpp2juE7S8
         FLLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZNL1+NQBXsFa0z0Lch6ayCG68ppD4Gq32LnKRzQ7zaY=;
        b=p5cJ2K4ReUwCZHbLrjz6QMJhR7HSOuoa3IILK805w/785eKaAFzj7mMNtvLzNsWgyZ
         yZBhqoScf6gUi4vv0xK8XsMwlDDv29bn1ePxlZU+KpzFL8jwX+p0IGaaP9Exi7yNMljp
         AAneZLhbqrXh99nQ820aEI8Qy0r0+hmJF1/3rRdhCyXXqYWLSN1TzUpgb295LPAQFcni
         Q5JqQnU5O0RmWotWt1VkyDf0qtV5It6bB/jNOvBF/Hyoeo8lhIhjHlrH9TN1brQ4DkWZ
         ETY4zhCWzTNTKbFjCHy/SbK5k0j+ErAZeANNhXRuqzj/F6Je+nEzaAh4Wm0wzytWKV3z
         yDwg==
X-Gm-Message-State: AOAM530HAlz3n6NPac9sQx7fx3HQDRPUaZub0lYkGjvM9pWmBt2Xxy56
	ruDKiYqXXfgl1TEXatUgxzE=
X-Google-Smtp-Source: ABdhPJxLE1bJldSKwUgB8Ikb7iKrumU/vau7u3oRTmMlNAzUl/BnU7QJLjqO8UNwR6/B8gI+w5m86Q==
X-Received: by 2002:a17:906:2cd5:: with SMTP id r21mr6762136ejr.435.1631803162117;
        Thu, 16 Sep 2021 07:39:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3513:: with SMTP id r19ls1798436eja.1.gmail; Thu, 16
 Sep 2021 07:39:21 -0700 (PDT)
X-Received: by 2002:a17:906:dbe9:: with SMTP id yd9mr6280342ejb.184.1631803161120;
        Thu, 16 Sep 2021 07:39:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631803161; cv=none;
        d=google.com; s=arc-20160816;
        b=iBYQRyVlZ78jg0rLZmo5OJTGjgyTvx4H5JbeKPnb2IoNnbkYoz2qj5IaG7hX1bV8Z8
         Ukw6A+/iXiZntxuWzG2GH/VJOo3m7nt0OV2tj+UuzB5BX2f6bAIXtO7o5nHNLcVTboUc
         0VcpfRSXiu11zcIbRj9n3PnPdJM9/ixo8AUG3S0up319su1ldK+VKTg0fZrqGeZr4Fkn
         YEJierHYGj4+RFV5kGtVwUVFVB25h5lpG+PiUF2eF4Oew2zjXxg49BXavGIZrrwhjfsV
         3z2pzbfEHzS5MgWtjLmY4fgY70CAp3JFN1JqlF+2TSqU7nxqo0B8fXnKPcfGhY9cgoJ5
         e6YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TQjXccX+wRtm1y7e6txWKLiNAaSVeTAx5PdHAsE/GWQ=;
        b=kPZ+CzcZwpbzE32mQXPHRaVNC0v+WK+wGH2x51zyZO809mPpN55uJDNTJ9U8OTGsgM
         zhShUdYvIoDWFenz3GZntATxIjjqcy8A/azCzT0tqbK6ET2w1tcNzfj7Ge4SoO00JrZk
         YvMzFo19JmlNO/Ja93q7uhqh01WMb4nfeOtwhCxO/4Nbu9l757eHWlzqVoINufYd3Q2N
         iFhqj6DpEdvotfxj6n5ZYX8WrboFY2WTBM/xYQgfP6VSNGJBLjMvMxhl9TrIQ2h64r34
         BnJMku48cJUjGoh5lgDyeLte6KEw9lI75BcwEdXlP6pXsmLKCHggVlLQQT+IjUB6Xwp+
         MIcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=HHRiIhoD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id 14si424829edv.4.2021.09.16.07.39.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 07:39:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id c8so19501757lfi.3
        for <clang-built-linux@googlegroups.com>; Thu, 16 Sep 2021 07:39:21 -0700 (PDT)
X-Received: by 2002:ac2:4c46:: with SMTP id o6mr4393732lfk.240.1631803158069;
 Thu, 16 Sep 2021 07:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk_7TrWdJWxtNmpvHptTA7cuRsmMrL-=8k=6_ZaRCeaWw@mail.gmail.com>
 <CAKwvOdnwTFv15MRHG1YrLnGhfmunxdpS9NuK=jXuC5-viAo8NA@mail.gmail.com> <CAKwvOdnDdKa6aMufpQj2-MJR=M4aDPE6LhNvDnLt8z1NeVAOEA@mail.gmail.com>
In-Reply-To: <CAKwvOdnDdKa6aMufpQj2-MJR=M4aDPE6LhNvDnLt8z1NeVAOEA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Sep 2021 07:39:06 -0700
Message-ID: <CAKwvOdnCwrkSyU7uTPX1Jta-PE6r4nK8UmqsT_PcQ5u8hPvi-w@mail.gmail.com>
Subject: Re: Announcing LLVM Distributors Conf 2021
To: llvm-dev <llvm-dev@lists.llvm.org>, 
	"cfe-dev@lists.llvm.org Developers" <cfe-dev@lists.llvm.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, llvm@gentoo.org, 
	Tom Stellard <tstellar@redhat.com>, mgorny@moritz.systems, 
	Pirama Arumuga Nainar <pirama@google.com>, Sylvestre Ledru <sylvestre@mozilla.com>, 
	Martin Storsjo <martin@martin.st>, George Burgess <gbiv@google.com>, 
	bernhard.rosenkraenzer.ext@huawei.com, Nico Weber <thakis@google.com>, 
	evangelos@foutrelis.com, Dan Albert <danalbert@google.com>, 
	Fangrui Song <maskray@google.com>, Petr Hosek <phosek@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=HHRiIhoD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Wed, Sep 15, 2021 at 2:28 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> The YouTube live stream for tomorrow will be:
> https://youtu.be/UMDRAmmDBgM. Please share this with friends (and
> family (hey, they _might_ be into compilers, idk)).

The YouTube stream seems to be working. We'll be going live at the
above link in ~20 minutes.

>
> In contingency, we might be using Google Meet.
>
> On Wed, Sep 8, 2021 at 5:16 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Final call for CFPs (EOM)
> >
> >
> > On Thu, Jun 3, 2021 at 11:55 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Hey everyone,
> > > I'd like to announce a small conference we're planning for those of
> > > you who package and release builds of LLVM to additional users; LLVM
> > > Distributors Conf 2021.
> > >
> > > We're planning a day of 15 minute lightning talks for folks who
> > > distribute and release builds of LLVM, with a focus on configuration,
> > > testing, and unique constraints (or whatever folks may find
> > > interesting about their distributions that they think others might
> > > like to know about).
> > >
> > > If you build LLVM for other users, we want to hear about how you build
> > > LLVM, some of the unique constraints of your users or target
> > > environment, configurations or configuration tips, war stories,
> > > headaches, distribution recommendations, and problems that would be
> > > nice to solve in upstream LLVM.
> > >
> > > Some example distributions of LLVM that might be of interest:
> > >
> > > Apple LLVM
> > > RHEL LLVM
> > > Snapdragon LLVM
> > > apt.llvm.org (Debian)
> > > AOSP LLVM
> > > CrOS LLVM
> > > Fuchsia LLVM
> > > FreeBSD LLVM
> > > NetBSD LLVM
> > > OpenBSD LLVM
> > > PlayStation LLVM
> > > Nintendo LLVM
> > > Chromium LLVM
> > > Arch Linux LLVM
> > > Open Mandriva LLVM
> > > Gentoo LLVM
> > > Google3 LLVM
> > > your distro here; I'm sure there are many more distributions that I
> > > don't even know about!
> > >
> > > Please help forward this announcement to folks you know who might be
> > > interested and that I missed on the To: line.
> > >
> > > When
> > >
> > > Thursday September 16 2021, times to be determined.
> > >
> > > Call For Papers (CFP)
> > >
> > > Please file an issue at
> > > https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues
> > > with a proposal. The CFP deadline is Thursday September 9; one week
> > > before the conference. We will add a schedule here with accepted
> > > talks. Talks are expected to be only 15 minutes in length! Keep it
> > > brief!
> > >
> > > Updates
> > >
> > > Please click the "subscribe" button on
> > > https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues/2
> > > to get email updates, or "watch" this repo on GitHub at
> > > https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021.
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnCwrkSyU7uTPX1Jta-PE6r4nK8UmqsT_PcQ5u8hPvi-w%40mail.gmail.com.
