Return-Path: <clang-built-linux+bncBDV37XP3XYDRBLPGXTWQKGQEYWQN4TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F15BE09A3
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 18:49:50 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id m24sf3519637lfh.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 09:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571762989; cv=pass;
        d=google.com; s=arc-20160816;
        b=UbHInhDk2GkdqHxCsSIKaQ1tc6MsVlaOVp+G8r42aMA+dxHmsyquBd3Tf/0/kpaa5v
         rZiGdkUsFDt7tIDxqCk+fnTtcKk0Wps3kX10M9GMC45mwHWjB/Iy0zMpJrlpx/ZAb12V
         q2EgWgNWvOUpTUMt87k5zW3dlQdwo0THOPSK141VQpoXCaz3VghLARWyrFFIRWqxkJUw
         ETQ+Xemkf3rnbXsIO/jqlgEP9m19Cj+mCUHdT3TxYahXMK29nxORGcTdFy9gyQSVGxwm
         und63QcaIX8MP7HhoTPdURoL3+VN97g8XvNz4P0uj8pnebJvIq34KAhDGgSglP9dAMLi
         k8kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=20kwJmq/66gwcvG/Ru5j3CO05mATACLcgM/nkoksvvw=;
        b=A1k5Im2G52ZSG3R4ksdoU9oBjhWUhhFS9HuKAvJNHtsGYVr/sEefC3bocgrjQr1hmx
         4YjttzctmC3vdCPijcxGg2Jy9k0a1TexORHk2VQuXZzQZeOVj4nU/JD0HDeO+G+/SFlF
         5csh2xJ4ZvvNMx+dAtPlsvPxl++FyT3RPCY3mkPOXkW7ie8/2RksizO963r+2cZvKosn
         HzB7ctJXifbQgJO1+HUWpYPeQSb5KjYxTn2xBqSecVC0YlbO33aTnj7AGFymY1G1oJkB
         CYgx7FrRJI7v8PM/CUmIrmxa2lRPFhqNbiUpyqH8cExE+2wWXyYHQtKtgNLwz9Twq2su
         EvdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=20kwJmq/66gwcvG/Ru5j3CO05mATACLcgM/nkoksvvw=;
        b=oG4oxs8ytwxDtM2qJTPdodlXTmvu0O6KZCchhPXqgH4yDlPjyaKuwM1SLVkA/kvfi9
         YcgP+RTLKa6cU9q4JF3gieF+HG4092mD0+vsPDmnXQlygsOy+PRQ5x3NbJYk2khPh1bq
         WtzUYwGZQaiCS11bXUq4Zi4kBZRVY6bz6i+g98o6MXHCyA1kvvRAnzxkiyw5S3FWPAQg
         Canyc+I3RTci14S5szmkLHfV8v4N+0Fuyioow/PcMlfx1EC2cCDev/KJOrqFf+6rNmgj
         znZdfdPnEnvN/+VqomDW/J2Gu86TbEH053fU0XQ+FI68OBTil8tDLOiK45R+dQ9BdTzl
         RXbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=20kwJmq/66gwcvG/Ru5j3CO05mATACLcgM/nkoksvvw=;
        b=PJpVUrSU/DnJmppJNcHas0+TJ5FfPKGnNlkafiMS8KZEhCdq3FdcFrN/rvTCLigVux
         DYoYfkcZrnMH4dWmB6erCMe0kSR1LLIwbhHmTNrcliOXV2OlPyrRKPbY9RxwWRyyudzg
         hVt4mGefKpAKh+XxPxKttrT6FKkD7DOzBViCue2VgE2ClfEFaLg+6XTpweOThWiUHeov
         jxtITfJFC5WzDxmffF7JSVfRspEMOGs/BW2xpiwxPs6gMUyr5l1RdTC4jINfv3d8lxf4
         GhusBnCp+/QUjW/s5arw8cjJFCCMbxRmzu5R7pa112H409p8V2seUz/UWG7zRe2/0ZQG
         CAwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDGtdgNJTIFZ1he/RaNkKGrb7X5tbwLzsoQ5RNE5aspzF6GWbg
	1vfs3GH79D1u09TNrl18/yE=
X-Google-Smtp-Source: APXvYqzLPcZinS4APY6U90A5v9O5+I+dDd25xBCQHTCSa8p1JFtrD94URUTLY9CjuosbXNsi9zkPSA==
X-Received: by 2002:ac2:531a:: with SMTP id c26mr14914400lfh.52.1571762989659;
        Tue, 22 Oct 2019 09:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:46dc:: with SMTP id p28ls1618836lfo.1.gmail; Tue, 22 Oct
 2019 09:49:48 -0700 (PDT)
X-Received: by 2002:a19:e017:: with SMTP id x23mr19353196lfg.88.1571762988871;
        Tue, 22 Oct 2019 09:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571762988; cv=none;
        d=google.com; s=arc-20160816;
        b=0MLIjcTjFbR9EYYqEWzBV4l+w/6N2upqPBJ2OXi7Gg/GEZx0soSWqe8hF07K8TttS9
         a5NWl5eDO0kODm5F3kPkTjOgooaR+GuGVS+Wd72wquFpcXrlwMAi5qTQx4zXCwgOCmtn
         8u90rDaakU0VPKsj3/qwbN5qVeLUUrdEwL+ECrqd/Gn2sNaiUWleuoiSjf4jQ31JlHNX
         yl1ikaM1IEomDxXI4xJ1QzgB8GeYKdelbbnsiH4LvMhXBRu7wzczKJXgexWaZ7tnEI+2
         2YhKdbqYJhWbESVFY1HKI3PP0B2bTI6rWZqoSe5IFCJ0hXp4hD8yX3utiMnb0TXdw7Ya
         rSFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=NNwdoEQYPGsIksrNSeNO1LASA2waeR7TBIMT27mvhsY=;
        b=K+zsJMzI4XwvJe/WfEdTxXxUiHJeKEHZ70+FaMSN7SXmp+z0Uabj/uCQkQ4liRf9Zm
         E98zrrD7xDEP1t552NcYUb30hIi9Yg96pKayr1FhTzM6IDZ6A8RGo5PhBwXibfuJfKvR
         HJMq4CcCb/jfxADtXSDZRHySyX00E2okl+h0E3+BR7cc6JsYdmebUAu4jLHvN/wqbBlL
         Ia5BrCEqOTT/To3uCjhrJ7EoXBHW53n10mz2/G73UoFPgxe+q56dxnlYLhIkVZJYQBn6
         8N6tnfMK1OzP80JX50HasASJz0fHA+P9GMyzYGNiCRcIDbREJy1Xi0IXYv/8VypQ8yrI
         dS4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com ([217.140.110.172])
        by gmr-mx.google.com with ESMTP id h9si779335lfp.5.2019.10.22.09.49.48
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Oct 2019 09:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4F914AE;
	Tue, 22 Oct 2019 09:49:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEF0D3F71A;
	Tue, 22 Oct 2019 09:49:43 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:49:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191022164936.GA1451@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
 <201910220929.ADF807CC@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910220929.ADF807CC@keescook>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Tue, Oct 22, 2019 at 09:30:53AM -0700, Kees Cook wrote:
> On Tue, Oct 22, 2019 at 05:28:27PM +0100, Mark Rutland wrote:
> > On Fri, Oct 18, 2019 at 09:10:21AM -0700, Sami Tolvanen wrote:
> > > +ifdef CONFIG_SHADOW_CALL_STACK
> > > +KBUILD_CFLAGS	+= -fsanitize=shadow-call-stack
> > > +DISABLE_SCS	:= -fno-sanitize=shadow-call-stack
> > > +export DISABLE_SCS
> > > +endif
> > 
> > I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> > so that this can be filtered out, e.g.
> > 
> > ifdef CONFIG_SHADOW_CALL_STACK
> > CFLAGS_SCS := -fsanitize=shadow-call-stack
>   ^^^ was this meant to be CC_FLAGS_SCS here
> 
> > KBUILD_CFLAGS += $(CFLAGS_SCS)
>                      ^^^ and here?

Whoops; yes in both cases...

> > export CC_FLAGS_SCS
> > endif
> > 
> > ... with removal being:
> > 
> > CFLAGS_REMOVE := $(CC_FLAGS_SCS)
> > 
> > ... or:
> > 
> > CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)
> > 
> > That way you only need to define the flags once, so the enable and
> > disable falgs remain in sync by construction.
            ^^^^^ "flags" here, too.

Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022164936.GA1451%40lakrids.cambridge.arm.com.
