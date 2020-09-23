Return-Path: <clang-built-linux+bncBCMIZB7QWENRB3FIVT5QKGQE4OCRRUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEF8275474
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 11:25:02 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id c19sf16128399qkk.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 02:25:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600853101; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q/hKFR3d0VTy16lyIXPX0nvNhHd/K5Z/zOgCrZcAc1Moy+Ysyv3RaHjxvez1HrZYFP
         WJQZxYxnm8FiOMN5xlCV5X2/Jo4DhDX3vc2GTnF9EDcIn5hyOIzDXlwvQGzyP162shUS
         ayORVnfpz/gBNhN2Mj7SFrvnyMrJ3WKMpViLpbxYEsxlEhHDlCtU9mmsWlp/aQKKMnC8
         237jW5ePONRX4RMBPvaTfy6L3wDMNbg3Z+sxAL11Nq9KFLSIcExNfxsALdgxJGAbgFRi
         uZEaSYm4QkVESim6z8OMXWtwsfBryJSyvLYz0sZy2EWZXx4672SYvpuVi8rOcjw38buq
         w4Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8zLyQ35LfSfDieYifXb6ST3LsyfxCOvAH6XpWQd48y8=;
        b=lc0tAyi9a0p2gLWJIWy/4mHmIS/0Wm6hC3Ery7BHqaXTA5TNLqdBX2T9RQtnp5V77R
         zheFQxEnS8zN6qh77ZkUHAdgtddpYanzpI5IsjcRreq2u0RQB2rYupAS2fYCetqhTWM/
         bLw8ua4dEFUt6rU8tTMh41wxdy9jByoYbpU3st4NWS71ZBJl9NHMizYTRatUMShY9SgY
         8D8dDnDNDhUCJmyhYqBJ2ByoOEzZyzE5Q3FW4G9eMiM4vMEEEW0Nkx/BB539NY3YzHTZ
         EvDQagzM9yHcGExsaAGUvsXZNA+CzYy1aU2kyi6qufYHgNSx3SFhnMuFLp1pO5Z0LgBe
         AXig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FSw7j7LM;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8zLyQ35LfSfDieYifXb6ST3LsyfxCOvAH6XpWQd48y8=;
        b=VRwrQhXIfjWfSKpSBoTkADzp2w4JYdVSRlX9BFEqv8sUNCm38/uwxxcyGL/iEjzPR3
         IHkoDNoVfFzd2Z+KGa9bTohLYzpLdggur7ilncO4iUDYQpPhcw5AlDVBfkwnZdn0LFr+
         5Rb6dHccXvXfZc+LtNy0nlI2MUtkDWPGlE7mXCfA4PAbyvFdQ4Bwqp38tKA+yW+Hoxx3
         RqJxSFCAw8CNIpkDM3EAihmqE/+yRUfpAiTxyGtsN8vrYVkJ0xsZaUnV6eFJyEdgM5Zn
         15eoOFfoWOHl0BQi9kAad4oYa/+WGhLec38zaRN0MwqAnreuWMENSqVemTIb7ri16WoL
         4Erg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8zLyQ35LfSfDieYifXb6ST3LsyfxCOvAH6XpWQd48y8=;
        b=nBzDNF4xCD8y/BZayTYqvO43/CtgleoPEVSQsQujBIfBzYL0eZV6oI79VkpIMrCjS2
         W4g111ya+I3iFeOxz05HyHjVoK/b7wqmn7bRCu8W/asb4yE0Y8yAVlM5O16eFpxsJJ/z
         of0h3gdR0LWlovjcjkks1/BP9HX6hUmsaPIVX0gxzU3Di3bYZYmq4OQlW3hfFu/c1rQq
         Z2RfoxyaQDCUixumhX4xHT/x7xmF0zXvhCLxXA39RSCu4wumzxXqVnAj1rIRF9ZRfvYi
         4xwf3BDbDB0q9FIbinqyg0kA1oakUm2cEFA9XR//4+i5NydanMLy6AFLCJMABy7YtVMw
         SJEQ==
X-Gm-Message-State: AOAM533I2em0fhYj7Oc0qVQQGcdHVbhczv6cLlv6uQxier1/4HVCVJ7i
	x8Hn5Zok5NGb7ijGc7u5Jrg=
X-Google-Smtp-Source: ABdhPJzVtq4+jXxiljH1zgHoQmDNCW5WVbLtoA0DjDX5Gs/8AlAKuVA66WyPf25b8ZvMXero0HFLRg==
X-Received: by 2002:ad4:47cc:: with SMTP id p12mr10189127qvw.22.1600853100735;
        Wed, 23 Sep 2020 02:25:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:7f1:: with SMTP id k17ls812326qkk.10.gmail; Wed, 23
 Sep 2020 02:25:00 -0700 (PDT)
X-Received: by 2002:a37:4d1:: with SMTP id 200mr4263906qke.357.1600853100246;
        Wed, 23 Sep 2020 02:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600853100; cv=none;
        d=google.com; s=arc-20160816;
        b=A1ew82U/sVzu0necM5vI7o3zfT6u2u4tkzZzPXC6clY9Hv/XGDJ5jaTVHbjYrW9JUf
         k5SD3ehC1xCfkdU7LsEOuGeYkHIzpyvqlB2vs7P3uptk/ZuXJyXxMxgbVmJ+8caenxLC
         9GQYeIRhnWty1zTFPtliGgXgn9zNYRsMKReZihCfl8cmZKygB1C/a2HhIhMZi1KMGv1X
         1fgbQLLm/6V5iERi8ML0hxmCB5xaH2FzV5ETBdKB41yPoLT95Zc+ogiRZS+KLjQW4GES
         exQ9KYeCdNT66chlCRVW3Ql2uCKi4h75mvM/1s2MqkxyQW9cyFLg9PwkGnevNM2A2+Qd
         3Hpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=elg0wH+6sMQCekNWlDCJHXKeUDnzoRr2E8YDp7Z6TBY=;
        b=PiJFjxxJGTmuvd0nqHUicv3/n3zOkWQoJcTjmnn4vKWfqs4rt2orHzOfrAZ2BLR8bA
         YUQaUK5J2ZBTRW0TDnogQxLyhd5QhdpY48QTsmxZgZffhOckx89f0OFPGgAikFidVwMv
         Bt3QC+e0OoxK0T2D9qAn2PK6vTyJBrgMPVDHMo7X6laccZ6BEPluG0BqsqT/BiR4wyRe
         n6BQBipX9lQ6AJYTqulCit4dmUCOdbnmQ12SzsFl+PztEM1ZGl2rnyuDLIHAR8/qCoby
         +a78ERUAMdnLcBvguA0ELaoqa1VCd5sBY3NvjNfFpFQwrq9ulQ/t+DJJTVstCFP9UVBk
         iHZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FSw7j7LM;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id e1si781596qka.0.2020.09.23.02.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 02:25:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 16so22119750qkf.4
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 02:25:00 -0700 (PDT)
X-Received: by 2002:a37:54a:: with SMTP id 71mr8199361qkf.407.1600853099325;
 Wed, 23 Sep 2020 02:24:59 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic> <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic>
In-Reply-To: <20200923090336.GD28545@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 11:24:48 +0200
Message-ID: <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FSw7j7LM;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, Sep 23, 2020 at 11:03 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, Sep 22, 2020 at 11:56:04AM -0700, Nick Desaulniers wrote:
> > So I think there's an issue with "deterministically reproducible."
> > The syzcaller report has:
> > > > Unfortunately, I don't have any reproducer for this issue yet.
>
> Yeah, Dmitry gave two other links of similar reports, the first one
> works for me:
>
> https://syzkaller.appspot.com/bug?extid=1dccfcb049726389379c
>
> and that one doesn't have a reproducer either. The bytes look familiar
> though:
>
> Code: c1 e8 03 42 80 3c 20 00 74 05 e8 79 7a a7 00 49 8b 47 10 48 89 05 f6 d8 ef 09 49 8d 7f 08 48 89 f8 48 c1 e8 03 42 80 3c 00 00 <00> 00 e8 57 7a a7 00 49 8b 47 08 48 89 05 dc d8 ef 09 49 8d 7f 18
> All code
> ========
>    0:   c1 e8 03                shr    $0x3,%eax
>    3:   42 80 3c 20 00          cmpb   $0x0,(%rax,%r12,1)
>    8:   74 05                   je     0xf
>    a:   e8 79 7a a7 00          callq  0xa77a88
>    f:   49 8b 47 10             mov    0x10(%r15),%rax
>   13:   48 89 05 f6 d8 ef 09    mov    %rax,0x9efd8f6(%rip)        # 0x9efd910
>   1a:   49 8d 7f 08             lea    0x8(%r15),%rdi
>   1e:   48 89 f8                mov    %rdi,%rax
>   21:   48 c1 e8 03             shr    $0x3,%rax
>   25:   42 80 3c 00 00          cmpb   $0x0,(%rax,%r8,1)
>   2a:*  00 00                   add    %al,(%rax)               <-- trapping instruction
>   2c:   e8 57 7a a7 00          callq  0xa77a88
>   31:   49 8b 47 08             mov    0x8(%r15),%rax
>   35:   48 89 05 dc d8 ef 09    mov    %rax,0x9efd8dc(%rip)        # 0x9efd918
>   3c:   49 8d 7f 18             lea    0x18(%r15),%rdi
>
> 4 zero bytes again. And that .config has kasan stuff enabled too so
> could the failure be related to having kasan stuff enabled and it
> messing up offsets?
>
> That is, provided this is the mechanism how it would happen. We still
> don't know what and when wrote those zeroes in there. Not having a
> reproducer is nasty but looking at those reports above and if I'm
> reading this correctly, rIP points to
>
> RIP: 0010:update_pvclock_gtod arch/x86/kvm/x86.c:1743 [inline]
>
> each time and the URL says they're 9 crashes total. And each have
> happened at that rIP. So all we'd need is set a watchpoint when that
> address is being written and dump stuff.
>
> Dmitry, can the syzkaller do debugging stuff like that?

syzbot does not have direct support for such things.
It uses CONFIG_DEBUG_AID_FOR_SYZBOT=y:
https://github.com/google/syzkaller/blob/master/docs/syzbot.md#no-custom-patches
But that's generally useful for linux-next only and the clang build is
on the upstream tree...

Options I see:
1. Add stricter debug checks for code that overwrites code. Then maybe
we can catch it red handed.
2. Setup clang instance on linux-next
3. Run syzkaller locally with custom patches.


> > Following my hypothesis about having a bad address calculation; the
> > tricky part is I'd need to look through the relocations and try to see
> > if any could resolve to the address that was accidentally modified.  I
> > suspect objtool could be leveraged for that;
>
> If you can find this at compile time...
>
> > maybe it could check whether each `struct jump_entry`'s `target`
> > member referred to either a NOP or a CMP, and error otherwise? (Do we
> > have other non-NOP or CMP targets? IDK)
>
> Follow jump_label_transform() - it does verify what it is going to
> patch. And while I'm looking at this, I realize that the jump labels
> patch 5 bytes but the above zeroes are 4 bytes. In the other opcode
> bytes I decoded it is 4 bytes too. So this might not be caused by the
> jump labels patching...
>
> > This hypothesis might also be incorrect, and thus would be chasing a
> > red herring...not really sure how else to pursue debugging this.
>
> Yeah, this one is tricky to debug.
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BY4-vqdv01ebyzhUoggUCUyvbhjut7Wvj%3Dr4dBfyxLeng%40mail.gmail.com.
