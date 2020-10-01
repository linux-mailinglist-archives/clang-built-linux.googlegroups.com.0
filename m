Return-Path: <clang-built-linux+bncBDAMN6NI5EERBKNB235QKGQEJH3FHEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D2E27FB5A
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 10:17:46 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id s14sf1019180ljj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 01:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601540266; cv=pass;
        d=google.com; s=arc-20160816;
        b=ErELhRfem2p3qe76hUMhiDT2HPc7RzNBlDAwK+y+koln6yjFl6m5GjqJ3DUMEPDuMX
         utj995pot+cgt38zMpLsUDauJILtWm5ZvivVDehgGeBi4dYce0pShQsmOjYSKD1T7kID
         7tpcHgV5iLU3P1dDZzv9K3gF/qR9YqFWPfKSmtQhJL/mvSjWAXVIsU0s84BvWBNNh6+p
         oCc+jVh4Bj4N6x4QAqJ9HW8yvmXuHiT9ZgGpHf65otRP4dCF7DPOTeet7qh1gxd4lFq+
         OiFG30jykSMqIvoijDYRpjWWqIzB0texKWrQqyHlrGn/5wrSTxu4xKBjtc3cqM+UONPz
         Yl+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=tB5PQAI+JxLJWhvSFAuRc9OG/mPTYJO+LUM2PDItlq4=;
        b=NMNoVakv1YlILxj+93I4pRSrXpUPY9UwRQXnDvaiTqdZfPtTxMjcOC/92dQ3FLj3Oq
         NPu3G9tGPcFWM1hJUfE8r6asGR6gWdElbkMgVUZTdiykDk8cClZ34PZEe8/8cajSJTzc
         Doa83YmjL+L5rjeXaQimRSq5I/b73CWGmruKqmYtoRKeTU/b4qf+ibo4mu3MehzDJA0+
         JWvRKGqfB4I5RWsi7umU0fpzg1k2AVHxEXA9GaMU/wuVJyyAa4H5+rMQF1xbw8ouXB7s
         WkMlgh9K7cTxezxJFBB1WaQY3b58Uiv+0vsuVff1CQ4dCVMsCM0duxPPSkIKGDgkkK2B
         Qhtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jA8VuHqG;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="INF3/uYo";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tB5PQAI+JxLJWhvSFAuRc9OG/mPTYJO+LUM2PDItlq4=;
        b=oCespr9rjW3SKZe8qBLw7e6gQo32cI+LX41fln1fVFZpe+gaAJIiIepV5hWMKSzp/S
         E4naAmob7KDrTwCD+d3eZvnGgF8+mzJrByVpiCHDha2P3ESR5pbVFbix0TQKE0OF5P4+
         S67P1dxGsKlnMVLitdi0fGxIih7Ilu+nPtyO7mBaXyW1IP4eZWbJXyu8KGqr+5vAjI4z
         s75q75nAXPI8IPamJI5+i4X3H8jltrhYMFjP17wgJa0rfM2Cutq7G0tv2TTQDgEok4Rp
         BiVdKdqxMBg8xMcwIpzWU72qp8hdr9rBXRr2fi2wxi25eCt1ofMmHPJyT6+lgRUTGIcb
         fxew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tB5PQAI+JxLJWhvSFAuRc9OG/mPTYJO+LUM2PDItlq4=;
        b=SDfJmGWdRagwugIgI2z+nBAfvv1RdY4TRudlm1d+1QxoO2FtACL2Qs0Qb254Q9gY8P
         ou3KBN9INWymVRn1bPwBE3x5RCk7AASalnGq6FRt0Gv9OgA87SQTLtjXXYn2jpMK+Py0
         FiIxc76ESDr5Lt0PtkMwPsrlj3Wa1rvnpsEYcbJfv3xX9vz85IhcQlHCJ5O8wqIGbLDU
         jDGorCPK4U5vxAoAnQktTLQvA7XS4XimCxDoydf+sXvPqPSj+Ui+APIqHwyvLM6GI+5s
         hVcTREQJwqt5WqDqBGdE5kh39BnwLEVNrrzOHy4TW+AMlMZPUDNqTGlivWcfr9ae9c84
         ASlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BQ0p2hSK71LGHU/iXNTQtfOZyA+gaoDWViIry00HVotuSGS6i
	G9mmTPEeJZHniVmzQ5C6esQ=
X-Google-Smtp-Source: ABdhPJwL/i1nzD5q7fWoFP4/UkbihWWRl4x2RvMMSRyNLyifb9ARueiPL7bVRtIZXp9mrh//rgI68A==
X-Received: by 2002:a2e:2ac3:: with SMTP id q186mr2050284ljq.419.1601540266286;
        Thu, 01 Oct 2020 01:17:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls487561lff.0.gmail; Thu, 01 Oct
 2020 01:17:45 -0700 (PDT)
X-Received: by 2002:a19:f206:: with SMTP id q6mr2085797lfh.429.1601540265060;
        Thu, 01 Oct 2020 01:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601540265; cv=none;
        d=google.com; s=arc-20160816;
        b=Mybw8rrywKlu68C0sAqAkAth/1CWHJjQ/LKGQMNqlHEcCYx92SvJ5aYZnLEk1NuD3V
         mMzCtnSdKY8Wlta8uZoDs9cDUeOkJP7LdTUI/qcJj8lj6drRzRYJWeYEJJ9CMmVEvlAY
         bHHxJcuVbDfgNvov32KRF/lL/UvkZJ7LX4pm37u5wfN6428iu8TKhODKW+yh2yDXqMV4
         m7OGiHyKPeRWQ6S/ubUcCfWj5uVPkPXKr+PNd79gMF3bnE4eOozHb/8vjmVDDZJW14hW
         2do7pzHD+5FaORGyQF846IajH+mXYZwDIeYplqRAG86SlUj4RvlmvsuclIm8yBa6EdAt
         QtfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=aaFFFYU2nU1c1LpxzaEuCrlEv0dNxBBazmDNCKzjWhQ=;
        b=XjtDGrd1iQ+zL7c+M389Vo5PLGwi8Mj94GnZEFJuz1YpLCr//TF0x9GMu6als+rANn
         4ZZd7XTos5xyVCLxB2nbmbrG/H/Tb1oyOYnP4GhGnxYFVSPXi98jNaKsNlUQiSVJxhX9
         5rjPwU3Ej1hybswYFnVdQ9T8nZyNLedX7BWOUImbPVII0B0gH8aoRkY/PHsh/H7crwcf
         M7VZHShBqdq2ylRNxcb4diBs/te6WHP5kkZhJfvqk/L3++3XhF3X2jxSA96IFBO0z1NA
         iC06Z/65mi1nCi2iy1b/CVNDC/lpDjR6v5e1L28+01s67/MffsJ6W+OCsX52yf4VIGC9
         hbow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jA8VuHqG;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="INF3/uYo";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id l82si81345lfd.13.2020.10.01.01.17.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 01:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: "Singh\, Balbir" <sblbir@amazon.com>, Peter Zijlstra <peterz@infradead.org>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "x86\@kernel.org" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>, "clang-built-linux\@googlegroups.com" <clang-built-linux@googlegroups.com>, "kernel-janitors\@vger.kernel.org" <kernel-janitors@vger.kernel.org>, "linux-safety\@lists.elisa.tech" <linux-safety@lists.elisa.tech>
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars in enable_l1d_flush_for_task()
In-Reply-To: <044e9835-f4fe-6670-90df-15fe376ecadd@amazon.com>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com> <20200929071211.GJ2628@hirez.programming.kicks-ass.net> <20200929083709.GC2651@hirez.programming.kicks-ass.net> <87eemji887.fsf@nanos.tec.linutronix.de> <20200930170316.GB2628@hirez.programming.kicks-ass.net> <87blhni1pg.fsf@nanos.tec.linutronix.de> <20200930183552.GG2628@hirez.programming.kicks-ass.net> <87k0wbgd2s.fsf@nanos.tec.linutronix.de> <19f57cbe-ba33-17d5-440c-2765e670782f@amazon.com> <044e9835-f4fe-6670-90df-15fe376ecadd@amazon.com>
Date: Thu, 01 Oct 2020 10:17:43 +0200
Message-ID: <877dsagy1k.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=jA8VuHqG;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="INF3/uYo";
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Thu, Oct 01 2020 at 10:48, Balbir Singh wrote:
> On 1/10/20 9:49 am, Singh, Balbir wrote:
>>  
>> +static void l1d_flush_kill(struct callback_head *ch)
>> +{
>> +	clear_ti_thread_flag(&current->thread_info, TIF_SPEC_L1D_FLUSH);
>> +	force_signal(SIGBUS);
>> +}
>> +
>>  void switch_mm(struct mm_struct *prev, struct mm_struct *next,
>>  	       struct task_struct *tsk)
>>  {
>> @@ -443,12 +438,14 @@ static void cond_mitigation(struct task_struct *next)
>>  	}
>>  
>>  	/*
>> -	 * Flush only if SMT is disabled as per the contract, which is checked
>> -	 * when the feature is enabled.
>> +	 * Flush only if SMT is disabled, if flushing is enabled
>> +	 * and we are on an SMT enabled core, kill the task
>>  	 */
>> -	if (sched_smt_active() && !this_cpu_read(cpu_info.smt_active) &&
>> -		(prev_mm & LAST_USER_MM_L1D_FLUSH))
>> -		l1d_flush_hw();
>> +	if (unlikely(prev_mm & LAST_USER_MM_L1D_FLUSH)) {
>> +		if (!this_cpu_read(cpu_info.smt_active))
>> +			l1d_flush_hw();
>> +		else
>> +			task_work_add(prev, l1d_flush_kill, true);
>
> We have no access the to the previous task and mm->owner depends on MEMCG :)
> We can do the magic in mm_mangle_tif_spec_bits(), I suppose

No, because we don't have access to prev task there either. Interesting
problem to solve.

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/877dsagy1k.fsf%40nanos.tec.linutronix.de.
