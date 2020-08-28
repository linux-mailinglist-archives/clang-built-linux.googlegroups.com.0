Return-Path: <clang-built-linux+bncBDOIB4GOWANRB2NMUH5AKGQE3V327FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id CF525255205
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 02:57:14 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id v197sf2149580vsv.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 17:57:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598576233; cv=pass;
        d=google.com; s=arc-20160816;
        b=oySeaWN2K2YhVdSd85H5yMtMlt1wWXLxjqbUg3hp1LZXFuch4MGByL5QNt74OoSnP6
         p1y8/QHOJWh+EUjzgLY72gF7w+wLlkq4/DmQePqZ4Ne3N8HedfMBwutogOXQftP8/Qdb
         7ZttRIhitEVsoOmyjPLNCnaeZ0X2mW21cLhboe+qUfkbVQNLy1DzSX9swN7H//8bdhi+
         cweDoxCC1kvmOyRqVudpOWedAq31ZNpKkNK9gMPhgt4EvNRMfNwq/yxj8HQI3UZ/xuqB
         2iohXlTCIhdTy16cWCZWaRG1qm4hSA0vZ+lcb5VjsKPMMoDfwA1Rq7wZPQWpkSttq17D
         C/5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Vgs621t17dzEnTIIrZHNdiW9nsyhXTJyQiea5RrKt8I=;
        b=GUfY5NUCivUDjtmRETnv+rild+ygaKKhrqyLR3WTe/wH8X+NCWk7666hv15XdyXRgt
         R/BULUvsuQKleMmG6yhoJY2+V6wC9LEu74cSA9NMGll4RHoX6YtPxzzMJ0x1nKfCYVRc
         Gj7F7ykhUiOLhKR2DPycWKzPCRB5BtBBoL57HfDlFdvAqDMW9Hj5kA+vC5Pid35cD5Tw
         PSamNdjlOnfFbRNO3n+VvOYAz8SxiYuRGF3IUxxiidoEcEss/OQ+4t1uycuL9J7KNfQl
         IT6dapzcnEDRiY4c5Tcy1jK2Udd3MzcMCgrV2jPoVp5aax+ZoUusG53MK/0z/SnZjnZV
         U3xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KX2qV3Fi;
       spf=pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=amodra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vgs621t17dzEnTIIrZHNdiW9nsyhXTJyQiea5RrKt8I=;
        b=eq0iIX42cNwhDPQRhmka2W2YNsHsQdaip8atYskdeFXL9xgJQeG6AmV0+/53pz8Crr
         HpCOi3nJuNYr3+NIwVTviIQIUzCdYwvAhNMxzEfaVSBdllW7EL2iOhx9xDBYtNyZ2b3q
         TCmakM00/zGmLtnPcL0iFvGwapHsu5WhcF6qLrkWxsyCmQeV3gVcz5fMDJAKoVZGAn99
         1I26OKrGF0ARml75BxANig4bjLKDzDDPGzxBcmMaj8DfIr9hhu+8dzYenNmD6YC4o5Yb
         RBOGV1Vg9dmsYol2RTIGqCGpGGheHLKkp4T591Ioh3e/WBvsO2BgC/m2aN9W+fphMTFd
         nAsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vgs621t17dzEnTIIrZHNdiW9nsyhXTJyQiea5RrKt8I=;
        b=hl1UlGD9mIHB9sdHFnWtRs8YSYY8yC8hrGeB/T2SiS0nfWeo/wUdoXzrQ9cm1B1xhD
         zTofUN3A+HN/RLsXz/Ko/p5TIpLwHl0a8dZ/RABYxCrZkEewh3y0UW1eHT8YCKXw9YTo
         UZd30Ac1onnRlg3tKoUiwXANS4SDSlcB8KrrNcqnEU1lYDqSxadAJxrOfK6lW2TL+0vA
         2edBAe1FVTAN5zzDh//U/kQGG1rlG+g7ngNcvuTUxx805inADrnzxqqlu378CrYbm4nC
         lq95wqK4LkvgLxKJMSL+wpgMc1VJfrSvwMXZ/5AH4F0UpFvK06eXo9HvDgtEeqUvKYVP
         b+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vgs621t17dzEnTIIrZHNdiW9nsyhXTJyQiea5RrKt8I=;
        b=nRbW4yzXFbcNubN/QF8SdwUHTIn7PZB8H9LXvwAIPwFuDHrtsPzskGVwuPhTyZi7qR
         P0kuW2+NN/XTrO9yivSeQ4rpxPzPs4aT8c5W7+l4fE/LbuXWhEUscLDXvHRvJ6klukrm
         GwCMJ9a0WvnC9BYMXFwell5eMxoWZGp58kg1m5jnZ/NXIXyOKKkotWyj2ejwSahjrrwX
         Yj/TSqE8+xdLc/scBrDiXwcVmGA47+rSZQfBOJ5qBN43VVgXjtTvh5ULjvGCj1c9Ggjk
         lDgpeFE4t8Fw3nsYRzs9lNJxX94moPRQOShdVQcpSyzQBTaYK5CylcI5PFpunMRSrnGR
         eA2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OPzk00cNO/Q0PSpRdnE+vHCYBJ6IksCfOONv7m9l3ECRBRHJa
	m2FxSOy0GXnAQBX09jOVkZA=
X-Google-Smtp-Source: ABdhPJwYbhdgS40ZrXEDcZ4BSokJX0dics761R/gJPIjVbMCuzIahK3xL3a4e+IgjBtpQ9NqMkG2wg==
X-Received: by 2002:ab0:2104:: with SMTP id d4mr13852696ual.123.1598576233655;
        Thu, 27 Aug 2020 17:57:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:372:: with SMTP id f18ls532217vsa.2.gmail; Thu, 27
 Aug 2020 17:57:13 -0700 (PDT)
X-Received: by 2002:a05:6102:214c:: with SMTP id h12mr14706246vsg.218.1598576233317;
        Thu, 27 Aug 2020 17:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598576233; cv=none;
        d=google.com; s=arc-20160816;
        b=KJpVSDzjwdqfH5UMGubOu87EUx/Gn5ziN8FAp6jc2hrX5DtokgbxWcQCF7Lb+phArC
         LBXI6lbc8Rs1UW4MyE0AA6dSi/V3OlXb2b3hxnsJ1oHh3nyOXdkkTr39Kp7wlDLH+0RD
         JPdGkTHOTLR2pyqHdob+IoUhJ2nwapZO9D/2fRdGonNbBWP55rING+EURoknPtj3uiYy
         VoGTkicQUnsqG8gk3nKd0HvCxyc3MV5/PiFQYbmhjmzG7ESK9yFrz6I3HkIXaF8CCoPA
         9K8MSnw6LiDnQwWUBcMA5RouGqi0c31LM/j9oUmzOQONjc7pWlFhcVGZcewdYL9e2h6s
         LdIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XizSGIPr/98b35ji0Sh31vJC2NQb8ny2sbqR8XtZ+iU=;
        b=QwNTecRCd2O4icZaFYpcrdPl45SnrJ72YddCTccZYrmw9zIuMFTgAcXvB9k4FRFMmS
         kb0h++NE9kNDyk3i6o+/7ycUpIEbC2QYDx6iVvO2ijXGE3fIV9LszXK2jfhDVxj55Xr4
         CEMwrqhne8xah3GKdMXSNJra+EXCoDNnGXQio0TTx7CNeP96mu0NxTO30K7SHwF7qvRu
         8BcT7dqasJbOtkkYJUhPH3d5nfjdq8jfxXKzJjwFPkWrtxQe/lGkxvmVX5LpURdS/isQ
         kVI0aqAXLfi75F1Ye8NFMSzYxjLg9mibzX3BqfBWcapLsDFSTjd1791E4nLSXMj6F7W2
         cRYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KX2qV3Fi;
       spf=pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=amodra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a84si149350vka.4.2020.08.27.17.57.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 17:57:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 17so4846930pfw.9
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 17:57:13 -0700 (PDT)
X-Received: by 2002:a62:4dc4:: with SMTP id a187mr18441732pfb.265.1598576232484;
        Thu, 27 Aug 2020 17:57:12 -0700 (PDT)
Received: from bubble.grove.modra.org ([2406:3400:51d:8cc0:1cc2:f8ff:3647:bc1f])
        by smtp.gmail.com with ESMTPSA id lj3sm3487332pjb.26.2020.08.27.17.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 17:57:11 -0700 (PDT)
Received: by bubble.grove.modra.org (Postfix, from userid 1000)
	id A8BF6807B5; Fri, 28 Aug 2020 10:27:07 +0930 (ACST)
Date: Fri, 28 Aug 2020 10:27:07 +0930
From: Alan Modra <amodra@gmail.com>
To: Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, Kees Cook <keescook@chromium.org>,
	kernel test robot <lkp@intel.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <nick.desaulniers@gmail.com>
Subject: Re: [linuxppc:next-test 70/80] /usr/bin/powerpc64-linux-gnu-ld:
 warning: discarding dynamic section .rela.opd
Message-ID: <20200828005707.GE15695@bubble.grove.modra.org>
References: <202008270909.Z8PiAoi5%lkp@intel.com>
 <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
 <CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw@mail.gmail.com>
 <OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585D1.00581868@notes.na.collabserv.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585D1.00581868@notes.na.collabserv.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: amodra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KX2qV3Fi;       spf=pass
 (google.com: domain of amodra@gmail.com designates 2607:f8b0:4864:20::441 as
 permitted sender) smtp.mailfrom=amodra@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 27, 2020 at 06:02:14PM +0200, Ulrich Weigand wrote:
> Nick Desaulniers <ndesaulniers@google.com> wrote on 27.08.2020 14:52:36:
> 
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > >>> /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic
> > section .rela.opd
> > > >
> > >
> > > We have /DISCARD/ *(.rela*) in the VDSO linker scripts.
> > >
> > > What is going on here with clang ?
> >
> > Looks like .rela.opd was maybe synthesized.  cc Dr. Weigand, whos name
> > shows up on llvm/test/MC/PowerPC/ppc64-relocs-01.s, which is the only
> > hit I get in the codebase of `opd` (at least for tests, still looking
> > to see if ".opd" gets appended somewhere.
> 
> Well, this is the old ELFv1 ABI for big-endian PowerPC, which uses
> function descriptors, which reside in the .opd section.  These are
> emitted by LLVM in the PPCLinuxAsmPrinter::emitFunctionEntryLabel
> section, and they usually do require relocations since the function
> descriptor contains the address of the function text (however those
> relocations should be resolved during final link).  I don't think
> there should be much difference between GCC and LLVM in how those
> are handled.

.opd can only be resolved at link time when creating fixed position
executables.  .opd does need dynamic relocs in PIEs or shared
libraries.

Kernel VDSO is rather special though, and I'm not up to speed with
whatever hackery the kernel folk use to create it and/or relocate it
when the kernel is relocated.  Quite possibly the warning should just
be ignored.

-- 
Alan Modra
Australia Development Lab, IBM

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200828005707.GE15695%40bubble.grove.modra.org.
