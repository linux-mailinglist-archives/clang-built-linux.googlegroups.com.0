Return-Path: <clang-built-linux+bncBD4NPLXYE4IJBON7QUDBUBGABKQ4C@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDF139352B
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 19:53:21 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id f141-20020a1c1f930000b029017ce5240ed6sf417259wmf.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 10:53:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622138001; cv=pass;
        d=google.com; s=arc-20160816;
        b=MrBXdK6Swqi9GrvdeJMvnqOsksDqbjGShY2e6hdiRjV3GsXu7iFRUVZA+6OgVVbb2J
         ZhZRes9+GbzPr3VPnAornifnBHFee3W4yj1qiiziL+/cDSwUBOdcRaOq6AVDUR/cNjxT
         pZtqJ7afqJGH6MNfYx/UeVMEumGZ0hhhAlHn4glVUGxy3YyvMW/8/Pa+OCEh8QFZvi3h
         AqArDgZPBsxC+H/exgIPfgEHtlYNo76Ndw9f0cnjIDadEpKo72W+AAJsgHNyzNusJexf
         4je/2MXcKEuXc+nufNWVQQPjDIXUAqR65zCBpwZF9wtWmV0JhAb64YK4aflcgZGJdpmo
         +KhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=SXL2XQh/8juaVlhgPpDGpKtRpD+bZT+LQprdrC9gOC8=;
        b=riyB52DN5x8oQjyg6HjbIJH/lxBfjwNQBTtObMjaGrzn0bHH374meCHhqO8fczxwvm
         7g22VvaUDg30zrNeBb1mz7cN8xEcBk9c2K1SDkhMF6ZjP0vrF5wKG2gqh9IEWxxF7yGz
         njt7w7uIvioTrqtY5Yk1E3uscHk69jznBZIOWUw9Hz8WFhOSOjsPGCKQ2hC1+7ndvqao
         4RP5O3htcdRK1eWkXMRKSAfqXWxsih9QpZVbkPCfGM1sJIymPyd7XxeSh62bqVjNSvCm
         YeJBrBD8mtogqik9CvQ6SAxrNnOgMdATkLjCWYgYqiHSF9HWYaSgJ79AH3khD0GbbNuL
         72CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623 header.b=TgF8d7AV;
       spf=neutral (google.com: 2a00:1450:4864:20::636 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SXL2XQh/8juaVlhgPpDGpKtRpD+bZT+LQprdrC9gOC8=;
        b=Pljcho3QR5cNCZjyrkyCO/cqEr1qS+mq+ezpyhXqHUF3iXz62BUOTjfzTm7jvnASUj
         8WSu1TNlmitI7+9aehoINyU8Nxr1FtjLyQ4YqZeLmZrjXpULbB3lcUtYvwTqunLic8g6
         Nleo9HiTzTBHKowgFsF3Os6lS8iC5SUJKJmhEWxW6OroKceg4oj/mtPHkEvQQoRsadci
         0OOAX9WansCaw9LOg5mvdETfxZtqUn+7miAHPRkpixb1XlhVdq54LYt+JtOmRlGaq096
         jIt/FVLZLxE3ETEKJq+BX8KsPYR0/eBUO3NBg5JpqBSN0OQ1TMxN7dTiy9yeb3FIKZFD
         q3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SXL2XQh/8juaVlhgPpDGpKtRpD+bZT+LQprdrC9gOC8=;
        b=WYjbXCLLVLH8l9hx569RAZJ9WBXemJL92nqCUMr+/ft/a0CryhZdysWcE/SFYYH1Ae
         YllXqqF8uszeL7ub1VktU9sEy1XmZ2Tgs7fpBhZeY+q2kCK2zrFbPQ4vCt99ILMiRFt7
         lfrlZIF/OPhQ9MFQZAXdB9TNflEEj5kZQViVO7UYb69su6uw68siE0IAk1p5pmQh4vUE
         hTr9rhqCNmtfNVnCZwGSkvIvUlsKMZrU3g/rAP/h6yfSumhMjX18zRBo62AsN6A6vLch
         GE7FOtlREfSNBI3kEr1HNMuP1FEdIya27kTCX6T39UiMFGYyJOp/A622tO4P+r8OC3y+
         rJbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306H6HR10W9jliujM3g5WFwFc/0UWeVZvHhENPXAMgdWa/0DDB4
	K/gbyMuP0A/jX566P3ylMqc=
X-Google-Smtp-Source: ABdhPJzcdr0Ah5D3ScdzxAw/TivAWT3z1nhN5pB8v9Eu0ESGSfJND/BQA5tAkTB4qlg/RJirOQSDdg==
X-Received: by 2002:a5d:4e85:: with SMTP id e5mr4682941wru.68.1622138000903;
        Thu, 27 May 2021 10:53:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6dae:: with SMTP id u14ls897665wrs.3.gmail; Thu, 27 May
 2021 10:53:20 -0700 (PDT)
X-Received: by 2002:a5d:5250:: with SMTP id k16mr4653093wrc.211.1622137999980;
        Thu, 27 May 2021 10:53:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622137999; cv=none;
        d=google.com; s=arc-20160816;
        b=q/b+lczRKdW4zo6ZlxFZM4b1S3+dJr1VWsXOXR/G4Fnl9vYRIneGJFiHxQI+llbLpS
         1zOumjAbs6N8c3UcUBF74mGwt9Xr89ML40YUsRckklI4+CWuoxTq6hKU4NpIWo0h60gk
         GTUuC8xrjNH9oHKSbp3rtqTHCtyRxup+bN9oa9RTeRM0rNy9ysCi8rTlwCGknODCdDc6
         gsyVi2sF2NgUGVOrv1AgE/YU6kqJGggZPCNUKRE06qhj84Xe2M9GLf0dcQcxv/2qSykL
         YfPzGdHxj24rpvlFItXAAPTdEkbVEGkQ51iXtj1oJi4kGE575YzUcujMaX4vkOlPeFJc
         fBAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pwn/tePQRcSxyC0vCEbvvC8Z286nytYCiGX5Tbprk2o=;
        b=ZuiR29tmRsjsGS/hsmhLrzWVdhrbd7JvRqRQpN4UlUVmMQfKByvIJmXyTOlQQSbgJ0
         bwmJUHrc8MWj3Fi2QQ8uV62N+d0CaupJc6lsxopTb7DQJ2koY15REz5c0adEEI3fytqc
         78h5moMWBycQX2mCxG+7qUVHtncEBNUnqpiEXy9baUb9fdhpWl7fLk1D5t1zQGG4cM6k
         Tj4ggA+YaVYvbrngGExSuOogxzdSHHR6T/PESDOC1nVUvTmeXyJsm2JZ3Sk1fsKShmEd
         DLl91eVBie2saz14syHExLcTas4gagjQnQ+QihvCOw0XVj1/t9ZP7J0h1Qj1fn3wVHnD
         EryQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623 header.b=TgF8d7AV;
       spf=neutral (google.com: 2a00:1450:4864:20::636 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id r26si130495wra.1.2021.05.27.10.53.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 10:53:19 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::636 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) client-ip=2a00:1450:4864:20::636;
Received: by mail-ej1-x636.google.com with SMTP id h20so1464951ejg.1
        for <clang-built-linux@googlegroups.com>; Thu, 27 May 2021 10:53:19 -0700 (PDT)
X-Received: by 2002:a17:906:5ada:: with SMTP id x26mr1597510ejs.398.1622137999433;
 Thu, 27 May 2021 10:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <202105270909.1fgRW8Wk-lkp@intel.com> <CAHC9VhRy=oD=B9G_ZZejPX0dL1+vsyLkYLs59vj-SJoeVMs53g@mail.gmail.com>
 <e061750d-9591-ac2c-5331-85456c3b4135@schaufler-ca.com>
In-Reply-To: <e061750d-9591-ac2c-5331-85456c3b4135@schaufler-ca.com>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 27 May 2021 13:53:08 -0400
Message-ID: <CAHC9VhRgXBRMjUd6r3YPPn0=qttm011JWVvmx7fSXxW93G01Qw@mail.gmail.com>
Subject: Re: [pcmoore-selinux:working-io_uring 9/9] security/smack/smack_lsm.c:4702:5:
 warning: no previous prototype for function 'smack_uring_override_creds'
To: Casey Schaufler <casey@schaufler-ca.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, selinux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: paul@paul-moore.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623
 header.b=TgF8d7AV;       spf=neutral (google.com: 2a00:1450:4864:20::636 is
 neither permitted nor denied by best guess record for domain of
 paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
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

On Thu, May 27, 2021 at 1:05 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>
> On 5/27/2021 8:29 AM, Paul Moore wrote:
> > On Wed, May 26, 2021 at 9:51 PM kernel test robot <lkp@intel.com> wrote:
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git working-io_uring
> >> head:   1f25193a3f5495eefbc9826b1de1a008a2439351
> >> commit: 1f25193a3f5495eefbc9826b1de1a008a2439351 [9/9] Smack: Brutalist io_uring support with debug
> >> config: x86_64-randconfig-r013-20210526 (attached as .config)
> >> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install x86_64 cross compiling tool for clang build
> >>         # apt-get install binutils-x86-64-linux-gnu
> >>         # https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git/commit/?id=1f25193a3f5495eefbc9826b1de1a008a2439351
> >>         git remote add pcmoore-selinux https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git
> >>         git fetch --no-tags pcmoore-selinux working-io_uring
> >>         git checkout 1f25193a3f5495eefbc9826b1de1a008a2439351
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> >>
> >>>> security/smack/smack_lsm.c:4702:5: warning: no previous prototype for function 'smack_uring_override_creds' [-Wmissing-prototypes]
> >>    int smack_uring_override_creds(const struct cred *new)
> >>        ^
> >>    security/smack/smack_lsm.c:4702:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >>    int smack_uring_override_creds(const struct cred *new)
> >>    ^
> >>    static
> >>>> security/smack/smack_lsm.c:4739:5: warning: no previous prototype for function 'smack_uring_sqpoll' [-Wmissing-prototypes]
> >>    int smack_uring_sqpoll(void)
> >>        ^
> >>    security/smack/smack_lsm.c:4739:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >>    int smack_uring_sqpoll(void)
> >>    ^
> >>    static
> >>    2 warnings generated.
>
> > FYI, Casey I took the liberty of making the Smack functions static (I
> > had made the same mistake with the SELinux code).
>
> Thank you. If there was any doubt, the Smack function declarations
> were taken directly from the SELinux versions.

I figured that was the case, and for whatever it is worth I would have
done the exact same thing :)

-- 
paul moore
www.paul-moore.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHC9VhRgXBRMjUd6r3YPPn0%3Dqttm011JWVvmx7fSXxW93G01Qw%40mail.gmail.com.
