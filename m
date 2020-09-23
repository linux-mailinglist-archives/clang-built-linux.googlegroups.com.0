Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB4E6VT5QKGQEQ3UCA5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 042A42753ED
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 11:03:45 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id y3sf8557020wrl.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 02:03:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600851824; cv=pass;
        d=google.com; s=arc-20160816;
        b=EfUq8zIVXdhOE/p0oQix3ld2ehst9qoNSofJa9giV2PSQKzmaVUlhK+i8OZP4PP3HA
         GGTnG2jX/7Y5GwyeLNM2/IfHxsYpfm8FLmahN/XaMQySQUFINDFCuCKuGsdYvtoqd4X2
         EfV/iT4Y3uS7J6ZQYHCaQ3pnul5jLg2iMrIsOsBPm4eD602SzQ9zHRpGm00CF4kCeNyd
         HqlJYoWlgOEbjSEKGXROeieAnMPPCjoWuw4MYavdxzCQ0cvpMRGTuLi4KI0K2XKR48GG
         WMSyUSGVEHWnLPivtw//toKQPVrWWCxCMh02RfihhKY0MfVITR7R1PmgSJ/C7ETYPpt5
         cWqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vGNac2f4gclCjiwDEB2KP75uFTYxnrXbts77+aPUDIg=;
        b=Gk9A88Rpsk1U3N7OEUM7jyDLptbp5lH+ftjROunPxIG39zbCZFM2RgKTK+h9oba5J6
         /0Wm5tLAfPvmG2aXUvWnq2XjOJveatbglQyWoR44SVhXkOTIzwnSdDxrbcl8gt2JsThK
         +jtbHGG2QqN76YuMHST3GzT/TBPTkZu5f5LajPH/W9X5DIoIy+5qTGLsyUKjoD7XAjGD
         /+InHknxatVzw92opPXc4/+GVblhY2zlO58iPAji9X/gVP0BRFJftB1xJw23X9Jjirjs
         OBekwVTRP6lRb7ucb6xUs1sKudBQ1YAid8/sAJLHtS43+QaLTApoYRXq6dvV1Bmd7i0Q
         UTfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=qx2Y+7fs;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vGNac2f4gclCjiwDEB2KP75uFTYxnrXbts77+aPUDIg=;
        b=sEmdcZirnXCui+ksZASx6w+5P7opA4fq5cgq5uAtHm8lQrlnIc/vb2ApUd1h6G0kif
         LiXeVJOcnqboi74OInmu3yU79W+uUR8JD8E15Ir0g9V+mRBhLW8/nZr5yfBFQImdHTGA
         ZYv2IRiOYaxBKhqiIWVGXc9bz8G86sGrQ8LbQ+fBPJG6Vu1LkWyqlAFnTMYgmmQ8vQYo
         GLjOHJADnpxTh7UdqnmZwc4Tx5moThQ4AQwRcDyA2jgpzYkfVmkI84AxsQM+0ILB64xp
         UitUFuHpuG2WjUZIgY57yy9E0jm7fo5IJBKIqsXOufOs2NPdZNQMUk3HLY/usoEhmoPB
         4qTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vGNac2f4gclCjiwDEB2KP75uFTYxnrXbts77+aPUDIg=;
        b=mTEvIAYCXWZgVQa+qDzypgjI9qOw8MWm3CEx/ZASCyPT4tS3cHgboMntNGfczOJEDD
         ostZdWKzcSt8ATvh5J+aRP68Q5Sfr4xjUsFOY4wlwLs/w5P8KE2fZ8hB/mbaC5De57+g
         EpiWYNE2twJxQZObWQilZU0SVjXZ2VjJhPBpPa1mbajGgfYTR8UGBhkaLK3yk/ArXI7O
         MtHiFNoLqUVHvEqj/NmtLF3+OJKHuSWxTJ6pKdjzH3Z987eQ3E3jzQ9CBz5MPh3j1GZZ
         k7JFOX+TvBu2fMvnH0BoIFq6gRMJKElZk1ebuaQIDi5Sgl7M1BpT21cbRt7cRf0CVq/v
         6OEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306fd262vK5wcsdrgf7XgSSQ1leD+9+saMuPO7jf7azA3iNjopS
	gSXKKVUcm3/RajP7UVwXHZ0=
X-Google-Smtp-Source: ABdhPJzasazW8ARURu2gqaEftD6zo7+Eq6G5sroLhzUWCNyikHOBN+MHFuisvNCNEMiEw7SnC4phRg==
X-Received: by 2002:a1c:f20b:: with SMTP id s11mr5521449wmc.144.1600851824642;
        Wed, 23 Sep 2020 02:03:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls547538wrx.3.gmail; Wed, 23 Sep
 2020 02:03:43 -0700 (PDT)
X-Received: by 2002:a5d:5261:: with SMTP id l1mr9785680wrc.193.1600851823784;
        Wed, 23 Sep 2020 02:03:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600851823; cv=none;
        d=google.com; s=arc-20160816;
        b=w42fC245dicRCOb8LlDGl6QnMfd4OO5GSJWNOeyyiVTuNjN8jxTw96FRPUdiedcPL+
         pLRD+bia1E0VvadLncKXCnokP5pNt+KRrmxCJkAfkvbAT+Cpu0xBuPhzm01OYiic984U
         ZHur0tNmiNWQBhlgS3HvkWiJ9f3SVuesbqxHH/4qde1P7Ugb7Z8ocWg+hQGrUjk1sKxJ
         QRsgT7kSOyHF2UDSNA14ECCeH+5jfOvsc1FvHVVmdTEF614mn12P2p4SBWp6kXkzOnle
         sZCO+x9LrfQKxOelN2XLYBmO1veWMnxLMzp5e9C7l6UyVQYGeZyBwMBW3YGbz30XW3sP
         GhCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5y0yEgZ5tV+QcahBXtAX02EmqN9T8yvCetF3399N5r0=;
        b=YZMYsUK1KAJEPQHw6PU4pp2x2io9CZB7vNT8qzdlSS17Klunhzbzse38VTg0LoykiI
         GdT5wp82kQP2UOhvbVR/4aXK+ZNQDkl+QOalNGTECwzFPPdBGX0SUEqNWU+tQNeoUL5e
         uHzuM9Uc1kk0WkhBNd83vfVs7Hqlyohir1J2YVrojf88mKwKwCiYPqdWxRnMv3ZMDc5C
         fWqiONDZ2meB36GE4jTd9ycHGBCGTpo4Pqv7R213EnxHewy76BiO3vP5P3W1RYxiVIB9
         Rff8zYQ4GcTR3ZFb2WE3gFiL7Aul5OWSnaqL0Sf2cZK6PLH6gIkPkempdV1aASSEM8iF
         625g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=qx2Y+7fs;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id h11si421397wrr.3.2020.09.23.02.03.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 02:03:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0d1300e5068c8a3292d31d.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:1300:e506:8c8a:3292:d31d])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 0A7B11EC0286;
	Wed, 23 Sep 2020 11:03:43 +0200 (CEST)
Date: Wed, 23 Sep 2020 11:03:36 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200923090336.GD28545@zn.tnic>
References: <00000000000052569205afa67426@google.com>
 <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic>
 <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=qx2Y+7fs;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Tue, Sep 22, 2020 at 11:56:04AM -0700, Nick Desaulniers wrote:
> So I think there's an issue with "deterministically reproducible."
> The syzcaller report has:
> > > Unfortunately, I don't have any reproducer for this issue yet.

Yeah, Dmitry gave two other links of similar reports, the first one
works for me:

https://syzkaller.appspot.com/bug?extid=1dccfcb049726389379c

and that one doesn't have a reproducer either. The bytes look familiar
though:

Code: c1 e8 03 42 80 3c 20 00 74 05 e8 79 7a a7 00 49 8b 47 10 48 89 05 f6 d8 ef 09 49 8d 7f 08 48 89 f8 48 c1 e8 03 42 80 3c 00 00 <00> 00 e8 57 7a a7 00 49 8b 47 08 48 89 05 dc d8 ef 09 49 8d 7f 18
All code
========
   0:   c1 e8 03                shr    $0x3,%eax
   3:   42 80 3c 20 00          cmpb   $0x0,(%rax,%r12,1)
   8:   74 05                   je     0xf
   a:   e8 79 7a a7 00          callq  0xa77a88
   f:   49 8b 47 10             mov    0x10(%r15),%rax
  13:   48 89 05 f6 d8 ef 09    mov    %rax,0x9efd8f6(%rip)        # 0x9efd910
  1a:   49 8d 7f 08             lea    0x8(%r15),%rdi
  1e:   48 89 f8                mov    %rdi,%rax
  21:   48 c1 e8 03             shr    $0x3,%rax
  25:   42 80 3c 00 00          cmpb   $0x0,(%rax,%r8,1)
  2a:*  00 00                   add    %al,(%rax)               <-- trapping instruction
  2c:   e8 57 7a a7 00          callq  0xa77a88
  31:   49 8b 47 08             mov    0x8(%r15),%rax
  35:   48 89 05 dc d8 ef 09    mov    %rax,0x9efd8dc(%rip)        # 0x9efd918
  3c:   49 8d 7f 18             lea    0x18(%r15),%rdi

4 zero bytes again. And that .config has kasan stuff enabled too so
could the failure be related to having kasan stuff enabled and it
messing up offsets?

That is, provided this is the mechanism how it would happen. We still
don't know what and when wrote those zeroes in there. Not having a
reproducer is nasty but looking at those reports above and if I'm
reading this correctly, rIP points to

RIP: 0010:update_pvclock_gtod arch/x86/kvm/x86.c:1743 [inline]

each time and the URL says they're 9 crashes total. And each have
happened at that rIP. So all we'd need is set a watchpoint when that
address is being written and dump stuff.

Dmitry, can the syzkaller do debugging stuff like that?

> Following my hypothesis about having a bad address calculation; the
> tricky part is I'd need to look through the relocations and try to see
> if any could resolve to the address that was accidentally modified.  I
> suspect objtool could be leveraged for that;

If you can find this at compile time...

> maybe it could check whether each `struct jump_entry`'s `target`
> member referred to either a NOP or a CMP, and error otherwise? (Do we
> have other non-NOP or CMP targets? IDK)

Follow jump_label_transform() - it does verify what it is going to
patch. And while I'm looking at this, I realize that the jump labels
patch 5 bytes but the above zeroes are 4 bytes. In the other opcode
bytes I decoded it is 4 bytes too. So this might not be caused by the
jump labels patching...

> This hypothesis might also be incorrect, and thus would be chasing a
> red herring...not really sure how else to pursue debugging this.

Yeah, this one is tricky to debug.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200923090336.GD28545%40zn.tnic.
