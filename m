Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM7P2P2AKGQE4VSOEGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2971A6FD8
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 01:37:24 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id h16sf9929287pgb.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 16:37:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586821043; cv=pass;
        d=google.com; s=arc-20160816;
        b=eFr1ekPAozF4e4kP2XEbl7v9Y3DF4Wo7VhEyp5seQOJDOPFvbAgRn2hR2RLcwnFS2D
         HV0pK2SxIBSa3eEBtOOeYYxfKhvV4L12eDwLq+X6et9x5LsdtYIg6EbM+sYfvcEh0eoK
         I4ZhSdUwy4oFP1EMZqRDRTvlCWJvy/KqPHq8OEedvFsh+wL7I9X5QGSlvLZh9IUuuVWD
         fQpPUdYTxFmyUwyHMgEecEf5MR7/YTMRaqeKUCpa2cbrotWXDv+8RBqoySK3gnwuE0WZ
         hNjPBfUHvCmrVmhZYR4VZraUMprYchG91FLFb3Vqxykd+asrkgZPTyu2RknEJvEys04R
         iaww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PTA8qkKmV2SnqXVxrt3WHaIbiAasRhCYfFS4o6GdYMo=;
        b=NTjMyWhX0mz2bU/Pes/o8tgfYlHTbMtupvBQREE2+KxizexgG9aiDLuVX0EDQo3qrg
         dwoVbXXSiZXdgo3k60ce3qiVtv2kK0d5mK1u2nPG5CKwSh6HOuaerboEgGPGfRBRLkQt
         mf5CpMJN4nPNX31ErmgqTLWdCgZoWLxg9ez96FjqL1MOHPvdbVUssbeQgGCmJNe2JfM4
         2LqIqjB6wpEfgY/1iSLNBxKNZkWAiNZX9hMOdIoUBX5tk+vI6BRcvg20hYN6q1DQgqZY
         138qApmO3W3Y2wJ4Sy0HZI8fvfmiBlQGaAJiwMXWGR+yX4Eo85dB5/7pAid7NUSnRg7E
         YmTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d9NwDt3I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PTA8qkKmV2SnqXVxrt3WHaIbiAasRhCYfFS4o6GdYMo=;
        b=KLt2jEcaJZBkMPpj+N/BprdVqekHbkct/vDcFo+wvkP42Lp3Hoq5vn7QXtsVX+RbC3
         H36a96khBevnUbPD5ZpkPSLOVsB57wUk4vtuQZkV5V4AdsitL2p2l3eDc80DzUa4F4N9
         E1oMQb/tsJvFk1kyxSdMTJRN+sssiPS2fnpQSAs0WK+KGKIw6dzXMIx6+8MBk73yviUP
         4L9wUkIvnhpL3e9/UUaOK+zStqmawOltDFCo3/76WIk1F7bZhvQizHxwt08uoswXQG7H
         TmTmzdvaskc5iK7X0E1w7uM9c8wjgI2nmbK4jidMIVRZXE90B0VfhRyyyd0gElVF4iq7
         0CwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PTA8qkKmV2SnqXVxrt3WHaIbiAasRhCYfFS4o6GdYMo=;
        b=tmjB2YT4cwZycQ2bik0pbadsRl9YovAikbik/fe+7w9xKOIyysVuS8nwo32MrgQjp/
         Xyy3iA89RCO9g/glvimv5EmMGtDG0jrh79/4Zd8CF98CmptxNo0p3tZpX/gemOHwXEa3
         j6Hy+Q65oNyEqpgjGdn45GN4syk85X0vutfnU11VOCBmN0FDfdBSUwTWg8Og3dCRwjan
         cFVy0N7HJo/ciJvkbGnxjb2h6zFBfK2XIKGBe3N1Z7Sl8rulTW9nabEKi8uMXty8Tf8u
         oVzf1WR+TffckcTmT2jhSHyHWDjFXErJV4iNu/B2J46sXJxi/F6fzwRqsDaADFpjkfRu
         tVaA==
X-Gm-Message-State: AGi0PuY8p702VDCoZRhf5ZOB0x3Nc/GPzLVFMfGCYOkNqUnaKDdtn9Vc
	ZfHvj9PXGWuREhiOyaYNRtA=
X-Google-Smtp-Source: APiQypKW71gscqxr9okf+GlQOKv3UdY3LdkDdQx0Yb83uXv103SSU2TJXNuz303Ld/y0W4hb5AFfyA==
X-Received: by 2002:a63:f13:: with SMTP id e19mr18686529pgl.135.1586821043642;
        Mon, 13 Apr 2020 16:37:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:63:: with SMTP id 90ls2349304pla.10.gmail; Mon, 13
 Apr 2020 16:37:23 -0700 (PDT)
X-Received: by 2002:a17:90b:909:: with SMTP id bo9mr25790611pjb.125.1586821043277;
        Mon, 13 Apr 2020 16:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586821043; cv=none;
        d=google.com; s=arc-20160816;
        b=d5Ihodd7NYr6aX/uhGTSZHmR4IwNCCjVVBTwphbeMYzaZ+sOWMD5jNSZZwmjS64HJ9
         ks9yDkO2KqIwNwqOzbRVM5vOnX3+htrmC3rhTzULHSCwrIk2MW07qgmMQwgo9mYIkQyR
         b+8c1oEKROCg2cWf0eF1PZNUrneqUEMMTvCKSqplu6iXIT87Ki34XZYPFEZOJ2HpU0zk
         CXTUih8A5BHVYvrMgok4vel6yWdqlDBf6c+J+DJS3qJdTKWwFGOa8k7STmlrOPtR0uHO
         o/AnQEvaZ6EU1gISrWgqnHef9uapH37FBQzTWm4PT7uWDLmx+Mvrcy06rm+EKboeuEZ+
         jFUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lMPIRjn0PE7jnqkkSuf3FQb+qv7klZT/6x17CMWdL34=;
        b=W8PLsKCKBuKFCGnvEko0Bti3lRNMZn43Ir7QNBpwn3IMFsoEH/s/dz/ZhX2raxZKTq
         lKlUzM0d1Ajygy3zIfafimuhMLS02XZuPPATikqGyV+VzWHE5tc1RYSFgGokor9Y5Yh4
         yOYuHKmCo7OqjBOvm0I7t1F63JsDtC1FZTnKqxQRiqravuyyAAfXd/EtLN7rkD7Z5KFV
         6WvvXzTO8ay4dz0PFVvcK0Rc+dMlVqYgPhLMYTNDc5NjV6zXNOQ695QlhPxI3oVd9tWb
         Vk2wvVHwQEUCWV0+CLWvO3u3og4kSUmVr4UTEIoaLrFPK8s5O2AVwsRcWHx/Cj2T3MXH
         38WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d9NwDt3I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k3si616200plt.1.2020.04.13.16.37.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 16:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id m21so1405671pff.13
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 16:37:23 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr18265124pgc.381.1586821042616;
 Mon, 13 Apr 2020 16:37:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200413231016.250737-1-maskray@google.com>
In-Reply-To: <20200413231016.250737-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 16:37:10 -0700
Message-ID: <CAKwvOdn35v5LkvhWugfLmK_FjVsd0RdPtBCRSqVaM9EP_1KU7w@mail.gmail.com>
Subject: Re: [PATCH] arm64: kvm: Delete duplicated label: in invalid_vector
To: Fangrui Song <maskray@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, kvmarm@lists.cs.columbia.edu, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d9NwDt3I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Mon, Apr 13, 2020 at 4:10 PM Fangrui Song <maskray@google.com> wrote:
>
> SYM_CODE_START defines \label , so it is redundant to define \label again.
> A redefinition at the same place is accepted by GNU as
> (https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=159fbb6088f17a341bcaaac960623cab881b4981)
> but rejected by the clang integrated assembler.
>
> Fixes: 617a2f392c92 ("arm64: kvm: Annotate assembly using modern annoations")

Thanks for the patch!  I think a more accurate Fixes tag would be:
Fixes: 2b28162cf65a ("arm64: KVM: HYP mode entry points")

With this patch applied, and your other arm64 integrated assembler
patch (https://lore.kernel.org/linux-arm-kernel/20200413033811.75074-1-maskray@google.com/T/#u),
I can now assemble arch/arm64/kvm/.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> Link: https://github.com/ClangBuiltLinux/linux/issues/988
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  arch/arm64/kvm/hyp/hyp-entry.S | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> index c2a13ab3c471..9c5cfb04170e 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -198,7 +198,6 @@ SYM_CODE_END(__hyp_panic)
>  .macro invalid_vector  label, target = __hyp_panic
>         .align  2
>  SYM_CODE_START(\label)
> -\label:
>         b \target
>  SYM_CODE_END(\label)
>  .endm
> --
> 2.26.0.110.g2183baf09c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn35v5LkvhWugfLmK_FjVsd0RdPtBCRSqVaM9EP_1KU7w%40mail.gmail.com.
