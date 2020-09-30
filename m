Return-Path: <clang-built-linux+bncBCU73AEHRQBBBDU3Z75QKGQE7A5KTGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BDC27DD43
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 02:13:03 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id p17sf20802ooe.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 17:13:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601424782; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7clbdTpZCKVp8FaRTdMl0YvUIMjlBwqYJBniHJygLsBxxPLkFVdekiHvfyD4rnuvK
         b+i/9Lnm7iynPLSNTZHIcSH6gmMbFoOjLL3GLoIDb0quQIitLtQr459mwfPaGiJpdYEs
         FamJfkk5G6g8Ie4/fsHSMvpva7EDF21qXQDI4Zf8HinZNv3ipWKDL4ZD6WQuCBaMAuao
         8StCFUeCeQpTBci/1VXVBmQol5eQu/C/83nXadAuhmVCrvBbtdNVmW3mC5WwdHmBkfQx
         RmxNBexjdm2rizAL/69i0gX78XqlSsjm1fMVy7u+bZKVg8HKwvHygK/yRqIoFWD8lBBD
         AZEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=xjSMf6COQXOl6k2RyqljJ3jgjm5YCTDSDbIexWi2KJ4=;
        b=Cz/RbbJr8msVfzUbbpU9zdZHsFYvAk20/fgiM1IVGFVu7AReXe0g29EPWH4vrreqg8
         38sUfeoj9BS3EUmSX7yQusYRpVoqkiKO545Cp6AKBJCzZkoQ49Sm8voXyDzmNPkTVJ5/
         KhKOStKBkIVax+olqHU+irhd4nV97Kd0IpP1sEgZWT8KclCC1UIWV3DTiiisc1Oeg48t
         TZE+RYChD1nG7w82CpKlbxV46I8p1qotWJB6GuSpOHaccQcelw/XA1hDt1/Q+TinA+4S
         FjfcP+kpFGyXi6DXoMFLJhtmxehMnDQvkA+l6ocLnkTWfwKuH9qiJnf64TGFDD4qH4Sk
         mGxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=r9hq=dh=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=R9hQ=DH=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xjSMf6COQXOl6k2RyqljJ3jgjm5YCTDSDbIexWi2KJ4=;
        b=aZ6x/V5Y5wbvBvsgfqoYIVRgz8kLFGrztg5QI9T+Be93uk4pVAMGOISx9vooa0loVa
         KzqyibMVcFpQxJITE7JUx5Jka0MURM3PVpMrxhHDGu93iv1rjbkZkfWmRmF36wKFj9dy
         mpaR9DL14an9JpQAxmi0vAtXeQNl05e6kk+WuAcDeEI9ZeaLtpN8f5Oub8yqMtnOYiE5
         Pnx2/Mnxu+9d3TzHbpJFq8cwT4fEV0gGDO3w7PDDYKJ4xDRDCQVm6AXymbybq2IL2pzE
         G/E/Yfz3taNbeChF+Srs1QYCrFZavz1b0nvEkQQYbAPvrJq5EiE4vujK02vmBK8Irn7p
         TNDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xjSMf6COQXOl6k2RyqljJ3jgjm5YCTDSDbIexWi2KJ4=;
        b=ECmQ/pnOhNFSxlEE21Oz1DuP9b3Yc+My4IXy2WW5zJje4hhOD2x05iGsQGVCRs7nGG
         zgnt3s1ca3TJHiZlgU2XLD5pfQdqz3tyme3LkdBmDlOITyj393kdZQ9DyczUPH3xK8eI
         TAXIITd/eoGQTBBk8JJQMusYDtrgqB2N8vosDqv8kV+QwMvEgxM2WraP8Jgcnhfq7ttG
         H1+Sd+Wp3cpIEES5k/+VYDIJOOboJu3hjFY34rabjhNy4/ohlTkyd0cRa3YS+L7Bgf82
         Nu9d+3aDMyoWeiuYVpWn6nKdDZ1H+GRm7IAuwQ2UV4nbjlHy+Qrvhj2tbn+OkUbECDlt
         3SKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v2QBifvC5pjS8eBcHWvJNCvzR7FOyj70MnTTESJYJgl9TXWdF
	syljmCCwNJBq5qKhrpLVLEU=
X-Google-Smtp-Source: ABdhPJyypu/W6X6nJOXTLp9HmjEHlaGaPhyDeiEjdpia6oagYQcV8uhSlQkPbJLJLKAfvxgBGFFntg==
X-Received: by 2002:a9d:6a06:: with SMTP id g6mr4689864otn.312.1601424782556;
        Tue, 29 Sep 2020 17:13:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3a07:: with SMTP id h7ls83694oia.1.gmail; Tue, 29 Sep
 2020 17:13:02 -0700 (PDT)
X-Received: by 2002:aca:413:: with SMTP id 19mr86306oie.149.1601424782143;
        Tue, 29 Sep 2020 17:13:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601424782; cv=none;
        d=google.com; s=arc-20160816;
        b=vIfxZivv2zjWNhpWciGuGeD5APgWuyLTnqMcIq3isXvZqHpnpIu7IF9mlkFSPMyDc5
         omROOw/lCPnpfsswXqunr+ML10GhL+MWMjaX/kSWVjqG0nfnWIUnryvOmv+fKQR6vvXy
         BxE/SzEH4C6TZJQ6+uHux1sKrt9h2d7hjdynkn8chBM9gz/bCEkKmy1VULKr7r9RhQ95
         WPn4OYH9JdkDwdhro/tCxsX1zkzENV6sI+OO4MbFxpc6qqXwl8liQsPUdi93L2oky82t
         1/0WIr4Xo1QiUSEv20dogxaInVb97kUFXQmJqHmjLwUnD0w+3Nqc41dMu/oAa5r44aQY
         fx6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=qiw+aWDSAuUk6b1KvKJVTf7Ct1Q5/XNy/YbsKrDiXrE=;
        b=IX8hz1kVi6TyfpU4XBFqRplQmMqHx4UpYYLj8TGRusCTGOD8LO3z4BzCryWjt9uLzr
         wONy+Vh+7r1d4zJASW/u4AETq6lbHmckLBYFw+y/z0wAoqTE7NGx6DiDImQTr7XRIQ0N
         H6WBrBqbH+I5GCKg/C2+dvRk46k3dLMpJXdNA/wDWCAnu9369MjAMR/lL56lNEGA8SMX
         ORVm8op1gNkZVPtEgwbB452BQmurr4mnb6JEXcG+le7f3e4ZLXtSTx4RO+K6+zXm57UT
         oGssI+Co5kYYPz/y97qIqUmqg+b6ZX+2ZSlALXVSBPQ6PHTpVqtP2kbQGcawEvoC3f/Q
         87mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=r9hq=dh=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=R9hQ=DH=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d1si70451oom.0.2020.09.29.17.13.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 17:13:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=r9hq=dh=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5580B20739;
	Wed, 30 Sep 2020 00:12:59 +0000 (UTC)
Date: Tue, 29 Sep 2020 20:12:57 -0400
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
Subject: Re: [PATCH v4 06/29] tracing: move function tracer options to
 Kconfig
Message-ID: <20200929201257.1570aadd@oasis.local.home>
In-Reply-To: <20200929214631.3516445-7-samitolvanen@google.com>
References: <20200929214631.3516445-1-samitolvanen@google.com>
	<20200929214631.3516445-7-samitolvanen@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=r9hq=dh=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=R9hQ=DH=goodmis.org=rostedt@kernel.org"
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

On Tue, 29 Sep 2020 14:46:08 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> +++ b/kernel/trace/Kconfig
> @@ -595,6 +595,22 @@ config FTRACE_MCOUNT_RECORD
>  	depends on DYNAMIC_FTRACE
>  	depends on HAVE_FTRACE_MCOUNT_RECORD
>  
> +config FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
> +	bool
> +	depends on FTRACE_MCOUNT_RECORD
> +
> +config FTRACE_MCOUNT_USE_CC
> +	def_bool y
> +	depends on $(cc-option,-mrecord-mcount)

Does the above get executed at every build? Or does a make *config need
to be done? If someone were to pass a .config to someone else that had
a compiler that didn't support this, would it be changed if the person
just did a make?

-- Steve


> +	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
> +	depends on FTRACE_MCOUNT_RECORD
> +
> +config FTRACE_MCOUNT_USE_RECORDMCOUNT
> +	def_bool y
> +	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
> +	depends on !FTRACE_MCOUNT_USE_CC
> +	depends on FTRACE_MCOUNT_RECORD
> +
>  config TRACING_MAP
>  	bool
>  	depends on ARCH_HAVE_NMI_SAFE_CMPXCHG

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929201257.1570aadd%40oasis.local.home.
