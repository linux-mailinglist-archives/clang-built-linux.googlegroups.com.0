Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2EU63ZQKGQEW5ZDP7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id A76E8195045
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 06:08:58 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id e2sf6907727pgb.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 22:08:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585285737; cv=pass;
        d=google.com; s=arc-20160816;
        b=ygGYv6Panps7jOiIR477LRaiiTUt5GomFcAn/z04xkk8EEuxcZhjsO06otA58IONUW
         ZpxbXkOgGnUW87bX30T4HWAStSle8giqShYxLSOE1cc/wN4UhaxsjdbaFVPstB39wT9I
         pxtbHewGvLUHPVU6BZRHwehZjoAyQYy7/4EjFFof1J6HIb1QMePDY06KiAqI2SNsUzjK
         r8bZCdPCS69FeZTxTNvHaPbx0RlZTmIidkyTDvb9pmfR5xlRFaU+Au7P4DL7qw6Xjans
         oDLxXatyTzhF7zDU/5bkun4dn0Gu7AM+HU6u4EV+VzzIOy694Mu8F+g4rCsrKlpTVtwa
         F+qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=G5ppOiSw39KaxRuiAA/XgJOYjF7GqryagIIF2gBwnBY=;
        b=ugArcByGWxmO2r0JEKcSIMh+rhWbTHdcjuLXzqDH3k7qUr7VBv/zo6qeLBxlfZSGGF
         MlDM1HYnTEOIMTVLwUwqBxo0OaRRcTFbSFBz1FGW4Aak3CNAQ4KYL9vYjKZh2Q4UTTqK
         jvK5i4n/S3GjBK4L/vVWdwuo8/tm3NRdz3nlOhvcng37t/JsY8cHAz7p7bN7YQTaft9f
         d4Gtgiy0N3XnzPbtrQnM3aJ7uZBTOiqyKXuDR+f9rhdzUCvJvvenJUJqlhbckiV85NIN
         7oHarKN0JDhNQR7AC8gcU11tTMEdzHzYXCGtyDviCLoKzn206HRW6oOAfMBwRG7aJFdu
         lD+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G5ppOiSw39KaxRuiAA/XgJOYjF7GqryagIIF2gBwnBY=;
        b=PidwFt/ff4nVBzVOQnh7ROIZreBu8tTiM1lNEFWnbUt/4gxfyNyyofs7c38FXArB5c
         H41XuYIQq/hdFPBPkAUelJvjT7Kwur0athvokreMMblDYvIl3mLbX3NtH0aP46ow5SG0
         xJR9u945vHqYxSY05mnjJ2r8tkRjO8XIna4iOpo0wB1v2TpyR5VDThHdhHfwDGDClTEx
         IkNmpXB5lJnFyA6UFx97qvxaDgU4GexQGl/LUFV8RwqiZyYbLkzMAXkxHrj0r0VjSUU+
         fbqEQMeUPdEWdirarY7PGizIzpu5wLQxuWLiQq0pnPETJhsoV6RjjCmIe8qEWELTTbPN
         noEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G5ppOiSw39KaxRuiAA/XgJOYjF7GqryagIIF2gBwnBY=;
        b=n6SsJbzbyPtVlDSPDMYYT45UKjnL/WrDACB98xlsNUvrySoc2NKpqhOMyJ0QCPzDyn
         uJjmhKyFLxnTXoKhJhImrVDKWw4cJ8IqHbHdxP1Oqlbh9btlsokcbtqIAl1Kr+DoLIsd
         Nh8QduG1jCIlcYq2Kiwl5YxKRgOHppVc1pbkSq07yBi8ZSqYol9t1YMOps+BO0EItKn+
         1Rq363USyhi0MkJE2bH/uo1nJOdxoAZnzg21tWTEkpQ30tlilVHFBXSzqg9MGh9q7bWq
         2+6N1PAXT/jzG0JLVPGOY/lx3v2FK7ucx3oGqB01BJNM3krAnUg/d2i7UaXzMLSBIgi5
         NEUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1n23gHIorW/3YvKjZT7JgIyioqCep59/0xHk9tZUw+oWbagcLM
	vpMpu+MXNuBgJiIR3pFu53I=
X-Google-Smtp-Source: ADFU+vtL8gRZJRDCBsp2aJ77I0jTyps6592xTXyIWIrBvwmHfkE9Q5b+CNCnySsWajDQZid69SDoUg==
X-Received: by 2002:a17:90a:757:: with SMTP id s23mr3894175pje.166.1585285736691;
        Thu, 26 Mar 2020 22:08:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls5906152pls.6.gmail; Thu, 26
 Mar 2020 22:08:56 -0700 (PDT)
X-Received: by 2002:a17:90b:4906:: with SMTP id kr6mr4030415pjb.13.1585285736024;
        Thu, 26 Mar 2020 22:08:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585285736; cv=none;
        d=google.com; s=arc-20160816;
        b=MbvYY9vMRZt48R/7s5l7Gnnsu2RK0DH3Jy88ibiHFwmOhdtoCxDA4edNK8m0Ql4e3A
         F4xZ3huZvDY/nXQNcZNGjjFaDlVeI0YfRmvPhvLhVTXS26DeGj3tIOGmdBDFws3gc2bN
         Kh2xFNT8cplt/SAK8/RfOZ1mH/m3BCdtTRMsYyJ3Ee0tR41Jh+6yZ0tICatKXzm3Pb6r
         s2Ot8Rf82vAi1QfH/jy5xg8n3fNQ13Yldazm0xn6sMYilqGsbwf7S+RncQGZRGnaLKRZ
         urKZlQONBce/EPIuK2w95U6iRFqMOLtXKQkwFCSd4MChR2imqtNcCbkGJjB95P53y0sB
         T1Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=vQeMLhF2EodTkyXGNQQ506XYD1q2UFNC3dTk3famcH4=;
        b=q1lRGwt/dY1RsU/HO9SuKjaEwkMBJWyy515nDl38tFOKphKRdCVPhmgW9B81IVLEFQ
         2aCF/xKwRIHGvwQ94y6DwqEKCNMZ0RxwmSdj8fU3RgIlKEaD3MbpdcXhUc3uBeaxa80t
         td1yn6ka5ja9vZf8lWi1mInvjaN9Iv+gEjufGUwpYnJJ4QTKjd8F7N2gwfhWI4mhC8nP
         bCEgeh4vL+RIDdefdUrXF5Q7i4lGBaXwS9vOsoQrr4VGqcxPL9ZzJKsU61oZoFWDWuMW
         z7Rsdnaz7pbOcFjsyfc50y5WCUqE8m2MR2hhMOMc25aKUVIIdWTLniP3hRV+T72ReFZQ
         SnDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id c3si554241pje.1.2020.03.26.22.08.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 22:08:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: h/4c2kJPEyWXtETWH5S8GxmKlu4eHHrZrqdfqTGYo6KbnbLKUYF5RBN5g+/uTQAY6bLq4u3xT/
 Qq4Jd0wnH8Tg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 22:08:55 -0700
IronPort-SDR: kooQ98ykeEIX0nf9t2waA2teBElBJR67w65npIDvRz42Z0jqae1HCScNDlY+uw2aVGn61ZMd2C
 p+lywRM1Jmww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; 
   d="gz'50?scan'50,208,50";a="271443818"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2020 22:08:52 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jHhEi-000Irs-HT; Fri, 27 Mar 2020 13:08:52 +0800
Date: Fri, 27 Mar 2020 13:07:58 +0800
From: kbuild test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] kbuild: Enable -Wtautological-compare
Message-ID: <202003271330.DeDFOBJ8%lkp@intel.com>
References: <20200326194155.29107-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
In-Reply-To: <20200326194155.29107-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--5vNYLRcllDrimb99
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nathan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on kbuild/for-next]
[also build test WARNING on v5.6-rc7 next-20200326]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Nathan-Chancellor/kbuild-Enable-Wtautological-compare/20200327-072823
base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2a43a1610db335afcccd1a179a33a0886a5a2c4d)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> kernel//trace/trace.c:9337:33: warning: array comparison always evaluates to true [-Wtautological-compare]
           if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
                                          ^
   1 warning generated.

vim +9337 kernel//trace/trace.c

7e465baa80293e Tom Zanussi               2017-09-22  9312  
3928a8a2d98081 Steven Rostedt            2008-09-29  9313  __init static int tracer_alloc_buffers(void)
bc0c38d139ec7f Steven Rostedt            2008-05-12  9314  {
73c5162aa362a5 Steven Rostedt            2009-03-11  9315  	int ring_buf_size;
9e01c1b74c9531 Rusty Russell             2009-01-01  9316  	int ret = -ENOMEM;
4c11d7aed38937 Steven Rostedt            2008-05-12  9317  
a356646a56857c Steven Rostedt (VMware    2019-12-02  9318) 
a356646a56857c Steven Rostedt (VMware    2019-12-02  9319) 	if (security_locked_down(LOCKDOWN_TRACEFS)) {
ee19545220a866 Stephen Rothwell          2019-12-06  9320  		pr_warn("Tracing disabled due to lockdown\n");
a356646a56857c Steven Rostedt (VMware    2019-12-02  9321) 		return -EPERM;
a356646a56857c Steven Rostedt (VMware    2019-12-02  9322) 	}
a356646a56857c Steven Rostedt (VMware    2019-12-02  9323) 
b5e87c05813194 Steven Rostedt (Red Hat   2015-09-29  9324) 	/*
b5e87c05813194 Steven Rostedt (Red Hat   2015-09-29  9325) 	 * Make sure we don't accidently add more trace options
b5e87c05813194 Steven Rostedt (Red Hat   2015-09-29  9326) 	 * than we have bits for.
b5e87c05813194 Steven Rostedt (Red Hat   2015-09-29  9327) 	 */
9a38a8856f41f9 Steven Rostedt (Red Hat   2015-09-30  9328) 	BUILD_BUG_ON(TRACE_ITER_LAST_BIT > TRACE_FLAGS_MAX_SIZE);
b5e87c05813194 Steven Rostedt (Red Hat   2015-09-29  9329) 
9e01c1b74c9531 Rusty Russell             2009-01-01  9330  	if (!alloc_cpumask_var(&tracing_buffer_mask, GFP_KERNEL))
9e01c1b74c9531 Rusty Russell             2009-01-01  9331  		goto out;
9e01c1b74c9531 Rusty Russell             2009-01-01  9332  
ccfe9e42e45123 Alexander Z Lam           2013-08-08  9333  	if (!alloc_cpumask_var(&global_trace.tracing_cpumask, GFP_KERNEL))
9e01c1b74c9531 Rusty Russell             2009-01-01  9334  		goto out_free_buffer_mask;
a98a3c3fde3ae7 Steven Rostedt            2008-05-12  9335  
07d777fe8c3985 Steven Rostedt            2011-09-22  9336  	/* Only allocate trace_printk buffers if a trace_printk exists */
07d777fe8c3985 Steven Rostedt            2011-09-22 @9337  	if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
81698831bc462f Steven Rostedt            2012-10-11  9338  		/* Must be called before global_trace.buffer is allocated */
07d777fe8c3985 Steven Rostedt            2011-09-22  9339  		trace_printk_init_buffers();
07d777fe8c3985 Steven Rostedt            2011-09-22  9340  
73c5162aa362a5 Steven Rostedt            2009-03-11  9341  	/* To save memory, keep the ring buffer size to its minimum */
73c5162aa362a5 Steven Rostedt            2009-03-11  9342  	if (ring_buffer_expanded)
73c5162aa362a5 Steven Rostedt            2009-03-11  9343  		ring_buf_size = trace_buf_size;
73c5162aa362a5 Steven Rostedt            2009-03-11  9344  	else
73c5162aa362a5 Steven Rostedt            2009-03-11  9345  		ring_buf_size = 1;
73c5162aa362a5 Steven Rostedt            2009-03-11  9346  
9e01c1b74c9531 Rusty Russell             2009-01-01  9347  	cpumask_copy(tracing_buffer_mask, cpu_possible_mask);
ccfe9e42e45123 Alexander Z Lam           2013-08-08  9348  	cpumask_copy(global_trace.tracing_cpumask, cpu_all_mask);
9e01c1b74c9531 Rusty Russell             2009-01-01  9349  
2b6080f28c7cc3 Steven Rostedt            2012-05-11  9350  	raw_spin_lock_init(&global_trace.start_lock);
2b6080f28c7cc3 Steven Rostedt            2012-05-11  9351  
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9352  	/*
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9353  	 * The prepare callbacks allocates some memory for the ring buffer. We
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9354  	 * don't free the buffer if the if the CPU goes down. If we were to free
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9355  	 * the buffer, then the user would lose any trace that was in the
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9356  	 * buffer. The memory will be removed once the "instance" is removed.
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9357  	 */
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9358  	ret = cpuhp_setup_state_multi(CPUHP_TRACE_RB_PREPARE,
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9359  				      "trace/RB:preapre", trace_rb_cpu_prepare,
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9360  				      NULL);
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9361  	if (ret < 0)
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9362  		goto out_free_cpumask;
2c4a33aba5f9ea Steven Rostedt (Red Hat   2014-03-25  9363) 	/* Used for event triggers */
147d88e0b5eb90 Dan Carpenter             2017-08-01  9364  	ret = -ENOMEM;
2c4a33aba5f9ea Steven Rostedt (Red Hat   2014-03-25  9365) 	temp_buffer = ring_buffer_alloc(PAGE_SIZE, RB_FL_OVERWRITE);
2c4a33aba5f9ea Steven Rostedt (Red Hat   2014-03-25  9366) 	if (!temp_buffer)
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9367  		goto out_rm_hp_state;
2c4a33aba5f9ea Steven Rostedt (Red Hat   2014-03-25  9368) 
939c7a4f04fcd2 Yoshihiro YUNOMAE         2014-06-05  9369  	if (trace_create_savedcmd() < 0)
939c7a4f04fcd2 Yoshihiro YUNOMAE         2014-06-05  9370  		goto out_free_temp_buffer;
939c7a4f04fcd2 Yoshihiro YUNOMAE         2014-06-05  9371  
9e01c1b74c9531 Rusty Russell             2009-01-01  9372  	/* TODO: make the number of buffers hot pluggable with CPUS */
737223fbca3b1c Steven Rostedt (Red Hat   2013-03-05  9373) 	if (allocate_trace_buffers(&global_trace, ring_buf_size) < 0) {
24589e3a20876d Steven Rostedt (VMware    2020-01-25  9374) 		MEM_FAIL(1, "tracer: failed to allocate ring buffer!\n");
939c7a4f04fcd2 Yoshihiro YUNOMAE         2014-06-05  9375  		goto out_free_savedcmd;
a98a3c3fde3ae7 Steven Rostedt            2008-05-12  9376  	}
a7603ff4b5f7e2 Steven Rostedt            2012-08-06  9377  
499e547057f5bb Steven Rostedt            2012-02-22  9378  	if (global_trace.buffer_disabled)
499e547057f5bb Steven Rostedt            2012-02-22  9379  		tracing_off();
a98a3c3fde3ae7 Steven Rostedt            2008-05-12  9380  
e1e232ca6b8faa Steven Rostedt            2014-02-10  9381  	if (trace_boot_clock) {
e1e232ca6b8faa Steven Rostedt            2014-02-10  9382  		ret = tracing_set_clock(&global_trace, trace_boot_clock);
e1e232ca6b8faa Steven Rostedt            2014-02-10  9383  		if (ret < 0)
a395d6a7e3d6e3 Joe Perches               2016-03-22  9384  			pr_warn("Trace clock %s not defined, going back to default\n",
e1e232ca6b8faa Steven Rostedt            2014-02-10  9385  				trace_boot_clock);
e1e232ca6b8faa Steven Rostedt            2014-02-10  9386  	}
e1e232ca6b8faa Steven Rostedt            2014-02-10  9387  
ca1643186d3dce Steven Rostedt (Red Hat   2013-05-23  9388) 	/*
ca1643186d3dce Steven Rostedt (Red Hat   2013-05-23  9389) 	 * register_tracer() might reference current_trace, so it
ca1643186d3dce Steven Rostedt (Red Hat   2013-05-23  9390) 	 * needs to be set before we register anything. This is
ca1643186d3dce Steven Rostedt (Red Hat   2013-05-23  9391) 	 * just a bootstrap of current_trace anyway.
ca1643186d3dce Steven Rostedt (Red Hat   2013-05-23  9392) 	 */
2b6080f28c7cc3 Steven Rostedt            2012-05-11  9393  	global_trace.current_trace = &nop_trace;
2b6080f28c7cc3 Steven Rostedt            2012-05-11  9394  
0b9b12c1b884eb Steven Rostedt (Red Hat   2014-01-14  9395) 	global_trace.max_lock = (arch_spinlock_t)__ARCH_SPIN_LOCK_UNLOCKED;
0b9b12c1b884eb Steven Rostedt (Red Hat   2014-01-14  9396) 
4104d326b670c2 Steven Rostedt (Red Hat   2014-01-10  9397) 	ftrace_init_global_array_ops(&global_trace);
4104d326b670c2 Steven Rostedt (Red Hat   2014-01-10  9398) 
9a38a8856f41f9 Steven Rostedt (Red Hat   2015-09-30  9399) 	init_trace_flags_index(&global_trace);
9a38a8856f41f9 Steven Rostedt (Red Hat   2015-09-30  9400) 
ca1643186d3dce Steven Rostedt (Red Hat   2013-05-23  9401) 	register_tracer(&nop_trace);
ca1643186d3dce Steven Rostedt (Red Hat   2013-05-23  9402) 
dbeafd0d6131d0 Steven Rostedt (VMware    2017-03-03  9403) 	/* Function tracing may start here (via kernel command line) */
dbeafd0d6131d0 Steven Rostedt (VMware    2017-03-03  9404) 	init_function_trace();
dbeafd0d6131d0 Steven Rostedt (VMware    2017-03-03  9405) 
60a11774b38fef Steven Rostedt            2008-05-12  9406  	/* All seems OK, enable tracing */
60a11774b38fef Steven Rostedt            2008-05-12  9407  	tracing_disabled = 0;
3928a8a2d98081 Steven Rostedt            2008-09-29  9408  
3f5a54e371ca20 Steven Rostedt            2008-07-30  9409  	atomic_notifier_chain_register(&panic_notifier_list,
3f5a54e371ca20 Steven Rostedt            2008-07-30  9410  				       &trace_panic_notifier);
3f5a54e371ca20 Steven Rostedt            2008-07-30  9411  
3f5a54e371ca20 Steven Rostedt            2008-07-30  9412  	register_die_notifier(&trace_die_notifier);
2fc1dfbe17e770 Frederic Weisbecker       2009-03-16  9413  
ae63b31e4d0e2e Steven Rostedt            2012-05-03  9414  	global_trace.flags = TRACE_ARRAY_FL_GLOBAL;
ae63b31e4d0e2e Steven Rostedt            2012-05-03  9415  
ae63b31e4d0e2e Steven Rostedt            2012-05-03  9416  	INIT_LIST_HEAD(&global_trace.systems);
ae63b31e4d0e2e Steven Rostedt            2012-05-03  9417  	INIT_LIST_HEAD(&global_trace.events);
067fe038e70f6e Tom Zanussi               2018-01-15  9418  	INIT_LIST_HEAD(&global_trace.hist_vars);
2f754e771b1a6f Steven Rostedt (VMware    2019-04-01  9419) 	INIT_LIST_HEAD(&global_trace.err_log);
ae63b31e4d0e2e Steven Rostedt            2012-05-03  9420  	list_add(&global_trace.list, &ftrace_trace_arrays);
ae63b31e4d0e2e Steven Rostedt            2012-05-03  9421  
a4d1e688230339 Jiaxing Wang              2015-11-04  9422  	apply_trace_boot_options();
7bcfaf54f591a0 Steven Rostedt            2012-11-01  9423  
77fd5c15e3216b Steven Rostedt (Red Hat   2013-03-12  9424) 	register_snapshot_cmd();
77fd5c15e3216b Steven Rostedt (Red Hat   2013-03-12  9425) 
2fc1dfbe17e770 Frederic Weisbecker       2009-03-16  9426  	return 0;
3f5a54e371ca20 Steven Rostedt            2008-07-30  9427  
939c7a4f04fcd2 Yoshihiro YUNOMAE         2014-06-05  9428  out_free_savedcmd:
939c7a4f04fcd2 Yoshihiro YUNOMAE         2014-06-05  9429  	free_saved_cmdlines_buffer(savedcmd);
2c4a33aba5f9ea Steven Rostedt (Red Hat   2014-03-25  9430) out_free_temp_buffer:
2c4a33aba5f9ea Steven Rostedt (Red Hat   2014-03-25  9431) 	ring_buffer_free(temp_buffer);
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9432  out_rm_hp_state:
b32614c03413f8 Sebastian Andrzej Siewior 2016-11-27  9433  	cpuhp_remove_multi_state(CPUHP_TRACE_RB_PREPARE);
9e01c1b74c9531 Rusty Russell             2009-01-01  9434  out_free_cpumask:
ccfe9e42e45123 Alexander Z Lam           2013-08-08  9435  	free_cpumask_var(global_trace.tracing_cpumask);
9e01c1b74c9531 Rusty Russell             2009-01-01  9436  out_free_buffer_mask:
9e01c1b74c9531 Rusty Russell             2009-01-01  9437  	free_cpumask_var(tracing_buffer_mask);
9e01c1b74c9531 Rusty Russell             2009-01-01  9438  out:
9e01c1b74c9531 Rusty Russell             2009-01-01  9439  	return ret;
bc0c38d139ec7f Steven Rostedt            2008-05-12  9440  }
b2821ae68b1448 Steven Rostedt            2009-02-02  9441  

:::::: The code at line 9337 was first introduced by commit
:::::: 07d777fe8c3985bc83428c2866713c2d1b3d4129 tracing: Add percpu buffers for trace_printk()

:::::: TO: Steven Rostedt <srostedt@redhat.com>
:::::: CC: Steven Rostedt <rostedt@goodmis.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003271330.DeDFOBJ8%25lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
WADQWK3V4PZgBRIQ9+T/BQY5ACgg6gEA

--5vNYLRcllDrimb99--
