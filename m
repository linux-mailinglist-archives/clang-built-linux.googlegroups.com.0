Return-Path: <clang-built-linux+bncBAABBLULSSCQMGQE72B2H5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E307F388E23
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 14:33:52 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id y10-20020a056808130ab02901ee2ab30dabsf4746012oiv.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 05:33:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621427632; cv=pass;
        d=google.com; s=arc-20160816;
        b=tUEsAevFHFGF4FT/MDkXtjggBfxswxcNtECVBZnBV1MbFmp6saq7KL8ahihrTixpBQ
         5tjVBq1lVBj94DbFlJafnr3qsmOWb/Dt9lg2RBc6JCujGBSb3EVEViVfC2338T1eWcd6
         LfECF5P1NCcC9Ineka3MOc0UEoosTijBTL7vW0SpdaGoGPSi8hde6Wf2QuXqfoCjdpdo
         r+PbaIkdbGs4Dov/B0Kn9P3J1OGF4ruacVD6uEgmnWz9woZQzCX21rHsVuQZytNHPbSm
         XqPVWs+09abeRWFiL27K0D4hhRy22x+K6WYz7AMg4WKSczVkDFXl00BtNHYAcAPg740Z
         BGzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=c6e0Iv/3vuXyBvUM9R3V/v5XOf4BhBAx4HNrs3z45AE=;
        b=JCpoLnTBaqRScjvEqLDJI1w5YA8/c4ZDKT3aVaIMWsWa+F6HBOlhgiPDx9YyFN8Sj1
         m5B/2F/mxgKHyQ/dqFFqIX/ylcxg3cIdbkxx6UmaF1sDCLFrVtjRiTL30e/x4PJMncg8
         ApR1xSQCASp2jbyDOJmhGFBMXnQtAUFv+4SGykfUkvXEC4WMrFWGqxil+E/w30ejTaX/
         tj5wOb83Et8iWZhy2C6pUsifTqatCvOlLSFQDJou70syQ5rodpbit/Tak2/MHuOegwtk
         tPLOxZk1Rjm+h0+b/vn/w1JT8SIKvfJ2/pCAKuCjFH2WsiNBGVPhXORdDfbh05RnJL1D
         UltA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hEdMUhXv;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c6e0Iv/3vuXyBvUM9R3V/v5XOf4BhBAx4HNrs3z45AE=;
        b=PFUt4UU/MlAhKKInvItTZb1pp8XqvMmWxJwku++l8GRiuAFhs7lPYZsT4jJIQYmMoK
         rwGr18umhJTeaDG7y68PDMBUQbJbK+knu8Yc3J6CIHge5XGb56F3ouKTY5yqoVR+JWan
         OZxt9ZaEdja6/v0gI8I7FnWu049QPKwAxLxy2c2uQwcDE6CgI2FJWes9MicMDae9CWI1
         6alGHBeqUjc+4JACoO9P6Cfbmx6+iL60i1kuT5j7QUwC70BQvE/nZj4+iWJ0aeYeoFG5
         5z7lKF8Bgh5eLYi8BNVGuS8782FJq/uIeJ5yY6BPKb+/CJF4joKIWkLAExokJ5LIyHRF
         Oazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c6e0Iv/3vuXyBvUM9R3V/v5XOf4BhBAx4HNrs3z45AE=;
        b=t9hOdpAxtboiUIlWhvQBOi7LEIdSofP+dL4cgHqFkzkz2tFpvX4d3VuKftuch+h+TC
         5/iNqiJCy3qQMdGz/ouJmBA7U0H9grq5Tbli5BD1t8kT4Q5xVRKCqPgCwlE/O+M/luRz
         0A4dlMeZ6D8IgEdgnEgawpYHNRC8IJOzai6IR6yrAPGLsTxsEgCIQb2D+H8RP7FaS/Tt
         0rrhxaO7+8jKpM7D0Lf6vbQLVDwAM6so+Cw/9h2cM3qujKPlfnQhIRo82tXf+mF5eM3U
         zyuGKTsNgcwrilKOuYLK0suHaNZpTSRRtsGthg3Q+xCuu2O5BfGLG4zu/TWbfFhr6o/d
         2UaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rKRh+08uxSm2jvd4J5ngLwix0ana1KKhsCSPSupbtYh0d2AvK
	3jcXM35Ij1pmBUS9sf3LQI8=
X-Google-Smtp-Source: ABdhPJxzXrfkcl6syBXN68h+76pRBCpqqel2bwV5+LJn/1tqjfE7SAi8gbCXaQT/HffgdBO0499GZA==
X-Received: by 2002:a54:4481:: with SMTP id v1mr76058oiv.134.1621427630904;
        Wed, 19 May 2021 05:33:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b102:: with SMTP id a2ls6389547oif.5.gmail; Wed, 19 May
 2021 05:33:50 -0700 (PDT)
X-Received: by 2002:aca:bc02:: with SMTP id m2mr7844027oif.154.1621427630088;
        Wed, 19 May 2021 05:33:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621427630; cv=none;
        d=google.com; s=arc-20160816;
        b=lt91DFDMZ6gTmOpTZLgse5Qd4Iq2hFN3YvdN6ymies621QM4BVfUSIrLVwMV+XryrA
         X98AiNZFJjDAjTg0feIXV4QDo9AjI8wRvvuFf3PA6u5uZmvbInvbxUwquTT7fLgQyJij
         JgvyegjxVxpndep3cR0wItrVey3u0z4P0cjTJYID6VAoSpfUGzaZDFRJxNZTWj1JNJAX
         fHscP/uUreHmxW5jkxJwZfbbxZfq+53c1yDo/WcAt/T4BvgL1edCQiPAhC7h6vrx+5Gi
         x4Q9q1qtWzlYdk0dMX1M51W3846BOXrBdKqGKgTzV3pak92q3YR9WwUYbwd5cC1Wj/dV
         xu6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vj7u2OR8GFofDSNsLxC17/5DSW9Nz1KHXjTiw9sruis=;
        b=VnCRODv4UfxgvEnmiVdZUGdPb+gLjAS6DZU/9EHtyRGzXWjBMhHejRaVyIHREOZfhn
         O7sjrOT4zJnjPj80uP7L/BV0kTljEGTlklzVRul0SypPTr8ceUcti9YHq3p9Sj0VJYJC
         h6BY+8sM/BAz4Te5S8hHmxm+P5YjPeMB4x8ARpK6rmlcamDbVHaWk62hn8ZydffvAvVD
         5Qxoe2oP4KGs6622ZMHHRkPIHs8ghtzSsoDypCkbDScfwOcR9byX+6+DGTT+FVXaiOp0
         7WODmolf5OUGGo1xqirYKkbmyLPcnIY7Fq9J0gef9ecd4ct81rM3FCmd7lTraIcXb2rE
         wU9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hEdMUhXv;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si2015629oot.1.2021.05.19.05.33.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 May 2021 05:33:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 38D986124C
	for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 12:33:49 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id s5-20020a7bc0c50000b0290147d0c21c51so3229519wmh.4
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 05:33:49 -0700 (PDT)
X-Received: by 2002:a1c:9895:: with SMTP id a143mr11003201wme.43.1621427627819;
 Wed, 19 May 2021 05:33:47 -0700 (PDT)
MIME-Version: 1.0
References: <202105112356.JuDlybKz-lkp@intel.com> <CAKfTPtB9B9jv_uSk0fS7uOTtH5FCwLcAOrPjtXzRuURLUMFnoA@mail.gmail.com>
In-Reply-To: <CAKfTPtB9B9jv_uSk0fS7uOTtH5FCwLcAOrPjtXzRuURLUMFnoA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 19 May 2021 14:32:34 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0YVh=hoBthjH7N=mSXOi0fEdwvyuHUJ36qricqVUZ9jA@mail.gmail.com>
Message-ID: <CAK8P3a0YVh=hoBthjH7N=mSXOi0fEdwvyuHUJ36qricqVUZ9jA@mail.gmail.com>
Subject: Re: kernel/sched/fair.c:9551:12: warning: stack frame size of 1376
 bytes in function 'load_balance'
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Valentin Schneider <valentin.schneider@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hEdMUhXv;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, May 17, 2021 at 3:45 PM Vincent Guittot
<vincent.guittot@linaro.org> wrote:
>
> On Tue, 11 May 2021 at 18:01, kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   1140ab592e2ebf8153d2b322604031a8868ce7a5
> > commit: 0826530de3cbdc89e60a89e86def94a5f0fc81ca sched/fair: Remove update of blocked load from newidle_balance
> > date:   9 weeks ago
> > config: mips-randconfig-r022-20210511 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install mips cross compiling tool for clang build
> >         # apt-get install binutils-mips-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0826530de3cbdc89e60a89e86def94a5f0fc81ca
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 0826530de3cbdc89e60a89e86def94a5f0fc81ca
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips
>
> It was a bit difficult to find the warning among the thousand

I opened an issue against clang about it:

See https://github.com/ClangBuiltLinux/linux/issues/1379

but then found that this is already known. I think it would be best to
make the kernel test robot
set CONFIG_COMPILE_TEST to avoid issues like this. I have annotated a
number of symbols
that are known to cause unnecessary false positives in a similar way
to get a clean build.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0YVh%3DhoBthjH7N%3DmSXOi0fEdwvyuHUJ36qricqVUZ9jA%40mail.gmail.com.
