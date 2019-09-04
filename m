Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJEIXTVQKGQEMLBFBPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id C9691A77DB
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 02:24:04 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id w15sf11543914edv.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Sep 2019 17:24:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567556644; cv=pass;
        d=google.com; s=arc-20160816;
        b=pXj3wjLqT1IXffcbjo/H5kBzC/RmqR/H87MgrldeswDAM702ERB7HL6HeyCw2yf/Oo
         XA6XVydu1D5vh04QwEoAMyzD9/WTyN+ki6yZY2vzH2N5wdWHLrUvDYFiOsKzXENoBE/S
         ENw2HGjLZl07By32tYvXZQh4Bh31F/tpVfVITBiU9TNdwZOOF0K/L8VZcEx0vmfI5lCZ
         F+dg58/7HkCTrLroLrCkyZXA657cV7NQiN900qAXprRlbxuTZJ6GJuCuOG/tH/9xcQJv
         miNKWo6LfFVpqDz7QmzmZmDslDi2aS53OPcoNJ081hMVrL8E4WOAyGu7CUXCMo5CMiud
         A8Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=QP4KOT3EhrLi3d0ooVVVsr9A2pEL/FCpKK51U4VdNUY=;
        b=aYmXaDpSUZ118YWj00Ppuj92EwXnROzllbIJn3A3flnfJARsKkmePNiiZQ2r2twPbk
         VSbMwrW5hUO86KFYHyHlbYYGuIIVaioXVNPRVH4Q7Timy16XwwKLLpz3ylBXEezkOJZJ
         TPGO2c++dFgvxWninmgVGg4wjmL71iENp9AGFLouWvfVbJXkJOegL57uqHOA5UZzks78
         knIwlvFyOxDlYtL9Berb7dUaLBmso1+IjRzKhymSPlm5t+BcRfivmRZqMEQXx8LFpEU0
         oO3R7oDOih0gLwZsrK/1tCpcMGDAkmL9mqQFJIP6YiCesEz8dBwRkS/9MRVSVitperhf
         Mqaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s823D9jM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QP4KOT3EhrLi3d0ooVVVsr9A2pEL/FCpKK51U4VdNUY=;
        b=PwKDMNbXKSNeY0vIzIF1p7oEhUZIjYUtBYdS2pigo5U+UG7RxNTs/H1pbwgnnjPZla
         57m9Tdf/UTPhINuEnEwgehFZBOpHdJ2kHtFzP1n2mDpVYXxrduVEfhPb1udl6krSCpv9
         xtcztj4FFmN5RJnw93GbvTqd9wIfGfoC8b/JFGmg26/xDU5BpPNHGcWBjalKm4oMliT0
         yLc+oK9ghdruPgpDTs5tiVvQqfdPJN20H1QtMV2UlOLMEnhsFwCldff78LJL6iIOzKXP
         tDrrR7bsh1RguBu32qQEwDrFTbQAVnvo8DsHmiWxoPCW8pJVe3JctKm7XGBVddgw+Ths
         uNTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QP4KOT3EhrLi3d0ooVVVsr9A2pEL/FCpKK51U4VdNUY=;
        b=D6WZKwNVazjtWhB6ywO8H5nb6FwsKjUMynOv2rrNhFrUsHkudwnfO9SbXrymumwtwc
         CEMDor4HLs1M8V7UDWWkMjgTDBvoRc2JGliEonE7qAFCXm5idwdCUKeHMQougdYdNel2
         35oscakn/82HsYcD2MH3g8ue7bWnxCmm1cjcY9UnwP+AQv7MALcNOneKAM126NFhkQT+
         bjVTPxR4L3JQhFseZVjL2JXykmaB8HzgkjgY3P1tdqdnsOZwCx3iMmw9IuOdlIc18DUO
         V+t9T4HepWWqtLGleOZM/IV2DS6CrdXh5fSVbWGRa1Ux1If8n639kx2CNwyFuj8VaW4Y
         MIEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QP4KOT3EhrLi3d0ooVVVsr9A2pEL/FCpKK51U4VdNUY=;
        b=Fb2RJ6J4M1dVyTUaDsG3RSmbi6aT/XJ/fY2IOK0QsRALryKOzW9SqsiQqtF2/CJRsW
         oFFu6028yiJQOpsR57kcx8uBnMRNMS6kJt9pQY3CQK4an5OpZSfwNy6oxkzrdX2ovIee
         baW6+M+8PhrVaH71TbJ3PbCmfjD4brKec8Fi5XFyFBRK3lnyOQgCHU9BiOAByF36KuBL
         8HQ0caS9ZnksgiRGDwXVeu6WBqU9lVQ/UfhuRM1Hsn1PoQEiHS6Je4RMQOVCr+A0Lexf
         BrEpY+RAH5q56UAipwxc0h/fIw/9JcO1Xdw0HLJkEsZ3N4+KExfs1na7T3tIFdjCtwzb
         +ChQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPYWi0ACS6ujxssjTw3kDeum0BI53yFdjR3DlP4FpwND2t+4+E
	c9aVhA+nkWXNhNLOHJni6h0=
X-Google-Smtp-Source: APXvYqwMLotzRZ1mBOfIW5ki81GlD6ZF5hp5WybDPYn4ilC3Mj+2vS8y/s51w9nLUIePUmaNlqm2UA==
X-Received: by 2002:a50:a4d2:: with SMTP id x18mr16709842edb.126.1567556644505;
        Tue, 03 Sep 2019 17:24:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:da85:: with SMTP id q5ls4437834eds.15.gmail; Tue, 03 Sep
 2019 17:24:04 -0700 (PDT)
X-Received: by 2002:aa7:c893:: with SMTP id p19mr39547452eds.37.1567556644085;
        Tue, 03 Sep 2019 17:24:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567556644; cv=none;
        d=google.com; s=arc-20160816;
        b=i8xQwmpQ/EZJSyhLfnS+/0fMRy2sUojPcIlzpPILtdZKPbkLUbho92kNNkaZBUVaEz
         +TtlZS83GFVi8OSxdztiLDRvTWE43VHd97pX1LTsDabfwjWN1xFcTSKiXaDV0p01VFba
         epJcdaAg/WX1ODQeIkXv9eNDHOkFlD9trugocOE1u+zzg/tLtiJRGeJlwm03vsCTshmP
         bH6gdvxooaZtqi9nfrGuzM3rInZf6o1J89ys8OV5Rq52nCM8SlIJee30j3ZhKyHGKVdV
         mbuF/XTUDZ84gnCPEzZB/mmjPTBlCWIDx+6Y9qj1berJ/ieP/h/9JtfeRozQPQ3aB373
         9HXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+kGji0iEqvX2PbYbdW45C9GxA697L85/6dAAQKl+YqI=;
        b=jxzRlwriSQKe29pAz3Mp457N/Ob2oxkT4VoC/p8h9NZ/Vz/EUigZu8k4O4M1B4w8JH
         QIGEiPlgOpQia0sb6MZSaUnpctI7NsU48nshrng3Z0h9QOf/2nM00MTlZLTWGbea6BaC
         c1o/2iKZtdOU17lPjvI5Jidx965lyRpr1RMQk9LMD+Aq/yr9IOfzPlG8vZUiv6DFKUd6
         GllKcXTSGmRo24XXS5M/TaEq/nrY1wA9FFQMu9YOMq5InTHEx3d7abjYI3JIy9vk1onM
         5p4qnjo7SqilkWZUInPvVI9Uz0C7CA6ekaZLyZ+rXC/HhKYX2gw+rWC22JDuWIVuLw+1
         agKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s823D9jM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z31si624665edc.2.2019.09.03.17.24.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2019 17:24:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id r195so1456838wme.2
        for <clang-built-linux@googlegroups.com>; Tue, 03 Sep 2019 17:24:04 -0700 (PDT)
X-Received: by 2002:a1c:4c06:: with SMTP id z6mr1965649wmf.47.1567556643727;
        Tue, 03 Sep 2019 17:24:03 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id b26sm1242242wmj.14.2019.09.03.17.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2019 17:24:03 -0700 (PDT)
Date: Tue, 3 Sep 2019 17:24:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: David Laight <David.Laight@aculab.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190904002401.GA70635@archlinux-threadripper>
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <878srdv206.fsf@mpe.ellerman.id.au>
 <20190828175322.GA121833@archlinux-threadripper>
 <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
 <20190828184529.GC127646@archlinux-threadripper>
 <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com>
 <20190903055553.GC60296@archlinux-threadripper>
 <20190903193128.GC9749@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190903193128.GC9749@gate.crashing.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s823D9jM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 03, 2019 at 02:31:28PM -0500, Segher Boessenkool wrote:
> On Mon, Sep 02, 2019 at 10:55:53PM -0700, Nathan Chancellor wrote:
> > On Thu, Aug 29, 2019 at 09:59:48AM +0000, David Laight wrote:
> > > From: Nathan Chancellor
> > > > Sent: 28 August 2019 19:45
> > > ...
> > > > However, I think that -fno-builtin-* would be appropriate here because
> > > > we are providing our own setjmp implementation, meaning clang should not
> > > > be trying to do anything with the builtin implementation like building a
> > > > declaration for it.
> > > 
> > > Isn't implementing setjmp impossible unless you tell the compiler that
> > > you function is 'setjmp-like' ?
> > 
> > No idea, PowerPC is the only architecture that does such a thing.
> 
> Since setjmp can return more than once, yes, exciting things can happen
> if you do not tell the compiler about this.
> 
> 
> Segher
> 

Fair enough so I guess we are back to just outright disabling the
warning.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904002401.GA70635%40archlinux-threadripper.
