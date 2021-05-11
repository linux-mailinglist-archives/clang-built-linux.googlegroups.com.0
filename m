Return-Path: <clang-built-linux+bncBDKMLAXVVQHBBCGQ5CCAMGQEZZZMJNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C45379FE9
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 08:45:29 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id u5-20020a17090a3fc5b029014e545d9a6esf1017747pjm.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 23:45:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620715528; cv=pass;
        d=google.com; s=arc-20160816;
        b=O2TDVqCCOCL9EgkWGGSUPV4PMPD/z+vBfm1YPw8PPqXDg0RFOxdLUG0Ta3QGo90Qaz
         Qx92R95FGxILsEX+wKGpXqqbk3uWBtji3XNW1cdFD4cW/8VmQwhVxyotvvSp2LFIiDSU
         7XGFXodHBGAMB4qTL35mH0aJp1qw6NgsC3SGYWRu686nMWDAiwHkgNaWBt9uqcXDxvCs
         JvCBrSZcUWOMgxux3iq4a+To2qtEu2J/zpt+E7y6T6TOnMgnQEN8wi5BBiHn3PLJb7uW
         2t/7CGbLrbJqAODfS/lkhU8MN8cWQ35Cd9PC14G+cqGraW1AHY5iWIy74/4gJ4bSm8sk
         szSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=cFv4Gu1x0qhljnpDY5laxQYRKxrLIafHhk+kqR6PYWE=;
        b=O0jsFVynswdevj4VstNNol6CjhbrocIgiDQpxqDU5X6HqSIyk6jGLkOgqMYQG+DmBX
         /eGdFuiTs1VuhkK/AIlbEV9l37CW8UmDnaCYJHoE05F3zwbEJMWthZGjcEmd9+1SPAMk
         GH8ahX7fpqfzajUgSCSAdYWpA4Nuxw7I9GsI2bbA5Mx/3lJOP2l4C5w08dGu/nM1eIF2
         AS0ExDgpildNtz49rcfLFUl/Nz8GP74YcMZaubtns53TQTwai7OsyrSy0FpbL4/rElRD
         fnlsxQEs71IgcLLMdGYWWmG5RXzYAr9d0Gs9y8YkbW7hnBUBiOX+zCy0oIrsXD37n326
         jDtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=yuchao0@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cFv4Gu1x0qhljnpDY5laxQYRKxrLIafHhk+kqR6PYWE=;
        b=RscwVgKx7Jgfln2sum+ERAarZuknZRsbCWRKorh+iMYZEEwivM+Fb5PflSiy0KivjR
         CAhoS+d2YmvUM1ad6+bJCKkI6PQnVC96dgAaqyszvX7/aI0FLyc/higRRKPd9jDwEnv9
         0LX0QiHZto/La8wCr+2qray8HzjGMrHQ+frSHZomy39zvLaZ8YWc2JCirYC1Yk+hVO2O
         YKqmSTShrOBdkjGmc39wiqaW1pay7xwJUQS2y7m5ph7btKAzLEMzbBj6qVIkvK+R9Ass
         aZMNeZ8FckbOprcBUgol2ZE9OALpqlx24tWf+D8mMvhlqxU9VOmitzTGKkL7aSjk2HzU
         LygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cFv4Gu1x0qhljnpDY5laxQYRKxrLIafHhk+kqR6PYWE=;
        b=Bo8q5iYuouQEvRl7N+Dhovpz2iETym/jM2FtfCBqdreNubRaaCHu5WIGRzgulitQ7N
         Nx8+9zhi+u0r1dD1VFkw/xum1a4qJETEHQxqT53ENNi6Xnne7qi9N43Tf5jVo2JfmXA+
         Pzuh1uSTpG1vNEqCc6Vc5afxutxS0CGh8aPODjD7B71Qg8i/GLsn9z7zqnLSHlAui2YF
         OPngofMzOvRafekzPXztzPNjF/S2uMt2AkJlUZqng8OA5HSJwxtykAzUHyl5o46FM0j6
         swMY7JHgST9QsupJ0uEWaK+Qn/1WUtOQMWL0Kr47SWkau2rRqn/ubhig8XoiG9zHj9WM
         MJMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CEgM0+xHJBNATvQLyGXOLHs7c/b91tah2e2K9vh44/sUYuPaE
	VZXx+Wdu3A8lMo3M7FCtDF4=
X-Google-Smtp-Source: ABdhPJxnXqBsbSyqYhsAM9lEH0EeRiOCZWZKiNMxK4Rbnf3W28TOx9AUyeqkkO2Bb7x9cMMDxAwkgA==
X-Received: by 2002:a63:5b1a:: with SMTP id p26mr29002433pgb.65.1620715528323;
        Mon, 10 May 2021 23:45:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:b50f:: with SMTP id y15ls3379948pfe.8.gmail; Mon, 10 May
 2021 23:45:27 -0700 (PDT)
X-Received: by 2002:a63:1e4d:: with SMTP id p13mr29346773pgm.238.1620715527672;
        Mon, 10 May 2021 23:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620715527; cv=none;
        d=google.com; s=arc-20160816;
        b=KDcUyquJ/O/MNtthbJNDO9El/7k9Zcc2lZpC3PQa/H/OvO+vaTL5ADXbnnMLmtCgYw
         WZoxW83TUjA5ejk+0RqmQvV+1Ie+Wg0c/78jdrxRelYNMXMXcCZz/e41AjlrUPmkmljx
         liOHpU4Z/OW7ONmZeW8cusccbfcCQ3r2Azs4BtbUhN6gvCxx7LyFtTR+ks5q4Bf5zhbY
         HfqNGEpkrIJp4rvB6pFUCULIrq+ypby6tzdymgGM6E7pNIKXKd/tp9IYB83Og+vq+p/z
         UCIjYvRjUtAtzAOpft0AE0+awZIzySJBiNcUfu2oAh3RbM1aOxnoqMWdmkPRi1cnmDeP
         yY5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=TrdDGr8W3Mjo+2ybFJjLJZ0JLN2ULmH26bDyKhnBmHk=;
        b=XYNZcXVQlw6IFHO6uyH7mucNzw/IpKt6RPtyQ9CJF9TgS4E56pFpDQiW/84F8Nzsuc
         wCaRjmM6VuxjSzorMtB3iqvreh2LglbNHQe938scALhzCK6+2IVVrN1lVyxL95/NVUoU
         Uz845EoZbwXpfhLcNhWAj/vHl4N53s4iysH1MqUnLrVjr7LbiS+5duZxiDtOdAaN7p24
         ZUrax8lzdjBNog/RYpe71cvuUWYCpjQnkGcK/omqC1E3G0CiFC5GUyzIkRL0NINpL/8h
         kW/e03IbE7g2HEAexPExMLUh5sA4amDRTmrTIcI9+osNmURM2IlZl5DP/RQDVOoY5x10
         TI5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=yuchao0@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id c16si163145pjo.1.2021.05.10.23.45.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 23:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggemx753-chm.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4FfSyY4qxKz5vt6;
	Tue, 11 May 2021 14:42:13 +0800 (CST)
Received: from [10.136.110.154] (10.136.110.154) by
 dggemx753-chm.china.huawei.com (10.0.44.37) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Tue, 11 May 2021 14:44:52 +0800
Subject: Re: [f2fs:dev-test 12/12] fs/f2fs/super.c:4194:31: error: implicit
 declaration of function 'COMPRESS_MAPPING'
To: kernel test robot <lkp@intel.com>, Jaegeuk Kim <jaegeuk@kernel.org>
CC: Chao Yu <chao@kernel.org>, <kbuild-all@lists.01.org>,
	<clang-built-linux@googlegroups.com>,
	<linux-f2fs-devel@lists.sourceforge.net>
References: <202105111323.jd5vYmHN-lkp@intel.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <09581936-5fe8-fd69-df5b-835b6db089ac@huawei.com>
Date: Tue, 11 May 2021 14:44:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <202105111323.jd5vYmHN-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.136.110.154]
X-ClientProxiedBy: dggemx704-chm.china.huawei.com (10.1.199.51) To
 dggemx753-chm.china.huawei.com (10.0.44.37)
X-CFilter-Loop: Reflected
X-Original-Sender: yuchao0@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yuchao0@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=yuchao0@huawei.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=huawei.com
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

Hello,

Thanks for the report.

On 2021/5/11 13:41, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> head:   55b45e3a3bbcbc02828c32e3ba3f413634046fd2
> commit: 55b45e3a3bbcbc02828c32e3ba3f413634046fd2 [12/12] f2fs: compress: add compress_inode to cache compressed blocks
> config: x86_64-randconfig-a003-20210511 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git/commit/?id=55b45e3a3bbcbc02828c32e3ba3f413634046fd2
>          git remote add f2fs https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git
>          git fetch --no-tags f2fs dev-test
>          git checkout 55b45e3a3bbcbc02828c32e3ba3f413634046fd2
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>>> fs/f2fs/super.c:4194:31: error: implicit declaration of function 'COMPRESS_MAPPING' [-Werror,-Wimplicit-function-declaration]
>                             truncate_inode_pages_final(COMPRESS_MAPPING(sbi));
>                                                        ^
>>> fs/f2fs/super.c:4194:31: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'struct address_space *' [-Wint-conversion]
>                             truncate_inode_pages_final(COMPRESS_MAPPING(sbi));
>                                                        ^~~~~~~~~~~~~~~~~~~~~
>     include/linux/mm.h:2651:62: note: passing argument to parameter here
>     extern void truncate_inode_pages_final(struct address_space *);
>                                                                  ^
>     1 warning and 1 error generated.

I have fixed this in my repo:

https://git.kernel.org/pub/scm/linux/kernel/git/chao/linux.git/commit/?h=dev&id=c2c4e40ae1815d4a6f4143a5af4a38c4a76ba9f7

@@ -4162,6 +4186,15 @@ static void kill_f2fs_super(struct super_block *sb)
  		f2fs_stop_gc_thread(sbi);
  		f2fs_stop_discard_thread(sbi);

+#ifdef CONFIG_F2FS_FS_COMPRESSION
+		/*
+		 * latter evict_inode() can bypass checking and invalidating
+		 * compress inode cache.
+		 */
+		if (test_opt(sbi, COMPRESS_CACHE))
+			truncate_inode_pages_final(COMPRESS_MAPPING(sbi));
+#endif

Thanks,

> 
> 
> vim +/COMPRESS_MAPPING +4194 fs/f2fs/super.c
> 
>    4179	
>    4180	static void kill_f2fs_super(struct super_block *sb)
>    4181	{
>    4182		if (sb->s_root) {
>    4183			struct f2fs_sb_info *sbi = F2FS_SB(sb);
>    4184	
>    4185			set_sbi_flag(sbi, SBI_IS_CLOSE);
>    4186			f2fs_stop_gc_thread(sbi);
>    4187			f2fs_stop_discard_thread(sbi);
>    4188	
>    4189			/*
>    4190			 * latter evict_inode() can bypass checking and invalidating
>    4191			 * compress inode cache.
>    4192			 */
>    4193			if (test_opt(sbi, COMPRESS_CACHE))
>> 4194				truncate_inode_pages_final(COMPRESS_MAPPING(sbi));
>    4195	
>    4196			if (is_sbi_flag_set(sbi, SBI_IS_DIRTY) ||
>    4197					!is_set_ckpt_flags(sbi, CP_UMOUNT_FLAG)) {
>    4198				struct cp_control cpc = {
>    4199					.reason = CP_UMOUNT,
>    4200				};
>    4201				f2fs_write_checkpoint(sbi, &cpc);
>    4202			}
>    4203	
>    4204			if (is_sbi_flag_set(sbi, SBI_IS_RECOVERED) && f2fs_readonly(sb))
>    4205				sb->s_flags &= ~SB_RDONLY;
>    4206		}
>    4207		kill_block_super(sb);
>    4208	}
>    4209	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/09581936-5fe8-fd69-df5b-835b6db089ac%40huawei.com.
