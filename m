Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLHPSH6QKGQE6CDU7SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BB12A8986
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 23:07:42 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id z130sf2090019pgz.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 14:07:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604614060; cv=pass;
        d=google.com; s=arc-20160816;
        b=nloz2OUh2gR/P9jow0kkkSIE0nxnV4iwfjhs5CJ1h+lhSggFpb+uavZuPDQ8oaH093
         zoq4gFRjs2dPZSMgteuaXYhoZa4SQrH8JlNEa/I221fURqNBF6yb59yVfn0gGOfvA5DY
         31A/Jj7y1rMVtkeGn34HWI/CN+YBYjvzP5zPh383AXg7LZRn4JGsWwiCeqKwjY/PJ47U
         wKCN0F1kVqrb3RooB6EOMgcLpZxqe/N206VkoFaUG+vNoTGh0ADKqjZlBiuZd5+YJnMR
         jetg0b3sDEJoNT1eFFFMC+eaQhbsHmeAn6QxScw2srVj4Ks4NlIqeFMU7p7Pal6yVrDe
         UsOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hcqVKnEMa0wUjrUwKt6v1kXJQuNws4voy2mFNhs+dNw=;
        b=t1eV4CkYHgR4OWlkBBsV+CbJhfKllEqjXjo3CduTzQzKdGqpScWBuXbkkhSb1NjRxO
         NfOfgnml5BQdYZ3plXXaKFo68fUOPsMASjOk88XSOjiF7tTGl9pdiojiE3SusRn60IHC
         o+7B0yZphMZTIV+H9o/Bn/JmhjJtR0F7DKmLWymsX+4gV66huvHtZgmf9Wj8XxP4UI/e
         uojCYzwI9Ly87AmDaBRizqIk3l4kV4lfjbFQ34WV6FvrkMSIEKAq3C2oMUY8c35+E5Cp
         +6aca4i14NpywZeNBlBl2rz00Ng/cj1zOtACqnnMdQ40X0BHabHtd28h+fsCW8njfxQ1
         j9Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E+zXExFk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hcqVKnEMa0wUjrUwKt6v1kXJQuNws4voy2mFNhs+dNw=;
        b=FODmZZzma9XVGzSArxW5tg2ajGAA+L6eqivebXctojQj8aBAyw2KHO2rrEDxS4Vi0p
         TLt+3psYmH9BGgxmjlxkd00l7axbsD9YKjyKdiDSMQhMSKozkObqzIH7PhCodxgpZDR7
         x9dTZXUbXYuSGAnF0L+6BqTO3+qlOA0fR6Cu97zzedaAh/WBw3eSpDH/vOhLMSmV7TQw
         iDMaPKirFhaO7ghdJz08hRrRyIg9Y6m30y/bLn75BLCfmstqSdvuSP7sN3vJfgtTGfuy
         tXgAjPdcYXSR21KJPyashnnRCR/hPdZcTihvmfXr1ka5M1d1JYcMNNY26diCmoPthSv6
         ykWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hcqVKnEMa0wUjrUwKt6v1kXJQuNws4voy2mFNhs+dNw=;
        b=VmArn6n8vDnbtcWmU3ThpSvHs76xXMZ8ZOmZWAvRvUeXT2NF9FvKGfDhPaWyKEleD3
         aEk1S42w2Q9mXVG1ES4vczVj3DQTbYsHfBiZT/n/M3xzG1abZqEVFyZb8JEepXGI9j0m
         +6seKzDj3IdqjlCDOLwVhUudqxW38OqBRaK21P2rvzzWZdBSZs9wGIsQIywowYuirgUM
         OHSoNLX8qeKkGJUWssKRZh58t8s+CRQbTPkmWxox8fGtSZ6HiD9hQTe75I9rFJLykn1y
         oPoVChz5Nik/NWSvcQqK8zDzlR1xT0KvEgTz9VmC8ZSrli4mQPjy4b7FtTtiKpw8R/l3
         cwGg==
X-Gm-Message-State: AOAM530jjNRpZjjKSrPEMvQFtZVy9IMMZ5eXy5sXHchavEpDZqzmATua
	+jMQ4WfRCmvggHlu2iSu6Aw=
X-Google-Smtp-Source: ABdhPJxNgMvI9V+5+kM9mmcf19Df4M3kzC6cSxMq4ixsQ3yz0M7l/Y3lqyK9sXIJuh0Ei01fvOX10Q==
X-Received: by 2002:a63:6645:: with SMTP id a66mr4446479pgc.207.1604614060596;
        Thu, 05 Nov 2020 14:07:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c395:: with SMTP id h21ls1551138pjt.3.gmail; Thu, 05
 Nov 2020 14:07:40 -0800 (PST)
X-Received: by 2002:a17:90a:f314:: with SMTP id ca20mr4659828pjb.191.1604614060042;
        Thu, 05 Nov 2020 14:07:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604614060; cv=none;
        d=google.com; s=arc-20160816;
        b=cw4gTtQvDMIFwRwIZhlq84S9KlPa6KNQXTMKK+rwZmUzQ3qJ6XmFMNrfqzlT0AD+Tb
         mOCkElDGqpyWdRCWGG7JWWtQYNV1jzZ871r+NQEpvFPTYCC3C76q+JabBBbZdDO2Mll6
         Fdd1nCF08LIM88s6yshyHMkhgQLFGiFkbaervtjJODi1/oG5mb6eNMobNkW5btbU0M7a
         YlV2ca3OsBxJxjQyVqEq9b2U4fR6pi3CU6sA5RC5nglwJHLiEo7qokxpQ2SjDDT9dg7A
         16NruNCTXzuoyZxsF44LDdABYJVLfkZmsp3gx0qTN53317c3Y//Vsd8uTVzM1Zj6w8AH
         PbXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=F1tdU0iwEt5U3ppZ6QF+sxIWHxGyMRLX1KSyIl5H+7c=;
        b=yjG8LnNjMo4DbA6bZSLD0VU3JYkiNW1N/jqcNRfqIPlWuAcFNrxvkDZvGADexagxWF
         cy9fRdYLzpO6RVkVyhxnFfmOVw+BE9Y/79xRlm9cZm4iosbkIgZTAwP8deR79TXouMLp
         g9TbxV+uMxpwZhk+0WMZhOYlsHGNMUiGj/d1q74HLQjrW8wrAcHkE+XmUt4eueqdIlLS
         La3L5bwlpR3cbzozyBN1K3z9zi/7/ajIXegHK4BFdiNrnH2epdbYtG1WcCxMtDn66KzD
         w1EIe3d+3qSYFr77T/FsC3xr9EXrTOfySqh7UmqaLtjlauqpQWYAL3IG5fZjKeirohqf
         C7VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E+zXExFk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v24si184566plo.1.2020.11.05.14.07.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 14:07:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x13so2425144pfa.9
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 14:07:40 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr4335085pjb.25.1604614059556;
 Thu, 05 Nov 2020 14:07:39 -0800 (PST)
MIME-Version: 1.0
References: <CA+SOCLJMyUZ8c0e5xkvm+r0pMxBoUxmQRaoasKOS2T28Z10Ziw@mail.gmail.com>
 <20201105215226.GC2123793@kroah.com>
In-Reply-To: <20201105215226.GC2123793@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Nov 2020 14:07:28 -0800
Message-ID: <CAKwvOdkKcKru44CPmPiT9_5ACWiz50Gi12yKTR=pq4MeSPGvGg@mail.gmail.com>
Subject: Re: Patches for building kernel 5.4 with LLVM's integrated assembler
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Jian Cai <jiancai@google.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Sasha Levin <sashal@kernel.org>, Fangrui Song <maskray@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Dmitry Golovin <dima@golovin.in>, Borislav Petkov <bp@suse.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, mbenes@suse.cz, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E+zXExFk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Nov 5, 2020 at 1:51 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Nov 03, 2020 at 02:51:32PM -0800, Jian Cai wrote:
> > Dear Stable kernel maintainers,
> >
> > Please consider cherry picking the following commits (ordered by commit
> > time) ino linux-5.4.y.
> >
> > ffedeeb780dc linkage: Introduce new macros for assembler symbols
> >
> > 35e61c77ef38 arm64: asm: Add new-style position independent function
> > annotations
> >
> > 3ac0f4526dfb arm64: lib: Use modern annotations for assembly functions
> >
> > ec9d78070de9 arm64: Change .weak to SYM_FUNC_START_WEAK_PI for
> > arch/arm64/lib/mem*.S
> >
> > The first three are required to apply the last patch. This would unblock
> > Chrome OS to build with LLVM's integrated assembler (Please see
> > http://crbug.com/1143847 for details).
>
> I've done this, but does this also provide this functionality for x86?

We're in the process of fixing this for x86 and 32b ARM.  The aarch64
patch made it to mainline the fastest.  Patches have been
posted+reviewed for the other two, just not merged up yet.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkKcKru44CPmPiT9_5ACWiz50Gi12yKTR%3Dpq4MeSPGvGg%40mail.gmail.com.
