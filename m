Return-Path: <clang-built-linux+bncBCS7XUWOUULBB7HKYT3QKGQER6ZKWEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF96204408
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:49:33 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id d2sf3497581otk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:49:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592866172; cv=pass;
        d=google.com; s=arc-20160816;
        b=VbrCy+tKeNalL9uVjlHGRq5aySZGchbiTDEdazxGMVrUxWPXv3eqLjDO8fgYeMb1Xt
         /HOdbPT+qOQsI7xoziErlZcAFe5z4S0OBuQMblme6Ffabc/O7sG3F3DZYUKkcHfHLUYW
         SAjkkqLjUmNjy2Xu5vGkhESx8Q9giB0bGsxUl+XMaEtO07fRqiMNZiaFgCxigEfwoOg1
         y7WAQobUAF+K83z/lAeIOqNVvRF12C2jjl2zQSql0K+wiDbUHmFs0fATNnRzPULbPJMF
         cjioZl2y4LEVQY96SFkP7iAupbt8HSJTYud748bUhi/WrMuSsq+hv7AXqJu+EV0p5WAf
         UUSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=8DqNZYMt52j+gh03tK3T5qS/lqCs9T8alZquPrJNFco=;
        b=DUNn5LhDQfYipRZRs5MxUz82QpNXucLNu6j3UA8hOh5wQlr6nG7QmNoo0zJUgxDklU
         H3ae35KX+7y4Xef4Xv8d00eVieREuYZnqk8RahvMQ5Sk3TEVINWZGrGsXggz7ZqaxpHm
         6r17Y9X1W23Tp6oBAx4a6RBVV4KoYr3SavLONbd03eqLII3IxcXIG+Ji5iKw217N/vlQ
         IoggMk3W+HwChWm9zllUpLr8szJBTan7d/kbQNh/LSagX2fZG4V/n/evVNMj7lDL8HwV
         9KgkhLK1EduOIJKf5T2fLNQ3gVIeAdc+WkoymKm1/QJqy0CP2EuQp1giYqqKykHLOKG0
         Pnzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rqyfynf7;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8DqNZYMt52j+gh03tK3T5qS/lqCs9T8alZquPrJNFco=;
        b=mbei4wLs15GiY0TACn9W7Ui5R/xlsT4OzL5nOHc8fpvTxwAltN0mz9fTsVWQcnjFpa
         bv0AmSeg51f0eKXjR7epn4LrBKN2f5PR7Z++SfoqUtrTxe1kXGQr8rnbamKfdLmSvLCB
         iHbB4ym0hw3qIPLn3K8b4pHtLNZaBN9MQ4VEfKX6rAyykx202XKDNL6loKLtpaMAxsBA
         X7EYU7cucHRsozyqln31zNiwQ5Rf4TvYldKhSPWhaRjaPvxXSiTyVdIxfh3MtGF50ZgX
         byYtQajG45pITe8iVEJLdjV/W6oIXuutRFOalxu4Vf8iSymzTkRhpaZOB1qPAx0XgANK
         Nw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8DqNZYMt52j+gh03tK3T5qS/lqCs9T8alZquPrJNFco=;
        b=aafQARgzPwEl+jGHpIxzMDJTMPUkPw5eW4YCG6p5/Lnuy/QSWRtw7qj1XBcJB+Vate
         533Co5LUpeZIrao76yv2IsdS8TMe/F3Vk4a4OafiOQWSWS89ILloB7ElzDTt8z+69YPf
         o8qMpFE1DV4jzyKV/jrAbU/Y2fFkLtgN8dqzis45cPWWi5WvhqQCU8lmuFJehpR0g4/k
         hcbDB3AqZu3OBCOuQNT3zyC5nLV8LrBTJPsduZKe2AqWptSckfuYEhMbCID9xgeAn+pj
         QOtegUfEsGxCAyZVRiHZbl9kvT4YmZC2aNzzzX0Rr9eZOaFEgS1rIUBqybIpHbOhwN1A
         +x9g==
X-Gm-Message-State: AOAM531KTWeXr/Chjth0L225IE4a1GaBLqNL7S1Kw3ReoxpPYE3t4gZL
	9hLHeJlhO8Me/xN3Fa0sHhQ=
X-Google-Smtp-Source: ABdhPJxyDh+z4A+yQN4WOqCy4MqAg3MhLuiu0qqaXsy60s84jAjnyMILIxokTlQ6FE93YwWeib0rKw==
X-Received: by 2002:a4a:e658:: with SMTP id q24mr16320585oot.87.1592866172549;
        Mon, 22 Jun 2020 15:49:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4d89:: with SMTP id a131ls3582747oib.3.gmail; Mon, 22
 Jun 2020 15:49:32 -0700 (PDT)
X-Received: by 2002:a54:4787:: with SMTP id o7mr14769617oic.137.1592866172243;
        Mon, 22 Jun 2020 15:49:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592866172; cv=none;
        d=google.com; s=arc-20160816;
        b=0QgTornbovNDoiJGyTkwGJAG2t4vgqmbiKlkpuvKoDSellZTf22WXHfJpa+QbIr5HU
         Olhp96XEFxkDIHaNHUeXy6tpj/pbdbTJttGFusdtmk1s2+6giFgnktkybWdU+men1zfP
         nFtBmcBUDOgFHCb0bACXC0+5B/tCGYbjKlfprkWbC8DuOldwep3/TQuRxTzQtGHhv5/v
         Gh+ZrJlIi1LHFiiRr/Z9dgqoxk7ccc9t6XTRF6IG3WctiScDxCGw8ivTx4YBnD+RiC9V
         prVh4Q7tamqsabwxF3HMjS6Q08/mRVv22iRjs1bc+SwHz6+jOMp3RpzyYRw+dapLOfRj
         F/qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SP3dyPHUmHcuUaUcIWcrCUYi0/7CkhHaUVAQAIGPRiw=;
        b=QHBUOutx+NJ14EgnC9LkRqI6EzsB08Cd88ledaAeKIFxmNXlkL+y9eWPUXnYYqY/T9
         t0MJRSCtpqGDi1oybw+TZAYisdSybu2LtPDRKtw9/mGSqvZ7qRc8DbDGpaiC5z8o+RRg
         4uBVInILO4qzkYqNufNG3wMZ80Ld7367lTWaF7oAddIuegf0wTmbVe5Y7HnAS+Iiydiw
         UILzTNATGt6fxNkx7pG3lESL10x0fkCrzP3vVpiPtD7AKT4JeRVbR2STYAr5xzifHWkP
         xjA78qmr7sPCylfAXyT4U03xJ85J9M/UzdXmncbto5o+TQBSUfQg1bhauMJSw29a/GIR
         64xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rqyfynf7;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id y16si453307oot.2.2020.06.22.15.49.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:49:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id ne5so561799pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:49:32 -0700 (PDT)
X-Received: by 2002:a17:902:46b:: with SMTP id 98mr22227335ple.259.1592866171384;
        Mon, 22 Jun 2020 15:49:31 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id a5sm14858353pfi.41.2020.06.22.15.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:49:30 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:49:28 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] x86/boot: Warn on orphan section placement
Message-ID: <20200622224928.o2a7jkq33guxfci4@google.com>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-4-keescook@chromium.org>
 <20200622220628.t5fklwmbtqoird5f@google.com>
 <202006221543.EA2FCFA2FF@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <202006221543.EA2FCFA2FF@keescook>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rqyfynf7;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-06-22, Kees Cook wrote:
>On Mon, Jun 22, 2020 at 03:06:28PM -0700, Fangrui Song wrote:
>> LLD may report warnings for 3 synthetic sections if they are orphans:
>>
>> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
>> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
>> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>>
>> Are they described?
>
>Perhaps:
>
>diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>index db600ef218d7..57e9c142e401 100644
>--- a/include/asm-generic/vmlinux.lds.h
>+++ b/include/asm-generic/vmlinux.lds.h
>@@ -792,6 +792,9 @@
> 		.stab.exclstr 0 : { *(.stab.exclstr) }			\
> 		.stab.index 0 : { *(.stab.index) }			\
> 		.stab.indexstr 0 : { *(.stab.indexstr) }		\
>+		.symtab 0 : { *(.symtab) }				\
>+		.strtab 0 : { *(.strtab) }				\
>+		.shstrtab 0 : { *(.shstrtab) }				\
> 		.comment 0 : { *(.comment) }
>
> #ifdef CONFIG_GENERIC_BUG

This LGTM. Nit: .comment before .symtab is a more common order.

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622224928.o2a7jkq33guxfci4%40google.com.
