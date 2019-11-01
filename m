Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOMC6LWQKGQER6UT5JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9ADEC8CE
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 20:02:18 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id k9sf11084800qtg.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 12:02:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572634937; cv=pass;
        d=google.com; s=arc-20160816;
        b=I2JeAu4Jjo9tUcl0j3ozlz//mJApFu7dVHrsKROEUhmEKU9ExUGCUV/59KZsSUrs49
         Xr3KYP6l5iqKplLIZsyeeV3T9Njfqu3IZ4GakMGLs/xZWBnLyq6+8A3snSDfw7Yvq/YS
         nO0xP6aqoli5jFEar4QAMIY0Sedkosm27f3b8hwBIbjMwKzrdV0RVU6ty4TFOqQTE7XE
         7fxO+XofrsDZ577ZqpMnWDzR9e2KLxIreF/12N/hQH2LlB6+u7bPkZ6idN3I0uDmFDEI
         3EzqrbUE9M4an4wvekWrzl7cp+X86zr54eItQj9JL0q0JuE5KT0QSjQkpxNvlvaYP7jg
         X79Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wtACi8OeQWx/z/A2AM/FyAj+j3gEW12aNzTnv5ZI2VM=;
        b=SYW8ZZDdl8o1wUjevI3+X9ONxC7OKO6ryGTQGI3W6c+FNy4HjKCto+QB1/2AMda4Eq
         hQ/5p1dT9NOmF7yDZzlFt+J0xRCPktvRdKTnkFe/1x2+F7mC/lJ9yxzkMR9SEFzvcCH1
         7IxqDUlQvZyzauW+eaQgEP6COaLJJUulPj6y7Fm3pVc5Ll4/uK5Ybo3bKS23x005ov+T
         OysATh9CaM42b18dF4No0HajU6xIsmtwn24VvzXnjTn45+hKaAO4i8BH16s6MnQ8HzTQ
         HWJHOH++qzzXrf3VIhvYD7HPpcnb10nsXHlPIAt8SB3BnZzkNHJ4DOofxMf0Ap8iXWtn
         EYcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FdSEwR9X;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wtACi8OeQWx/z/A2AM/FyAj+j3gEW12aNzTnv5ZI2VM=;
        b=kpClCUoKrDXRMO65praOgaNX1KbWuzMZVE3VLYP3Udlm3AuR8qOQ7AxFinpHkpsCkz
         QWSMDN+GYuGPFsZn5pnOkIO5b6qRSp/YZMzbSWbhA4kus9jVbPqNjr/ODkNJNm8kTVLM
         4w0qCEynVbNN2dAYbRrsTQUNUMD8UeT5M4PkmehP4hlf8ISymcefEQZulZwYuOepehNA
         vYNuZW8cCyz+UntdUOUES1bPAj/Q9bAI/rDWAu+c+t0nuKGHw8qNw5kuOuGTSQD73X8y
         Tk65RsxJBq328fAbIyOYWPwY1XU+6uY0nHGyeLv0MA9S+Wm2XzZbYMfQx7PpzpUVLcYN
         d1rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wtACi8OeQWx/z/A2AM/FyAj+j3gEW12aNzTnv5ZI2VM=;
        b=hgbxRISoQbTxgMZeUm/7wylRs4ezMJ56b2ZOJ7j9TZgPdPyRuqVXE9dqA8TCBs4yqi
         oVZuIt4WljKYgjVzJhUR0Dspb7A3Ly93vHrAc4vmTOyOf0Rsq3w/5agqNMf+Php1epqz
         qJnoAZ0KQTKXBLD+fvH+uHu/1x6G58pxIE2iJs3eFCiDve0V7l77cMDKePbenRWAVFnu
         Sh6+TQwFiZUVORbA/YjfwXfq7GXx7g0c9qd31EnoZBgvnAxDzgLMLuSVpG9bJ58WOBch
         1o5NGVbeHA6MtdPPoXouYSwt1krk6RIJSjhJASSA+O0GJfaz28SGc2/Y9nBiVFCNRKsP
         4PTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWyiiDmnSBqCyE/grgwNFCzTxMeds8kt1LPgZeTl9pIs+FzYyax
	NbxLnVMQiEy7b1td7QfsOcA=
X-Google-Smtp-Source: APXvYqxGSyWbbsUnCdg7eOx4xz9KbPPNeq1r07DE/6YnVHruPrcQglchbp/xhF/PY90H5JIbSF+syw==
X-Received: by 2002:a0c:92dc:: with SMTP id c28mr11741280qvc.26.1572634937223;
        Fri, 01 Nov 2019 12:02:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3e65:: with SMTP id m34ls2085360qtf.6.gmail; Fri, 01 Nov
 2019 12:02:16 -0700 (PDT)
X-Received: by 2002:ac8:5514:: with SMTP id j20mr916464qtq.241.1572634936874;
        Fri, 01 Nov 2019 12:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572634936; cv=none;
        d=google.com; s=arc-20160816;
        b=xv6cCINUARHQ4Sq5j6neoH66saeTdE4Lm2F6cWrD1EfMbCV9G0izipCV7rJTjG0QWP
         /teWkxf/qBJmuW1TcO/ygl5HfuGwxbtCj6Nsw+DCrX4aqbvX0yHbQZVDqcBnXLmVJRVs
         Ek2frW2rOI9jhpY1pA84JhNZeQkvEbXlCN0lzIS1jk+XAVgpHOKYZ0z+XlCspEi+lLSU
         aiBvHnP3hqfYOuqakLLpEwNyemwT5hRsKjs/UtLgW574RhSNlIj4LDKB/FWm2KoQQz5k
         BB0gjQMRNKDupt49YefKc6OHeCr1cvZfVrlHWr/YUrtGPFLM1eXPhaRcUr+B1iUaaq5e
         HJDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2fG4DzCLulQ+v7huA1kdMQ2RtRpH3xT6PP3dcQOR3YM=;
        b=q2ACpCioNON95mTrtplICrhOH32EjN/fiCfKdUAgg9gAXJlI4wMCCFlZOO00cvLgWs
         KmfkOoNKQjVrfona3AX8N+UpFv9YrrlcjhHHvakY6hfaaAiwUW+oPCwoU5muJkHZPOYM
         jUNrVJg3FFbYCRZBsHCNVvFAX5pQQEge3nQJ1W9FLJPN3Vk+FmATlPxZUwiDj089MaC+
         UOCIDYesQMBTiNCk8OJ9c77sPopq1Eekbnmp4G4acZuYE/GpWdVZEzCyGc1xAnnzImDs
         n3H5aNldhlxw938WJz/xnsr170ZvmBOIn0cFC44Cjpvc2wjja+WUyDb3K8O8FaAq9bNO
         KnSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FdSEwR9X;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id z41si590024qtj.1.2019.11.01.12.02.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 12:02:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id r1so7013192pgj.12
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 12:02:16 -0700 (PDT)
X-Received: by 2002:a65:5a06:: with SMTP id y6mr15317180pgs.9.1572634935932;
        Fri, 01 Nov 2019 12:02:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w10sm7985756pjq.3.2019.11.01.12.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 12:02:14 -0700 (PDT)
Date: Fri, 1 Nov 2019 12:02:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 07/17] scs: add support for stack usage debugging
Message-ID: <201911011201.A070D143D@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-8-samitolvanen@google.com>
 <201910312054.3064999E@keescook>
 <CABCJKueAf3f-rHw8AXJKKi=kfnh+nBMpJP2Vb2DVqLUWZVmFqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKueAf3f-rHw8AXJKKi=kfnh+nBMpJP2Vb2DVqLUWZVmFqQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FdSEwR9X;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Fri, Nov 01, 2019 at 09:32:54AM -0700, Sami Tolvanen wrote:
> On Thu, Oct 31, 2019 at 8:55 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Oct 31, 2019 at 09:46:27AM -0700, samitolvanen@google.com wrote:
> > > Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.
> >
> > Did I miss it, or is there no Kconfig section for this? I just realized
> > I can't find it. I was going to say "this commit log should explain
> > why/when this option is used", but then figured it might be explained in
> > the Kconfig ... but I couldn't find it. ;)
> 
> It's in lib/Kconfig.debug. But yes, I will add a commit message in v4.

Oh duh -- it's an existing option. Cool; I'm all good. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911011201.A070D143D%40keescook.
