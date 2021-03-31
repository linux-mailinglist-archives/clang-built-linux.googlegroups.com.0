Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHPMSKBQMGQEMXREHKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D663505B6
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 19:49:17 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id x9sf1364996wro.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 10:49:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617212957; cv=pass;
        d=google.com; s=arc-20160816;
        b=uK2EOIgnjzySzgLSYTIKWrxBDQJ//oh0x2nDtwR0UuvO+sS6lg5uKStpoKpMaBSDMF
         XQnIjsl8bRbPI/9DHd0D4herwzNsxtP57Mn1OrXCcZW2oUKFuNs8QV8y625MegbOocH1
         YGoA/1yxisqRh/+N4BAw1tbSx4lp2bJlTYkezTcUyL3J2d5KqraSQM5dWxmnRlc1oPZG
         feYwDDxnmmWhENkimNJ7LLnwRXvnUYRIODl6YlkmpcfUpClZZss4L6h+pO2tBeZU1QhK
         yUS8cT/ctL9/e97L/F7+ZGBo1excQlWihy0mAkfqdPhfheKnDU33fF2TTEreYu+uzQOI
         ej6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YEykns9HyTpVYhEfm2mqbTVLQ08Wx1x9ty9jz28sHZg=;
        b=aEvh8YVekK/9fjmgxPrj5v0E7RyYA5LRGCx315SlxGIz+EKQafR7q+W0wYi37+dxEL
         o8CSS8FuhB5CIV1ix5UKlIiEnPg1jVX1DlkCwTzUU22gBFQ11L423SdYhxI9F5N7DdyD
         GPaYZYX4V0yEcxLyQC6gBv9KYTdU9Twszbywoetqb19hu2YyiSAyxpypl1lHvuyKGKQQ
         cOD5dn+ATHjgiMRqrypXV1njfroGFDmr2PyIYZOnHKkJ1eMOu+2o90C1s2dJtxhO7EYO
         4vv+wWzAqXg/QCiBdqaiU+6Ncu8xJJcCE8ZYpD/oihJrMHQqbYE3sFFkB28ZnJHoCNf7
         ndmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WGT0TTz5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YEykns9HyTpVYhEfm2mqbTVLQ08Wx1x9ty9jz28sHZg=;
        b=imp206KprIWhhAecndw+soGB6mCPeMYAdWQVsNs6i8W6g0VfxJjMawrBXxvC+Dz0ND
         BAYASMxswO23A6eK3w2vO9h7jMwP5o2kAQkYgiIadbSzKyxuN7D8D1C8gSNYOZMiKbdH
         JqjXpTU1vZ9YKiyOHo1RO3wlxZOxrSPEAP1nr7LcYhvfd+zQXEJJ/xQVuQG1c1B5vogW
         a5B5SBQdFGj55reVuW41lVm9q68LZUS50vzoylYEcKpmvYHIG4ZAH2Fbnb0o/6SQc6lI
         q0P00RjTyYAZgs5QCh4EWrBuAfp5ghTENOz3lgoL5Ry9W/73ywLK6WmRrhSR+z1vhVPb
         Llrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YEykns9HyTpVYhEfm2mqbTVLQ08Wx1x9ty9jz28sHZg=;
        b=Pa3zsYgHGtIEQ0d/6beJ10T4r7SX/aEM/KJlnblRdEQe21yWoKGWlhIBpt35bbN3vA
         AhUrJf2kcBno7CjtsHlga+85KZmrJ8leE18zRdufVIhE4JisdQk6WOQtJ2HDDTc1c5B9
         bdAR26+sS+u5Ysr25HDzGpJ4OeXfbgBfz/lBZqqb5Ry9HiFb/iTbR9bKPr/BC/ScyC8+
         NNNIWKwL3tHgJoy+9mWuXujafbapiQm0EtQumnzw7ALusCOpOtlCHPGp4ZN1svAkmNCX
         +u4l/HEmXQv0DK6381LOSQf3DaWcz+5wGYvUsVUf7S6Fhfkiv/syXZaZfprsklmn59nn
         yRsg==
X-Gm-Message-State: AOAM531Uarme10K8hdWSZHrsIsu89FixNZJvcOd3URht0LeOzOiBOUjm
	i9G3JT0uuJE//QKtEzitQYQ=
X-Google-Smtp-Source: ABdhPJzPlTF1fchzzYzEmHmwON0TRI37MY6mweNTWadstyJBGu5wUue0TuEC+9t71n1PpFyFpkkirg==
X-Received: by 2002:a5d:4bcb:: with SMTP id l11mr5171671wrt.390.1617212957509;
        Wed, 31 Mar 2021 10:49:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls300644wrd.3.gmail; Wed, 31 Mar
 2021 10:49:16 -0700 (PDT)
X-Received: by 2002:adf:c186:: with SMTP id x6mr5091801wre.253.1617212956655;
        Wed, 31 Mar 2021 10:49:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617212956; cv=none;
        d=google.com; s=arc-20160816;
        b=y54HJ+qTz9LFI7W0WYHvgnAkVmek/gTqBJpP7yGbma3Qypqiac0b8Ep/hcMpBjVTn2
         c5f0n6uEU2DfGqbloj7bRzlChL+ilcLgNzyVCClht4YjzIB+DZ0Pk5DgB/vde/92ccaN
         9DTh4MkPtmnQ6umVhg1ao+T8FDZIQpn69CBnvj8NX1m09E9Hr8m/MA1N/1+G68D4yFq0
         Nkm5Exeogi1dFvl+xtzD87WGVYrumJkVWpiYdEamhGA+POv1fPlyrBiSmnU4fMq9GBLL
         RQoqOOgnRjAM1IdndnB3zGbTi3V6+zeQPhv1erWpKg9ktJ30Rx8IptcpOLX8iXjh8T7v
         4B1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UimNxwJoYZS3sDcoLAFHg1XgOU6byqCGrwSzGeFyK34=;
        b=afvn0yw2m/q0xo6De0qnH4cGSyZZK+0Wht7bAFmiVEQhsHa5rCywnFCzEcue4fvraM
         ck2Z8OtfMKFiDwaxqIiJgXvipzObYZ3uk9lnHcvGvjgGd+Tv5hbWQpi5+W1+3DyCmGeo
         YU1NYBhGB7FgG6dX4dyaGXsUV/hisu5o/rBiluI2G5opzy7bek7xopokKvweDyhM7eME
         rj/C8qKMKto3ZZALwKJUCMwpPeYHxuPBFL0jqcc6maR48Vcc8/+Cv6lSD2DD+kZiMkmp
         2Wai8nKfRiBoetrY6QPUkd7QdvmKi+qRADgeiz+kHaoqf3S15UDJDjMUYg679REDjhNX
         oybw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WGT0TTz5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id g132si275622wma.1.2021.03.31.10.49.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 10:49:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id o10so30321886lfb.9
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 10:49:16 -0700 (PDT)
X-Received: by 2002:ac2:538e:: with SMTP id g14mr2818245lfh.543.1617212956228;
 Wed, 31 Mar 2021 10:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <1617177624-24670-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1617177624-24670-1-git-send-email-yang.lee@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 31 Mar 2021 10:49:05 -0700
Message-ID: <CAKwvOd=9BjO4HbZOq59kKh6ZPSq1EKG4e5ZQ=c5MXSke1hiegg@mail.gmail.com>
Subject: Re: [PATCH] x86/kernel: remove unneeded dead-store initialization
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WGT0TTz5;       spf=pass
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

On Wed, Mar 31, 2021 at 1:00 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> make clang-analyzer on x86_64 defconfig caught my attention with:
>
> arch/x86/kernel/cpu/cacheinfo.c:880:24: warning: Value stored to
> 'this_cpu_ci' during its initialization is never read
> [clang-analyzer-deadcode.DeadStores]
> struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
> ^
>
> So, simply remove this unneeded dead-store initialization to make
> clang-analyzer happy.
>
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
>
> No functional change. No change to object code.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Looks like this is from when this code was introduced in
commit 0d55ba46bfbe ("x86/cacheinfo: Move cacheinfo sysfs code to
generic infrastructure")
though this file was moved from arch/x86/kernel/cpu/intel_cacheinfo.c
to arch/x86/kernel/cpu/cacheinfo.c in
commit 1d200c078d0e ("x86/CPU: Rename intel_cacheinfo.c to cacheinfo.c")
(So I don't think a Fixes tag for 0d55ba46bfbe would be appropriate).

Thanks for the patch!

>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  arch/x86/kernel/cpu/cacheinfo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/kernel/cpu/cacheinfo.c b/arch/x86/kernel/cpu/cacheinfo.c
> index 3ca9be4..d66af29 100644
> --- a/arch/x86/kernel/cpu/cacheinfo.c
> +++ b/arch/x86/kernel/cpu/cacheinfo.c
> @@ -877,7 +877,7 @@ void init_intel_cacheinfo(struct cpuinfo_x86 *c)
>  static int __cache_amd_cpumap_setup(unsigned int cpu, int index,
>                                     struct _cpuid4_info_regs *base)
>  {
> -       struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
> +       struct cpu_cacheinfo *this_cpu_ci;
>         struct cacheinfo *this_leaf;
>         int i, sibling;
>
> --
> 1.8.3.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D9BjO4HbZOq59kKh6ZPSq1EKG4e5ZQ%3Dc5MXSke1hiegg%40mail.gmail.com.
