Return-Path: <clang-built-linux+bncBC2ORX645YPRB5EBVWAAMGQE6TIRISQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id C18F3300EB3
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 22:17:41 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id y20sf10861430ioy.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 13:17:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611350260; cv=pass;
        d=google.com; s=arc-20160816;
        b=jxRzGYr99AD2Ol8kpssPo5Juhm6a3DAgyGX8AIAGBNwcPV5uWnCPWIguXqQDi6MhDR
         QvTYivSdsidVhbmGaLhtpDjUWV4BoAEDIOHFWOl8EqkX8Ow49isn0dpqugqmoUPLVEOQ
         imlZ7Je2EHD3ao2/BEHWn8+btwmyg45gwXklIcXPqz8324rvti0oMTIZhqhea/MmeB5a
         V2ZuG5goseehmFZBj+HBBMLAcWPp+5aIrhEZFka//OmKUjGj0J20e1IE/r7l2qqlpIfJ
         2ycuqNc4g8eDxCgHq5sm2Oef+kF+aMDtfXWIZin/ftZw+2cX4r7rBtpIygjsfHDHkm1e
         zmAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8YzY2U0pSO9MU0yeqQkE4t1zx2HGdDDOSnVrD9tOAQQ=;
        b=nwYTySZOz9pyFABX/G1Q6C1Hxa99gpndvH0pSyQcQdsOpQVzbLrf8YGtcVYXKRRmDG
         volrEW4nrib+HhEm7P+o189yfIgH8yydjLph9RLs4gm3+JrE7YmkXAgna610zXGvwTJe
         uMlWY4YxpTw3NgBkTl/UCsCfoDXJPqb7My4iv9n02Ml7pQLTT/YEZSBaGFBhqQV5hlir
         7rfKtk6osIks/t0YyxhuiMea20L0ak0Nlr4IRzHXsfzNRRG6x98CRCX/MhlLI1cYqil8
         hYuLmqPT2L01aWbxpFfu89ld9HrJxi4TQKc8EOZnE8AilqLHGbOsEzTWb/ykkHXpapfH
         Ey2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jJ41Rsfk;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8YzY2U0pSO9MU0yeqQkE4t1zx2HGdDDOSnVrD9tOAQQ=;
        b=OyTxNwOBWEWQNxgiLJ65Lx0iFsvPPSYvYFJUdgHJbCqlK1h2s5pQKKn6yjLFVrIuWO
         /PpjPmhhR4TyjxhqJ8bas2G34yksO077p49RKcmAPreSBRCTtxqYBt+N0wVSTWvRDxgg
         VNOg530yZHkjc4VKV5e70XdjIwdtGp4TpQQSdUHmZTfMVv7fXZR+0/UyP0LBOUoqNh8I
         bCRlpQlPVBfJ6ux+1apQvVN4qFoNod/XUq1Ko0VoB0gsFoRWTGCJVSx50sneRtZryiPq
         KRXHxapbqa7V7RVesXpHOC+Yfh9iTz8wllx6H/C/qmoWwTvG5pQrlHyxWmxASLBfQSGx
         LVfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8YzY2U0pSO9MU0yeqQkE4t1zx2HGdDDOSnVrD9tOAQQ=;
        b=away+DZVpy9Su0Z2XvTdIbnX600SB3OkQr3glHdupp0C5SvY45oMePXZJzc/wqLnNE
         ilgGnJ/SjRd93cjLah5woCdU5Ay5TDxar67H9eGIYS2XHe3rKf66pZCNaARNOIt5tpE0
         yKwQtQiYvLHjUKhmOFfVVAkddlqD6Mv01gQDGXHDh1yXvumilxIIF2aYg+Vyg0iJHJ2D
         Mw170j6zK5Z9qxel6DESRwzHg2kh5HIyuujkyMjGesfA4hoiDK4V8UvqeGRqXXtlWyzW
         aRw0IiD2vUhCNI3IMh2UYxU/oyl5MsxIA8xwYJN6DnA6eBeIeKrjGekhKjWu8/NzzuX4
         EuWg==
X-Gm-Message-State: AOAM5309WK+khgcR7ttdxG5T54P5kh7jSAtMrogLEYppvgtkS8ph7iMK
	kCW4jaSixdYG4gwWqfhKqKk=
X-Google-Smtp-Source: ABdhPJxEerDH7j3Tf6n1uMzXF/cTGzt1Hi19aqQfj/tnUe5oyB4fS3I3UrcaCqrGHohBbiojDUrDJQ==
X-Received: by 2002:a92:5810:: with SMTP id m16mr5945561ilb.144.1611350260756;
        Fri, 22 Jan 2021 13:17:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:93c2:: with SMTP id j2ls857533ioo.3.gmail; Fri, 22 Jan
 2021 13:17:40 -0800 (PST)
X-Received: by 2002:a5e:8d15:: with SMTP id m21mr294165ioj.114.1611350260272;
        Fri, 22 Jan 2021 13:17:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611350260; cv=none;
        d=google.com; s=arc-20160816;
        b=Gie2sy58CxjhI4khArYBIVsE7Q7+WinhAEUm6eHjIppUileh2u3wQGxzbFEFz+JYu/
         6pnN5zSxIZs1iNkrZ9TBGLg2f5MJGSpb+S/PhGMCjXcHCWZz/hMWQfhusn4nTVLR/YAl
         PTWU6opu4uQBjovTAjlZpBirqCE52rdxcJtNA23WDmL53VWzUpoDcCpNUoYLsDsfjWxl
         kdH6N/+C7zsZsCTAgZ4jSG2pcN8/Dt98fOHFMzvqXWkhPqIaanruCL3a5UlyUQdzN3uz
         l/nraj4eEioRCwyW5tderuoFvDiYpy4TfT8gFTnsBbFTIL9viBMyDNIXRhvV2hJoO1bG
         2/eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sk3+j83/KSEJTb6TEvM8GbjRjDbTnWMuzmzS+vYhd84=;
        b=0uGcCRT3Gv2P4FdSaJW9IkvYN6q3THnj/DvU5EAnFm2xZLW65sBCH0vsH2v9XECAts
         1gxziPWIYAnzq40GREEb+j2rH2QOaKaQ06vN/zqyUmsbkjYE+NW9g1tdd7+nZJOsR2dP
         pV8+Yl8UG3/kqkNsMKsPENtbt19k0LkodzgIfxV1lbNHnFQPf6CP3BvB8WRvaRzuY6bF
         35H650gzHmb3/3EzjRiEcjxq4/dt3YgqXl4efNr3+uPTjY3LJ9NQ9bPx7VLz5/JmQdoP
         lNxUngx/Ku7KV+Ue1t8dFGGpmYQJ9SUcuLymG6c+1YlYaxe9l2siIJrzire1jdH+ED4F
         y3fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jJ41Rsfk;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com. [2607:f8b0:4864:20::e2a])
        by gmr-mx.google.com with ESMTPS id d13si423945iow.0.2021.01.22.13.17.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 13:17:40 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2a as permitted sender) client-ip=2607:f8b0:4864:20::e2a;
Received: by mail-vs1-xe2a.google.com with SMTP id 187so3820645vsg.4
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 13:17:40 -0800 (PST)
X-Received: by 2002:a67:7956:: with SMTP id u83mr688634vsc.54.1611350259494;
 Fri, 22 Jan 2021 13:17:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1611263461.git.jpoimboe@redhat.com> <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
 <20210122154158.lylubqugmcxehugg@treble>
In-Reply-To: <20210122154158.lylubqugmcxehugg@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 22 Jan 2021 13:17:28 -0800
Message-ID: <CABCJKueaW1BEEBKLQzyp77VwTL+bE4x=kOLV3TWmc1s6-r3PeQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, X86 ML <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jJ41Rsfk;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2a
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

Hi Josh,

On Fri, Jan 22, 2021 at 7:42 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, Jan 21, 2021 at 11:38:54PM +0100, Sedat Dilek wrote:
> > On Thu, Jan 21, 2021 at 10:29 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > v2:
> > > - fix commit description for why xen hypervisor page contents don't
> > >   matter [Juergen]
> > > - annotate indirect jumps as safe instead of converting them to
> > >   retpolines [Andrew, Juergen]
> > > - drop patch 1 - fake jumps no longer exist
> > > - add acks
> > >
> > > Based on tip/objtool/core.
> > >
> > >
> > > Add support for proper vmlinux.o validation, which will be needed for
> > > Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> > > objtool anyway, for other reasons.)
> > >
> > > This isn't 100% done -- most notably, crypto still needs to be supported
> > > -- but I think this gets us most of the way there.
> > >
> > > This can also be found at
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> > >
> >
> > Should this be s/objtool-vmlinux/objtool-vmlinux-v2 ?
>
> Indeed:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux-v2

I tested v2 on top of the LTO tree and with allyesconfig + relevant
crypto configs disabled, and I only see the warnings I reported
earlier.

I also tested this on top of the CFI tree and with LTO+CFI enabled, I
can reproduce the segfault Sedat reported in the previous thread. This
happens because find_unsuffixed_func is called with a NULL sym in
read_relocs:

Program received signal SIGSEGV, Segmentation fault.
find_unsuffixed_func (elf=elf@entry=0x7ffff55a5010, sym=0x0,
suffix=0x416cbf ".cfi_jt", func=func@entry=0x7fffffffd5f0) at
elf.c:274
274             loc = strstr(sym->name, suffix);
(gdb) bt
#0  find_unsuffixed_func (elf=elf@entry=0x7ffff55a5010, sym=0x0,
suffix=0x416cbf ".cfi_jt", func=func@entry=0x7fffffffd5f0) at
elf.c:274
#1  0x000000000040d8f8 in read_relocs (elf=0x7ffff55a5010) at elf.c:637
...

In this specific case, find_func_by_offset returns NULL for
.text..L.cfi.jumptable.43 at addend 0x8, because Clang doesn't emit
jump table symbols for static functions:

0000000000000000 <__typeid__ZTSFjmiE_global_addr>:
   0:   e9 00 00 00 00          jmpq   5 <__typeid__ZTSFjmiE_global_addr+0x5>
                        1: R_X86_64_PLT32       io_serial_in-0x4
   5:   cc                      int3
   6:   cc                      int3
   7:   cc                      int3
   8:   e9 00 00 00 00          jmpq   d <__typeid__ZTSFjmiE_global_addr+0xd>
                        9: R_X86_64_PLT32       mem32_serial_in-0x4
   d:   cc                      int3
   e:   cc                      int3
   f:   cc                      int3

Nick, do you remember if there were plans to change this?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueaW1BEEBKLQzyp77VwTL%2BbE4x%3DkOLV3TWmc1s6-r3PeQ%40mail.gmail.com.
