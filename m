Return-Path: <clang-built-linux+bncBCILLLGERUHBBF6J6DXAKGQEU5OHR2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FFE1093D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 19:59:36 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id h39sf10873209qth.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 10:59:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574708375; cv=pass;
        d=google.com; s=arc-20160816;
        b=NevSbSO/xUapy17YzfbE51kkNupefHi7gBpLsWXJtCEQQVpEho+Wku+WFb+GTlni8S
         HAddptkziELpi1sQ98IiFRCvYrBUl7HW7Sb3+bLB8108Kj3ylQsKfkulnSD3j7RRLwBm
         7/yCVV5XFV5rxBvcNsKgwe7hvsQS/vz0t957+/b9Z30mv+Hrg2hf28htg5O4bJfcZ/g/
         CFinf+A/P1P3PHw4q3JbkOEFDk/MwEgIQE5cAcbchA2SQP1ZrIW2LTcdh7m6jRq85iQH
         FKebUh+2TOUeiU3SxFbnm86WpWYWHJ0XZTZbAnbvLWrPz5yfV3eFlM0Us0qUO/vCMVNO
         KTnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Dov/9zV9sUnL80HX1mefe86nu3eN9vJ7GtehKJce6Vk=;
        b=NbBHl15TPEL/tLQUZSaCXF52TN2Zk499CeAy76KazkApTVwHqEaef1hvYaXQauC/+r
         MzdjaQ3rIDr3v2MGGO2d2sDMzUSuz+rzHK1P6JBM/G2wXIDINsntqbbqN3DdHmToqPYP
         F2RIA143ktRIvJAwqxUrqYWXn+QCLQkKS400CCWxncyC1t3UmcJh8+IDZO1gWONxfSpN
         ukE/Lm9t1skW7sYfGTctQU6e9PV/C2lwmm31+2Bdm6+CHU2yqeASDbPZahyi2FyckLcy
         g6L0nMfuHkFY8A42RbQYYWCBquu1j+R9r+Lqbv8c+D9fNo1ca5/7TuIXZfRCXGqPZb5H
         N/Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dov/9zV9sUnL80HX1mefe86nu3eN9vJ7GtehKJce6Vk=;
        b=XpD/qRU1Je4UOl5LyBLM60uwx9dOmz0/rGq6UO88HiET/8alD/ejP40NeqV+XWidVA
         z/BliWe+ErBkiygvURLnwgz1qhUprq4LWn0fBUKMQg5oQ+iO+DdnjkN9E4VByDfsktzI
         8X4LA+BzkG59/k9mhG974BxANMeFrisedCUzIQEexWmeaEriUfqGPISnU9+KP+UmCagV
         3bm4JhR/ZripPm2BSe87rgnzfFsKktwlMlvIMICtc4NnqJ1e+hJzYsni33kt6xvYQi1N
         PTrVZePt7fbPLORtpY0nNzpvlMPUYhdlcRzo2pf0T8pR85gfiiqE4omEnjNt4jeHZIlC
         kViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dov/9zV9sUnL80HX1mefe86nu3eN9vJ7GtehKJce6Vk=;
        b=ZHC3bDPNr7gsI4+049TkJlm32S7TdW1O9MqXjA4aFBKjkkR9f7YpkQ/VevuvRT2yei
         b/ZfqMM9dQLnQQL9ng3GFKngNIlWNENeoFGBP+fj8stVDrXX7lbvXik1/9PnWILaK+MO
         m4GFoOV/7bM4Q5GVVI/AtI+TvrTZMWy0yiaIZSS7RbtA3vLgfEJ8U4YRki6qN8UrxCyK
         z21ChvK/eaPtn2a9P/0RX2NWg7mMkrfT1fj38bcPXustgZB6ozqzPmc7FAbTTKWcWZph
         BGcy88yFO5wVlTl2tUXFF132WudVppZNUfpYWGQVSS/2C8suKKwFqcu1IQwAj58SKE6v
         7FmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV09MoX5++T5RhpArN9+PYYrAjBSNydNvTbJ+jPkZCJgeAtaYwJ
	PgaIuouR+9iNBejAz4jezyE=
X-Google-Smtp-Source: APXvYqxyGq/stYAqqcLmsawz0+fhFyPXt5++4NnCSSIVF8HVG9Gy7JFBq2pywf6UwTuzA419anO8sA==
X-Received: by 2002:a05:620a:159b:: with SMTP id d27mr19403822qkk.381.1574708375155;
        Mon, 25 Nov 2019 10:59:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6d3:: with SMTP id 202ls6076386qkg.6.gmail; Mon, 25 Nov
 2019 10:59:34 -0800 (PST)
X-Received: by 2002:a05:620a:13e2:: with SMTP id h2mr27899922qkl.114.1574708374745;
        Mon, 25 Nov 2019 10:59:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574708374; cv=none;
        d=google.com; s=arc-20160816;
        b=tU1HAppJxG7klBKvPeZggbR5PV1mMa/p5kxpzXQVgpNkwUn5NX+kPgBGkJjG6p/vn8
         GZv5uWcUSUxvOTXsxB5oG+CIKPrZS1+9jdLdyyxkNBhLlbeDUJQuFQc92uv7ln0sHTBA
         Suuli1ZtX18Pr45eItJ2D2/swn5XvlIdVTw03w6u96UAHe9uCcqCmJ/BYLb6EEngiTDB
         jk1KDYaZW0cm4zlTXwLL9g4YJcUhPcg7O4Xamxbtz1biCz/CgudU/3XVA4RWItyqjcTQ
         z9zocoGVSyieKTUvHNCPVP300hRVj3EYexUZVwWAlS6ibmX64iAYRdNfmsoa3kiHajIN
         McFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=/KYYXYuqaB090SqViyroJfGxL4UJb9+gwjRE2Js0qyQ=;
        b=VUSOu9DH6/lRJyczhIWZ1JQfG+5U+fMv1gkaFi9Z0H63ysZQqjAhFB4LaxzPIU3MrQ
         kKr3PLa3IAaiN7pIk0jRWjXQuCrKJJRZfXMv2a6jil+DpKlqbNwczOO88WKGBLzyzm4s
         P11U/Pqkbf4wRMsw+H43fFQV+y8witDnaUXWhRZ8PrGASRqS3qAc68Z0RpFSzxXQYynG
         jjO2hxqxz271ECqOqJLIHufyyAIUddQg1Bb9WpAmBFcD6K+JO8uw3lhY7CQhZk9XT8Jt
         rzYWdv2t3xVd3OFJYU/MhZvK8JqmW5jVkmlnatlbn2WIyN27Jezg7yJfA7eSK+K7e/af
         Xv5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id 145si331947qkf.1.2019.11.25.10.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 10:59:34 -0800 (PST)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id r20so18353830qtp.13
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 10:59:34 -0800 (PST)
X-Received: by 2002:ac8:7202:: with SMTP id a2mr27161908qtp.247.1574708374398;
        Mon, 25 Nov 2019 10:59:34 -0800 (PST)
Received: from dennisz-mbp.dhcp.thefacebook.com ([2620:10d:c091:500::2:6080])
        by smtp.gmail.com with ESMTPSA id y21sm3872751qka.49.2019.11.25.10.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2019 10:59:33 -0800 (PST)
Date: Mon, 25 Nov 2019 13:59:31 -0500
From: Dennis Zhou <dennis@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: dennis@kernel.org, kbuild@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	David Sterba <dsterba@suse.com>, Chris Mason <clm@fb.com>,
	Josef Bacik <josef@toxicpanda.com>, osandov@osandov.com,
	kernel-team@fb.com, linux-btrfs@vger.kernel.org
Subject: Re: [PATCH 05/22] btrfs: add the beginning of async discard, discard
 workqueue
Message-ID: <20191125185931.GA30548@dennisz-mbp.dhcp.thefacebook.com>
References: <201911220351.HPI9gxNo%lkp@intel.com>
 <CAKwvOdn5j37AYzmoOsaSqyYdBkjqevbTrSyGQypB+G_NgxX0fQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn5j37AYzmoOsaSqyYdBkjqevbTrSyGQypB+G_NgxX0fQ@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: DennisSZhou@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.160.193 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Nov 21, 2019 at 08:27:43PM -0800, Nick Desaulniers wrote:
> Hi Dennis,
> Below is a 0day bot report from a build w/ Clang. Warning looks legit,
> can you please take a look?
> 

Ah thanks for this! Yeah that was a miss when I switched from flags ->
an enum and didn't update the declaration properly. I'll be sending out
a v4 as another fix for arm has some rebase conflicts.

Is there a way to enable so I get these emails directly?

Thanks,
Dennis

> On Thu, Nov 21, 2019 at 11:27 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@lists.01.org
> > In-Reply-To: <63d3257efe1158a6fbbd7abe865cd9250b494438.1574282259.git.dennis@kernel.org>
> > References: <63d3257efe1158a6fbbd7abe865cd9250b494438.1574282259.git.dennis@kernel.org>
> > TO: Dennis Zhou <dennis@kernel.org>
> > CC: David Sterba <dsterba@suse.com>, Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>, Omar Sandoval <osandov@osandov.com>
> > CC: kernel-team@fb.com, linux-btrfs@vger.kernel.org, Dennis Zhou <dennis@kernel.org>
> >
> > Hi Dennis,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on kdave/for-next]
> > [also build test WARNING on next-20191121]
> > [cannot apply to v5.4-rc8]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Dennis-Zhou/btrfs-async-discard-support/20191121-230429
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.git for-next
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project cf823ce4ad9d04c69b7c29d236f7b14c875111c2)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> fs/btrfs/free-space-cache.c:3238:6: warning: variable 'trim_state' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> >            if (!ret) {
> >                ^~~~
> >    fs/btrfs/free-space-cache.c:3251:53: note: uninitialized use occurs here
> >            __btrfs_add_free_space(fs_info, ctl, start, bytes, trim_state);
> >                                                               ^~~~~~~~~~
> >    fs/btrfs/free-space-cache.c:3238:2: note: remove the 'if' if its condition is always true
> >            if (!ret) {
> >            ^~~~~~~~~~
> >    fs/btrfs/free-space-cache.c:3224:2: note: variable 'trim_state' is declared here
> >            enum btrfs_trim_state trim_state;
> >            ^
> >    1 warning generated.
> >
> > vim +3238 fs/btrfs/free-space-cache.c
> >
> >   3210
> >   3211  static int do_trimming(struct btrfs_block_group *block_group,
> >   3212                         u64 *total_trimmed, u64 start, u64 bytes,
> >   3213                         u64 reserved_start, u64 reserved_bytes,
> >   3214                         enum btrfs_trim_state reserved_trim_state,
> >   3215                         struct btrfs_trim_range *trim_entry)
> >   3216  {
> >   3217          struct btrfs_space_info *space_info = block_group->space_info;
> >   3218          struct btrfs_fs_info *fs_info = block_group->fs_info;
> >   3219          struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
> >   3220          int ret;
> >   3221          int update = 0;
> >   3222          u64 end = start + bytes;
> >   3223          u64 reserved_end = reserved_start + reserved_bytes;
> >   3224          enum btrfs_trim_state trim_state;
> >   3225          u64 trimmed = 0;
> >   3226
> >   3227          spin_lock(&space_info->lock);
> >   3228          spin_lock(&block_group->lock);
> >   3229          if (!block_group->ro) {
> >   3230                  block_group->reserved += reserved_bytes;
> >   3231                  space_info->bytes_reserved += reserved_bytes;
> >   3232                  update = 1;
> >   3233          }
> >   3234          spin_unlock(&block_group->lock);
> >   3235          spin_unlock(&space_info->lock);
> >   3236
> >   3237          ret = btrfs_discard_extent(fs_info, start, bytes, &trimmed);
> > > 3238          if (!ret) {
> >   3239                  *total_trimmed += trimmed;
> >   3240                  trim_state = BTRFS_TRIM_STATE_TRIMMED;
> >   3241          }
> >   3242
> >   3243          mutex_lock(&ctl->cache_writeout_mutex);
> >   3244          if (reserved_start < start)
> >   3245                  __btrfs_add_free_space(fs_info, ctl, reserved_start,
> >   3246                                         start - reserved_start,
> >   3247                                         reserved_trim_state);
> >   3248          if (start + bytes < reserved_start + reserved_bytes)
> >   3249                  __btrfs_add_free_space(fs_info, ctl, end, reserved_end - end,
> >   3250                                         reserved_trim_state);
> >   3251          __btrfs_add_free_space(fs_info, ctl, start, bytes, trim_state);
> 
> ^ oops
> 
> >   3252          list_del(&trim_entry->list);
> >   3253          mutex_unlock(&ctl->cache_writeout_mutex);
> >   3254
> >   3255          if (update) {
> >   3256                  spin_lock(&space_info->lock);
> >   3257                  spin_lock(&block_group->lock);
> >   3258                  if (block_group->ro)
> >   3259                          space_info->bytes_readonly += reserved_bytes;
> >   3260                  block_group->reserved -= reserved_bytes;
> >   3261                  space_info->bytes_reserved -= reserved_bytes;
> >   3262                  spin_unlock(&block_group->lock);
> >   3263                  spin_unlock(&space_info->lock);
> >   3264          }
> >   3265
> >   3266          return ret;
> >   3267  }
> >   3268
> >
> > ---
> > 0-DAY kernel test infrastructure                 Open Source Technology Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191125185931.GA30548%40dennisz-mbp.dhcp.thefacebook.com.
