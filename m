Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBUWZH5QKGQERSGO6MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D22027B681
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 22:43:51 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id g18sf1431914pgl.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 13:43:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601325830; cv=pass;
        d=google.com; s=arc-20160816;
        b=MJ51zogFBuXiOZuIy0KinrCrN6IWl7eufwrsBCJpRFB73FCWJ9k71OmiZaSbySpHLr
         yRCF0sOq8sNO0w9hp5cwJQu5UF0BgGhUvzit5fmfAKh3pfNIUROzSexS6m4zYKTPIVNy
         ES36VyI+qDlHYQVfdEhOx9VCSUu2SNW8RDPTQIwcmtZx05PtzPrC5WNAVvmjQAkQkIxa
         4UsIo/fwY0OWkrVIplg4GUbMMiwNrR8gM2uyeDD/VJT0AUCMbL5NvDguoDfQk597GMzG
         kpWG97K09HvIy939SgBB50tyNiis/+0oq/r5e3ZFfqveK5FoagL57zhxgPwBvt8nOFh8
         2n0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=eNudzgaqF49LlpyGS0TNrXluA6e1s6BYuseTftIYfrs=;
        b=0TVo/jdVcgOLABEwbxDON1Iz0OTeBWIs2m3NbGqLiyDhOCqQCetOPrn5vqiFgDe+/D
         E37lRrGyWVr2KTKndb4qJVP9d81VTRxIv5MiEngkl1BOntKBhCyX8s4gnnnV7ZQfEc6Y
         0aNgQ9KcrQTdckUuOmQKo1mf+ObaiI+qmX/M66zdChev+Uszrbwaa5CiNJ6UgB69CAqc
         XVb1JsxeqBGju8CSn1VkJljWGknK13o5NySa5+uwwuDh02WHDFd4PnbdmP+IYAbYepk6
         hmOkoTn9QEX1x9n/jb65abbaZI9pAMfq96sR6T9L9Nn0v/PaZwdBI59m9WA3RfxsaqrO
         oMfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PDPtID/t";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eNudzgaqF49LlpyGS0TNrXluA6e1s6BYuseTftIYfrs=;
        b=GGL5c+WWx5cxN2EJ+b+slEVAG1eXxmnVndGuGGGfVyXM7TTnhPDSAG2s77IN+9Yr+g
         ciXOp43/a6DNR07UTaLmFpL9ryx2M8mkIyFIROUvcROvh287VfTefkFn7eSOc9YxXKhw
         eC2wfgNIf0QoubiZ2I0BLUQ/b1r3igiYB9hrRnomN9hreomXx4MNRrNDuTIso/49FKma
         4eqJRGahfu51GZq+p+EeeUUXOvAxI4/twOUrVXIAS2bzn/OFcIk5rHZldlk/S7XUDj6T
         jAO/DaJpHkcSHwtW9j82Rzgute1ygbqCKwpaKQO2Od5wu9g2pTaY0SnmShYyKKBerd6y
         bqWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eNudzgaqF49LlpyGS0TNrXluA6e1s6BYuseTftIYfrs=;
        b=Usx+m+WuebntCrvrMPrfs13ydv3u7/LI1Ys78EJ3+eK6sNgN8DN7VF06VCJrVo0v7x
         uWbQXU7c1pneHxoG9Z6lB9p0fqEz/fYVdBgROgMB92X00cgHsr7yhAgpVPJ7be/Irkv7
         L1XnwyJqj+dnbNP1nlFTGIQXaRAnzbs4zqBg6a4dHPOIETRu2TCzCoyASlqR0RfoHQbP
         1XuyAXUfiGtkDg5YK2s8jToo9YeNyarUpROU4VuVahxFcMKPqwdi6TYF4HSNBpBbyvNh
         GZOBdOVvq47FvTPMKGBuwxxHZnHy10TKY4sCOGHniYgsQeDV1tHag3K1ObGOg/jU+sG3
         H/rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eNudzgaqF49LlpyGS0TNrXluA6e1s6BYuseTftIYfrs=;
        b=jvb41gbmX83r/+PXFjPl0VI1Oqq10ujBhZFkACHlaz9Eez3iaDv/7vQLKOVgTk8Fad
         km2OQevgy5jWJzuFqMIOMFEptd9NJqR2U6UKHx4PnGlnLwEYMt7A3mFttaE4epxVJIkW
         KeMUQFHN5uxMVhxBrWEC01Z0FurZF8rWsbF0mWb3lCKxl0kaPYckjWSMDathr1YNAlaG
         B8lV9WoId6JZqphrBvLP2hYhFwxduqDTx06pqaFjpAIHjNAFToyyENUUF+AY/zCJyAtE
         qRb322Ej//P43cB97NgT0qQrmfP1nCLZy15ltCGgVcz4GAotAGm7mh8ixnUo6vNLwxQL
         s3Lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZyCHukfm1WtrH6Pb/2nnnAA/pHKfN656kjyqst+kgwe7TEJv+
	+MfdiKHLO4b4NYo9IMLg86s=
X-Google-Smtp-Source: ABdhPJyaPIp7v7NiGiz6z+FY+LJ+rLfac2yquejI/PkSdrkPOheeCPI6/jvEk0AyR5RubevbPZ5VuA==
X-Received: by 2002:a17:90a:e10:: with SMTP id v16mr909007pje.84.1601325830291;
        Mon, 28 Sep 2020 13:43:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:174a:: with SMTP id j10ls839905pfc.7.gmail; Mon, 28
 Sep 2020 13:43:49 -0700 (PDT)
X-Received: by 2002:a63:794f:: with SMTP id u76mr650878pgc.315.1601325829755;
        Mon, 28 Sep 2020 13:43:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601325829; cv=none;
        d=google.com; s=arc-20160816;
        b=T8C1z8PEFHb2iUdsBEEtD2B7qPUq32xZ7cIPs/0wDn5qPDexOBBYiE8dJMIOXEiW4v
         P+4MqfryOZ3cY5sPVm5Oys5tPg0hhaCIIvsWHfUXuX/BvexiGoAQqhpBLColjTHaenYF
         FFMuSc3gN0GJsfzIRzLNJGKCFyMku70SDeFC+s8BkUwU4LzRyfuLWOfYaqUsVuv9eHtx
         W7sDmvVHykQRXiTwLN52ZTrFYqwFaLZ6H2SuCCNjqhBtOmoL3hrdGbOwvT193lCoYlT2
         /50ZLPHbkQsI+jOsLVb66a/oSRvmzKjti2rsASwvew09UOOnGAy8UBXS4lPbRXplmyjA
         hX/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JbsSO0zP4i+4+OZXhhTK0jpolLCqQxk8S7EHJu7e4UA=;
        b=Dy3x5DdWIeyaIW1aYD0w6omFQA2q8WL3NsTne838IKiN08/kSUzSnJNBhTdpThNCFj
         r1Qlj8cgXCFEGHMtCOHNZNzHamua7fYmIA8sULkcDpb9T3Jy/UV0a4ie5b6fxGqHFU/v
         /oFW+7QUxysarUevjrPYWwcXf5znXlYnjxBZakub2gpDbgD5foljc8MWlIgqytnIVyFr
         IeVCoMqTZpB71oho8GbN+J7T9/IV+o0n1FCZdlSAMRiAA8dfwsh7ZuxIFGdPzGagNsV3
         pJrOO3mMr/BNxaPJLp5+aLkfEt8D8YhFTNsNbciYWcNRZnFZm+gMEjSvPI/9us6r1juJ
         c2WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PDPtID/t";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k65si183196pfd.1.2020.09.28.13.43.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 13:43:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id x16so1953109pgj.3
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 13:43:49 -0700 (PDT)
X-Received: by 2002:a62:1410:0:b029:13e:d13d:a129 with SMTP id 16-20020a6214100000b029013ed13da129mr994603pfu.17.1601325829273;
        Mon, 28 Sep 2020 13:43:49 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id i36sm2269309pgm.43.2020.09.28.13.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 13:43:48 -0700 (PDT)
Date: Mon, 28 Sep 2020 13:43:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Balbir Singh <sblbir@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars
 in enable_l1d_flush_for_task()
Message-ID: <20200928204346.GA953199@ubuntu-m3-large-x86>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="PDPtID/t";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Sep 28, 2020 at 02:44:57PM +0200, Lukas Bulwahn wrote:
> Commit b6724f118d44 ("prctl: Hook L1D flushing in via prctl") checks the
> validity for enable_l1d_flush_for_task() and introduces some superfluous
> local variables for that implementation.
> 
> make clang-analyzer on x86_64 tinyconfig caught my attention with:
> 
>   arch/x86/mm/tlb.c:332:2: warning: Value stored to 'cpu' is never read \
>   [clang-analyzer-deadcode.DeadStores]
> 
> Compilers will detect these superfluous local variables and assignment and
> optimize this anyway. So, the resulting binary is identical before and
> after this change.
> 
> Simplify the code and remove superfluous local variables to make
> clang-analyzer happy.
> 
> No functional change. No change in binary with supported compilers.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> applies cleanly on next-20200925
> 
> Balbir, please review and ack.
> Thomas, please pick this minor non-urgent clean-up patch into the x86/pti
> branch of tip as follow-up to: 
> https://lore.kernel.org/lkml/160026187842.15536.285514864386042510.tip-bot2@tip-bot2/
> 
> I quickly confirmed that the binary did not change with this change to the
> source code; The hash of tlb.o remained the same before and after the change.
> 
> So, in my setup:
> md5sum tlb.o
> 7c7e096bab0fd87bd2c8437d8c7dc3fa  tlb.o
> 
> linux-safety, please verify and validate this change.
> 
>  arch/x86/mm/tlb.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
> index 6b0f4c88b07c..90515c04d90a 100644
> --- a/arch/x86/mm/tlb.c
> +++ b/arch/x86/mm/tlb.c
> @@ -316,7 +316,7 @@ EXPORT_SYMBOL_GPL(leave_mm);
>  
>  int enable_l1d_flush_for_task(struct task_struct *tsk)
>  {
> -	int cpu, ret = 0, i;
> +	int i;
>  
>  	/*
>  	 * Do not enable L1D_FLUSH_OUT if
> @@ -329,7 +329,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
>  			!static_cpu_has(X86_FEATURE_FLUSH_L1D))
>  		return -EINVAL;
>  
> -	cpu = get_cpu();
> +	get_cpu();
>  
>  	for_each_cpu(i, &tsk->cpus_mask) {
>  		if (cpu_data(i).smt_active == true) {
> @@ -340,7 +340,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
>  
>  	set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
>  	put_cpu();
> -	return ret;
> +	return 0;
>  }
>  
>  int disable_l1d_flush_for_task(struct task_struct *tsk)
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928204346.GA953199%40ubuntu-m3-large-x86.
