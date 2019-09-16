Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG6P77VQKGQEVZQPRDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D608B415A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 21:50:52 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id y21sf537740oti.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:50:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568663451; cv=pass;
        d=google.com; s=arc-20160816;
        b=At5fANmc6jWCKpksiB3G893vE2YgItZm8Swwo8HsDampCDSnTnmT6tf5ulHYaXuMhr
         /1zk5Nnb9kCr9fVuIRGUcKAAHB73adYeHStKFmoVagG45IgFBBMVybz2bt6BdJEymZmf
         yFsGb0421yI6bY9e2K8dSJ5tmwJDEby1/dljCwtB5zpHnNZEgUTpAJaQ80vk3pKmpbNx
         yYQ+WA/6YA9uN+HQ+gfdvYorDjbofDnGCKf0B/OKGBBcrWSTju6rTv9grHSltSTyDhVG
         skRuvPaBj4M/FNBWglVH06aseYwy4BsqQVwsgWQiApKefZ4wXxqB+SVsg+kZ4bUjqn2Y
         ntVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3fxd2EXxEKavsj56NjSF15HC2hjxA2ji77CQF1Zn7GQ=;
        b=RAL6Qc7+QpdTTriBsQ1LF7ydUMk0C+3PGdmkZuvJZdQEKhldrtXBOL6ZAmTpg462dB
         7C7vrREyAnRqVH9Ulp8VvoTrOmZAugiDq8eiSMv9veYA4M7++JpcF1nJe0NLaNVSyagJ
         eQjdwWlgE6jEtlTCTW+14ABn2RWXJVbRmqcLI+PPlEuKpXbcwY/B8wkB6t5VoKtRWwCy
         bzJBor0Z0/9k5+lm5nPpnLrzVhnYjSeJW/o7zgqCQT8E1Fx3jntr2rMoluKo2J4cvFjm
         HOyLpP5/w+GYONj2gVkgNbKw0TdVpbWsEpJRkz2otVhCuc3NOiTivBFjYn7jEy0/Pdet
         PC4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="b1s/oy6A";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3fxd2EXxEKavsj56NjSF15HC2hjxA2ji77CQF1Zn7GQ=;
        b=tn/656kb3ZuFOCRdLHsqbAbOu1VgTEbWlBQA2huR6DIcmtbKGBUv3bsaQVA85xhjII
         iwLzxXsV98gb4EszkoGL/ODtidQEJwsHVwPHQa4RkvL3AIh2NPTF1medBxMr8vuK2sPY
         mdRqSOyaG0PRFaR1XsUIjzoRWWA8KCrFpTeFf1HBFLvFlvV68csEoJmE/jzouUF94EnX
         NUZNa7K/eOiZP/XbRG724lGtZfJ9r+Nbvo23xUO153+ITFfr8FXg7UJ0erRlbWmYrpCz
         0nYjjaoPvc4ouqiQpeSh9f2NSVVBamgaLidNvrhz2cmuyDT0C4vxLuKeptLbn5hIuRO7
         m85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3fxd2EXxEKavsj56NjSF15HC2hjxA2ji77CQF1Zn7GQ=;
        b=Cnqg7TRtHbgpTIHLJo+hp7PovexXTrj28MvZFeWfRcnQsna0G8dTOvwQ99h/59nmu0
         MJwJTDlDN+YzUIkd1ry+E8fPZvJNBoqMYhRGCOGbMRexaORT5+E8x+1FJvEjWo/Iybgo
         y97zOg1PEYUzGJOouVFhZgQ2atOKwFBMlTqzbpV5XeO9sDjUG7plfqOBY4gI6BXTDMLv
         o8KQo7cxsOReUPfHIAjejOz9F2wuY1bmqCDsAzrxqVDcFysFMEAg2iKXnG6e9cuGABVa
         WifnYTju2t3G3L3kzioP0cpTM25FJThp9nyhLmFA4PqMW5mDqaJRcXo6KHiajZLV6OiX
         D9xw==
X-Gm-Message-State: APjAAAUAlWN4AqEsM+N8iFuicJVGcwa6CVtUE7AAPRwRiR3rvrvxDwSA
	gIYKDrG4rwf9LIAnctKhZW0=
X-Google-Smtp-Source: APXvYqzYYjRKB08blGLq+VmxCm9mZBP6B5gja9+h2D9d2EmErQYXb0YsY37LdhSsqfbvitcHwuROxQ==
X-Received: by 2002:a9d:2043:: with SMTP id n61mr784269ota.17.1568663451284;
        Mon, 16 Sep 2019 12:50:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:187:: with SMTP id e7ls225836ote.0.gmail; Mon, 16 Sep
 2019 12:50:51 -0700 (PDT)
X-Received: by 2002:a9d:86a:: with SMTP id 97mr779758oty.318.1568663451034;
        Mon, 16 Sep 2019 12:50:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568663451; cv=none;
        d=google.com; s=arc-20160816;
        b=klOW5Ve/b5Y8z5+VFJCot0vyTZj5diGBShdQu9V/s7emzBv7Huy3vfqXJ/TPvZsupn
         GSIKly8xeOvwH36bunJHCaiYCVfmY5RW+2/nY6PBaVksAPkGCPXn5xj/+IMcxkqlsa2m
         xaoGbB42XdFR97WG8F7s6J4ijstgRh9tXzgSKlmpQsS89HyLDPbnjP3BxiOSgFtt6ICg
         o4GvMtwp3VMpUp4rvoSQuF8Mdy8WOwjtozcjUUEuk4xLH0RA7UL4KxQkytRvK10Ig9W9
         LNi/g3hIUMs+pGiznPPZ+D01ob5uI21ebt43Hv1DeoPPqBi3JIKkfVtHzUmQ9nTP/dRN
         piHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=htYo4gId0w63w9M9cZnybMsdFT3G68OI3cGGLPp7haU=;
        b=cSL1VXq3kViaJ5MEMwScIp8pV760ipa/1hhJWECcr48mIhc+UiEg1U1gEwRWAlUCsp
         YXR6IFCEDtdmRpfbV0/5uzfnBKFLlfQY28J8xpAchv9KkDmGkgp18yZ58Q2IGwOPs3cl
         L+NDj4AJFuukUBH9xaRnssbV0vi1tJo8Gm+0ZKdeQnnym2B8xFImw5xbRpjzRu1YcFvU
         U5eLPJRUBHVpJljt//jiD5YOMvfm8We/ixIKDZTdzUs7690HGHrsU2I9MPK555jwf7ir
         yKFye7UaEV9VswUIh+Dk6s9rz73WkC5wAGts25fu7R1P7r5FIh3dOL54qq9uPc/aXqLb
         O+CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="b1s/oy6A";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id k184si29828oih.0.2019.09.16.12.50.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 12:50:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id bd8so365861plb.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 12:50:50 -0700 (PDT)
X-Received: by 2002:a17:902:d891:: with SMTP id b17mr1480145plz.119.1568663449952;
 Mon, 16 Sep 2019 12:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <201909161819.6hE3UddX%lkp@intel.com> <CAKwvOdk+=J0uJi3=tXewZ_BpKujMe2PPtL=NQA00whAMJWeQtQ@mail.gmail.com>
 <CAHRSSEye3PB6V9FnpBbtJTimzvDJavb6SJ_XdfkyWxjMFH_5=A@mail.gmail.com> <20190916193752.qmtfcs5fuxn3fqa7@queper01-lin>
In-Reply-To: <20190916193752.qmtfcs5fuxn3fqa7@queper01-lin>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 12:50:38 -0700
Message-ID: <CAKwvOd=G-PCe1rmEVWTxaNiWc-0v=5vSFkH=Fm6FBxsRHEv08A@mail.gmail.com>
Subject: Re: [android-common:android-mainline-tracking 26/165]
 kernel/sched/fair.c:6424:6: warning: variable 'latency_sensitive' is used
 uninitialized whenever 'if' condition is true
To: Quentin Perret <quentin.perret@arm.com>
Cc: Todd Kjos <tkjos@google.com>, kbuild test robot <lkp@intel.com>, Alistair Delva <adelva@google.com>, 
	Sandeep Patil <sspatil@google.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Guenter Roeck <groeck@google.com>, 
	kbuild-all@01.org, Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="b1s/oy6A";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Mon, Sep 16, 2019 at 12:38 PM Quentin Perret <quentin.perret@arm.com> wrote:
>
> Hi guys,
>
> On Monday 16 Sep 2019 at 11:16:03 (-0700), Todd Kjos wrote:
> > +Quentin Perret
> >
> > On Mon, Sep 16, 2019 at 11:14 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> >
> >   Looks legit, consider when the `goto unlock` is taken, then the
> >   conditional in that section compares against uninitialized memory.
>
> Indeed, this turns out to be harmless (we'll always return prev_cpu if
> we `goto unlock`) but definitely not pretty ...

if (uninitizalized_memory)
  ...

may be transformed by the optimization pipeline into something
non-harmless (likely outright removed), since reading uninitialized
memory is explicit UB.

Patch LGTM, thanks!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DG-PCe1rmEVWTxaNiWc-0v%3D5vSFkH%3DFm6FBxsRHEv08A%40mail.gmail.com.
