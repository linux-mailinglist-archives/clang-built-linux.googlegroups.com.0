Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB6F76KEQMGQEFKR2HKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3143A407693
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Sep 2021 14:24:25 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id d10-20020ac24c8a000000b003dce50ea2c4sf2232265lfl.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Sep 2021 05:24:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631363064; cv=pass;
        d=google.com; s=arc-20160816;
        b=eOyeGyf/CRXmJq+8hvuNeCXnBX4x+ApdY7i/SQui4nv8A2x+L9ecwX2sOHZC1PRFy7
         376WoaNZJq+bpgAfMOb1RqRs8ZuD+65slnvY32+P4KU1zmtXETi31mcAczTY7YV0BWxR
         cU+cpOD3TgYO6CC+Ke9fYyoTVEl9WpLx9x9L8a8n+tkUaeMPQDhOSrx6Al+wqqyLrj7Z
         6TjDWVU2y73v2Nby3PzTDqtNmKN0akWYF1EzDnGJgQwWfA1DqTNIEnajb1UNAOvmQhqh
         SxxPz6aRGPk0BnAYD8b4MR+lkW5fG+iOPiJtI1ewJIzSsWPCbhvJT+ctLqG360rhz6jY
         Rhnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pHlOXPFJ1vsuYvS3WkpxuM07ZMTGiEjI79jgKOZ3IMA=;
        b=P2qHbwEwE0CdiJzkwBP57/QskuVXzUmDZquG4QqdP1OLtDeqf6GcLlQc1rD7TQvXbC
         Ms1Hphn3BYclDJVGzX+7Pbmg8779rrYLwiqOcMlHEbY45bvS2ZX9IvWH9OGsf3Y+Bhob
         gk71nlzu4IpMm0RlPzLA3c4SzVAcTBWliAQSG8lpx0CTmc/x1EThDpxuI8Y/VbmlLPNB
         qpSPIKnGr0n8V1MOik8QyYeQZZ04klc6gYMFNT/1VqwuFWMdFJS0KfLmfryAcgXP83h3
         GpOcxIhfdQ9ukj2TfIMpp0BccbmJnupFcUbKJfhToC3pxR5F0CpRxHCcKT5lP0z++Qv1
         EISg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=c3D7KRum;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pHlOXPFJ1vsuYvS3WkpxuM07ZMTGiEjI79jgKOZ3IMA=;
        b=lvp8wV42uvDOfG+jxN5+hrFOR9IsaksUJN2TN33bsapQOzA/z3g/70rfo9dBOAmK3A
         ShrqAuXfHJokKbZzV/xqUMt4iXm+q359IymezBgFnp6uEremr7+L9MWKwFdJBqEpTbsz
         Q4B8A5wZTz38WefssDDT0hH8uhHQi2p23nub5pR+inx0IwsP3M987OLXBYIYlVQLxjgN
         3w8remCRgEKhLx79ICBS3ajJ0ysml2ZeMPOV0UIrBET5BLM5SSr3zAr8/YZT2/AAKvlb
         SOyCrPhN5WBa5f0D7kOLAg2BTx5daO21hLlDW0e/RV8tfNIx0iGWW+uIKogRk5/Wy38j
         wFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pHlOXPFJ1vsuYvS3WkpxuM07ZMTGiEjI79jgKOZ3IMA=;
        b=HoCtLi476IBInSzae9jjG/rgmuywKRpZ46neFGYPH+Bvc7bbiBomSVikeikfcHt6dY
         /IE0Jwi9SVUPRQ5Fzhl1aK8/PChUMJR9cHp+WkAvTDSLfYkrSKwhtICJi9lHPF7eDHuo
         uMYqNGNmotwjLQJxXu/rwmliiOsqTUgeGcgXyWVHdHyh3FtX/wSS1c47zEp58uCLGbQK
         ehs8jeVIHEREm86r0iO2eyj0D2KNkBDwRbcKIU0H1w9xOKT+W7fQDEIYirqXqSw39kDw
         VHH7nxM7x8P1TiSBkAEPAe2O3aMdKyVRI2rtV8sKu2iP6dJMJ67iCfbC/bbqWSBTVKXd
         vmqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cgLxwwW/0DNWShFqmY7WzGYJp0gr5caFqWLgiaOzCc8JSE7VA
	rKiWypQvodHU/IxsgbMj0ss=
X-Google-Smtp-Source: ABdhPJyaTyfiPiBBXb3F5GiTxocRfu0lW4Ry8Pj5WZhZahXik0ooFcUoRmsW40JUT5nbQcCay7lUsQ==
X-Received: by 2002:ac2:4db9:: with SMTP id h25mr1971878lfe.298.1631363064724;
        Sat, 11 Sep 2021 05:24:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:13a9:: with SMTP id p41ls1057387lfa.0.gmail; Sat,
 11 Sep 2021 05:24:23 -0700 (PDT)
X-Received: by 2002:a05:6512:169b:: with SMTP id bu27mr2029719lfb.578.1631363063760;
        Sat, 11 Sep 2021 05:24:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631363063; cv=none;
        d=google.com; s=arc-20160816;
        b=OjMfLWIl8CKK7mHeh2d+VcGKSv1k5E9C6usjUNjazEGM0BjFD0NZAUDbH7jyMnk705
         Tu1/yluRNEeQZ9JmRhIAVMf/NWhvLr2LfyLksdW4rD9R+ain8evgauf8QzJ+x/LkYzro
         xJOUyCt3GgG2piBEy5TQIESHJcZiUCarAyb1wws5uG8c2YbKE/WcCuy0bL+1JnpIrghB
         nOi4yWNcZoUJi3Pm3e1cc7j/b99sqqwaD7s9W4R1mAUrjcL3/jE9W94+An3evSpiNFXu
         ucWbYbkngESaOQmdx8EsKrM8DfWHu1jVfYh4KeHigWMwOP9a+pnpOgQwxoUIDPk7QSoK
         DaSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oe2/Kltpm9QvzVcCViYPsuS3iZQ1CLBgukRDQOqq9mo=;
        b=Oxzjr03qILw9hbWal7Lda+QrykSgdZL9dQawVkXj5YtRsG3yMRabZqYKiua4/wPh3E
         LAJC69i+TXPBYNfmm3c0o8N8bZ/eapwf+zyZDK1ZMCemGOff+2L/z4U8t+rxeXVYKnW6
         vlFUoDuQZUYk0eN2iIBgitFmYHtE+ynyZmaryAz+vQJwajMXhHR+qmX7EQ/gl4mvZwsf
         6UD3dA2j11OOmrm4ca+MiAbZLQ39NUTZW27JOodlNUo1FCnN6NNoSox1+WG+gLvF/j1l
         qL3SDPVBts3gd8AH+uNZZtxMC4IiXBd3TLCsvd2TCN5Mm1RbWqeLswsfvITuyfB/wCHA
         eKwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=c3D7KRum;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id z26si113784lfu.6.2021.09.11.05.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 05:24:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mP23P-002N7z-Fo; Sat, 11 Sep 2021 12:24:19 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 163129862C9; Sat, 11 Sep 2021 14:24:19 +0200 (CEST)
Date: Sat, 11 Sep 2021 14:24:19 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Chen, Rong A" <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, Will Deacon <will@kernel.org>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Valentin Schneider <Valentin.Schneider@arm.com>
Subject: Re: [kbuild-all] Re: [peterz-queue:sched/core 8/11]
 include/linux/sched.h:1722:57: warning: unused parameter 'dst'
Message-ID: <20210911122419.GY4323@worktop.programming.kicks-ass.net>
References: <202108210940.aD3d42zA-lkp@intel.com>
 <YSNkCAyMU0tJoedT@hirez.programming.kicks-ass.net>
 <428f3e9a-a8d3-51ca-5e2e-caa50b8da3eb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <428f3e9a-a8d3-51ca-5e2e-caa50b8da3eb@intel.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=c3D7KRum;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Aug 23, 2021 at 05:16:05PM +0800, Chen, Rong A wrote:
> 
> 
> On 8/23/2021 5:02 PM, Peter Zijlstra wrote:
> > On Sat, Aug 21, 2021 at 09:20:50AM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core
> > > head:   234b8ab6476c5edd5262e2ff563de9498d60044a
> > > commit: b90ca8badbd11488e5f762346b028666808164e7 [8/11] sched: Introduce task_struct::user_cpus_ptr to track requested affinity
> > > config: i386-randconfig-a016-20210820 (attached as .config)
> > > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
> > > reproduce (this is a W=1 build):
> > 
> > Dear 0day folks; could you please blacklist me for all W=1 build output?
> > I'm 100% not interested in random compiler generated garbage.
> 
> Hi Peterz,
> 
> Got it, we'll do that for you asap.

Rong, I seem to still be getting W=1 build warnings spam. Could you
pleaes have a look?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210911122419.GY4323%40worktop.programming.kicks-ass.net.
