Return-Path: <clang-built-linux+bncBD4LX4523YGBBXFDTSBQMGQEJBHRAAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A92CA352AC3
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 14:45:17 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id e34sf4979531pge.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 05:45:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617367516; cv=pass;
        d=google.com; s=arc-20160816;
        b=qxLR5hz3sOaTAi+yMuAh6UZ7oFjA22QZt2pNifkHemH+bz8ITcpHAzn2xWLc27j5p6
         rf0V7ek+5BAiPJS854D1yrlxuIrFLq3wrvtz0nb/dO8sLqN83gtRCQZj2OATr7m6Cmlf
         tcT33q2vKDpu0ImyAsRhQ6ESS9sGikjezpRrNySmGfPD3SpCAJjiW5pzLo4dxz5GAX9X
         7ak17Ll0N1cNqBJSdZWkzhcSGsPgq9TFri6lHGc41HTT601Jzi19npu6Ns1BVmvR/9h9
         ayV0z0/T3675S9pSIMopK1xsqxq4jkeXkq065RGolccKINxJFUF+txFj1/N27vI6t2ys
         nyoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=5KvUyhngeLOCaCvnCW11z3/UeDMql8O/H2x2ys+5QWQ=;
        b=J7ILbUHSAL2V/Mp8LXiAR7TKct1wRf52cySGdBNNyF+etyAvJubFDNNj6aw8Qd7FeJ
         X9aXlSPxqTFcGxewL5ZfAU6yAMLScapfqERnhN1BJgN9irMwO2TJowR0OVUcujus1XFj
         ZbqIS1tz9G38YGT6RQUwaLnxCS6vpTuWW7Px30MFdu+Fg1A2KvfPMgjkdL6E1TBr1Co4
         WT80TPd3TFBti5v+4Hiu2wK59dwz4JyYkU3hj7hMRx3/8lRKfEJ9aEDTgQjsrg9IR9YF
         CMyQS8PUzudsVvADe0CQn1qY2d7iqj4CnbISWWi0S3wQ3gaKJMysvYvhdI7JTt9D86s6
         //Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5KvUyhngeLOCaCvnCW11z3/UeDMql8O/H2x2ys+5QWQ=;
        b=FaGTJhwCXCPBQ+7MwMVHB6OWA1QTWF36igg4gKpciagmzmf1nMNcmV/v3sw9OZqvuR
         ibK6cePm1tXAsMoPAymKu1HzoKdUzSF8ZJRsa/wTeYrGVEAkn8CczjUpyHxlQyzs4dDv
         ual/9Fy7Ddb/nBPjqaj+Q2JD5yLJcYpx3oUao36WcWnuXE7fFk/1emupO3MxuHtZ+CcV
         T6B15IGa6k91WUmIuteYcxDFSGcX1/iTvCN6yyv9WBq0zAQpHWGOH0w8XABR/fgz/LyN
         cawr1qAUjXNCUcdRjScb76kCwhP3UrHFYVB9/+a9M2zmrqGoZqAhf+KUP+utHUZmr65o
         ye2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5KvUyhngeLOCaCvnCW11z3/UeDMql8O/H2x2ys+5QWQ=;
        b=LdfS+lVlWldL9lg/mePJh6jD+9blE5f2I4+imjwOWptYD96wpKGCx+su2OiLaiN2Y6
         0ani/AMUrndEx4dflgT1PZkV0gYEKq450aIaFJAXM7R+o9dBMNocMyqQT5js0BI6LG7c
         PcFuawY1QRIr/b6yhH2QxHkIR0cMzz0hlF4c1aJAopC2TwOAeSJFGyCfOU+mq8noE5a3
         M+yuY5+XGZDhp5MhzRCnKk1r7TO52XjkxV9Ra/eM2tdp3rwfvBDlceG8HhBGmXPT6hNf
         1MvUZkKPeRsYuKKtYaSDe+j/b4rjqAqCKk/5Lk2KNz/dEY8owZTeEkwfjWi2r4ETJkSd
         l/dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AXnwcTUtdGlEDGwPOL3DWIuQYX0vlXwIXscYhJd0B80muCWwC
	4opYtJHaB0qFPH81pZ25jjY=
X-Google-Smtp-Source: ABdhPJwogA1xU22YZHHP+5S/Dy07pKroEKGHsyeLI3paHOwmqFCoGr7Udn3koASt8r1YHIbVJLE11g==
X-Received: by 2002:a17:90a:4d81:: with SMTP id m1mr13686657pjh.143.1617367516256;
        Fri, 02 Apr 2021 05:45:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a507:: with SMTP id s7ls4418747plq.3.gmail; Fri, 02
 Apr 2021 05:45:15 -0700 (PDT)
X-Received: by 2002:a17:90a:f0d4:: with SMTP id fa20mr13621709pjb.220.1617367515703;
        Fri, 02 Apr 2021 05:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617367515; cv=none;
        d=google.com; s=arc-20160816;
        b=ARhrzlUNq5qf8YfjudjN+JHS4q/Bv3OY0ca9M2OQrdKbIqQRySBis27pelr3W1KRq1
         0JBzPb6FsFk3FzB/k9Ulj9qW/QAsq5U8t6aB3dER9PjLjMzxL+J6yB/P0K9QXJ+QYIMg
         DHca7CGc/uplLb7oWKBkoNkEw+8Fiu8wT7z+cGU1c+Mrtda5NDSf9jn6cLpbWGBeDAcF
         4e7ycBFRvOK85+efu3xSfmoZHzEXECsg4AShcV7bCSQw2Kv8eFpP4/vndWAlj5tnfZ47
         y2QVZ+jq85/P4JgPtUmkWXi3yZr/KPJPjWUkkI20UxoimJ56FjtV1Y3ONX2pzDbIpsOB
         CYug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=oX68WrlMhHvixQiKG2gJuj+5yd0M/W1rHnyzZa5hXWQ=;
        b=JC94E7ggNjcv8SWtyauvdBH57bf9oiE5ctFu8/he/41P2I8fwXzVoUb3rS1xyg7UCi
         Sm9WA3GzcKnYvBQvEadrDpDad+6OtCLsTUYqU705Kp3tVnJf9Br/11LInc1uNimRvI+1
         3GrbPRbkJcdcC3qYoBzOziWPXjkX7FcYN/igBKz18EkehM8KoGJPNrE5BfAVr+HVBxXW
         J3MdhkGyimC729+EG4pIhsoOcgPY/rx2QkH39nfk6kiHqd/pTZawqyG8u7PDdZQeQKhr
         8j7k+HjyPuqiw2Y7QGReopte5bhCwHLUdpKDjVK717kQNz1NudSwjABv2lL8EPA2BSge
         6OBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id s16si344836pfu.4.2021.04.02.05.45.15
        for <clang-built-linux@googlegroups.com>;
        Fri, 02 Apr 2021 05:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 132CeWKx007096;
	Fri, 2 Apr 2021 07:40:33 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 132CeVrf007089;
	Fri, 2 Apr 2021 07:40:31 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 2 Apr 2021 07:40:31 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Andrew Cooper <andrew.cooper3@citrix.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        "Jose E. Marchesi" <jemarch@gnu.org>,
        Kees Cook <keescook@chromium.org>, Florian Weimer <fweimer@redhat.com>,
        Christian Brauner <christian.brauner@canonical.com>,
        nick.alcock@oracle.com, Josh Poimboeuf <jpoimboe@redhat.com>,
        Will Deacon <will@kernel.org>
Subject: Re: Plumbers CF MCs
Message-ID: <20210402124031.GH13863@gate.crashing.org>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com> <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net> <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com> <20210323195358.GB4746@worktop.programming.kicks-ass.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210323195358.GB4746@worktop.programming.kicks-ass.net>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Mar 23, 2021 at 08:53:58PM +0100, Peter Zijlstra wrote:
> On Tue, Mar 23, 2021 at 07:29:01PM +0000, Andrew Cooper wrote:
> > For the compiler folk here, the tl;dr is that indirect CALL/JMP (i.e.
> > function pointers, jump tables) and RET instructions may speculatively
> > execute the next sequential instruction(s) before taking the control
> > flow change into account.=C2=A0
>=20
> So JMP and RET can trivially have INT3 following in such a way that that
> instruction is never in the actual execution path. This is obviously not
> possible for CALL.

What about
  call ; jmp 0f ; int3 ; 0:
?  Only the jmp can be speculatively executed (if your (u)arch executes
jumps at all), but that cannot be a problem, no data is involved.

> > Having some toolchain support to deal with
> > this would be great, and preferable to some of the asm hackary currentl=
y
> > under suggestion.

I fail to see how it is anything more than some boring backend-specific
patches?  By nature you pretty much have to emit this as canned
instruction sequences, so all the rest of the compiler sees it is just a
call or jump or whathaveyou.


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210402124031.GH13863%40gate.crashing.org.
