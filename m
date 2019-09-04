Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX7QYDVQKGQECKXHL3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D4269A9637
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 00:19:12 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id l123sf212975ywd.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 15:19:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567635552; cv=pass;
        d=google.com; s=arc-20160816;
        b=d/1Fc0BwWVetsBIYktoWJdRVfRV4ldDGlbBTTyZ/T5lg24dzi3s34GGCpr4oBpc3D4
         PedEP690wfwljzEaYrSqCpduSOjTP7R+53K9iufaoKdy3spAMnH+grmxyXA1ya6vb0H5
         XTI19sP1LGHqNCvPs3wUB4VycFS6ZdkXUsZRc0GqD6JVORhKDSjnDYs5I+yXrSOvRl7A
         v10AjraWOz5XpVhmHySHfHcEM3w2QXpSxfjE4U0BhQWVDPp0V+VJT2jf9PTHXBcKczAH
         y9Unm1ovRTq6//N3g3yE6pEMhabdG1xHPbBwpnxq2dijsUwp08odh428kGXeVIAaqmvO
         PLbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LwOTND2Jh41KqN6FtaJsewUuq5P/LMLYeJnBZjl8vOk=;
        b=fxnBQVT8SbhbCW3Lc26DRchyVuvejFCslPTW/QyGNq1fozQIyfCBylJzZKI9LzMBz+
         UipXrY9skAHhUveUqQ7PHQw8Fk1CnH2QvQ8XSz/eTDyq+NwaMbt+XVUaZd+Std4WwW0i
         Cd3gI3Yqp4rpahECqy5ZCzYS9jr0qrQAYZXoU2pAfxzpFq9cYa6waJyOtm3ZRoXWfwbJ
         P5Vo+gWm9dGF6Bn3Lr75fvwzaMERn8WQz7J9hos5V8bSWNwFaFqRBJvIP18IvA8s9PR4
         QYldyZx9Q6Hbx9PgGoC8OCH5Y2Zx1NpzoeNA4oIgufn4k5IScq+XoledpPZrWq7MWSTi
         XzYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dzBRjN/u";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LwOTND2Jh41KqN6FtaJsewUuq5P/LMLYeJnBZjl8vOk=;
        b=tTcm5CIywHOuQbcE8KAGWfeqA6W0Klm6ulAVp3jLtymjo51r9+Mc7RU6Ez/nP2Ndum
         VGBEYuFmrEx/FMiFjrDfFr1DiQzhsOp8cUwD/kH8RZNLOAdpNRYLZc8Jxk3sZJiN0f5Q
         fyOAbBDERmK6bB/uYRKvnRAkduCrnAuRw08XWeTjKDiJ/CmqTwzCouDUPtVDSzp8hl3i
         JGKU/DEA0YxvMrFvk55G1ZujRdRk3hhOWHUTsg4i+ygZyi3U5+wcHtdV86oVY+YfNSZi
         d6WMPye2ri7c6CrW18ibpXuLNei8Dttu9Y3P89r0i3ZFPmEQQ7u0HU5SgtORVTa4Jpe9
         5JLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LwOTND2Jh41KqN6FtaJsewUuq5P/LMLYeJnBZjl8vOk=;
        b=ndDJHKHr6Gw5s8iQgez9nM0eLZnAydYWil4SRFab4lgSMGuIi1sBpScXoGmFN+mlwN
         msB7y6S1gFHaI1WRc7rEyEtNghB5AGTuF4P81yfkcz5ecIY2wQd+IsJN2UxevyBKXNZi
         uaIM15nXilV3Z0FZd8MzIshnPi++LRufHFbye1yw9r0nvYKq6P/g8Gt4d5asMESYEs0S
         2vOiViPmltEB1i1Ld7nDFTw3/ZDcPNMtRzbO0cPdl2BXXPSXCedTg5KSP8i27A+btNBj
         248yKWWk/9ru0FDPgHpcUa6QJdrfGnkz2jjbp4asqcOpyDQ2j2r5ufp18O4vC01CoVU4
         J9PQ==
X-Gm-Message-State: APjAAAVTb9x5hcAqU1Hl1yp2Ps8Vzjfuj72j8P+wa+xOEjoiWkWSrsqb
	v5DUi1kiiVOx+69Fg2tYwpk=
X-Google-Smtp-Source: APXvYqzCmd2pO9i4Igg3vaTkpYFowZujsx/X5gjjeyzBVJEQy5Kb2vIZdtOqDqSN6jrrSHWRMTM6iQ==
X-Received: by 2002:a25:d907:: with SMTP id q7mr193793ybg.340.1567635551887;
        Wed, 04 Sep 2019 15:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:2d43:: with SMTP id t64ls35106ywt.16.gmail; Wed, 04 Sep
 2019 15:19:11 -0700 (PDT)
X-Received: by 2002:a0d:ea93:: with SMTP id t141mr121538ywe.19.1567635551628;
        Wed, 04 Sep 2019 15:19:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567635551; cv=none;
        d=google.com; s=arc-20160816;
        b=QEla+d7ajU15TTbxyfikADLuqhBPRjTJlWsI8aitQn1bnVElKFURXpZVP91HWmlA5Q
         d1loXnq4ejn6Wdn82k3ZSlERSiN0RwLVRW8f24RWH5nezqcj6oWcgsdSWNhb9tQba8rH
         vGNtIjKS1HlifDCiQh+s9Fm9i1vMrHpDZKZvVn+PiZt2TfZjJaIv8qQ1Omdx7ynOPZ7r
         qxMjFNmEfY4s5Oc4eUWCBuI4eVfmpC5QUoBp7p9OTMrG3T58SDipk5OpsUilg720WD8K
         lWOA4dEieSDFAZOHBGWlEKGic7COfEG99JcGRlhIsGi6uDuLfnRNyYNSbhKoupyzYbwY
         SsSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WAKv5eY0ztO3m4xAEUNoNojMwgMq+ljdxAZW09mQ/Sg=;
        b=wzLUfVWxwzekvXtZZeJtLEma68mLUEKuIn9dkBI0KLc3dNhQCJGBuZiQA5LWvISaie
         PPm2eAs/xWzjFwK3tx/Wl0smOsdkPp6WNYuJHwmI7FZy9oIwuLuL5I9XOY5yhcNe5g6z
         RszSaqkKe3ZOCgSTGd7erTbS6Lldgzn68imRpHXtIKFN6rhOOvjjyTD8mm5UBe2AxusY
         n2DkoGD+2PigO/wtGpaOFudfJEFQ3+x5rDUjLqianOz2UjI5gm2qy+k4N1G7t5Y28Vll
         56BNper/OsePeQ14aeLdBT1gUa4gBrdnNJC+oaxzida2rugOkfnFd2WIWnxFvSro5hNs
         ysMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dzBRjN/u";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c76si23564ybf.3.2019.09.04.15.19.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 15:19:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q21so263009pfn.11
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 15:19:11 -0700 (PDT)
X-Received: by 2002:a62:cec4:: with SMTP id y187mr9962pfg.84.1567635550318;
 Wed, 04 Sep 2019 15:19:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190904214505.GA15093@swahl-linux>
In-Reply-To: <20190904214505.GA15093@swahl-linux>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Sep 2019 15:18:58 -0700
Message-ID: <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
To: Steve Wahl <steve.wahl@hpe.com>, Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, russ.anderson@hpe.com, dimitri.sivanich@hpe.com, 
	mike.travis@hpe.com, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dzBRjN/u";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

+ (folks recommended by ./scripts/get_maintainer.pl <patchfile>)
(See also, step 7:
https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/)

On Wed, Sep 4, 2019 at 2:45 PM Steve Wahl <steve.wahl@hpe.com> wrote:
>
> The last change to this Makefile caused relocation errors when loading

It's good to add a fixes tag like below when a patch fixes a
regression, so that stable backports the fix as far back as the
regression:
Fixes: b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than
reset KBUILD_CFLAGS")

> a kdump kernel.  This change restores the appropriate flags, without
> reverting to the former practice of resetting KBUILD_CFLAGS.
>
> Signed-off-by: Steve Wahl <steve.wahl@hpe.com>
> ---
>  arch/x86/purgatory/Makefile | 35 +++++++++++++++++++----------------
>  1 file changed, 19 insertions(+), 16 deletions(-)
>
> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> index 8901a1f89cf5..9f0bfef1f5db 100644
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -18,37 +18,40 @@ targets += purgatory.ro
>  KASAN_SANITIZE := n
>  KCOV_INSTRUMENT := n
>
> +# These are adjustments to the compiler flags used for objects that
> +# make up the standalone porgatory.ro
> +
> +PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
> +PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss

Thanks for confirming the fix.  While it sounds like -mcmodel=large is
the only necessary change, I don't object to -ffreestanding of
-fno-zero-initialized-in-bss being readded, especially since I think
what you've done with PURGATORY_CFLAGS_REMOVE is more concise.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Vaibhav, do you still have an environment setup to quickly test this
again w/ Clang builds?
Tglx, we'll likely want to get this into 5.3 if it's not too late (I
saw Miguel Ojeda mention there might be an -rc8)?

> +
>  # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
>  # in turn leaves some undefined symbols like __fentry__ in purgatory and not
>  # sure how to relocate those.
>  ifdef CONFIG_FUNCTION_TRACER
> -CFLAGS_REMOVE_sha256.o         += $(CC_FLAGS_FTRACE)
> -CFLAGS_REMOVE_purgatory.o      += $(CC_FLAGS_FTRACE)
> -CFLAGS_REMOVE_string.o         += $(CC_FLAGS_FTRACE)
> -CFLAGS_REMOVE_kexec-purgatory.o        += $(CC_FLAGS_FTRACE)
> +PURGATORY_CFLAGS_REMOVE                += $(CC_FLAGS_FTRACE)
>  endif
>
>  ifdef CONFIG_STACKPROTECTOR
> -CFLAGS_REMOVE_sha256.o         += -fstack-protector
> -CFLAGS_REMOVE_purgatory.o      += -fstack-protector
> -CFLAGS_REMOVE_string.o         += -fstack-protector
> -CFLAGS_REMOVE_kexec-purgatory.o        += -fstack-protector
> +PURGATORY_CFLAGS_REMOVE                += -fstack-protector
>  endif
>
>  ifdef CONFIG_STACKPROTECTOR_STRONG
> -CFLAGS_REMOVE_sha256.o         += -fstack-protector-strong
> -CFLAGS_REMOVE_purgatory.o      += -fstack-protector-strong
> -CFLAGS_REMOVE_string.o         += -fstack-protector-strong
> -CFLAGS_REMOVE_kexec-purgatory.o        += -fstack-protector-strong
> +PURGATORY_CFLAGS_REMOVE                += -fstack-protector-strong
>  endif
>
>  ifdef CONFIG_RETPOLINE
> -CFLAGS_REMOVE_sha256.o         += $(RETPOLINE_CFLAGS)
> -CFLAGS_REMOVE_purgatory.o      += $(RETPOLINE_CFLAGS)
> -CFLAGS_REMOVE_string.o         += $(RETPOLINE_CFLAGS)
> -CFLAGS_REMOVE_kexec-purgatory.o        += $(RETPOLINE_CFLAGS)
> +PURGATORY_CFLAGS_REMOVE                += $(RETPOLINE_CFLAGS)
>  endif
>
> +CFLAGS_REMOVE_purgatory.o      += $(PURGATORY_CFLAGS_REMOVE)
> +CFLAGS_purgatory.o             += $(PURGATORY_CFLAGS)
> +
> +CFLAGS_REMOVE_sha256.o         += $(PURGATORY_CFLAGS_REMOVE)
> +CFLAGS_sha256.o                        += $(PURGATORY_CFLAGS)
> +
> +CFLAGS_REMOVE_string.o         += $(PURGATORY_CFLAGS_REMOVE)
> +CFLAGS_string.o                        += $(PURGATORY_CFLAGS)
> +
>  $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
>                 $(call if_changed,ld)
>
> --
> 2.12.3
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8%2BEg%40mail.gmail.com.
