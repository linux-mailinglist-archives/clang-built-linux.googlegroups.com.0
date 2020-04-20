Return-Path: <clang-built-linux+bncBDVZNA4ESQGBBWOX632AKGQE477G3GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 036DA1B0DC7
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 16:04:10 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id d5sf4252565lfb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 07:04:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587391449; cv=pass;
        d=google.com; s=arc-20160816;
        b=xr9mTCXuQv4al6N2Gzgod1c04tppeOF43KHtUoqT+abd/Iiz+cOyUaJtZUbrMW5wYE
         dlC9GglFbYg2WV2aJEU4XDnjbEfyurnAPO5lAdpKszdiP3ObGt6xcAMs10UuxxSUiUSA
         xKabRrzUmLhbxX3wXuz27bODymSLV8MUAe+EU6YiYf1A2JFeucO5dCRy+FDm6M1ehBRL
         6cg4j1NISRMPCU0r3G9WMRZot3XuQgbyV1zORLPJ6ZbLPeuPimjLz8M+YZrgum8Hv+o8
         /QGDTMulT8s5YDq9Van79GjlmXRE6gYYzGuWu2DayR9QIwYPQfc5Ynumyc6oGra3zRA2
         3Fzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=K3AbKHottxRnGhFBxUk7M5fFy3gwAVO8sdui9n5s2QU=;
        b=ZW8xHUk0ydKaeCKA8nfYKXwdPrmPi1vNlFsPWF3EHd695JexBT3ccOxwB1bO3W2CHL
         mY2F6xgS+G3IqYNUfc+3Z4iN7oUmTiChruoMqOWhejV4trSQNyKJKLH3rrLSDfk78ddJ
         iFhiY1X7Y34+56PD1LpiIJ/ph5ngo+iWAjzTq1Jtdtc1hi75blfbNBtxLour/6EKb3UQ
         hCzIOYvJ/5PktgLXwQCNAnPVBnoOeCNT5GhqGBb/SLQ7f2N0QK1snXQGBJEU6Hf94tNy
         glcbOvd/KM8fOaUcE1ClPhwn6lk8nAETLPoPcwSexPoE6EcsZpXjX7/XrWXBopGXBa6Y
         eHDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=matz@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K3AbKHottxRnGhFBxUk7M5fFy3gwAVO8sdui9n5s2QU=;
        b=cZIepr8FbvURkFHpxq/9TOaPb46dCMKfqQPG/nzpTn/wttpY2DS0HJ1ZrqXKR9n7Be
         R10lvtNZVFrtlsGPE5WC6s+36KYFDshU+9nn1lF86r5udOu7t64OyPOYJuE3N5mh3IiQ
         u4iuAWfuQwEwGfg+QTj4Rtu8mP/MB3MWbVY8xqkRDQpe26qrettTzh1127UUXhKtYZZQ
         zEUakEAg5Z62NGw0DEDpIOUFMz8qUBGJAQMIEvWV/KlWsi2XMb45l4QbSpCz+cxKn6z8
         oyGe16QfwjTjMIWz4t4IOy9WYogzH9K5iKbxW3rpIaHDrbZ/YVMvVtcMd0jhujI7TsqW
         u2hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K3AbKHottxRnGhFBxUk7M5fFy3gwAVO8sdui9n5s2QU=;
        b=jbMnuHJkpxDJGlWcNwchQ5eJV++Tki0Aw0hy3VX9yi4rqhhPpyvAYdyiN2qzzaqb8l
         QlyOaFIpI5R5oCd39fUYM0bwe8GRQCNr3rkCjZWxeXMNIttfY7BBxqWtTqhy99GCjolD
         am1nRsjn2lEXDl4/kemqzGT0iEjixL/r9fNiPrsqYUemwRE7fNWTm5jBf2E4k1f3AkT7
         9mXFdndZ5ClCVnuiRorm0IZHgVkgGhHx0TSKJ0WZAMTbHC+EOreYw6DMFeJT7k0ftfpj
         YrtD+5Roo+uZBOxF9pLOIknDhlCEvnuDyzk+wsvcyqYH++NSdIet7hkA+eKkS7Rsv+Ho
         ZbVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Publ7dF0a7EQdJB4swBjMwrWFrEiwNdaNqx5uwj2jLBxlk1QUoRO
	PEZgb84Zzh9U8M+bcx4zgg4=
X-Google-Smtp-Source: APiQypJuTdzYBwf3O5eXWfy4URxcGFwp54SJlUbT22LXnUpjIvXF++7Q5kK/IJpa5i64209iVuW3dw==
X-Received: by 2002:a2e:571a:: with SMTP id l26mr10113405ljb.12.1587391449352;
        Mon, 20 Apr 2020 07:04:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls2038826ljp.1.gmail; Mon, 20
 Apr 2020 07:04:08 -0700 (PDT)
X-Received: by 2002:a2e:5847:: with SMTP id x7mr2337409ljd.61.1587391448769;
        Mon, 20 Apr 2020 07:04:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587391448; cv=none;
        d=google.com; s=arc-20160816;
        b=cVV9T/G2EBqzTSUshpyozMcwwYrWytb/DyrdMTIMl+9L8R9ldXQWDWowIB6JzxuCeI
         oeDQlUYJ0YyeGTPKcglkJgiGMZDuS/7GSusvi4dp2VcMc6jsnop4/BgnoKAL2dt7quIP
         oiioCOXSW0b/eR/m5Vu4Nb/58iRkjOv4Wsb366GVvZd93YNgtGeKu3S9RhUh1N/piX6V
         1Pef0PB0irSJdtIpACfWiL3vavWgw/to7IOfnxudltBKyEnoJpKwvlmQ6+Z2vI4cRFqs
         cQRf9J3LHp6qLJnuCUQOXUbb5PjvlaMLboWoGRV/WBgytaW0c6B3GkoN/uGOTkZQrnfu
         R8FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cuMa7oatx8var+QR+Rwmmp50C8J7BkkYmNVn7b8fhvM=;
        b=p22UnVz3qIs+01WidN00j/b1Zw7ZEg2qoxNtIcN5OTSZVyq28CHCXge8uCEAEhVR/I
         M6ZTM2gD2LHQ+r281fjX12o0eeacreiYrsUdwChQj7AFCC5oKm5X+csdQWa1TqJQrJDg
         oVcqrZIcl8H+4/JsezGk4V/aHLE/sxqNuhdLXcqe9wAFBw6BEYSLcI8jluKTN4Y7++Ka
         fZ8iEuPkAY5Gk6OgXUV7TMAM4gB93vLcTGq4xgyBP9z3KFvpbtTcAHJ/Vl/x2HTH91+k
         LQlF+1lx/QtitkPXLRvJ5+9AD4XwlBsRE3qsLrDAEYunBx4USPq+L8QibP0vA/WifSPs
         C/aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=matz@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id q24si130459ljg.4.2020.04.20.07.04.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 07:04:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 16C32ABD7;
	Mon, 20 Apr 2020 14:04:07 +0000 (UTC)
Date: Mon, 20 Apr 2020 14:04:06 +0000 (UTC)
From: Michael Matz <matz@suse.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Jakub Jelinek <jakub@redhat.com>, Borislav Petkov <bp@alien8.de>, 
    Sergei Trofimovich <slyfox@gentoo.org>, 
    LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
    Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
    Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
In-Reply-To: <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
Message-ID: <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
References: <20200415074842.GA31016@zn.tnic> <alpine.LSU.2.21.2004151445520.11688@wotan.suse.de> <20200415231930.19755bc7@sf> <20200417075739.GA7322@zn.tnic> <20200417080726.GS2424@tucnak> <20200417084224.GB7322@zn.tnic> <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic> <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com> <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com> <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: matz@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=matz@suse.de
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

Hello,

On Fri, 17 Apr 2020, Nick Desaulniers wrote:

> Ah seems we do have __attribute__((no_selector))
> (https://reviews.llvm.org/D46300,
> https://releases.llvm.org/7.0.0/tools/clang/docs/AttributeReference.html#no-stack-protector-clang-no-stack-protector-clang-no-stack-protector)
> which differs from GCC attribute name.

As you will discover upthread that was tried with GCC and found 
insufficient, as GCC is a bit surprising with optimize attributes: it 
resets every -f option from the command line and applies only the ones 
from the attributes.  Including a potential -fno-omit-frame-pointer, 
causing all kinds of itches :)

(The similar attribute in clang might work less surprising of course).


Ciao,
Michael.

> 
> I'm still catching up on the thread (and my cat is insistent about
> sleeping on my lap while I'm trying to use my laptop), but I like
> https://lore.kernel.org/lkml/20200417190607.GY2424@tucnak/T/#m23d197d3a66a6c7d04c5444af4f51d940895b412
> if it additionally defined __no_stack_protector for compiler-clang.h.
> 
> On Fri, Apr 17, 2020 at 12:06 PM Jakub Jelinek <jakub@redhat.com> wrote:
> >
> > On Fri, Apr 17, 2020 at 11:22:25AM -0700, Nick Desaulniers wrote:
> > > > Sorry, I don't quite follow.  The idea is that an empty asm statement
> > > > in foo() should prevent foo() from being inlined into bar()?
> > >
> > > s/inlined/tail called/
> >
> > Yeah.  The thing is, the caller changes the stack protector guard base
> > value, so at the start of the function it saves a different value then
> > it compares at the end.  But, the function that it calls at the end
> > actually doesn't return, so this isn't a problem.
> > If it is tail called though, the stack protector guard checking is done
> > before the tail call and it crashes.
> > If the called function is marked with noreturn attribute or _Noreturn,
> > at least GCC will also not tail call it and all is fine, but not sure
> > what LLVM does in that case.
> 
> Seems fine? https://godbolt.org/z/VEoEfw
> (try commenting out the __attribute__((noreturn)) to observe the tail calls.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LSU.2.21.2004201401120.11688%40wotan.suse.de.
