Return-Path: <clang-built-linux+bncBCU73AEHRQBBBH4T5SDAMGQEAJWDVBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D503B719E
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 13:53:05 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id b3-20020a17090a8c83b02901703601b0afsf1660496pjo.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 04:53:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624967584; cv=pass;
        d=google.com; s=arc-20160816;
        b=pOgCOBNayAZ7mszLYiIdb3AkEHc9uhRF0/6eThrj9w4P1+lhdK//98gsieKBSGBuy3
         XqbYonicFrOenFnbzMJqOi8WkejTrMl4XGmb75oP/qd6j9A2/WhRU3JOG3njaIalZI7O
         QzKZC5uu3Xe/6QVdzddjWBd8UK7I+lTNJmW7XxLdqmfME/UfT+9v/9gemPcVfzdNZPoQ
         UsrD8nMdvrGqsNssmirub+5KgYtYQL+kJetQfAaYLb9KbkWHWb/YOtlEio93GplAfd3Y
         dgensYiiG8GBW58C5m2wYbUiqsAuoDCuxxrLBwUEG9Ndl4kYzCV3WrXoHjnObJoFiPI2
         A//A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=kS4B1BBBrvFeAQF6GapynDycrtLYCAsuemQy9x3/LBA=;
        b=Espa0K5dZsbequRSf9SYEhV7PIwpDNZ+GF2LQUjpQLWsd5fAlafAnGDSNarJ+To9KI
         JuLhO7nGJXGkvLAsaaiceVgz2WI+leIWqc6muXwq+iD1fhdmzUrIbn5COD/evs5RUbzt
         VutIyzmy76NqXHf2TS9eWCXwfYAv1ibW6O95baYXQELab8FbW+rkHMsZTGpA4iu2VYo+
         cFNb2salLTgcMeU8vIjy8OIp2w03H5YD2nn2Jn73aZK+ppfDwOLF6aD2/4/dE5RwX+kZ
         umzGYFpA0cSO4qnkw82FWQzMr+LvaXCt8Crhgs7kpswbdd1iDO1GU/MQZ0pfam6f4i+c
         Ke4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=sbar=lx=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=sBar=LX=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kS4B1BBBrvFeAQF6GapynDycrtLYCAsuemQy9x3/LBA=;
        b=cJgTmR+saDULgel0xFSe86DG3h39gb7bm8BUnAaHDE4ZX/mBDVmKfdovb5HMi4otvi
         vLKyVQiWm+h+7FQXy0BeaGIJXTegf/oOxEP7HivvSVhJGDitsU7W99d087/2RoqIz8Vd
         iuVrbQr4STY63+2jd/e57l7pGBvBrb5BEwToRaTUn5krXetwivwHsghTIn6QdcJBFQhk
         ga1rqaobWg4HPP+ub/pem1IzPmOTwoKzb5QD9NE+ra20DyCwnNPgnxC2hJBCKBdDCl8X
         tCqoIQrPc90/ff0dkyciHjGdZwOomTfVIfp9gt13ZQXkh4qUJauGvv6lOzJUUKdU3axy
         RAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kS4B1BBBrvFeAQF6GapynDycrtLYCAsuemQy9x3/LBA=;
        b=UCTsRXOLqieKCwgau8GNHWaUQDrj8FS/EmKHG7OpF86GVdpF/t5mohkmZPrhmDydRY
         Ga9inGuANFLetAS6zzs6r970SG54k3bKSJf4i14Kg1Gwx9G3uETa8IXKJC9okn498fJY
         0bqi4R+9D1MNQkMbqoQpC338oTayWuqdBiBuGvyPj3tTRCpaO5oBqjOwTEh7WzO85WrY
         mbCoZs56QRo1j8Wtv6ZlIe9j1xv1XDTCw65LMR1NvY9y8vApLmttbOmHi+pe0WnB83Td
         viE1wJe0f2UlKqx4sysAJR/Y99nHY049w53KuN8IOAj3k4F47DGPTdB9kC9ejIQO0UR4
         2UCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vp+aIdd98ngsgEOR/Xl0fITCv4n41FMKt/jmm3ksxlSF6t0lH
	909L457jlXC4/raa6t1Ppi4=
X-Google-Smtp-Source: ABdhPJwsAiBLNXvPXAdDH4NldJsc/HjiDuFDEpK67CkN2LCH/EIM7zG/+MQfQwizcnQ+KDRHIrCfsg==
X-Received: by 2002:a17:90a:8589:: with SMTP id m9mr42648482pjn.168.1624967583912;
        Tue, 29 Jun 2021 04:53:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4d0b:: with SMTP id mw11ls12703909pjb.1.gmail; Tue,
 29 Jun 2021 04:53:03 -0700 (PDT)
X-Received: by 2002:a17:903:18c:b029:125:b183:798f with SMTP id z12-20020a170903018cb0290125b183798fmr27313750plg.24.1624967583297;
        Tue, 29 Jun 2021 04:53:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624967583; cv=none;
        d=google.com; s=arc-20160816;
        b=oqFCrIo0RsXBp1a6R63IEgUBX+fCOn3+KXE61oE4J+UCLDj71+Nr7jNHd/OQNBjwFF
         wKYbOgNJdi3YFzbL8vYfb3QV+msIoLAGUGEN9hN9va+L98N4i2mg0t4QVru6SHrpGj8K
         2jAWuTqff+pR6XtpArmdmQg5T6oh1WXgYDbVNolN9x5ibAXCZ7aaV7d18U71QY9Sz3vL
         GBv0kS4l2gAipxaLaLMEZ6+PUCctWSOf1b0ffmnmrGs8f+v85F35vt/CYUt/NDQaYDvJ
         Nl3locv5EHa57Eo/tdlmAfFVt+S0zR8/lqapE4vmvl1UO0DIwUmQPwC/xSweN0SUIJxI
         K+SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=TVDjT3fyfDpo3OpwVT7TFPvdsNI3d95dQEo45i3M/6U=;
        b=TF6rDBZn6vuldcHAw5Oz3pLqDgzAY0a9HPfSh4Te1q41cJ1fQZ/8pKttvEuunfxMw2
         jBew+iqRgcsk/Yz/uoHdGEX5NjeJoUZgYzDFwxP2GS6bpVCL5tM3wGjMJwFor17xkcsc
         I8oRZ3WQyDpCmkVedjx4w8G5jFbxI6fD8zTbcsz5Zu4clMgb0q0VFNXyHC2XRdHr2BS9
         7EqwFjKmI3eedaljP5amBv8Iu4cb2L/O4tE2B+E7DjKI5FjHA8gXGtjcwNG7tae7rRPL
         3tIlWEUrhI4LONNmBePWvys2JqRyzGaDVgMkyxZwPglB+ShfGtnfqVvjafHDhC/6YNsX
         RPZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=sbar=lx=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=sBar=LX=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o20si1845174pgv.1.2021.06.29.04.53.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Jun 2021 04:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=sbar=lx=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 847F16102A;
	Tue, 29 Jun 2021 11:53:02 +0000 (UTC)
Date: Tue, 29 Jun 2021 07:53:00 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: kernel test robot <lkp@intel.com>
Cc: Daniel Bristot de Oliveira <bristot@redhat.com>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org, Linux Memory
 Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 12896/14055]
 kernel/trace/trace_osnoise.c:438:6: warning: no previous prototype for
 function 'osnoise_trace_irq_entry'
Message-ID: <20210629075300.177d5e47@oasis.local.home>
In-Reply-To: <202106291957.ayo0oPv1-lkp@intel.com>
References: <202106291957.ayo0oPv1-lkp@intel.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=sbar=lx=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=sBar=LX=goodmis.org=rostedt@kernel.org"
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

On Tue, 29 Jun 2021 19:10:01 +0800
kernel test robot <lkp@intel.com> wrote:

> Hi Daniel,
> 
> FYI, the error/warning still remains.

Really?

These were reported on Saturday (some people actually take off on weekends).

I don't push any update that doesn't go through my test suite, which
usually takes around 13 hours to run. I received the fixes from Daniel
on Monday, and then kicked off my tests. Which *just* finished!

Can we delay the pesky reminders for at least a week?

-- Steve


> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   73748627df83aab934c81332ca83a44ab8c7b3e3
> commit: bce29ac9ce0bb0b0b146b687ab978378c21e9078 [12896/14055] trace: Add osnoise tracer
> config: arm64-randconfig-r023-20210629 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project aad87328fabff9382bac0b452c83934515e6d0c8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bce29ac9ce0bb0b0b146b687ab978378c21e9078
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout bce29ac9ce0bb0b0b146b687ab978378c21e9078
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210629075300.177d5e47%40oasis.local.home.
