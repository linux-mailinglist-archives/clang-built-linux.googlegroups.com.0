Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBBXUYX2QKGQE523WBLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9CF1C59C3
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:36:55 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id h26sf1104024otl.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:36:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588689414; cv=pass;
        d=google.com; s=arc-20160816;
        b=sk0Soh/gPkBM9vIQDdkQM9cyC31dSmYiOBnaXjAN7b0HMcGLoXBIa2JqRJRZ6M/jvB
         0V1ExXlW9+bUeJRJRtBVBGDhqOsA+ulsNWD1pNSzZHV861reuVIwHVStDtjMvi74sv/V
         w2ccr8efqS75CGb+4vVOvnkDAq3J+tq6OPLW7e/DmO9yp9eKmLR16jWIy+ufgnK8encw
         562MXxgLALJFgT7ujIesWlR8VnR/dUT/3LVg9wraWs59J7JhKbyTaYfQwiX3ZzjFFPC9
         oNAkbWSGK4QwUNUqAMB2FOSKEd0yk2XweNetkaWrpbsIiLJSu0BC8yMdl8lcbR1C/TgM
         gGsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hhx1KIgMbdxT9HBVu36K5m0jEPIkQTEk16IOPxuQPLM=;
        b=f9uuyHwX2C2qciWQGuYG2UZxsPvaaasW/VHU/z9RYTpp9gBDS7/edU4Su9ukWww1Vz
         HeVf0GXDlld8Jhw7ANwKXUY+JR83bXd9tO6m7brzoSHtvEw4nhOV8nlczLoZmq5sBDNz
         REoAP0UBzUNCeOB+AeI4NqEHRvs16gsBbQWSZwYiHm1zBjJVQ9bzefg127NXe4RXvk88
         rnfdd3OSx/DPjzZbmyFW+ggAF5XWz8sE5pSP9pI0sB5O4qr7CCqavWK6D09O7/CPn3yp
         eZbLIoGaesQBN5kKIHkG0wiW4IcVF/bj21aj220t9Thhv6hL4k79yMj2EwwmwdyB+jvY
         KJzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TLnOYtAO;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hhx1KIgMbdxT9HBVu36K5m0jEPIkQTEk16IOPxuQPLM=;
        b=GoVBbru4SjbqK9+53fVhIieg7fa52tg8QPhwX8P27xjbUT7Rvj1zhMmlOt4Z3PChgM
         o3BLiTG5i28xI4MgUrEx1+LMO+2dxh7+FxL5XuBw2aZHQnz4Rhhct09vo9k99S15U49c
         THD0ZeuHkpd6usuyr81eu7tqsCcnYGW4ERTHZiT/wtVmV9YMsEqPWNTXf4xMTH2VFFXU
         mq62r41CHI7XIOWsTlgrAzVImO0Fc7yOWICH0S7FqXGZOTFs0RbJQBp4YnBTVz5AZtE9
         +babQbtWlm87t55pwQY+12BQQaie4PDA+67J7LJ2GpfxdVfUorsfFsYEEvDLVmX4tTOG
         Cwfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hhx1KIgMbdxT9HBVu36K5m0jEPIkQTEk16IOPxuQPLM=;
        b=AWsP6VYgkfkBF3KhKzyqihaFRtLN+lr5EByV6S05f/vVK8LGSUAS3qDHTDfTcS8/TV
         k7UwtXa2tDrrKf07QjgMFj+/aW9vWtpVN25P2A3Rd2zMEMYGrV0S9hTi3IumrymMcIka
         cjvW+Opu5O8Gn5s4fd1fEnxU/Gub7SlvYhlrz3zgQ2ivv63FdtIaLZGU7LzTsnCOI0y5
         R9g/J70kx/fFTHUkk+UxhUqYvvyTSYvZZbG+Dd3LS67C+L7JQp40BpGTOkST+BL4o6iy
         fHThI5gvSFMUMVq0dJJZHT5StJ7vftYE4LqYtb+0P85umFM/USS71kwy6TCLqqTtWZHz
         LJ3g==
X-Gm-Message-State: AGi0PuYmEn8zPYaO8VFRtjr82NWzMWFMWdB6eJz0WInuR7dLG4uKDFww
	NoCpdd7MylVMEOdmQ4t54qU=
X-Google-Smtp-Source: APiQypIhBW8p4iRZhhzHV0vyvHALqtfWa8ZV+nJYI2dsEK4KRnTBFy/OmKtcfWoiP9HYx9+gVE+MHw==
X-Received: by 2002:aca:2419:: with SMTP id n25mr2506452oic.168.1588689414287;
        Tue, 05 May 2020 07:36:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3745:: with SMTP id r66ls182650oor.10.gmail; Tue, 05 May
 2020 07:36:53 -0700 (PDT)
X-Received: by 2002:a4a:bb10:: with SMTP id f16mr3141444oop.43.1588689413809;
        Tue, 05 May 2020 07:36:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588689413; cv=none;
        d=google.com; s=arc-20160816;
        b=cVGdsc+v47kc+N2UblAa/IQ77suLuQnUjez2EanTiHGv9YUpjzMjYbMH6OJEIFl+v6
         w1l9gasx2//fIw2tBYuC29unBlhUB2z8MQU2YywDY+iWyfmQA0h4FSJmXJb2+mbVPePU
         XnV+7Z3sxRCpGJHn3+VAiphptQYizf1KDl9XfPxKWsYTarZe9VCc/j5Hj+abNB+4obRj
         zK0GLNI/39P4N8ojsq5nI97u41QsgFr3f4DuDYrQWiKgJpBqvmbfR9ER3WaCUzU+u2oc
         YKQig3PzGzqH58afBZkS3YNodbDXk1iRVpZ2GTmvbIUQ3SEJ9K1yq3rYvTAgwyOUQOKY
         3jfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jKuEOwL1JP6YyFDs25REhPwIl6Gu+3wkdYT2D/cl688=;
        b=WEKkQkqVMuTEOA7sow8NqsSncVpLY+Z1q40jRPZKymWcB3iBJeYa9P2L+MDgsFwvPg
         lTc3txmTGA5smg/sQmpbEQ1ZHdd4bzRsFzP8Uqk3BHeb5YcuFw4LWYgrdv5megiDkzbs
         nNxEd7yhUcv1Z49ZXCNUtuWLs7zhryh0YwzvXL52SZ1dye5jmzKzHFLYEzGLDDiRPM3a
         muojKWK9uqxN6BoW9VvkDmEow1fAF3ReyvBo5zyhczOXAprfKqexqrnyHGHJbGBeNojC
         LkiQjkke0FudgwF4oxwXVzqTmuMcNzllq+FEuN5DoaACbBunnVqV4G//hHfZsxaBILzw
         khGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TLnOYtAO;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id t17si153725ooq.1.2020.05.05.07.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 07:36:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id z17so1821498oto.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 07:36:53 -0700 (PDT)
X-Received: by 2002:a9d:7589:: with SMTP id s9mr2280188otk.251.1588689413307;
 Tue, 05 May 2020 07:36:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200505142341.1096942-1-arnd@arndb.de>
In-Reply-To: <20200505142341.1096942-1-arnd@arndb.de>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 16:36:40 +0200
Message-ID: <CANpmjNMtGy6YK8zuqf0dmkykZMt=qkxkZrZNEKde1nbw84ZLkg@mail.gmail.com>
Subject: Re: [PATCH] ubsan, kcsan: don't combine sanitizer with kcov
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>, Kees Cook <keescook@chromium.org>, 
	Andrey Konovalov <andreyknvl@google.com>, Dmitry Vyukov <dvyukov@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Thomas Gleixner <tglx@linutronix.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TLnOYtAO;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 5 May 2020 at 16:23, Arnd Bergmann <arnd@arndb.de> wrote:
>
> Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
> with -fsanitize=bounds or with ubsan:
>
> clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
> clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]
>
> To avoid that case, add a Kconfig dependency. The dependency could
> go either way, disabling CONFIG_KCOV or CONFIG_UBSAN_BOUNDS when the
> other is set. I picked the second option here as this seems to have
> a smaller impact on the resulting kernel.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  lib/Kconfig.kcsan | 2 +-
>  lib/Kconfig.ubsan | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
> index ea28245c6c1d..8f856c8828d5 100644
> --- a/lib/Kconfig.kcsan
> +++ b/lib/Kconfig.kcsan
> @@ -5,7 +5,7 @@ config HAVE_ARCH_KCSAN
>
>  menuconfig KCSAN
>         bool "KCSAN: dynamic data race detector"
> -       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
> +       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV

This also disables KCOV with GCC. Why does this not work with KCSAN?

This is a huge problem for us, since syzbot requires KCOV. In fact
I've always been building KCSAN kernels with CONFIG_KCOV=y (with GCC
or Clang) and cannot reproduce the problem.

>         select STACKTRACE
>         help
>           The Kernel Concurrency Sanitizer (KCSAN) is a dynamic
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 929211039bac..f98ef029553e 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -29,6 +29,7 @@ config UBSAN_TRAP
>  config UBSAN_BOUNDS
>         bool "Perform array index bounds checking"
>         default UBSAN
> +       depends on !(CC_IS_CLANG && KCOV)

Ditto, we really need KCOV for all sanitizers. I also just tried to
reproduce the problem but can't.

Which version of clang is causing this? I'm currently using Clang 9.
My guess is that we should not fix this by disallowing KCOV, but
rather make Clang work with these configs.

Dmitry, can you comment?

Thanks,
-- Marco

>         help
>           This option enables detection of directly indexed out of bounds
>           array accesses, where the array size is known at compile time.
> --
> 2.26.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMtGy6YK8zuqf0dmkykZMt%3DqkxkZrZNEKde1nbw84ZLkg%40mail.gmail.com.
