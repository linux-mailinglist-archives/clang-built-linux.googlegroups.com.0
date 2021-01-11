Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBQM26P7QKGQEQX6VWXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id B22DD2F2279
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 23:12:18 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id x4sf117846uav.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 14:12:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610403137; cv=pass;
        d=google.com; s=arc-20160816;
        b=yMAhDQq56Er5aLgGGGFCF5Hec6ywicackWgpjBjiiAUltxdbdTO+KdwFZxDpDpocAy
         llik3TTj89F8vUn0Ji97wpApu2FMPm/VNL/k4Xd7kg1WSAs4Kb8MYd0rmrqIipQQh5SZ
         H0rb0MgLlZg70kGigluTUFCwusErek7znwg9KCFxB1PLvjjU5iKjOJnu6CQ+6jB//ITL
         IkOVp51HOXnGmWZTiq1D3LJocqex1aJ9IQqZbtqQoxMv+lY9F6dUfaydrENGUurmAI4R
         M81REplpI4Gj8TV/xoHKYsuCEAz67nRVaQn4fiG63yS7xJcbttStd/XqhlLhADIu3pC6
         tk+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YOyWrgfigx/UL46ZSXpiI7hcdb28Bbe02nXxVgZTPWk=;
        b=S9Hm0Nt+JkC7j+FC/1300MDStDNAds6botQlfoLnyh1RVmHnnns9U1Gb1JQKKp/Bls
         QJzwURJFwPsxureHeV3WSQwRk++xUp3np0ybNUzsknZ0b4ZLa30bKpujg7IVXWe4KvxS
         CIN7jnpx3zps2OOqs4aisMT7mRlqTwK2Fb7bLo2UIqZDFChzxA1akW1HU0FLGk43NEqq
         CV+TKAkgQmHJKPuNYOuJy5iARf1kdVQDKv+x3Jcew2FojROh9mFpNQg9F/o0+b5BwCvL
         Gr/CguZbN7elIFZOtuU/X7qqA2EC/BcS84oziX3lZuj2M5BWf+7ORuuHPvEOdqzWJ80s
         o4lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ak9ShE1m;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YOyWrgfigx/UL46ZSXpiI7hcdb28Bbe02nXxVgZTPWk=;
        b=rExtlALxSrG8jTEHxpD56yBe1apgLKq2rhyPES6Md9pTc1HtcjEQmbPld5Z/LQFeOi
         LOjSZ8Jb4dFzIWJAreHduiSxzH+JYVm2JyvDd1wOy21pgVvaZiS6KKgfZS3qj/ljGqCv
         dRdggxC85AXSgtMOV7G9RK1Ia03DFvPXEru3iRJ4SOZyZe9fDKJcoeNATkAfA94tYVwn
         Vv48zHnoxuJvqsguKTj8emJNTDvrgwqfGVCCnxsrRTzo7DD9RJnFKzBaYCMFBuw12TL1
         BvIpQLPNyUk4e/5vBWm32s5+ewpRaNjU0vD1EBoRO1n6wZI2VlDeRcMAhZzSVV17NXE+
         Kc5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YOyWrgfigx/UL46ZSXpiI7hcdb28Bbe02nXxVgZTPWk=;
        b=ZzdazJv7eb+uqTqV9AE0GrVDgxSdDPTlM/CoSkSfLZbNSq9Loua3gj6nt5CsDdsQRi
         509Bd5fJtzLf24bGpRSk8XYbYm2bfS7/BNwBPaNyfIAvSH6KlzdU3s1oXRcUqTIbERWK
         KHGUsHC9XhpXDl2P/5dejwNExPN+0kPzSp5qx73bKlKj1Nm/+x+YCN5dei22wMvvLIsG
         ZGzkxxs97CyDeF+Yx/yqFRmJWBQRmvJwfYq4nev0FcWu+CUM55Rk1PzoL6kM4PivBZbD
         qS88/UD7LhoCsPvE+BI2lab2IVoqtrnh5KPZNgpUb60P3CBYhTkqAs5AK04vt3lSLox/
         uzbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530p/KIxno0oVfQPJNaWHUb7SxYNfXO0z17q7NEGNO3aJilQiK9W
	Ofx/gpsjFnqIQZjy/7TNi40=
X-Google-Smtp-Source: ABdhPJws2J7I/GZs+xErFUbM/IQY7qgO5zsMBg4BPJ3BKlX3kZwRAs38guEfF1ID4RHK3UilgZQGuA==
X-Received: by 2002:a05:6102:666:: with SMTP id z6mr1701564vsf.46.1610403137760;
        Mon, 11 Jan 2021 14:12:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5f0b:: with SMTP id t11ls55282vkb.4.gmail; Mon, 11 Jan
 2021 14:12:17 -0800 (PST)
X-Received: by 2002:ac5:c2d8:: with SMTP id i24mr1566499vkk.12.1610403137287;
        Mon, 11 Jan 2021 14:12:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610403137; cv=none;
        d=google.com; s=arc-20160816;
        b=xeSMU1CU8p/+bRSBuU+2125/6QctvEO/xrpIxV3as9GtGbZocI359hjHLsziqilynb
         kQbycCldqDZiRlPAt2dgLvl7R+LSxIuMHmXXKvHwfrS8igLrzbbTTbDL3ZCbeC7e3A+I
         lOn4L8qfr3BwwatgHZHoi7lODS/1CNTLKW0WdDqZtMPKYxmGMZkZzg4LjQoBAbm+Dz5g
         8mk/sELvDsiNOgEGQlb9/4TOKLtUWGYFGT8LbLsI+AIU0Ihr4tg6kXIJMYWc6CitijZo
         wjvYjqT179nIYqO983/h8PwB8/w5ENtKOUJIQ+dPw11AUW2nVwfbzLa7DFFC/75t2ZZq
         ZJJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U2SRQaJi68oIpDWEDot6m4+vdPC0oqlKXjoXJCK3EU8=;
        b=EzOpp2ZDljtKmxxuyluguzEUYr8lfIhY7L2v/pQ6swJza6SbKCgRG/1lOXeUntvWZZ
         vEkTSIzZRS2OU0cBdPGYKh9Or3NvD7izmwexWZ/mRJtihOlb7GiOQrRWlPjFZxWprK99
         /fpL/PyEkpgsMaDi0JwYsjgXrtLBWBVJS0Pyw4vhkbBKUHRUNWWoJH+L73N9WWIbNv0/
         g06JTRi0XVxVBA0rCLuhgcFIcmXGx0OCsYbSMI1mbNXjn52pB5KoZcRclC0gjlJjWby0
         67FA+qUHLLXK7vDkrA9FVhdJRPOM1WEq0TuzOTklTjS9cNcFDYfN7WDX3pHnXCM5ggY2
         vXpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ak9ShE1m;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r13si134565vka.3.2021.01.11.14.12.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 14:12:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-g1YzdYylM4OYtp5p5gL-PQ-1; Mon, 11 Jan 2021 17:12:12 -0500
X-MC-Unique: g1YzdYylM4OYtp5p5gL-PQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4BF7B8101;
	Mon, 11 Jan 2021 22:12:10 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BA925C232;
	Mon, 11 Jan 2021 22:12:09 +0000 (UTC)
Date: Mon, 11 Jan 2021 16:12:07 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210111221207.3hdgzhhis7ubcyrb@treble>
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
 <20210111203807.3547278-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210111203807.3547278-1-ndesaulniers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Ak9ShE1m;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Jan 11, 2021 at 12:38:06PM -0800, Nick Desaulniers wrote:
> Arnd found a randconfig that produces the warning:
> 
> arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
> offset 0x3e
> 
> when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
> notes:
> 
>   With the LLVM assembler stripping the .text section symbol, objtool
>   has no way to reference this code when it generates ORC unwinder
>   entries, because this code is outside of any ELF function.
> 
> Fangrui notes that this optimization is helpful for reducing images size

"image"

> when compiling with -ffunction-sections and -fdata-sections. I have
> observerd on the order of tens of thousands of symbols for the kernel

"observed"

> images built with those flags. A patch has been authored against GNU
> binutils to match this behavior, with a new flag
> --generate-unused-section-symbols=[yes|no].
> 
> We can omit the .L prefix on a label to emit an entry into the symbol
> table for the label, with STB_LOCAL binding.  This enables objtool to
> generate proper unwind info here with LLVM_IAS=1.
> 
> Cc: Fangrui Song <maskray@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1209
> Link: https://reviews.llvm.org/D93783
> Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html
> Link: https://sourceware.org/pipermail/binutils/2020-December/114671.html
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v2 -> v3:
> * rework to use STB_LOCAL rather than STB_GLOBAL by dropping .L prefix,
>   as per Josh.
> * rename oneline to drop STB_GLOBAL in commit message.
> * add link to GAS docs on .L prefix.
> * drop Josh's ack since patch changed.

Acked-by: Josh Poimboeuf <jpoimboe@redhat.com>

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111221207.3hdgzhhis7ubcyrb%40treble.
