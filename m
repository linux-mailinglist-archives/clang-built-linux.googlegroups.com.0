Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX7TVOCAMGQELDMF74A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id D93D136EF6D
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 20:24:31 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id m7-20020a7bca470000b02901473bdb2486sf6494wml.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 11:24:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619720671; cv=pass;
        d=google.com; s=arc-20160816;
        b=Av1OKcVsGaJVO/ZwJTMD8s9PR2E8QIystVnWP6HUSk7eVu53eU07XpNdY4KbOGSApa
         GhRGkUvX/PevK/EZysySjDGF9JqNtjiCUpvfknUYl8E2IwNak2E6mjpP5/svrvzSTj0p
         YqxMMR469oIMCZfWqaH+EUIQ92kxgCbaRtnh1fg0ygnsE1z6Js3w6sEwiAqYTl0ppiKy
         9LIXH+PjdgIqrLvjMzogeTSlzoUTINQHdvFfu+uwLArGXVw0giOi//4lLN2vc9digbSO
         do4B9zK/ZIMFDLXkMXF4l6mOtHpEpCY6oagyjG0DfTXhWuCBnTeMvyDG8RJeuv87EfIB
         qyJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ghNWRZw3ng6kbnVYHLLff5xKLkKhXA8OK1ECqqb96CQ=;
        b=gr5qckKzotoQwrrlf2YMii6CYKjqdbwjKMsbcA5DKmtx/dvp5SS9lzK25DgAmjDrRJ
         SJrJAs63NV/RuxsRp/WGxTRaTedit3Ao/NHkntn7mDK7Gae5154DDDhmY7vJIwVSuMBs
         ZA21CbXHncIDsgkAAGzKIqFrfrmUkH5kTEQHgjs/EX5lxNLm7l0QHP2Xa8lkxqBc8m5O
         zL9FC/5+kWRWxK5g6k2wMRp8ZKLT3xbfFclkg5x44ZNZZphfnWbwjr8nut5/dTNClKcF
         65wmv+g5xW84hiDQymtWgQ5Xe8LmryOVOo9A3MdigEqhD5uyTHLNxRFVZNjp2DRAFnzV
         lb/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DXTovYi6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ghNWRZw3ng6kbnVYHLLff5xKLkKhXA8OK1ECqqb96CQ=;
        b=T49kq/n4uaAxteXO+QTtp32/yxJ8Zf5wCTGlX+w4pvRInfhy+ZntUf2pdqtD6LoGPN
         asU2F6a3+8bmdLt+LfU80yncBc1YqYOxz5/EO825JTaE3Et0Il0+AE0M77OQgJ7PYg7J
         G81nrWuMwVuTECuWVj+ljRIAkNSEUQ8sAsZwRecMM61gUZuBm3sjVolB7URI8uL/j3qM
         08U5V+RZqPt7kyfi4aeFtspDOdZcOYGKS87lboVzNT9BIflzHSNbLT80/VxDxLWOpLba
         xq9sUVFlLXGTs2k6bjK5I9xmEt7GKr4MEDC8it8EV97+cadFx++kTfoGSNWyZQVBYUF1
         nQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ghNWRZw3ng6kbnVYHLLff5xKLkKhXA8OK1ECqqb96CQ=;
        b=XgY/oJ8d4/ifzE/C2sbM+GU9cLWDkudbDTIPTVrK/21DXjXLZTgt+4YUuNICEpZPC+
         8qCP4zAlo8NXu7k2X/fQMHDf7Yd3fCqnbTer5rSSApzE794SsZPtpwyLhGvb+c5gW+We
         ZxJoMGB1KB0Tj19hv9KaEHtWsZeV7fsR8pRB4+07MFgsDf8SdIz4Gcl0cZJV+JrRE1FJ
         6SN4SIP2PVMLNkZzVa2GHgekWuBvQnJSDkNkX/FR9Ymngg3Y83OOTprCVXM58nSvFFPb
         ClbK+xl1buYJDgIeI7G3cHhR2neAsVew8enFighYHTjnGQLLAocf3czFpI135+ltBWyj
         cbQw==
X-Gm-Message-State: AOAM532o7VFKLe5koCEk5gcPPn+5wF3iXt0p5h+d66hne0LJFu+hLH7C
	14OkgnDJRnJPnYTg5MbcuNE=
X-Google-Smtp-Source: ABdhPJxPPAdmSGDdbxYVxiToevg2e8yXx9W3H+wHhhTGKLnwiG1B3Q0cWm/alXy6sWExvUD6diG6/w==
X-Received: by 2002:adf:9d88:: with SMTP id p8mr1324850wre.138.1619720671642;
        Thu, 29 Apr 2021 11:24:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6da1:: with SMTP id u1ls1731370wrs.1.gmail; Thu, 29 Apr
 2021 11:24:30 -0700 (PDT)
X-Received: by 2002:a5d:6383:: with SMTP id p3mr1295297wru.230.1619720670834;
        Thu, 29 Apr 2021 11:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619720670; cv=none;
        d=google.com; s=arc-20160816;
        b=zSKbXUL10dtHMDdXxh1fYPwcBzU4sja3apavNKdCyLCXFUUHlxvYsb6XpMi8UoZOAq
         2DTsYbsIEXjM0zR4/Xk3MgDOeKLkNjn+1u0vWCTRTCbnFL4EFHqrIu4MgK8kM4Ax93Qw
         QRovLToykJfNYREWzklrDVAK3PmkRDqO43g+i82Ts8Yui6oEI4kJD8jM5XU+F5xP59cr
         PfMV5yAHCkk9kb5r6aQ6IHeBqNAZHbOS5LsEZFVzt4nOKwkh9NDFyX0CECABX/jFLxYe
         lsXyDhV3Fa9IeEnN3HSLwItcihuG3sEVRbi0mfs2fUPFApwJMXPfsqBbtxWyPnrGD63p
         TzGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ykWrXGycxSeYLE6z1WE0zVh/XXJJOlGXtFhHyus2kiU=;
        b=sgH/M9aks507SO074DqLOZyOt+dHkayQXU3fmtElaYXKB4YT4S2oCj1BA/SQ5gOhUn
         z8ZjV4RQexZszRjoxVVZG5xAeAT4+mUNn1HU4dLx4oAKMSOYfo7iX2aR5N5Ve0oqeyjA
         uGRE3oJgcH3+j/FTHjNxRf9OltfTPT23qkH/GIt+Cn/I3VzGVMNBdX1dgNZPoPF4+B6Y
         DWtgHvFEkit64PdllTmDxbXtIIrUk18FweyZf+aITTfja+nJWtQwJhCKSRS8YeHuinWt
         xZ1j4lDdwYJgqCSFUffj67yVWM6leYMcM7CeYcvFDGDTt7weVZCaw0GfgnwoSxv6F6Il
         mFDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DXTovYi6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id z5si327751wmb.1.2021.04.29.11.24.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 11:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id x2so350934lff.10
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 11:24:30 -0700 (PDT)
X-Received: by 2002:a05:6512:94d:: with SMTP id u13mr588562lft.368.1619720668888;
 Thu, 29 Apr 2021 11:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210429150940.3256656-1-arnd@kernel.org> <20210429181716.2409874-1-ndesaulniers@google.com>
In-Reply-To: <20210429181716.2409874-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 11:24:18 -0700
Message-ID: <CAKwvOd=5sLHssCf0Umfh+E__TjSwpxtO9K2MYVcXEhxvVp8okw@mail.gmail.com>
Subject: Re: [PATCH] smp: fix smp_call_function_single_async prototype
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Jens Axboe <axboe@kernel.dk>, Borislav Petkov <bp@suse.de>, 
	eric.dumazet@gmail.com, Juergen Gross <jgross@suse.com>, Jian Cai <jiancai@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Michael Ellerman <mpe@ellerman.id.au>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, ying.huang@intel.com, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DXTovYi6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Thu, Apr 29, 2021 at 11:17 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> (replying manually to
> https://lore.kernel.org/lkml/20210429150940.3256656-1-arnd@kernel.org/)
>
> Thanks for the patch; with this applied I observe the following new warnings
> though (for x86_64 defconfig; make LLVM=1 LLVM_IAS=1 -j72)
>
> kernel/smp.c:515:19: warning: passing 8-byte aligned argument to 32-byte
> aligned parameter 1 of 'csd_lock_record' may result in an unaligned pointer
> access [-Walign-mismatch]
>                 csd_lock_record(csd);
>                                 ^
> kernel/smp.c:516:14: warning: passing 8-byte aligned argument to 32-byte
> aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access
> [-Walign-mismatch]
>                 csd_unlock(csd);
>                            ^
> kernel/smp.c:525:14: warning: passing 8-byte aligned argument to 32-byte
> aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access
> [-Walign-mismatch]
>                 csd_unlock(csd);
>                            ^

Perhaps roll this into a v2?

diff --git a/kernel/smp.c b/kernel/smp.c
index 1ec771d9f91c..499be1eb5189 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -226,7 +226,7 @@ static void __csd_lock_record(call_single_data_t *csd)
                  /* Or before unlock, as the case may be. */
 }

-static __always_inline void csd_lock_record(call_single_data_t *csd)
+static __always_inline void csd_lock_record(struct __call_single_data *csd)
 {
        if (static_branch_unlikely(&csdlock_debug_enabled))
                __csd_lock_record(csd);
@@ -431,7 +431,7 @@ static void __smp_call_single_queue_debug(int cpu,
struct llist_node *node)
 #else
 #define cfd_seq_store(var, src, dst, type)

-static void csd_lock_record(call_single_data_t *csd)
+static void csd_lock_record(struct __call_single_data *csd)
 {
 }

@@ -454,7 +454,7 @@ static __always_inline void
csd_lock(call_single_data_t *csd)
        smp_wmb();
 }

-static __always_inline void csd_unlock(call_single_data_t *csd)
+static __always_inline void csd_unlock(struct __call_single_data *csd)
 {
        WARN_ON(!(csd->node.u_flags & CSD_FLAG_LOCK));

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5sLHssCf0Umfh%2BE__TjSwpxtO9K2MYVcXEhxvVp8okw%40mail.gmail.com.
