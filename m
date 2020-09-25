Return-Path: <clang-built-linux+bncBCMIZB7QWENRBRN7W75QKGQEVLJOXNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ADA2786D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 14:17:10 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id u206sf631465vsc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 05:17:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601036229; cv=pass;
        d=google.com; s=arc-20160816;
        b=ly6U1tbJuCXhKpm/Fjz7LhfyJMBSPDpSuGJ2kJaVOcPPmKDh9lVuT90WBUxCN25h8i
         kvtNA/92v6qNr2bhC5/oBooJlXZC6Ji2DSBb3bZAmYtcPii1Z1X/rrt/pPydNgb/GQkh
         r5ym/if/agIxCF3xRB0dcJwVZxgPD52YuqTrK6zy6WqNxCtN2l8HK9nMKx4GGWTMmAgO
         SpaQC9Fv+CkX5rAr4ULUl+RiMj1qAiMnhVW90w9E62nnIelpcCTNAbtoUNI/+XkPJWZj
         FBe/VRfdsof7Hmj/v669ZSXeZcUe9pD2N/YP/q7a5rTe+tAvwY37h7Q9ZeeVtsjgtsZr
         ZzoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+0axoYLlV7w5pYW0wgmebCiR8baJKbDR3sz724bpTh4=;
        b=uW30HJVLSVMzgrbK6Q3ug9QXCSCt+/+DSQbSiQJey/Krb9MqSMLd9PomG2O3VwTkyz
         ALA+gI+R5T8SHhSwiClDCEuVkw2HVGf96IbCS936afxyDFDSB+EXLtJdxBwHuGuuFD6Y
         TCOalOrktlpzwrLW6i3cNX4NLD64Z5djrg81aguYt/V6yUlsUL28ZrYuc5kOJV40f221
         Ph/SPlURcbBUr+Lw6ud2uG2r7Hb0peROrgpRZ5/OZ7YQjBIY2V9slQhRiDT9Z8wOcZ4a
         y2UqfkVxQQ9CjgGDNR0aEV1H1BVEtT4c1Kj20hyvURe9JwwKSCQftEhxqlvs3AGBDSLn
         rljw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="HwQI/7vr";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+0axoYLlV7w5pYW0wgmebCiR8baJKbDR3sz724bpTh4=;
        b=pZ7zuMeinTokIIL/rcO5Ze9LNRt7qnfrpebHkPxBlO1d/Z+TPAuI5OaCYzfgYMF4Oe
         9/LlziEXgM+NdH3Q/TnUm4Svp3g9kwkrrXQ5fyKZLZPAUkRViwioW3cPojkAon6y+wwI
         2ez3u2Nev4CkJftiB6YZuwozz3LddIxppc/tg3ZjDWqTnV1BJeklYJ3DcH3yAPUQ70E1
         Xdkfba4eebc7x18eLnQB1I8IBi0zyxtGsM8cs9nAki2ST1W2Rv/whb2zo8wqn1S+QBfl
         XSCcIIpvIRoaBacoNidRwiBh+wlM5SVsNZxlRtn2AAk/ixNTxqeUnE3YlXIFm87WxBb7
         Bt2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+0axoYLlV7w5pYW0wgmebCiR8baJKbDR3sz724bpTh4=;
        b=hHT+swfURJ+deanzJ6ZDpuSbbwJ9I3sHVqOhRxfpZF6UUdBqn/fSD7R1ulw21SXk8g
         xPac8MS6S0QLp835PzBcH5DBIbKcVMIRtNBgv53qOc14w3WObgqwV+m6urn0DmAxcgfO
         LnCZkEWM8kNpq5xdmDzRgnjU5E646fQEmmEJX5AEBgJxUQPP+94ZPyUMI2yyoRIsZdBF
         lG7FB/rEc1g3LwSA+Bn9BRBJwBgaIUGWmOJD205ct3673abtX/iZTxf1gVTo2NRb3p8K
         fylixtmCjzF/eRWBVaTir0Q2nWh4c8K6d5fUAYmjMGtpMAtjKmk/uEzPjMyewhzTMDuY
         v2MQ==
X-Gm-Message-State: AOAM532YFlqFXshLtS6LEjoFGuiRn0fqljA8oC+SQ2yEc8tYJxKc1YyH
	ErtqkgB+N+ofBOg84y46fqY=
X-Google-Smtp-Source: ABdhPJxfBBpbX7aYBTsHnKD4nV1mS6IyCrUJhpVGJIuBPLhvgH2x7L8P/+DxeHsDQmIFMlLzARmF0A==
X-Received: by 2002:ab0:31d8:: with SMTP id e24mr2162939uan.38.1601036229695;
        Fri, 25 Sep 2020 05:17:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ce11:: with SMTP id s17ls348307vsl.11.gmail; Fri, 25 Sep
 2020 05:17:09 -0700 (PDT)
X-Received: by 2002:a67:7342:: with SMTP id o63mr2628114vsc.17.1601036229240;
        Fri, 25 Sep 2020 05:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601036229; cv=none;
        d=google.com; s=arc-20160816;
        b=XNj3wBRhBFxaVPl9ItxXEHK0Q5MM7Rl+TLpQCW4/xbNlOQSsuTuBkPRpyXgzUMD3tP
         y1GHt/0lEgt23NtQ6Xdu6F2CohZaVzuNVP+iBzetnez/PDNyo0m/iPGU975sQP2k5FTR
         qplr1EvVb22ye0eTnKW8SzDqNg8mI6tmsq78yXFe2qky7n72+8nzPfpJb5NmiSNnLZ0p
         00ouEuF++2/DK81mS7TwV8xceeGAkzCAL60p1kX7jzfjujTydeLgutILXCPaihkeRRRb
         O3Fv6D2H8R1fcxSS2G39e+3l/4VTixLM7H5hHhJ3zofDiBh6gMZGlCt5iTgV9XbJFGPT
         s8Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BPvOJqW7rDrrdcx7Mo36ua8KWFrzhCpiIyO3GQAecDU=;
        b=cjAtQRB6o+BDw9aQBmaxnqaI8nF5217Vm6TQ3j3ZBmGh6Tbweq2AUCwJkTOoe02WD9
         u26k7ZptsZbI6Mi2gj6vk4ADEFByCDV4DtEYGfGjJ8gGlbYTWADfniyk/UWESxTwZlas
         BHDKULpbxDiPMAAJhuQPKZy/s4GRx9DRDuGbpY06oKuZu3U+nWpsfBpURcoVIHgx3NNJ
         LCKehHB822vKtu8OgVgUHJSG4cWzNCWD6nPTwh5OA3YZXCDct5l3RO/e59pz2HVnDVxA
         x0ho/NqeQKpQgM9YO4zH2Q+74lawy3s94VSq/yS0+j9xZ6PJMCamJOU7ASX5toZu4YEa
         E4ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="HwQI/7vr";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id h9si136430vsh.2.2020.09.25.05.17.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id b2so1608296qtp.8
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 05:17:09 -0700 (PDT)
X-Received: by 2002:ac8:4806:: with SMTP id g6mr4068508qtq.380.1601036228529;
 Fri, 25 Sep 2020 05:17:08 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000096760d05aff79022@google.com> <CACT4Y+YGFtPCi3a-ByZGs1kCFfJOYv_AbkxOG=K_D4xh0r4okA@mail.gmail.com>
 <20200923103008.GE28545@zn.tnic>
In-Reply-To: <20200923103008.GE28545@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Sep 2020 14:16:57 +0200
Message-ID: <CACT4Y+bRNgchFs_Wc4zLk+J=MjsTNEx2EvnbSpKtSi1R_YiPDQ@mail.gmail.com>
Subject: Re: invalid opcode in map_vdso
To: Borislav Petkov <bp@alien8.de>
Cc: syzbot <syzbot+9cf5373b0e15476f39a2@syzkaller.appspotmail.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>, 
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="HwQI/7vr";       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843
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

On Wed, Sep 23, 2020 at 12:30 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Sep 23, 2020 at 11:19:40AM +0200, Dmitry Vyukov wrote:
> > +clang-built-linux
> > Looks like another one with kernel code overwrite in clang build.
>
> Uuh, that's a nice and refreshing one - the pattern is not zeroes this
> time
>
> Code: 16 48 89 ef 48 8b 34 24 31 c9 e8 88 7c a7 00 eb 7a 4c 8b 74 24 28 43 80 3c 3e 00 48 8b 5c 24 08 74 08 4c 89 ef e8 4d 77 70 70 <07> 20 05 00 00 49 03 6d 00 48 89 e8 48 c1 e8 03 42 80 3c 38 00 74
> All code
> ========
>    0:   16                      (bad)
>    1:   48 89 ef                mov    %rbp,%rdi
>    4:   48 8b 34 24             mov    (%rsp),%rsi
>    8:   31 c9                   xor    %ecx,%ecx
>    a:   e8 88 7c a7 00          callq  0xa77c97
>    f:   eb 7a                   jmp    0x8b
>   11:   4c 8b 74 24 28          mov    0x28(%rsp),%r14
>   16:   43 80 3c 3e 00          cmpb   $0x0,(%r14,%r15,1)
>   1b:   48 8b 5c 24 08          mov    0x8(%rsp),%rbx
>   20:   74 08                   je     0x2a
>   22:   4c 89 ef                mov    %r13,%rdi
>   25:   e8 4d 77 70 70          callq  0x70707777
>   2a:*  07                      (bad)           <-- trapping instruction
>   2b:   20 05 00 00 49 03       and    %al,0x3490000(%rip)        # 0x3490031
>   31:   6d                      insl   (%dx),%es:(%rdi)
>   32:   00 48 89                add    %cl,-0x77(%rax)
>   35:   e8 48 c1 e8 03          callq  0x3e8c182
>   3a:   42 80 3c 38 00          cmpb   $0x0,(%rax,%r15,1)
>   3f:   74                      .byte 0x74
>
> Code starting with the faulting instruction
> ===========================================
>    0:   07                      (bad)
>    1:   20 05 00 00 49 03       and    %al,0x3490000(%rip)        # 0x3490007
>    7:   6d                      insl   (%dx),%es:(%rdi)
>    8:   00 48 89                add    %cl,-0x77(%rax)
>    b:   e8 48 c1 e8 03          callq  0x3e8c158
>   10:   42 80 3c 38 00          cmpb   $0x0,(%rax,%r15,1)
>   15:   74                      .byte 0x74

There is strong indication that this is a manifestation of the same
problem we see in other crashes.
Let's make one canonical bug for this:

#syz dup: general protection fault in perf_misc_flags

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbRNgchFs_Wc4zLk%2BJ%3DMjsTNEx2EvnbSpKtSi1R_YiPDQ%40mail.gmail.com.
