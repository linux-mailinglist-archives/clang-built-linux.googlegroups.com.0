Return-Path: <clang-built-linux+bncBAABBOFP736QKGQEOS6HMLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B862C5361
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 12:55:37 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id 194sf758340lfm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 03:55:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606391736; cv=pass;
        d=google.com; s=arc-20160816;
        b=jkVCO7TAgpTiYXhIL0teaXatiuPoQJZtZJ64aa4788UBspqqEZdZtsZVUSEyAKNkny
         k4YjbFzQc+ITPLevQM2qMuzIv8r7kAM0u/BgooK13pbPVDKcLdTHCPxi4cAXXJ8bNdGZ
         nrEHJIfyo4FoaVCOT6fg/KrzdBoQeRpsmHneaMeCA3upJE2+FAj1LsROvCea0juFfSTZ
         6aQk8wy3kzPbL6GgUkxZetEupsQm4Tw93fTgIqKLWVzK1vYTh287ifpkwpu+ZM6SNdLq
         0YMtgHj/lOIz76Vo+XlycuK26DiwBOthfWL1vxeMRzTqPqc+2TkmV4xi6ljt2Fq3CPbl
         wopg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=567B39/HCDJajtJLmB1WYjTvsFokQwWZxaP4Egzu+GM=;
        b=0kd3uqUhRiCSWA0QVDCnsUtcEit6/MfyOEVPBblRp+z+mQLKh6DGaZK+eNi5Vqyq+i
         Ptq183CE4Z06kbkR5MsM49uXkbjg3jOgCjOPxmtEm4PSHvDRDMmpESApa7zkhHvV08m0
         UqdEwtaTS5vbgoRv0DMRHgBSiJRCxx1HXW4tyTwOKxRoQcWMGiJIRBomjZz+fEPvZzFJ
         JThGcWqz3+hY/QY7KsEijmKSEuh9iDa58IkbZh9N/hCjlUcJW0nmunFffa7o8A8cFTkL
         mihRqI2vG8LoNQGDyxgrRCzjCX6stLIxaxSX3Ehz9Ehd7ZO0pFgGok54uR7A/Zpd1l0m
         sNiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ggherdovich@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=ggherdovich@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=567B39/HCDJajtJLmB1WYjTvsFokQwWZxaP4Egzu+GM=;
        b=rLGUX134OwH1Grp3KkSuvFDkfc0sinQEZVC+NfHHiqeXFQt+mBM6ytEweMc9AYlgzI
         2DcNQIXryyXnAKJPxNS86gUw0hYj4huMhVnlR5hj3QKALzHwVenNNwU3Y1sXxrhHFkLx
         Qj3ZxPuXH4qbMdK2taYtole3htOYRV1V94ra9QVtm6QIeFfKdRCio63slqDnQWdkcSp6
         f3J19q30mgvK/CxV3rkEumniwl39APclTKsdVfiUALxYS19v+yql1AEQlP9LKtU0Vzrj
         ZNesFwqA9Wgu27GYjIqkOtt0Fioziii1UV/ANG9kDXi6uVovOoztq1YaWzVILCzXFqW8
         gvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=567B39/HCDJajtJLmB1WYjTvsFokQwWZxaP4Egzu+GM=;
        b=iuq1FtOSVqEstkRZReJtIS+0Kn1PaDQublKsFWLGqXSSdsBYF7yGIiUkGSdsc6eHCC
         gL9VgzoIUeTM7zG0fF3aBsHWFUEwQdWyYZeLif0MJz3uhbQ+BZKPCMVzxZtxxpp9AF4c
         EB1S7M3aKhlJpk2NG5SfNuxChO28GNDXbRskEAPvhH9ZcayI86GDar53PUYsKnXhWZah
         N57n3eJiyV3WiaXbaT7z4OTzB0xYLmWyW6Ug34een3aE7DHmszWpw7+t21FM8KlGFpVo
         vpItstFOv32bavtLTudMJDbdjcr2UdnLzaQhjmn0BCgOXrPlOypoKs0+3yNanzb7gQwb
         Poyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ufaJokt+pt/CgnFIWTcRXVHSJSRkuVlIoaBS2HLVqDngmKxCy
	qei5BX+fJDilxEpjI6gI71A=
X-Google-Smtp-Source: ABdhPJwaEgj9RnUwkq9rlGDRNumFqHJ13P9lR8TBZr2snektbgAei1NGQ/4/PWs54CW9hf146Nuxaw==
X-Received: by 2002:a2e:9b83:: with SMTP id z3mr1165667lji.145.1606391736799;
        Thu, 26 Nov 2020 03:55:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls1083908lfg.3.gmail; Thu, 26
 Nov 2020 03:55:36 -0800 (PST)
X-Received: by 2002:a19:a419:: with SMTP id q25mr1172617lfc.410.1606391735997;
        Thu, 26 Nov 2020 03:55:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606391735; cv=none;
        d=google.com; s=arc-20160816;
        b=s3kDr1SB/1+RKXY/jBBo0zLgHd37fa1rlGncowanwFw7PVEfeaskwMegF+1NYxa892
         u+F9ahCXUa384bIdyaBF3Ebfq/xaOB73rBLl196BiZWehGncq9wvMNBFfNBZq0vArM9k
         jMTpAWQkBVKcX0DcNwKqHkR9CwUSXOO3r0c4cPYtsekorSsW1QtnLVH+lFMXVhWVvFkS
         y5Jzeq7LLfsx1spgt7uYoehPLfraYH5Pb8TsB6mXjNByP+yGpLtM+tL709N+VNsvg7Kt
         EBw0xofaWmo5dhmh7ATd323B9gAhW0Q54/Jzdl9UiR2Mm2JTrrEPYZxTZ1UCx6H8Jkdy
         O06w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=2DSps89Cdg34YVO5ltogh1e/X2VvTXIiyLw5y5xQ23Y=;
        b=HmdCWtOzLRg04pD8AXUvhNkXH0YipSgqBIsS5Dv3OLsokQ97ftluZqKZlidJ91DxZy
         6RZa76iPGCciiYLFhoC081PPRnUTYK9p0sBHSjovvdcWvxe6KJdhjSFmBlH3LZMx9HHV
         /ijnwUPwiU3G2ZpTIbq/dUwJYBN9JGrV6EZ4wX01Rv3krZKuXZLD8LHKTldojaDVsiRs
         rW7uEk1ZOsZPeXguFJ/ovB4av358urPgxA6bDH7NsXgdBDzNyX6jCM7IxODe2TuxMUE0
         QkZSoPzp5brBaDl0hREsO3YcmBUXdzp0uo6khGcs1gB0qrdxa8c6KZLWk6CeIpF73Jxw
         iOOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ggherdovich@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=ggherdovich@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id m18si88779lfr.11.2020.11.26.03.55.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Nov 2020 03:55:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ggherdovich@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 240C8ACE0;
	Thu, 26 Nov 2020 11:55:35 +0000 (UTC)
Message-ID: <1606391734.30110.148.camel@suse.cz>
Subject: Re: [PATCH v4 1/3] x86, sched: Calculate frequency invariance for
 AMD systems
From: Giovanni Gherdovich <ggherdovich@suse.cz>
To: Peter Zijlstra <peterz@infradead.org>, kernel test robot <lkp@intel.com>
Cc: Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, 
 Ingo Molnar <mingo@redhat.com>, Len Brown <lenb@kernel.org>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>,  kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Jon Grimm <Jon.Grimm@amd.com>, Nathan
 Fontenot <Nathan.Fontenot@amd.com>, Yazen Ghannam <Yazen.Ghannam@amd.com>,
 Thomas Lendacky <Thomas.Lendacky@amd.com>
Date: Thu, 26 Nov 2020 12:55:34 +0100
In-Reply-To: <20201126095853.GI3040@hirez.programming.kicks-ass.net>
References: <20201112182614.10700-2-ggherdovich@suse.cz>
	 <202011150228.11Cx1qz7-lkp@intel.com>
	 <20201126095853.GI3040@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: ggherdovich@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ggherdovich@suse.cz designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=ggherdovich@suse.cz
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

On Thu, 2020-11-26 at 10:58 +0100, Peter Zijlstra wrote:
> On Sun, Nov 15, 2020 at 02:23:57AM +0800, kernel test robot wrote:
> > [...]
> > All errors (new ones prefixed by >>):
> > 
> > > > drivers/acpi/cppc_acpi.c:854:2: error: implicit declaration of function 'init_freq_invariance_cppc' [-Werror,-Wimplicit-function-declaration]
> > 
> >            init_freq_invariance_cppc();
> >            ^
> >    1 error generated.
> 
> I'll try it with the below change...
> 
> ---
> --- a/arch/x86/include/asm/topology.h
> +++ b/arch/x86/include/asm/topology.h
> @@ -220,10 +220,7 @@ static inline void arch_set_max_freq_rat
>  
>  #ifdef CONFIG_ACPI_CPPC_LIB
>  void init_freq_invariance_cppc(void);
> -#else
> -static inline void init_freq_invariance_cppc(void)
> -{
> -}
> +#define init_freq_invariance_cppc init_freq_invariance_cppc
>  #endif
>  
>  #endif /* _ASM_X86_TOPOLOGY_H */
> --- a/drivers/acpi/cppc_acpi.c
> +++ b/drivers/acpi/cppc_acpi.c
> @@ -689,6 +689,10 @@ static bool is_cppc_supported(int revisi
>   *	}
>   */
>  
> +#ifndef init_freq_invariance_cppc
> +static inline void init_freq_invariance_cppc(void) { }
> +#endif
> +
>  /**
>   * acpi_cppc_processor_probe - Search for per CPU _CPC objects.
>   * @pr: Ptr to acpi_processor containing this CPU's logical ID.

Thanks, and sorry for not replying.

I was about to send an amended patch using the technique
"#define funcname funcname" as you do here, but I was placing the
macro definition in include/asm-generic/topology.h and it wasn't great.

Your change is better, thanks for fixing it.


Giovanni

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1606391734.30110.148.camel%40suse.cz.
