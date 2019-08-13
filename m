Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBRG2ZPVAKGQEU3QVQFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5708BF28
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 19:03:01 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id m2sf8652391qkk.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:03:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565715780; cv=pass;
        d=google.com; s=arc-20160816;
        b=B9DPaFb6U+Xd+gevuzdi5hqXxGVvt9++qVzSggfKodf+CQpJzf8TGAwK0GHXJdv9a6
         AHnZaLoSB6VZK1QekAoYtrlISFF0IJ8+9lz3E9nqxmfiqgOOpvfSv+cKntJQfdT0xVXf
         UcVlOsQQRTb/W0T63+1kcCiZTdnttWkQtq0guWgSXv6+U0eXdnRO32gtI9WufbXlf27x
         B0Nve1eHoh34IHh4pxNrSxqJ/+JAWc0s/sQ3m3IF7oz38yzmZrfORCTsu2ca+OwYzE1G
         tat0pWmnoW6xHg8gWuaVgysiUzWCv/csxQN4AVRzGBt8DfawdFL7G45WWJMJ5tGPDjb7
         SFVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KQekOK72koP10/StGVLPRv834qRBn4DUlT093nm+ZhA=;
        b=msoWkVLcgXHFwIeKB7QaDVakMgPo3GRHGEa57xeTvmbEBw0mAV7YM6TroNuHmC9mdA
         /wqAjzePGzK50P4vThpn0Yixs91WOw2XeamPxSimaFcOSW8Qnl9tvjya3q2V2KJ8nX/n
         42CakGFmfQt0cNiaVAZzzJ/agjYuf5MtMoYm278/tiuh1ys8VqIAwKQ1kGKomeHgFeVg
         ucOOOZLtWw7UTiPKP8gA42+Eu1BmTOo5/GpRQ2ErCMitXop6Rd5D0EwhzqLfdq984gUU
         rOxHB3yT0ktC38th6DopxycRsalbc+qcrjjaNNaW1bn7v3/wiisbldib0C++hhG82+sJ
         BTuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Kc5wbt7I;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KQekOK72koP10/StGVLPRv834qRBn4DUlT093nm+ZhA=;
        b=qVIpqoLUhBSVwwg3bwniC0N/wdavlrJFSdbyGOzxTOGs1EA/Ltwmk7vxViJjOMHuPj
         fCtCy3tMcfTNFG0EKc7LJvLJX8qS7lIA8s3cL2qFR41e2hvOcNPUpBYpqY4hPzwZXjXA
         uop7db/mmk8zmXxZ5aBq2SyEOXmk0RVvfptVhSRsozQUBByOgz9ysTNqGpeip9S6TL+U
         a8ZmBrNddYf/2ceJPvuVw6gWnqxp4kl6ByJcAcBIGrK7RV4guIJ0ed48bLcYBmcg6jx0
         JpcXmZseEZUaQ+Hhrk7PWMsIuWJ2lEvOAz74u9R+AD4e+W0nRNXz2iVagtbGza1hZisP
         0kJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KQekOK72koP10/StGVLPRv834qRBn4DUlT093nm+ZhA=;
        b=nnfPYPgOt/1E6EDhgml10EMOgUDy6uzsqfa9ubGUVuBYYfrBP5/L3KyG5fPDO77Kyk
         /ap89GnKgaeoE3b6q8meoWbcq9INuIlp9FEg0RRlyQWM+d+hp1SO0847lwX/SrGPvYtY
         +hMRNKsY8a6ZdnErxtAzkemEAmfnb+zfOZ3BHEUFTd9o2Rl6jBVOjB+M0wQvMUZwFrtd
         r9b6x/9wPkf/1CBanFRDVhDfLMqRIphfOGAhXQXS20BTwvrTOlIBZE4Qq6urRL3K+fmv
         k8j6fziihlUJtM/rZ+kI4/12eUuCkdZd5YWTKbYe5fe2E6i+A4GCL++5x/smojUVN2IB
         rnqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfrujouLxTcS/LbiImGfPIShZpzKKJhOFQFICIQBaRtSqTpEcQ
	N92hEUsZuqkWdaZq1t2tdzc=
X-Google-Smtp-Source: APXvYqxyrHc1B1fnyNgfQ04CogL09eKW5oy8GQa7cPeehtpJtPdtvly6EPuz2f4w3zogmJ/rim9TBw==
X-Received: by 2002:ac8:397c:: with SMTP id t57mr35128458qtb.21.1565715780087;
        Tue, 13 Aug 2019 10:03:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3161:: with SMTP id 88ls1360404qtg.7.gmail; Tue, 13 Aug
 2019 10:02:59 -0700 (PDT)
X-Received: by 2002:ac8:180e:: with SMTP id q14mr20125591qtj.327.1565715779808;
        Tue, 13 Aug 2019 10:02:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565715779; cv=none;
        d=google.com; s=arc-20160816;
        b=JLzx98Fhs1+60RhlRX3pOCeUyRkTYJljisPPXyawJUtYCmRKp9voIMOvV7m1iW2sRh
         cEpJL7c83nD6SnsExphoGe5Qqh4wMKj7GyE5IsGRkWGtkllR4PzrMzzv/TkgREzk+uU1
         L9xw7rnAuPZYPkeAbLFOpC1U/xYvwKsPBKPNCTEtyehVFfVfle4QL8Y7dDdm7yqMGReR
         mfBLV0JabsG76Ern1xG91Cdcxy1zENAFR9u7kAl5xk6fH8opA0L2eNn+6iTTgOGeXGG6
         d+xSAs3gWnXtMj47N3h0D5qfI/66d6rf9OtpxGvaEjp0Avs8VbNQTuHgyDbpPW49sbo9
         mhkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D94zi5j8NUfK44X97Abj0IJIIJQ+D2+wK76rqujazek=;
        b=OGjCd9UBuy8yUFUBzZys7JPzaTZU7CCWcNrwQ/LRTrRvI/UF/0eoBo3ByvdwpT3ces
         5GGozJ7WPcAD5H2sIFXW/cQtJgUjZ8DvaTsImGxJZMteJC3pImVay/8Sqdb07XgC2MG2
         Fw3uPhwc0Ygee4+9pBAy8PcI6Ru4dRgP+M0csx6WlVSDA2x5Wt1fQI0DSiPd7CizB9Oc
         sAQjAlcDt2Zcwz4GtwEcUvGRjOXYsJabhq46YQGk2L2rTvBjxOqtndXuBMMVguXaOeKa
         NCtCuKv55a6zP26tKHdLrXyV5+RycedsX7gs85sW/fUpCvxzIlLy1QHqQ+QqCSmmQQDZ
         WwEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Kc5wbt7I;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u47si956041qte.3.2019.08.13.10.02.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 10:02:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6409B2084D
	for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 17:02:58 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id g17so108427083wrr.5
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 10:02:58 -0700 (PDT)
X-Received: by 2002:adf:f18c:: with SMTP id h12mr20801469wro.47.1565715776848;
 Tue, 13 Aug 2019 10:02:56 -0700 (PDT)
MIME-Version: 1.0
References: <201908102036.x9O3ho1y%lkp@intel.com> <CAKwvOd=r0sQMoW1BOq0CvrcnijEdcR3Gbs+9z95zk1mmaEyXrg@mail.gmail.com>
In-Reply-To: <CAKwvOd=r0sQMoW1BOq0CvrcnijEdcR3Gbs+9z95zk1mmaEyXrg@mail.gmail.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 13 Aug 2019 10:02:45 -0700
X-Gmail-Original-Message-ID: <CALCETrX4QGrXDxiOVh+dU0KsW-958bWomFpTdy_hPE15NT79CQ@mail.gmail.com>
Message-ID: <CALCETrX4QGrXDxiOVh+dU0KsW-958bWomFpTdy_hPE15NT79CQ@mail.gmail.com>
Subject: Re: [luto:x86/idtentry 11/16] arch/x86/kernel/traps.c:323:28: error:
 conflicting types for 'do_double_fault'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Kc5wbt7I;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Aug 12, 2019 at 10:53 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + Luto

I think this one has been fixed in that branch for a couple days.

>
> On Sat, Aug 10, 2019 at 5:22 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > TO: Andy Lutomirski <luto@kernel.org>
> >
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/luto/linux.git x86/idtentry
> > head:   deb8daefb7aead546145e57584758a8df2170646
> > commit: 47a729450b5037a1675d464df6c563afe8374d77 [11/16] x86/entry/64: Move do_double_fault()'s CR2 read into C
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout 47a729450b5037a1675d464df6c563afe8374d77
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> arch/x86/kernel/traps.c:323:28: error: conflicting types for 'do_double_fault'
> >    dotraplinkage void notrace do_double_fault(struct pt_regs *regs, long error_code)
> >                               ^
> >    arch/x86/include/asm/traps.h:77:20: note: previous declaration is here
> >    dotraplinkage void do_double_fault(struct pt_regs *regs, long error_code, unsigned long address);
> >                       ^
> >    1 error generated.
> >
> > vim +/do_double_fault +323 arch/x86/kernel/traps.c
> >
> >    317
> >    318  #ifdef CONFIG_X86_64
> >    319  /*
> >    320   * Runs on IST stack.  Tracing and kprobes are disabled because tracing
> >    321   * before CR2 is read can corrupt CR2.
> >    322   */
> >  > 323  dotraplinkage void notrace do_double_fault(struct pt_regs *regs, long error_code)
> >    324  {
> >    325          static const char str[] = "double fault";
> >    326          struct task_struct *tsk = current;
> >    327          unsigned long cr2;
> >    328
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrX4QGrXDxiOVh%2BdU0KsW-958bWomFpTdy_hPE15NT79CQ%40mail.gmail.com.
