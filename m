Return-Path: <clang-built-linux+bncBDH25QNEY4HRBWGF7H4QKGQEAPGG4CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD2324B973
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 13:47:36 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id x13sf560449lfq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 04:47:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597924056; cv=pass;
        d=google.com; s=arc-20160816;
        b=xI59gRGDg1ZObq8Ar2GibCt7stg40pCyCAXdB5v1cHn1j+xCfWISNNTocwI7FmNZUj
         JvTeACd+sVT6DFxRL5qobW+hwJSzmihhW6uN6HgzWBLPBbm5fjQtkDvOLKWoKq0IkIkU
         ENrNl21SZwXoalD8L8G2f2b1oD14BIr2yBXfPH0hRtHrFN0Ao9c5hjoOZb6fJ7Ac3EUu
         P0CbxZ2N2W5sdNed2eQo3c03lZvETYhHDzvmbLztBBYPurDajYxjOYmDWwOqSjullsKg
         GAhZ3yAtcaPPBQFLQvxKLnLlK8MRuiYaSjZBxjgbR10rei2K3B47ROlKug9V8y9c7K3v
         0r7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xbxRDPXbpw8dvWK7iRMRShcPbuQiYRJBebDAfNQDvuw=;
        b=0sFWPMdVx8DKtPywr+8Xn2vzOlHcQSQRDkb9i2xZH2Qkb7mIASZTYqh7F/E5S/e3vv
         uFIAQOvKIdBbMnwLAcjAa9bbr6YW32I0j8Wn0eQXf9cngdEbRpF34920r6gD2PTcXgpN
         iZM0xRXT5Ku4HSJnW42jrGBKSFkGN1qxlACJMrwYQdPQ8RylAWHTzUPC2AK5Nwami7bP
         L7JZCOHpnuYKINil6JI9XoyC7LCxuy1pyLttWKuDcp6yJUBRBhpbDDigf4HtId3P+yt4
         B79bQNMCstkBtLS7WOWBOjP9J6jsw51kf7Z0viSbusDTPw93LKx5OXGMBlvSr8J8q4TT
         rvlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@android.com header.s=20161025 header.b=ZUcRieqe;
       spf=pass (google.com: domain of maco@android.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=maco@android.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=android.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xbxRDPXbpw8dvWK7iRMRShcPbuQiYRJBebDAfNQDvuw=;
        b=JcILPSiO51+lh7vPj8zQUWSGKEbYxcUfGkjSWkHS3ILhy990RMIkVA1b74SNr8r+1B
         scCB4tv95SJu9VCr8gFmqNXT61xlfAotFHQkJ0qrf45PM4w/5ZWnH7UQvrE+KhuaPl80
         y1g0ILCGkZa4dC8FI6WURMRbPos/h4vkUyfdy+qtrQV9oDsihdROyf7hjOWIY9+yFnkw
         zT8IARPSpthSRh3ltLUxPcbrXoEeX+jcKgiEtejO4ita3hK7LGT1QM14WArLiqr9KqCD
         zTCNGGw0TABhh5jjZo4cyNZkxWYZj0JJuYnDuhfRjWOfdEmB5JVJckLpzHw5TAeok35x
         nF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xbxRDPXbpw8dvWK7iRMRShcPbuQiYRJBebDAfNQDvuw=;
        b=Tc45nUk2WJGbD93U+7Hsh+5HhJfnxrEDoKISQlTOPnN+wHwcpN00o+NsQ23gvpQHZG
         nVOXnBZvGMlNYtAP3Umipv7HAeINr46HNum7R3eMIRbTym30yKXMzdxEjJP2Msy9nJcI
         +soMOvSWXx0Vyr7n/lN0NU6mtj1zAcru1XawTscMjOL4X6JdqbPIsNUaBu1vOZohNsEK
         vfOgzIsztD/pmfX14pcVwZZQlg6CasSCyKHOcD4YHFszfhG0DveV2Qv7vqASWrtHMj8h
         aTbLAcWoEBfqMgP/RnJjlpR+nUE7ovNcYr21/z5Rrs2Uwx6sYuWOWMxdPco6uMT9sOlD
         wFDw==
X-Gm-Message-State: AOAM531wGehi2pmtJcTz9V45y/Zdsas3nLUdU2f+54XxnLBiv7dVdTXO
	anKh6qu37ZIinqYNURi6BsU=
X-Google-Smtp-Source: ABdhPJzHFcuM4E6xixx+3UMiWimdGI3NNSxg+TzR22WjJnF6DIIw+cBO7Z8BxvD1lphDrksQy3HLDw==
X-Received: by 2002:a2e:93cd:: with SMTP id p13mr1456950ljh.460.1597924056278;
        Thu, 20 Aug 2020 04:47:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7c03:: with SMTP id x3ls414362ljc.5.gmail; Thu, 20 Aug
 2020 04:47:35 -0700 (PDT)
X-Received: by 2002:a2e:8144:: with SMTP id t4mr1549609ljg.100.1597924055688;
        Thu, 20 Aug 2020 04:47:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597924055; cv=none;
        d=google.com; s=arc-20160816;
        b=d6tSSYbdodhmzncknJ/GlBumjNaN2Duo9K1ib0ru2bMFJJkF0G6ruF8j1Sl5s3jVqQ
         gOw+nYY+ZBz/WPU2qsmCl658MeV53yLuNM+mocNn4CEwlGQDq+G/ber+OXqJHfsoujRt
         UoRtvnbkowUyIzq4NjgrNV/EdnLyDaq0TsXtUtftP6EZAFoJ8hII0PBl8zzX7kkfams9
         cNjo9N10O1E25SwSKRVa3MuvWZRtnO/21ty/vzDGW3MM/tOD5mJNR5Gs1Nrlh7YFoQYE
         KfVJOkYgaT82XiV687Ue8l4OB7x4ERivulxRjoQNKcrwN2XmqKreR4d/3GaZ/YrSJITv
         mVoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=85mDl2XRAWxgMF4mNsc2vG2t2o48E+xjhQQLuiAlw3Q=;
        b=e38YVk0NZMg7oLrjTgwdybZtsRS0rJkII2YXPLG+Z6AVunwKjbgi/4Wn0xnq40Kg8B
         XARaKQVVjUD//lYXJ1COEQsHHtBexXP5MFt+w49TU5zluJwGGOv9qh5r22vT+9R8vu+S
         tzjvVPTIcCHyqK6E+p7QRAukDCUq0/PhGMP2WLLHrXsLKrt9SPNZuISzr2XA/YVCbc6x
         MKZ0dhFAJdQF0kHFumY/nksxYLcVE2NYDCd2843DQdcn5AxDN2wmz50cAzrg/jfuO7DD
         +vSP5ZzHNWmMAnKZhbjsZ6uhj8ug/6OsTPbmHN5BuJCK6aUDmvhzrHxHXH/15bvexHZC
         MZVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@android.com header.s=20161025 header.b=ZUcRieqe;
       spf=pass (google.com: domain of maco@android.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=maco@android.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=android.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s3si70142lfc.2.2020.08.20.04.47.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 04:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of maco@android.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id v9so1728900ljk.6
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 04:47:35 -0700 (PDT)
X-Received: by 2002:a2e:9913:: with SMTP id v19mr1372814lji.292.1597924055257;
 Thu, 20 Aug 2020 04:47:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200820075133.87040-1-maco@android.com> <202008201814.TxGOq6Z2%lkp@intel.com>
In-Reply-To: <202008201814.TxGOq6Z2%lkp@intel.com>
From: "'Martijn Coenen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 Aug 2020 13:47:24 +0200
Message-ID: <CAB0TPYGc_cfXYA3AgbEff_c=h_RsOpc=tR-+tztfHCLeEQQ8gA@mail.gmail.com>
Subject: Re: [PATCH] binder: print warnings when detecting oneway spamming.
To: kernel test robot <lkp@intel.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Todd Kjos <tkjos@google.com>, 
	=?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, 
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>, 
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, LKML <linux-kernel@vger.kernel.org>, 
	"open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>, Martijn Coenen <maco@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maco@android.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@android.com header.s=20161025 header.b=ZUcRieqe;       spf=pass
 (google.com: domain of maco@android.com designates 2a00:1450:4864:20::244 as
 permitted sender) smtp.mailfrom=maco@android.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=android.com
X-Original-From: Martijn Coenen <maco@android.com>
Reply-To: Martijn Coenen <maco@android.com>
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

On Thu, Aug 20, 2020 at 12:41 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Martijn,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on staging/staging-testing]
> [also build test ERROR on v5.9-rc1 next-20200820]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Martijn-Coenen/binder-print-warnings-when-detecting-oneway-spamming/20200820-155358
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git bc752d2f345bf55d71b3422a6a24890ea03168dc
> config: s390-randconfig-r002-20200818 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4deda57106f7c9b982a49cb907c33e3966c8de7f)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/android/binder_alloc_selftest.c:122:61: error: too few arguments to function call, expected 6, have 5
>                    buffers[i] = binder_alloc_new_buf(alloc, sizes[i], 0, 0, 0);

missed this call-site, will send v2.

Martijn
>                                 ~~~~~~~~~~~~~~~~~~~~                         ^
>    drivers/android/binder_alloc.h:118:30: note: 'binder_alloc_new_buf' declared here
>    extern struct binder_buffer *binder_alloc_new_buf(struct binder_alloc *alloc,
>                                 ^
>    1 error generated.
>
> # https://github.com/0day-ci/linux/commit/9d0b269f4468d6793f6fd76a410fdde39dbf6ac2
> git remote add linux-review https://github.com/0day-ci/linux
> git fetch --no-tags linux-review Martijn-Coenen/binder-print-warnings-when-detecting-oneway-spamming/20200820-155358
> git checkout 9d0b269f4468d6793f6fd76a410fdde39dbf6ac2
> vim +122 drivers/android/binder_alloc_selftest.c
>
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  114
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  115  static void binder_selftest_alloc_buf(struct binder_alloc *alloc,
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  116                                    struct binder_buffer *buffers[],
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  117                                    size_t *sizes, int *seq)
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  118  {
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  119      int i;
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  120
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  121      for (i = 0; i < BUFFER_NUM; i++) {
> 4175e2b46fd4b9 Sherry Yang 2017-08-23 @122              buffers[i] = binder_alloc_new_buf(alloc, sizes[i], 0, 0, 0);
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  123              if (IS_ERR(buffers[i]) ||
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  124                  !check_buffer_pages_allocated(alloc, buffers[i],
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  125                                                sizes[i])) {
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  126                      pr_err_size_seq(sizes, seq);
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  127                      binder_selftest_failures++;
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  128              }
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  129      }
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  130  }
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  131
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAB0TPYGc_cfXYA3AgbEff_c%3Dh_RsOpc%3DtR-%2BtztfHCLeEQQ8gA%40mail.gmail.com.
