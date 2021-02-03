Return-Path: <clang-built-linux+bncBD52NTUX6UGBB3PW5GAAMGQEINIFEDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C47530D78E
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 11:31:10 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id l13sf14184282wrq.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 02:31:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612348270; cv=pass;
        d=google.com; s=arc-20160816;
        b=KefFVt7NP0YtrZHaXkI5GYGJoAL8abH3+2kme7pfyW+R6NpArlFuaUmFEH34KnOlG5
         8oWdzqiDD+MpUGqPPokH7CqsTwtZ+DcpQONGkfJNq7JXamWLAHdLlW2L5LxYE/v/Qntc
         Bi5L2ep3u9Yh0xSh7wyrqkAr4X1wtBPxWu4wlWLDINH1GPhXFDTb6QjQq1lLoUipYpfi
         X7zcmus+N4QgE2/BXZlWBzdaFmqXyoSrBHHRrZ1c+mtZDm1r7q7s2Rmd3XWy2rGtKYH9
         MHYU2y9GKvTg103xcoDcE35F9xxRcKRtFao8VAjaXRYUTxSAjWlVB5pD+x1UJ2JIISO3
         pj6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=RACllCtbeAGZdkP6dKBHZA1vRwmS2Y35xzjFxqhLmNg=;
        b=zvB759i+KneZ5uyKPQS0zYWFgC79BkQ6z4xdXBLVMsf6pqhrbfh1dSvJEVMX7EEsE2
         EpNNb5nAsfxKIpEguKSyyKH2dcyb9L/tkTO2ZP9ygQWp1qJ5KPXWnxn6EyzPc3bYeWpW
         4IZpXboCMnSUkdm2NouGlvcSfB39LZ5A1K0UPly1v3MR3ObqIGefqSSom0kAGFc8ob3d
         9SfxpirEms5RXWaoyi14AMJ3dV9mZHnlRYqXZSxMKWQ/Y9EpMybl6OukDMUfez+OcADJ
         XekjOY/LFGnwibqb8bCks4w4NWU7YzXqjhmdmDZUZeAYPP94YLqdrRFnXDK+1hrVqPmm
         U48g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RACllCtbeAGZdkP6dKBHZA1vRwmS2Y35xzjFxqhLmNg=;
        b=dby53v1p8K8gBHkS9vNUfzZVeK//TVU/yDXhexFQxSMqhR+EUvhUyMEAF3gCLggJnp
         RhH7056X+HQDSYtnGGT+AFxEyk74ISsiIjAuH16qkP5Kua0nxJwUVrUJPOSQybehl5AE
         VBUCKM+CpJcERcR6AgHsGP93gVagm710ne21Eu6c0Ownl84PlCTVTaFVky9dIs1rdQiq
         PzGX0p8bSDBGTzMyizyqvIugZPqvqGx9zPIVnYKOfbGGrA0iFODIOrjhhYx2KQmsaUGy
         UNwDDMDmTvjOD+KNeyszfk8xReQjhMc1o/Va3P3G1HZJT1JDxQQeJbhP8Lz4p0ZoOTP4
         x4MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RACllCtbeAGZdkP6dKBHZA1vRwmS2Y35xzjFxqhLmNg=;
        b=YGJH5Ce6VA6W8sF4bwegSritLhKHhjLR4cCIJftuEtyxmWCg1N/DWeJY2O9FR2OPC4
         tebS0fRK5kRWGjGajNAmUup3n4acV056LZTaAwMDQVHv/DZzLkd4/ZdEH+Utfw2R2i/V
         AYtYbvN6DUiI7EuUyj+jeAwHYCMzHF5eMLdi7bJOmwLtJm7W/Yh5sAR9FwPInGlHgI+B
         BdcVbXduqoKAA1WgZPuXHJzeiYEKJTJN8q8EBzckSB1MuWhxKMk61yjRDIuinqrDhgNu
         sAgFoUB6VaQzz0aQ4EDink2Eqn3SjnEC1WuLKr5RSK04H1YntWLsbEC7WSIzsNp19bQ+
         mEjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533avuT/fbz7zSl9BjRvSHreTQgQyP6XRvz6vt3cbLBsJm+3Ley0
	msJgfBbDAhv56LYKb4PzDH0=
X-Google-Smtp-Source: ABdhPJz6JGXt/1q71ZzzM/1ukGBD6I8x+g5nqVCJoN5KfSVnD71/KmjuigTdrJpkkqTsUDeGdMY1LQ==
X-Received: by 2002:adf:ee43:: with SMTP id w3mr2860749wro.200.1612348270225;
        Wed, 03 Feb 2021 02:31:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:770f:: with SMTP id t15ls786782wmi.0.gmail; Wed, 03 Feb
 2021 02:31:09 -0800 (PST)
X-Received: by 2002:a7b:c308:: with SMTP id k8mr2140345wmj.54.1612348269285;
        Wed, 03 Feb 2021 02:31:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612348269; cv=none;
        d=google.com; s=arc-20160816;
        b=TjOlcDDvZ+JM9eAm76DMpoatNpYNcrbtnsBFYsknc5XINxA5UXnz9uJ2AGa1cePRKg
         GmPdkAAjnidho/pXaSWka9qn7VX8EMHUjZnosJR+TjfOfd6Jf9KEfI0lJxKgYbOoCbxr
         feaTPzrC9ncZsLdUpcpukmDX/j+Xwk6RMaBRFr9BFVl6noK17yA/uFP+ebTAQXLTly0k
         84JzjZt8X5yz1D+YdESFYZ9uDAkxNGoHRzd1lia4/+JN+i7VxE6AasIFjVysgpph4Q2b
         jUV79/zpg+oBGdIcOHhkkwS4FKb4jjOPAFpiW31TurNZxGZ1AjnqROh8nFKKF05qB3l8
         Pt7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=TRswg15SR/CFbupnCY9JO3p65SY3kv4xQhVpj/mxgcs=;
        b=a6k8P1xAs5futbXW6/FEtuW5xzKjiqc3zt4ZktUONkXM35gPwfFl5XZGm7H4P8Ximy
         QdTMkWdqh98mK1U9LFz3r4GcyQgy+OKtGe1uyOMODJb4wXxgieC92666QjsuJm5WLJq/
         B+MLV/g4HVgCD1x2dAdP3R5hCePUCCIkNk8u8tG+vy3Otanul4dKGOqIrbF/LHjDVCj+
         BmI1g1JNr/TopppvdWxzE5mvACX1HytHGaF/j7PC0gqmHFjJ9mvAB4NtKJbaNhMd6trz
         IkjGFv+y6V3ZtD4T/XPGjSekb1pX37/R7onC+3llmWmQToZ5p5/pxkD6OFqStw1odK79
         RwXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id b5si57783wrd.4.2021.02.03.02.31.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 02:31:08 -0800 (PST)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id 28BF9304481E;
	Wed,  3 Feb 2021 11:31:08 +0100 (CET)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
	id 16C714000C6A; Wed,  3 Feb 2021 11:31:08 +0100 (CET)
Message-ID: <544278979063fbee59f7e8d82c88ba3293380d57.camel@klomp.org>
Subject: Re: [PATCH] kbuild: fix duplicated flags in DEBUG_CFLAGS
From: Mark Wielaard <mark@klomp.org>
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Andi Kleen <andi@firstfloor.org>, Ian Rogers
 <irogers@google.com>, Michal Marek <michal.lkml@markovi.net>, Nathan
 Chancellor <natechancellor@gmail.com>, clang-built-linux@googlegroups.com, 
 linux-kernel@vger.kernel.org
Date: Wed, 03 Feb 2021 11:31:07 +0100
In-Reply-To: <20210203075239.5505-1-masahiroy@kernel.org>
References: <20210203075239.5505-1-masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-10.el7)
Mime-Version: 1.0
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
X-Original-Sender: mark@klomp.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted
 sender) smtp.mailfrom=mark@klomp.org
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

Hi Masahiro,

On Wed, 2021-02-03 at 16:52 +0900, Masahiro Yamada wrote:
> With commit 121c5d08d53c ("kbuild: Only add -fno-var-tracking-
> assignments
> for old GCC versions") applied, DEBUG_CFLAGS is now reset only when
> CONFIG_CC_IS_GCC=y.
> 
> Fix it to reset DEBUG_CFLAGS also when using Clang.
> 
> [...] 
> +DEBUG_CFLAGS	:=
> +
>  # Workaround for GCC versions < 5.0
>  # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61801
>  ifdef CONFIG_CC_IS_GCC
> -DEBUG_CFLAGS	:= $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
> +DEBUG_CFLAGS	+= $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
>  endif

Yes, this makes sense given that the original code, before commit
121c5d08d53c did always set DEBUG_CFLAGS without checking for
CONFIG_CC_IS_GCC. So it behaved like the above code does.

Reviewed-by: Mark Wielaard <mark@klomp.org>

Thanks,

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/544278979063fbee59f7e8d82c88ba3293380d57.camel%40klomp.org.
