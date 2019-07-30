Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBYMWQLVAKGQE2FRJ32A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC417B1DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 20:24:34 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id x19sf41111032pgx.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 11:24:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564511073; cv=pass;
        d=google.com; s=arc-20160816;
        b=l4nH/lVCVfMEcc2G23oZl18yGdyWUHnNGc4EDKLbF+cf6UXmu7MWjAEKdPWmA6+yYi
         L5e60kyuriPoO30MA8f99/b9aBhHHhfz/oCB7RcklXGBPAZoN59A5N1eNZQfcmhYL3Ps
         TgQgoGjppEmEohArI9SZos6/VnXDz+CMJN5XPLc+blAqHfX3/XS788yQNtA/UEz65/Ea
         n1CZ+ZSSZ2qTIUKdsh5AaWNiC2inqlkz/JJDWmRHZ9rfPzUcqkwSfkszWM0jlajljpXG
         W26hKHx6Zyi/V4BD4ishfXSmORmvA90maD7nif347QQwg1Eh5Hp58NTKbmt4jSDSdL6u
         yI4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JVwqZlYRFOUiJJuydYmkRnRYXNmZzKB7s6vlmx8ALYE=;
        b=MFzPqmRkV53f+E/LMSedKeoXt2G/lg/ZVtJOOzFVUqu4lIJdQaL+vVeHlXgdra7KPT
         LJMXhWqJIYOdjRIOmclnPIh+CIy6LrhhmzjkUaeFCmR4muoMIEbYWug9zGs41RoXaTMA
         dJZyRaNDmZ6s1GQ88F11wKRCioxn4WXiq2MGHZ+0wHXGixvuWAEernfKRvyJaTR6z4i5
         QnARMBkBbhxzrpBqoPc2dvIad/D+l5NJmWlaC4HkigKUOuz+y/8Uzc/+T4erOM30WhLI
         Bh5EEaipTv6bGj1BGUpdH0JNNKYn7Kys53nDnSGW9eqxuvKyoggIbD2aE72aeS5oeley
         jQAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JVwqZlYRFOUiJJuydYmkRnRYXNmZzKB7s6vlmx8ALYE=;
        b=jHc+bRnyCiTZMlKwU02G+MVWqLWaULjGyctRx443DbrqGDLNET993b5VXR4XgCqnsu
         N28YEZbfSWAl5/iY7tJvKjskX1eIVSgFDXPMXtZorXVgU8Oh3C+fSTm6HF+REEbTI0LE
         OZzCW+ipOlWQ3o0pQU1mefYbDIN2EihzU+5SDLU+A3q9g1zeNEi8LsdSAbFBY48QI62m
         yodHWj5403X9ZNFqnyrh7xvXnQPWxV632I2c/a4TRHkhWddtLCc7CkI/iSsKYKvUUNXT
         jc+LPy9A/ZJouUuDUwnWuaZww92dtrAQUS//AvThJOZ/LvW0uHjyjZ3NSUlHgqEDOzE1
         DUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JVwqZlYRFOUiJJuydYmkRnRYXNmZzKB7s6vlmx8ALYE=;
        b=JoTt7ZHjRcUp6rqA5PpHmDmTVubsu2nyYv7GZvhHQnW6ovGf1wefV8H4CiBjr62piX
         Y6XNRxflPgFWHpMK5w+Tq4QWu+3PgKpvxqye+gNgwdcYC4Y1vxh4pC1KG5zpHvlE/qbP
         8SJbZdYpKlD712UHfGEWGp29ewdnuoqw4QnRXnfcdJhsJEIiiY/LJ/FTkMWDO0lYVyMQ
         ILPh+byD+Xwc3HMtLr03ZXGDnaktvEhoeVfHvhIK1eG+C1BJvz16hMXr4A/t0rDPrX/M
         miQZ6gqEzADllbZKqJgVW0CxKsMWy+pReO03MBzMvg5s+3ft75HLbxC3NyaWul4Mdq97
         rqdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXbVnATg8Ln32FEH3l6K6VmT5yNIsaOWezzVwCerNWT9LD7+RgR
	xC5MjakNtAI8AHisJz4gGPQ=
X-Google-Smtp-Source: APXvYqzb2LyHU1wWczAI0dhpzwCoopmH/1x1NmRixzmggGktrG5FQB3Vz/tLYv0/899w9sqt3/BoLQ==
X-Received: by 2002:a17:902:aa8a:: with SMTP id d10mr118883925plr.154.1564511073446;
        Tue, 30 Jul 2019 11:24:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3662:: with SMTP id s89ls22546921pjb.1.canary-gmail;
 Tue, 30 Jul 2019 11:24:33 -0700 (PDT)
X-Received: by 2002:a17:90a:9f0b:: with SMTP id n11mr79027008pjp.98.1564511073026;
        Tue, 30 Jul 2019 11:24:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564511073; cv=none;
        d=google.com; s=arc-20160816;
        b=Gl3dki/pq5nMboJudSEY1P9CMMVOAtTYJmjPQMK2gCpPS2Bb8s5fTIWEDEki/2clJA
         WgKZxwI0qOfcNrltv1wscFcj4medb+dfmxCXP/KPa79eWySDBrRAbem7fl8/QGx3liBu
         wkwEUX8QpG680IVymp9Ln1haAmcM0oZh1Yr4eeCDHDVn0NGSpINb0+Xtd12iAC903tJI
         Sf6AvfeX5bimW68HS4GJn4oFPuN3sHXuVr+4c7bqmoKGuw4+PFUUNMXBrEYs0D/g9/AQ
         Pzn3YpYJbrchmTinq08m8vjPisWwYdCh5B1HdFseuMMeIV6/VN11W2A8AXNy0Me/Qs4L
         AwTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ELs8WXXvt2Nkvxci62TT76ZUPbF4S3pMgT3/gsD16Yg=;
        b=IEcZEYGamm/tpSTV5FQhWs0pcXCmUv5xTf3abGDKz2ukF9fyF1rtMD3udaeACOcguB
         B3hd8eb1dZ1+6Gl6K+LPB4SrN3tbF9w9nCXQ6TJP0IE3hqoAH8o9b4di93PdsGbzdVaK
         cLHUkgXecLwDRPHyp65hQAnh0mBcC+IvGl3cqE0BVEL28PFh27pRJ2H2DjwKndl8JUb2
         Tj1ub0aGC28o7E3VPLXEA5UQxvCwhijtWB2FEaenuxWUc0CG9Y8irE7N655WbAn2XtGZ
         VKSFOLNzlXsSJjvJWnqd7lIU1CwMm/cmlgJqufNmxYfXELXMP++modaetu117DYj9caU
         ernw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id b12si1685208pfd.4.2019.07.30.11.24.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 11:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id w190so47285306qkc.6
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 11:24:32 -0700 (PDT)
X-Received: by 2002:a37:ad12:: with SMTP id f18mr32660393qkm.3.1564511071739;
 Tue, 30 Jul 2019 11:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190729202542.205309-1-ndesaulniers@google.com>
 <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org>
 <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com>
 <20190730134856.GO31406@gate.crashing.org> <CAK8P3a2755_6xq453C2AePLW8BeQk_Jg=HfjB_F-zyVMnQDfdg@mail.gmail.com>
 <20190730161637.GP31406@gate.crashing.org>
In-Reply-To: <20190730161637.GP31406@gate.crashing.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 30 Jul 2019 20:24:14 +0200
Message-ID: <CAK8P3a0_ovcX9tOo1UQ3_1UmM=+A2X=yErw27i2pHOj4XD40-A@mail.gmail.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, christophe leroy <christophe.leroy@c-s.fr>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Jul 30, 2019 at 6:16 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Tue, Jul 30, 2019 at 04:30:29PM +0200, Arnd Bergmann wrote:
> > On Tue, Jul 30, 2019 at 3:49 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > >
> > > On Tue, Jul 30, 2019 at 09:34:28AM +0200, Arnd Bergmann wrote:
> > > > Upon a second look, I think the issue is that the "Z" is an input argument
> > > > when it should be an output. clang decides that it can make a copy of the
> > > > input and pass that into the inline asm. This is not the most efficient
> > > > way, but it seems entirely correct according to the constraints.
> > >
> > > Most dcb* (and all icb*) do not change the memory pointed to.  The
> > > memory is an input here, logically as well, and that is obvious.
> >
> > Ah, right. I had only thought of dcbz here, but you are right that using
> > an output makes little sense for the others.
> >
> > readl() is another example where powerpc currently uses "Z" for an
> > input, which illustrates this even better.
>
> in_le32 and friends?  Yeah, huh.  If LLVM copies that to the stack as
> well, its (not byte reversing) read will be atomic just fine, so things
> will still work correctly.

byteorder is fine, the problem I was thinking of is when moving the load/store
instructions around the barriers that synchronize with DMA, or turning
them into different-size accesses. Changing two consecutive 16-bit mmio reads
into an unaligned 32-bit read will rarely have the intended effect ;-)

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0_ovcX9tOo1UQ3_1UmM%3D%2BA2X%3DyErw27i2pHOj4XD40-A%40mail.gmail.com.
