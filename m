Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6HN4DYQKGQEW32DKTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D3D150914
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 16:06:33 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id k16sf5087455vko.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 07:06:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580742392; cv=pass;
        d=google.com; s=arc-20160816;
        b=XFgVOMJSzPu/NVkKsS5ksbLUT0GouWcKTEjAwj5Kk7iwdxfXQ6lHRxrfNFsR+Kd4LH
         dfwgxEjnIV1IGGmtS5pwufYnk9NyhYVId5xHA/lHZgh8jbLywJ4orLb62T/BzAwfk9FM
         0zZbGX83y+PCq7PaUdFxpXUZXe8EpQcr/JZ8Rp0hSFVDREgKiW4YSMR2EJ59TsgNtG9J
         fo8JfvvSm1j+A5lIt5cjEk8msTMY/Q8NUNxA7z5ucKinkZDMXwrHgHTQDxnPm3RC9H6U
         qvFP7qU4Dr9wbkopyF0kiHn/PNQdInqfnjW/AIK4NsLFkcjy9zCOzxy0IBfBk0ar+aY7
         vQEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jDP+s+qIgFvo/fq6xSyS9EuzYfyTKhZZ936L8DWdLGc=;
        b=oPi3MHdiQGREEaWIs0IXxKoTmuAZSComC7ujIfcMS659vxk6BOJM20vfcAxAUMHMX2
         nosSDn3jtOKPbsnWfMjSAnxrU30AcXqCO2yw1lTBoLSZxKBj/1/1tqbQu90Zp6hq42iJ
         jFt7vlvppLSxMpogPm5ofF7JTzSYVMAFbW5dAyLxX16YR6rc97QCSki7dHtEIKfjVYDN
         fqSZdiru4Xi6k+QMgB/+vgWf9QkXQXDrA0UPd98yA3NL5LU9TWFzyze2Z8BDXaBJdsU3
         pr0TWothKgCK59eR4i3WV00CvkswdJZWBdYq/kSVOwITkm/jeGTDNeftatjWbPaPV794
         RN9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oW84dig/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jDP+s+qIgFvo/fq6xSyS9EuzYfyTKhZZ936L8DWdLGc=;
        b=K41ut4ttvG39NrNUJUkfv+w7Cppdqn5N5b6a76cLfXJoDVORqm4L12sQRe+4FkRdr/
         Q1OQbqF0yeDEqBih0QtWIuj9gpPZrta7vH4mh9Zw6nvaF0G6SLkjH91LosCJWQcAq8L8
         TfihKZhS5bGftlrK0lFUzbAGzv04vuWK89fs4rhsdWPq9d7v35vFFUuWR8nSq02iufbg
         ahReuc/6XTRaBrALC6ZqTiR52KrOnY6NFibZHdyGGSaWLX5GhoESemGCP2VlLVOqdz6O
         u2/TNrAcjufYcTI0JVt7TsVIsHUOWvgkqjpKh8qirN18+k2/Z1EFetXlW7gi1/EiBan8
         FZ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jDP+s+qIgFvo/fq6xSyS9EuzYfyTKhZZ936L8DWdLGc=;
        b=RtBc3T7GXcG9DpsbLDgQy19BSe2IZok06wvVnm+D6TILcH1XP1ckY8lF4c+Og4lfXN
         dIP+OKUG4r+HLBkhuPoFFX0zTGTQAIiEhh1XeYuhClwoOHfs608iXBjBu51Qty064RRj
         4cLJWpUUvGNc6bEFzz/omF4v2KjtBhvKDxstdlhiel5tA/3c67R09yc9QIgY+25FSY46
         gHIsaa1w5BomrLQ2R3nz9Vv+KDATDfv5j9LESvKZv+FUv5weotgfSpbaXiz9t5MCy53F
         geokSATMWKKm/AmAkqvwD2e3hqy9xPEOgd/H9mzl/5Thssz5V7axeYmPrZs3i0nBpWMt
         IUEg==
X-Gm-Message-State: APjAAAVokGhF4pPZSnnbYRdXDHTKYxvNuGDIicbmFQrJehYadrM2p+w6
	no0glfzHXph+8S9iJRDqFHU=
X-Google-Smtp-Source: APXvYqzX2F0TIBhN7THLrVVKZ0rXb0MWhasiXUwULhEY10PwnO0JEqNW2vw46/POzDgSsqSQA2b5Ow==
X-Received: by 2002:ab0:4aca:: with SMTP id t10mr15199942uae.89.1580742392556;
        Mon, 03 Feb 2020 07:06:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1204:: with SMTP id 4ls774963vks.8.gmail; Mon, 03 Feb
 2020 07:06:32 -0800 (PST)
X-Received: by 2002:a1f:8cd5:: with SMTP id o204mr14057209vkd.66.1580742392166;
        Mon, 03 Feb 2020 07:06:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580742392; cv=none;
        d=google.com; s=arc-20160816;
        b=vSBaLkoT9ObbxgYKeJP43dYP1xD5nSc0daINzy97kIX05wLTnK9kP+Ix8TiWa9u3Uk
         bFGk0DOnck6MpdQmJFJDl7wY40mGPJPg1t/EN/sR1ma/IluukKJXphQvNF75AE8K+VPT
         ZQkmi4GjXMVTLw/hpFLRMhEAUOLF3mhdht20stg6S1PmZb8+Ldji1PNEYcH8Em/MnA3z
         S8IT+jaapXoAIrZuEHYYKtrANxvamQEmxTrI3mBH5QHDPc1ldX4jYu1x9w2o6666vjvt
         8FC4OJrg8lmo08XFij5yYJPqbSHFmWMB18NGpToLVkvt7464GirK4viX7YRaYjijBE90
         AGvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2OLXlR6RiBdQ7XBkHmlvwP0eXSG5LLGoQXWAl+hDiag=;
        b=iKanabzpilV+ozJZt/7kl9nzgZFzqMIBzdXfFZzIg3o9SbDhX+j+NQHbSOix+jknfU
         yryUpFYLHrZWnfsxWKPY0xEVvXIPtSE7c5nkqpJ2ubczV4PHaU/JF5RUm3o0xwkI1sqV
         Rpb6SNAeWcSXIhdwvJP6n6OcE+RLp/vUpO7JxJcNRQdbUp1VSrSfPiltwwQeMqvm07N9
         Ow/w84Q417EUG4KWHY6KzSISwRRfwUHIuT1sb2ORz//afVmeAbVnv/iGnomPxIBb/8zF
         YUesT1Fykgd7aUScRmYyGdTlo/9R5VgFlj7KOgGCDL2G3cBKX5z+Am2ES30KcptdWWFJ
         I9Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oW84dig/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y126si771345vkc.5.2020.02.03.07.06.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 07:06:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g6so5969149plp.6
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 07:06:32 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr23639162plt.223.1580742390792;
 Mon, 03 Feb 2020 07:06:30 -0800 (PST)
MIME-Version: 1.0
References: <202002030709.xW4dkIFZ%lkp@intel.com>
In-Reply-To: <202002030709.xW4dkIFZ%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Feb 2020 15:06:19 +0000
Message-ID: <CAKwvOd=m1fp8qLk8eZFn63PhJTd5mpP3Qi=u_oNVnOJkEUiP=Q@mail.gmail.com>
Subject: Re: [zen-kernel-zen-kernel:5.4/muqss 15/17] kernel/time/timer.c:1919:1:
 warning: unused label 'out_timeout'
To: Jan Alexander Steffens <jan.steffens@gmail.com>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="oW84dig/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+ Jan, can you please take a look at the following report?  It looks
like the label should probably have the same preprocessor guards as
the goto.

On Mon, Feb 3, 2020 at 2:05 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: "Jan Alexander Steffens (heftig)" <jan.steffens@gmail.com>
>
> tree:   https://github.com/zen-kernel/zen-kernel 5.4/muqss
> head:   3ca137b68d689fcb1c5cadad1416c7791d84d48e
> commit: 880a7229b3627f9933d30f847da350e1ff53ba2d [15/17] muqss: Make hrtimeout patches depend on MuQSS
> config: arm64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project ba8110161dfb096bbc63039afd87ff6417328f91)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 880a7229b3627f9933d30f847da350e1ff53ba2d
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/time/timer.c:1919:1: warning: unused label 'out_timeout' [-Wunused-label]
>    out_timeout:
>    ^~~~~~~~~~~~
>    1 warning generated.
>
> vim +/out_timeout +1919 kernel/time/timer.c
>
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1832
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1833  /**
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1834   * schedule_timeout - sleep until timeout
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1835   * @timeout: timeout value in jiffies
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1836   *
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1837   * Make the current task sleep until @timeout jiffies have
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1838   * elapsed. The routine will return immediately unless
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1839   * the current task state has been set (see set_current_state()).
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1840   *
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1841   * You can set the task state as follows -
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1842   *
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1843   * %TASK_UNINTERRUPTIBLE - at least @timeout jiffies are guaranteed to
> 4b7e9cf9c84b09 kernel/time/timer.c Douglas Anderson                2016-10-21  1844   * pass before the routine returns unless the current task is explicitly
> 4b7e9cf9c84b09 kernel/time/timer.c Douglas Anderson                2016-10-21  1845   * woken up, (e.g. by wake_up_process())".
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1846   *
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1847   * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
> 4b7e9cf9c84b09 kernel/time/timer.c Douglas Anderson                2016-10-21  1848   * delivered to the current task or the current task is explicitly woken
> 4b7e9cf9c84b09 kernel/time/timer.c Douglas Anderson                2016-10-21  1849   * up.
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1850   *
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1851   * The current task state is guaranteed to be TASK_RUNNING when this
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1852   * routine returns.
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1853   *
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1854   * Specifying a @timeout value of %MAX_SCHEDULE_TIMEOUT will schedule
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1855   * the CPU away without a bound on the timeout. In this case the return
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1856   * value will be %MAX_SCHEDULE_TIMEOUT.
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1857   *
> 4b7e9cf9c84b09 kernel/time/timer.c Douglas Anderson                2016-10-21  1858   * Returns 0 when the timer has expired otherwise the remaining time in
> 4b7e9cf9c84b09 kernel/time/timer.c Douglas Anderson                2016-10-21  1859   * jiffies will be returned.  In all cases the return value is guaranteed
> 4b7e9cf9c84b09 kernel/time/timer.c Douglas Anderson                2016-10-21  1860   * to be non-negative.
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1861   */
> 7ad5b3a505e68c kernel/timer.c      Harvey Harrison                 2008-02-08  1862  signed long __sched schedule_timeout(signed long timeout)
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1863  {
> 58e1177b4cd10b kernel/time/timer.c Kees Cook                       2017-10-04  1864     struct process_timer timer;
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1865     unsigned long expire;
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1866
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1867     switch (timeout)
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1868     {
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1869     case MAX_SCHEDULE_TIMEOUT:
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1870             /*
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1871              * These two special cases are useful to be comfortable
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1872              * in the caller. Nothing more. We could take
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1873              * MAX_SCHEDULE_TIMEOUT from one of the negative value
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1874              * but I' d like to return a valid offset (>=0) to allow
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1875              * the caller to do everything it want with the retval.
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1876              */
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1877             schedule();
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1878             goto out;
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1879     default:
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1880             /*
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1881              * Another bit of PARANOID. Note that the retval will be
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1882              * 0 since no piece of kernel is supposed to do a check
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1883              * for a negative retval of schedule_timeout() (since it
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1884              * should never happens anyway). You just have the printk()
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1885              * that will tell you if something is gone wrong and where.
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1886              */
> 5b149bcc230e46 kernel/timer.c      Andrew Morton                   2006-12-22  1887             if (timeout < 0) {
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1888                     printk(KERN_ERR "schedule_timeout: wrong timeout "
> 5b149bcc230e46 kernel/timer.c      Andrew Morton                   2006-12-22  1889                             "value %lx\n", timeout);
> 5b149bcc230e46 kernel/timer.c      Andrew Morton                   2006-12-22  1890                     dump_stack();
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1891                     current->state = TASK_RUNNING;
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1892                     goto out;
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1893             }
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1894     }
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1895
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1896     expire = timeout + jiffies;
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1897
> 880a7229b3627f kernel/time/timer.c Jan Alexander Steffens (heftig  2018-09-05  1898) #if defined(CONFIG_HIGH_RES_TIMERS) && defined(CONFIG_SCHED_MUQSS)
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1899     if (timeout == 1 && hrtimer_resolution < NSEC_PER_SEC / HZ) {
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1900             /*
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1901              * Special case 1 as being a request for the minimum timeout
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1902              * and use highres timers to timeout after 1ms to workaround
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1903              * the granularity of low Hz tick timers.
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1904              */
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1905             if (!schedule_min_hrtimeout())
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1906                     return 0;
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1907             goto out_timeout;
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1908     }
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05  1909  #endif
> 58e1177b4cd10b kernel/time/timer.c Kees Cook                       2017-10-04  1910     timer.task = current;
> 58e1177b4cd10b kernel/time/timer.c Kees Cook                       2017-10-04  1911     timer_setup_on_stack(&timer.timer, process_timeout, 0);
> b24591e2fcf852 kernel/time/timer.c David Howells                   2017-11-09  1912     __mod_timer(&timer.timer, expire, 0);
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1913     schedule();
> 58e1177b4cd10b kernel/time/timer.c Kees Cook                       2017-10-04  1914     del_singleshot_timer_sync(&timer.timer);
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1915
> c6f3a97f86a5c9 kernel/timer.c      Thomas Gleixner                 2008-04-30  1916     /* Remove the timer from the object tracker */
> 58e1177b4cd10b kernel/time/timer.c Kees Cook                       2017-10-04  1917     destroy_timer_on_stack(&timer.timer);
> 880a7229b3627f kernel/time/timer.c Jan Alexander Steffens (heftig  2018-09-05  1918)
> be525d11c20156 kernel/time/timer.c Con Kolivas                     2016-11-05 @1919  out_timeout:
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1920     timeout = expire - jiffies;
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1921
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1922   out:
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1923     return timeout < 0 ? 0 : timeout;
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1924  }
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1925  EXPORT_SYMBOL(schedule_timeout);
> ^1da177e4c3f41 kernel/timer.c      Linus Torvalds                  2005-04-16  1926
>
> :::::: The code at line 1919 was first introduced by commit
> :::::: be525d11c201565e2c8999efc3f78c745f5d6886 Special case calls of schedule_timeout(1) to use the min hrtimeout of 1ms, working around low Hz resolutions.
>
> :::::: TO: Con Kolivas <kernel@kolivas.org>
> :::::: CC: Jan Alexander Steffens (heftig) <jan.steffens@gmail.com>
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dm1fp8qLk8eZFn63PhJTd5mpP3Qi%3Du_oNVnOJkEUiP%3DQ%40mail.gmail.com.
