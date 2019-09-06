Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFCZLVQKGQEK2AT2CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F34ABE39
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 19:03:29 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id h14sf7148908qkl.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 10:03:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567789408; cv=pass;
        d=google.com; s=arc-20160816;
        b=G3F3RfSij7OPVUHywS/ucDqWvM4PR0eaTfKKzn1IuRTSqv2/A0En8gXhdPBtsfZ1V9
         0Qmyzp6J1bL7UFdv5LnB3u+EP82k0daweOPan2UZwaUszTGXo5qA0LWZxAaZpDRsP3QO
         6HOPtOBwr/01/2s0T7+N0H/U71dD1R9+nyOrE89uNSZrgeG7cMLA3Z7CfY01Sz59glEQ
         bBNE1pK5xeOsWl39lrt9mbL4sTz5EQ3U+PJpYSDYhXfv9IlsQdeEwzczdIkXXgGTlU95
         v4Sz2iwx+t6T8BY+vrlJzmyHfOmF4QhBVn55Acrc9WLWgMERLVhQtKiexd/GBKpDr0Gb
         oNbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=C/S9mUW+InHFoqUxQnJbbjpp9Y+9aTg8tQP26PsRsHE=;
        b=vOt88xlsPsljUvQ5fhr7TfHtwU2xJBhjPF+MO6DktrwpgeookhC2BUSOzBeKLOmMN5
         oWd4GUyNwbT950L6hCEZOfGJhqM1QEGYkxGoHk+YAOQ/QgWDHfw9DdOBzE3tYnZYRXQF
         +xNGMweprPEF9GyUAVHm+ma34ATvAquNDCSQNQnmXJ+wnIqiWHNoMq7/P3dNgrC3b159
         lgsoEE6qdkYpkzEMyuPlus9yzT0DkGOYALWaJFzTsbYJ++0KuGRP70TM/wQcbz3hLQHP
         glDMv74j431XvnhILvg5TXhRJeXj5568aqrgSgI4xOQPdA+dZOq1xSf8t6puzhyeGXs5
         dcqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lcVcDEas;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C/S9mUW+InHFoqUxQnJbbjpp9Y+9aTg8tQP26PsRsHE=;
        b=TfVUUkwo/Bx8GDqFP5SPvHD5VlRA2hvjnGKGLonGUzEvZQ+C057PuZjX4RvLhJALUg
         F9VM8czhejOAQzdbasok38PXPpXHpPGEV+q3Kjb5WiR6Ecv5H4Ey3Bf/lNCZYyff3zXc
         C/1m/T/9Zb5+/+1iylVpwo671xm9BEXEsORhNedpxiadE3M3YyRqbytxIhuQ9tOdDEtJ
         tFmu3wr9hnGiaMa4YpmwsNM0qQ+wEwfCKWreRhrMXRRO/d5NRfWY9hoIfg3nSOTDFuR1
         c7Ek2XGYztIdNXUlxTuv7FcRlChKjaHd97JDpu0taLLLSiT1oFGW9rPoAFY+L+dN1sTS
         c70A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C/S9mUW+InHFoqUxQnJbbjpp9Y+9aTg8tQP26PsRsHE=;
        b=c86BCLgrefz4THZi1L/3YxXc8E+S1OxNiZ4wiKRU9fzFYPokpNHvhjPkhwdLJd4aEZ
         LOWnrf41LV8RewV/hhOWjlJMWnNgd4l47Cv4HH17qrr49Yfeb4BuqjANq+chTbsAvy/W
         bUEIlp+Qkb4JJsArj4clYdZQGk4pRdLeg4ON787m2BhXkcQwNpwc4TH9fA5Rma4AXcQ2
         3Mdlet03Sn8ATF/x04YVLGNfL2LA7+v1TtKia4dad9YiHMyAxUje9tPnmS/GG+uTORea
         cloxl8JVxXZpNB+zRdvnRNDsa7FTC8uzmhCjZeDtHosrj0pjKE9pMHqbamzsclpybKB/
         SkGg==
X-Gm-Message-State: APjAAAWORmMJGc/INRAyTzXRGoHy8Wxe5DXLXgrfVAru6F6kKNP5n69g
	INfOi3xZh4vbO3t7P/poe5g=
X-Google-Smtp-Source: APXvYqzGZ1qbuWxuJHRpfrSpuMIxpfY10R0b/7hcFWIAj1r/ui5e7w/z+Tegk1T28p3tTI8XwddmPw==
X-Received: by 2002:a37:8b46:: with SMTP id n67mr10080659qkd.36.1567789408422;
        Fri, 06 Sep 2019 10:03:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5fd:: with SMTP id z29ls26722qkg.4.gmail; Fri, 06
 Sep 2019 10:03:28 -0700 (PDT)
X-Received: by 2002:ae9:e119:: with SMTP id g25mr9893645qkm.440.1567789408140;
        Fri, 06 Sep 2019 10:03:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567789408; cv=none;
        d=google.com; s=arc-20160816;
        b=usqyF8ry6V6j+61IV11FqzraIYi3RBiZWO4PMYHCRqvYJ5B3izR9fg7Hf3jtJGmOH3
         NpbKuDgryCxGVfyEFmqRD+PjSwLtI+xYpQqPkZ94J1wSC9wFSBRedAJ6Wu1wsfYwl2L3
         cPtcaI45kLttqL+Tz94TKjSEZRp/Uhd8LnP9dDMn3Bchsq5HAKQb15Xh1Yw2/JwY9BuY
         0i4iTtb28Thl103qjBhAY+fGdeh7Ke/aSYES4Vbr5C7xZmlg607jZ36moTrur6J2DfOi
         JmGpaNmT29xbtVD268PP94R5QD2Km1k4YuankAfwAD/JvCV6rkhLMmnObDKfRjjmqE6v
         xyBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W1wV3q1uWF//0OcBe5P2Yy2M+p+nXjVziOC21JJrucQ=;
        b=rMibY4tWT+Y5CfXQZo475fQceNI7L+60DNgcGoDjoWj+m/sNQzDOsVAsFXmWw5k4Nm
         Vec31SB0a282bRK3q2/wsydoD3liM8uWHsVRqFri6isBCEGPf8zdIpsfU0XJ34VmQ2mW
         Ec8A4D30z/Y8NIv6x/rnc1H8rm4OIfBfGz/w4trx0wRNXM2kqO+umvw/d1g9anre70yx
         0HW400xsffVdk57zOvCjB1JxRXEVky49bfkvqH5SfsNGj6VmVeqnHrVU+QK4+rP7i/Gr
         GWSwXGUuGHy/Xmg5LDrDjZsi0FMl0rxk6hG2f3S1rD2SjUtdkiF+IqThNT0RbNij9Bqd
         xJsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lcVcDEas;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k8si418134qkg.7.2019.09.06.10.03.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 10:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id u17so3822579pgi.6
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 10:03:28 -0700 (PDT)
X-Received: by 2002:a63:6193:: with SMTP id v141mr9002062pgb.263.1567789406523;
 Fri, 06 Sep 2019 10:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com> <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
In-Reply-To: <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 10:03:14 -0700
Message-ID: <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Hans Wennborg <hwennborg@google.com>
Cc: Eli Friedman <efriedma@quicinc.com>, Stephen Hines <srhines@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lcVcDEas;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Fri, Sep 6, 2019 at 1:10 AM Hans Wennborg <hwennborg@google.com> wrote:
>
> I'm a bit nervous about taking changes to the optimizer so close to the release. If we take them, they would be shipping with very little testing..

Let me tell you the current issues, then I'll trust your judgement on
the risk assessment.  I want these things to soak, but I also don't
want to finally ship "asm goto" support that's not usable out of the
box.

> I've left a comment on r371111, and I see the fix for PR43222 is in review but not committed yet.

Link: https://reviews.llvm.org/D67203#1660386.

> How bad would it be if these fixes have to wait for 9.0.1 instead? I.e. what is broken for the end user here? Does the kernel no longer build with clang 9?

One is a build failure for an obscure driver, one is a boot failure
for all builds of one ISA.

When someone builds a linux kernel, they first have to configure it,
which is mainly selecting which drivers to support but some options
have much larger consequences.  Typical configurations folks use for
testing are "defconfig" which is a curated list of sane configuration
options, and "allyesconfig" which turns on as many configurations as
possible.

Of the 2 patches I'm requesting for clang 9.0, the IfConverter
(https://reviews.llvm.org/D67203) fixes a compile error for a lone
driver for an arm32 allyesconfig build.  That driver is for some
obscure piece of hardware and isn't critical, but "allyesconfig" arm32
kernel builds are broken without it.  I think IfConverter is only used
for ISAs w/ predication, so Eli's change may affect other ISAs than
arm32 (I don't know who else uses predication).  Our arm32 support is
a little behind relative to arm64 and x86_64, and we can always
disable this driver when building w/ clang-9, but I'm hoping we don't
add things to the kernel that ban specific releases of a compiler (ie.
clang-9.0 is banned but clang-9.0.1 is allowed).  That said, there's
now three reported bugs that it fixes:
https://bugs.llvm.org/show_bug.cgi?id=43121
https://bugs.llvm.org/show_bug.cgi?id=41121
https://bugs.llvm.org/show_bug.cgi?id=42012

The other fix in CallBrInst (https://reviews.llvm.org/D67252) fixes a
boot issue in "defconfig" builds for arm64.  arm64 kernels do
something insane where they detect the presence of an ARMv8.1 ISA
extension "LSE atomics" then patch all of their atomic instructions if
LSE is supported.  As soon as an arm64 kernel does any atomic
operation (when built w/ Clang-9), it hangs.  This is due to a recent
change in Linux that perturbs the control flow just enough to trigger
SimplifyCFG to modify the successor to a callbr (asm goto's LLVM IR
representation).  This change is limited to the callbr IR instruction
added to clang-9 for implementing the GNU C extension "asm goto" that
the Linux kernel makes heavy use of on all architectures for runtime
self modification.  While we've fixed many bugs since the initial
implementation landed, I worry that this one will make it such that
"asm goto" appears outright broken in clang-9 and that the kernel
community would move to ban clang-9 from being used to compile the
kernel.

Some relevant threads for debugging the atomics bug:
https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678330.html
https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678479.html
https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678484.html
https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678493.html

If I had to choose, both are important to me, but I worry that the bug
fixed by https://reviews.llvm.org/D67252 is probably pervasive, and
likely to make `asm goto` unusable in clang-9 with more changes to the
kernel sources.

How much time do we have until you wrap the clang-9 release?  Would
there be a few days to soak these to avoid any potential reverts of
these patches immediately after they land that would then need to also
be cherry picked into clang-9?

What's the schedule for the clang-9.0.1 release? (Sorry, I don't have
a good sense for timeline of LLVM releases yet)

>
>
> On Thu, Sep 5, 2019 at 10:35 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> Hans,
>> Can we please get r371111 in the clang-9 release? It's one of the two bugs I still know about in `asm goto`.
>>
>> The other that I'm working on furiously is:
>> https://bugs.llvm.org/show_bug.cgi?id=43222
>>
>> On Thu, Sep 5, 2019 at 1:23 PM Eli Friedman <efriedma@quicinc.com> wrote:
>>>
>>> Looks like it does.  Marked it fixed.
>>>
>>>
>>>
>>> -Eli
>>>
>>>
>>>
>>> From: Nick Desaulniers <ndesaulniers@google.com>
>>> Sent: Thursday, September 5, 2019 1:08 PM
>>> To: Eli Friedman <efriedma@quicinc.com>
>>> Cc: clang-built-linux <clang-built-linux@googlegroups.com>
>>> Subject: [EXT] Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
>>>
>>>
>>>
>>> This fix also reminds me of https://bugs.llvm.org/show_bug.cgi?id=42012.  I wonder if it fixes that as well?
>>>
>>>
>>>
>>> On Thu, Sep 5, 2019 at 1:01 PM <bugzilla-daemon@llvm.org> wrote:
>>>
>>> Eli Friedman changed bug 43121
>>>
>>> What
>>>
>>> Removed
>>>
>>> Added
>>>
>>> Resolution
>>>
>>> ---
>>>
>>> FIXED
>>>
>>> Status
>>>
>>> NEW
>>>
>>> RESOLVED
>>>
>>> Comment # 4 on bug 43121 from Eli Friedman
>>>
>>> r371111.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D4hWG1MhPSou2jfAGLpCEEh%3DtQ%2BsJNnmiz5%3DVakGWr8g%40mail.gmail.com.
