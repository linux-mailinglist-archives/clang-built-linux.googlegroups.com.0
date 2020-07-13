Return-Path: <clang-built-linux+bncBCNOLFNUSYCBBXEDWH4AKGQEBT7LGYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FB921D498
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 13:13:33 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id do21sf18866677ejc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 04:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594638812; cv=pass;
        d=google.com; s=arc-20160816;
        b=QgZ2+YPgACCLktHlEr/xyy/kAo5TbVMO3f2XzxFmpjbcm7SHtRDfFeTqa6JqFXqUHv
         R9VH5k4CExVnPdg8njgL8Vkv4Z3Z4nZd15PuMhdn2jjPDF1oirSqUozbMXjjdJxbfG20
         rsMiH6XVu6h7qZVnvFVSsIitjfKAo6fvBm6y78rdgrOaYZIfZbTkOw5RarCH7/Mj3xF3
         p/3O1kufea3h0VYcpTA0WA2Cn2gArREVNWsI+LhwjlSWSsWZh6kRC5hdXm1NtPlybU2z
         jhUbnHBi+d+m2NDyLRxzFZtmP0yKt4b9+b38hqGUrcxVmOHbyIZCgcR4cJGORozNtPvz
         1q5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GLhf4Wf1IGonf2aYr1jfFntXGpA6+HrLfq18T0jbHJI=;
        b=Adqu4rbqy+uoxXP/cZY9/8or9T/AlOv0+n98kWzgSbi5iHdFw8mp/54sK4BtBVVOF4
         OPApgmpMLfy7kIYIqJuFlWXzS59Qf3bev+bu/u1WwzhTvfIP7nf60CQxxYz6Q3FyxTJb
         RdAOC+37pzQsO7bQzItIimep29xoUOq1BsVSa3AG9qSJq57DH+BW222vAolBcTC21cHw
         F9XskflKAkn2dpr4pyH1mqDRAMJh5KLom4Wj+DzbGmoipsbStotGQW0oA2qf8PCuy//H
         Y+OHuu0smUAUDvXmxCOO58DG/iksqDFHl0rZacEg2ocxlWk76yKdRwOCNgk3Tz+ZgQKp
         89TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.128.67 as permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GLhf4Wf1IGonf2aYr1jfFntXGpA6+HrLfq18T0jbHJI=;
        b=R0hVYnUJ+pFtc+a0MZFB4OcaZ8FIMARSPCO2zcv2NIEqQfl3S8lw1qt3a0JwU80V47
         WcnFIx10Hc8Sz55wfZWEa/9B1cQXvBdTK73XQXbHVX00+o0+j+APRL3lNt1g7QcG0HT6
         ZBwl/JT9dT7C2mnKEzWRhNU3CRUAbxmRbGwfv2C937XibBYPgW0SRsq/o/Sqm5Ju499/
         8T0F5sedfryA23uH8Au0bFQ9hOytbp9P8SCXqB/rsm2PdatPLo396jLrVmzYNFXpfNle
         Pj6dx79+SPk25tbRnZbK34mz4xaHpBZT3TUsNvp1L7TyHM3ec7YoolONekYw+Z5D/eMZ
         9Nyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GLhf4Wf1IGonf2aYr1jfFntXGpA6+HrLfq18T0jbHJI=;
        b=NVmMToXhQYqWm3QHXPnso7Qtq4puULvMDldW7mHNeoB7MO0tNpE/EzvjlaaEMm+XtL
         U4BlkupoEZtKT9F2jdhKN+HTUJw0DVFGyS7w4EqxpaoTW0Dld6MExmlD3I0fAIysAjIL
         laXRexmE3MC17nsFJIZwZbSBQoFXAcKH7YT/ZeKjG4zqt0ZmybfLZ3ZrJZd47NTmAELJ
         XFeH+ArYdYOqGZh5CwWGnAVDRH211Mk2rVoabTCuQ+qor8+cx4g8atdrYNoO4rqAmCi2
         or943kc+FwaLV4DC5DEfffKgu9n/Fly/DNNF2RltZ/SUZE7TxaYkN9hiEZix0ClUCtnn
         AoEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327E1CSz0DnwuHXRaN4ylkUyRpuJFxHjhRTD2JxaszxgBLcdQv8
	SfyiEgHdWLyRzWNQ3vkFkWM=
X-Google-Smtp-Source: ABdhPJzUfR3DKd1q5x045sA1yXG/xR2MxxJq4LQOCBOOaYunRqpXVE0Y5PRTFjLPQ4gOnFkvK3zHfA==
X-Received: by 2002:a17:906:4949:: with SMTP id f9mr49999734ejt.495.1594638812750;
        Mon, 13 Jul 2020 04:13:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3e02:: with SMTP id k2ls7239890eji.4.gmail; Mon, 13
 Jul 2020 04:13:32 -0700 (PDT)
X-Received: by 2002:a17:906:c002:: with SMTP id e2mr70495394ejz.244.1594638812210;
        Mon, 13 Jul 2020 04:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594638812; cv=none;
        d=google.com; s=arc-20160816;
        b=t5T/V4ISMWS+iIyha/mRptYyEK6MXjo247AtpQCiFkaVem1JN7S5L4bSYeJaz67p1Z
         mioNOdLQxsqOfiy0cX58lCmJeitvizyrgmEGri314VmzB0ueFYM5KGgW3qbrSz2BQtH9
         b7kjqNyF3pIOArEJgRBQ6W6i5bCZLau/A3sEM8NkZKwAZvs2uXuH1Qo1y2LSpxU26xKf
         36YVT4sT79TBIdB8QK9qpJ83rjPqSUPg2NIa8qEgMuiU+NM0PxAi+1Qjil6goX2gmyNa
         cAPzLQa5/fH649ZDwYfuzN0dwUAUuwa+MhMm6FFc/olJthDcJk2HzfeoOeeIzSoEYDKs
         XrAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=+bQksqtMBYbc7jVH6wFxH9Kq69FFLyptC26npBtvTYE=;
        b=y/IOKFNGLW4zrpUb0sEGeJ40WXMb5rCFgNZrkr1A9TZnwLB4w2Pfh9fIILQ11UzcF4
         z3Vtm3raqxLNPqV8u9CrrijQ+k5XxF4zfUPQ4zlHw1NfAlYmrrxjG6jrCFrPMbZ3B1Ak
         lCNgPNKV7a+oRosd766vtt8iOTvhZNkoqWundeTVzRi7OXQeu5MAXfdjelcQu3aizVBF
         GsjxOF0kZWphiXijsKCw/q99jDSgXbE+iZ05+FiU4IxMaWvRKImWaZxpqCxX0xt4Arew
         1xUlNvKT6m7IyS37St0tuujupTzLLOZKw1bD3Zpv8D8OG0BBXiRvkmIT3y+sUXEVUVgh
         rGOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.128.67 as permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com. [209.85.128.67])
        by gmr-mx.google.com with ESMTPS id p61si251879edd.0.2020.07.13.04.13.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 04:13:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.128.67 as permitted sender) client-ip=209.85.128.67;
Received: by mail-wm1-f67.google.com with SMTP id f139so12773497wmf.5
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 04:13:32 -0700 (PDT)
X-Received: by 2002:a1c:7e87:: with SMTP id z129mr19002816wmc.45.1594638811968;
        Mon, 13 Jul 2020 04:13:31 -0700 (PDT)
Received: from liuwe-devbox-debian-v2 ([51.145.34.42])
        by smtp.gmail.com with ESMTPSA id s15sm21310898wmj.41.2020.07.13.04.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 04:13:31 -0700 (PDT)
Date: Mon, 13 Jul 2020 11:13:30 +0000
From: Wei Liu <wei.liu@kernel.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	Wei Liu <wei.liu@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Jian Cai <caij2003@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] x86/entry: Fix vectors to IDTENTRY_SYSVEC for
 CONFIG_HYPERV
Message-ID: <20200713111330.kpppbjbjwwij2rgq@liuwe-devbox-debian-v2>
References: <20200712231050.5147-1-sedat.dilek@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200712231050.5147-1-sedat.dilek@gmail.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: wei.liu.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wei.liu.linux@gmail.com designates 209.85.128.67 as
 permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jul 13, 2020 at 01:10:50AM +0200, Sedat Dilek wrote:
> When using Clang's Integrated Assembler (LLVM_IAS=1) we fell over
> ClangBuiltLinux (CBL) issue #1043 where Jian Cai provided a fix.
> 
> With Jian's fix applied another issue raised up when CONFIG_HYPERV=m.
> 
> It turned out that the conversion of vectors to IDTENTRY_SYSVEC in
> case of CONFIG_HYPERV was incomplete and fails with a build error:
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

Hmm... Interesting. GCC never complained. Guests are perhaps broken in a
rather subtle way.

> 
> I and Nathan double-checked the hyperv(isor) vectors:
> 
> $ rg --no-heading "HYPERVISOR_REENLIGHTENMENT_VECTOR|HYPERVISOR_STIMER0_VECTOR"
> $ rg --no-heading "HYPERV_REENLIGHTENMENT_VECTOR|HYPERV_STIMER0_VECTOR"
> 
> Fix these typos in arch/x86/include/asm/idtentry.h:
> 
> HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
> HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR
> 
> For more details see CBL issue #1088.
> 
> With both fixes applied I was able to build/assemble with a snapshot
> version of LLVM/Clang from Debian/experimental.

I think the issue found here is independent of the other. This patch
shouldn't need to wait for the other to land.

> 
> Cc: Jian Cai <caij2003@gmail.com>
> Cc: clang-built-linux@googlegroups.com
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Fixes: a16be368dd3f ("x86/entry: Convert various hypervisor vectors to IDTENTRY_SYSVEC")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> Link: https://github.com/ClangBuiltLinux/linux/issues/1088
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---
>  arch/x86/include/asm/idtentry.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> index 513eb2ccbdbf..a811f6c6cf15 100644
> --- a/arch/x86/include/asm/idtentry.h
> +++ b/arch/x86/include/asm/idtentry.h
> @@ -624,8 +624,8 @@ DECLARE_IDTENTRY_SYSVEC(POSTED_INTR_NESTED_VECTOR,	sysvec_kvm_posted_intr_nested
>  
>  #if IS_ENABLED(CONFIG_HYPERV)
>  DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_CALLBACK_VECTOR,	sysvec_hyperv_callback);
> -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_REENLIGHTENMENT_VECTOR,	sysvec_hyperv_reenlightenment);
> -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_STIMER0_VECTOR,	sysvec_hyperv_stimer0);
> +DECLARE_IDTENTRY_SYSVEC(HYPERV_REENLIGHTENMENT_VECTOR,	sysvec_hyperv_reenlightenment);
> +DECLARE_IDTENTRY_SYSVEC(HYPERV_STIMER0_VECTOR,	sysvec_hyperv_stimer0);

Reviewed-by: Wei Liu <wei.liu@kernel.org>

Thomas, can you pick this up for 5.8? Thanks.

Wei.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713111330.kpppbjbjwwij2rgq%40liuwe-devbox-debian-v2.
