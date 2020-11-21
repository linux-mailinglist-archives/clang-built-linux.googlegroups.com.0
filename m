Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDVV4H6QKGQEJNXUBHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDC62BBA82
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 01:08:47 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id u28sf8767180qtv.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 16:08:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605917326; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZYMYld4WXJGVWRpvoWXMThgsmjnI4RMxeEKm1FKBtLIV63p9JIC0qbzQ8DhrGC5V9G
         xqb6/3uzJsGf0hc8aRX7LJDtKBEBGulv71uczAE5YjimBkxmTsPsa3PV6dmx6b3+eNIC
         omFaahsjaucH23gP5KjpJOYKnQ0+mE/TTBA9onAO0dgyFpttcozk+zEs4cq5RSfDojlA
         z+iOzSH3ys/6u/hALTT4rHrTmMOGHy82b31jJJQneldN06egTpG6AKCvGztuz5iRUbMO
         /IcJEUhWlalz+ks9OnGHaJBMlDuJXsemmK680Ho8Y7dZpBRAKAnMPUD2NwNuGxsnxyR7
         3aOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=25z9PcwuNhvhVIBLWH5qtVnC58NwfTRbijvr8iVI3b4=;
        b=vMz64hisyQ0LTJbMKnI85Pl2iN6YGyCFkmmjvZ+aAeX+Wx2EwUPn2pxhQrdZDIAezf
         YAMJDchra6dJVMi1m3oopxQg/ZJFD245U7ROfmClPPXtSToj/xMADnQQPAnGfY5lJ4bc
         O9nJUQ9Xp7gTkdTQNhORyqdV/VM3zjpPOT7nTp0+9jfmHCos0/sVacT7oVPDy5rp1+sf
         DmBZXhHFDQlVC0eXqwdqKXNjvQfU8d17knhpKtn6mTsBc5aV3rH8O5FFdG+IP1rVsy8L
         KMJCSCpnaREz6AlACsdPLn0r81UOaliY6X60w7nWPUjBtvkK42Mn0JH5nevRc6f/azHd
         dcKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jdjYaxbU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=25z9PcwuNhvhVIBLWH5qtVnC58NwfTRbijvr8iVI3b4=;
        b=UYCH95jgQ8rE02dZCKXdU7MSqkB86WEX+Xi4+05SXRzQ/I698mpXUEfc5QUjlhyECw
         5XMvkNwHLZ1cZkBraGYFPnU+5ucMNy/CKhPBUngFFosoOYBsFaB5z361PU7HglR9bOvr
         Db8DT9vlV4u7P7VhKF3Esy7JO/eCphsK2HDMwoUiOtPpo5kJknIwrW7tzm+zDEuj5XhO
         0V1nx4WkO9I8ztn6j8Nqv5IbfKYeE1aCxy+ZAWtDYz2ezwPf/C8G8JsyXrReGgYYowo/
         P6GygtXYWyHbK8XQ+mdV4DOsXg7K5ugCxkZ/sKTVea6k5rxc0HcWarm6kpsMvYWfI1RU
         Sghw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=25z9PcwuNhvhVIBLWH5qtVnC58NwfTRbijvr8iVI3b4=;
        b=nXTV/JMc4qfCDbBIUGB0zrvfHa9ef67amZiyJ6QQvF8XoiMXKqEAk2vTXprZ4ChimZ
         Vw7Cyi45xIwoS90Rsu3JiVW7T4gCwAWewaRyk49AbMtHsWVU3hkpEyfOt6nYywC1T05V
         gGnsWreWxhXit9mgn36W67ANGk4X0kuqkVdqg5R4MyA8UZq1ZrIfEyy4Jw/nfRKAoWHe
         I4Kz1qWUXdEjX/EObw2rxxVWJ+U4qLLNZeeqmyM7YCSyo+/fuHpUU887P/sNHc226BYF
         GytulCwyWFEkrtyZhl90rHWOJrF4bMMQ+HBsEo87Tp4CpXiEwuNj5PteRpmIGnVAirTl
         6RgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314KibGjBMP5y2fU6tj8nM/cKRxzxfWYHH+RWODNB3ZHwd4FQYS
	JVHhUV1dr0N0zpEdfsKNajM=
X-Google-Smtp-Source: ABdhPJwqLGb5cGzHVmBGpi0Z1C1QgqtpfloRzRxgudYkNsDwvwkMWjSmesPoyX+kqCAxgYCZMb0cuw==
X-Received: by 2002:aed:308e:: with SMTP id 14mr18646675qtf.275.1605917326302;
        Fri, 20 Nov 2020 16:08:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a2d1:: with SMTP id l200ls3754934qke.3.gmail; Fri, 20
 Nov 2020 16:08:45 -0800 (PST)
X-Received: by 2002:a05:620a:f84:: with SMTP id b4mr18913860qkn.22.1605917325887;
        Fri, 20 Nov 2020 16:08:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605917325; cv=none;
        d=google.com; s=arc-20160816;
        b=X6HRbJW8QL74b4BbgWGoMXoIEE24vSf8sQqQos2ChFgv4GrLAJ5c/1/gp+YDj5BLnE
         ojVa7xv5ksP4u64J9tvrvObvCmvI05AsLKBm9WegcYJkQV8QqTc3iq+LLuKZUAIgBGFC
         8tC8KwZNCayS79E/EOcho9m4EmrQ7JIKQZgUAJx9oKr85Koo4tbAMLYQffG+DlVwFmLX
         SjK2WfRINGP8G7VDhdDlj21ECaEv4oBr8VcfhgpcQbHtcoN+9HXBEkkp42tITO7X5FKE
         znjdExCeKZcKdP7CTyOqpLBBvJKdnEpvR7yCS3/lRuJ2uzaNgMG77Qeh6kqcdtXL3Bgf
         gsHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZrI6T0ydbBGHVkvNAITM1/rIzBX4TKDzD+4JBPsjVAU=;
        b=m+Gbu8YW6R0LazqKSdR4Cp/eHpxxQA7IyoEcLspMb/kKgggAqYdggsJaXHBojyIiL9
         F+txFdMrnQ4rmzzO+Q7e5MonKjIWH16umD/v2tggrUJj0+Momx2Eyvp1pCYiYPW+J9qD
         vfD1XcGsKGLd7ykWBMj/gLTo2YzUvibXQog4XIxwbKTtTGW3egLRt5BacCUs9t0P8K8/
         /OMkDk6oYq92XfSN5CcC1yyvwXZLx2fjDOJdCX94AKKKIbqe7dm1EZC31erJwDsvDfzg
         II/6OTCkmApBN6HkdU4s58e2DmBEFNgnV/4sczeX/rJ214p0z5OrwyEzRiIBhl+PrPQQ
         1EKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jdjYaxbU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id g187si263329qkf.7.2020.11.20.16.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 16:08:45 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id b63so9412328pfg.12
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 16:08:45 -0800 (PST)
X-Received: by 2002:a62:cd0d:0:b029:18b:a1cc:a5be with SMTP id o13-20020a62cd0d0000b029018ba1cca5bemr16150890pfg.67.1605917325096;
        Fri, 20 Nov 2020 16:08:45 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id fu5sm5201126pjb.11.2020.11.20.16.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 16:08:44 -0800 (PST)
Date: Fri, 20 Nov 2020 16:08:43 -0800
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
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
Subject: Re: [PATCH v2 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
Message-ID: <202011201607.75FA476@keescook>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201119204656.3261686-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201119204656.3261686-1-natechancellor@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jdjYaxbU;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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

On Thu, Nov 19, 2020 at 01:46:56PM -0700, Nathan Chancellor wrote:
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
> Acked-by: Kees Cook <keescook@chromium.org>
> Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Masahiro, do you want to take these to get them to Linus for v5.10? I
can send them if you'd prefer.

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011201607.75FA476%40keescook.
