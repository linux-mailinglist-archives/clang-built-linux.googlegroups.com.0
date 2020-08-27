Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAHFT35AKGQEG2RR2ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id B286F2545C5
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 15:17:53 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id a130sf4771561qkg.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 06:17:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598534272; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mv11AKhtxYi2SY7HhPR2Es1DWUCBwPIzsehTaY90HTpIuB1WKhlQ926CZDK7S4c22E
         OmvCK1YG53HasdVFpH18MqQCubTlLrbnVrMy/HxxK8MIY/+KORQ1hXDalC8Ch1QwNNpI
         ni4nEnV7Mx7AVD5hemgoizztbqVZAdOm1R7szw4raKWrp+j5HqwRxJOsqlRoxTmxYw3V
         67/Ka0CMIV1sGgq7DbB/nR7XqQ8LirIiGE5M2b7KAjz+jRO8Z01vIAs3PdHxkePxOYTv
         bPxistXpMx5Xf74I3WYGYl+88qvcHMp4FE4ILJnqLhmX/oG1sOuCCtpwWjDtYC9j0/8w
         G1Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GN4iRz4Hmwyz8zMzGdkE486oqgrJ5El2Z1Dltrf08Rk=;
        b=Xyr4Mg8bM4Kv1qiKpc3KVPpiuxY5/A/U3xJipQxp3OMr3ULf1vvChV7neaR6S/ueAv
         SvKd63gXvWWskCXG8sCISLwo7vYNXt5MAdAuDiCWyKUg+SQOpEblJy43F0kaGHe0qcUw
         9lRpee+Nr/xNk16NmQ5aufacTF2E2f5ckEZGGh54pAVwMCV65XM7a8M1fGfNqZg/nE9x
         5C7yNoXQvy8hQFCSUR3aqNp+OWUAdIvW8Wu8fRTc1TI4XglhHfSHiSH2eUHJhxMgolOb
         nnhftLlgBykusdV8BNTo4GAxA9Or3A0keImVVdJdZweyM2mppsBKL/ZXKdVQvB+cDEUW
         asKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OiouzogQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GN4iRz4Hmwyz8zMzGdkE486oqgrJ5El2Z1Dltrf08Rk=;
        b=MpS972HKtr03U9VOG5xcHt86vIQZGuRzY8RoCbszBpA4JOYg2gf6XudnDKxxNbXL1x
         lQ25hH1yKrSCV6PQrZinx/caH/BW6bMQ+a04X+LS+LrflD2kKVfuWoOJalUW/aEkHKPh
         r/LdQnb5XeHoOhjTfhp4k7KEkkIpvlYdKOuDMlDd11gy34m+WodYJXvGoOo9InBJvCL/
         tgkTvejt/WPBfylS7yFZyXHmvLCqX20BHmKKPv00hZ6u3/aZvzebw3l1WD9+Jj/jRNMQ
         o/Va+8zIKM9Zef4ZlrjEM0VfPPPS4xeV4MXdilOAKPaPIcj9C4WocM4yT++RQRnyPFh3
         4bTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GN4iRz4Hmwyz8zMzGdkE486oqgrJ5El2Z1Dltrf08Rk=;
        b=il0QOZfRqesCGRmJWjQ4779FmeLoyrHJS4jmERAIwW/JUNwo/WSwZ2YRPpfMnJkeAk
         Ozg4eViWCq6C+NNGlqAVyEv/Uj++YtLStKrCKPj24lTL7QwcuZJnO9csplAy0tQHfjXU
         GyVxg43+sRx9z8GLwPz6aVhmDTWd5S0Ubh5pEEsaR5LT9LykwX4+yOVOR/vuViuEmGwq
         ijK+QxNw9b3Wz7h2FhuKUuotCltz7nuc8RilYSMygIMfzm3TPeynioPVOD2Pukb88s+4
         KoNhPrYXSvf+Epv3+xhH83MVNyhRfOzu1TeTEQjO6aF8hwvlraD/zTWnCOQQ9x0+CS96
         jkiw==
X-Gm-Message-State: AOAM532EXC/KEoHpWeW8f5AYW5unYrA3iahyFhNhjZLKoMS54bjSZNP5
	k66cefIt3PtkrhSGjbcNKMg=
X-Google-Smtp-Source: ABdhPJymiYl06cAODhq0wxOpmZWdVKyiwMclCBaCbjfXtOPb0vBg+r6qAKfiI6s7M8EC8UA/h9odMQ==
X-Received: by 2002:a37:7407:: with SMTP id p7mr19019844qkc.350.1598534272810;
        Thu, 27 Aug 2020 06:17:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:371d:: with SMTP id o29ls787198qtb.6.gmail; Thu, 27 Aug
 2020 06:17:52 -0700 (PDT)
X-Received: by 2002:ac8:3876:: with SMTP id r51mr7949153qtb.181.1598534272520;
        Thu, 27 Aug 2020 06:17:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598534272; cv=none;
        d=google.com; s=arc-20160816;
        b=WLf6vHEshtcOa377TVaI3p1S9r8xHu/Fx+cdvuwKWLo5ep1KFgFH1GSXaEuXBbjTU8
         ClY/OpOcpYLDRKV5mMrzciZpIZTSM8EigmLROH1UYdeejv/AvesAVtZiHwNNbjNJHcb5
         +JC2VMkbDpOqfnMYPh8ODcaXResRibu0sWVQ3Pzh7fTD546nqTA6BdN60B6peOpSK9Xk
         rpy+j0u2N8co3LQbjDCIofgRSLxzF/D3o6UqMYNWKvrDGIASPNouJBwnPeKWT+JpQELQ
         DyKHtJfJ8k5coTKtbif+cjWklirHuV390x/oJz7o95NqMMGwbPivRa4jwnCgMS7SjhtT
         Q6DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c0KluA52RvojzuXky2pMyMPxz74qtuJVJ34/XF84Oi8=;
        b=ajOglQt643sPF/cQ9qNCWq11xLURZxie+4UVSA/5Uf/zh+G59wbRf9iaSe7ocHUPv/
         /QjeQJRcwYzUgmMGq303RYFmG2KWIEGOpLWJRS4yLBKxzBsBLhdXgP6w5JexEbs041hE
         2W4iiD34YrK44OtoSusx3UF9b19WjwMxc2fSyaGssYCqxsb6i9YLXVlbB0L1tYReC1IF
         pyBbQMkq3kQKyPMTfv6huDl8/fv/h44tYhBKWsRya5U1rBckDkGNE/CYr90aIOPYozN1
         Ou/Onq0Zp4GM6hDbTJGG55aqRtfL5MVzxwcgtFEulITgEIuOjpUpTdK+2aJ5er9sZG0M
         rKHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OiouzogQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id a189si111284qke.3.2020.08.27.06.17.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 06:17:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id y206so3470231pfb.10
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 06:17:52 -0700 (PDT)
X-Received: by 2002:a62:1514:: with SMTP id 20mr3697327pfv.62.1598534271846;
 Thu, 27 Aug 2020 06:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmKTzO6WOgPX5Y9Cn5Nj_6jW6YbEWnYUaJTKtHW-GRdJg@mail.gmail.com>
 <CAKwvOdk7OKrA1CqYju9iMUQaYQxmPB5Hk+r0424b75aqzAPS-g@mail.gmail.com> <CAKwvOdkEuGhi0fZUYKE6JdCK5Wa=aM=EXwybjK864sA1Lrd11A@mail.gmail.com>
In-Reply-To: <CAKwvOdkEuGhi0fZUYKE6JdCK5Wa=aM=EXwybjK864sA1Lrd11A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Aug 2020 06:17:40 -0700
Message-ID: <CAKwvOdnOq7nV3=8iWThsTsWTxskaoAoV4QUybAL4C7Y6bB8u0A@mail.gmail.com>
Subject: Re: LLVM BoF tomorrow (Monday) - LLVM MC (Thursday)
To: Nathan Chancellor <natechancellor@gmail.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Bill Wendling <morbo@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Mathieu Acher <mathieu.acher@irisa.fr>, 
	Dan Rue <dan.rue@linaro.org>, Will Deacon <will@kernel.org>, 
	Geoffrey Thomas <geofft@ldpreload.com>
Cc: Behan Webster <behanw@converseincode.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Triplett <josh@joshtriplett.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, John Baublitz <jbaublit@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OiouzogQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436
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

The room is now open if anyone wanted to test their setup:
https://bbb4.2020.linuxplumbersconf.org/ (linked from
https://meet.2020.linuxplumbersconf.org/), otherwise the live stream
is up and will start in ~45 minutes:
https://www.youtube.com/watch?v=FFjV9f_Ub9o.

On Wed, Aug 26, 2020 at 9:10 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Slides look great folks! Thanks for uploading them all.  I'm going to
> download them early tomorrow morning from the pages linked from
> https://linuxplumbersconf.org/event/7/sessions/84/#20200827.  Please,
> no more edits if you can.  I plan on posting them in a github similar
> to what we did for our February meetup
> (https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides), too.
>
> The room will open one hour before the talk; I cannot provide a link
> until the room is open, but it will be linked from:
> https://meet.2020.linuxplumbersconf.org/.  Do yourselves a favor and
> bookmark, pin, or open that link now, and verify you're signed in with
> your confirmation number.  You should also jump in a hack room ("LPC
> 2020 hackrooms" in the top left of the meet link above) and test
> joining with mic, and webcam setup.  I plan to be in the virtual room
> as soon as it opens; joining sooner will give you time to test your
> setup once more.
>
> A lot of folks are hitting issues with connecting via microphone.  You
> should use headphones / discrete mic if you have one.  The simple
> usb-c headset that came with my phone works better than my laptop's
> mic.  Further, networking issues are common related to the use of vpns
> and proxies.  You should not wait to test your connection until right
> when the talk you're interested in is starting.  For me, I experienced
> a couple issues and found a browser reboot, or even machine reboot was
> necessary to connect.  If you need help connecting, join #helpdesk in
> https://chat.2020.linuxplumbersconf.org/channel/llvm-mc.  I will be
> focused moderating and won't be providing tech support; the only
> advice I have is exactly what's in this email.
>
> My wife made nice little cards for 5, 3, and 1 minutes warnings, which
> I will hold up on video throughout the talk.  We have some talks that
> are back to back.  The next speaker should be dialing in with mic and
> video enabled.  I'll make sure that slides are available.  Behan or I
> will grant the next speaker "presenter" powers to control their
> slides.  At the 1 minute warning, please wrap up your talk out of
> respect for the next speaker. I will be cutting off speakers should
> they push the 1 minute warning, future apologies.  If there's lots of
> questions, it may be worthwhile for speakers to suggest jumping in a
> hackroom later or Friday.
>
> Thank you all for all of the work that went into our MC; I think we
> have a great schedule of interesting topics and am proud of you all.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnOq7nV3%3D8iWThsTsWTxskaoAoV4QUybAL4C7Y6bB8u0A%40mail.gmail.com.
