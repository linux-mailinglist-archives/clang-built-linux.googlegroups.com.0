Return-Path: <clang-built-linux+bncBCS7XUWOUULBBEGUYT3QKGQEGNZY3QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A488020432B
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:00:49 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id c8sf13053554ilm.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:00:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592863248; cv=pass;
        d=google.com; s=arc-20160816;
        b=tT7U0PXfewPw+XDk/rYICg+IDCzmAzNi8e1zbNO4dcoYXCn5LT9Ozys1ciRfhoim/H
         LfZ9u6LxmoWOoYe6CW03Y1BzFNAdykjGsUuAfCAjzVRUEYXKMATQvaJmLgs2Yhc4tYY4
         Zd2g59+Gh/55mKn5VhT23yCfESh/BJZCF3rC6jtjiGkhA4gNCrPgmyE0VjuDKfnMz92/
         S7aUG67rw8tmDOOeSU5GiUkbngPiuPUz44XEJqvEf+eSlr4IxlZ9l9UsXePunNjKOhZf
         HomwyrL7QYs9hJ/Aov4erWgjUwTjWx1yh8IksvYa3AsSvGXhfjkLpoSxqEgJ0rxDWR3L
         lkCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=eqldCFSXqdmZJ2CCmQPa+WDd/EYxWbUZzxwdW7ZZtyA=;
        b=TVmOJ/RUCwD41YvWESGKHPSid5xdpJilVWJjeJ4JofOfojrJxzcip73cQYqozWbbJ0
         Wg+3fKH+c6fYxH3ozlNT5cwJGzSP0f9lPHQybuu8RXDjKfVwdgjkM3hWHkSSu53EGT61
         aCBvM8/lFfaPSQFlY90QmCX/UA11fuSa0yNtNZEKp6zbbPqkYRHw2uR5Gi8VRKYwlCFQ
         3qErdF6Y+akSMms8PFhDku7TTJocEFnKBAkXH4nPhWwau79YVDrjatGYKCqRh5PIce9+
         k+QTXxfWmcDbbKO861nObyimG/euTJUAbLJgG4eHuZH5k8d3UMAP8C+jKP0YaCvrtONm
         2HfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rKyi28V8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eqldCFSXqdmZJ2CCmQPa+WDd/EYxWbUZzxwdW7ZZtyA=;
        b=YnoDKFi3MPDRMvuilL/lfObgNei0HuTjmVGyVKK1as64L0QcPrg13k9LxBmoSM01oN
         x7Utv6tGmhKFVLKMoh5tW/uxnAeAbCTfwD4FKvxveVc2S/ZEc9jip7m5kktkeqMuPon4
         oAkf41q5vDQP4z0R/038SEGBK2wUZ5TfKbiCGcOs1D075RcJjjMNarF8IFbgXQF+zIdi
         GQoGWxMRn8jFMp9WC8aVX8dMevtoCikdANCTox13twWIPNRjwqON610ZzRpTiFY/TYWN
         yNybdOefZ3o4EmHk8L5GH58knkdng4f6WDRyFaVXn2/uum0QbKRaEzdPUWE8+7egx7Gh
         jn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqldCFSXqdmZJ2CCmQPa+WDd/EYxWbUZzxwdW7ZZtyA=;
        b=IZ3433Weuu6/mqbb6kF/jpDAkfBGWun4UN+ZnnzUpZ/67Z7W9ygUgFKEpnBJqWxZ2c
         svEqmPQeWAgAxxdukM1iyzh+Yp0SFkcwbbFgyOvVCkejK7joyYcxIs025DXbxKPLmwC+
         j5ySEI3wiM1B2wJ3JNPnBukUnwiSN6deCwBuouyQfqGbW7IU/ROkg/MVc4UZwm46pgga
         psJkh5HAt++h23i3Pb9ln+hbaTx6wIQkUyETnceY8DqHMZeYWOavtplpOJMlp9LVoihV
         6abnr+pRkU8xhNowOXX7LiknJ9GLAbpCAdbunNdTV3insDT7Uhrg0lGdqZb+PaJsrM5L
         BwSQ==
X-Gm-Message-State: AOAM530PNNyLqUHkVzzkEkzl0AYftZshQv/SBbG7lLn/lb2rX4FpuT2j
	F68hcRdtcbObQud5AKLOdp8=
X-Google-Smtp-Source: ABdhPJycKn+KLbeWshmbJA4HD7c19zUSQw7o2aV0BpIGLa8EJqlgC/pTaX5Xcmk1YBrinswYg4H4LA==
X-Received: by 2002:a92:5f9c:: with SMTP id i28mr20325112ill.25.1592863248669;
        Mon, 22 Jun 2020 15:00:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1552:: with SMTP id h18ls3640907iow.1.gmail; Mon,
 22 Jun 2020 15:00:48 -0700 (PDT)
X-Received: by 2002:a5e:9b0b:: with SMTP id j11mr22026503iok.17.1592863248229;
        Mon, 22 Jun 2020 15:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592863248; cv=none;
        d=google.com; s=arc-20160816;
        b=E3LI+PLJoLLmMCnsmBMDqbpwUAbjwD7+182owKChhtc/dOAoYUw9vHwJK2s1bNJeWf
         3GlII41tIAFSE/1IfuLIdNs4S8HPeCvu36otIMJAjpx+7gDZ1mkx6/SeS+OVayPUrJWb
         3v/OiGjzKjJcXhnQlOOjlj5cvvilJ3gJZTNrjQ1nKALgT/3UjJlAJSYwdBklacLjeKHo
         /QmlcppWHzHHVPGF3K0Ur3aqWkwfIndKZXB3Tk0T+yXQuncSlZJmSZxwyw1vGC93pqD9
         +yVIoKAkNOzXIoqnNZQOX8qrSCdVt7vAzx8kGisrarAX/2nhNF6oR2U9NtxTS5qba/Pg
         QEgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+ibN7k/GXiEaOSwLAh6eIG551wxCB5ccPWNe8L96H7k=;
        b=sqe3sbev6LZkh+GwBWHY/YTpE//e69phpI/hS1hngorxQkrZCRAbi1uvf5UIOYJml4
         P8k/iIay8v+WTRFHzwe4D5TE71cIbqSX6JwE0dUNhAWTNS6gQjeAGrBASQ6ExKrEO6cO
         6xku5kMV/JgjIJgivKX7/Mo1i/GdaFgJGnH0u3Qk1QZQzByLyKPtOEE48zH6/FScacxr
         WuExbzAlShar6YVCGZIzr8m3MjUOT91xdxvtI43NiggpNj+9vTh5jlS8Zy+hFJKdiYfl
         3at1H575K+oUq78rMkYh5TwcBOVMGbHOh5QkOSayj1HFg/YCZ++pVMfboW8ddCIBmR8f
         CL4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rKyi28V8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id c7si816291ilf.2.2020.06.22.15.00.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id k1so8179002pls.2
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:00:48 -0700 (PDT)
X-Received: by 2002:a17:902:ee15:: with SMTP id z21mr21435821plb.233.1592863247373;
        Mon, 22 Jun 2020 15:00:47 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id 130sm14647760pfw.176.2020.06.22.15.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:00:46 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:00:43 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Message-ID: <20200622220043.6j3vl6v7udmk2ppp@google.com>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200622205341.2987797-2-keescook@chromium.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rKyi28V8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644
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
>For vmlinux linking, no architecture uses the .gnu.version* section,
>so remove it via the common DISCARDS macro in preparation for adding
>--orphan-handling=warn more widely.
>
>Signed-off-by: Kees Cook <keescook@chromium.org>
>---
> include/asm-generic/vmlinux.lds.h | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>index db600ef218d7..6fbe9ed10cdb 100644
>--- a/include/asm-generic/vmlinux.lds.h
>+++ b/include/asm-generic/vmlinux.lds.h
>@@ -934,6 +934,7 @@
> 	*(.discard)							\
> 	*(.discard.*)							\
> 	*(.modinfo)							\
>+	*(.gnu.version*)						\
> 	}
>
> /**
>-- 
>2.25.1

I wonder what lead to .gnu.version{,_d,_r} sections in the kernel.

tools/lib/bpf/libbpf_internal.h uses `.symver` directive and
-Wl,--version-script, which may lead to .gnu.version{,_d}, but this only
applies to the userspace libbpf.so

libperf.so has a similar -Wl,--version-script.

Linking vmlinux does not appear to use any symbol versioning.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622220043.6j3vl6v7udmk2ppp%40google.com.
