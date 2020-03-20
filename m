Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBI5P2LZQKGQEGFCPL7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F92118CB49
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 11:15:01 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id h186sf801981qkc.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 03:15:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584699300; cv=pass;
        d=google.com; s=arc-20160816;
        b=OEw8YrWh0YD7m9f2DFLgItRqNHUyU3jwBeLwovNGtK6M/HgViC5liLb7GBcv2TSr26
         V9yBVkDNXGa/pRNTUXexCYOl7MMjssOggFd23wHrgZd4fqzKJFjWOXcGYsJuZdQ57jHm
         m9Uzvn49fKPTZg5BA4sSAY40ZGYSVd6ghaHu0vM+8Is1ZIpOxc7AiJ+RYQQMRE+d7B1Q
         QQ5P7NJGPFdOsQLp9vI9TpQvR0EywqeEyVoCur0Pgd0ZUgjjMou39WCeSRdxcx3hsoKY
         o3jMs9+awE5DLec92XwxUALaAUld4TNBTipEv9ASjfbpNo7Z6w60ILZlqewjfrGUazGN
         Q75w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7a+YX1yaLgP3OMSH9t6HuPML32UbvJWq9UZPWGci3kY=;
        b=ZzmoJ+LLTOCAnco8vWCJvfjTH0qPfE1sbn+yIaI+s9ahn9WISh25w6eUz2v4vhz3nK
         Q9QbtKVVUVT1nIXSzTK0rGO//kMvt+85GhBz61GLnHeM/Dq5XGDFf46gj9T8vQBkhWON
         PQbgxXNt9KxsNj3UcCY25zEq6A9GWSEDwaLPHm0l/7y0/qTarzNYhiO8u7T1TD+SZ0st
         rJV+FqiSxY/rECz0PP4hSwaHPezpguAk2LSKRAYDtqBjVZZSHyC8pRTNhd4XSBzbBL2l
         8K85KoAd7aQ18FIQu+4tk3azEH+s0eSDoCwACczSDU5jnHNH4JhunqG2A8ob/xNi4za5
         vgUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=JYNioPAX;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7a+YX1yaLgP3OMSH9t6HuPML32UbvJWq9UZPWGci3kY=;
        b=PniOdag8Lc23qgnl8xcuM+M5x7hfv3WqVhbdx51DRdFm1gFwM53NBF6eUHbpTO7GqL
         Py7gVqhNgbE3tZdQvzHBx2VeJlVPoJqybLClMnYLVXo1pwJTmZZGX65V8SXRo9GCjDzj
         A+jJoqbBjO0dJuUjxhQYHKxjS09axZJpvMkIYOyvcWIUnpxuhEU+BSoJKxrcFNRKVR0+
         HlmduSFzgmlhICY83HZz8zL/l+pPXs3lFI1OjrXk+EWePkLC/13M6kWpBuQe8O6TTKCu
         gyMkXLnCF7kRJ8xuS/ijFc438JDG7MivHKRPOvGG7IXnyotJjTxjYPe4D/678DVGAFlu
         Ga5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7a+YX1yaLgP3OMSH9t6HuPML32UbvJWq9UZPWGci3kY=;
        b=edDJ5R7JhWvItGdB3iC7ZJyQ2xbT92hQr5R0AqeTyzPBNm5a49BuAYPuEFxT+ji21y
         jW+yo+8663CGTGgphyaC5B5/yJsOxRRAOvra6UZuwokP4psQ/GmMsj+pmv9k4F0gZgPS
         zPJLRqDjfAaf0tykCMRapbJmgsf7dmcTFaUKeicTxMhZOZgFQVntrxw63OO0RRw6L+9x
         4z+CnVsAY9+pNQXe4sTnu7dW8OqnN9KSif3yLJy5VsCc0OaRrH/Pjly0hvSDRv99Pwaa
         GtgFt0OuYbd/n+iCD4kr3i/5WjIHVC/n8dCjRxetTKUPvAhoKn0cFXGlAa5M4903e9zu
         jCTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Y7lAug7/L1sWO0hMqLZ+Zn1f8ikZN4qOGhY70Kgu52iuxl19v
	vBzAJg7N9Uje7f3WFkyco/c=
X-Google-Smtp-Source: ADFU+vv8yxXOEl7tQl0ovlo53H4g+Q857IsPCUrIni47BFxEAS8pcRDLu1sLWWWxM9iUtyVKmaiPUA==
X-Received: by 2002:ac8:31af:: with SMTP id h44mr1446423qte.252.1584699300012;
        Fri, 20 Mar 2020 03:15:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e41:: with SMTP id h62ls2903074qke.8.gmail; Fri, 20 Mar
 2020 03:14:59 -0700 (PDT)
X-Received: by 2002:a37:a854:: with SMTP id r81mr6953059qke.384.1584699299444;
        Fri, 20 Mar 2020 03:14:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584699299; cv=none;
        d=google.com; s=arc-20160816;
        b=qBLfbcSmAlaWYrj7IerRfiqB7JsKJEPM/TUeRlAXHyzuVR/6FnzivtXdyjHJc9s64i
         wKP9eDxJKutsRdWnsQPVKh79wgxbVSwcK10SFR/qQ4otFDLe2XSjn8Ql41b9bBbMOgrs
         13EgdnXoPHfONH6AYaLpWxcLW6OVEt9Yh19VmS4pekmJdPVDKLsebE6FoTQ1YP2zr+kZ
         q7mx2fh27Rc3aBz/B8Milc+ok6fb35LdVuYvHrUig9TcSaVTasvIM/nX9bk7i2Ja4DYY
         xAbb4qCpMRd9g5m29Ub5spcKTEAxMDe+/pMKrnrDHquqwZHCVqdbLC7bFTfXUPkX+w+u
         SMfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qZPkWH0ejas89PfCOt2YN8D8IASSNmovo1OVly9RpVc=;
        b=OedRcbWJQTo0936/CgIbcCn5p+rOaf/sSx+7QY8jVJkeg5rHE3qPaHvNH3/22DjypP
         NlArl/vd9alvzQqaGcnFauZKcvCLPK6unARwZ2ZSguzucXzlSLhOLoDfru16OAj67TG9
         H7PLn01Q/BtCWy15ggTF6MwsELam8y8GBxi2pLmTbZG+/VnaQFuqv/kTjS54DWCda9td
         y/HVNhwH13WCgZgBEGMGRJ2zXYYzEHZ63NoxY1/PiVHftmvmtJ+vt2ohgoX2XnTyakWE
         aa70YAuURKVJ5fiHte7T+AhqDeOg/1WfkeHo8ZLuXs5JyHDTwhZoCjNHq8+gtxWFrNXK
         uYrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=JYNioPAX;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id d193si258420qke.1.2020.03.20.03.14.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2020 03:14:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFEg5-000297-Rj; Fri, 20 Mar 2020 10:14:58 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7EDC53012C3;
	Fri, 20 Mar 2020 11:14:55 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 680A4287266DE; Fri, 20 Mar 2020 11:14:55 +0100 (CET)
Date: Fri, 20 Mar 2020 11:14:55 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: call to memset() with UACCESS enabled
Message-ID: <20200320101455.GB20696@hirez.programming.kicks-ass.net>
References: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=JYNioPAX;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Mar 19, 2020 at 01:37:04PM -0700, Nick Desaulniers wrote:
> Hello Josh and Peter,
> I'm looking to track down what I think is our last objtool warning:
> https://github.com/ClangBuiltLinux/linux/issues/876
> 
> Can you tell me a little bit more about what uaccess is?  I wonder if
> an assignment is getting turned into a memset outside of a "critical
> section" (for some meaning of "critical section" that I don't yet
> understand), which is what objtool is validating against?

This is x86_64 SMAP EFLAGS.AC checking. When SMAP is enabled, kernel
code (CPL0) can only access memory with _PAGE_USER set when ELFAGS.AC is
set. Otherwise it goes *bang*.

Now, the x86_64 context switch code does not save/restore EFLAGS,
because performance.

To avoid EFLAGS.AC leaking out and destroying the benefit of this
protection, the rule is that any code that has AC set must not CALL/RET.
Because if it were to accidentally stumble upon a call to schedule(),
our AC flag would leak, and worse, it might be cleared by the time we
get back and our valid access goes *splat*.

 [ exceptions, and thereby also preemption, do save/restore EFLAGS per
   the architecture ]

Function tracing in particular is suspect, it will hook into pretty much
everything and _will_ call preempt_enable(), which is a call to
schedule().

Now, objtool has a minimal whitelist of functions that are allowed,
these are mostly compiler instrumentation calls which are unavoidable.
All the kernel implementations of them are notrace and they will
save/restore EFLAGS themselves before calling out again.

See for example KASAN's check_memory_region() (and by extention
__asan_{load,store}*_noabort()). mm/kasan/Makefile strips
CC_FLAGS_FTRACE and kasan_report() will
user_access_save()/user_access_restore().

Am I right in thinking that this memset() call is inserted by some
'clever' LLVM optimizer pass trying to optimize writing a few 0s ?

Looking at the implementation in arch/x86/lib/memset_64.S, we could
arguably whitelist it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320101455.GB20696%40hirez.programming.kicks-ass.net.
