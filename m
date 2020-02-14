Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB6QTPZAKGQEIKFUNVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F0915F507
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 19:33:45 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id bd7sf5664432plb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 10:33:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581705223; cv=pass;
        d=google.com; s=arc-20160816;
        b=yP0xl6yf9UoGrUx5cKUImszGqeVt7VbZL9UjCkgJn2QVIoBm+BzE9qM7vY8yrZbXY6
         A8CJkGOvUktdvhvjSSBdlhxkR+yPbni5i7b7hD/PlhdeoWxGx/o988alQs7QOLBjMUMf
         IHNI49ahPJ7UFUl8ycxaYYjsKEBhN+i7JwABH8hjBFDcS8y59SWJ2FIDD4VGRdJndCY1
         DknN1Q+UM/T6MBEghIz6C/n6hS46d3pcj9QDFHOiqNSRTQxLYLXzSz6oQPyhhOtFHm/+
         lIMG7Hi6qWuqqwb26zQPi6osbOvcUtNf/V2Ci9faTeVMFYVtrr6j4+SDIBZ23MR1sIsd
         HXXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZiLBtV4Zybj1nV0p3kN8K0XI1m/PJOmQiZXj/3+cEDw=;
        b=BawIySnJpCYJWz9b2O8PHneqLP2yQonthon17lFavO4YIteJ+Y4jXsaT8X91Qg32My
         J56fj+l7N/5pVBIK7o2R3AiipmTm9evSRws60fjqjJQ+YuTEjxu9bTD09UY1Zan4E28K
         6EaFNWOu3AabcvTfTykJWj+q7i/Q4spCspPq5J7y/UrzHbQinY2b+jG/DS0RXtsVg2wD
         ZR/weU/bvBPBCpVdyYLWBC+Iw0Nd4eFKfAf7lBjsnwd7+b53P5T9Ytj3azSr2H0MK/wn
         pmzaKgdTNZExd/DZK3+hj1k0GhSoyPVNsj/BSXdugvf+uGFQXwj6Geo/EUyXQTdWPETs
         eRUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a4L9XUaT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiLBtV4Zybj1nV0p3kN8K0XI1m/PJOmQiZXj/3+cEDw=;
        b=TVJ1XX8HmIF+B5ewiCRFJRK4ONLnrePYMBpNVhovr/6L4HM6dwjAS09o2Sf2Syxfcb
         4kNYgzlMeQekRZ6gbAj8/YD+gt2C6rQou/yrPQ/7Ioj7vg/l8NJ2J8SQP0m5fJoyOe2E
         ntEBuG2RRk5VmDKUxu8uCpX5ZMHs4jSSAD5prJU5sAmWntXAIIb033//Hzb2tG3954DV
         A1qLRwHuf7AQgF0cxEu0p6117VxgGaLSUo7br1DY0er/mX20/xs0EA80+IaOPj/8CGrw
         yabuvrpucdn6rk+P6P4KH0ng9XmaAC9Qxexo5VXTMtfRltSmqMVB32OShKnfIXRMN15l
         /vQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiLBtV4Zybj1nV0p3kN8K0XI1m/PJOmQiZXj/3+cEDw=;
        b=p9jtGLZ9qM7As6si4MD5rdK9JIoAOk3ln4udyPrDlUYzy1Q3qVgTPsbv5fLbFdDrG3
         sPM5jHzI4IBWb+gY/ElJYWZ+PkWyracYCybPCtf+N01/obV76Z8Gb3IrOfvwsK4WHFBx
         eQVkVfAQubWKRatt+rQX8et/TwQ1BJ9U7um5MF7d/rt55UQ1tfJ6CshSOpcctAgX+tof
         aEMUy1+YbWch2S2yKAcRiUAgu51IPEiyDsD3VrqxLmtSDSKzZsWYvFBLHU9Dfts4Df0z
         seiW0W/jjjTvMpSADr7OnMo47IB6HOD0C4A75sktQMspEqg+1yMy0Ycms+OzELfPm8rv
         IoEQ==
X-Gm-Message-State: APjAAAVtRhmK8Fy7gzl/pkbcYT+3KdVOMZVVxFfOKiRNzfOuIpbPZpc7
	kH/iBzuBRmhU2fFSPfWeh3U=
X-Google-Smtp-Source: APXvYqyRWqSwQj1UVmIJJcliwhWU384lDhQR7bWFqHNmZhSXea2mPzVanSdLFNiIAIhv72RkdlzGDg==
X-Received: by 2002:a17:90a:1ac9:: with SMTP id p67mr5074766pjp.51.1581705223495;
        Fri, 14 Feb 2020 10:33:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls1722687plq.7.gmail; Fri, 14
 Feb 2020 10:33:43 -0800 (PST)
X-Received: by 2002:a17:90a:6:: with SMTP id 6mr5351752pja.71.1581705223065;
        Fri, 14 Feb 2020 10:33:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581705223; cv=none;
        d=google.com; s=arc-20160816;
        b=xlM/lLVvS1yivzdic0o8vwUJ2zi4Qcz/ccWD4dFzOW7CKjc2vlVf9G0wZmqShyqWaD
         /MV8a5TQazAnPf/Z+D49l360EYBY7fxDRlpHhoR9i+BgejL4jVjykHu+LSOcaPz/d2zH
         htdDONPHUQJobbsnG4DSr7FT1Hh2gDBjLZF6QGdfado379+QFx8d5aJaTscYuJ8NQF6u
         /1/MbGqTgMnelqGCq9PDSyNMNHaGKxcxt7Z7xWsnfreTDDM2o3wub1p7H/3n04mysYe3
         Fnax/qT6Kw4IzMDFyINu701KITkXzAuC5ibo/z9YRjrf0D+kYzOJlYdaUAazzQ7EtVpC
         25cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=J5P+BexodE8E3SIQQE6dafrmMz2uiLTw2CmU6+4HNM4=;
        b=xHXdznI6NPcZHQWXkmLwSMnuD/G3spJyP4RGixAVL5AMOy4yVujtxf0r1xg5hVEFoS
         ogB0trNak3z1ivco9aEXjjW5iVOEO9AdWvXfvAWUT0MBHKXBT4qoCWT6bYvdAEs4PD79
         x8SNLKTdTVn3ZvAJtbKcpwyTj/9sEXgRiJnmUSTMoBMz5zDloqF+GxxqAWw5seff70G+
         +aMvnxZoYridjCnzspKQk4HAtwZNvzEd08p7xesIn6WGWkbsKRPB9MokVcibh45l8gml
         5CxVHN+purykGXJ/KYl9qdbJsGhYvjR24iUyjWvknpv4xI/BPd6NOXkbw2EQYZ1Up8Lu
         j7ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a4L9XUaT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id x78si246073pgx.5.2020.02.14.10.33.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 10:33:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id f2so960955pjq.1
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 10:33:43 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr4527863plt.223.1581705221301;
 Fri, 14 Feb 2020 10:33:41 -0800 (PST)
MIME-Version: 1.0
References: <f18c3743de0fef673d49dd35760f26bdef7f6fc3.1581359535.git.jpoimboe@redhat.com>
 <158142525822.411.5401976987070210798.tip-bot2@tip-bot2> <20200213221100.odwg5gan3dwcpk6g@treble>
 <87sgjeghal.fsf@nanos.tec.linutronix.de> <20200214175758.s34rdwmwgiq6qwq7@treble>
In-Reply-To: <20200214175758.s34rdwmwgiq6qwq7@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 Feb 2020 10:33:30 -0800
Message-ID: <CAKwvOdmCfDxa5yw4kjQ-fa0nuU74Vfkkaj41Q3LH4-KFMU+_Vw@mail.gmail.com>
Subject: Fwd: [tip: core/objtool] objtool: Fail the kernel build on fatal errors
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=a4L9XUaT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

---------- Forwarded message ---------
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, Feb 14, 2020 at 9:58 AM
Subject: Re: [tip: core/objtool] objtool: Fail the kernel build on fatal errors
To: Thomas Gleixner <tglx@linutronix.de>
Cc: tip-bot2 for Josh Poimboeuf <tip-bot2@linutronix.de>,
<linux-tip-commits@vger.kernel.org>, Borislav Petkov <bp@suse.de>,
Julien Thierry <jthierry@redhat.com>, x86 <x86@kernel.org>, LKML
<linux-kernel@vger.kernel.org>, Nick Desaulniers
<ndesaulniers@google.com>


On Fri, Feb 14, 2020 at 01:10:26AM +0100, Thomas Gleixner wrote:
> Josh Poimboeuf <jpoimboe@redhat.com> writes:
> > On Tue, Feb 11, 2020 at 12:47:38PM -0000, tip-bot2 for Josh Poimboeuf wrote:
> >> The following commit has been merged into the core/objtool branch of tip:
> >>
> >> Commit-ID:     644592d328370af4b3e027b7b1ae9f81613782d8
> >> Gitweb:        https://git.kernel.org/tip/644592d328370af4b3e027b7b1ae9f81613782d8
> >> Author:        Josh Poimboeuf <jpoimboe@redhat.com>
> >> AuthorDate:    Mon, 10 Feb 2020 12:32:38 -06:00
> >> Committer:     Borislav Petkov <bp@suse.de>
> >> CommitterDate: Tue, 11 Feb 2020 13:27:03 +01:00
> >>
> >> objtool: Fail the kernel build on fatal errors
> >>
> >> When objtool encounters a fatal error, it usually means the binary is
> >> corrupt or otherwise broken in some way.  Up until now, such errors were
> >> just treated as warnings which didn't fail the kernel build.
> >>
> >> However, objtool is now stable enough that if a fatal error is
> >> discovered, it most likely means something is seriously wrong and it
> >> should fail the kernel build.
> >>
> >> Note that this doesn't apply to "normal" objtool warnings; only fatal
> >> ones.
> >
> > Clang still has some toolchain issues which need to be sorted out, so
> > upgrading the fatal errors is causing their CI to fail.
>
> Good. Last time we made it fail they just fixed their stuff.
>
> > So I think we need to drop this one for now.
>
> Why? It's our decision to define which level of toolchain brokeness is
> tolerable.
>
> > Boris, are you able to just drop it or should I send a revert?
>
> I really want to see a revert which has a proper justification why the
> issues of clang are tolerable along with a clear statement when this
> fatal error will come back. And 'when' means a date, not 'when clang is
> fixed'.

Fair enough.  The root cause was actually a bug in binutils which gets
triggered by a new clang feature.  So instead of reverting the above
patch, I think I've figured out a way to work around the binutils bug,
while also improving objtool at the same time (win-win).

The binutils bug will be fixed in binutils 2.35.

BTW, to be fair, this was less "Clang has issues" and more "Josh is
lazy".  I didn't test the patch with Clang -- I tend to rely on 0-day
bot reports because I don't have the bandwidth to test the
kernel/config/toolchain combinations.  Nick tells me Clang will soon be
integrated with the 0-day bot, which should help prevent this type of
thing in the future.

--
Josh



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCfDxa5yw4kjQ-fa0nuU74Vfkkaj41Q3LH4-KFMU%2B_Vw%40mail.gmail.com.
