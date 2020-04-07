Return-Path: <clang-built-linux+bncBD63HSEZTUIBBWOWWH2AKGQEYF2X6JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECE51A0D29
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 14:00:27 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id nk12sf1257767pjb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 05:00:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586260826; cv=pass;
        d=google.com; s=arc-20160816;
        b=aA1Qpn5t+faW6EHxw5mGxb2CTiUCNeaSAmj+ir5KWzEB4BUD96/ruQ4YkOS9wFDuMC
         K0yW4qk8PLgXoks5aQvAHbjzHxR9lbUcrkMxjZHQ843JBhyOd5Z5uG0EZyiZEkJ/2WWv
         b+LF5Nisb/Zy1PabyFOH6UAknf8gnqqj3M2k4cEZ+p/WXh6l5L4r1RFedJS9wKLmjvd5
         sHqq2ftNY3Jha0otW6R7iTdzjxycroydfj1fa9ULauAu+mRW19kLEigPSpJOwSNSmLAu
         DaFhBpRsdQPGJboUgn0riX4Za9j/np0Tn36WN581s9NMJy01wwv0kBNGjihpxkyC97h4
         9ALA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=//6DWeclKSIbm0JVhu5c6ERcUqa/IjUQML/uuaBViro=;
        b=D7P3t0i3CVhdhUmH8UeC2/2ot6oIKxqDJMzQJkyAYXOntHa5ZJLn48BqqSPmop3LlM
         6P95xtZ8aNdlfp1WwMZWSs10km5xm0LjDUo/Xecl+VSPk8NyPuhCe44x1JqGkPFLy6Cf
         bDBjPhpxkepn3ke/gbpjKlc1Q433v+tb5Ly3o4p9R4Yk9qp5HNMbEkdSJn/M2K/fI7qy
         E9kj2EvELnfi799D8xGBpioCRLak/dmDyIEoUCIcSLo5ZeyyzMHlw5f70QnxhPLvin8j
         hm+BTb0vI8+sss07yJPl3L49pkWTGU9VtjKeFiAiopl8/nZKK5h9cxOqPODzHctcjBB6
         7K/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E935JBus;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//6DWeclKSIbm0JVhu5c6ERcUqa/IjUQML/uuaBViro=;
        b=nKTAQ5RyoZAr9ERQXyJWJKnKmY8DaZEVcd3E2PeKsjoFGeD7GwEzA1bSP1PaYxO5J+
         U9td3awvz28KdJn4/5XtxfshNAFI/YqWs6WYaoCsrRcD2lIh9s4IvSoNdTX25m+OADif
         jTOmRV0+ha6v5uHiLcNDJyzdJduwx5d7wGPUiN0AHuJhWYt5Vpe9b40GPK8D6QnJy/aO
         DiEsuxKNx7YYsSU6hO/VNzsuClOjdQnSAWWyZzxoWKdNtpOwMQ5BaChcV0r8znFRVurr
         UfeH8Y2UUQyNaPAdNgTue7tpKNCcmSzTONKZUJRessbBTxqF/vhFr2ZhVLwk+Z48COAo
         fBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//6DWeclKSIbm0JVhu5c6ERcUqa/IjUQML/uuaBViro=;
        b=TeLR/KPM6gtk/PkavCyb5jNqn2+EnGx+5xIqOCGquNOOji9H9qSERv49ycDuWHKiK4
         mSoMiRw100IUm4CzzgNDYMcoN4/NoeTxySae9nuI33pvxo9BgEyRreYZRxa2jVeMQDyS
         FSxLGy/Ekux6AwzcmeCp5i9yON8orWDZhJNrVBbugpU2LvQB7SIqid6LV7KhwsEmnDSv
         TgA2UAT5QWDP9FQSw7dTFi4XHIcBzKWWXW3q9MLXyvR6AtbNtbWBUNXObNbozBBpaqGX
         xJHw4VGn1DO1V8L6CSPCkZ6ENAYilFQ2Uqmhhf88UGM3HuaakTYCYqq5jHxwDpvetz0q
         5vaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaWocj7kl1Jtshx/dqiqX8tw1IGhi1dav7kntBivvMzWLLF4+QQ
	WzlQ3iDMjE3SmL+OrfkMpsg=
X-Google-Smtp-Source: APiQypKSBLA9IM7ykyuxVBaX3z4FYWcsyDQhPwiUW4WV1NjmS8cTtfAKQHj+2XNlaxkqNUZzo1c57A==
X-Received: by 2002:a17:90a:2264:: with SMTP id c91mr2359890pje.43.1586260825796;
        Tue, 07 Apr 2020 05:00:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls1709069pfy.11.gmail; Tue, 07 Apr
 2020 05:00:25 -0700 (PDT)
X-Received: by 2002:a63:2d6:: with SMTP id 205mr1765689pgc.257.1586260825276;
        Tue, 07 Apr 2020 05:00:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586260825; cv=none;
        d=google.com; s=arc-20160816;
        b=RlasSTW2KftFMKf5IGfzHy+pzPZSYE6yVJmGvcecgMvP+SjuX9t1WyaQuwJOUnO/HT
         R0eUM6zet34ZTDI4cJhmyF9GUVlyFcarQrJKYwWL89jAmI/ox3G/HPaFBhnjzzHm77m0
         zlF1s2M2tzUF/F+nB7/79gA1ijFIBP8hWOVUxRiWvO0JPOaFmRT6fDUg3Rp/j6j/KUMu
         F+MGkjD65ir3GDHYkxcF1IlPBIVQQpHZ+UuAIseUwvQI7a6t6xHGLsgc6r6m5FvEESpE
         qiMbqhqmwcoA0JpUrMpcEYJecyYrBkKjhfZaugmSt8e3QuEvW2CK1K22wORlxOreuisR
         RZPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3JDjlzD1FFJ32QToP2vqu4ohQm1AhkGZMvyuHLjn3Pc=;
        b=KwAK+KDxR/k8P9FsLfsNh1oz+3fU1UfDeTQZf06djIxRZH8jk9t5yqFWq3fgLYtiEp
         epeJS2EecAItbTxFm8bXTXIVr8XSXXkLb+f0ZniEBVvb5HtEEegDyJiPxPE8wXH3LaFn
         vGSNVktYaDB3rB6p+XhRq2i8DNAhjKqH2t0X0Dss54lfFdBuXYrHw65rPSnxB3b07ZLT
         s/SJ7x2UQXvViP9KDxc60WinrwYLs91OqWPDAt0Zfvkj6QGQ8MI3nnyvLc3VnMzmvGJZ
         duMY93leA4fv8eDs9PI4YPMV6jYtz1IVT6q1U6SNMUgvb3zOiERxZglOzYz/r30dUOP4
         npAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E935JBus;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c3si198963pje.1.2020.04.07.05.00.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 05:00:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ADDF420801
	for <clang-built-linux@googlegroups.com>; Tue,  7 Apr 2020 12:00:24 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id v5so3505979wrp.12
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 05:00:24 -0700 (PDT)
X-Received: by 2002:a05:6000:1002:: with SMTP id a2mr2399545wrx.151.1586260823114;
 Tue, 07 Apr 2020 05:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com> <20200406164121.154322-13-samitolvanen@google.com>
In-Reply-To: <20200406164121.154322-13-samitolvanen@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 7 Apr 2020 14:00:12 +0200
X-Gmail-Original-Message-ID: <CAKv+Gu9psVBSdUvcRWNrEvjK4ckyA-vGKmZ33O2NUm-Pt4eJig@mail.gmail.com>
Message-ID: <CAKv+Gu9psVBSdUvcRWNrEvjK4ckyA-vGKmZ33O2NUm-Pt4eJig@mail.gmail.com>
Subject: Re: [PATCH v10 12/12] efi/libstub: disable SCS
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=E935JBus;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, 6 Apr 2020 at 18:42, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Shadow stacks are not available in the EFI stub, filter out SCS flags.
>
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  drivers/firmware/efi/libstub/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 094eabdecfe6..fa0bb64f93d6 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -32,6 +32,9 @@ KBUILD_CFLAGS                 := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>                                    $(call cc-option,-fno-stack-protector) \
>                                    -D__DISABLE_EXPORTS
>
> +#  remove SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> +
>  GCOV_PROFILE                   := n
>  KASAN_SANITIZE                 := n
>  UBSAN_SANITIZE                 := n
> --
> 2.26.0.292.g33ef6b2f38-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu9psVBSdUvcRWNrEvjK4ckyA-vGKmZ33O2NUm-Pt4eJig%40mail.gmail.com.
