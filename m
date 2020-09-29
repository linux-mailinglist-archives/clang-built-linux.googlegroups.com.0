Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBR7CZP5QKGQEGYP3HSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB7827BF83
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 10:33:12 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id d13sf782285ejz.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 01:33:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601368392; cv=pass;
        d=google.com; s=arc-20160816;
        b=JVAdbPc8LY15fO/GrXafRtyvkVLHQeDuDZELRlUG8cUgvlabTJXKZod1HibUypoyIv
         uTXPG41xjAqsvYC7NJmlkCE46uOF4tPZuwosKrJ6ua6OnhADWey2BH6x5efVOskXDDfd
         Joi0dkyvht7+QbvCjHne/9zlfLGiS5WHuTiu+q7pD/F7E7Q9tgwBiEOyxXbKcdMQHBeF
         TTZUaxoAV6NitqT6CntFZyVGkHRZbB87Ahw3QeGLSSFrSxhgHBmxFQ6UfLI4NU/ZCj3j
         ECSygIy0gtWvw++pARUX8RepQ1IlFd0XDTRyN73CAUlGYbWkQJO2YKJJF/6SgaVoSmhI
         WL/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=/b8QYas1sn4TyHnjDxPDYcsHjL5T/UZOXwz9kqwJ9VM=;
        b=ap1W3lUEnkdPUKldhc0Ts7tav2I5t5nqx/cPgJzBtSkajt87r83KwuehxBjmZHD8C1
         FQOKSyCkQfN3ME0gDBJaDWfccpI6vHk3hIFtn9PJ61cVNYVG2BYtiaji3d07Rwl5ZNCE
         ELXTXAwSGaX8+RqOgkDTffmhRbdmbdUuiMwaDMkLVQV6mgYUVXKhQaXi+q9Fb5T3Ypca
         0dPZBkgyV4/j6FfGs2nKiCexH29LJ38SuINudzUz0gJT7OODbkDhPKWjGmS2MX3l2oCs
         7KRz0rxVKtjHnAcHMrCXsrZRvGcvRHZVXti2X1nSdL02cNvaraNI0D94vdUup+Z4zcPw
         gSsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S8yJWuwR;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/b8QYas1sn4TyHnjDxPDYcsHjL5T/UZOXwz9kqwJ9VM=;
        b=g4B2TWABW+5fi4yJvIl4CsCPU3KNek5mXWFyGoBQqahYGPle5+HuYYHSD1BNj0g0Hp
         GaoX5iPgL5IA2Gm4DwerOE2t3vbp6+r11j+OOLKA5t3WuwofqCQUYDn2JsY6EcohKHVE
         wqyc8DQ1OXH5+pkHkX2rixlmh7qyHW1/gyX9rk1AkEgdGmmKmTNHxAtmsHTgl2OD0COr
         6mj8qq+TL/5Zo7I9TWnLm4VwJh8nwt1ObVwApUS6rD9zlfR/2C+yng/0WsasSd1MNgdP
         xJMwaSyKO9GNFQPk1uYV2m++fdQmizmvnBCoAICZ54BIJhJRpnBe4peTw2PXTpDXjaxN
         6uew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/b8QYas1sn4TyHnjDxPDYcsHjL5T/UZOXwz9kqwJ9VM=;
        b=IquAwmi/QteE32eX4iJ3CPyI3L39+HiDhOEVXfdMDltVq4K7F3ZlPcfb7L/AG5f72a
         bQP/WKcKQetY2aVZ0d4vgBHBVNO2jEXkyKBPJw6gEOIA5OC4V60AlzoKb0dR0w0ZfQLU
         FvNQBMx0tZdz5S4yKOy3pflLsfJVO+ukkglFdsNqb55ET86C1xSbzaoon2unYcKHZhFM
         mkrDMelVeVGwy6FykenlzCd9m0xZYsJNHBo0KU4RmCmwrLMPKSt4HFyTgm4cjmqTggJr
         7pmOEMamD+EtnuaZRL8etnPHK8CqAMN3GnDVyj418tY16W617sQvoLcf/LYwt2FtLuHk
         x0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/b8QYas1sn4TyHnjDxPDYcsHjL5T/UZOXwz9kqwJ9VM=;
        b=ardApKskpbGAWkvL7Fze88obrasLapQwpY6p/PKeLWbDP9BhodUx5LducZhHx+Ja1D
         IDWPbRquO2dyuvMoiCUuksmJslxzeDbAm8VTukf9cjwnrW8DZw+9U27id6IAFVvVQZde
         a4UiqbAd6aqcTZBwFIplvZq091C5IqTkVgWVE4cTQZTHS5htapQ+EJD8vqS1+EnufmL0
         FOqfUpYqgcVEW5j5Ayw0WOLexWjFwFNidt2F4S15aQMHcibOCTzP3rGibU4/lRWEH3Ob
         kZR7Paoo8P0CAdaomicm4QM5xUE9aCVkgQ/uGwxK1c+dZ0R4y9FgqoxDL2W7WWJeyTSr
         yQbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318EvuxWDmarQhyNaxLVRA6OmlufqGUTvS+I/2bA5IDTxJvFghe
	WaGR4MDs9+s9fie8I3TI5IY=
X-Google-Smtp-Source: ABdhPJxhU63Hy/WiWsxUmTXTlXlfaj8otR6DryT2zwkhTbl9AfPjo6hcUcEnP7pWUgCRaazCBL9q/A==
X-Received: by 2002:a05:6402:304f:: with SMTP id bu15mr2032912edb.201.1601368391979;
        Tue, 29 Sep 2020 01:33:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4c8c:: with SMTP id q12ls1968230eju.2.gmail; Tue, 29
 Sep 2020 01:33:10 -0700 (PDT)
X-Received: by 2002:a17:907:40c1:: with SMTP id nv1mr2867215ejb.318.1601368390865;
        Tue, 29 Sep 2020 01:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601368390; cv=none;
        d=google.com; s=arc-20160816;
        b=O6Kl/dN+S7QIs36UtRGDTp6EfM7VmI+mIC5F//S6pTjEVE/wM4tf6bCTYmSBS6CCA4
         TCnTKNGGQYwptBrzOadqYlhdTOG4uA1b1AgkB4iWoXt4gmS1uxOtqfr6hcniJvu3eBgW
         IJvXjY8slFWK3VzESaf2yFMcjih37bumMK7dKT5rU62FQOdHwZyk6b1IUB70gDuO930i
         PmLXHZ82HwMw3Mez9FAacongCtKQ2eO+5geunXcwJWqvk+qHHZzy4hlCYW/MDN+QtvGr
         m15NpRFTv7VFUqhzUh5+BwFaq22f4+jOmOv6DV9UDKkftVJ7OiIv6FrcDWw9P2Vou6k1
         k3Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=HK41/qbPxO+SoGRXquqjP/gEh3I+38ZE+z63fzbFSAM=;
        b=ri9zUZozgpEBPF1GI6XNIRSzUyOf+qXN0Q/ODFNO061SFOlTt660CmWYUIprqluHNE
         rhnCN3WBh2l1ZJZoIlNsJJOofoPMzU0Vl2FtzmscyxtnLbrLADNxBciZIPWqwliFgL1K
         uLg8XAIJKWcBfe0DmhBq5HL2gb3AIA51ong1SjDhLBI+Qgtr2uM8FSvwDpSbYn20V54B
         tu/v50WYhS7XzWqC1eczMLPL7ByH7K3GRF1IFItgJFum59Z86XUTuYY6glNz2AjZnkqr
         FF/Wp2lO2SmNWxRKw7+/sJOXLm6l+lxUUh9jljI0hYdKpmBLEl6+6EfYWXE3cNgFX+d7
         rJdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S8yJWuwR;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id dn9si1982edb.0.2020.09.29.01.33.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 01:33:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id a12so5391800eds.13
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 01:33:10 -0700 (PDT)
X-Received: by 2002:aa7:d4d0:: with SMTP id t16mr2020758edr.83.1601368390650;
        Tue, 29 Sep 2020 01:33:10 -0700 (PDT)
Received: from felia ([2001:16b8:2d89:9100:1da1:773b:dbb4:3fc9])
        by smtp.gmail.com with ESMTPSA id cn21sm5173410edb.14.2020.09.29.01.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 01:33:09 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Tue, 29 Sep 2020 10:33:08 +0200 (CEST)
X-X-Sender: lukas@felia
To: Peter Zijlstra <peterz@infradead.org>, Balbir Singh <sblbir@amazon.com>
cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Thomas Gleixner <tglx@linutronix.de>, 
    Dave Hansen <dave.hansen@linux.intel.com>, 
    Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
    Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
    "H. Peter Anvin" <hpa@zytor.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
    linux-safety@lists.elisa.tech
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars
 in enable_l1d_flush_for_task()
In-Reply-To: <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
Message-ID: <alpine.DEB.2.21.2009291022000.17656@felia>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com> <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=S8yJWuwR;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::544
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On Tue, 29 Sep 2020, Peter Zijlstra wrote:

> On Mon, Sep 28, 2020 at 02:44:57PM +0200, Lukas Bulwahn wrote:
> > diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
> > index 6b0f4c88b07c..90515c04d90a 100644
> > --- a/arch/x86/mm/tlb.c
> > +++ b/arch/x86/mm/tlb.c
> > @@ -316,7 +316,7 @@ EXPORT_SYMBOL_GPL(leave_mm);
> >  
> >  int enable_l1d_flush_for_task(struct task_struct *tsk)
> >  {
> > -	int cpu, ret = 0, i;
> > +	int i;
> >  
> >  	/*
> >  	 * Do not enable L1D_FLUSH_OUT if
> > @@ -329,7 +329,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
> >  			!static_cpu_has(X86_FEATURE_FLUSH_L1D))
> >  		return -EINVAL;
> >  
> > -	cpu = get_cpu();
> > +	get_cpu();
> >  
> >  	for_each_cpu(i, &tsk->cpus_mask) {
> >  		if (cpu_data(i).smt_active == true) {
> > @@ -340,7 +340,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
> >  
> >  	set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
> >  	put_cpu();
> > -	return ret;
> > +	return 0;
> >  }
> 
> If you don't use the return value of get_cpu(), then change it over to
> preempt_{dis,en}able(), but this got me looking at the function, wtf is
> that garbage supposed to do in the first place

I also thought that preempt_{dis,en}able() would do, but thought maybe 
Balbir just considered {get,put}_cpu stylistically nicer... so I stayed 
with the functions as-is.

> 
> What do we need to disable preemption for?
>

I have no clue... not a good premise for touching the code, but I just 
wanted to make clang-analyzer happy without modifying any semantics.

Balbir, can you help out here? What was your intent?
 
> Please explain the desired semantics against sched_setaffinity().
> 

I am happy to send a proper v2 once I understand if disabling preemption 
is required and the preempt_{dis,en}able() function are preferred to the 
{get,put}_cpu functions.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2009291022000.17656%40felia.
