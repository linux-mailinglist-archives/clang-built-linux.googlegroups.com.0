Return-Path: <clang-built-linux+bncBCU73AEHRQBBB5FI4P4AKGQEHQEI5JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A3022A37B
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 02:06:14 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id h75sf2822754pfe.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 17:06:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595462773; cv=pass;
        d=google.com; s=arc-20160816;
        b=mhAlLq9RRWwPL6Mod47ZE8ADhSoZ5unTuHGwaO3E8HL8LdkVFsJ/xlmu6fcSxhcfea
         ZAVhkrNfQNUXwBFcTOexqKTZIx86tWltvSStOYEdZ6Jt4qn2X7kPCEB29IXvKJdB3Egk
         zewUd0r6ygG0l/qpwMlpZJuO+T9PaDSKzhed9bJ2bLqiOFDGvDaa5L6lZpANRPFKOqjJ
         mpE01aGBn6q4atg0RoFT5YzOWZr+TBRTvggUnjSATIEvP7IQLNuB8WWxei+YjmjqbzXf
         /etAFYH+pkAkTj1seBBzcoNP9ek+s4eVCShnF8W92LeRf7peB3BvhY5qgrX0hhrsO2T1
         +4bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=tleqmr/Rg3lrQ+FmQQSvVEmV63ckLwyTl9VsmwY5xew=;
        b=oPCovi5VYPsv54iP65sl6chUzSLbr+XQL2gN8fK0vjVUEv2cIPEKPlwW9av+CKYUYg
         cX8beyLLpQR9BrOx/cU2WqIije5Pp9fABC5Kkl+NnwRDJyZl/cY+Io21qsGDZZsVQWAS
         /nSiHO7e5A8daSRrgiokkpvTv3rOpUchguh9hiqExQBCYZzVMgUv0ZilxWJ+sJ1F3Zl3
         2erfPMZV4nlZUY0hntB2dvOZPFn7VxughQBhefeU1hkRG2769pdia7ELzV8JPxvilgnK
         ZQlyYGTKFukWurw1ETc2IgxXGtnMEX17+IBnA7EWkB9A1XN0XQZ7e28eRwfGr8DoaOGh
         00Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=be4a=bc=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=BE4A=BC=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tleqmr/Rg3lrQ+FmQQSvVEmV63ckLwyTl9VsmwY5xew=;
        b=Ozn+KGN38xEZM2kYcHSQlXQkACy2K9OjCExAz8mIU+wBsdeD2whRRapZOiwwAhCwxq
         OaHlWYX77lQ1/xrRMfzhsHNhkO1a0qzOeAEZQWjWxAFCmtu45mYstJ0lZfbT8Z31Jj0p
         gVj+lS06iog76lRH4Kh/C5ADybw+VTM3MiGtF1JjbNMrLx30h+rZOE2MUFVDFwvNtXFT
         JJsY0/23TRhLF8ETKG5D1NZTA4jsXKyCVz4D55wZbujyXWVC+1D5WwnvvlPmzMMHkhXj
         wKGHgM3FPGG/2/xkF+fEI6Ubbo9Zl6cRF/AiEQSYpD9qLsJGeCk4b0Cjrra3C1Sxs6RP
         I8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tleqmr/Rg3lrQ+FmQQSvVEmV63ckLwyTl9VsmwY5xew=;
        b=CIkbV9Kv1ioyRLvpxn4q2EF7zqr3onkLcObtxfqLnDdON0WmqG5GVlv3i+8FfmWkmJ
         8pRx4xLMLdTut6YTy/LVxsaeNcYQx05H64GkOfCbq2JIq6UvaoMppZ792eUMKVwZn3DA
         g7Jo/cpJVNPvf9YM32ZYAiMgI2WgMdpPhYwNNwhzrRSwAqLuK+5CF5M9jFqn/Wphd5GD
         H0OcCTUnXBzK1VQPxWDWK9wI8keulre5bnIv0g2nulFHn+uQY06dDIxN9SZ8znVo5ShU
         tb1r/3RqWuqjLa2MYhNbTPYxI3mWBmA2OTvZe52oyxfvDhsOogzEvFKugYksRj4qyXmL
         Wpag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ig7yrKjcJofqeysKUZuPifngbD5v2XCJfHW957oOosomzN5Xj
	47XAdKJrHRQYg6wSg/sJhtg=
X-Google-Smtp-Source: ABdhPJzIge490rpCjaGHOqlBIrW/M0RUBC3Sxr3hRS8JWMIp4wI7ymRp26HidMJgx5BHZwfLJIfXPQ==
X-Received: by 2002:a17:902:8212:: with SMTP id x18mr1565689pln.53.1595462772955;
        Wed, 22 Jul 2020 17:06:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls1558363pls.3.gmail; Wed, 22
 Jul 2020 17:06:12 -0700 (PDT)
X-Received: by 2002:a17:90a:334c:: with SMTP id m70mr1849865pjb.88.1595462772611;
        Wed, 22 Jul 2020 17:06:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595462772; cv=none;
        d=google.com; s=arc-20160816;
        b=bk0/U/kAeAPTLxDTA1qL9dBN8eSm7SSKsjF8f7eeTgsh9HKeJL10WhbRa4SBA3AzuI
         1lAXGe0UxcPXCncqW3dulkxdOnobwVauIdvWHLp9M8oajEF6EbKV4FxBdZSsr/Lry1I4
         cKY7Z+r/OpWOfAlyiuuwziepMVubF6RI10BMG7yo3d0hYwyBzoON27pJpd9wE/nksacg
         RMCUXiqW0tdoPllvGfD65BcYFEzooS52oP4yjvp1XLjFuZ3Ac3cwsgSGd9vkowArTL2c
         TAX2/ym1NWanNMQNQG5ZIDXPPmeuFo2DaRoOYLSD+Qz1mi2QQxtnnJzXTCIV5spjRZ0U
         xjNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=9HzA2LL91bQr8zeensxwMlfwq/0mQTGC5jt3AdCeXQ0=;
        b=dev1OizNj1vHA6xLGQmrntVM/OY8BpoKM6TSDInxDkskpEFo2UoQroQzNe7NmtyZ2Y
         Z42CWKpNywL7igal1Nn1TeBq1CAeLCeYuKO+k22vquOwmCnVBEJOxDPQjWuQW0wF6yLJ
         JnyhRpJCxrxQ5VTA53viqpnK9xI7lQ1ElE5t5+1v+GQzNALfHJMbJbdMJbQ79Ub9BCkd
         TKVPh4vpVfSMtTrfxnhGmJwJrLcy1W3PryD6tzilOrEGWi4V2xmH3YTiKo6gal9dpnoF
         hPUXha9HZo3MN4GZ1AbOIa5dlYi6ZbsupCzs/PCs9ewVbxPq0+D1UPo1DSShSxgmOrWo
         kBBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=be4a=bc=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=BE4A=BC=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j4si117018pjd.0.2020.07.22.17.06.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jul 2020 17:06:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=be4a=bc=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8983C206E3;
	Thu, 23 Jul 2020 00:06:10 +0000 (UTC)
Date: Wed, 22 Jul 2020 20:06:08 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada
 <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kees
 Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, x86@kernel.org, Josh Poimboeuf
 <jpoimboe@redhat.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200722200608.40ca9994@oasis.local.home>
In-Reply-To: <20200722235620.GR10769@hirez.programming.kicks-ass.net>
References: <20200624212737.GV4817@hirez.programming.kicks-ass.net>
	<20200624214530.GA120457@google.com>
	<20200625074530.GW4817@hirez.programming.kicks-ass.net>
	<20200625161503.GB173089@google.com>
	<20200625200235.GQ4781@hirez.programming.kicks-ass.net>
	<20200625224042.GA169781@google.com>
	<20200626112931.GF4817@hirez.programming.kicks-ass.net>
	<20200722135542.41127cc4@oasis.local.home>
	<20200722184137.GP10769@hirez.programming.kicks-ass.net>
	<20200722150943.53046592@oasis.local.home>
	<20200722235620.GR10769@hirez.programming.kicks-ass.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=be4a=bc=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=BE4A=BC=goodmis.org=rostedt@kernel.org"
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

On Thu, 23 Jul 2020 01:56:20 +0200
Peter Zijlstra <peterz@infradead.org> wrote:

> Anyway, what do you prefer, I suppose I can make objtool whatever we
> need, that patch is trivial. Simply recording the sites and not
> rewriting them should be simple enough.

Either way. If objtool turns it into nops, just make it where we can
enable -DCC_USING_NOP_MCOUNT set, and the kernel will be unaware.

Or if you just add the locations, then that would work too.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722200608.40ca9994%40oasis.local.home.
