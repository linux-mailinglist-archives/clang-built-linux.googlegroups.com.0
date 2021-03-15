Return-Path: <clang-built-linux+bncBCHPNUVGUAIRBTWNXOBAMGQE4FRSNPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9157F33AA8F
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 05:47:10 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id s192sf7617960wme.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 21:47:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615783630; cv=pass;
        d=google.com; s=arc-20160816;
        b=GgVJL1DlITIHSqFOB8pO+l18K8z/g+dgjKqyCliZ9Xbnes9os5fMWF8KNmhmIh6q50
         dRuMZLSij/6H8paG1Ay5UMNJ05x96w6g5/SfKMANRSpTrK3miHcXdW3BYuyMyzqJhPOb
         v8LeAatip202b7S1dwBNkqhdSysoCh1WYDGoKlHLTQvQMNaTdMeehIWDhUz+x19zcYny
         tnkq6Nwto8N+rGYY8AGhM1w9cm/WI0+AnT+UVLH3w0a4b0PivAPwQd+bRMiRq7NX5EsR
         cCLniMID11Oq/x1nnDQ6F++y7SP/hfxzh2ZhYt6wIt/cwvPD5OxpKGQ+KgFMKT6M11UL
         DdaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0nnuDRKmZFvGaLpHV+W0zBG0eQVg7wt3y+Cv7l2KLk4=;
        b=c37SPDD+QGWMfra2GG7NrzB8LQD8HegOLNotRECOZ11zgTPkYkn9WcR7yf5lO+81Ly
         m5dS9L+O8MKbNOIDPI3CTWMRBa1Ln1qyGQ6dByHEx0QV9vnJt3dv6vYMpMXu5DVSwpdj
         Gy85qcVTVhX8HdLwJN7qJVdEnYPoMk0vt9pS9g+6APuNtkmS87oP5kNXbB1kx7U1oV3I
         sXnWLQcUgJ8hhlTojs31uqlyxIKh6OJO0Q8eXxczuIZP/BoiIh2fafCYSpsIpls/l5N2
         YbPNjdSJDPGh68fBpoit9o3cL72DAtzTpIsG/Y2UC9STrcc4z8q0GvhegWXUmxlMUIDB
         bMvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dQ3xnqHB;
       spf=pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nnuDRKmZFvGaLpHV+W0zBG0eQVg7wt3y+Cv7l2KLk4=;
        b=JOdiB8AVZInI3KC8y0O3Y+BpjgGeksHjnus7ep/LQujiG98T7FAkz0W6j9lOUajhfj
         u25ft9jmvSqRtpmKZFzLDjBDv2nN2RRcMHBYrQdFuULyK/j6i9vFcIDwpthadeOCUp2Q
         bRVyvPJd8t48MSMIggRJjeyllbRZcvfkFA0U2FBcglqQii/ZAWBUc4vfhLtG7Jh2o/KB
         48WsMHqCAGicwCvtVtUgG2h2XfJZu4kdi4eWJk5AqwZLuBinZJRFPNyfokaOyItgYiz3
         N+ZRfbhLDuA4b5qYNGLNVnnxjhbBedcWBImbQNFRVzQWCfn81Zk52K2o1TIgHgL2xJYF
         pWng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nnuDRKmZFvGaLpHV+W0zBG0eQVg7wt3y+Cv7l2KLk4=;
        b=t9CY9/gxvqjHEU6oTg44F3qrPogAk632IyvVNYdrMpMJd/YcXYHfc8nTJvKllAitYM
         4zUELac6nQemzMtRGcb/PLoch+AuB48qSounAe5c+6fVmGyuo7fg6sjnIyLzmHoF8BX/
         HiCzogcPFys6w6dXBzDSohbNr4ik36yMsZheJeov51BZtfSNLUn9135HokZknzEBfIj5
         GU+z1m7c7sZyWJPwmPjNsZUYKrH/+laI34pU16ngKIPetvx31f3GghjCXtZNcl/AJpyo
         3GvgEf9K9/Gi2PXHQN2lEjD+WLt6dCVlB5xxaEwPP2GLkshXMAW/pfUlYP0unilwn6Po
         gLrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fNmD05EmJV7P2Hkl48Q1hmFsB4me7WMVwklI/7RjYs4v4u7tO
	+u7LfzjPazvUdP2LkEfv3vI=
X-Google-Smtp-Source: ABdhPJyBmgQOvtnROFyYxKDOj+pJU8lCMx+E27jRYmJgVE9SGL+URQOfchPjTSA87VRCgCQ7SDHt+Q==
X-Received: by 2002:a05:600c:287:: with SMTP id 7mr25074866wmk.23.1615783630298;
        Sun, 14 Mar 2021 21:47:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1986:: with SMTP id t6ls1187998wmq.1.gmail; Sun, 14
 Mar 2021 21:47:09 -0700 (PDT)
X-Received: by 2002:a05:600c:2cd8:: with SMTP id l24mr23922837wmc.88.1615783629420;
        Sun, 14 Mar 2021 21:47:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615783629; cv=none;
        d=google.com; s=arc-20160816;
        b=tKxdqwsJU/Z3sKHJ4eweG6YoDGklVCnTLNPbijjO7Rolnk7I+DVpUK6ZhbvKXK0VmK
         pvO6DpVF6yjpgqvg23bvVnVB3SqCBtFY0pznxVMf1jm78N3FPBBCKQAnPjBgD7AvOGnL
         ZeYbt9XqTdnX49TbBESv9gMbB30NsEMCcJMNdbqEnfojltcQ34J8ahmkJo0WFyvxioBD
         c/H7UQj40Z019qisphoaeYL1YpcXHwokamhsRRzERsb501mw+F68APD0QSwjwmdcF9Hr
         RXxlCh9QbPheQl0eGIJ2GalDF2Ra1E+J8WHxRTG7HXmEZlOlz9EKbdUu2v7LV0AgjR9+
         2+6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v2h/VOSXPHQhGsHyWSYjsc+WH6/EEqTpmnI7GP3IJig=;
        b=w5RTdYtaBiIr8KOiJSgbWvsXGAuVZt4pdr7ZaMKJdYK8ligGRD0h8j4SN/5Id2Zj/B
         CRwOzH4ZkrZj4H0sJF6WscHumnIwtpT+aVmLuR3wZp8TSY76mKthiohhHyOrtgvWlOiq
         l4RizOXg7nV0TUC1IHaaskZi+YYAuD5X7/qpLmmHWh2PEDIB/2SchTI4zxUM6JiptHki
         eFGj/DqApteJnk+rkDxdvsa6b2fu7o+kIrBoEKB3P2zZCmTqc3uJgYvVNzKe5k8223Fx
         6wq75WGqZS17hazLi1bC2gvv8j+zpdMwspKf4EfdWrtjcMG6xiZZDQ5HJgU6Kr4su5Bv
         d6Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dQ3xnqHB;
       spf=pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id p65si935856wmp.0.2021.03.14.21.47.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 21:47:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id v2so41745361lft.9
        for <clang-built-linux@googlegroups.com>; Sun, 14 Mar 2021 21:47:09 -0700 (PDT)
X-Received: by 2002:a19:6109:: with SMTP id v9mr6934733lfb.546.1615783628804;
 Sun, 14 Mar 2021 21:47:08 -0700 (PDT)
MIME-Version: 1.0
References: <202103140024.AKbZvW9a-lkp@intel.com> <YE0VXyEbYj0wNB//@kernel.org>
In-Reply-To: <YE0VXyEbYj0wNB//@kernel.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 15 Mar 2021 10:16:56 +0530
Message-ID: <CAFA6WYN0Qzxn9VN5s5Jf2ZP=W9qwn5sbF66VEP35c8KugSe9JA@mail.gmail.com>
Subject: Re: [jarkko-linux-tpmdd:master 9/12] WARNING: modpost:
 vmlinux.o(.text+0x1176e44): Section mismatch in reference from the function
 trusted_tpm_init() to the function .init.text:init_digests()
To: Jarkko Sakkinen <jarkko@kernel.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sumit.garg@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=dQ3xnqHB;       spf=pass
 (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::135
 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Sun, 14 Mar 2021 at 01:11, Jarkko Sakkinen <jarkko@kernel.org> wrote:
>
> Sumit, I applied a fixup for this.

Thanks for fixing it.

-Sumit

>
> /Jarkko
>
> On Sun, Mar 14, 2021 at 12:08:29AM +0800, kernel test robot wrote:
> > tree:   git://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git master
> > head:   cd18a1dd7b57c78927fbe9c9e86823c54d373961
> > commit: 251c85bd106099e6f388a89e88e12d14de2c9cda [9/12] KEYS: trusted: Add generic trusted keys framework
> > config: x86_64-randconfig-a011-20210313 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dfd27ebbd0eb137c9a439b7c537bb87ba903efd3)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git/commit/?id=251c85bd106099e6f388a89e88e12d14de2c9cda
> >         git remote add jarkko-linux-tpmdd git://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git
> >         git fetch --no-tags jarkko-linux-tpmdd master
> >         git checkout 251c85bd106099e6f388a89e88e12d14de2c9cda
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> WARNING: modpost: vmlinux.o(.text+0x1176e44): Section mismatch in reference from the function trusted_tpm_init() to the function .init.text:init_digests()
> > The function trusted_tpm_init() references
> > the function __init init_digests().
> > This is often because trusted_tpm_init lacks a __init
> > annotation or the annotation of init_digests is wrong.
> > --
> > >> WARNING: modpost: vmlinux.o(.text+0x1176e65): Section mismatch in reference from the function trusted_tpm_init() to the function .init.text:trusted_shash_alloc()
> > The function trusted_tpm_init() references
> > the function __init trusted_shash_alloc().
> > This is often because trusted_tpm_init lacks a __init
> > annotation or the annotation of trusted_shash_alloc is wrong.
> >
> > The below error/warnings are from parent commit:
> > << WARNING: modpost: vmlinux.o(.text+0x174f8f): Section mismatch in reference from the function test_bit() to the variable .init.data:numa_nodes_parsed
> > << WARNING: modpost: vmlinux.o(.text+0x174ffb): Section mismatch in reference from the function __nodes_weight() to the variable .init.data:numa_nodes_parsed
> > << WARNING: modpost: vmlinux.o(.text+0x17502c): Section mismatch in reference from the function __first_node() to the variable .init.data:numa_nodes_parsed
> > << WARNING: modpost: vmlinux.o(.text+0x1750b2): Section mismatch in reference from the function __next_node() to the variable .init.data:numa_nodes_parsed
> > << WARNING: modpost: vmlinux.o(.text+0x174f8f): Section mismatch in reference from the function test_bit() to the variable .init.data:numa_nodes_parsed
> > << WARNING: modpost: vmlinux.o(.text+0x174ffb): Section mismatch in reference from the function __nodes_weight() to the variable .init.data:numa_nodes_parsed
> > << WARNING: modpost: vmlinux.o(.text+0x17502c): Section mismatch in reference from the function __first_node() to the variable .init.data:numa_nodes_parsed
> > << WARNING: modpost: vmlinux.o(.text+0x1750b2): Section mismatch in reference from the function __next_node() to the variable .init.data:numa_nodes_parsed
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFA6WYN0Qzxn9VN5s5Jf2ZP%3DW9qwn5sbF66VEP35c8KugSe9JA%40mail.gmail.com.
