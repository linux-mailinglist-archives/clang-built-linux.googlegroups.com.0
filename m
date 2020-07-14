Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWVEXD4AKGQEXC24NSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 803FF21FE56
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:15:28 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id o17sf12750065ilt.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:15:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594757722; cv=pass;
        d=google.com; s=arc-20160816;
        b=HsyI8HhmSUD0dIeF9X7ahL2vNixU5I6WA6ozKpqSj/lNzW1Z+lrKNTS5zF0YZLEUGl
         /ItxMdKo7xuAeaaonw/sO7S7bFqlvIoNgnqOX179JzjI/HZJdZb0DnK2PiVlrNOwBUup
         SxG7z8sVfIJgdjOV/GeO/MxwAq6CA5BkAzMp/q4PvN2DEHmZ1sjqMiBiRlCFuHvGY3M+
         sPOluKT9Si5T/ohhyuVpzPHXJJ+UjmSjUSay22tLt96u9nJMZ2FeD5rhtDkwXMfoeTrn
         bZ+dGqZPVcfIiMXJYQCGD+Hpad+xwdma3DoB4afdtzHtx9TAvX+2NB/1sW4j2nF1tREh
         rJGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FYgWn6WzB6vFrqYYV4KK8Yp2uJ9XgVe7y6hyAAvamKM=;
        b=xGOgZaFI3ruV+NAIKJ5RhLteEVC1eqB5xwWoWS/2KMQe6+ZPYE0o1Au9LZjzlsLs7V
         1dK8Wkn7L/OPxPQM+FaoWMWnIqlN5CZs+iIA/6YgD3Y6EiIrNGQbPaV2OFlv4fpYE72Y
         tj7trua68ud3UroiLFBfXO0sK+CCPeP3I/aROjXzD91kiNYoXJxfNu7tE+0cAPrlIQlo
         51SXdkO90zs93+v9d2ym88shOSEvefWoCDSC3dNv1IKbrzIW+BCsrY8KKkC48+Ivf5c3
         xYXK/gN3cA2nL3Oc6BXMbrAucrUFIHG1EXZad2opnYWR4cqm7Qc6IkbDk7DKUL0mCR1Y
         H6YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kr9gHgmx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYgWn6WzB6vFrqYYV4KK8Yp2uJ9XgVe7y6hyAAvamKM=;
        b=PWMKJNOXgOeD2JbtLT6pmvE0Q/jQ9Z8UeGyeXgz74OIkgR0mbLF+6h1yt0lquk2NoZ
         ZF/09SiRFfnYPzPuE9i/w8QB5OoZM8zgM5XzSbPTUYWipeLP812CAjuldpBkGMYXoI3O
         0Fg+eGHSTrqGgHIf6jUquB6aoQH0tT3/hs5nkyUTTf5GrvlC/BSxPHsZQpiGBgsiGf99
         aYglPprnX7O+BdfKGv7KRQYj7Ja8dNqkReRZMYHTxe27IPmm34ZpLnKImCVJGjcnK3xK
         lHAQxqfl/pWGJ/GC0AyOo1XiLnYs8KCo0bPWufHd3SLq2Lowe51sYuYlVLdEOadmr4eY
         ucBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYgWn6WzB6vFrqYYV4KK8Yp2uJ9XgVe7y6hyAAvamKM=;
        b=rs0Fnn1Q1v3YTJ7Tb5l+hXmD280lgphq6fEzePup3IBV8ADIExq5Bjw3DhtwJb7Us8
         7Lv55uRNhokKbsFN0WNx3VnCsYkkOLptL9vdJ7n2J3RamkVpPwM2WT8+aQKVfPH9vcHM
         FvAhkToUEjAPlD8YMKn2+7UFYYbeUOuowxKU6mX2O3loj5H74QTcB3NFSj1UHciZz32d
         DkR6V7kkhEMWmuWNvDQEAr59t15KVu6MjjizyYxTfFyZceulES1jKLEnRA2++EeYM/UF
         wQEY3JdqprxP5VjRg7oF0Q5Yth/XLZkseoMYCdFsXuYWaiJwRFbBdlFgV7WlB8zHppR1
         N58Q==
X-Gm-Message-State: AOAM530wzCSG82WLgf0fcdxRjbjD4NaFk7asEFCMp5WOutZ/I+vz3WVT
	lEwy0y2GbTRTa+5GjNwi1W8=
X-Google-Smtp-Source: ABdhPJygzfC0EXxZ4L5mQDdN9PfDrI/7qwqtf7hw4It3lRYuhx9D4dTO53xUA8FUIuZ4HP4SeSzrvw==
X-Received: by 2002:a05:6e02:4ce:: with SMTP id f14mr6377227ils.2.1594757722451;
        Tue, 14 Jul 2020 13:15:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5b18:: with SMTP id v24ls3848026ioh.10.gmail; Tue, 14
 Jul 2020 13:15:22 -0700 (PDT)
X-Received: by 2002:a6b:16c4:: with SMTP id 187mr6563278iow.7.1594757722081;
        Tue, 14 Jul 2020 13:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594757722; cv=none;
        d=google.com; s=arc-20160816;
        b=lkQv8YPnSk+2BA7Wo85OpDTV7hYmgb5GB4xn2ffOklFnbf7jAJmq9gAG70PZ+eSJv7
         GL5pFLaE5k+e9GxCWHmlU+eMytewGK17f2alRl7DK3Lk1itOQhSKJ5+YCkT/W1WdfGIM
         ojEuykmDrsFxIJANA1Vi/wfRwzgdrz/HcU0FWALDpL6BfqkK4KtWjmTlDh2JHbqsPoGX
         lV1EwfwIjK/1HJBVhWnM3Omt7mScdPQBVzC3we9jI1zWUujd2U4FdZO2dG4fgk8kBuAv
         82tkmEzhCRUBMCSTj1Fd+lrSwOIuatxHjjk/szVxTUpoy+G6u4oPfpevNbaHD2YZgtyP
         nDwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L5vDU3SOZNppPWReu/BX/vwqcknmkketPDxz7Ge1r0o=;
        b=l58Qgx6ko6oObpgYAUVryb7gpNXF9b9ChBufZ/VjYsZWXOEl3lNSDypFkHO+jQg/tM
         hsiyMaGGK17Kilu97jBMShAeFjIKzCL7MnkYJGG4nfrx/i/u32jdj1DihIu53cOAB376
         1LrpYuqAg+W0zRvL+pZzuDa4sbSBrED75u4cg6bGGXUxdDvZOyvyxWJCG09HC7viqknx
         bwtgmo0/T40X8iAjUl+s2k1jUj8pni2Q+ZJhhC97sKxH1WK3kRAFDNhDLO7ku/8T11Cx
         o17XjGXxhXMjRC5CG5kmQhMJDX6kVTd3oy7SDGTcHamZuLkIVfHP/rkWg94GKiEMWiO4
         Xerw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kr9gHgmx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id z71si1127167ilf.5.2020.07.14.13.15.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id m16so6287741pls.5
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:15:22 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr6448817pjb.32.1594757721132;
 Tue, 14 Jul 2020 13:15:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200714194740.4548-1-sedat.dilek@gmail.com>
In-Reply-To: <20200714194740.4548-1-sedat.dilek@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Jul 2020 13:15:08 -0700
Message-ID: <CAKwvOdnahj-izQo7BfC9cWDH9BXbnSBMdz=TjB9Rtn8ftvz7Og@mail.gmail.com>
Subject: Re: [PATCH v3] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	Wei Liu <wei.liu@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <caij2003@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kr9gHgmx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Tue, Jul 14, 2020 at 12:48 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> When assembling with Clang via `make LLVM_IAS=1` and CONFIG_HYPERV enabled,
> we observe the following error:
>
> <instantiation>:9:6: error: expected absolute expression
>  .if HYPERVISOR_REENLIGHTENMENT_VECTOR == 3
>      ^
> <instantiation>:1:1: note: while in macro instantiation
> idtentry HYPERVISOR_REENLIGHTENMENT_VECTOR asm_sysvec_hyperv_reenlightenment sysvec_hyperv_reenlightenment has_error_code=0
> ^
> ./arch/x86/include/asm/idtentry.h:627:1: note: while in macro instantiation
> idtentry_sysvec HYPERVISOR_REENLIGHTENMENT_VECTOR sysvec_hyperv_reenlightenment;
> ^
> <instantiation>:9:6: error: expected absolute expression
>  .if HYPERVISOR_STIMER0_VECTOR == 3
>      ^
> <instantiation>:1:1: note: while in macro instantiation
> idtentry HYPERVISOR_STIMER0_VECTOR asm_sysvec_hyperv_stimer0 sysvec_hyperv_stimer0 has_error_code=0
> ^
> ./arch/x86/include/asm/idtentry.h:628:1: note: while in macro instantiation
> idtentry_sysvec HYPERVISOR_STIMER0_VECTOR sysvec_hyperv_stimer0;
>
> This is caused by typos in arch/x86/include/asm/idtentry.h:
>
> HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
> HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR
>
> For more details see ClangBuiltLinux issue #1088.
>
> Cc: Jian Cai <caij2003@gmail.com>
> Fixes: a16be368dd3f ("x86/entry: Convert various hypervisor vectors to IDTENTRY_SYSVEC")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1088
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Wei Liu <wei.liu@kernel.org>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

LGTM, thanks Sedat.

> ---
> Personal note:
> I also needed Jian's patch to completely build with LLVM_IAS=1" but
> I don't think that should be in the message that gets committed per
> se. Without Jian's patch we did NOT catch this one!
> Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> Link: https://lore.kernel.org/patchwork/patch/1272115/
>
> Changes v2->v3:
> - Fold in comments suggested by Nick
> - Add Nick's Suggested-by
> - Drop unneeded tags and order the rest alphabetically
> - Move comments and links to Jian's patch to a personal note
>
> Changes v1->v2:
> - Add Wei Liu's Reviewed-by
> - Add note to clarify my patch is independent from Jian's patch
> - Add link to latest version of Jian's patch
>
>  arch/x86/include/asm/idtentry.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> index eeac6dc2adaa..d79541bfc36f 100644
> --- a/arch/x86/include/asm/idtentry.h
> +++ b/arch/x86/include/asm/idtentry.h
> @@ -626,8 +626,8 @@ DECLARE_IDTENTRY_SYSVEC(POSTED_INTR_NESTED_VECTOR,  sysvec_kvm_posted_intr_nested
>
>  #if IS_ENABLED(CONFIG_HYPERV)
>  DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_CALLBACK_VECTOR,    sysvec_hyperv_callback);
> -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_REENLIGHTENMENT_VECTOR,     sysvec_hyperv_reenlightenment);
> -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_STIMER0_VECTOR,     sysvec_hyperv_stimer0);
> +DECLARE_IDTENTRY_SYSVEC(HYPERV_REENLIGHTENMENT_VECTOR, sysvec_hyperv_reenlightenment);
> +DECLARE_IDTENTRY_SYSVEC(HYPERV_STIMER0_VECTOR, sysvec_hyperv_stimer0);
>  #endif
>
>  #if IS_ENABLED(CONFIG_ACRN_GUEST)
> --
> 2.28.0.rc0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnahj-izQo7BfC9cWDH9BXbnSBMdz%3DTjB9Rtn8ftvz7Og%40mail.gmail.com.
