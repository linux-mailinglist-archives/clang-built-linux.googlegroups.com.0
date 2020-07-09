Return-Path: <clang-built-linux+bncBD4JTHXGZ4MBB6V2TP4AKGQESBREADQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DF4219BA0
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 11:03:56 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id k12sf857100iom.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 02:03:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594285435; cv=pass;
        d=google.com; s=arc-20160816;
        b=chScqtf7UfWx/UMOvJS9C0Qi4R4aYBWb1KqQ3VHNH21vK9nmfWh75nmD7wtPNM6BGv
         Rt8AtMu7ONHl3tJNaEH8zTtH84BHlM0n9++WptuOVxBPQ0eTYqaLNKaJCmdCJDbFuJ8M
         PKzM3LLTSZgsHngET6hAwUTXaZuIaVEQu93sy8AwlPWBmPh76EAvnSQcZwmNlMZTNDXZ
         uHOA0jCMPL9QKSaSyHGOy6T8/wm04u+/Vws7YhWx0Xp5/f+kbVHKVW4bFyjjDUMlR7KP
         7PB5jjXo3LXbaU2UolQidH4hibtHK54b8joXL4zS7rSXgJsYb3nGE3pmICNNojvpO0Ls
         nIig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RHsxXgc11UwnEL59qUc2IEqTp4QVpHK75GFa6hpHZm4=;
        b=qTgZNsWoIzxQLSSpKEFSpCaoDaFh+yWNqDY0zyd5TPAUtnii3fS0DegXAbfflg0jLx
         utWSl7gW6uC6asZD9tZV1pCXt/d6OEAStLh4bBmD7nMSGEV+O5qgMnpnolnCS7nnhfG+
         MLmpbOUoqBR8UajbJQhVxjfkCQvMtq7M9i+YfEWVzJBVdN3XE8LLm7vOy8zqKSm99dc5
         aHR5j97+cfFEuuRY/FC1nNrTBHocIvB0j7OOs7C30aqfmeYSN49MFKtqOOyuo4CJCoJ+
         ouJFP4zbhSxl8Y7/HSNr3w63H5eM6I0wKKMi60bttAUUKcTg1bMRQg/8ZUTVtXUGb5F4
         IAtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YsOVU9tx;
       spf=pass (google.com: domain of amir73il@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=amir73il@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RHsxXgc11UwnEL59qUc2IEqTp4QVpHK75GFa6hpHZm4=;
        b=CBuVOpghxkR4gz8FolEfKSqQWxT90+6NgHdNMUaug0vVkgPdsW7oku554T4YT0yu+y
         wlrxP0+hRzLMOOnz/qA9y/wlZnHPgTNLWsd1y+MBa2QNLhTA3YTHYvBsz1eHfRfWV3tV
         ovPyuD27BjXG3eRIzgMWZ0iWltAKsmTUW41wWf7oRyR1O4QdEqcxKZqC0Le31LQkhgty
         aHvFgQF3i7WfFY0nqrma3M7HtcOUvdt1w96574y6Cw5ivqBDrfSEFp69dW3YsPkgXXsR
         KwD1fno3oNalH7rYeJniQVsNhxvCzjrBfqPqwLYVSb260oYv1cRlE7HVucnPuuK9axRa
         kMiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RHsxXgc11UwnEL59qUc2IEqTp4QVpHK75GFa6hpHZm4=;
        b=Bx6q0zO0ZUoFk5677ErwYZtD5KeliMJ2/nwQiGe7iDXPn2l1C3qkAu7CUwsvYN9WpA
         q7L+JZURpaYio8zX30pCYAJBq+2/hqe4xxta4C6lKZ93XXwRvDZVt7+Q3egXi/6lcdMV
         /biBGJlomZyEPMoI9bYhiYs4AioUcCoNoya8KIGyzNpSJomi9GrxT/h4PU6CygANzctW
         l5ApMMSzpWeGBtQffEMMUtAXNn8xELh0zX2ySexXJx4zqSVMHwu4YBj7Bgs6aBw6fg8O
         QjkmIj35nqY8BXA5pd0qGoESUuYnHb3M6HKK4/p51BGLyfuyE9hPsr/XHmqbu3MNoz4M
         nqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RHsxXgc11UwnEL59qUc2IEqTp4QVpHK75GFa6hpHZm4=;
        b=pV3gbpb8XzO3wT2A7SXnYMbWIbtNEF8WH8/cA2fDtzO0eSZons7cVo+97J3DpeQxKc
         tm6OhtDZLezxrgCHVhLKSJ0ut2PlXIZ0w6D8cYZF2hebDiGjCcCZyWjhiquf4luXHcVT
         XXUejVVZ5LWhZk015im+fHxZ1h4rTt7z0F9BaFOeqe6e43rkVSD2QDgTHNWjsXDN2+Pm
         PDnhhVrecOIX0rgbXRb+bHd5osRtkQRZdQBdjb60kJd1GfCmYUoceR3qBzjQMkHgIXL9
         bkBJimb/aklvAI9K8sgagmIs05I2/uqpCs8fi8RsfHBXxgmH1Sv7/RX1rr72rfslQH1K
         lMLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bz+8Y7OgTtqknN30h2yjhof0sV603/qBi7tX5PUNHHkI5mK9U
	EpxmVq6Guecslogy7G7eXtE=
X-Google-Smtp-Source: ABdhPJxJnfA91nGqcKhXdQWZC5PrRxT1HGASSbJ9XAHpcvd4NNgF2SqvUVP63Y4HB+cG9LRI/ghM0g==
X-Received: by 2002:a05:6602:2f09:: with SMTP id q9mr42641519iow.66.1594285434944;
        Thu, 09 Jul 2020 02:03:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a89:: with SMTP id c9ls1260010ill.7.gmail; Thu, 09 Jul
 2020 02:03:54 -0700 (PDT)
X-Received: by 2002:a92:c0c9:: with SMTP id t9mr48210500ilf.82.1594285434602;
        Thu, 09 Jul 2020 02:03:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594285434; cv=none;
        d=google.com; s=arc-20160816;
        b=LhsCCZzo+CdquXPQNvs+NnD41/NNUFMeTo5W2KzgmpVUzlaqDwPWRWhTKR6pODVDch
         19Y7LAiInWfMPMVQc4FTK8MUeBcwFHHVBztOPYmJB/Z+Zq5/ZO2XOd3ZWwTZUK+4COVN
         bTC3p3TCcntk2hOpCDDpTpwgBy9ZvEsko5h4fV5LkauzC9Pd20qXhe94gf7gsSrDHjGL
         taS/4someFeifVWV/WjQD/NhiM86IbyK6eiVYk6yrTBMTHpCZIVYDv0VYMvNvHl0XbyY
         uWy37SSxK17hElLGDjudryd4ekGKEIO3sCAoXfX2N5Z4m7WQGYhtmy8ayY9dHSQ92zrb
         GG1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3yS6k0SQ9o7Am/5CKe13gcW9V6NlU29ECQqYIpLGOy8=;
        b=hL9abCjBj5HFKuSRsQ3N4SRsHETrA4sqIcKYtJV30u8s61oj4dSsYs/QG+wDXgofzp
         2uhnYWeVXsGHlx4vz5aEW2syndq/agKPYrvrc4l32JsJdcdcMQZY6J4hZ8Kat6y8QRCx
         eVGuKWS8MSfMWWuK2crOpSJJEzbj8Bz3FpRCbRL8XgkLo49foUbQaze6yNhB1U6lJRIl
         bmsuZujerykUk75aS4UPVh+bGgmw/Ex0EsqrzoGsF+KM8rU4Dp2Pib4QG0bWszKkGJMv
         2So0nDz9T1OhtWOT88WLAiil02mhRuuObBBDNLe8rCC7ompIgNq58TJPEOlXOs6d5tbz
         2gxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YsOVU9tx;
       spf=pass (google.com: domain of amir73il@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=amir73il@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id i20si139286iow.2.2020.07.09.02.03.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 02:03:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amir73il@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id o3so1363711ilo.12
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jul 2020 02:03:54 -0700 (PDT)
X-Received: by 2002:a92:4983:: with SMTP id k3mr15420722ilg.275.1594285434311;
 Thu, 09 Jul 2020 02:03:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200708111156.24659-8-amir73il@gmail.com> <202007091516.gofG28uU%lkp@intel.com>
In-Reply-To: <202007091516.gofG28uU%lkp@intel.com>
From: Amir Goldstein <amir73il@gmail.com>
Date: Thu, 9 Jul 2020 12:03:43 +0300
Message-ID: <CAOQ4uxg9wEGwNB6mObvS+hBA_fboB_gg8NvvafwsbPFy80SAkg@mail.gmail.com>
Subject: Re: [PATCH v3 08/20] fanotify: break up fanotify_alloc_event()
To: Jan Kara <jack@suse.cz>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	linux-fsdevel <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: amir73il@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YsOVU9tx;       spf=pass
 (google.com: domain of amir73il@gmail.com designates 2607:f8b0:4864:20::141
 as permitted sender) smtp.mailfrom=amir73il@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 9, 2020 at 10:33 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Amir,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on ext3/fsnotify]
> [also build test WARNING on nfsd/nfsd-next driver-core/driver-core-testing linus/master v5.8-rc4 next-20200708]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Amir-Goldstein/fsnotify-Rearrange-fast-path-to-minimise-overhead-when-there-is-no-watcher/20200708-191525
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/jack/linux-fs.git fsnotify
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> fs/notify/fanotify/fanotify.c:347:24: warning: no previous prototype for function 'fanotify_alloc_path_event' [-Wmissing-prototypes]
>    struct fanotify_event *fanotify_alloc_path_event(const struct path *path,
>                           ^
>    fs/notify/fanotify/fanotify.c:347:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    struct fanotify_event *fanotify_alloc_path_event(const struct path *path,
>    ^
>    static
> >> fs/notify/fanotify/fanotify.c:363:24: warning: no previous prototype for function 'fanotify_alloc_perm_event' [-Wmissing-prototypes]
>    struct fanotify_event *fanotify_alloc_perm_event(const struct path *path,
>                           ^
>    fs/notify/fanotify/fanotify.c:363:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    struct fanotify_event *fanotify_alloc_perm_event(const struct path *path,
>    ^
>    static
> >> fs/notify/fanotify/fanotify.c:381:24: warning: no previous prototype for function 'fanotify_alloc_fid_event' [-Wmissing-prototypes]
>    struct fanotify_event *fanotify_alloc_fid_event(struct inode *id,
>                           ^
>    fs/notify/fanotify/fanotify.c:381:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    struct fanotify_event *fanotify_alloc_fid_event(struct inode *id,
>    ^
>    static
> >> fs/notify/fanotify/fanotify.c:398:24: warning: no previous prototype for function 'fanotify_alloc_name_event' [-Wmissing-prototypes]
>    struct fanotify_event *fanotify_alloc_name_event(struct inode *id,
>                           ^
>    fs/notify/fanotify/fanotify.c:398:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    struct fanotify_event *fanotify_alloc_name_event(struct inode *id,
>    ^
>    static
>    4 warnings generated.

Jan,

I add 'static' rebased and pushed to fanotify_prep branch
Rebase had minor conflict in following patch (pass dir argument ...)
Also rebased and pushed fanotify_name_fid

Thanks,
Amir.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOQ4uxg9wEGwNB6mObvS%2BhBA_fboB_gg8NvvafwsbPFy80SAkg%40mail.gmail.com.
