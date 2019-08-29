Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBR4ZUDVQKGQEDPBPWII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 978DAA2260
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 19:35:05 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id b30sf2377367pla.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 10:35:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567100104; cv=pass;
        d=google.com; s=arc-20160816;
        b=GHQ/xaCVWwYs+4qkhvluGzVJuJq2XwEasZAIJFLZFCklOWpsZEw91XW7p0LJdbR6Qd
         jLaeE24tIAl/T3G86ODH4mORXIoimnCEFlkHokUNCpxTHOmhKmSogTWnq4A9AT2lk3g7
         A4H2doEQ5Pmq+o/hxNZ3opSsP6J79MJ8eYFZ0sBak+n34t9R9qvCTbmLYm+4O2HsDX6n
         dyGStVk4jeiY2MmKZPKqzrw7JzcXT0oauThMSLkB1TpM/QjN79vH5BPFCib1LRNB4gXw
         yjZyLxmGWdUmosSiQGJx6/Vx21IIBs75hCBsoGs9/Wqqq+qaIGmD5oEh/KxqitYlokZ6
         JN8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=g+Ec2NoRP5EVge1T6Ts2mvj5LoD42Xhz052vGb1WwW4=;
        b=ByS1O3I1pEUhr13c9tnxjqmbLJxPZzAJsQf0tdNohn0Xr4NruM7GE0TLFC9JmSOzyA
         JMpii0T6zWEEUEfAC/BB5NXJ/GHUYsx4fwgQkh9Ig3gNok99eoeGR4mhsWwo6eaXbOB9
         5l/4CAbCqHngdrqsSyuez3zGk5Z4a7G+bqWaywRqVjamqOSktv5Bk4E/oiXraEeGYWqQ
         mhp8XvJVZxoPiwR8Q3/kPnBhLsJ4IbhDE1zu1j4fP+g3E6DrXupoXK12Rovc1NNBhMlY
         nZ6/ZtEtn77QQGGRdGReDr3j9xc6w0g0B2T4RZYgF6aIWIf9MtXbDrceBgDySwTlXf8/
         OO7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g+Ec2NoRP5EVge1T6Ts2mvj5LoD42Xhz052vGb1WwW4=;
        b=gurkjq3j+D+PMaXkbVY/+FWpd+CGhb59oDS0QKvsA30Fw13RGbQ99AZPwPDrH5s7mP
         iGwCeRd2hgZsMrY6C7zQn01gIEdv2Ax+hrkSBNk3AyXPoY0qJzZSyAmvvA1tFEBzbY1b
         pHAwoLtSsb1wZWzMPDL+LqUyTi8Wb+LDxqMOAxFkB/+diTeLHrOmHBy/ANGlBKDT+aVA
         +DCAodPj8OOrMr0fBEFR4k/j8/lrmBQfxwgoSkSZbmRXuE6D4xRjOl4XJ+gdMYpRmVsD
         SJSQHOaZtsgHBXjFoO8b1M/kL3V7B9yl9YRWi8C9M9/U1cmpx88NXJHh9fzBuaBWVWIF
         esiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g+Ec2NoRP5EVge1T6Ts2mvj5LoD42Xhz052vGb1WwW4=;
        b=RmnYQ0ECkPOOttpxDiQzS/CiuKHxLhro7AR0XknxEB3r9DoVyVNIi8N3XD3If3BwUT
         quQgMZu3rnm4CoWf11eUUV07KmCYBINgSgoOhCsTyT3cSl/+JA98r4GKkjEHSGnN9fEU
         wLS63JuT74l605hNsS5kx1UoThqmG25S3uojAmUnz1zSVIHPYCJse3FWBJ4BtN4uwEhv
         bjpmoODDqIPwwoE2FKDJ9WVXejDLM48IaY6Dxl/5JLDiPzYH9HOJtt0SdYA+n3RpThwD
         mjCB2Hxgy+JbqD0/KONzT5GFceMsA+fAe6SNV2/X+zZIWPmmGVwkS52ZZOR8vH8RMdef
         Y7GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWI8uap5Py2Xi+t5sLdzjhvMaUFA4vmdiXsplwdtajjBmqJceTp
	9Y84oo830xCtgGOI9oNXISw=
X-Google-Smtp-Source: APXvYqx+jLEDO0a3jiOb6098wRTutfY8kNGwQWenth9H7EmnEXavwekNR3fQDQIrX4VsjaeeQHA07w==
X-Received: by 2002:aa7:934f:: with SMTP id 15mr12753046pfn.22.1567100103781;
        Thu, 29 Aug 2019 10:35:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3742:: with SMTP id e63ls1069061pfa.7.gmail; Thu, 29 Aug
 2019 10:35:03 -0700 (PDT)
X-Received: by 2002:a65:60cd:: with SMTP id r13mr8126288pgv.315.1567100103376;
        Thu, 29 Aug 2019 10:35:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567100103; cv=none;
        d=google.com; s=arc-20160816;
        b=bRVO90n/kZuo1tU2W5hpIynl7JP0WHCT9HrwyL+M6Pk8VZT7l8UF2W+r26iWkLjXLV
         U3mFRtYPdZylWNDxoPpWZCp3OJfc7ghHEpoDJ3dAxng7ulpmSanKoTKg449izQDqyHnM
         1ywucDlJrAn4jlFN2Cq0SxxXuybG5nv3H7L4cTZN054nMQOo5UiO15Tki6McEVHW4JKv
         fHepEnOp+1np2fPP+lhQ6XQ+1kOZQXMsazY1e/Qn+Mpy4RoXRXzV/hqxqDC34q70BJ9n
         fEsj5ya/ZMcuU/bTx25gj4kDqE+JsX/vr+jsnkWEQlowTIFyDGQDTKPdVzjduWIIozSI
         UHJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=lp0v7Qi49XSpdZmiVhdquNXnkp8AXzTLBvRVdkExttc=;
        b=AibtaUC5sP5A0HF5DWdNLN3xvQJ0INAD/rG1UG6JEhzRQ00oN2mYUasKckeI+ZdSVF
         wB9uVuu5/YsGLWvcXTwhyn8H3IberyL01J5lIGHdKmI4L9J49YLhIpYGNPSA5dMaTfGQ
         aFXz1QDDW2yvjsEGyjA5cXx5gsiFRcYRSSzldOKEWZ2AgAUTQoNSWWnL/GmMMCV/wGJ9
         8M/Tc0iuVJE5s7uxlm4P/N2Y289NZBvciUqE2J7BAWYAaUvGiLt4KNrX8FR7R4FFYDZF
         bpCBc0t75do7zZUyJM5+3SfoQq/LBGDKm/60dVU0NP4yCzxx2DsYjhTmp55v6D8RQH7E
         Fkhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id b23si91458plz.1.2019.08.29.10.35.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 10:35:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CF05A881346;
	Thu, 29 Aug 2019 17:35:01 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3DEA5B681;
	Thu, 29 Aug 2019 17:35:00 +0000 (UTC)
Date: Thu, 29 Aug 2019 12:34:58 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190829173458.skttfjlulbiz5s25@treble>
References: <20190827145102.p7lmkpytf3mngxbj@treble>
 <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble>
 <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Thu, 29 Aug 2019 17:35:02 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Aug 28, 2019 at 05:28:50PM +0200, Arnd Bergmann wrote:
> On Wed, Aug 28, 2019 at 5:22 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > On Wed, Aug 28, 2019 at 05:13:59PM +0200, Arnd Bergmann wrote:
> > > On Wed, Aug 28, 2019 at 11:00 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > On Tue, Aug 27, 2019 at 11:22 PM 'Nick Desaulniers' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:
> > > I figured this one out as well:
> > >
> > > > http://paste.ubuntu.com/p/XjdDsypRxX/
> > > > 0x5BA1B7A1:arch/x86/ia32/ia32_signal.o: warning: objtool:
> > > > ia32_setup_rt_frame()+0x238: call to memset() with UACCESS enabled
> > > > 0x5BA1B7A1:arch/x86/kernel/signal.o: warning: objtool:
> > > > __setup_rt_frame()+0x5b8: call to memset() with UACCESS enabled
> > >
> > > When CONFIG_KASAN is set, clang decides to use memset() to set
> > > the first two struct members in this function:
> > >
> > >  static inline void sas_ss_reset(struct task_struct *p)
> > >  {
> > >         p->sas_ss_sp = 0;
> > >         p->sas_ss_size = 0;
> > >         p->sas_ss_flags = SS_DISABLE;
> > >  }
> > >
> > > and that is called from save_altstack_ex(). Adding a barrier() after
> > > the sas_ss_sp() works around the issue, but is certainly not the
> > > best solution. Any other ideas?
> >
> > Wow, is the compiler allowed to insert memset calls like that?  Seems a
> > bit overbearing, at least in a kernel context.  I don't recall GCC ever
> > doing it.
> 
> Yes, it's free to assume that any standard library function behaves
> as defined, so it can and will turn struct assignments into memcpy
> or back, or replace string operations with others depending on what
> seems better for optimization.
> 
> clang is more aggressive than gcc here, and this has caused some
> other problems in the past, but it's usually harmless.
> 
> In theory, we could pass -ffreestanding to tell the compiler
> not to make assumptions about standard library function behavior,
> but that turns off all kinds of useful optimizations. The problem
> is really that the kernel is neither exactly hosted nor freestanding.

Adding a few people who may be interested in this discussion.

Peter suggested to try WRITE_ONCE for the two zero writes to see if that
"fixes" it.

However, according to Peter and Paul, but not Mary, Linus has argued
that normal aligned word stores shouldn't tear.  If that's our story
then it sounds like it's a compiler issue and WRITE_ONCE shouldn't
really be needed here to prevent the memset() call.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829173458.skttfjlulbiz5s25%40treble.
