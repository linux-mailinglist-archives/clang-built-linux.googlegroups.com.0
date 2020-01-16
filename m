Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB6GUQLYQKGQEOQ6GBJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C1D13F0DA
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 19:24:58 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id f15sf12743384pgk.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 10:24:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579199096; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1U69yf7SnWMNmnpqzpgCDiQc9zk4dEmove92qxa/erVhS0KSOfnzdF2H2vG6nh/K3
         Mf1+1Z9TKmCkgwgY0MHQDu6Z7PqgJ6ZjGrz3PMPU5onmu8jsq3k/uaEPovnqoZ4Zih7S
         6nEq/ARwjjampCXoexDsTbyJ31AKCf/sy4KFk+IihrWcN4kQZenxXnRCKOGIdsm3GANg
         eFw4ISgnTogSKDr75iGkCnO1p3zFKQKl4N2xwcVoShGa4Hi17rikDcnn1ER3W4JxlXNm
         UXlqlzUcRcLzdyjHN+oZXbwtLcQwQBHGfFxh5CBxv+kHliC6F3RVRX6tQnNrnzaDTC+r
         y36Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xoKNsSwqbbsydSyHnvFTRl0mQTGsbL7Psv12GB95evI=;
        b=LSGQyukt6QzH8O19k4zawY5MHmRctGcbbvn7TURcpEReRPcMXdzlnPvc7l0EV0EUOy
         zIpfF+lAIYP/qqeSNK2k/YI60INW26XMN2eKEaoQCfuwZFY9W7TvIIZYF+MdZwCR+D/1
         nL8O7FBG1KxUd1j9oM6eIy7ABV8ZOwfgyX+hFLPPhA4Cc6aS9aIszwY4QccOONPX69LP
         iPOgHh4c7N0yvcdC1fufpeqSETcA7dplcddVUbkCosmzp1UzrdEHlSJV2yxNYUx6N+MW
         N5+wS+q8qp6yayvQ4Z6eEGKe4caYKFc2/xuu0XzvESZWesPFm6Ui7kcuFpmNINygGa5m
         LA7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0CKqRrAn;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xoKNsSwqbbsydSyHnvFTRl0mQTGsbL7Psv12GB95evI=;
        b=hA2wHyn1Pja3sihLJdi8qm+6GuNW3t340D8Ez2kdVcSmRZ5v2mF7+4IwBNIVv35zPo
         DuiddP5WtU7AJZPCpKgspE/+vjWjY6yDDSgB/LoZLwn1w6WT5+HlGNX8BVp363MTQs1C
         T6AVeMof6BSYxKusAfK//PWTTZ7XbCqViiijZK7F6X752q+bPwhMnLbbX/SYJV48rJLc
         auY5qHt6qOtGrxJIzezDzUzgxfxDR4MsxZlsRIN2r8DxhfZvFlvrFn2I1K81OxROdhE/
         5co3p06497PaLjoXuMqBZMY6RPIxJXNVG80wXeruqFFbIK/v7/EMWGZLBwUZHXu5Qvi9
         jQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xoKNsSwqbbsydSyHnvFTRl0mQTGsbL7Psv12GB95evI=;
        b=YDKmrS76dsv/qKIOZjLmLiQeUYVv8t/oFLlUKdkJnja3Aw30LpHvn9v58Wya69+Ol+
         DGUJfegzIy4ktkbuxSdassQBYnot10cOn+yHZLu+Nh9GoPlK56sZ0qNV1fD2ZvxMXJZe
         027XO/KAsVjB7Lp0R6vO3XqB3wzpm+Q8WKxKtqygCxsP77HVWPoDNDWyRJlTOXP6MeaE
         mCHSBH1K9832dDpwXYgMaTBYVZxD7PbaohN5uY5Igk5VIu4dGGUlPGf9THCB+dnKLRRO
         PHrSoiXutVpMnIy7QaxHWs8yqgpMMCCi6m4gv47lM5uZgQN25BJZeA4X1155i8jOk55g
         udLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXmnDydyjAdqfLSD3dbvD5oie8SdMxU7ekn7QJMHFafxYaKjHlk
	iP4MzaMOhG1vzOIXGTzeKRQ=
X-Google-Smtp-Source: APXvYqzQfTb/bjctg7oJIicvj4y6GsaiT2b/USFo+X33kY8Xp7oSY/KdEBhXVHoMI9gvzxRG1v3wEg==
X-Received: by 2002:a62:f243:: with SMTP id y3mr39314833pfl.146.1579199096889;
        Thu, 16 Jan 2020 10:24:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8c94:: with SMTP id b20ls1115043pjo.0.gmail; Thu, 16
 Jan 2020 10:24:56 -0800 (PST)
X-Received: by 2002:a17:90a:af81:: with SMTP id w1mr581270pjq.14.1579199096564;
        Thu, 16 Jan 2020 10:24:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579199096; cv=none;
        d=google.com; s=arc-20160816;
        b=XBroTJuq4wPI7Xkg4xI+Fhx59PQE8KLNL2tF0M7fVFJWOgPhD7f0ZxoTHnq+fcN54L
         0ylsDC+zGf/0U83T/LLjhLUH18XOeUMtrATsymUuhyVq4zlzTHsmBmmhovXiG3yY3cMH
         y7I5lTP3EBP05ugZNCi6Xs7n3c7PITFvzC/uPu66wNnW9eAWm9uVsoWpOb2tU3AKQH2v
         ytE5LSNJxZZJZk3ta26hvw6lG5dcPEgNmQx1M+LTm582uUcbm+wqf4Aiqao0JmdXz1cZ
         zMhCNt7iLuWyOhktcJtL0GAloLrlir6Y/uyNY/ajhOr72Zp569+wgIQNtJcl0zCAMKbP
         W2nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2V+6jCnbeDF/SIN2Lte2+lVVU6WxWg8VyOL9HwTHBm8=;
        b=cEZ5NQEp2P8sjSYrYg7BjhOpXXmkwK6TmK702q3ZDPpey6TdriPnzoPz3mjTq/D+/w
         i54tTJ2U6hHMYXtKkAUnioZp4F9wJ/ZOPHZ/cj2nLQXjYT/9Nrs4ZsOzVflHkmSfRso9
         PB4quEg2gm4511bh4D5IHI1O2TGSUKfp1T7irVbxccsRBum79Puohieb6Tdbht6iuaXm
         aTyhtTz1f2Uud8+1tt98NjdUhjCsEDbVvywTsaNuK6CDgACy1ZhW8Bb1NRmxGH2sKQk+
         UyJwsSkITsjf1KpCU0bUSk6tkyy5ehXhT4PeZi1yEXu7qnCkfVlVgHNh2P/3DtHByc6V
         rLeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0CKqRrAn;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b192si977080pga.5.2020.01.16.10.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 10:24:56 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7F20320684;
	Thu, 16 Jan 2020 18:24:53 +0000 (UTC)
Date: Thu, 16 Jan 2020 18:24:50 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 00/15] add support for Clang's Shadow Call Stack
Message-ID: <20200116182449.GD22420@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0CKqRrAn;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Dec 06, 2019 at 02:13:36PM -0800, Sami Tolvanen wrote:
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites. More information
> can be found here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html

I've queued the first four via arm64.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116182449.GD22420%40willie-the-truck.
