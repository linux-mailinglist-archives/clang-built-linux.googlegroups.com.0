Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBYEOZT3QKGQEVMWKEEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD7A206E64
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 09:57:21 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id l9sf646921ybm.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 00:57:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592985440; cv=pass;
        d=google.com; s=arc-20160816;
        b=06Fza4OGkPUoUHwSVvJSMrC4qnpzRk2U0bMt/Qpu7CwclO/ItexdaScz74F+EMr0R+
         YNG53tB8+kGILIHrI8MaoP9MESOeDM0sYySXjtHBIgBmDyBMAegqdUPqd/z7p4/uWYtz
         LTZuj/FmxcvyA2XErtt5/KA7Y3tbZKWMnLDd8BKGem2/IyQYREexm25cxfWICxtCvrbo
         cqfQNnx9MeXPB6o+QbSU3YRooqcnN3Bf+oPxJLPN80BdYXzzdnNR0jNv8clO92xkNG7P
         u769nMCDWorS4rhIk4yn+bv7xQegAfkYoLeJaIo60d2OCJBvOpP/Fy/mZ05sSaTQ/Gwm
         APxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=MNRnvQAC2pjtdYLnoaGRIPkbjCXNGaaveY3MQpgACdE=;
        b=0L9ctAvhiL7kgV9khPc6u04u5hCGu5G2xo6Tdp7n+eZ7z5WReBBluRlkLYapoT58Pb
         x35L2XI99Pkfxq+naqq/9pzqxuQuhp5XLIWjeaExvPhhOWtrJZZ8EIejb5TkTRG5JNap
         d+Y7dG/ZoOAuVtSXX+7uYN/Fg7k3B4Df9Xiw7mwOAHkg1RjVcaILN1vIWDSYSMO6K6YL
         d7SMfqK7lBJidoYLPq5Qf0cfSnN5rUoZuvlmfrGDEeiW2srCkq4h8rL/JwIN0pLQzBY/
         sOO6OtHzOhMxnEKmeiWztGqkF/yx0HXD7QHyy0LQrf4XhklAs9ZToCA1G2SAk01izZW1
         yFMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hwS5MOXO;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MNRnvQAC2pjtdYLnoaGRIPkbjCXNGaaveY3MQpgACdE=;
        b=H6PLWkW9jxI7Gz9g+2HxR7aGCzhPHmXAEqtHLFPPE4mdPmqA2tMsMARYnC6iUgVhXc
         jKXOmjCiJPn6JizuxRBFNxZf+NX8wek9fvqgeTJrTBdvjsExpxXnDGGZDl5WI2IzVP8K
         iTKufRb37/3801XmOXR/Rh9DrL2hlXeSQBlG3OtPivc1WrneBW046PMzojfo6UvY9TJ1
         5SNhL7cGmyd6pJh4qoMcmc4V7xo+QE20KjqoFXNteLCH8Q9PhfRCDhnRR1exQFoK4lE2
         xspO+dJ1aXYPLVZvmNu3LzGAfolglrj9kOzrY8jClKSEXUGorpUUiJj5tjDIR454JYN+
         0qrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MNRnvQAC2pjtdYLnoaGRIPkbjCXNGaaveY3MQpgACdE=;
        b=QVA7PqcBfXs3OtC50eRquME4hOQuJQLOHoIehjs1vsCV6Cz8eL68DsJ3SgaQ+nXbq6
         AvKO+snjkyangwb3ZU89KzHcrOyxvL8fS7vB9nFpyERb7/wRIVxD3e9fcQPJHlMBrZat
         RsZIfYoAykvZQcePlvz8U2BVYyAxqTstuljMu5twb699nvikdZ4Z655ptOatfIyzR3D3
         9bmTZN+AVYu7NjEi7q+U/aYY1OdvzymYBnrdt3vGlUHRMhUhAENQnrUYhx7LETmcpEfK
         Kaz20VDzSK7yKkWY6gLeEVbKTwFXUYL3uhIuhAqZ+nZID7tMj7kwEYK0zqKAoW9V0jM1
         qsgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/gYkqGboP9fcHodvv/QdOaJz0Aj1Edl975HJJ8+/FbG6Xc5cZ
	ULvssmrBfsGSoJO6kNLJjaE=
X-Google-Smtp-Source: ABdhPJy0ecDUUxvPAE620mA50x9+xp3d/cuVsspoobKP8mKEiXkFJGX6IWjG9b4okkvjtBuoMckAqg==
X-Received: by 2002:a25:aa89:: with SMTP id t9mr43642279ybi.348.1592985440206;
        Wed, 24 Jun 2020 00:57:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df8f:: with SMTP id w137ls459214ybg.1.gmail; Wed, 24 Jun
 2020 00:57:19 -0700 (PDT)
X-Received: by 2002:a25:6b4a:: with SMTP id o10mr43156673ybm.405.1592985439895;
        Wed, 24 Jun 2020 00:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592985439; cv=none;
        d=google.com; s=arc-20160816;
        b=VNXVIh3DJ+MAl0xnzpHpCMs94FGCgEQA0CjIoRjB5U9DpR7j2V8EPikiOIaqG6QlZM
         YoIUYAOllbvnCnBf5ErnIyQ2qRwLOu/oOS1AKtabwofgWzNxbH3xLZy24fF/XH4ZGL/L
         xvJB0YpgXnAF/yqx4NACaqn9PkFWNEmqxYjWaCeWwX4LjOkEPhVU5mo9EGztBldr34oK
         qVEJHQEoKivu1Vqk5NefMxVX25x6au3irQ9fx21Ra4YQuolbXAK/RMg5o8wauiRJRuh/
         0ckmYN9ymKy8hZjK5Qe9p4tepGtbnDnVBpQJcTTuIh9W8fTas2EwcnMEX508TDRH7RyV
         qxhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0czmESP2qYKKjdjV8EeJRUJ6jST5lpFGXJcC0bH+YWE=;
        b=C2qE/97PqX8DDM2YbluDK8dETFSvAP//WuMqf5+k5b9OtMnBZyD1gnQWKL5gzg7OfR
         K7G24Ptgo00ISJwQH7Z7q3XAqZrsueX/mxV+UIteRTW51bN7lKlM1yHHK1sAm/H/wjVL
         79iKoY+Q6iuBMao1GftuGSSKWcf1UmwSYJJNMAmsuew0eVW+kdto3EUPG27xwv84W7E1
         vDBJi7e1vptiO/hpWTDTib5MvpBrP+7h7nkCtSfXcAcFl5ZTzFCDZLG4XQZ5VKhncpzv
         B8F4rsJbEQEJWryOR9p7dNzcdtW8HJChwh/OzHR01C7S5AjJMKpNuzqCH8z1x8SJTpWz
         cAgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hwS5MOXO;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v16si1626930ybe.2.2020.06.24.00.57.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 00:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B4AC72085B;
	Wed, 24 Jun 2020 07:57:15 +0000 (UTC)
Date: Wed, 24 Jun 2020 08:57:12 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 9/9] arm64/build: Warn on orphan section placement
Message-ID: <20200624075712.GB5853@willie-the-truck>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-10-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624014940.1204448-10-keescook@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hwS5MOXO;       spf=pass
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

On Tue, Jun 23, 2020 at 06:49:40PM -0700, Kees Cook wrote:
> We don't want to depend on the linker's orphan section placement
> heuristics as these can vary between linkers, and may change between
> versions. All sections need to be explicitly named in the linker
> script.
> 
> Avoid .eh_frame* by making sure both -fno-asychronous-unwind-tables and
> -fno-unwind-tables are present in both CFLAGS and AFLAGS. Remove one
> last instance of .eh_frame by removing the needless Call Frame Information
> annotations from arch/arm64/kernel/smccc-call.S.
> 
> Add .plt, .data.rel.ro, .igot.*, and .iplt to discards as they are not
> actually used. While .got.plt is also not used, it must be included
> otherwise ld.bfd will fail to link with the error:
> 
>     aarch64-linux-gnu-ld: discarded output section: `.got.plt'
> 
> However, as it'd be better to validate that it stays effectively empty,
> add an assert.
> 
> Explicitly include debug sections when they're present.
> 
> Fix a case of needless quotes in __section(), which Clang doesn't like.
> 
> Finally, enable orphan section warnings.
> 
> Thanks to Ard Biesheuvel for many hints on correct ways to handle
> mysterious sections. :)

Sorry to be a pain, but this patch is doing 3 or 4 independent things at
once. Please could you split it up a bit?
e.g.

 - Removal of cfi directives from smccc macro
 - Removal of quotes around section name for clang
 - Avoid generating .eh_frame
 - Ensure all sections are accounted for in linker script and warn on orphans

That way it's a bit easier to manage, we can revert/backport bits later if
necessary and you get more patches in the kernel ;)

You can also add my Ack on all the patches:

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624075712.GB5853%40willie-the-truck.
