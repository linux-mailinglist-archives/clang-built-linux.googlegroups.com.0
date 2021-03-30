Return-Path: <clang-built-linux+bncBDNONOHMUUCRBZXMROBQMGQE3XG6HZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id A79D534E4EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 11:59:03 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id y9sf14057817qki.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 02:59:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617098342; cv=pass;
        d=google.com; s=arc-20160816;
        b=iEQ17nkyhY3EkUIKvSNUGhK891dsiIqPpFCHRnL/dNVIODv5w2D847SsbgpqhrQ9Xy
         Kd/NkA9ZytL7IbNsvfSfvHF37FCxxa8iEiz5A0FE7z/ASKEVE0CB9fYHY+kTJxfDNfWL
         RaUhEdMcbQhDbhTljClgi5rjzWbPaDzRcU0hYM/SCWX5UsWdpt/3w/cprIsKDN87cuRn
         qkAz/edyKOIgHnBuqjJiAcsj9xjWCgn0geXZo1XPMmESQIqoogYLc+KLNaLTprwugIfo
         KB5NX2GNvG6zKx7l6KPXrhc5t/uyvM5lnaUFSrID/w5MQzOg5mSOqqsrlelUVdfeKOMg
         DQuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=aTVJzL+AtWOpMWE/nS+hLn9XY55sMSZUiDO5GNMoiAY=;
        b=A5AxmSyNAbO+W0hW+sQEI9yh6q/s4mYfrYdi5I/V77SiPTJCivDCqiOzCwz1M+m0mL
         DVmIUmVnBJbz7rZ39/70wpq+wq6BM/soafaToOZphS3xOI5G+Dx6r1TGPoGKOcHJgxSR
         VTIMb/D/KlUw3Zus2HRSpCaQCJ57PMLnqCcj4OF8r8sJdl8RR+yihpXDdgHVD55fC/qk
         mS36IvceXyQNkYNPX/wLvY7TufHFiYWfkqmE0kLoP6SUWhwiA+aeCh2ruM0G3QWcbgUY
         5oO2E3hA+yy803yxqqNVKWgqoOtYAwYa/8QCuXqrIwYTDxpO5WxzApvPOjah09YLPT6/
         j+Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=zjAuB2Yc;
       spf=pass (google.com: domain of bgolaszewski@baylibre.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTVJzL+AtWOpMWE/nS+hLn9XY55sMSZUiDO5GNMoiAY=;
        b=Pt8oIcs4/7lcFtEbJnSOjiBnJ50mA+GSawClEiU1DqUg1eYoaCAvUjzawQ9gGPfghz
         co6a6LgH/S/khFUtFFCGw5j4y01n7uwqvjeoFEnpP72WMHVKfs10aZaf7eR/uQzZfBLi
         bw0I/Eo+gexSIzCqGqFmx8J+uIA7p/rrbrG8/Uc0d0+9S264Mv2F1gD4FS70G0t3442k
         XOKKLULx//fz1KlzShrHvkcWAm0rK3RdENiYwnq6b1Rjh5BkQj0ZeCeY2DBb05zVl0bF
         Ow/a4aNPMRIz/pxGiXMaRQcilwjjn0VNQqUEuhooEsHVJ1YpZUqpq5C8eTHN8nLHZUx7
         v+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTVJzL+AtWOpMWE/nS+hLn9XY55sMSZUiDO5GNMoiAY=;
        b=sFo2u+QVILN+kmlnjurueHFv0tVr5tb0o2svMI8iGIsne6ZGps5djQH4pgd7/aSGbH
         TtD1NJvzsRgIxEGwP7GOC685VbVHCJNnwi1E6V0dzlzE4yi0fTX5mmlhSKHHFyO1jWEJ
         +SY3nigMWlGE81ldbuRI/HdW7N4dvVc0+s6nX75iaZzaamReIztSk3FlIhnOD3P3+IBd
         WySQ0PcrpjZlMRvqDRAfwkFL0XCZaqCUWtOGVa0tlFA5J3jDJ8rNfCJNulLQsgR8WC6h
         xYDZ4fWkHIAKrsEnYgT8UYVX4oeCpWAPAYdTGZBOkC/GusK7WfF2axP0jgf/GJCN2CEX
         4lZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DnQa3Xe5dorcosBfckI1VGrvrvuIoP0XTQvaAo8q1DFUp3gV0
	1N0m+ib0oTnwRSS8JT6jeAE=
X-Google-Smtp-Source: ABdhPJziU+LA+0AMxxMSJvG5W4osegioa+vE8mg9yXUM5iVWB4/GySctZykbaPrL7ejB4Gc+S0D4Dg==
X-Received: by 2002:a0c:cd0f:: with SMTP id b15mr28929700qvm.49.1617098342566;
        Tue, 30 Mar 2021 02:59:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f601:: with SMTP id r1ls4930686qvm.2.gmail; Tue, 30 Mar
 2021 02:59:02 -0700 (PDT)
X-Received: by 2002:a0c:e788:: with SMTP id x8mr29512311qvn.48.1617098342103;
        Tue, 30 Mar 2021 02:59:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617098342; cv=none;
        d=google.com; s=arc-20160816;
        b=ZHrC4Lzxv7BJC2v7a8Gh03UNnYQKA0rqhfQ126wr6zRqvJ4Tj8FyK/EGTEH+RhqvgM
         b4yxxbwPNTUTuHxPkiVV3lf1uzS+7e7dYuFa99vhNiFyfdP/9s4c9p4KH6M0i3OCsXCf
         u90uRzY80M4V93OIG8fUrD8emujRVihKgSQnoH2j/Lm8s6rAW17Y/uWH2msT/QXMOF13
         dWtlVZoovWC9v46aEXLl33IETTUnMRhM9oikz9bEQErHuaTQ/nTqupAHiaEsfK/AfT4L
         rgoM74Jgm4X6gzmpjP/CDp0HVaEHkbJ/54rHJs68cx/HGN9x3+C+qYkoMpb3Qx55CSZz
         hvyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EO2lU8GwPWcrxAkv9uO07JNl8w9018+K1G2whyvU8iY=;
        b=t6UDdsCVEwUei8rnNN2wxr+yIuvK4/i1jwdBCY9zie56nox55SYp70J9MZrf3FCx4l
         5PxgkzZNx5K30Oq6fO1RGe6DgQSWckDMahIWrB0rs5wUYT0U7MIvSRArL2a2NsQSipbV
         8jVDN0kFSa4VnIewYIUc/43K//DaYreNtX0oHmzu2bndHAsCpfKRsxbJSoGavz3WaGWf
         pZZWIK9tLXFzVojKFh70i/IlGpA2wbBSz2IXNf92Z3VjR2/pteNLm8hx5w/dpD4/Pwed
         F+Exv77TWwe3m6CD93KkD9AwFJ5qrRnxI5ShRdw/eeXIesyK/u/zkkGpeEZs1GhzTKKQ
         InEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=zjAuB2Yc;
       spf=pass (google.com: domain of bgolaszewski@baylibre.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com. [2607:f8b0:4864:20::b2a])
        by gmr-mx.google.com with ESMTPS id b4si1266790qkh.2.2021.03.30.02.59.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 02:59:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bgolaszewski@baylibre.com designates 2607:f8b0:4864:20::b2a as permitted sender) client-ip=2607:f8b0:4864:20::b2a;
Received: by mail-yb1-xb2a.google.com with SMTP id a143so16808713ybg.7
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 02:59:01 -0700 (PDT)
X-Received: by 2002:a25:a0cd:: with SMTP id i13mr45004230ybm.302.1617098341672;
 Tue, 30 Mar 2021 02:59:01 -0700 (PDT)
MIME-Version: 1.0
References: <202103301259.dhlOOcXV-lkp@intel.com> <YGLrO9lsfvnWYY5Z@smile.fi.intel.com>
 <CAMpxmJUnHjjqR-hb=6sUth9C1-pfCr7iCwGCFH6h-NDbq0WGhQ@mail.gmail.com> <YGL1jtM0X84/PPjm@smile.fi.intel.com>
In-Reply-To: <YGL1jtM0X84/PPjm@smile.fi.intel.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 30 Mar 2021 11:58:50 +0200
Message-ID: <CAMpxmJWhTPpCao+Fhakyv98UkRf7hNzmYPBeFScFp6Ug0ZTN=g@mail.gmail.com>
Subject: Re: [linux-next:master 7313/8469] drivers/gpio/gpio-sim.c:388:34:
 warning: unused variable 'gpio_sim_of_match'
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bgolaszewski@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=zjAuB2Yc;       spf=pass (google.com: domain of bgolaszewski@baylibre.com
 designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
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

On Tue, Mar 30, 2021 at 11:55 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Tue, Mar 30, 2021 at 11:26:17AM +0200, Bartosz Golaszewski wrote:
> > On Tue, Mar 30, 2021 at 11:11 AM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > > On Tue, Mar 30, 2021 at 12:15:04PM +0800, kernel test robot wrote:
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > > head:   9d49ed9ca93b8c564033c1d6808017bc9052b5db
> > > > commit: 3f0279eb9e3767f37939358a42054c226503233a [7313/8469] gpio: sim: new testing module
> > > > config: arm-randconfig-r001-20210330 (attached as .config)
> > > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 482283042f795ecc27838a3b2f76b5494991401c)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install arm cross compiling tool for clang build
> > > >         # apt-get install binutils-arm-linux-gnueabi
> > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=3f0279eb9e3767f37939358a42054c226503233a
> > > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > > >         git fetch --no-tags linux-next master
> > > >         git checkout 3f0279eb9e3767f37939358a42054c226503233a
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > > >> drivers/gpio/gpio-sim.c:388:34: warning: unused variable 'gpio_sim_of_match' [-Wunused-const-variable]
> > > >    static const struct of_device_id gpio_sim_of_match[] = {
> > > >                                     ^
> > > >    1 warning generated.
> > >
> > > of_match_ptr() should be removed AFAIU the case.
> > >
> >
> > I'm not using it though... Other drivers do the same thing as I did
> > here. Can this be a false positive?
>
> Ah, you simply missed to add it to the platform driver structure.
>
> No, it's not false positive.
>
> > > > vim +/gpio_sim_of_match +388 drivers/gpio/gpio-sim.c
> > > >
> > > >    387
> > > >  > 388        static const struct of_device_id gpio_sim_of_match[] = {
> > > >    389                { .compatible = "gpio-simulator" },
> > > >    390                { }
> > > >    391        };
> > > >    392        MODULE_DEVICE_TABLE(of, gpio_sim_of_match);
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

Indeed. I'll send a patch.

Bartosz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMpxmJWhTPpCao%2BFhakyv98UkRf7hNzmYPBeFScFp6Ug0ZTN%3Dg%40mail.gmail.com.
