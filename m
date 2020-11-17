Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGUM2H6QKGQER33J6KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EE62B711C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 22:52:28 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id b11sf10500410pfi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 13:52:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605649946; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGVkzEK9hTmTyJhTg6/rC1HgWnyEkpEXukeGCathzkN5zM70179Exn70ym/VNPH2Jt
         ryq8rdngxxre9yNvEeIrQMEvezFvm5YVxWWW3LNevJRmqRaw5EZcL9bCaOmQzyhyo+CD
         hdOuuQL1ZRbMpLKThTcLxnVhElsFDzmshQ4oq90pvBfFweQWfMYX5OorGAhOY7uGoOc9
         livfkRUYYJvJJDm78jg2EQX4TmpTt2G5P0xP/Hp38VGmZW1YcoAfVJJJtU2a2lU1LKkT
         0tyWZj6nl6t7sbIEPRmu46BkvoGy7w3yZe+xFC9I6FGajsx+dCaCMEPWQlNNdUJr0bGz
         pnbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JFMd51ft9AjE2RN705Lil7PXTpYA038QoUM5k202LTk=;
        b=qPmyjzLfG2NiXt3QhAjPepabIneQys49wp/roUjG3sw53KGgvmWqOn/PN5qojjuaPX
         +Xlp08exO+6xM+5FxNSbl9NYGxzj6mON38Fcp/xmdjE3wgofXTJjUkel9ZKlxVQc7lc3
         HAu5SGTd0YLZ/4BQDNKt4nDo7RgA3ACsNr1bBEEwHeKYdI4RteSJGik5ROkL5UM9cxKy
         Fdb8IC3p39CVcup10zpXxVMh4yWZyPFUryvr6HeY6RLe+sFGFsMdaXwJ2QU2iyRfJZKO
         2KNTDTlkOsf6zVKRL0QH/QF25/5aAqSfWRXZ4izZT0c5h3RmEbOUtq5IRhoo6fqT8mcS
         25DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FumCDSza;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JFMd51ft9AjE2RN705Lil7PXTpYA038QoUM5k202LTk=;
        b=SNUmF8prZTWpTmyKxIVOdx/fMEmF4xVd1Z9CZTJyYrKGTwKe5zzOO38lu417bD7sB5
         ilMpZ1+KzbhtCz58xRIoUfdu1/FzpciWyuHSIwTMgCGR9zHtZHQroOB0/IxexGO69L5+
         TZoaXtFoyDSWbpbNO0n0vkMluU2kBtj9F+8Mfkiydc9cQ4rg758OHlHwHQORQh1mSpr0
         WHWYtwFeaBrXDWh5+/yGBHo2B9ZcYw+PRPOhWLxtm9O4Z8M3vPWaJ9Xd8USl2FZLiJlV
         gkAlxztydNzqbJ623wHUOgIGEdXlosBq+EXudVgKi/RMtXOUdH55NizXLvAZyCAxhw3I
         DeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JFMd51ft9AjE2RN705Lil7PXTpYA038QoUM5k202LTk=;
        b=hOETJ+PtHLt4UfGMNMz2+Mu5Ew+4t2rNaktyF0URfO7Lrdb7jal6VdV0ercAdXCRbL
         JgKPbufk07clo5ohZ91PCTC7X+mKcZ3qFdudo/An5iwCEHcOgAGTcL5Og8VYB18A2eTN
         KJXr0NR5zgNr6YlIINmajJ/vC7ps3Xuxf/GJBIkDhBSsR2g18DHH0Zh0hrW+VlOXJP6u
         ZicU0juGiq70mcbXiYFVCA68CKXNjaDRmo/6uVBcXYcfogghGubVkh+nYr+GccR6zOxS
         Dy8IEDqVwzKoue0plilUvJ+GjMJ0okC43w6j9T5Cn8lOc/CmRiA8GeOiolQhXa32r6Yf
         yJCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NI8zDsMdOCU9PhRrHY0C2yVlDGwhXutfHIveSAPKIdNjOuW4F
	zoJkEQApfe9SrH+ZHNEjHVg=
X-Google-Smtp-Source: ABdhPJxr+Mo8XaYOnayQ5dTw1pD+QLnuG5880ONGlS6ZjXYauTDGpiyVFKUbCTYFDAE0xfOkuIc3QQ==
X-Received: by 2002:a17:902:c14b:b029:d6:ab18:108d with SMTP id 11-20020a170902c14bb02900d6ab18108dmr1511914plj.20.1605649946596;
        Tue, 17 Nov 2020 13:52:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls2273763pjo.1.canary-gmail;
 Tue, 17 Nov 2020 13:52:26 -0800 (PST)
X-Received: by 2002:a17:90b:512:: with SMTP id r18mr1053364pjz.149.1605649945989;
        Tue, 17 Nov 2020 13:52:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605649945; cv=none;
        d=google.com; s=arc-20160816;
        b=dz8DbTENPyGUbtlyiLJLss7En7im/TS3D89RD8M7cSGaMM+nyCTQhtHTDbnj+KS3pO
         c6ghmG5XbKvFa6dRZpXPCXDxxzYGHrDtwyqiWOYvwA92klp9SuXKH3cM4aqJ45nsyVbM
         a5hmXVxPk0T8e1ZZyDIvCswrc71ujOFWp2ahgO8iYUQ3ZptqiN0d+WEo2/TjECKS5Nzh
         4NgtJGZEI+7LDA2KnyxJDiZxO/CkJr5kacc+bRAI1dsZUeN/0rKP81HY5w28/ZsOBpNg
         6VwghaZ3HhM/yLUJyx/r0sP3xSYkMUg10Hqj+eokS8OnGxNFKylSESxyP7UJTZIRJdav
         itug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4XjG60ocQx4PkwGgrAEoZIyPUhnxDgPZrMBdqiIZG+4=;
        b=VVBPSbdhDr4qejrvjRgm/HQxaj5xR9Fgtrs7DFwfBZnDHhBKZsDyesNFG7j54SYnBZ
         3MM4NhwOhwHsgUujKjmduXAY2OPXVD/ZPGJv35raafvzCG07IHFd1gKcYICccsm8YOxL
         /2AsyE8QHg78/fyWcq682+4ZxBNrCueNqJBvLlNeYQNMRSp625AirDHzfcbJ3UumyVtv
         obuiqI1GIvjO6dyc5sIfzJ1VEQvEhd5tT2s3dCGwSv5twbN6ApQz0L5/KOCXfwlN+htO
         FuE3kxliN7lLvC4HIbH1OK8RW8/U35pbMoGe8X0wq4YS48pd7puvAaHDGpy3S6BMy4BO
         sLIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FumCDSza;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i5si73136pjz.1.2020.11.17.13.52.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 13:52:25 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id g7so55935pfc.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 13:52:25 -0800 (PST)
X-Received: by 2002:a63:1445:: with SMTP id 5mr5119858pgu.357.1605649945756;
        Tue, 17 Nov 2020 13:52:25 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b29sm1039089pgn.87.2020.11.17.13.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 13:52:24 -0800 (PST)
Date: Tue, 17 Nov 2020 13:52:23 -0800
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>, linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
Message-ID: <202011171351.728E1194EF@keescook>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201113195553.1487659-1-natechancellor@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FumCDSza;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Fri, Nov 13, 2020 at 12:55:52PM -0700, Nathan Chancellor wrote:
> Currently, '--orphan-handling=warn' is spread out across four different
> architectures in their respective Makefiles, which makes it a little
> unruly to deal with in case it needs to be disabled for a specific
> linker version (in this case, ld.lld 10.0.1).
> 
> To make it easier to control this, hoist this warning into Kconfig and
> the main Makefile so that disabling it is simpler, as the warning will
> only be enabled in a couple places (main Makefile and a couple of
> compressed boot folders that blow away LDFLAGS_vmlinx) and making it
> conditional is easier due to Kconfig syntax. One small additional
> benefit of this is saving a call to ld-option on incremental builds
> because we will have already evaluated it for CONFIG_LD_ORPHAN_WARN.
> 
> To keep the list of supported architectures the same, introduce
> CONFIG_ARCH_WANT_LD_ORPHAN_WARN, which an architecture can select to
> gain this automatically after all of the sections are specified and size
> asserted. A special thanks to Kees Cook for the help text on this
> config.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Looks good to me. With the other suggestions from the thread added,
please consider it:

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011171351.728E1194EF%40keescook.
