Return-Path: <clang-built-linux+bncBCS7XUWOUULBB5NOVT3AKGQE6HWD7YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBB51E043B
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 02:55:19 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id b5sf7823146otf.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 17:55:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590368118; cv=pass;
        d=google.com; s=arc-20160816;
        b=f/ZikIXzvs4JWe4hCASvIWCmj1achrAmB8L1KXCfY6acemBg4scAhENxEc1UQ4vaxa
         1RqPPlytOEKXGvREagveZ92iWKqkGsL7IYaxlVpLGTiSz/z2S8QhuJVZPFGFuuDmXyFl
         2D0nPKig7o1d/L2LUcz+A5ExpHKQEHHjOBvBG3e0VikhF6LL5BlO9RNiJHP0GVPEHp+G
         Kvlk5mDCFB8zI9NhSsjI5sD4iI4Bj0coWp6rnOHFiTzbYg9hmDzMMRW1j7hM9SWGtwge
         PNWsbdrxFXYJKU3XQh1ySAFPvQeZ9gNxwciI9ugUsGWjaf8j+1SN+ux/oLtcpat1QzMv
         7Jqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2NxsqshISuq0U4CZQ8ChPHT7mAkXH4rfzaz6LdPai9I=;
        b=voM9VzlhhyKmvIm0PvlI6PvjtgQN+1f/AZMeSR1dqUdIBvwzHRQoHMOkZxO9AdSN94
         Yb4yAnANlR7qmCZFfnqCP1BV1qgFR+OJItP1TfplYTJ9R9U8Uh4ABqq7BANgFuV9C1UP
         59Od8IMjn4ZznEEZzPWxlS5Bd7mukXoZvEVRMK+nLCp9bT6KQL5Fo9ocyKtMaQDFwEIG
         iQC38LQgvsJMAG5vCriTxqj6xRut0GmTk0XDtWCN1xonjZgh6qAgPaB1ruFMJl7Mo99W
         MdnNilfHGf4/ODjZEJZb4e02UTumwrxzMX+zjZy8RBa9LMPayeSfjp0e4WHdDOX3CYN1
         +myQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GePoBYiX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2NxsqshISuq0U4CZQ8ChPHT7mAkXH4rfzaz6LdPai9I=;
        b=ig0T2gqDqLhGvCYKjDKEFZo9HsU1eImk5Ve++mFm1Xqr7Sgbgh3iT2PqQLS0Q7SDFh
         OBIg7O3g7cGB7UiuS8QB5I156DzdVO2B9hFwwtUl3gM2n0xSVNvkvkq9AhUUwr8JI2w6
         KT2XskyPwVP0JSL4aSU25BqMAM7a/dU6TCBGyICRqF5DL2uxgQYWpI4qJPFISmvRwb+f
         8cR9icC9hvjLbwEgmcx3Mym7dphBFbdFp0xhUpuQmac+M61ttOjGSr458MmDoCcbeUxd
         3dtEPo5NTgaBXhTmdAfDBG+fq+OAN3T06YfMwEEG4pR6QLDMUG1wxmyNvR9cjSaf508+
         7gng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2NxsqshISuq0U4CZQ8ChPHT7mAkXH4rfzaz6LdPai9I=;
        b=RQmsasFAsZy2VIxGpvtZpTyfSQTMuIARl5ZvBo2aBQdlq9VJ6n+GKdA3nB1S4zDeAT
         +hvA67MhShKcmDoVjfIPxweC1LzqWBCedMBGxBVLLrSwajvtU9qarMLciIIbQimtj3mC
         VNZ1IHQYnPzDfTn+XfpMnjKL8aeC+VusPAWnzaJ6NxJ6vRvmG8QEaag2kTTZuhmuutBe
         0+hCpGtTnZ9uK0gy2JJ24BAMQhLS1e0KI7IOpLFcZ9IokWEr7xhNpCdVSEQh2x1/AvEu
         VhzyyyqVkDN+hG30DhrC+CSR1M5t7ga43sS8KHPvTvU6H4gOHWSt8lem5QS3RCHvhNVV
         PeIw==
X-Gm-Message-State: AOAM531DYsLtetbQ8RR2oI9XklmFf0TbVhujYz4hSioYkTrWpT1yYEkD
	YrWWW582mJj9n5u2dUBwQRw=
X-Google-Smtp-Source: ABdhPJwaOMSM4zlptonA58yGcE6l+LbvSwwg7Pw6m0IkLgMG6M2gTbnXrunHBprOy+Y+crFcK7b4QQ==
X-Received: by 2002:a05:6830:100a:: with SMTP id a10mr20841158otp.244.1590368118023;
        Sun, 24 May 2020 17:55:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d11:: with SMTP id v17ls1357474otn.2.gmail; Sun, 24 May
 2020 17:55:17 -0700 (PDT)
X-Received: by 2002:a05:6830:310c:: with SMTP id b12mr19804962ots.11.1590368117673;
        Sun, 24 May 2020 17:55:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590368117; cv=none;
        d=google.com; s=arc-20160816;
        b=v5w6ZBTG71JtrW2kvWa6hdBqlugRxhbmbgNVLsIkluTfwGfiVpEeQOD5WNPzvpDlGC
         bYun91FUEJ+v5491msyYRX5WWMmrsL7fwhhXjO5nCvIAqwc8b0fAvQB59TiRgS2+cD3a
         d8klOy1ge9FvOCdA0JbsNl70RwOb62PJsIhZ09apYIwrdO1xGiPJgfhxMYucBWc3yN8r
         AXi47Cdz0XVqMQlShNnJKUWgJ8eitgehLN5qaQbUT+UJzM+wIpbDAUxkdWECHqrLAfan
         o8TbVH91Jkphc4fto2wgu0ANxhO2EeVwkukroScKLDqYWHh7Aj4JArJqQ/wRpieBY6qN
         rrlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rnfFBtWF5NwtLUph1toRJ0xIkBihpsO8Cu7DfqjU0eE=;
        b=CNiIfF6R+hFkZ2GaUNhqOJ4oje41ePSJdRIXyc/XBHOTinUWKwFpCMs1mvXoCJPT7w
         +KfH/PFRgjORMVedS/ZkpSAaLpfLMrWpLwUHOS6tpsYksY9/qax53FX792jvcQiEmMFP
         07NgrxrX2NNLKDr/R1gUSqOyvbQQgnVb/NZUTYbHntJDCTT5LJEuISYRiKJmQilYA2FF
         5O0zzRl5SwGUr9n/sgWPYGN1v2bXqePPbkEskqcW5Fbt0/C5HlACBkuN2p6fblaGJsK1
         ow5KnuzPRrLj06ZEY4OWXG4gHCXWv1zIpyYGBmwUh6d8pgqIockVpRUsp8bwUb4dcJ2N
         qpvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GePoBYiX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p28si1471995ota.3.2020.05.24.17.55.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 17:55:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id s10so7993154pgm.0
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 17:55:17 -0700 (PDT)
X-Received: by 2002:aa7:8bcd:: with SMTP id s13mr3561374pfd.321.1590368116689;
        Sun, 24 May 2020 17:55:16 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id q12sm10798602pfn.129.2020.05.24.17.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 17:55:15 -0700 (PDT)
Date: Sun, 24 May 2020 17:55:11 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] x86/boot: Remove runtime relocations from .head.text
 code
Message-ID: <20200525005511.2aar7gfnklbnzj74@google.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-3-nivedita@alum.mit.edu>
 <20200524225359.wnc43jmh6rvfaezq@google.com>
 <20200524234402.GB280334@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200524234402.GB280334@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GePoBYiX;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-05-24, Arvind Sankar wrote:
>On Sun, May 24, 2020 at 03:53:59PM -0700, Fangrui Song wrote:
>> On 2020-05-24, Arvind Sankar wrote:
>> >The assembly code in head_{32,64}.S, while meant to be
>> >position-independent, generates run-time relocations because it uses
>> >instructions such as
>> >	leal	gdt(%edx), %eax
>> >which make the assembler and linker think that the code is using %edx as
>> >an index into gdt, and hence gdt needs to be relocated to its run-time
>> >address.
>> >
>> >With the BFD linker, this generates a warning during the build:
>> >  LD      arch/x86/boot/compressed/vmlinux
>> >ld: arch/x86/boot/compressed/head_32.o: warning: relocation in read-only section `.head.text'
>> >ld: warning: creating a DT_TEXTREL in object
>>
>> Interesting. How does the build generate a warning by default?
>> Do you use Gentoo Linux which appears to ship a --warn-shared-textrel
>> enabled-by-default patch? (https://bugs.gentoo.org/700488)
>
>Ah, yes I am using gentoo. I didn't realize that was a distro
>modification.
>
>> >+
>> >+/*
>> >+ * This macro gives the link address of X. It's the same as X, since startup_32
>> >+ * has link address 0, but defining it this way tells the assembler/linker that
>> >+ * we want the link address, and not the run-time address of X. This prevents
>> >+ * the linker from creating a run-time relocation entry for this reference.
>> >+ * The macro should be used as a displacement with a base register containing
>> >+ * the run-time address of startup_32 [i.e. la(X)(%reg)], or as an
>> >+ * immediate [$ la(X)].
>> >+ *
>> >+ * This macro can only be used from within the .head.text section, since the
>> >+ * expression requires startup_32 to be in the same section as the code being
>> >+ * assembled.
>> >+ */
>> >+#define la(X) ((X) - startup_32)
>> >+
>>
>> IIRC, %ebp contains the address of startup_32. la(X) references X
>> relative to startup_32. The fixup (in GNU as and clang integrated
>> assembler's term) is a constant which is resolved by the assembler.
>>
>> There is no R_386_32 or R_386_PC32 for the linker to resolve.
>
>This is incorrect (or maybe I'm not understanding you correctly). X is a
>symbol whose final location relative to startup_32 is in most cases not
>known to the assembler (there are a couple of cases where X is a label
>within .head.text which do get completely resolved by the assembler).
>
>For example, taking the instruction loading the gdt address, this is
>what we get from the assembler:
>	lea	la(gdt)(%ebp), %eax
>becomes in the object file:
>  11:   8d 85 00 00 00 00       lea    0x0(%ebp),%eax
>			13: R_X86_64_PC32       .data+0x23
>or a cleaner example using a global symbol:
>	subl	la(image_offset)(%ebp), %ebx
>becomes
>  41:   2b 9d 00 00 00 00       sub    0x0(%ebp),%ebx
>			43: R_X86_64_PC32       image_offset+0x43
>
>So in general you get PC32 relocations, with the addend being set by the
>assembler to .-startup_32, modulo the adjustment for where within the
>instruction the displacement needs to be. These relocations are resolved
>by the static linker to produce constants in the final executable.
>

You are right. I am not familiar with the code and only looked at 1b.

Just preprocessed head_64.S and verified many target symbols are in
.data and .pgtable  The assembler converts an expression `foo - symbol_defined_in_same_section`
to be `foo - . + offset` which can be encoded as an R_X86_64_PC32 (or
resolved the fixup if it is a constant, e.g. `1b - startup_32`)

>>
>> Not very sure stating that "since startup_32 has link address 0" is very
>> appropriate here (probably because I did't see the term "link address"
>> before). If my understanding above is correct, I think you can just
>> reword the comment to express that X is referenced relative to
>> startup_32, which is stored in %ebp.
>>
>
>Yeah, the more standard term is virtual address/VMA, but that sounds
>confusing to me with PIE code since the _actual_ virtual address at
>which this code is going to run isn't 0, that's just the address assumed
>for linking. I can reword it to avoid referencing "link address" but
>then it's not obvious why the macro is named "la" :) I'm open to
>suggestions on a better name, I could use offset but that's a bit
>long-winded. I could just use vma() if nobody else finds it confusing.
>
>Thanks.

With your approach, the important property is that "the distance between
startup_32 and the target symbol is a constant", not that "startup_32
has link address 0".  `ra`, `rva`, `rvma` or any other term which expresses "relative"
should work.  Hope someone can come up with a good suggestion:)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525005511.2aar7gfnklbnzj74%40google.com.
