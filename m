Return-Path: <clang-built-linux+bncBC2ORX645YPRBDFX4L4AKGQE3MEFXVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E906722A071
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 22:03:24 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id x190sf994773lff.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 13:03:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595448204; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0UXVATZYxCwjGM8E4y7Gw8W/fw0mCADD0xGVF4/PRA0txcMeqJ57SSUWCRVVrXsfE
         0+qEGe3LL0sY6lEHSmQ6L7Ob5sS2BRJ3/SyP8U7KrctvjGSWydfp0yJnR/hOO7pBGgUp
         YNwHHanaJ/Fg9aWJpG32BubDXJO78y2M3lv0pk7ZyRkQYceSIkXRrmYPJXEvRLqhL/ZK
         L+u06k3JuL4tSHa3qEiMnZh7VFOZ9Bh8Mt1IbGL6y59L8AMIXTNJI9ymcon6em5GiguF
         hdlk5kVSUPHQjfShKcYkNeUOkQcwEE3h7ckrDf/bkjlfXEmmIwdb1BvMDC+NfQkYASlo
         IrcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AiGWvVp3es4jJfTOonkBY02V2jm0l3JZ24K6U8zYRDw=;
        b=OubAVbBUb7w1sSl9D0E5n2ERrxtrGq6DDkqlV/ztrEr+4TIuBTIsuEF76NBsczKE0M
         NZKQ4+6AM4vfRaZAOZBb47+hIfM39q+KTJb0WooWPJQA7cJff+Nek1BK0hVzDwDzgfmZ
         LNOeu/ZdQPU+lzzF2QfrCk0aF3H4qPeBEtIRnD/O2xJa7Fd3tN9epRK5RwS1ZxTbDM5e
         3zLb3rofGQxumWX9sthxX3dx6vYDrTJk9wp+rE48HA5OGKeC0ECtazKNSwQRHUNpenzG
         MlfibZWWlgVZ3JyJwTZ2g6buiYNVd9JwZC5uCQCB9aYbd8ow27eSEKFMs+iITfO43Sov
         LeFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PPTfc7of;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AiGWvVp3es4jJfTOonkBY02V2jm0l3JZ24K6U8zYRDw=;
        b=qzOng/AvzkVK9ZIIr4oRxTmd0Q+mSis+wmVBmOnMyENLK8feJ1si2s2Hx3FMpJF3sy
         wGn9jYuhuKJZAkSwprCLNiobGdJ5iSgB67pEYx6tQe2YhGyWdvEiAkUWotwqSTdHDxbd
         eih92aalUuK6TVqUwMLxyoY2l1QV9EcJ6sDrJwD6ZeK73iBvREwVTDCycd8oq3Iw7nAp
         Il4IJLB5S9e8Zp7qcNVvNVkrVFxitPQ6fBYK7KqYUysIlwsix4rYJg9HhiwbIRHOX4z5
         qSUduTHDCvt3zJ/5iCOxWsoIIKmO36EPFQcAJOYZa6RN31BOU6nQMRK+MXBJCjohxnPT
         2d2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AiGWvVp3es4jJfTOonkBY02V2jm0l3JZ24K6U8zYRDw=;
        b=hr86eBTNkcZdUWSPZHbxyIlvjpR6VRRlluGyMfeFidC0EOEr1MajfX93UdPGO7/55E
         5rVBU4KEru3KPAc3mv/6FqVvvfq6+Mk444pBu6MvyZzGQ4ETMfLdQhecr/mJADqo3D+O
         57XjUXVrephpyAJGef0Bsc59+g2uzhjnMHkSkeovFf5IQ/hZi4w2AgoTBTnoTUKZAqEl
         7W/5SgioDE8dz3CWCgoiOP1ylodD8+hhR3+HYVsb0N8YsGdLF/JREp7XQpnH8Xz0+DAE
         v2XO5LkUPRXtEgxHfyHGz9ewu/msnE51H7g8588YzStJX5zRO6/c9f+phqep7WGxDWSH
         O2Bg==
X-Gm-Message-State: AOAM532vER4d/mT8ZCW9Rs05B5wQbMPe7k/rMEEfccf6FfwypGvAsMkP
	hLrIWIcMqXunFqb03RPaQ44=
X-Google-Smtp-Source: ABdhPJzJhZj7MrciSvzXX+bA4+5YFskZT8gDlXAF9GgFxsbyIW0jDRKBUSMj0Eiqjez2Oi2EUUS9QQ==
X-Received: by 2002:a2e:978c:: with SMTP id y12mr383941lji.270.1595448204495;
        Wed, 22 Jul 2020 13:03:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:60e:: with SMTP id 14ls1089977lfg.0.gmail; Wed, 22 Jul
 2020 13:03:23 -0700 (PDT)
X-Received: by 2002:ac2:5984:: with SMTP id w4mr500753lfn.28.1595448203787;
        Wed, 22 Jul 2020 13:03:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595448203; cv=none;
        d=google.com; s=arc-20160816;
        b=MS74WMj9pzgGXjA/LhMMBQEjOXO7z7S0oBor+vCrcrC+Z3Q+oXo84WiFe6p6L4FUm3
         pQZCCn5ueLQUMcb7fcFmEe9IwZ1BlUfGqzRGcXui1zi2w8iyYDAu3pWQ/Nx++ULAuhhw
         P68bvLXcpuhyaznHSubAhjqERUsSnixplJGKznA9sxdo4iPxN8vjAt2puguGmQuEK6C2
         GSF/2gJpZCAPUPjQ/J0Xt6S7vlWHQFlDnrffeNLCd46cqTW6GnK4CkuYaMIjmwtVhZBn
         NfwFXGu8pvWlDVqjp0a2n6VL6hePF6So9gtuGXmmu1U/k8pXgsQA5TYsrefUm6L9kIlH
         dcAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q5uho8c111Sif1rjA6es7LKqax+bTf/baHAxUzEgiBs=;
        b=fqF6Rzk+FAD9JAoW8uqrU+5QWKuMtNKIptg+yLMBxfZN3jOUeK8KENXJR3h/L3iS2G
         G3Ne3e4ek9vsYUhEdaiFb2lLCn1Pu/unffEmUZjsOkxvfl88Aa/WQlk2CVLqgndXrsG5
         RFjOS6C6ajHG/vr2sF+mVIhrNiE8sZM0xu5p0F29KaTcTttX+LDsFRsIBdYAqWWbBNFS
         7xiszFfFFYzjeSCfJVUxyTGqxWUkLjLtFvPf7gxWS7tXWdpvhxIhi2ocycW5igOoob5i
         YMJnUL4/ZlSTVQ0MULJPHUP2JolQ1Ont1uViY+EuyXQ7aYG2VquDwH5J2onq93Ay/ziz
         aTrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PPTfc7of;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id z26si31273lfe.5.2020.07.22.13.03.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 13:03:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id w9so3596699ejc.8
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 13:03:23 -0700 (PDT)
X-Received: by 2002:a17:906:6959:: with SMTP id c25mr1128516ejs.375.1595448203126;
 Wed, 22 Jul 2020 13:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com> <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com> <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com> <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com> <20200626112931.GF4817@hirez.programming.kicks-ass.net>
 <20200722135542.41127cc4@oasis.local.home> <20200722184137.GP10769@hirez.programming.kicks-ass.net>
 <20200722150943.53046592@oasis.local.home>
In-Reply-To: <20200722150943.53046592@oasis.local.home>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Jul 2020 13:03:12 -0700
Message-ID: <CABCJKufW8rYG-R7b=ad8E5oRd+1xrVknWcTd2VFuvE7=SPtoTA@mail.gmail.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PPTfc7of;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::642
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Jul 22, 2020 at 12:09 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Wed, 22 Jul 2020 20:41:37 +0200
> Peter Zijlstra <peterz@infradead.org> wrote:
>
> > > That said, Andi Kleen added an option to gcc called -mnop-mcount which
> > > will have gcc do both create the mcount section and convert the calls
> > > into nops. When doing so, it defines CC_USING_NOP_MCOUNT which will
> > > tell ftrace to expect the calls to already be converted.
> >
> > That seems like the much easier solution, then we can forget about
> > recordmcount / objtool entirely for this.
>
> Of course that was only for some gcc compilers, and I'm not sure if
> clang can do this.
>
> Or do you just see all compilers doing this in the future, and not
> worrying about record-mcount at all, and bothering with objtool?

Clang appears to only support -mrecord-mcount and -mnop-mcount for
s390, so we still need recordmcount / objtool for x86.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufW8rYG-R7b%3Dad8E5oRd%2B1xrVknWcTd2VFuvE7%3DSPtoTA%40mail.gmail.com.
