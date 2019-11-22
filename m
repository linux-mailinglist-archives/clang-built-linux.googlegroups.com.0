Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTGH3XXAKGQE5GKL5HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9BB105F36
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 05:27:57 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id t33sf4063661ybt.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 20:27:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574396877; cv=pass;
        d=google.com; s=arc-20160816;
        b=b+qx5ziMGBbSKbGtpngcXS5bXidhYvybLb9j6oK1GTYSEwbm74NOz+oVrZj1+WDWRd
         Hpc84JwBrMHlXE4QYD9nKqGBo7TEKgZKXw2DrikGaEbEMDm66wgJhBz+JjN257lTf5xL
         /KJBOZbrGvAqVvA2pIBwk/venutzgS+hNI1xtHUmwDuX1GzC62HLXvx39X3e6v5yzkdH
         eTcxPo2NH9aTZMBaWXQdYixvvBWbRGGt2+gAQKla+tXqYRDTcY1VgmLLj0eOFp1h1ZOS
         rcbkegboknv6vLeMukw87XNfeMUORk8w6hl4WjU8CSYMIvxJ4jSamOjRtt4fguseyIhq
         99Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8AdGTTh4LUxVeYz+VktDIdwK2Wyb1sW66WLfxeNpEcM=;
        b=YWFyvdNbrQ2Jkhfs1TeaeLEO+Y7Emp8E3xN7G0y/vF4Wy5+lmFs+txTGpWGaXBAVlQ
         cNZaSDMES1Sv1RAooNzjcCn5E/WTHZknLYG0GehFSzUzM2sVZ1qlzUVDRbDMKcEs6Ldp
         tSIeGcMwpfbZlJBbXM/VNGQDCnAsO1BGH40EUzkzRWdJ0mgrdgjkX9ZOxbrTkL1IQWgZ
         ozyTV4ZkaZZdFWWrUxA1gB3xjJy+QGquaCsKeQB65dGGUw3pbDv2UZqDVFaSlBTN9S74
         +yyXNLS8Abz8/WeV1u8PM06Pr34GpdDmNT67yl6NXx9fPRZ7gelkqNgjN8i9+ZH551zM
         T7PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="iiAAKav/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8AdGTTh4LUxVeYz+VktDIdwK2Wyb1sW66WLfxeNpEcM=;
        b=T6VNtcgeyyy2PE67dALKrsSfjsVsqvawOeknRQL0whB5SKmsf2Hll9OvjxgMhglo/R
         mAbPUlkrlD9wMr4w3FYpd4j32nb5vAzsbnnOGzB4DW/K2q2prbuuoVOxG5X5JL4Bbm3r
         m2v9/DU23obXgyKwx68Nk5zFxtMTDJauJC2If7+CetJNRTwktJfFN9ZY58YqfIXWeE3E
         mnS35S2iQZB1q0CKAQ2CiPoQmYG9wUCYTgnNfRs0UcEYlVxH4ihE4eKPNKbr/hf9dJRP
         husUK4+pAEuEMZdko/j3mJqvPxHnxwHSX1IArS81MEDzB1f+7L+Lg4zeuOYBSSAwp3nS
         OFWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8AdGTTh4LUxVeYz+VktDIdwK2Wyb1sW66WLfxeNpEcM=;
        b=bpnUO+tlStKHm1wRtrGfgjRvjUQJNYAeQecKWdGb2EjPlo/jDth/T4cAkMpECkxjnB
         9aBJnSwQFXK9N7VlTxwhd9KoNK5+LGVDlnkuH+VOa9CB/jssb1oBEoeLLkXLSmO9QuH6
         HybwYHhLhqRhSGK/1epyyXa64lUYZ1+ObMDnT2L/u64uzDnGTwFlvj+iD3xJH2kiubgw
         /CJfVlJlw9SU3AO1MquOi4dpmVfUtW9Fb4abgbYIn17M/NS5yLNNMb8bUMDkvP065YNm
         FMQ1CRop3cWoe/ejM7kxKiXNf2wLgyOhuMvlzmZZm5tRbYbov3VCsxmlF0/oSL2kKHGM
         zQrw==
X-Gm-Message-State: APjAAAV2LpjGRsAAqjlqOXCSQXG1NAu2kC6YGaY+kztRe6FDZSqT7JAj
	QLCfhPo7MsyyNpJrocCjrJQ=
X-Google-Smtp-Source: APXvYqwqP/G9ItCI0EXijk8dqoAC7JiZLVhc23jr3QeSBPVX706qo+yuMAN1G60CRqbBon88WsTZIg==
X-Received: by 2002:a25:b7d4:: with SMTP id u20mr8799389ybj.382.1574396876762;
        Thu, 21 Nov 2019 20:27:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9ac2:: with SMTP id r185ls1153821ywg.10.gmail; Thu, 21
 Nov 2019 20:27:56 -0800 (PST)
X-Received: by 2002:a81:3b97:: with SMTP id i145mr8393965ywa.290.1574396876352;
        Thu, 21 Nov 2019 20:27:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574396876; cv=none;
        d=google.com; s=arc-20160816;
        b=unriCq2YVUEH2kbMGnkaRz9ri3lOS7iPl5hUQNJthP6da4sKWgmWT2CyCv1WcVJSio
         WDQG7twOMDLU86FeBmOqudjmlFb3QHWFHkHKM4HrAekaS0IWUA/Ek+vKN8YY/TUQutjf
         8Zw6YQkrX7ff0ha3opT/2TC2iQ5cMkpzojIpVQjKX2OH1IkhCbypJ5upKfvKfFn0yWrc
         zKOpLxwfM424IH7awhe9tRwTbNHwdmKBpiBt16f2izl7kQCWwL/HGD2WJT46mNrFZP0x
         6u63lAqEMHdctYJbiw7JgFbg3206e+d2PwMEVRrrQ5cr8VCfS43qlML+fg3pq+heqtLd
         Nsfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FMVG6+Kx1xhwjBWiCA3I3pAlD6vo349K1VEd3grV/SA=;
        b=YhjblkB71V+n8zmtwvngtKrj9MZKPjaEO/arvelmH2ciVUQgV9OXvIvUct0IqKxVaX
         kZ9Qk0aqFWnaqulLt3j+dRejhcZCoApSrVUD3DmRunVv3cAk57RNx61dXhQeiy4gDHIX
         6asCHr4QPFyhZ+Vu3Wj3zSGd1uj+3HkTV3NeDDequg5YoombD6z1+Kh54GW8UAbfQrBj
         X9CLiyJH1QW+QHThryrk16XaXGmZGyRd65Z3Dlih9vU1ZYuuwtX3LpfN8mDSSRRSF3Vd
         th7eRHLgO6+4owdMct0i+hNgouFyzxpdAhBGLD+RARTd6rxEk+CMoqCvyBpCo5PrBLOy
         bqlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="iiAAKav/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id x69si237472ybg.2.2019.11.21.20.27.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2019 20:27:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id ay6so2589362plb.0
        for <clang-built-linux@googlegroups.com>; Thu, 21 Nov 2019 20:27:56 -0800 (PST)
X-Received: by 2002:a17:902:8f94:: with SMTP id z20mr11787383plo.119.1574396875002;
 Thu, 21 Nov 2019 20:27:55 -0800 (PST)
MIME-Version: 1.0
References: <201911220351.HPI9gxNo%lkp@intel.com>
In-Reply-To: <201911220351.HPI9gxNo%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Nov 2019 20:27:43 -0800
Message-ID: <CAKwvOdn5j37AYzmoOsaSqyYdBkjqevbTrSyGQypB+G_NgxX0fQ@mail.gmail.com>
Subject: Re: [PATCH 05/22] btrfs: add the beginning of async discard, discard workqueue
To: dennis@kernel.org
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org, David Sterba <dsterba@suse.com>, Chris Mason <clm@fb.com>, 
	Josef Bacik <josef@toxicpanda.com>, osandov@osandov.com, kernel-team@fb.com, 
	linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="iiAAKav/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

Hi Dennis,
Below is a 0day bot report from a build w/ Clang. Warning looks legit,
can you please take a look?

On Thu, Nov 21, 2019 at 11:27 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> In-Reply-To: <63d3257efe1158a6fbbd7abe865cd9250b494438.1574282259.git.dennis@kernel.org>
> References: <63d3257efe1158a6fbbd7abe865cd9250b494438.1574282259.git.dennis@kernel.org>
> TO: Dennis Zhou <dennis@kernel.org>
> CC: David Sterba <dsterba@suse.com>, Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>, Omar Sandoval <osandov@osandov.com>
> CC: kernel-team@fb.com, linux-btrfs@vger.kernel.org, Dennis Zhou <dennis@kernel.org>
>
> Hi Dennis,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on kdave/for-next]
> [also build test WARNING on next-20191121]
> [cannot apply to v5.4-rc8]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Dennis-Zhou/btrfs-async-discard-support/20191121-230429
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.git for-next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project cf823ce4ad9d04c69b7c29d236f7b14c875111c2)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> fs/btrfs/free-space-cache.c:3238:6: warning: variable 'trim_state' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (!ret) {
>                ^~~~
>    fs/btrfs/free-space-cache.c:3251:53: note: uninitialized use occurs here
>            __btrfs_add_free_space(fs_info, ctl, start, bytes, trim_state);
>                                                               ^~~~~~~~~~
>    fs/btrfs/free-space-cache.c:3238:2: note: remove the 'if' if its condition is always true
>            if (!ret) {
>            ^~~~~~~~~~
>    fs/btrfs/free-space-cache.c:3224:2: note: variable 'trim_state' is declared here
>            enum btrfs_trim_state trim_state;
>            ^
>    1 warning generated.
>
> vim +3238 fs/btrfs/free-space-cache.c
>
>   3210
>   3211  static int do_trimming(struct btrfs_block_group *block_group,
>   3212                         u64 *total_trimmed, u64 start, u64 bytes,
>   3213                         u64 reserved_start, u64 reserved_bytes,
>   3214                         enum btrfs_trim_state reserved_trim_state,
>   3215                         struct btrfs_trim_range *trim_entry)
>   3216  {
>   3217          struct btrfs_space_info *space_info = block_group->space_info;
>   3218          struct btrfs_fs_info *fs_info = block_group->fs_info;
>   3219          struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
>   3220          int ret;
>   3221          int update = 0;
>   3222          u64 end = start + bytes;
>   3223          u64 reserved_end = reserved_start + reserved_bytes;
>   3224          enum btrfs_trim_state trim_state;
>   3225          u64 trimmed = 0;
>   3226
>   3227          spin_lock(&space_info->lock);
>   3228          spin_lock(&block_group->lock);
>   3229          if (!block_group->ro) {
>   3230                  block_group->reserved += reserved_bytes;
>   3231                  space_info->bytes_reserved += reserved_bytes;
>   3232                  update = 1;
>   3233          }
>   3234          spin_unlock(&block_group->lock);
>   3235          spin_unlock(&space_info->lock);
>   3236
>   3237          ret = btrfs_discard_extent(fs_info, start, bytes, &trimmed);
> > 3238          if (!ret) {
>   3239                  *total_trimmed += trimmed;
>   3240                  trim_state = BTRFS_TRIM_STATE_TRIMMED;
>   3241          }
>   3242
>   3243          mutex_lock(&ctl->cache_writeout_mutex);
>   3244          if (reserved_start < start)
>   3245                  __btrfs_add_free_space(fs_info, ctl, reserved_start,
>   3246                                         start - reserved_start,
>   3247                                         reserved_trim_state);
>   3248          if (start + bytes < reserved_start + reserved_bytes)
>   3249                  __btrfs_add_free_space(fs_info, ctl, end, reserved_end - end,
>   3250                                         reserved_trim_state);
>   3251          __btrfs_add_free_space(fs_info, ctl, start, bytes, trim_state);

^ oops

>   3252          list_del(&trim_entry->list);
>   3253          mutex_unlock(&ctl->cache_writeout_mutex);
>   3254
>   3255          if (update) {
>   3256                  spin_lock(&space_info->lock);
>   3257                  spin_lock(&block_group->lock);
>   3258                  if (block_group->ro)
>   3259                          space_info->bytes_readonly += reserved_bytes;
>   3260                  block_group->reserved -= reserved_bytes;
>   3261                  space_info->bytes_reserved -= reserved_bytes;
>   3262                  spin_unlock(&block_group->lock);
>   3263                  spin_unlock(&space_info->lock);
>   3264          }
>   3265
>   3266          return ret;
>   3267  }
>   3268
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn5j37AYzmoOsaSqyYdBkjqevbTrSyGQypB%2BG_NgxX0fQ%40mail.gmail.com.
