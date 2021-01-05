Return-Path: <clang-built-linux+bncBCILLLGERUHBB3HRZ37QKGQEJXQX6HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id E14052EA1AC
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 01:55:09 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id p185sf24489792qkc.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 16:55:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609808109; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yx5idw5ImC6ovkAbPCvAhHG9ifWETsdKCWRWcSmuXarl0R1JBmU0RkTa6wxOdvVzTT
         NP2CWbd1MS5PxY405Hf+kLlwKXP8kLqcvwjCQL8x221yFZtk+1jMTA7f0uO0mg4YS3Ca
         XsHrtXt/UHbt5l7KbSzSzOtQDoCu2uUbnz7FaO2JSgvriQtSyCKV7wK9b+g4nIA8Lqb9
         50DY5qCzT1R+Ln7eK8qAcvA85qEop6xc2Lor48aGATqq2lvHXv4D4gnj+Y2T0JKWmNqX
         80ENXSf8gQd0a/uK3UPAlOdEmQ6Gy8q4GDYCIhj/Ee9gUwQDW+Y8kSNQAdhRe0tq0xaX
         HmoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FtFZSBTqQB58rbtfTq0AY5IsECmDnWFIS+zeD3mjWco=;
        b=00hrdvwep45wqacG2dc+XD622AUVgp2tmWhU+VFH1qzm9dC0hQRddnigZcoPb5Nj37
         O9Xehi5NMa78t6F+lEakvpnpR65vxpVGH+RUB4ufiCgphwvnOqeEtwNV8NEaMEfdCNSg
         TMvKby4IJVYVZD8+4hAje35a7aAdmmQf+ObVtHgDDg0FBmXQtIpQgmcGOSHwWjd8EL4e
         pyXDjiYOa6czoWdzu7loqd/9s6lb7OXg8fjqP2iD805SDfwTAL6J/JBv66DmDBM+u9An
         au2PLbvYfnX2SKfM7fTCQQcNrqP5ognpDjs8VY0GkVF5a6vmT68iJ+aX2o9cBxEQ/2sh
         7mHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.171 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FtFZSBTqQB58rbtfTq0AY5IsECmDnWFIS+zeD3mjWco=;
        b=XYHJPadpmOwj8v8ZUqLljQJH8L7W6VQppqL0HFgR5Bq5/E9mfvByUWdXsHftrKIvik
         Z7+gAViP8SuykxocUQyYyZnHJfkG4xsqgIrgrZB9WtD72dbjUnA9soH/f1gMSXW3joDG
         fo2adZ6BfBIooOMzINbVVX29AgJnyCluOoCSqa6YJJe1Del9u2ntPf5XMORHcmDQiqlh
         PalGEZYvAxHSAtpq81+fUocDw+7FfYrvsik1ZnAdvWrk+f156wa+ikT6FFo5ePDnjTew
         ZZFFTzR/aBL3bhiiHgaQAduaFQtWUo1Z+uLG1vMcuf7NCKYOACbyG7UAGBLTYzPRESdd
         mXDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FtFZSBTqQB58rbtfTq0AY5IsECmDnWFIS+zeD3mjWco=;
        b=qvsTWim0p+U90V8G226B2WHVkPp+7fEkr2dGxm/iQ9dDwE98t3xFH67Sa9aGNKoI2M
         aJfqNW1yNL7pABri9sfhlHZriPJSyG6O7YA3+4QdS39Eqdzo8laM7+2+rY/KGL/QdeFp
         xgNYjEIDm6WboDlnDUIAK8+VnxKRFxV8NPd637Rqy/MvwpNVVAYlS5hp9vYvNCjhmYdU
         BjO3GSSqfXCVu7Y2/OElZhRKJxzstZ8w4h1PDWT2xkAQIK7UGSkUuEnzAwi/QVs28gAi
         PV4nQGr6Ird52iyRK9XUHMb6NZk/AxM2RnU4xk+b6sXrIajbbBETiVtBQjm5c5vnjV7Y
         qVMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wJ6rdkOX63PfNKCKfCnOD9sRH+Hb+xnzYfAGKcr8SoL9Yr4fU
	3Lk7SYXXd9iZl2CjfZwcIuw=
X-Google-Smtp-Source: ABdhPJxOFN7M+pntRwqnn4vUBlrxWR+c6/EJWzcKbeHfUn7q2LBwfkq5SWDXrLf5c/j8+Qz7UyU/rg==
X-Received: by 2002:a05:6214:8c9:: with SMTP id da9mr79400017qvb.29.1609808108862;
        Mon, 04 Jan 2021 16:55:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:132f:: with SMTP id p15ls31842584qkj.0.gmail; Mon,
 04 Jan 2021 16:55:08 -0800 (PST)
X-Received: by 2002:a37:9a97:: with SMTP id c145mr73674889qke.350.1609808108554;
        Mon, 04 Jan 2021 16:55:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609808108; cv=none;
        d=google.com; s=arc-20160816;
        b=U2sB/PlbQ2UTagDrfdNmKQIA7z1/axcXCzhwnH9XBA/T2qFexPZhNOBH3FLGa3S5PL
         ioTU2iMjwLobKMkR5Jpj1P7JN/Le68e4Lqzi0Sxl+KSVESJ6lgSG472bgljgo0DTXDIp
         aVmI68OfXpe3/kZe6RT0fG39Ok+455fKa5XN6Q0r0g3KPgiZknhQdKyjlszIFpy1Vq0E
         Jq3xbjsre3Sat42207OsCGTI0Y9wv/+Oz+/kdsYqerS1XdE+Ksp00uNmH/vPSWCw+1+V
         sNakTna7j9f+hD50YWjHQ8/vqfb2UqHfNff8S/fR1iVCh6Vc7hnWRKpx+HIdvfnoK2ZJ
         tQAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=n/CGDoYBE+dXOpGqRxCS2ivcb9jRqslobwDq2y3UTJw=;
        b=uScB8IA2q8kL2WpN6IP2N1l7MG1bsU960HT9/luvSoxxv5+m0wN9RXhc4/LIQZnJGm
         cZL++oMwWjSQAPfcT+ExVbfzp0Q/hlDpcMA3QasoAmY7egoSAk+y7O0Z8O8YbyRE8Hnt
         hIk8AOfRjzxkFagM0DwXzdUFzF1ZOi+9HlW6LIKutcZZGZs1b+5bv5oVl1rd7+wlDFtN
         fYO2OhmXOE4j6V3+HCPNmwTWvyOYIBYyNq0MK8cCFkNAdNUcc/R6zor1BDl5nO8FuMY2
         J8rmzs/4qJ5OVZPOdi+vl+I8GIQK0V8y2w3zXjikEDM9lXbQEct4rK2mrwehNCIv+FJN
         0jew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.171 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com. [209.85.166.171])
        by gmr-mx.google.com with ESMTPS id n18si4218679qkk.7.2021.01.04.16.55.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 16:55:08 -0800 (PST)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.171 as permitted sender) client-ip=209.85.166.171;
Received: by mail-il1-f171.google.com with SMTP id x15so27127123ilq.1
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 16:55:08 -0800 (PST)
X-Received: by 2002:a92:6f12:: with SMTP id k18mr73850762ilc.66.1609808107998;
        Mon, 04 Jan 2021 16:55:07 -0800 (PST)
Received: from google.com (110.41.72.34.bc.googleusercontent.com. [34.72.41.110])
        by smtp.gmail.com with ESMTPSA id 15sm33356984ilx.84.2021.01.04.16.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 16:55:07 -0800 (PST)
Date: Tue, 5 Jan 2021 00:55:06 +0000
From: Dennis Zhou <dennis@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>,
	linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] percpu: fix clang modpost warning in
 pcpu_build_alloc_info()
Message-ID: <X/O46grb51Z4faI1@google.com>
References: <20201231212852.3175381-1-dennis@kernel.org>
 <20210104234651.GA3548546@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210104234651.GA3548546@ubuntu-m3-large-x86>
X-Original-Sender: DennisSZhou@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.166.171 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
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

On Mon, Jan 04, 2021 at 04:46:51PM -0700, Nathan Chancellor wrote:
> On Thu, Dec 31, 2020 at 09:28:52PM +0000, Dennis Zhou wrote:
> > This is an unusual situation so I thought it best to explain it in a
> > separate patch.
> > 
> > "percpu: reduce the number of cpu distance comparisons" introduces a
> > dependency on cpumask helper functions in __init code. This code
> > references a struct cpumask annotated __initdata. When the function is
> > inlined (gcc), everything is fine, but clang decides not to inline these
> > function calls. This causes modpost to warn about an __initdata access
> > by a function not annotated with __init [1].
> > 
> > Ways I thought about fixing it:
> > 1. figure out why clang thinks this inlining is too costly.
> > 2. create a wrapper function annotated __init (this).
> > 3. annotate cpumask with __refdata.
> > 
> > Ultimately it comes down to if it's worth saving the cpumask memory and
> > allowing it to be freed. IIUC, __refdata won't be freed, so option 3 is
> > just a little wasteful. 1 is out of my depth, leaving 2. I don't feel
> > great about this behavior being dependent on inlining semantics, but
> > cpumask helpers are small and probably should be inlined.
> > 
> > modpost complaint:
> >   WARNING: modpost: vmlinux.o(.text+0x735425): Section mismatch in reference from the function cpumask_clear_cpu() to the variable .init.data:pcpu_build_alloc_info.mask
> >   The function cpumask_clear_cpu() references
> >   the variable __initdata pcpu_build_alloc_info.mask.
> >   This is often because cpumask_clear_cpu lacks a __initdata
> >   annotation or the annotation of pcpu_build_alloc_info.mask is wrong.
> > 
> > clang output:
> >   mm/percpu.c:2724:5: remark: cpumask_clear_cpu not inlined into pcpu_build_alloc_info because too costly to inline (cost=725, threshold=325) [-Rpass-missed=inline]
> > 
> > [1] https://lore.kernel.org/linux-mm/202012220454.9F6Bkz9q-lkp@intel.com/
> > 
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Dennis Zhou <dennis@kernel.org>
> > ---
> > This is on top of percpu#for-5.12.
> > 
> >  mm/percpu.c | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/mm/percpu.c b/mm/percpu.c
> > index 80f8f885a990..357977c4cb00 100644
> > --- a/mm/percpu.c
> > +++ b/mm/percpu.c
> > @@ -2642,6 +2642,18 @@ early_param("percpu_alloc", percpu_alloc_setup);
> >  
> >  /* pcpu_build_alloc_info() is used by both embed and page first chunk */
> >  #if defined(BUILD_EMBED_FIRST_CHUNK) || defined(BUILD_PAGE_FIRST_CHUNK)
> > +
> > +/*
> > + * This wrapper is to avoid a warning where cpumask_clear_cpu() is not inlined
> > + * when compiling with clang causing modpost to warn about accessing __initdata
> > + * from a non __init function.  By doing this, we allow the struct cpumask to be
> > + * freed instead of it taking space by annotating with __refdata.
> > + */
> > +static void __init pcpu_cpumask_clear_cpu(int cpu, struct cpumask *mask)
> > +{
> > +	cpumask_clear_cpu(cpu, mask);
> > +}
> > +
> >  /**
> >   * pcpu_build_alloc_info - build alloc_info considering distances between CPUs
> >   * @reserved_size: the size of reserved percpu area in bytes
> > @@ -2713,7 +2725,7 @@ static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
> >  		cpu = cpumask_first(&mask);
> >  		group_map[cpu] = group;
> >  		group_cnt[group]++;
> > -		cpumask_clear_cpu(cpu, &mask);
> > +		pcpu_cpumask_clear_cpu(cpu, &mask);
> >  
> >  		for_each_cpu(tcpu, &mask) {
> >  			if (!cpu_distance_fn ||
> > @@ -2721,7 +2733,7 @@ static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
> >  			     cpu_distance_fn(tcpu, cpu) == LOCAL_DISTANCE)) {
> >  				group_map[tcpu] = group;
> >  				group_cnt[group]++;
> > -				cpumask_clear_cpu(tcpu, &mask);
> > +				pcpu_cpumask_clear_cpu(tcpu, &mask);
> >  			}
> >  		}
> >  	}
> > -- 
> > 2.29.2.729.g45daf8777d-goog
> > 

Hi Nathan,

> 
> Hi Dennis,
> 
> I did a bisect of the problematic config against defconfig and it points
> out that CONFIG_GCOV_PROFILE_ALL is in the bad config but not the good
> config, which makes some sense as that will mess with clang's inlining
> heuristics. It does not appear to be the single config that makes a
> difference but it gives some clarity.
> 

Ah, thanks. To me it's kind of a corner case that I don't have a lot of
insight into. __init code is pretty limited and this warning is really
at the compilers whim. However, in this case only clang throws this
warning.

> I do not personally have any strong opinions around the patch but is it
> really that much wasted memory to just annotate mask with __refdata?

It's really not much memory, 1 bit per max # of cpus. The reported
config is on the extreme side compiling with 8k NR_CPUS, so 1kb. I'm
just not in love with the idea of adding a patch to improve readability
and it cost idle memory to resolve a compile time warning.

If no one else chimes in in the next few days, I'll probably just apply
it and go from there. If another issue comes up I'll drop this and tag
it as __refdata.

Thanks,
Dennis

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X/O46grb51Z4faI1%40google.com.
