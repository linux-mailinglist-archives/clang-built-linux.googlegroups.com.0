Return-Path: <clang-built-linux+bncBCMIZB7QWENRBF5URPZAKGQENU256TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3B3159544
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 17:45:13 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id z10sf7778709pgz.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 08:45:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581439512; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ach0+6JNVWxIABy6nthtCs3CSMazNVlBRBs7/HU/8FDae4pvlqmvxjF1MwiOy4YwRc
         R2yWpHwKnHhfgyCuTkOJ5Htp/hIDMYn3LyB2sMPWy5qvaMbw7euyztb6G2SduHj4pv3M
         Qui7mTLXROguxRkBx/MDS4LdHWU5zvHhvAmFDO6OTVyrB7J8cZnjyrDEnW0cw6wBgTud
         mSTfdBx7TaMURCKw370MJUktJOVBecPjLWmnNU23xw+XgBLS81t0DPe3JVSGEg8nroR/
         KJ10ZcWXY8zwpFMeIaCokVXQEwASZhIdy7fe+Dr0dptwb4Mexgc46RMr0TCIwqt8Gz6T
         /EnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vQBVk/+llqW8Iw8HU/HjOVjxZrnr5MxwTidoetYTPis=;
        b=KsAhQ5iupHZo+OHjsol1KurZwne5wE0sUFPSUw9kGWfebPMb2ASX/IoDp8udGA2LII
         HI/0onCsC/KwB9tQja62cIRvV6SAXW/FLljs4Y47uuhPmQSOteapLSKDGATaNWGdUdlm
         yYOGg2z3q4nKeQneQ+rjSWJ+vM0nSCmKcBOkmzB8Gsh6mr6XSNPaYHmm0YsZvxZRUSGn
         WvYLDpC4z8YuboQ2+Ktfy4+De6WUChitQC1cfaqGREla/wEZgH8EekKzhf/m0+k5wNua
         NXbwMnzaZKCjkBT/6xlsCeiDzu8e5VjlUrzXychaoFDKiihvSGzcIyF1zIjlgcC7K+wM
         HyZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rZuR6QOY;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vQBVk/+llqW8Iw8HU/HjOVjxZrnr5MxwTidoetYTPis=;
        b=FZiHe5l7tclo9WHCC2wgi/skbjbraVonpGEIBAzWNc9ogw2Xb8grjrcNa8edcLL+dP
         CgKKEp+1Hddnt953AS2K72R+CXVnTjBzp0HceZPN4V3LXgX2lKGdMuBVCi42VqcSvktK
         W7+hwavTTSe3d7ZxwZP0xWDGv+l0jXXXLnPBh0rcWeEdPuogMxUIcv/+0iIDfC1CV1Fq
         0vZlBH+qumrn+nqIJ1fWqtDWhWRHxyq4kckYXTFyBOMUtBn0OT3L9L/qGLNCTtTli7qP
         XAWCA/ou6GdxYDcnlIHu3I+/vDneh7+fG3aKC9Mt1wi1lTIDoGz5s3ZK5ETBRnn9L4ar
         O3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vQBVk/+llqW8Iw8HU/HjOVjxZrnr5MxwTidoetYTPis=;
        b=rdEXTppDKqxSjdwuFStVOyF1qVaJblaoX78QstSx1FRLygP4UF61heBPGaJCnDEDEi
         yfXMgajcZPzJjl/OMxXdJQPyWjJqBiwfa7qSh2hoQQXZw5t6zVJvpgPutwS9CIOK21fp
         FxpaSJSpRlVOiImc+3117dPsxjL+o3HAfdNN09fCMgEqiPO/NSiQf7M30zOjweKV3BPC
         zjSZdomcwxNct/sykgHsmqfHhwcxH/X6leU7VpbJgfsfF43MElwDxQFp0v+0maP75AjF
         JDrWvgtJ3vwdy5HmVWdLs6DOXKqy0mqtAs2tTMfPcgNxemalvVWy0/DyTtBUtUtg5Xpt
         /WHw==
X-Gm-Message-State: APjAAAXqXQVPNQj/Shpr5Jfp7n3xE3LxzJHXxFMGmzTxUVgNHiGNEnCZ
	sJQoYDstMqEPG861oQCDWFo=
X-Google-Smtp-Source: APXvYqyWozWyXJ1jPI/o09qZiPhzmKc75m02QtpnlKBWyqjNoCaeNDQb/sJ4/PCLx/M8PfsjfGf/ig==
X-Received: by 2002:a17:902:8545:: with SMTP id d5mr18054637plo.116.1581439511940;
        Tue, 11 Feb 2020 08:45:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4d5:: with SMTP id 204ls5963538pge.9.gmail; Tue, 11 Feb
 2020 08:45:11 -0800 (PST)
X-Received: by 2002:a62:8346:: with SMTP id h67mr7335527pfe.102.1581439511511;
        Tue, 11 Feb 2020 08:45:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581439511; cv=none;
        d=google.com; s=arc-20160816;
        b=s2QzHQIsjHBAcI4+MCa/8IA7UdXHlZv+q7TvqHvu/F24DTUZ+d7VxJIUb124SxFQ9c
         CB2EakGQZb09Vn/sWqADeoggaV6s272r34pZqs3AoavB/grXavOivHPJfKRzw5OJHd5I
         qaKH9iVQOHTABqkKzw2f6LCkVNX4m4HWEifxLLaBqg4XCW2q3vdcMn9xHKa7a/igQMwT
         /Spce09uoXO3jTpxFGdAlnRpWPo/QnFcGI0SezBFdYWrO6zlFvZhe7TTRWHA4SB1Czz2
         Q0yCxtxAkjM1oeP7TvTAhCZQqByRNi7+yf7/clGK4tAEgkOmyBeTKtAH0ycTojGbxYcg
         JL1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OVUJ5LReK+wRGm8fArm8oF5xooGgfcSM4hyHICvF8wM=;
        b=qupcXatVklEVEicnW90ixDUuePFiusb3XxhVbAOY7YBgZGnk+BYv+ojd42Eq0ZNcqa
         J9EpS4Z2DMtsOowSEFd5a0wwXXmDraPbwz2SvYWRz63rCgKzDu0qHfg6L/R8BG5XO5dr
         oQIjBMoU54Fsiwr37xnPbgGhYcdKOIx6kat4NWSQC+3N4bvZDXTCsgK6iR7uRtmDXoFr
         kgoFQaNlvelKCAbq3MJ3fS8dpy+szOItPJz5sjjbh1yO58/EpjO0diluujwGsTfnzDnV
         WBMtzR2Oalm08RJshV547ClBuvPt8Fg9Qld5chB/NqlOxYZdSdEms02cL8kRFSAoWsJE
         He1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rZuR6QOY;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id c13si244334pfi.3.2020.02.11.08.45.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 08:45:11 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id l21so7695085qtr.8
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 08:45:11 -0800 (PST)
X-Received: by 2002:ac8:71d7:: with SMTP id i23mr15884611qtp.50.1581439510299;
 Tue, 11 Feb 2020 08:45:10 -0800 (PST)
MIME-Version: 1.0
References: <20200211101043.3910-1-natechancellor@gmail.com>
In-Reply-To: <20200211101043.3910-1-natechancellor@gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Feb 2020 17:44:57 +0100
Message-ID: <CACT4Y+YdQCfprPWicQWtgCL1AoF2N=ee4Bkuat5AihLxYCbmqQ@mail.gmail.com>
Subject: Re: [PATCH RFC 0/6] Silence some instances of -Wtautological-compare
 and enable globally
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rZuR6QOY;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Tue, Feb 11, 2020 at 11:10 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi everyone,
>
> This patch series aims to silence some instances of clang's
> -Wtautological-compare that are not problematic and enable it globally
> for the kernel because it has a bunch of subwarnings that can find real
> bugs in the kernel such as
> https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
> and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
> requested by Dmitry.
>
> I am not currently sending this series to LKML as I would like some
> pre-review before I get torn to shreds :) I have included the
> ClangBuiltLinux mailing list to start plus a few other potentially
> interested individuals. Look for things like dodgy explanation or wrong
> approach (location of macro, naming, and such). I do not see any more
> instances of this warning (aside from
> https://github.com/ClangBuiltLinux/linux/issues/749, I just need to bump
> the patch for acceptance).
>
> Once I get enough review, I'll post to upstream for review and
> inclusion.
>
> Let me know what you think, cheers!
> Nathan

Hi Nathan,

I don't have any objections. The series looks good to me. But I also
can't predict the results of upstream shredding :)

How does compiler know about addresses of sections? as in e.g.:

mm/kmemleak.c:1950:60: warning: array comparison always evaluates to a
constant [-Wtautological-compare]
        if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)

Isn't this info only becomes available after linker script?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYdQCfprPWicQWtgCL1AoF2N%3Dee4Bkuat5AihLxYCbmqQ%40mail.gmail.com.
