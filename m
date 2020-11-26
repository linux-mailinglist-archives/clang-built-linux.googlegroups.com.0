Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB27Y7X6QKGQEXVFMNOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FE52C51A9
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 10:59:08 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id b19sf1173100pgm.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 01:59:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606384747; cv=pass;
        d=google.com; s=arc-20160816;
        b=ze5Zk0e3DSM4lLiaWRUj25N5+RP+2h9poF6p3uljgZCMgVWIRceI/84KAob32o++px
         jhRCe7kCV1goFwVlt7id0UaJoyv607Nv3hnI/2rIm3xI9cJYuy4htRdyeSAzFaSGCJkQ
         hvw8l3wHXmoOBeM3QDizpFAwkGkaer/XQEazuYMznlWg0dGfVjT7tYQ/BL+La5IF4MJy
         4V+UzT69JtRyE+mlR9qi1orkJCZcJxnpEcTdF6BkvX5v4Esc2R1oujv55WT9LyJx0fex
         GJCAr78eWQ7/qMlDeKBI1/RUCgNbahocwimqj2QvK90l+n1xIG70RkTOzy5t3Btf8M71
         uT0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=u3fmxlHIj+rLYpCDTa7i6zTcYpyuC89/S36UtTF5t0c=;
        b=skQEYT5oWzBO27gjaznvLJ9slZltiGe7yM7kFYQ1cVK/WZM+6cgNfXKoi0yUfGMTcl
         QbK2y2zrJ+flxmtgKci3+Mnx4reBOAPT88UfCyNyzoiHGW3hL9GfHDnPBiX5zwY0VIq3
         B/k/5AUqozxCkD/86t0DqQSxMuw0apMOwjlRFV5TRIVIBeL2uo+F58E9IlhZDAzm7jPS
         0WLV4dj6SOBkDyU7gilfT0PMM8Va1jK1dMS5VPRrryXZgmH53WHXr1fc+R+lpehuaUsC
         iTxfJ48f5G2uESTx26pZTrptaCLG3zgmmvns7siSUhbVmVbmX+bZPHv0kpDSv5SzRLIP
         HyZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ECTi4hgc;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u3fmxlHIj+rLYpCDTa7i6zTcYpyuC89/S36UtTF5t0c=;
        b=FGzWS8tI/6FnJXRLCtjz4rc/C50oGA0eOEDx2hzGTt8lVmNaQeJdpBquWVdgwkvq/7
         od63AaA6oXzgLDwhcQ8EMLW0EWtkOMo2O6xpYEJMa7vA2CKKPIn2wrlhkABK6TM1I5yj
         xILT2Y3SOMHZ/0fxZBVg+ygwIdPnkgBgiyJ8im9UJvIfWDUgg79YINn+IpMnSsPqUkGb
         DV01wseWKHzlGHfSCidMXIGQ7TuagOwcx5P+pXr6lomHSQAyaz7T2uWinhHbmSp9Ror7
         50DNOD0fN1nDfzNPtaZqCQCLlAxk47ZviJR7q3Uy9XYcDQRSmdG979u/HpMrRBndGnWJ
         RD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u3fmxlHIj+rLYpCDTa7i6zTcYpyuC89/S36UtTF5t0c=;
        b=hF7CYwDThZFBXkuphcoVaY0Vq6pMakq7ohjbdi0H3QVUWfpGj5nA0MbEZXsMbIWBl3
         eUB+YZbrPKovUZ9K3E+Mcv/pYZ/Tojw7GUwiczhvY/iyrBhUiNF7Vnxx6wwc4+DePep4
         76rtYJgrA59T6KtNxTAFW0TpDWdA3HECndbVM2J04dTuSMNZPBbZyAsQ4aiVnesMYFpf
         Jj3eMDE2plcgvb+hS8jNz1mLA9+m0lDJk4ef3MCs41dEIQC6rgTqgnURfX2yy9jopsmo
         DJAmqkBmguAWWT9O0n3EweW5fXxEFSECD56w5ywtnq1qwavKyCXKIAA3j/LK/gbK4TqZ
         NF7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311MiRtmFxraJuQaYKdDKNxW+OAoJI56T6lIf6E/iPmBK9R9JMh
	2rZqGl2N4u0WY9gfTjFF/r0=
X-Google-Smtp-Source: ABdhPJwtdj3VF/xcNQTl1OpePmbD/8qQCOAbA+4QssJ1U+Ftv845WClqkP0PExYhvpF1GXpyPyvwdg==
X-Received: by 2002:a17:90b:3785:: with SMTP id mz5mr2718721pjb.41.1606384747262;
        Thu, 26 Nov 2020 01:59:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:989e:: with SMTP id r30ls718231pfl.2.gmail; Thu, 26 Nov
 2020 01:59:06 -0800 (PST)
X-Received: by 2002:a63:797:: with SMTP id 145mr2015560pgh.264.1606384746329;
        Thu, 26 Nov 2020 01:59:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606384746; cv=none;
        d=google.com; s=arc-20160816;
        b=Hb5H/h6A/OxadzF2ruhRFefWvYSigT+JSMpmgxSnpXa8vdTugQHyacvUAO5DjdXFEy
         /UsP2HwjMiydBYQoX0C5f8qVqqZ4LmVD5Fk4ExwOkYMsvJUuBKLlfu9GgdTKrVMkfGE6
         z5pFBQ52wXd2Y7CEE1qDfpwHgoXZbNe/HQ40PgjBxR0AxMejpgRCtQFpP5YhsZ4z21sg
         avjI30ylUr4+8utjAgwcPeFzhdKuQOZwBeI58HYU55iSkJKzlsS3LLNFCwdC2xsOpCQI
         rewEcz1HyNClV9FsFC5A9UxnjTLq+bdWYfOn4WhIr2CgdL82aozFtfbFZ4Nyrz2vX8wl
         HJ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k96Ytbw8RsFGuH0L+BL5WkFXEu1UHUvifcLDg0s+vKY=;
        b=fm55WmI2KlmztP2eE0acFaFjYHtF+EyItIXtaT+E1SAWaxNe9B0LlpnTd6M19Euo6d
         CFqQlTi/NDhW0pC7RX/hf63isRClWP8cHQfCZCcHAShqSuaUusl4hpTF1VngDkCl0p2p
         ciIX7DM+wivTwiiQTp4ixtxaTD4F8FkpfEvW5S0y/JqPbsc+ikYWT+AajxQzf+Gec8pZ
         Cm/MXuf/ri3IxqZLCOOO5B6nSgad96/y1uZkzPaEuUv8oHNIBIU5p4CwXDlHjp5Kly2t
         NPTYSxRwBMj+syf80MXM9CBL4jWcmGPSlEFd8dRELcLtkBLBap3pDn5+69UmM/RSm9RD
         XeGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ECTi4hgc;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id v17si485018pjr.2.2020.11.26.01.59.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2020 01:59:05 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiE3E-0008TE-7b; Thu, 26 Nov 2020 09:58:56 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 728E03059DE;
	Thu, 26 Nov 2020 10:58:53 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 58D99200E0A21; Thu, 26 Nov 2020 10:58:53 +0100 (CET)
Date: Thu, 26 Nov 2020 10:58:53 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: kernel test robot <lkp@intel.com>
Cc: Giovanni Gherdovich <ggherdovich@suse.cz>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Len Brown <lenb@kernel.org>,
	"Rafael J . Wysocki" <rjw@rjwysocki.net>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Jon Grimm <Jon.Grimm@amd.com>,
	Nathan Fontenot <Nathan.Fontenot@amd.com>,
	Yazen Ghannam <Yazen.Ghannam@amd.com>,
	Thomas Lendacky <Thomas.Lendacky@amd.com>
Subject: Re: [PATCH v4 1/3] x86, sched: Calculate frequency invariance for
 AMD systems
Message-ID: <20201126095853.GI3040@hirez.programming.kicks-ass.net>
References: <20201112182614.10700-2-ggherdovich@suse.cz>
 <202011150228.11Cx1qz7-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011150228.11Cx1qz7-lkp@intel.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=ECTi4hgc;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sun, Nov 15, 2020 at 02:23:57AM +0800, kernel test robot wrote:
> Hi Giovanni,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on tip/x86/core]
> [also build test ERROR on tip/master v5.10-rc3 next-20201113]
> [cannot apply to bp/for-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Giovanni-Gherdovich/Add-support-for-frequency-invariance-to-AMD-EPYC-Zen2/20201113-022732
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 238c91115cd05c71447ea071624a4c9fe661f970
> config: arm64-randconfig-r013-20201114 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9a85643cd357e412cff69067bb5c4840e228c2ab)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/3331764ab450bfb6ef0f9a3df70b9ec4f948e54f
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Giovanni-Gherdovich/Add-support-for-frequency-invariance-to-AMD-EPYC-Zen2/20201113-022732
>         git checkout 3331764ab450bfb6ef0f9a3df70b9ec4f948e54f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/acpi/cppc_acpi.c:854:2: error: implicit declaration of function 'init_freq_invariance_cppc' [-Werror,-Wimplicit-function-declaration]
>            init_freq_invariance_cppc();
>            ^
>    1 error generated.

I'll try it with the below change...

---
--- a/arch/x86/include/asm/topology.h
+++ b/arch/x86/include/asm/topology.h
@@ -220,10 +220,7 @@ static inline void arch_set_max_freq_rat
 
 #ifdef CONFIG_ACPI_CPPC_LIB
 void init_freq_invariance_cppc(void);
-#else
-static inline void init_freq_invariance_cppc(void)
-{
-}
+#define init_freq_invariance_cppc init_freq_invariance_cppc
 #endif
 
 #endif /* _ASM_X86_TOPOLOGY_H */
--- a/drivers/acpi/cppc_acpi.c
+++ b/drivers/acpi/cppc_acpi.c
@@ -689,6 +689,10 @@ static bool is_cppc_supported(int revisi
  *	}
  */
 
+#ifndef init_freq_invariance_cppc
+static inline void init_freq_invariance_cppc(void) { }
+#endif
+
 /**
  * acpi_cppc_processor_probe - Search for per CPU _CPC objects.
  * @pr: Ptr to acpi_processor containing this CPU's logical ID.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201126095853.GI3040%40hirez.programming.kicks-ass.net.
