Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5GJ3HZAKGQE42RDNFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 494D416FF04
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 13:30:45 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id l3sf544224lfg.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 04:30:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582720244; cv=pass;
        d=google.com; s=arc-20160816;
        b=BScIXYNS7V9I9tut4l9NbjooJzIrLUasT1ZQ3Ezw/SPQurL54HgktPUyM1X8xHHY+P
         BfVc9K3YUGdM5HwfMgepbAdZFTaITVctJSlhPPkRY5oDgstqhVzoAY4G/Z049dx6Gk4f
         h1knpbJVOchNjTtGG8ico0SQ5dYcHVeMOc2gjZ+PK6/3epLoXciAGncgQu9YAvZEj8N9
         6+y9esGShbwbY465zaMwh8X+s5owPqDalUDPzsLWYlMV85XavEnbw1VmXQYPUplpWAsa
         50HOWc4gLS6Dwv/VOX2FmTEN7XnKLMsST8rOCrlrGisDjQYePL9SZz2RTiIfeN/qqnR3
         I4EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xcszPncmRFz08hXBSmUs47gM1JZEbBMIeeUSTsSruYo=;
        b=qbpXzdstXJ4ihsZFU8PesT6cN9ykKNWAmxcX59ImeJVR8Ro2WwPy7We93W/FRssP8+
         dIO1ZcpPo9fUcATVH+2K1H4DTVPObYmHKb2pWCZumep0fRsTPIjRI8dsOtiFNP9tZoI4
         9QQmGsckVZwaay0n4oIHdjolyY9Te+8fdFRrI9f0oj22oAlHgtT+UyfsVEjnYtSGpY7R
         cU8FJ4QS32O55ixaWeSDpgoTjiaLB8wYgHbq/r44TjwV6KuB1jzU42pjiGSonLIllxe9
         8oIqAyPaIXMlBpJGC4EZdScl8LfsaDs2U1Gr89NBDoHyEljTFmiKKTQuEmv0P7TJK7Hs
         AbpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VYvrhIlI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xcszPncmRFz08hXBSmUs47gM1JZEbBMIeeUSTsSruYo=;
        b=FlDXAH2EUTfGIFYv0Qipixevf97p4PCWdMuk1n4MheWH0lO6bgdUZhDC3MqiTA6bAa
         qfrVP1ztrH0bnk3CokxAi7oZyvZRNGqdARUR7bmxGtYfjuHyVP7LZt1jVcASqjxQw96x
         BHI3Vq5U4OKtbtlNWj3xdvm1Dfong6EZIak39uXPi5QmUNnQdxuWJZY1OcWSn+i/FMBu
         GV9ZRLBZTUZf3+cD2Ed18rEsjxHdPEg8z+z6Eq7+KgbbyddULyPGm9876Y64WTvteRjy
         USTgYV4o18SHeveuvE12L0vHgQzWjcrQ67Aup4OWg6pgCqqgON1EsVHKJ4l3O4j0BqXZ
         441Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcszPncmRFz08hXBSmUs47gM1JZEbBMIeeUSTsSruYo=;
        b=bp+E4TX9YqZUeETPo3D4s9B+f5Ddn3tVZEV6QVG1lNApFXTdCndUcAqeCBQ7l/x1+9
         qkcchPdc8gHN2UMxu9+naBvEhhOBMeMDTyDDypfHluwoBlFGqLpmcnmzOs5vLqcBRugj
         N1UpQkftFMTNdE3c12HyTLPqmJdPE3XFLXCufq/Fv3zfWNSYFiaBVK9gkJqkID17PEdA
         lCoLF2+oG3KK92i4woSq9fKW3z+OfNIT70a3furuqEl3qCP8f4MlEzq7fBgiSsNXJzB+
         gZC6imp/a1tMm0DUmPzWAtb/3c+p54F6pvp9Iq2T85SzLGjVs/zs31A6zWC6jQxwWUs6
         yNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcszPncmRFz08hXBSmUs47gM1JZEbBMIeeUSTsSruYo=;
        b=qN4jsqq8M4CkL6BOnXcTxnFyOiavg+o4208+wuI4SjBliaz2bqNnM3z4ew49gEKyF5
         Z8L3KFX4pDkbjxy7W2tJaqgYAvBzoc8wzJYxESxqceLOCt0fBMBCNPGDVY1GJiCnv+8d
         44D9a3PawkSJbfWJvtHk9fWt7hls/foPecJ3mjwGDYk1PzP7JRtoUQ4r6sgHUVdNEW2D
         wLCJsYcNoftKmBBm5p/7wtGYcFUQfzmhjSYihD3qDbyPrTTS13iud5xWIro0gkeilHTh
         Mm+9kM3RGNxPjF5G8iV9Vzt0EXxmaKB6ua4MosfAeLwIRnqiNrrEs0KRAS/G/n80/hS0
         GscA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5a7/DuJYTx1ztsjATDIXfR7ffOgyfjHQ6KcQWAEbB1hN1+5WL
	NE2EgkZjL7wWWAhTycsGnjI=
X-Google-Smtp-Source: APXvYqwL7g8kWOuhlDTqI5kD3w+60q4U6cROrRBfqc5w32VkkheLgu/5rNmauJGIVBYq56JC+U0wTg==
X-Received: by 2002:a2e:9256:: with SMTP id v22mr3067840ljg.45.1582720244819;
        Wed, 26 Feb 2020 04:30:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9516:: with SMTP id f22ls529192ljh.2.gmail; Wed, 26 Feb
 2020 04:30:44 -0800 (PST)
X-Received: by 2002:a05:651c:cf:: with SMTP id 15mr3042128ljr.288.1582720244101;
        Wed, 26 Feb 2020 04:30:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582720244; cv=none;
        d=google.com; s=arc-20160816;
        b=VcHUH1QJHRvTujsSZxPlet5dmzeuZqKjVuInoNAKlm4kE6++uvcFLw3HcUnBPklxkU
         CoxtQy0UVlX4RCUIpsbU+3R6OWtvNaEp+AcbzaSpVvDs4BwVGxkPlId/jwVgW7JE95BF
         6f1BN5Jd/Z9H+WRK12q6YdLa2URRjQ4hD2IxIWsjWuZf7wgtfKcWKjS/6Aq7YProZ0sF
         45MrdhjlN2KifVXRq2mVmGr326eG2KegyWzoM69Khbxsmyz3CGCr5fUAPXTc/tOX/IV0
         Gt5dbJ32BN4fle03Jv6y5ooMMF6N7tmk76NigKr5L5wfkooVqWwnOQhoiKIcRo8qXsz4
         5VRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SW3Nz/sbE0+KtIPXD7/IukM64fIQO4nr5iakHdwv+8c=;
        b=rGsvhRzasxYnSm1xdtXJfS/DFH9lfwoaR5Y1UUQ0kw0/9B63LmVgAp9SdQixX+UTiB
         dB4N1t6MB+I7kqAn5mgFMIfIbcjXjWop+sDkLw9Y+V67Hu8b59GPgZRwpLzg+dddig6N
         03R9AARD2PTL2TY2xBE+0RHoKI88dDhIWQftSuteioLE5+RcB/MJgWN3Oz6pfIm3AHQr
         AruCy63Nr55uoipUrlGAarHqApqsWcHlPYxG5G0NggUcQLYSTg6dTWh5VHL3tRoTrmNV
         AaarahfhRTioqe2uhXFQ1RB3Lf0cZJOFZS/hpBqSMNHIq0x5V4HbX0jlg9Wkw8rvp6Mz
         mbBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VYvrhIlI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id y1si141089lfy.2.2020.02.26.04.30.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 04:30:44 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id p17so2862979wma.1
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 04:30:44 -0800 (PST)
X-Received: by 2002:a7b:cc69:: with SMTP id n9mr4924083wmj.163.1582720243510;
 Wed, 26 Feb 2020 04:30:43 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <CAK7LNASNsOmyqFWYtJHB4UcHAed5C_isWvMJ4MKHu0O=yUy=8w@mail.gmail.com>
 <CAKwvOd=mPg79CrYnDm8=z0iJpKL0FHm9J5qZF0_A6BFXBv8Dow@mail.gmail.com> <CAK7LNAQ83rLAm1GcvrgJbinyAVPpM_SoxfO7RdOAfmXyg2tBdQ@mail.gmail.com>
In-Reply-To: <CAK7LNAQ83rLAm1GcvrgJbinyAVPpM_SoxfO7RdOAfmXyg2tBdQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 26 Feb 2020 13:33:13 +0100
Message-ID: <CA+icZUWSQkYD2MzEY_8U1NMY8LO5NzD0CCuZ8+cH+dBndJm=yQ@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VYvrhIlI;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
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

On Wed, Feb 26, 2020 at 1:01 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Feb 26, 2020 at 5:52 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, Feb 24, 2020 at 4:34 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Tue, Feb 25, 2020 at 2:41 AM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > Added to kbuild documentation. Provides more official info on building
> > > > kernels with Clang and LLVM than our wiki.
> > > >
> > > > Suggested-by: Kees Cook <keescook@chromium.org>
> > > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > ---
> > >
> > >
> > > Perhaps, is it better to explicitly add it to MAINTAINERS?
> > >
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -4118,6 +4118,7 @@ W:        https://clangbuiltlinux.github.io/
> > >  B:     https://github.com/ClangBuiltLinux/linux/issues
> > >  C:     irc://chat.freenode.net/clangbuiltlinux
> > >  S:     Supported
> > > +F:     Documentation/kbuild/llvm.rst
> > >  K:     \b(?i:clang|llvm)\b
> >
> > I'm happy to leave it to the maintainers of Documentation/.  Otherwise
> > we have a file for which there is no MAINTAINER, which seems
> > ambiguous.
>
> It is common that MAINTAINERS lists per-file (per-driver) maintainers.
> It does not necessarily mean a person who picks up patches.
>
> scripts/get_maintainer.pl lists maintainers that
> match any F:, N:, K: patterns.
> So, both Doc and Kbuild maintainers/ML will still be listed.
>
> Having said that, it is up to you. Either is fine with me.
> Another pattern 'K: \b(?i:clang|llvm)\b'  covers this file anyway.
>
>
> (BTW, I am also happy to see your name as the maintainer of this entry.)
>

+1 (Please drop the BTW - This was suggested in the brainstorming
session on the ClangBuiltLinux Meetup in Zurich).

I suggest to add Nathan and Kees if they are willing to be responsible
for the maintainer job.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWSQkYD2MzEY_8U1NMY8LO5NzD0CCuZ8%2BcH%2BdBndJm%3DyQ%40mail.gmail.com.
