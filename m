Return-Path: <clang-built-linux+bncBAABBVNN275QKGQEPHQJFXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D39827FFD7
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 15:17:09 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id r10sf1233533wmh.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 06:17:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601558229; cv=pass;
        d=google.com; s=arc-20160816;
        b=vX//wSeNfOJ/KLFl1GW8ShI74cpjS+OzoREXx5IgwvYR3aLkxcJOxVdVUrRsfEnW3s
         k2lk4ejkaBut8o0568Dd4EcZJXFJR1+LrkhTxfVQ/+3Dnb/uKzklheDg9C+DDFDJMANL
         81jliWhhrsalBTCEntGEOLpct4++gULq4W6dv30xvJGDlJBDAuS3+bLXfZyjT8KkGwh/
         6pqKAx5z3xFmC1w67zlhXxqhdTYRi+oBFJaeBxhlLxlpGe1bd5GYicPLiNW/GTs51Cnf
         dYZhLeOdgzsIDuZq4orNXBoWOkh2+1tEC7WdtCbkkJdZqFNNCpGTdnFl8WSzLo4oMV+M
         hyog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6eDi17WhItgzGfnomeezjmRzNGIHvxRjGeimnpmeRH0=;
        b=iREPu8M8wqqCt4QWjXXgx6eL012sXlxDUZ9zgOwVfuGr4nZ9Wu4HphIxR1ivR1rFw1
         3kTjmMLUvXmLHyimx+bTB0YVqnovenYjN6LEe8JHKgKu3C3ofd1kYSBpZFyId34AFRQr
         xvwssDXW3JKqhzbwwCxSbJZrErctQVEzCipYnKAVc7Xi1YhHpeQbpUBL8yLdp1CPDETC
         MQ/uZUp5xGAG1VEP3INtAuHpeobCtinfaqPgp/X1NBKIfkIRRWGhL4fDZX1BCEuA1VcJ
         N19lrV2oooAhYrI8tiri+s3/b9lClzIXReiS3pUV8n6RTfItmfgaQuvtWfTGUtzsJcZ8
         9OMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=mbenes@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6eDi17WhItgzGfnomeezjmRzNGIHvxRjGeimnpmeRH0=;
        b=sVDmEs30dUdodGtrXqCpq/7x8aNXhE/b9lYgmDuvp7FqZsToVruJZE5FeF1AtQpuc/
         1dhgKpRfOu6OLrUigilgouKVpRt41ZK4FrtwsOQwpvw7OSAyZKznnNKknYvOib1nhiJH
         ksUei4z5Rl+dc0LXw2xoFKlneOmSLBEbRj8ruM+3ZUGmJKjH/dN+a9l4i7O5P+1acQYg
         nerwMXMCbAIs9F5/3Vixsr1j3pGgTE6mpyB4L/obLrTrIY7x7lk4gM0qegFUWmHeB3R+
         DbaU9Z4AURWjbNaaFkA1AboFiOo1eahI7yIi+LnTzG0aZJEdbq6c0T6S0GhWJNVUlPmn
         RQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6eDi17WhItgzGfnomeezjmRzNGIHvxRjGeimnpmeRH0=;
        b=eXi5j9NWlIuCuPAGmKw0yWCL80YHrTbd3p5dyz3DGoO0EB54BNKIglMhaK8yM8OqkN
         kMHE7D4DYvu9flHpB6c9sjEvqnCZUWfcAYbp681h5Qhvwz0KpMZgfqA+jqaNo2Z1AYDi
         uaG3HF3PxIFPJDdBvPTu9LxnRQmj9uxQN1byV9+nZOeUd0EmmGmK9V4Q8QYVDUY+PK6V
         yI6Ar99/SQ1Ru0M5oix7IkLo6MyBOrS6nJdX00Bo3K1DR7Apw6ZujI9AzGZ5rO0NTcdj
         PGOPg7TskSo0+SUTlkWD01jk1IpCwaDTVkzkZpkAzf/x+M7WMmuWPtth9YcQ/jVAS7Im
         CiOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329GBs9Ja4n/Ouh3E4ey28LTBQwSdEJt4VZAoG62/HBFstWOMEX
	3WLHncqIpJ00g2AOzixQDwI=
X-Google-Smtp-Source: ABdhPJyVRY/+Az/4ihEW/3kTZDFEMyX+Y2lWxyicFekyugtk7jux861K40iEbtTkdKlAJ4LxzGGysA==
X-Received: by 2002:a1c:4b0f:: with SMTP id y15mr8891793wma.165.1601558229237;
        Thu, 01 Oct 2020 06:17:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd0a:: with SMTP id a10ls4746956wrm.2.gmail; Thu, 01 Oct
 2020 06:17:08 -0700 (PDT)
X-Received: by 2002:a5d:6cb1:: with SMTP id a17mr9307793wra.386.1601558228524;
        Thu, 01 Oct 2020 06:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601558228; cv=none;
        d=google.com; s=arc-20160816;
        b=ry1kYwCzJWTvgcmczxINdW9EIjGCU42lOZbXLNLg1AfRwFAjA0mLFKaW6irMLXiUd/
         zoaxsQrcqRoSINIFaGxqTTYgW4AC7H6VtisKGtK1UgfbIbqjRZk/ZCR9r6cBJ6V14cQ7
         1swcsshlCHBdE4mcK9fvVv7G6fP0Of5BawVMZNutT8OyEq9o8lUkfsGrNv3/bq2IQ/rm
         7FBX3sRMKSiL+IPanBFBUwax6MYd+EOS9XDF3+QS27P9a2DDDQrMa6OJFr2RveFI2w52
         czc1QYxjZAopaYefLXRO0K1QNKuD40gWI8Al30yD5kHd+3/XXhX1GZ+iTeDc/zA42MHQ
         nbOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3KjKMtURk2usGmT0rEknY02QPzYSnobZAYU2m1dyh00=;
        b=NH9AZhHA4FLpqdojwm6tAFAMwy7NKqynRD/SEq5b50EJRCtRrWBYTRpZflo8yT0Xwz
         FMv38WCFxrGqSX2GvmMa/2X68ZejplRrgEdHgxm0Z0nJy/WOJh8poPt9qrvshKesmOb4
         hqBCPTRXciqgzI2rGFNHh6qVfspp8rfGOEu5YXkl+zZkoAlPkK05S67bLcRHBvCPCkQp
         I1LNQCRFwxNTjzElK6Gl+MQE+/bT0DYBUddPz+ehuaibbi3SBXZ8JXE4ptnbQlDjdQ3K
         GrEtlEr3p+ciC1WjSaQ3Mg+oypgAc2VD4jZUDqILr2RUUDDeZG/QRdIyfb7HFxVM5eZA
         8xWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=mbenes@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id 24si178641wmg.1.2020.10.01.06.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 06:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 0B2A4AF59;
	Thu,  1 Oct 2020 13:17:08 +0000 (UTC)
Date: Thu, 1 Oct 2020 15:17:07 +0200 (CEST)
From: Miroslav Benes <mbenes@suse.cz>
To: Sami Tolvanen <samitolvanen@google.com>
cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
    Steven Rostedt <rostedt@goodmis.org>, 
    Peter Zijlstra <peterz@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    "Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
    linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
    linux-pci@vger.kernel.org, x86@kernel.org, jthierry@redhat.com, 
    jpoimboe@redhat.com
Subject: Re: [PATCH v4 04/29] objtool: Add a pass for generating
 __mcount_loc
In-Reply-To: <20200929214631.3516445-5-samitolvanen@google.com>
Message-ID: <alpine.LSU.2.21.2010011504340.6689@pobox.suse.cz>
References: <20200929214631.3516445-1-samitolvanen@google.com> <20200929214631.3516445-5-samitolvanen@google.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mbenes@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=mbenes@suse.cz
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

Hi Sami,

On Tue, 29 Sep 2020, Sami Tolvanen wrote:

> From: Peter Zijlstra <peterz@infradead.org>
> 
> Add the --mcount option for generating __mcount_loc sections
> needed for dynamic ftrace. Using this pass requires the kernel to
> be compiled with -mfentry and CC_USING_NOP_MCOUNT to be defined
> in Makefile.
> 
> Link: https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/
> Signed-off-by: Peter Zijlstra <peterz@infradead.org>
> [Sami: rebased to mainline, dropped config changes, fixed to actually use
>        --mcount, and wrote a commit message.]
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

I am sorry to reply on v4. Should have been sooner.

Julien has been sending patches to make objtool's check functionality 
arch-agnostic as much as possible. So it seems to me that the patch should 
be based on the effort

I also wonder about making 'mcount' command separate from 'check'. Similar 
to what is 'orc' now. But that could be done later.

See tip-tree/objtool/core for both.

Thanks
Miroslav

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LSU.2.21.2010011504340.6689%40pobox.suse.cz.
