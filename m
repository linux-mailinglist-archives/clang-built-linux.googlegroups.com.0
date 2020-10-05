Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFVT5X5QKGQEVAK6PJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 323A5283D5D
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 19:36:24 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id n24sf6177222pgl.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 10:36:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601919383; cv=pass;
        d=google.com; s=arc-20160816;
        b=cBaG2IWQLeQoSmERkRQcQ+JzWOPoTXWm85lxv3oif8wVmN9bM65j6WB7UA5RDoQpK8
         M/XJh5yP6rurLD3lrGdCrNB2J5Ka/9KN3zi0yC2TPihK7x7Cnbv7pPU4kIe5LBmjMQLF
         gFNl/CCmf8mdCUCXYqH1ISbbBOkVFre+IMRebkWFpf5jyASsLqYceMzJK9jGNaQiUV5p
         TxXQoJXhOZ3gM1ZtI1rvfpoSQ6gTUtvpNZmR5dvMH7UkSkNJV2CCFmy2miTDCTgpNPKu
         z0dmyEmCg3lI5cR5sn0I9N7GjCkJ+PHjqfsGPvhrLbN9siFL8OHKnoWM6O3Ke8iqJuMp
         lgZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=93b0NVCJMA4vvzLPPiMFwD0RtfU2HNkI0s01vyxiw1M=;
        b=b8ywigz9niaUPHyBoL6Vb2PWpzFHvwJwDW7peQT5TH9TrReS+VbO1l4Z5TNGLfTVYr
         zq+XY6rKexshbdC/VMwNKhZR3x7uxZcdHTi6J+QGHkcL6yDeE52Q+3PLTEgS+0jNNgC4
         H5DIiLjRuzacbqbeKksy5IrSiHwkU63Q7yV+cjsxg57gOo1OC62RVUOYBOr1bbjMJefx
         8sgW26v2SVBlkPgOTnhdzdo1VByRQXN/r+ql7GzryOKe+9mGToplEMP2VK7tLQVtsoJ/
         PMJ7rtIrhe2lQ2j2p5HGK+nFlg8JuRzqNruMepaHAFfxP1wd3nQ4klz83wFsZrEHlZam
         Qnug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GBwOGDWD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93b0NVCJMA4vvzLPPiMFwD0RtfU2HNkI0s01vyxiw1M=;
        b=isIem4tvQUqD+jOSvCucRIvgzoaUzV7N5K5kbFM0TDZVe60xbFt6h1HZ01E/+Mhvpt
         sXJoHav78tfFmdc+ivl+yO0Z9cyLuGwi9Jy2T2LSlj2yV94qjnBDIyw3bCERFgDonErQ
         hZ9bNuEuDeVdJ1WzSHFZRqSoVJRc4nN0sqxEW/HTMOOSxwrPo3bTDwlk8l3RTyGNPJux
         tvBs5F5mZTVRebYUcwbB5yqJWBom3iiaQhLpooVbvAOF5e3CMgGOP7M1y3OgD5fK1Hc7
         mtnE2Jang4dC0rkl9B3JRjIvorLABuSVnxhhXHoouA0uHCGpMMsg1dFpHoJqu0Wk3Ang
         Nkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93b0NVCJMA4vvzLPPiMFwD0RtfU2HNkI0s01vyxiw1M=;
        b=cuoOoleLB8+xnz+1wXxe7vFWkdsJXkoxm1jZYfG05YaCwPxvmmFYUoXiVTQ7GJUPpe
         lEndVncoMAtnvO8z/zemn9PvncdceSZBhx2Cnvi4tcLR6e+SSvLVSoq9agay2BCaUznB
         3h/aEvwyEnCXt3mgnI6/2c8qAMQ3WLcPIOMuaF8KZJ8kL4WOA5apj3H1wfatth22bDK/
         UdFN4ZCVB1H42t1bV6D+Map/OmCTFCPp43cKgeFEFzO2zdJp7LlKEp8w2RTmXq4/TkuM
         thdcWeD8JnZ5dc1DGA6j/UjRlg5AjKxZ3ICj+7nvWNFuXR4ZqBQVt42Pl7zaPDPmdjZu
         Hp8A==
X-Gm-Message-State: AOAM533fVuMTeTAYVjmtbPAFQeMUsrU+mjqjLGky0JzoyeKIJW0HQr7V
	SQoKdLpcPutjR0CI/iQbCP0=
X-Google-Smtp-Source: ABdhPJzwsL0NKD67S4NHNGMyqSgzamNX6vTGS8p5SvTrQKeaf14+s9NfcjugpwHkLLtG7AOG2tJrTw==
X-Received: by 2002:a17:90a:c214:: with SMTP id e20mr517953pjt.3.1601919382885;
        Mon, 05 Oct 2020 10:36:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls4703512pfq.0.gmail; Mon, 05 Oct
 2020 10:36:22 -0700 (PDT)
X-Received: by 2002:aa7:83d9:0:b029:138:b217:f347 with SMTP id j25-20020aa783d90000b0290138b217f347mr680738pfn.0.1601919382328;
        Mon, 05 Oct 2020 10:36:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601919382; cv=none;
        d=google.com; s=arc-20160816;
        b=v8648P05Ut5oDH50efz1+q46fC3JruFrjD5LPjNRUGMqcTrn2FTR5/MA2PwefK9xb0
         PHYoqcy6LJVfAwpohSjHSGKU5llGESB1tdYhNIr9mHTyKWx5/0ngA+xIzNyMbLjmaw5x
         MsK3jMA72Ncwkr0+uyI1IQTBjRgLhh27u+fJgrtFpK9GUqa4qrH8ao1CYvHHizx8bd7u
         rV+IeZf8ZAoZ6PVM/cmDZkiMyhG/0RJSbspxph+FNM+//9oySVObKR7+dj1K6bNYe+Bp
         L6ph0P/YQd6YaxviEX0//8F1uNt3h7/U+hZ0luFLW+zuW75tkiM+grojYhFW8dexQfAN
         l9eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tGneaUPSfmwmZclVabdMQtlpK5P/Q67PdE+cZq4zgcM=;
        b=DvapJCZtfPi6UEt6L+QJSrdH+jmrZzLTqoOIbrB4OTckQaXQqDAP7XrS0SF0ERM1r+
         RwWHvIBvdqfWThYBpKUTCpcUmvlMzsfsZZJF9RHtu8hVuzSrLwWO3lb/CRzOC3SnyM4C
         E0Nq/XhmO2TFkdDgwcd4bxa5n6sH0JSEYPwueJm51iFoRvwKsJdgl/iWhno5ewcoXlz1
         zUxH+V2L3htxgdBOVwluxzx+Bpud6cxXhyaLlWinMDjbS0zPxvSwpLwaKBiZv9tRq5IS
         fZlq1ViSdOFkXzO0WXseL6serFJ+jX1kfay/tcDTvYl28a4D6y7q9RIvVFQ9GAYutgPF
         tx/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GBwOGDWD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id w15si82514pfu.6.2020.10.05.10.36.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 10:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id u24so6454316pgi.1
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 10:36:22 -0700 (PDT)
X-Received: by 2002:a65:6858:: with SMTP id q24mr596445pgt.10.1601919381716;
 Mon, 05 Oct 2020 10:36:21 -0700 (PDT)
MIME-Version: 1.0
References: <20201005025720.2599682-1-keescook@chromium.org>
In-Reply-To: <20201005025720.2599682-1-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 5 Oct 2020 10:36:11 -0700
Message-ID: <CAKwvOdnVJW0wDuMvgfKUE248gbDTT1CYmDY=hczaFNQ_39OfjA@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-toolchains@vger.kernel.org, 
	Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GBwOGDWD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sun, Oct 4, 2020 at 7:57 PM Kees Cook <keescook@chromium.org> wrote:
>
> Under some circumstances, the compiler generates .ctors.* sections. This
> is seen doing a cross compile of x86_64 from a powerpc64el host:
>
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/trace_clock.o' being
> placed in section `.ctors.65435'
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ftrace.o' being
> placed in section `.ctors.65435'
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ring_buffer.o' being
> placed in section `.ctors.65435'
>
> Include these orphans along with the regular .ctors section.

It's very curious to see different behavior based on whether one is
targeting x86_64 via native compilation vs cross compilation.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: 83109d5d5fba ("x86/build: Warn on orphan section placement")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
> v2: brown paper bag version: fix whitespace for proper backslash alignment
> ---
>  include/asm-generic/vmlinux.lds.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 5430febd34be..b83c00c63997 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -684,6 +684,7 @@
>  #ifdef CONFIG_CONSTRUCTORS
>  #define KERNEL_CTORS() . = ALIGN(8);                      \
>                         __ctors_start = .;                 \
> +                       KEEP(*(SORT(.ctors.*)))            \
>                         KEEP(*(.ctors))                    \
>                         KEEP(*(SORT(.init_array.*)))       \
>                         KEEP(*(.init_array))               \
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnVJW0wDuMvgfKUE248gbDTT1CYmDY%3DhczaFNQ_39OfjA%40mail.gmail.com.
