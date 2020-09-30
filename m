Return-Path: <clang-built-linux+bncBC2ORX645YPRB3MF2T5QKGQEMXJUDHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1889F27F4E6
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:13:02 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id w7sf1117275wrp.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:13:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601503981; cv=pass;
        d=google.com; s=arc-20160816;
        b=RTXM4PPHBnOwcAmyIqZzFoScW64BBLezFbeRkHhIws4cw3CwA+QotF0yaoyri0TVaz
         xa7vO+IrVHdJ7KRw4Y+wkgk8oTL9zpac1LenTiOWEGI0s5801z21xYMQhMsvw1ESDp/I
         OmI98en486Ziz7DPHjhZYqGkmkRSemA0hBUcAQz3bfxjz/z00zPfiYAXQ6VYtkEP3/ha
         Unki8JU0+dakFVlulPLCXEU/XaFj+Pi6o9hPO4u+iIeEH2RsnMnovUDSeGhgHKtRJwD6
         BdG0LBUwlZTOUx13QiiwiTMNGHk764J39ExdFb3ZW0ibd7CZT6Nfsn9maGH8cBy7aZBE
         Hu8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5nNESRyPjr9IPHCNdnxbof1mpXXOsV7P6wf8PlviS/g=;
        b=hgopCObmQ8V176cKjpIVtMFgs4gzBNTX7YJnjuoer4a3uB0A1qpS4vPQnTqP224EN2
         rpvYh8ykMHG1J1QTBfRtJQjSa7couRBrXcyBi8fcPb0RYclncqxtphpRl0pu9TatszsK
         JZAm22bsUKwIy5uAYq3qgZpqEVbZ+3m6Nkrgnwd10O5mKH17arsV+vra+Sipuc+9JRVO
         CBAjTdQj3Pef5hftG3LRKae1AeRcHBrPK1non0JEDqd7lLZwL1BEZzZh8FOWcxBxTLMI
         vxNSLjvsmaKxYzZK6hdlScBAunnwreKRbHcDMsQPSfh+Ip9YBWB9Oj1zT8OItZTAJzHX
         OLng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vIRIWKYp;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5nNESRyPjr9IPHCNdnxbof1mpXXOsV7P6wf8PlviS/g=;
        b=QNL2+ax9m0jDIbb37h8fgaqWbKZ7zHbzt4yzlmV9qifLYFDJL8L9zomP9r1WbIlJ6O
         HWEqWtZrYUtahdx6yuEsODcI7nE+RyYjpybDZxNgL8gvPtD8RhXpTijtZ30cKOLxw6Ni
         Iv3MaQtCTJ0H1bHhVuE6/sPF3MdaSbOBTWUZ5JqH7sCjRino9cgSpMR1SIZNsQiF1OUy
         +D37PmzVILej9NRydUL4az1M45QJRuDkKQpBKWoHMfh7NBCAUy6AI5feQ1ifEw2CEwM1
         yLrufpKr3rA96xeJFtQKqy4ZcPIYSvUkjH7PtuZP2xzluOhPs7py/EnyVAncJY15DHyi
         +6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5nNESRyPjr9IPHCNdnxbof1mpXXOsV7P6wf8PlviS/g=;
        b=FjHNB689kyCmZmyspNQt6y2eHS854DtefJ5hUMO/T4n4pEHAA399S67tkPQTREwowR
         mOJSdwrzyHmLGMo4zXoqK7xGmN900YMA8H1oUB6pX7JdL9IpkIkQjk01OEphfqN/AaIg
         4iwYmkboSiaZhg9jzUhsF4mZpENjEfRL29UNeMUDcPJKXXCWFbEnqb8vbiDPI3RzVRb1
         GbXIlXj/BB7hTjcVpSt+q9ed//kI7KLIZGCmlz/M5v4MTuX61OscyaYVp7jnvGMb3yYg
         I4Ltd0sH4uklRqs6Dtw6C6bsdTqHeI8FZ4m7izGU9gLKVXlBmTmbGRyjXGGdaMvPpbQD
         ujxQ==
X-Gm-Message-State: AOAM533yvD4a2uu39FBMQiZpfXmzn9QftwjPss2q5vfuU1v7Q1CKI0wu
	erqxuiKxOn97hLcwmjucZ70=
X-Google-Smtp-Source: ABdhPJyz48XbuaBSEjLhb/meM8D8n2PRNEUJh4009Iz8pCUpF0osrnVXarVHJMzicXZMyJ+yTTw2Kg==
X-Received: by 2002:a1c:e389:: with SMTP id a131mr5311792wmh.181.1601503981699;
        Wed, 30 Sep 2020 15:13:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls4005289wrm.1.gmail; Wed, 30 Sep
 2020 15:13:00 -0700 (PDT)
X-Received: by 2002:adf:eb04:: with SMTP id s4mr5656965wrn.81.1601503980734;
        Wed, 30 Sep 2020 15:13:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601503980; cv=none;
        d=google.com; s=arc-20160816;
        b=aX/r3doRIIDKJJ+HbrvvpXNjdiWKwdrZ7Ww51QXPG6rRhRnbWJ7MjJvZ/umpRy4FO9
         Ba3SAm4gQ7gETSJzKei0XrXBL+NdWrh1vNHfz22dEfdJ4lpQQWQCON/hfL1BhY/gyGh0
         /YSNbtn+yt6q1k4qK6Fp+VO6IXPDtCIVxcYS75WbN42loWkApIXujERVfFEhdbGq1wcA
         c/pguBTBgSWl3KnBHTTFGA+pqZuuCSmD5LtLFiBNcSwq5+xamnPsUD7kTa4sTDgrCmX/
         W5vmS7k06blOMI2gfvAVb+jtrAV/Gi2Q9RG+y5X88tE1qkE6WZIte7Utc3Pfv758ntq7
         VTvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/5JyINSMzWB8voXWZyV8ASlSh5pqRDmgZFl229b53xc=;
        b=dcxlr5RxLymoGnJHpKyCwornvyCjR/ghIQNiR5IqOJKibTzYTFUlMBrc6hjbEu6mWD
         PX7Sq+F/StjYwWRB6NU3sKSEoq2C6iOaoC7yjfbyh1h6aSGNcKrwzyVu3A7YnyHjuTfi
         QaHMtxE2UO07I6e/u2kP78fUZKtKCvFA4NnH23XSmfk7meTEeca8k7fF8StMDuBYjCb8
         8zEmaw7lvEuRWczPmdv+aQc4ZjimZTHWJtj1P+2QEiz+0dB78iLI6q1kPlLbETx621wh
         AkkJE7t0pzLSa+yYIGrBgrhU+FajVUQ07Hnl+pgfh67ClJvymzHnkn3YoHdqpn/PzFk+
         tTqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vIRIWKYp;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d19si76496wmd.0.2020.09.30.15.13.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 15:13:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id 33so3186625edq.13
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 15:13:00 -0700 (PDT)
X-Received: by 2002:aa7:c0d3:: with SMTP id j19mr5304520edp.40.1601503980129;
 Wed, 30 Sep 2020 15:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com> <CAKwvOdnYBkUx9YpY9XLONbNYFD7JrOfGbRFQ8ZTf-sa2GTgQdQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnYBkUx9YpY9XLONbNYFD7JrOfGbRFQ8ZTf-sa2GTgQdQ@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 15:12:49 -0700
Message-ID: <CABCJKufUU=s6GcRCRcmuKnANtyyKEBNJVuaPw416C1OPNgywEQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/29] Add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vIRIWKYp;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543
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

On Wed, Sep 30, 2020 at 2:58 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Sep 29, 2020 at 2:46 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> >
> > In addition to performance, the primary motivation for LTO is
> > to allow Clang's Control-Flow Integrity (CFI) to be used in the
> > kernel. Google has shipped millions of Pixel devices running three
> > major kernel versions with LTO+CFI since 2018.
> >
> > Most of the patches are build system changes for handling LLVM
> > bitcode, which Clang produces with LTO instead of ELF object files,
> > postponing ELF processing until a later stage, and ensuring initcall
> > ordering.
>
> Sami, thanks for continuing to drive the series. I encourage you to
> keep resending with fixes accumulated or dropped on a weekly cadence.
>
> The series worked well for me on arm64, but for x86_64 on mainline I
> saw a stream of new objtool warnings:
[...]

Objtool normally won't print out these warnings when run on vmlinux.o,
but we can't pass --vmlinux to objtool as that also implies noinstr
validation right now. I think we'd have to split that from --vmlinux
to avoid these. I can include a patch to add a --noinstr flag in v5.
Peter, any thoughts about this?

> I think those should be resolved before I provide any kind of tested
> by tag.  My other piece of feedback was that I like the default
> ThinLTO, but I think the help text in the Kconfig which is visible
> during menuconfig could be improved by informing the user the
> tradeoffs.  For example, if CONFIG_THINLTO is disabled, it should be
> noted that full LTO will be used instead.  Also, that full LTO may
> produce slightly better optimized binaries than ThinLTO, at the cost
> of not utilizing multiple cores when linking and thus significantly
> slower to link.
>
> Maybe explaining that setting it to "n" implies a full LTO build,
> which will be much slower to link but possibly slightly faster would
> be good?  It's not visible unless LTO_CLANG and ARCH_SUPPORTS_THINLTO
> is enabled, so I don't think you need to explain that THINLTO without
> those is *not* full LTO.  I'll leave the precise wording to you. WDYT?

Sure, sounds good. I'll update the help text in the next version.

> Also, when I look at your treewide DISABLE_LTO patch, I think "does
> that need to be a part of this series, or is it a cleanup that can
> stand on its own?"  I think it may be the latter?  Maybe it would help
> shed one more patch than to have to carry it to just send it?  Or did
> I miss something as to why it should remain a part of this series?

I suppose it could be stand-alone, but as these patches are also
disabling LTO by filtering out flags in some of the same files,
removing the unused DISABLE_LTO flags first would reduce confusion.
But I'm fine with sending it separately too if that's preferred.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufUU%3Ds6GcRCRcmuKnANtyyKEBNJVuaPw416C1OPNgywEQ%40mail.gmail.com.
