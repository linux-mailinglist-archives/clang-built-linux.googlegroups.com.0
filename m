Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBCEF7P2QKGQE5PFTYJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B74E1D55E1
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 18:25:47 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id l11sf815131oil.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 09:25:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589559946; cv=pass;
        d=google.com; s=arc-20160816;
        b=qHAdt94yy30IKe6nuKLZftPv4RTJZ0VfkMyyPn8n3RnMVj7MtINrtIZj84Y5KGukZ8
         FzwhX+MUF+B0kWHtE8jHjmPs2f+8PCtQI+QI66vd+sPXEzCH7Sh4oD0ZvdpFd8FML0FM
         iRzEf/Vfp4t+JexigghG9NHDyH23+rhHGxSc79NBbHrCNRz9WCsjjV0MYdngWAIhWDZB
         i9OMHeOVh29zRVEtPJT/lzHJcmZCzLAA9elE1Wi7IGZ8F8Y7PXC9tYUavT9HfW6lnHUy
         EP9JT03tnchpA0MfRVACUOiX5JyVKq9etp03k2mVQCRegWLGkz0gLIJqtki/JI7Oslg3
         NyBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MzvCf0H370DIKGEwG1fnVQlqVyDPDdc4vFlxLpBOiJg=;
        b=pvpnV5xxrbYZK6GH1FNTEocOw3gxla9b1AibYxRD5EDEOdUc07sS5OEFFHIRjsxNdC
         hQFe3trgWjcVAIDMfbGJZw1hNIiBQZGFcr7C+XUTIbdpmDuv6wEZDR4reOSOSuQIuwTl
         VGkyw2JkxbTQcXTQD6k1BevCb+zkZ+cimIJkiJD+sMPZOBJDHEKdF0uRKXr8DRt/p+mD
         fpSLieAxeXFiZ9DU37tMjQi8SiipOBGdI9kE4K2WkaN7Gz3JlfSw5eyv6en2VcadlBDU
         +hPKo4n8zISiTT7OFj458BwU9zZ/rlvlIBj87HNrS5+lb1/zyTZYFRNDsvL8sRuo+SX7
         8quA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YKDnLQDY;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MzvCf0H370DIKGEwG1fnVQlqVyDPDdc4vFlxLpBOiJg=;
        b=V87HgDj5YGPxhSwFA/W+DOG+qv4XizrCUtUb228AWGWD9pEER8GwiWa/Yw635IrA+/
         KHNmzOuZ//XrXkm+Fvx3oGurHAX8DzxPoOIrWHFPYpRZtFZm4bCdP/uQ3xe2xNTFxWAM
         nv71b1j8pGXYziZKbq2jqDdT2W4EE/wQlVWNPnMO8nhmi0dzVuVF93f8FCHxgDF7mVDj
         zw4UjWgZu8bjsnkgRMjGRvvoiDfdvveGZgWHO9JyGmsUZjQF/0LAzHvEM7s3g8CxW2w/
         xpl6sOolPA4KLxT8wXj61JdFJtjHkXW/3yEsjyEMhg8vJymC98sE2ImZbtXwZGmko6hO
         7SNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MzvCf0H370DIKGEwG1fnVQlqVyDPDdc4vFlxLpBOiJg=;
        b=bsEiitxovaq6xj+w8YaXR9rXMkOg/q5uzEzxFHUQovpRlIiyhgTrdThHi/8/W8/1fO
         DncJODwJMjhZ++I1x8WJt7UA2mDSGnFxV1cvA7EpkP69ukQM2SJLX60nVVOlA2W5rcJv
         gKmd2ETMSq11gVE2uQ6m3FDuWHp8IJiwD8dOXIztOLIe6nrKsDoIeXKuf/e405yZTDrD
         vzDiu2FUF+2SJx7r3v60GoQVVASQQhoSYvk+ZLrzVrWHCKl2n3ked/Ljl6vPkk2X9WFh
         JFVPTxb+gY2Xz9Mm6D7gI7FVZOIs/p1MrW7NebX9bBy9JMb/1/EaNKdEC7tgPRBvVZ7u
         JDcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jDc5XcqZ2nFgBn2hT4EKa9DiWy8dBx7uBP8olFUOn8EKYelb0
	bufpD6Xbc0oRl3NhGJICJBQ=
X-Google-Smtp-Source: ABdhPJzxgxsOUHrQr8xOlPAKuiBUTw3AVZ8xKXdAvQwHzPUBuBbPegYnq+5geBnjFbvvfBN7Z7qk6A==
X-Received: by 2002:a54:4701:: with SMTP id k1mr2718828oik.175.1589559944955;
        Fri, 15 May 2020 09:25:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7516:: with SMTP id q22ls629568oic.1.gmail; Fri, 15 May
 2020 09:25:44 -0700 (PDT)
X-Received: by 2002:aca:908:: with SMTP id 8mr2828490oij.170.1589559944669;
        Fri, 15 May 2020 09:25:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589559944; cv=none;
        d=google.com; s=arc-20160816;
        b=K9Tk7eYXIMG7KjsqTtMuoLThgp/W3HULveka7A7C0ZrpVVLSnLffdjBoPeU7cydwoI
         xxw3Fu5Q6oRsuRQuVp51UcYg0QhnX+vI1XrA9SYusTfHbXjpXISQNrZp19IZFprljPBw
         M2T+wEN1Ed3c35ZJkDbm2VO8EDF/daOBf0FeCpSozsOddEVSukOoHARq1eOgqSFcRgNO
         IWcq485nvkfc2Q9EFjctJLI7YSQWBWe8FrzsKRzOjAxzVtQ9rzSn1oLcjJtelD946/gF
         wQTld+HhhqI7g1huoRb2pNzoj9HAgShyxaCbqbL3Wm8ltLcsSwRFsSlEoxsZ0fNQ4nUv
         REMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ps5IsNy+4gcgBuZjYkSlVoRaiYUMkLWqlqvIdZeZJ0Y=;
        b=eDhd6I+bFbYED8EEIwqbZKkDU5draIGqVjwUU+Du9+4zjR/koGfm4VpUHNLVk8/lbO
         fBuVRdBJkvD7m2HBLFAYuhR1MnOVADQMqeqv2yEY9V9G8F7LJc4YJgfT02ISR2bPt2xG
         gSbZp4TYYPbG6IjeIb8/UAV/6r2QAhiM1itT8VPKOMMkP/rOzucdqevuVsct/9KirNjv
         ZsPrrnZnGGzqxJp/z0zOPmP6aVQkWH7yd2+PVQA7S8B5JXGQ1Uxo6UVE1iaoPZuaz7eL
         /M2qc1aYChCx02o/3MApaobR0gxFDmp3bwe/dcxHBmQY2w1ShZz/sUMRwvOUW7eSKAoW
         5lCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YKDnLQDY;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id k65si318416oib.2.2020.05.15.09.25.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 May 2020 09:25:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-492-QAI_14QDPhGuck0a4mvcpQ-1; Fri, 15 May 2020 12:25:42 -0400
X-MC-Unique: QAI_14QDPhGuck0a4mvcpQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97D9D835B47;
	Fri, 15 May 2020 16:25:40 +0000 (UTC)
Received: from treble (ovpn-117-151.rdu2.redhat.com [10.10.117.151])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F83E5D714;
	Fri, 15 May 2020 16:25:39 +0000 (UTC)
Date: Fri, 15 May 2020 11:25:37 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Marco Elver <elver@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: ORC unwinder with Clang
Message-ID: <20200515162537.j2nj5nq42b4zxmqz@treble>
References: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
 <CAKwvOdnQaeQ2bLqyXs-H3MZTPBd+yteVG4NiY0Wd05WceAad9g@mail.gmail.com>
 <CANpmjNPLgFdFpHzj5Hb_1CfFzPMmqy3z1O98N=wsr8kQ1VS9_Q@mail.gmail.com>
 <CAKwvOd=0Ducgnkf8tzNGH10_UJSk56Ff_oSyGMddBCyG3Xt5Gg@mail.gmail.com>
 <20200514191754.dawwxxiv4cqytn2u@treble>
 <CANpmjNOoB36xu4iBwcOZ=RpjWEMwmqOX1tYU8+m285xXJDHRGg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANpmjNOoB36xu4iBwcOZ=RpjWEMwmqOX1tYU8+m285xXJDHRGg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YKDnLQDY;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, May 15, 2020 at 01:50:07PM +0200, Marco Elver wrote:
> On Thu, 14 May 2020 at 21:18, Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Thu, May 14, 2020 at 11:34:52AM -0700, Nick Desaulniers wrote:
> > > > The stack traces of the races shown should all start with a
> > > > "test_kernel_*" function, but do not. Then:
> > > >
> > > >   sed -i "s/noinline/noinline __attribute__((disable_tail_calls))/"
> > > > kernel/kcsan/kcsan-test.c
> > > >
> > > > which adds the disable_tail_calls attribute to all "test_kernel_*"
> > > > functions, and the tests pass.
> > >
> > > That's a good lead to start with.  Do the tests pass with
> > > UNWINDER_FRAME_POINTER rather than UNWINDER_ORC?  Rather than
> > > blanketing the kernel with disable_tail_calls, the next steps I
> > > recommend is to narrow down which function caller and callee
> > > specifically trip up this test.  Maybe from there, we can take a look
> > > at the unwind info from objtool that ORC consumes?
> >
> > After a function does a tail call, it's no longer on the stack, so
> > there's no way for an unwinder to find it.
> 
> Right, if this is a general limitation of the unwinder, that's fair
> enough. However, if we build a kernel where we want to have the full
> stack-trace always available, would it be reasonable to assume we need
> to build with -fno-optimize-sibling-calls? I can imagine that we'll
> need this for the sanitizer builds, for compilation units that want to
> be sanitized normally.

It depends on your definition of a full stack trace.  Unwinders really
trace the *return* path, not the call path.  That's not specific to ORC,
though having frame pointers enabled might make sibling calls less
likely.

Building the entire kernel with -fno-optimize-sibling-calls seems like
overkill, I'm not sure what that would solve?  If the test code always
expects to see certain callers on the stack, it sounds like only the
test code needs the flag.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515162537.j2nj5nq42b4zxmqz%40treble.
