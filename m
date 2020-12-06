Return-Path: <clang-built-linux+bncBC2ORX645YPRBB7VWT7AKGQEC6MICFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C5E2D0709
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Dec 2020 21:09:44 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id z3sf15374876ybc.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Dec 2020 12:09:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607285383; cv=pass;
        d=google.com; s=arc-20160816;
        b=lmL417HAMd8Khwk3IeNTI0fXeh5Lw5jG0abRAevQiZr3ATN6ywE1QoskrDjAp7rYBY
         4ZtdCpFr8HKTss5np90q0DIVMoEv9HckGuO78DTJekMyzgKZLhJbUqXEW/J2HVrajzO4
         N4S//xjsHXwCA+7gkmYf8ZpJb9dN1hJBRcRSIBYbC2KLtQB9xh9DXs18rJ79wxH1ELmH
         heQlzmNphRxpuQXmWwKpOWpOqB57IP51Cwhpd9dsTlvrAdVx8fpLD00JIpImk8X4r4fZ
         s2TYYPgNIGIkIQ8HHMUmgYwc5O7U0huGTFCyr/UIWBH51ZsUSOmiLEIOCxIYIN8mPbSg
         Fu7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gxcyAaN5QhSNgNpLdMNBzo1lSuCrTNL377Nxa6HCmyM=;
        b=srbIcOqY14gLEO4gA4ziXQkhrikJxTDNJlacQsdbmxzo0BeKh5tGjdGbcRAxC7zqf5
         1bHf+O1XCOxAWmeEeB+4Kx0CPR7ual2MSMgHztxX7FwbsLqRCA/pBhsN3BcHrxWtu0AT
         inarMRIdWgktVDXp4YMpc9D1kXvyF8tNo9bC165k/tnfE/EgKekEBTP+ygKXhcfjG/A5
         PsoVtbwnBm3qGHBL5ktiYGBY+DP2Y29DLlP/nN0PpaclvEF2MnLkq1jdXakB7/NoZ2j6
         n70HTvkoW2/FNmeepH8GUIEC3Xl6ltpD3gwrsNa9zAnObv2riU7lUiBk1imx15OSHT6H
         YuPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="iS/yxV/u";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gxcyAaN5QhSNgNpLdMNBzo1lSuCrTNL377Nxa6HCmyM=;
        b=ilGu1pkhlYYg33hQayj+EdBQz40g7mc39z6XOboKbYCXpW1ZDm5nuDS22DE875hHFo
         hYldk+ifm/GLKy+rt9rDDmVV8Lw6w2A8lS/bcizRIIZ79l06rlufODZKf9GcWCQ67h8Q
         5ecjzIV6uLJVAIK/4ExEz4e89iNZ4+jS/kFn8bvpDPRkl3EVjognO/9bitjxFqDu6dyu
         u1+sTGkAD5NHvSKaubjBUFvxemElAqxwxEzrVgMzdkuOJzTcNgS4WMzUqWMfe7tIfX7R
         biS+9nYzA6hDf6K9FEt6e4/hqDXbj4Lh5l7ZTpdicbRhNcxfViDU7YkxCMIKyvieILsF
         oyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gxcyAaN5QhSNgNpLdMNBzo1lSuCrTNL377Nxa6HCmyM=;
        b=NbXkuNyvmB4RwYUfnQwvgiFtaGex4Z+Vm+obYNU4QALm0uJsH3stSOtRFsehIxSZi0
         pn26As8/TsM+QIaLgec3+uFBZguSVB/+1vSRDWUPkNDdYMI7wdTjmexIXjsSxYK676Ak
         xakNH8wlvuXuWYJ8DEr4q+vrcf9Zv31JJo3rGPPuo+Xdlq04Hdi6p/FDd83GPTw1vSKd
         YY5txBvuuSpiQdFAkcPO9rwemdLLbw7MLPGHndOVQzPaB7TRrlWWLyEzN6l/3scaKttj
         6lNmJUX3mIIgUskz57cMCpIY7t2feXHqu0QfwSRaZdVMIGir70QMGUnipSkMHvy7l6Hs
         vh5w==
X-Gm-Message-State: AOAM531fQkTL52rlEd1fBvUhdluwGfjaG3PCddpQXljuIg1v82V6CQy9
	eRQu3jwkcccroIS0Mvhh4eY=
X-Google-Smtp-Source: ABdhPJzJxBMh4TUAvGxBi4Oy5YoU00ddErF8PAw7dvtPs5mnyOjhshhVDei+6be63s/iFzAXyFeyjg==
X-Received: by 2002:a25:2d5b:: with SMTP id s27mr11469655ybe.65.1607285383176;
        Sun, 06 Dec 2020 12:09:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5f42:: with SMTP id h2ls7033465ybm.11.gmail; Sun, 06 Dec
 2020 12:09:42 -0800 (PST)
X-Received: by 2002:a25:778e:: with SMTP id s136mr19096568ybc.472.1607285382718;
        Sun, 06 Dec 2020 12:09:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607285382; cv=none;
        d=google.com; s=arc-20160816;
        b=XtIPrbVi5AvhjYp6Nz5t3fydhKMICyOYJqqDExel6cLAjZMjrrE5q84faVtDvR3FdW
         hBpqPQaY/aQYF0ZMZ7nh0iTDW8YU0wzcSKXL13qAP3wfYxu0NI/QbaaxklYxGklLg+W5
         Q2q2Depy/zmvM0djt2YMMlgkoRetfgIebHYw7hxA2hW/BwMsCK8dKqXoGsSXOaGEDOY0
         0qUYC++9lmlrJAieTk5DUXqF/12pCci7iuXJbFE6xrrAu4BaPKyWo5eF3pshuKA6qXyJ
         3Q7ZC+BsAcGmI51kU7aRuYxu6fxrvBaeGWYPikaCXoxvpuIeOxDdqO69tUERpGyEckBn
         V7/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iz05We4T6eIjQaXBvxz0eSpPimwSlGMKW8WGflLLLgw=;
        b=crKaAgVbFLQTgHA9G2/4yyBbc9dUqhJNFSS0bi9DuhV41p3sSm/fxvn+C4qlasjKPm
         sw0f6goTF2ERyNGMTeuqJ1/iK4F3I4YbiY0+yI1WRkILJWZzv/bWR/qIn8UNhkRawJ7K
         DfLDpvMRNEXH2GfoZ91beMtM7Nqeq5lYnCPO3Pu80cJdDfxsELCtSBNgz6Zc/rrElfwT
         ggR7P9U6VgcdVONTFI69WDAA5jyZrFw+v5/63xqQdaqG3D73LQ1uZiqTcJ/46w5D86Lb
         UZhWM2rFdPyZ2/LiQm+e4QUzzxT3F5kX2xDrHhTtdgSfumfH7eSp9TfMzDSoc4sgRKPC
         9SWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="iS/yxV/u";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id u13si765691ybk.0.2020.12.06.12.09.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Dec 2020 12:09:42 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Received: by mail-ua1-x943.google.com with SMTP id k12so3786735uae.13
        for <clang-built-linux@googlegroups.com>; Sun, 06 Dec 2020 12:09:42 -0800 (PST)
X-Received: by 2002:ab0:6f0f:: with SMTP id r15mr3484878uah.52.1607285382144;
 Sun, 06 Dec 2020 12:09:42 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <20201203112622.GA31188@willie-the-truck> <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
 <20201203182252.GA32011@willie-the-truck> <CAKwvOdnvq=L=gQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ@mail.gmail.com>
 <CABCJKufgkq+k0DeYaXrzjXniy=T_N4sN1bxoK9=cUxTZN5xSVQ@mail.gmail.com> <20201206065028.GA2819096@ubuntu-m3-large-x86>
In-Reply-To: <20201206065028.GA2819096@ubuntu-m3-large-x86>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 6 Dec 2020 12:09:31 -0800
Message-ID: <CABCJKue9TJnhge6TVPj9vfZXPGD4RW2JYiN3kNwVKNovTCq8ZA@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>, Jian Cai <jiancai@google.com>, 
	Kristof Beyls <Kristof.Beyls@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="iS/yxV/u";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943
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

On Sat, Dec 5, 2020 at 10:50 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Dec 04, 2020 at 02:52:41PM -0800, Sami Tolvanen wrote:
> > On Thu, Dec 3, 2020 at 2:32 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > So I'd recommend to Sami to simply make the Kconfig also depend on
> > > clang's integrated assembler (not just llvm-nm and llvm-ar).
> >
> > Sure, sounds good to me. What's the preferred way to test for this in Kconfig?
> >
> > It looks like actually trying to test if we have an LLVM assembler
> > (e.g. using $(as-instr,.section
> > ".linker-options","e",@llvm_linker_options)) doesn't work as Kconfig
> > doesn't pass -no-integrated-as to clang here.

After a closer look, that's actually not correct, this seems to work
with Clang+LLD no matter which assembler is used. I suppose we could
test for .gasversion. to detect GNU as, but that's hardly ideal.

> >I could do something
> > simple like $(success,echo $(LLVM) $(LLVM_IAS) | grep -q "1 1").
> >
> > Thoughts?
> >
> > Sami
>
> I think
>
>     depends on $(success,test $(LLVM_IAS) -eq 1)
>
> should work, at least according to my brief test.

Sure, looks good to me. However, I think we should also test for
LLVM=1 to avoid possible further issues with mismatched toolchains
instead of only checking for llvm-nm and llvm-ar.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKue9TJnhge6TVPj9vfZXPGD4RW2JYiN3kNwVKNovTCq8ZA%40mail.gmail.com.
