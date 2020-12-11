Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBGXZZT7AKGQESUEAPWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF2B2D72D9
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:32:12 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id e28sf6019623pfl.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 01:32:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607679131; cv=pass;
        d=google.com; s=arc-20160816;
        b=BvZoQfa9NqP1e1e0UQX19ONj0sW1HSJy0JTfRsNgIXl5L7emZSxT2mChaU9mYLvJ5z
         LtyK12p8CMVCjPK1Hczreqe2mqADnlIUkitMRw8exmazDsG5hmgT1ZL5yVDYkGsMXuf6
         Cg11/5bRGOrbLr5HIMmHD689Yw1hNNeQY0iCxMFcU2HjWzJ57aa25UjaNi/j4hjQWjSC
         c+7bBbI1F6yDoonLehbS2s7GdNE7vLRHlNByd8ObeYcjRfoa3/KG1+vOnQOtxoCvl0Dz
         lurZzLgqr8ULZN43PQ2l79BOsk2gMHd9z69wrmmpfB6GBCg23GjTENelgJvmbt+1sfRK
         8p3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sxOLEraqhzdol4yPeRPJdhvU/wMf3UvYgO+fYgLpKbM=;
        b=D+IcWOBFoHfPz3qoGI2znqjCxpfmc7XboCtuoEqgUZIKl1hFxRjdzi//vxuw/ya70o
         WX25DVzKzgY+5a3XZ+jumzeCpmw7XD424egRIaXeViaYBFDQ0DYJgdSsfxgQ2TMydzaY
         2gCh/FDfO7TrYLwGeDa+EeMtI+Ai6Idy18PJmI/m9Wa0EOpWwamvQy5RnAd+peSP2qbl
         H+q7dmeGwGNLXnuKdgKcjg8sS6zGTKPE/dSPzKkcXZV03p9DpaNsAPbmFXSRG5Bplx7o
         /MGjUHq7v8bZcG6oT8IMnMZpwxy4Cmg+ELlU5XIHrvxUJ6Q1sAdoPZKHD+wBiykh2y7O
         xkmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=OYF9TEoX;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sxOLEraqhzdol4yPeRPJdhvU/wMf3UvYgO+fYgLpKbM=;
        b=doz/ST74/v61CmfHmXMh9vjVZynMTQXE/Xhg2gz+fgINBN2csuA02LPS+AEHnOmo/6
         sX5SWgVl1RLDlz5BrHqbQa9/OxcmJov3+k9EAbmjIfZv9jBgNLj+nPUuX/3xMmhX1SsO
         MeLCNZnKXV6w/sPhFlpMF/dbjZuktW+QpPPJ7Cdk3asERrfhcc1W8HVJsQpSg6p1S7hM
         ZPPjVtzTvAS/9DQGzSAC+XjbXwoynqYsE8NFzyq8FHCLln84HA9gdAJ8+yWFNuM/i/QH
         Pqw0X63Wumh9xcaQhO+9oHFwNu9Matmo/7q+Nqsa9Q0JQ45ZPPRzV4r4N2lH1KXtWnxa
         eS/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sxOLEraqhzdol4yPeRPJdhvU/wMf3UvYgO+fYgLpKbM=;
        b=KE2uC9Bd28K09j97COtxPZqOE7a1GRqF7Wu5iMGOi9GwrTFP22cXVGRXAWDd7RhFVR
         54rLmHPfa952qgwQR2EN94D4MenKD3RvabLGM2UX2ICmBvBPfqzGU/RP8RWppqgUdvqU
         7Kw3ef+2CRqXotmsJx5btyjkZiTe5byRHVy0/LSIsCDxa+cRk8d9EysWmeXHULU18K0a
         vRZXgE+D2+mfRlvGpbR8Zy8qylBVQuW56jrXVQN8uGMrIxWk84A3DbosC1xH04en+2j3
         gezO6ODTdfIU+UFKU+ONbaulKumUWryNrr181Tlm10Rm07FBxeNamCgTqeI+S7WUX4HE
         6hQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307a9ObIYx3QWluxXBNLe3k/dMAH4LOAHJh0xZyNXyd4NXrRREt
	p7RAe+1l/1DbQt82S81IA3k=
X-Google-Smtp-Source: ABdhPJxA7ZU7r+8gBBOY9dSuNgy9/MQ/fR//9j7olZTLxGWIYFGib1SqBzd5jhSKVvvQNH7hJd5Law==
X-Received: by 2002:a62:1c96:0:b029:198:1cb6:26bd with SMTP id c144-20020a621c960000b02901981cb626bdmr10852564pfc.33.1607679131018;
        Fri, 11 Dec 2020 01:32:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls3849977plr.3.gmail; Fri, 11
 Dec 2020 01:32:10 -0800 (PST)
X-Received: by 2002:a17:902:8d89:b029:da:c997:a2ac with SMTP id v9-20020a1709028d89b02900dac997a2acmr10207083plo.39.1607679130250;
        Fri, 11 Dec 2020 01:32:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607679130; cv=none;
        d=google.com; s=arc-20160816;
        b=Bq6YfsztJjZOMqTLn3REROyJO2HrWe2kQ8/sCUUw/SyUc7CFKBFTYliJF/rmuvDwAC
         rWHQuhMt6cYr2E7bxEL57t4BS0yB+cQGldUbCuiOs/MeuNoldn0iB5W7e8wjy1C83X1V
         1ojGaSMaMARm6MG+CDFQGJ6chmjkXwvd/WlONJxyyqu44qe/ZRnR2v2g6pTkOMKQJAxB
         TGXEm/T54mCbhGKRELjk/8ZvQHpIsQckqN4TSsxC6Bx5Hb/lX+Y4ZwTaxxCId8odqYRW
         A0/NdLR7tCXmH+i08ZJx6+PdgrZQLtuJeRguguuZZjWA8FKI4vCpF2BMmqS12ZEZUq+d
         IlTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7OVhj6W6MkbLnBXMn6qYLE3zg+jhYzQkB5fOP6g9zFs=;
        b=TkrsPiJ9OQ3AMwf1MkroqlrHc3s7+YIS+oJcM1QZ0+wg4Z1k8UKD8xDVyXUmN5X9ui
         suh3n6MsW0SAc8oaHzfmV2l5APBHPKQr9I6e37b9R6T6BbR/4tbpClpHJWy/CXiCV2XO
         KvMPkZMplrRSDfEO1lqptTpLByHJxm0E1e2Pf/+qAqSHJ8zq+Q6bbWqjdU9ATgdRT1of
         U3cv9Bobner2RFoCpttcHmXlEqBKIedEpoSAxOAhoKEJ6gxfYxi/t1SKYRD8nddFBAw+
         mbNF6j4kOH7zTB+DjuAfQmfxj8qgOwEN1gxNPk5CZZP+gtQhnXvuCRlCJsJa4F1m9JUu
         lRAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=OYF9TEoX;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id k14si540537plk.3.2020.12.11.01.32.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 01:32:09 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1knemV-0007zw-ST; Fri, 11 Dec 2020 09:32:08 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6A21B3007CD;
	Fri, 11 Dec 2020 10:32:05 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 52A2621AA28E6; Fri, 11 Dec 2020 10:32:05 +0100 (CET)
Date: Fri, 11 Dec 2020 10:32:05 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool crashes with some clang produced .o files
Message-ID: <20201211093205.GU2414@hirez.programming.kicks-ass.net>
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=OYF9TEoX;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Dec 10, 2020 at 03:35:45PM -0800, Nick Desaulniers wrote:

> > $ echo "__SCK__tp_func_cdev_update() { __SCT__tp_func_cdev_update(); }" > file.c

> > $ clang-12 -S file.c -O2 -fno-asynchronous-unwind-tables -o-
> > .text
> > .file "file.c"
> > .globl __SCK__tp_func_cdev_update      # -- Begin function
> > __SCK__tp_func_cdev_update
> > .p2align 4, 0x90
> > .type __SCK__tp_func_cdev_update,@function
> > __SCK__tp_func_cdev_update:             # @__SCK__tp_func_cdev_update
> > # %bb.0:
> > xorl %eax, %eax
> > jmp __SCT__tp_func_cdev_update      # TAILCALL
> > .Lfunc_end0:
> > .size __SCK__tp_func_cdev_update, .Lfunc_end0-__SCK__tp_func_cdev_update
> >                                         # -- End function
> > .ident "Ubuntu clang version
> > 12.0.0-++20201129052612+ce134da4b18-1~exp1~20201129163253.238"
> > .section ".note.GNU-stack","",@progbits
> > .addrsig

> (gdb) b tools/objtool/check.c:475
> (gdb) r orc generate file.o
> Breakpoint 1, create_static_call_sections (file=0x41f478 <file>) at check.c:475
> 475                     reloc->sym = insn->sec->sym;
> (gdb) p insn->sec->sym
> $4 = (struct symbol *) 0x0
> (gdb) p insn->sec->name
> $5 = 0xc22d26 ".text"
> 
> So some instruction in .text that contained a relocation for, we could
> not determine a symbol for?

Ooh, cute that's weird. So it's trying to write a relocation to the
site that does (IOW fill static_call_site::addr):

  CALL/JMP __SCT*

and that's failing, because the instruction's section doesn't have a
symbol.

Both my GCC and clang-11 get me:

(gdb) p insn->sec->sym
$1 = (struct symbol *) 0x555555d83a70
(gdb) p insn->sec->sym->name
$2 = 0x555555d82f46 ".text"

Looking at elf.c, it seems we're missing an STT_SECTION symbol for
.text.

And indeed, when I add -fno-asynchronous-unwind-tables to clang-11, that
goes missing from the readelf .symtab listing. Help ?!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211093205.GU2414%40hirez.programming.kicks-ass.net.
