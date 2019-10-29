Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKWF4LWQKGQELYHTEHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEADE90D7
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 21:35:56 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id t28sf9039005pgl.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 13:35:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572381355; cv=pass;
        d=google.com; s=arc-20160816;
        b=XEKUDpy+huGqoxPNwONDiRkLJmxPN3imAO5gBEY+Y8Ku+5qrhy9RBQ6EyTZ+XQ4GAp
         7ZN7gUgX6gfrTeLx+4NDobxu2f2D4r6rGwx3DRqr0yg+MnvkD5YydT/QNUh7bKmmpkO/
         nEtO0z8oNyMBEJwaf4jcBuyctsPqkJiGgJGT8AVb1EbbDRsaBJGutUZJYdhWv+BMMPsk
         4hY0P9QATPsdkRt/eIYMOM9CnW+Nz26YjlEEDhvNiuxFZWDnsQP10N4kiv1Y07zhe4D6
         +6ckJNyNxXm5lC3S0jmw/s4bdM0FKJYjrrvBtwQT7xjGzasuJef74pmMc9RAZ/kXUE/X
         s/iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P8HOP8avkczGOb3u8tCVvFegXtDIYfEg5KojjEhq+Qg=;
        b=Ub0gznj6eZstaBzKcpwHUm9if4z1HivLTOZ3bm3Ekm9HLNE2I3sjqFw+RqmB8uLkuF
         /7gwlERsqILjd/FDQeLVjfmVr2cyn8SOY+yFaD5otJBWynOrcW2PlFQP5WKcL0tDyAcP
         vxeJZWausGUFhfBAu+QuF09TLVs+DvefafzmeXurLlID17HkC/xHZQUCc/Akp0IMP6Vw
         WkjkjRqOOmx+4YTja432Jf/I+3+asDtB6SfFgV6xF1wddOaGfDstTxST3aMd6YNHg66e
         /Z2dpZq1ddpZhum+iCpyL5h1drf2uOlk8WGzclJJSL89bErW3Ez5SmLiC4b0MsJVnLRA
         zsQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XRKGIdWY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P8HOP8avkczGOb3u8tCVvFegXtDIYfEg5KojjEhq+Qg=;
        b=RWTJ8ZCeYLQoJI2dVap3KxubbbP/F21feSxHoMzhkJmGTJ++hUJAXf2ky5RsHqkbbE
         UzQ+bRAtURRsqyyPm/ZpgwPuQySY/Eb0q3S/h+1CJkqI6/MNq6CfhdWDISbZ6OhjtK5v
         njJyBPMOV5IJ37qw8ENYJkHBXaLHsuXWQE96V7xE+yDmzYWOpq8JnkaaYw5C4HmcHdxb
         VJkOq3tkHLXNo1mn7IuQTvqJzZMeGJ7bKe67DPzcKMfaeHWKoVJw//BYZDNG2QGTYsim
         7QonLBEvnB+fzxrNRzyulT2IurfqlwOUBIiXP53sTBjZTHBVy/cg23QT04zPXn0PZTpH
         HiKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P8HOP8avkczGOb3u8tCVvFegXtDIYfEg5KojjEhq+Qg=;
        b=C2swdRzDwYZ+/sdwzGjAfIkSUkmmOLYU8l9yfDlj4jHIYnWgGPCD+ka2P1fu12Y51Q
         FdQRZHrS5XUbztT6HnAA/FE+Rlw82AYnCl2925y4m2OzI8T7L6xKxzqUjVrHxjfB8T6O
         ulnyNNOEOnOy9CKHbFhgPFdr/D5HKwFGv/9WNA/2cDntZKuyx8jkMqFf+314Kb2SSu32
         82QwVPn6K9cOD7fLfkVvKXNmuZ+Np7T+9cOSdRIiicBDv8hFbwieFxLmAXaH7SEmgfce
         2azkRcqAxc379fatVH0o/+LwtBeli/1MDmsOurOy2krKkdDsOAWZGQqyAtj40rR2QY7O
         8P1A==
X-Gm-Message-State: APjAAAU9FUnU77+37O0mQRb45DOYIEXR9MyZnILmQ65pHIg0uKUb/nY8
	U1nxCXa3CwkCRriGnIyWUGc=
X-Google-Smtp-Source: APXvYqzLRjuGqw5EAjamKU4eofhno5QTw0n/9VevAKaiOuXZhoEIbJSytTEWDjeF2QlUPGZg4Jfj2A==
X-Received: by 2002:a17:902:848e:: with SMTP id c14mr584519plo.217.1572381354789;
        Tue, 29 Oct 2019 13:35:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6204:: with SMTP id w4ls7086992pfb.6.gmail; Tue, 29 Oct
 2019 13:35:54 -0700 (PDT)
X-Received: by 2002:aa7:83c2:: with SMTP id j2mr30217397pfn.225.1572381354312;
        Tue, 29 Oct 2019 13:35:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572381354; cv=none;
        d=google.com; s=arc-20160816;
        b=UtB8oEUf9YmFmOaP5TcTVS8fLJbkwS3gVrAq5dGF/azDGVOe070Mqiemr0E/ot/tW6
         GPIju8WBb/xCOl5QwTj+3GrpeG6Kmrtt8SqSycJKJCWx2IHrupQN0SEGEld7FX0iuht9
         5xplpUfADZ5B/WBHjne4fECjfAKhMo7t65Sns71Mo5aILQbz1u1+XOpXXUh22sKUgKSD
         vCtB/Ve7SXsd8+jWfGT6HVDuLOA3ed1/LGVTEz5q6/DAZB5PlVygCGkHc/qJ4vaGEi7k
         lTazJI26xGSM2YbQYbIiaM1e6Qshbikx2QCYTbeKNr6qLr5UfiAsLt84j5hrjJazTrLf
         Kc4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=weRnPR6zYa479NAUpF9JwnzdoXArAq5BeasxBvL84nU=;
        b=l3WRY7cTeTFXqDaQ8fj9ubTjzNTWHZESAcCANL7DlS+r2rhd8JzEwhNs+wNaADAehG
         KHmG5GrZuoYjPBmOzVdF8YKtidyiPuawXAoDHfScpKrmzeybiKS+NBEQsBIyeqXY0u3D
         8mYLcl3hfMyGrGvsFr19dOlBbn4LApfAtrv7UwO1SkhfUYIb8rOFH4xAFqSAPrUwZ5eJ
         eIFINfgwZJ7mBWqDT/a2MlYFkjSwK11PZ+xXiCIs4aMJaeQ4qGH+3akRwID47+OkI9z3
         LkxuBD5laVoTRuyREiShzArbWdXSDa+8/pIZB5FEpgUbvTwPETYwBJNniFWATN/kYlGL
         pzwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XRKGIdWY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id az24si227715pjb.0.2019.10.29.13.35.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 13:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id q21so8232228plr.13
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 13:35:54 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr579601plp.179.1572381353386;
 Tue, 29 Oct 2019 13:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-10-samitolvanen@google.com>
 <20191025110313.GE40270@lakrids.cambridge.arm.com> <CABCJKud1xYEx_GVgfBHUuwNGKMxX+uVaE5TR6DEqo7CoSJJnNA@mail.gmail.com>
In-Reply-To: <CABCJKud1xYEx_GVgfBHUuwNGKMxX+uVaE5TR6DEqo7CoSJJnNA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Oct 2019 13:35:40 -0700
Message-ID: <CAKwvOdkxrYB=HTmtQ6sejPmWZh-mwJ-gyWRGgtZDrUOjBMftzg@mail.gmail.com>
Subject: Re: [PATCH v2 09/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XRKGIdWY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Tue, Oct 29, 2019 at 10:45 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Fri, Oct 25, 2019 at 4:03 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > We have a similar issue with pointer authentication, and we're solving
> > that with -fpatchable-function-entry, which allows us to hook the
> > callsite before it does anything with the return address. IIUC we could
> > use the same mechanism here (and avoid introducing a third).
> >
> > Are there plans to implement -fpatchable-function-entry on the clang
> > side?
>
> I'm not sure if there are plans at the moment, but if this feature is
> needed for PAC, adding it to clang shouldn't be a problem. Nick, did
> you have any thoughts on this?

I didn't see anything explicitly in LLVM's issue tracker.  I also
didn't see -fpatchable-function-entry currently in -next other than
under arch/parisc.  Are there patches I can look at?

Has ARM's kernel team expressed the need to ARM's LLVM team?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkxrYB%3DHTmtQ6sejPmWZh-mwJ-gyWRGgtZDrUOjBMftzg%40mail.gmail.com.
