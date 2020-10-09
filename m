Return-Path: <clang-built-linux+bncBCU73AEHRQBBBBXJQP6AKGQE3XHAYKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0C0289C28
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 01:38:48 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id 18sf8178192ilt.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 16:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602286727; cv=pass;
        d=google.com; s=arc-20160816;
        b=V2Z1t46C9mf4qnVst5G9gzOtyeZvk44/c0iDddpqrvUBWYbb/nl/1/KsgR/QoyYunF
         2xVyqkNgVZsw7f6TgM0ihl1gKFul3oy/9peS2dgr8+a7KBibVzODOPQ4NF3VbgTjWOY0
         +dRWlABkGQwc0PkA+KAdGHuwHaXEUNhrbS9H+sWgQ+ZZAWfvbQ2mTi+FPZG+yf4xqH0n
         E2+MFY3Ngf6m7Ve999e70CTmv/bQrD/u49mPZA2/kjTcBE0PI/phLtGNIuzxCtJiv4VK
         pRNgU5XLlV8GKn3gtFp8LKD/OLPT0sVLlBsQnEeF/uPmxNb7YFOXAKBryJeX3ViqhHx+
         UDXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1MYCO68ef+bM+aGM+oZBBSH4FQyAA1I42NAdeJRntug=;
        b=XLJth0iclRKEe8T2Cghw6pL5gnjr4AQNKBnQd1TPzYaicFk6YUgilrdAaHcB2uBf5J
         UoOYl3sQxdUPc4vrYflIQtprenff1iKpthwa4WsQpkYNKoIigvcQYc4NXGd7GWfhjuJ7
         QlUahRLkobuAJrF4XE9HyBiBHC3cvVrYIjX9AH6X9JqACVlcvX2ho3p5yXCY3pEYxVTV
         aNwa19PeFYlctVvZutRNxG1B2K3VgLhnVVVcw/VM0UxdkWyghVX8RQC4YBXwGFE2t1hs
         7sn52kwlN4ZZjXk06GhQbU9WpJ4RORBPiaO19dGM3XfqHiB/8hBdNNn/38bgYJrGo5Bq
         B2Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=psup=dq=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=PSUp=DQ=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1MYCO68ef+bM+aGM+oZBBSH4FQyAA1I42NAdeJRntug=;
        b=XuAb/Xz9gDTrm/J4gZP16p5D8zH18I7Okw1L3+ZhmeFf4UhjiYNVW3FoksKpznKs6l
         MKea3Tf7wvY1wkgJJYo+32X575VZpGty+wy4s6D3utK0XJGPmUIA/eX82yqhhRY+mjH5
         Bx6lxMvdzJFm7PWysrjB7qeov8BU8/suzTyn5aYT7fqFcFhq5cymjqHXiP5+7cFTR7vC
         cBjWt1hvn/FaGMXHfNWc9BRFgPEDHxI+0CAXEfvHs9Unug85JYAMoZ/KL4D6U2B0VvnX
         iKFPDp058h/ztFvAeil/neKfDs6qMmKtmRgoyL9D+tEGigs8kBrucUTr3IQEYpR9/2Si
         pFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1MYCO68ef+bM+aGM+oZBBSH4FQyAA1I42NAdeJRntug=;
        b=ewv3qZGYzr/ZQBfsejKCwYu4V+YwOWDmHVc3mtQ16zeVfbBYRgmxe1nikXcp5zP/7U
         c/hkXMD90zewxJtd0DrWMc83UjM+wb8E5k36jnkbf5uQzzk5r4+DEVuS7FYt+XDG7Q5z
         xvmmab0IVXK6tfI8pgBwe2clqHdNATP+1PnJ1py+YnS0i45y2IG+aVJ17Df4DV1W9qqj
         fDcLkH798kaVFXwVZkWEmJh5dEBHyv1xTNKPLZ2V5uXuV4DQ4JCooZ5q63LSxuTVhI6P
         qZ5UaF1R8/SnU+/pOrtEmq7YiaULds9GEysMuBjxzxxGx68HebrjGe/wl67VnTTIKhiK
         ygfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533c5+JTWXKxKOHrj+IcLYvAjfzKEjbsLFKgJJip9xMLTEYUaIvH
	6xfnwaL8NJm3UyHws1q0Gjg=
X-Google-Smtp-Source: ABdhPJytKqciKVkF0+C1ULgsMeu1Oygun78b7om0tyVHhHpcs3CyYf0kPYG6a/smNJtFdVGtZyD9nA==
X-Received: by 2002:a05:6e02:58f:: with SMTP id c15mr12248278ils.84.1602286727058;
        Fri, 09 Oct 2020 16:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:e13:: with SMTP id a19ls2534517ilk.2.gmail; Fri, 09
 Oct 2020 16:38:46 -0700 (PDT)
X-Received: by 2002:a92:d686:: with SMTP id p6mr12331015iln.161.1602286726668;
        Fri, 09 Oct 2020 16:38:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602286726; cv=none;
        d=google.com; s=arc-20160816;
        b=DprJY8d/74q0b82/91XvtRzkAWFVEviAobGboyVwbaTsqQA4P0Ihrf4+juR5rgkvhJ
         XC6k2Dedcceb3HiijnyBFod5H9v5+irg1UjrfR4DRtALbVgdK9o+m9aLqIHnBNO8hrdn
         Xvo4UWtet+ZrGDMpN4hbXwGUoHdsu5HbRW7+UJndJX1XLtYaBwzRN0s6VpWyG5lkla+d
         DD0vJAdDhHrgtUHtryQrrLn9wRf/ouyDJS8vIvlMWD4wS8wu3DX2HWUK5aKnrQB5xxdH
         oEAdeFoPzA5E1mqUPwN726tZM2s53qHM1nEADW/+yynjN21kDSlHo+GYwl0IPsUyOIln
         czNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=21mXMDE4eKq5KkxVIZxfiy8QlIn/8d6nzdoXggPsVe0=;
        b=Quu2KymPpDAfAvXuCqQ3gXbNesmToF9YYwKfkcKd9bTLGtIgBwWtt4MI6YLOgTJJC7
         JZAjLECiVjdSTkj3MtNRoVHPbTWXKmp63MylO3OohnZQ3SBJaduBBu8DbrUvwgVVmIEE
         jrp/G4mw0cmBR8TEDaKKGeGAzpEKAUO3yRK6+FgcsQ4vYdVYExe9mnhjjF4OQwc/qpeC
         rMNnR2QfLuVp1/lXfHrWFd6MKnvOz8CdjNENkBOs5z95SbwY1TUkq0L4vc2O8I3tzh3U
         KyN2HHB/MdQyhDHtcnniYGCSpWUZzBK7vl0iHqcDuZ2rO3DxXh77pctRBs7lDqA+eBaq
         iYRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=psup=dq=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=PSUp=DQ=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z85si634448ilk.1.2020.10.09.16.38.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 16:38:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=psup=dq=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51D7A2222E;
	Fri,  9 Oct 2020 23:38:44 +0000 (UTC)
Date: Fri, 9 Oct 2020 19:38:38 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kees
 Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, x86@kernel.org
Subject: Re: [PATCH v5 00/29] Add support for Clang LTO
Message-ID: <20201009193759.13043836@oasis.local.home>
In-Reply-To: <20201009210548.GB1448445@google.com>
References: <20201009161338.657380-1-samitolvanen@google.com>
	<20201009153512.1546446a@gandalf.local.home>
	<20201009210548.GB1448445@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=psup=dq=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=PSUp=DQ=goodmis.org=rostedt@kernel.org"
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

On Fri, 9 Oct 2020 14:05:48 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> Ah yes, X86_DECODER_SELFTEST seems to be broken in tip/master. If you
> prefer, I have these patches on top of mainline here:
> 
>   https://github.com/samitolvanen/linux/tree/clang-lto
> 
> Testing your config with LTO on this tree, it does build and boot for
> me, although I saw a couple of new objtool warnings, and with LLVM=1,
> one warning from llvm-objdump.

Thanks, I disabled X86_DECODER_SELFTEST and it now builds.

I forced the objdump mcount logic with the below patch, which produces:

CONFIG_FTRACE_MCOUNT_RECORD=y
CONFIG_FTRACE_MCOUNT_USE_OBJTOOL=y

But I don't see the __mcount_loc sections being created.

I applied patches 1 - 6.

-- Steve

diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
index 89263210ab26..3042619e21b7 100644
--- a/kernel/trace/Kconfig
+++ b/kernel/trace/Kconfig
@@ -606,7 +606,7 @@ config FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
 
 config FTRACE_MCOUNT_USE_CC
 	def_bool y
-	depends on $(cc-option,-mrecord-mcount)
+	depends on $(cc-option,-mrecord-mcount1)
 	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
 	depends on FTRACE_MCOUNT_RECORD
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009193759.13043836%40oasis.local.home.
