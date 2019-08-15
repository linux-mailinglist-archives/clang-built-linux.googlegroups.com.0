Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIG72TVAKGQETHIYAJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id F065B8E8D1
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 12:10:41 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id t14sf1284961pfq.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 03:10:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565863840; cv=pass;
        d=google.com; s=arc-20160816;
        b=YsQ3xaXeQiGmIxlVSbJNjbtHL+nzTQKXWSOfTngxFwRxK5pZuv8g8zo+lOi4qOENvj
         i9MsVkBbYkbpi5EztPNbXVTfX6MEztr+BWgwSIf7DPv1gSy9sXzGTX1+jwl9s57c6D4y
         L8xHPpRgRoeBWIFtazAjfIaVgqcuyo5SPsAvH2xdOLSP2L9x+/vzCgNWUAWMx17BlFiO
         OgT0eUTBtXGcXyHIIeSw+JnhEmdW+2gPG+vlVPTdTOFqS7qRrv25XQDmNSA9hPss9LeP
         N0iW9/UVXAXIuH9Dhmh16dVAqox6JnY4WNwyMk8ZKCIJUuWt7Eaiuy3NHeFXQWduKPMC
         dNqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=w/kg87yeBCQlP6pu8s61rZ3FqaM5eYc/2/2I5SXQeUE=;
        b=mqlGrsTV8ycMhR7hS3/KlN92Q9XPv0E1ZIYmNE8Ea1f5gYdwg5mpxjSuuNjhQKbHBm
         AxfHQPOUJYhci0HTBINe52GPvEO6EbUnuBEz0XHj+0NYhJsNrGtOCbTk+4zWYdsbl5Bv
         R1tLhvwbRZyEZtAl4gmygu0zDDvOuU3N1I85odApWFF4fzFXT4F4hGYLvOiEchRbOD4x
         HF12B7JLleBXj1ijrhkrx8pV/agPqhgk8MwbGWDgBuunRLAq1fdv6jA26AKudFTJsV4N
         rLM13TQbC+iAwFFz8Y8UrV5B//IDPED1YXpbPExspKtEYw6dyFL4aKIofKfw6KWnLXSC
         yyqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w/kg87yeBCQlP6pu8s61rZ3FqaM5eYc/2/2I5SXQeUE=;
        b=XtVZrbXsUm2EVHuIlNuJ8Lj+ze1cBEdV0MOjKQAEj2kZJisopQl9FxKRGluSueelHH
         9djbuZA1IXTvnxkZTYsGTcZsgU/L8hHCGKPUyoCShSszcYb38J6w3V2oL2Ng9fWsWhLD
         WN8R2SQRQoiOywH+jjacZZTsF6KwlodFbF8DsZl92CnVdSj4zSqambKisxlvTcBv5D6o
         HZqbGcjJCDwV4xg/esZ8GN4FFrByBrsyrWF5luoz8KTqavgXa6i5uT0Nt+vubBvgp8Xs
         TuCGO0hyzepKhsYGVVHrlH0Q/jtdYnWXoK97aJ+rv0oddYn2dsLhU3NmUWWVH77UNGIz
         My3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w/kg87yeBCQlP6pu8s61rZ3FqaM5eYc/2/2I5SXQeUE=;
        b=MhmJNXtkusU/tBsUhUggRnup/3h1XwgX5N+sfKN8LmN/47vferPxBxnq95dI3qf+S7
         asSBXdGuy3xyqN+M/TGf/T6bRDnaFOX5zMo+0sTOv0XPdEDvdNAPsqN16w1suAKEuWMH
         veZLgp8+uscMr+l3PRP/D2VE1K1WCCb4/HxBIRvTuG3ZcUIP3JJRfoFW5c7v2J49b5i5
         O8AyzXWJLBEtZ7xmzpBfUihFI1UoJMsLX0ogtF3cKcbWtyMsUu2Wna9S572DcIgahpXi
         oJVBohj0LHJlRPWixnhx2L/heuaDetvsn2pwW5ItDii9Ek3xibeGNQqjDi3thUIoVaBm
         Puuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0u+xyT01ZjJVNqoAnVGrx80vThNDo23P1u+jUoG95fmnOrZho
	0hewiVgatyyy1KYeUPDXAl4=
X-Google-Smtp-Source: APXvYqxyK4MMpmr/WSQr3vk7RPA6yDDkfVUykhx7zeCnWddgsTid7S6ZQO4V5UruwU4iogxYIvfoig==
X-Received: by 2002:a17:90a:9282:: with SMTP id n2mr148407pjo.0.1565863840496;
        Thu, 15 Aug 2019 03:10:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3043:: with SMTP id w64ls1038216pgw.15.gmail; Thu, 15
 Aug 2019 03:10:40 -0700 (PDT)
X-Received: by 2002:a63:ee08:: with SMTP id e8mr2992264pgi.70.1565863839959;
        Thu, 15 Aug 2019 03:10:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565863839; cv=none;
        d=google.com; s=arc-20160816;
        b=xAh6J3PO9TxI8h/YDTVlwS2X2Tce1Wml4HepjOgA9ayzvKUFmV/hXCVDqzGqA30soL
         SxaU9kGC+p3HcQtAl+O0HkC//JGKwh2J9r53hQ+rRptd6B/SrdLw72G9wgf+DEuuB8wQ
         hGtGvHAo8cwnd8ps6Gq8UszPnMJcEaefZ5Tsd4EtnnjcOla8kt8sMsX88bRIvFBvDNpv
         m+upn1W7KVhs39HHmAAn04fmseza1tbr5k7WuCTPnpAZExC6mQjDN7rSipgEWDcl7/kA
         CnaubxMVlN+H6Db8GdnM/GL+tAinA17E4IA6k8ci76RJ8NeE/9eaeO6loWaG+bI7zJp9
         Drfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=EO5JmjyHmU+SLzWYTe0Tc1LqfFTQRbSwrr4lJ1NMY8g=;
        b=Ic1TNEoICRmDesrwwFiMnRmQ4pI1F9Rt5VV+x88PMTKW70DlJOKEfj1cyonQrGWvo1
         e2yx6Fjco30S4NBwnZOWw4AUyHieI0eNNpuiEuFkM1pYLtCKcThrlBW6EG8PB5y+klq5
         0KY2wdvfCWjVWxPVfIYk0jY+AWQDy/k6qnqjo+ePBj2mIs6FJAZx3Em+cMwbsk/YcLe+
         K2Gck9Qj+nc715EaoJfrRmO42PN71ms6Dufs8pW4FLL0nGXdQz5DuklasxTyPm7WebdR
         fQklcaCDB50KOivvzKhx4F0FJW27z6yStRbS3rOzcgORijOtYPfLLI/Wmqt/bEASlbLg
         E1cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id c11si24813pjo.1.2019.08.15.03.10.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Aug 2019 03:10:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Aug 2019 03:10:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; 
   d="gz'50?scan'50,208,50";a="167707428"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 15 Aug 2019 03:10:38 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hyCiL-000Hln-QS; Thu, 15 Aug 2019 18:10:37 +0800
Date: Thu, 15 Aug 2019 18:09:51 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [chrome-os:chromeos-4.4 34/35] arch/x86/kernel/irqinit.c:157:2:
 warning: if statement has empty body
Message-ID: <201908151845.xO92AhOS%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="deuul3kt4nsywjri"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--deuul3kt4nsywjri
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
BCC: philip.li@intel.com
TO: cros-kernel-buildreports@googlegroups.com

tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel chromeos-4.4
head:   5a6016061c6229a93ab01182469242faac59f3ba
commit: 2e62e34f0efe804c7e229ab9ea6b259510a404b1 [34/35] UPSTREAM: include/asm-generic/bug.h: fix "cut here" for WARN_ON for __WARN_TAINT architectures
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 2e62e34f0efe804c7e229ab9ea6b259510a404b1
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/x86/kernel/irqinit.c:157:2: warning: if statement has empty body [-Wempty-body]
           alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
           ^
   arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
                   set_intr_gate(n, addr);                         \
                   ^
   arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
                   set_intr_gate_notrace(n, addr);                         \
                   ^
   arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
                   BUG_ON((unsigned)n > 0xFF);                             \
                   ^
   include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
   #define BUG_ON(condition) do { if (condition) ; } while (0)
                                                 ^
   arch/x86/kernel/irqinit.c:157:2: note: put the semicolon on a separate line to silence this warning
   arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
                   set_intr_gate(n, addr);                         \
                   ^
   arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
                   set_intr_gate_notrace(n, addr);                         \
                   ^
   arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
                   BUG_ON((unsigned)n > 0xFF);                             \
                   ^
   include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
   #define BUG_ON(condition) do { if (condition) ; } while (0)
                                                 ^
   1 warning generated.

vim +157 arch/x86/kernel/irqinit.c

acaabe795a62bb arch/x86/kernel/irqinit_32.c Dimitri Sivanich 2009-03-04  154  
2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  155  	/* IPI vectors for APIC spurious and error interrupts */
2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  156  	alloc_intr_gate(SPURIOUS_APIC_VECTOR, spurious_interrupt);
2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11 @157  	alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
47f16ca7631f9c arch/x86/kernel/irqinit.c    Ingo Molnar      2009-04-10  158  
e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  159  	/* IRQ work interrupts: */
e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  160  # ifdef CONFIG_IRQ_WORK
e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  161  	alloc_intr_gate(IRQ_WORK_VECTOR, irq_work_interrupt);
2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  162  # endif
2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  163  

:::::: The code at line 157 was first introduced by commit
:::::: 2ae111cdd8d83ebf9de72e36e68a8c84b6ebbeea x86: apic interrupts - move assignments to irqinit_32.c, v2

:::::: TO: Cyrill Gorcunov <gorcunov@gmail.com>
:::::: CC: Ingo Molnar <mingo@elte.hu>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908151845.xO92AhOS%25lkp%40intel.com.

--deuul3kt4nsywjri
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--deuul3kt4nsywjri--
