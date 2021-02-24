Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3FM3OAQMGQEII3POKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id BB541324705
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 23:42:53 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id h17sf2822189ila.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 14:42:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614206572; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y1/Rpfrx85Si+02gkeMeWeoaxn0CIttlEfr4H9vXZIEWQnR8ZQeY4+IDLvR+9mrWXI
         Qhhxb6UUFdTrpymUlHyJzclpqBp9c8Yxmi/qNvSoUxfPVjackJrPv0/JmEQ7q527B2oh
         KPABGX6xmUWYv3m1It2P+ug1pjqk1t1gTpNZcZwJsF5zaWPf29404F3zv8+/sbcOvydv
         pVA2yv+s1hPtgwFaRCrGALmjJbSEa8/Mbsnv+cwR6hPmc3QJvuri9ZhtNvhYbVKqLy33
         DJRH4N1AhdTvkMT3RIz+bxhfOaQ9FyzFlG7u+gYANAzcmFr53oTOFl62mMzLYYy9Lcbw
         Jrig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=q20c16x4ZuzFcBvNE6R/bbhbjOTysS2wC1F4F7fwo4g=;
        b=osXPo8GWixOe9OZa0N0bvDlaZ3KdDokwB7sVuc2LEo+3+jvYQLs/y2f7GsvcenD9Mv
         2a/h7fRKyAU5ARgx7Z22MzIn9WrATJHJ4Ef3ucu/dPXaWmPSMf1mm61crkIEi/mt/ORI
         rmaUV8imu0OEVMpVjZQSxNLky6Pv7bntxf9AGsMYBcGEpVqakk9HFhj8cWBSpC1pTRFs
         MuH951q3z5oZSgnmAhjWyysfuVpd0K2ggagfZ5hPyMU9Y5avwOR+HuEuq5jTWYR5Jv+2
         4LQxQkNCDZa0H9W0p4NFxcm3fYt9uhV0C+gCZEzSCykUeiwvy3sjF3YHDqSLGPtX7jUs
         kZpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=I1JHwIT+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q20c16x4ZuzFcBvNE6R/bbhbjOTysS2wC1F4F7fwo4g=;
        b=pVaRSdFZqDYR+L4uMu5S8m//xcsQDwRAduuzGpNx6TBix1Fzx2KLPaMQBw6QQeShEN
         JxcDpGfhx7uB9MhD2x6MCgtMY89qbzDzZfa297cNkerFXAMjr19gplqFezxS1FHd2Cay
         wCSUYGRz0ibEpBieD2ukNg82lPfOEsbiqTTJZlWk4iV7dZs9aF+0a9C3AODCCGz9bFDh
         RaMwKbO0GiJl60ewtUAPTyITo3CJk/K+00lnoqBvIrzY4eQYppefb/MK7i13neafG9Ex
         T3gxJ6J6wcEDoe67ivms9aARwfaDEoa8KyjXM9atTSiMD6MDcym+FNnV06CX/7v/4lzs
         cQrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q20c16x4ZuzFcBvNE6R/bbhbjOTysS2wC1F4F7fwo4g=;
        b=TCCr0tJUKDHUUqm2a+8IK3QTN4Eo0DNtMYWQopvqnTXStyhSKmhfHqDZcu7ISYPMbI
         B/mCv6kpOwcKznPqJUFlsefuwNk/9dJfnprAMIcqrAi5lPMgkR7rmUqaxUCsb6DAGRoZ
         ZITxC5FaoczsLvko0ItNsUlda7gl4BESEfp+cmtFxDTBEH5Rga75djTiQL2mdld/c+HW
         GpSEIYKwDj1Tb7Aeb15DePAJWKLrhi7Vl1DUeGf088jNWXNh2xs55gOKv8vdyN5ETpLG
         tzu3jwr7cUzkyZo0/mzDXfy86cY2w0c39/TkHDEdW9hROfZycY6hcLbQLUNMRxFdxcfr
         omCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aYybbqW0nXZzq33opRoUWoluUVUOQ3OPS0LgPfmRRSkebp2/g
	6s9kiqr9nIMu6YFI2rsSACg=
X-Google-Smtp-Source: ABdhPJwujWI4P/zh/TO+xjjOk/vP+ZY03MhQ2Po6vdOzrFFaa8R2uOAiaMSw5fap9t6dpjQ4yFQs0A==
X-Received: by 2002:a05:6e02:18c9:: with SMTP id s9mr26910206ilu.265.1614206572606;
        Wed, 24 Feb 2021 14:42:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:80c:: with SMTP id u12ls966564ilm.0.gmail; Wed, 24
 Feb 2021 14:42:52 -0800 (PST)
X-Received: by 2002:a92:c248:: with SMTP id k8mr26621003ilo.141.1614206572218;
        Wed, 24 Feb 2021 14:42:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614206572; cv=none;
        d=google.com; s=arc-20160816;
        b=ksq4doauExSMvli7ka6LE2juXmEcDpyL5ubTbh2KwFosJ711/2hJkaQiTLtDCoN1XX
         Db5A/IodQcSZq9ds943BGBvNi6ekYn9907T/jhxq3nwwpj2NxtwZ9bQ6sm0ZTZpFDnMV
         GJOQsqEm+E+FKY4UyTPuVB4mtlgUIcYc26slrLK1h0KRFNaKqRc0io1nqdqK/0+mJ7/S
         N2LbrTuefJBkedKLlMwVSbTNoTBvadxsVGRFpIc7JnoEszGzP4YcjKjCdvmoNeCflExI
         Cousz5XEzkUbQgwvPcnSLkqmKFvQZ3la9P+QhqQnLvq1t5E6HNSr/u5oZFaJ8FUytB5M
         AI6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4qD0bh+6rEBJ6s6+qgDoBSjSKGiQ2q5y7JANudls5vI=;
        b=QRxxp4w1cotX04N+RkHfiaahMUrytNhVO3cdhPTvYuvGP4oqeGKP7yw7vBqpSyWEmu
         mX1H18mye0Gz65lBuo5qDjwszqYzqO7/vmKZbRkZ5kiIs+lA971s6vjoR08xJXPgE46k
         1OPHj2BTEwg6+e3nMVXcx+DJYizjN19WjARZmVMMppCze8Wa1JsYMgYDNTmvcx0dN9Ka
         L9zwN++7r0lDVtJkj6vnqVZUYprgawlEfRP6DNA7qHIyNCHQQ33q/wcY1BDJM7HNaMk7
         cHqVbJQTuGqtGmdaRWzWnxLIpj2/K3pQm78/Gr9M1q70WPFRH792kIpENh6Jyjcy6kT7
         4UFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=I1JHwIT+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id g10si365025ioo.0.2021.02.24.14.42.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 14:42:52 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id t9so2298929pjl.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 14:42:52 -0800 (PST)
X-Received: by 2002:a17:902:9f94:b029:e3:287f:9a3a with SMTP id g20-20020a1709029f94b02900e3287f9a3amr296408plq.46.1614206571524;
        Wed, 24 Feb 2021 14:42:51 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b18sm3739586pfb.197.2021.02.24.14.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 14:42:50 -0800 (PST)
Date: Wed, 24 Feb 2021 14:42:49 -0800
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-parisc@vger.kernel.org, Helge Deller <deller@gmx.de>
Subject: Re: [PATCH v9 01/16] tracing: move function tracer options to
 Kconfig (causing parisc build failures)
Message-ID: <202102241442.C456318BC0@keescook>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-2-samitolvanen@google.com>
 <20210224201723.GA69309@roeck-us.net>
 <202102241238.93BC4DCF@keescook>
 <20210224222807.GA74404@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210224222807.GA74404@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=I1JHwIT+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Feb 24, 2021 at 02:28:07PM -0800, Guenter Roeck wrote:
> On Wed, Feb 24, 2021 at 12:38:54PM -0800, Kees Cook wrote:
> > On Wed, Feb 24, 2021 at 12:17:23PM -0800, Guenter Roeck wrote:
> > > On Fri, Dec 11, 2020 at 10:46:18AM -0800, Sami Tolvanen wrote:
> > > > Move function tracer options to Kconfig to make it easier to add
> > > > new methods for generating __mcount_loc, and to make the options
> > > > available also when building kernel modules.
> > > > 
> > > > Note that FTRACE_MCOUNT_USE_* options are updated on rebuild and
> > > > therefore, work even if the .config was generated in a different
> > > > environment.
> > > > 
> > > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > > Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> > > 
> > > With this patch in place, parisc:allmodconfig no longer builds.
> > > 
> > > Error log:
> > > Arch parisc is not supported with CONFIG_FTRACE_MCOUNT_RECORD at scripts/recordmcount.pl line 405.
> > > make[2]: *** [scripts/mod/empty.o] Error 2
> > > 
> > > Due to this problem, CONFIG_FTRACE_MCOUNT_RECORD can no longer be
> > > enabled in parisc builds. Since that is auto-selected by DYNAMIC_FTRACE,
> > > DYNAMIC_FTRACE can no longer be enabled, and with it everything that
> > > depends on it.
> > 
> > Ew. Any idea why this didn't show up while it was in linux-next?
> > 
> 
> It did, I just wasn't able to bisect it there.

Ah-ha! Okay, thanks. Sorry it's been broken for so long! I've added
parisc to my local cross builder now.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102241442.C456318BC0%40keescook.
