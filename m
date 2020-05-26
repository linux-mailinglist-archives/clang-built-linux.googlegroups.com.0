Return-Path: <clang-built-linux+bncBDMODYUV7YCRBVMHWX3AKGQEXT5CKII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6C91E26F0
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 18:29:10 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id w24sf12728565pfq.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 09:29:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590510549; cv=pass;
        d=google.com; s=arc-20160816;
        b=UNC0JkS12FspOppkplEVYr/oQZY7SioKu0OtcF4b0gJnLBrhOeoEfjTyChHTHLUE58
         eRwuEbEG6TfFhGbjqijKU2aJRfNLxPuyRv96kw720IEeZTThVB6wOxgfDzrBGQX4P4Fj
         tHNmiebvZNrCU/1HaXGiD0p3/eCw/6dg2SYnd7dMa7P4nLVdOjY6Yu+ia+Ea+uhVnkrb
         Lb6Btq9CrnnZw/Ebuz+h5dumQ1TD+jLVxGB0oGw+iKuO43zC0YPXUUHPkNeN7abq+WfX
         2f9fLixPelLmI8N8aIDWYLv4C1rUSJBCz1oB1+8001uO1EpI1LgJqR2Q+3YIle0xEt4o
         XM9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=s/ex0HGnjnfiGaVx0v/bbBv1TfKrTVg3J4bT1Mh+MGE=;
        b=aa1Bw2Ja/rwsPMn8mX2Dg21lZghIICxTVMEymrPe5FJfkIm9T1bPGWmUuBBmCUQ0KV
         Pv6zSzgbb6HHS7q/NkNRpLgOyE4gl5eGUn2vTZtQKLVOr1+IN+qSs5Dx/3B+DKzZv506
         w4GOUe/dh4PzFbkerKZ+dnYk1txfaPdA998LmwCQwf88qplPk+FdFCSlwDgFAE/PBzRB
         AlDiFEXt08hxgQcuSx8jnFKhtuQrVvApSesp411+AExtU1dca1zhwzc+hyKxoZtDfQmI
         TqYB0kTiWErgVuziBQloLe5NZExAwUH99VhOBVCSFPAWHK7jwIx6xLv55cmL3TLKhn4e
         IIEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@joelfernandes.org header.s=google header.b="R0N/0iO4";
       spf=pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=joel@joelfernandes.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s/ex0HGnjnfiGaVx0v/bbBv1TfKrTVg3J4bT1Mh+MGE=;
        b=N4cDNFgAFCxnTIGGfMCnsu0n9Zjrsq63BMAiND2l1+l4wInb/sySW/Cuqem7Wj7GSP
         vaZ7TnK2dWnaMI5UcPSdEvnWATz7hRTZ3zXJhoYlXEkXPPBP7PSfYQ8oM15SxSUMuYe3
         qkLhF0jz8kpDCtSn3Bo0y/XMtRN/Bxcr07e1LWuJtPLRd1FceSxDpOb3hNj7yr61jjuF
         l8BNYsqCht1zKRZYYjmZQDWrwFcz+iGJaV509Fbqeq0ftTF2kNZnscYEM+I6K5UXhxcD
         bF71tLAb4XKI8uBI1B3wgFmmi9ItwyHvckuQYXXhJcEVHqQd7Nl81vjLGfP0PR2aIiGK
         1KVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s/ex0HGnjnfiGaVx0v/bbBv1TfKrTVg3J4bT1Mh+MGE=;
        b=VLxnxsXzJvz89Su29PM/ZT7KBYXDIhaTLNGIHiHh5bMmlTnSxhv+wP5iOnubE0uA72
         Zwwx8QAy0qsvy6FFz8GT3iUBNBCzbEm130sziIdvlcFtMHn52RH0duBLSy2rxoluAVur
         S97MIFaEf4QOqqRDijKr/2Zwf/1NzKXcgNPJIG42iVed07aBFFwN6ETOc7fDcyubOgUR
         5jsItr5wJxQtNyO6GY9xGQamdWvU/xpfxQqJtOQUe6nEYU7sjxif9ViULb7gfHoXKiH/
         M2pBhx3rBAMF3ZFz2jTLc6Xj34fgev9NI5uZ145aPt/j5Msn9G6iGoQCkeWE3J0xvgPl
         SPlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Y5zha0dLg7tbgFm+L7Dij1k+NL2QLpQfU6VoskmRmRltXG0ej
	wqPXojUrt8kRNLHRLBeTCJc=
X-Google-Smtp-Source: ABdhPJzWVYhmTzmA5b+BructAMr8OyfEg7r9TN9qqfO03OxtRrjvJefFt4twk43sMmeB4v1dHmo3+A==
X-Received: by 2002:a63:554e:: with SMTP id f14mr1815223pgm.191.1590510549330;
        Tue, 26 May 2020 09:29:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:191:: with SMTP id t17ls8914pjs.1.experimental-gmail;
 Tue, 26 May 2020 09:29:08 -0700 (PDT)
X-Received: by 2002:a17:902:c489:: with SMTP id n9mr1792399plx.186.1590510548648;
        Tue, 26 May 2020 09:29:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590510548; cv=none;
        d=google.com; s=arc-20160816;
        b=V3ux5V29lNUPPwzLtHAoQ0xaLDk+HSYkvncNCzL8gp69loEWQVi4zyY4y9QLHr0hxE
         r89tpkDcReSSJGxpXlbUH3oUgFDw1YUE2uq6/aKRb1tP5yl/9vYvCGA06GBN9eC/9h02
         ohAYjIBEEz2/GGz2I73PnSZ6+n600ImMB5ZnUeO0Zu0Y/xUqdYQZVoVQtHsxw5UJ/JKc
         /+Ptg4eUAERjyEoH8FGbQ8ZhUfxfZrIfe3Q0Wn68aEIy9vdF3Otf4nXHVurcCxT5hEwF
         Sw//8kiO+xD7LDke5I583QXclryrj1+innyYTvh+G5QgzSjD2qzqamsNVska97Eie8k1
         PGOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=USfFzBEHek85lFYev0KT3pxdBQkXOQ5hnkErtExpajU=;
        b=gFVDaYD2HixFGfa3AAtAHrGP4fkRjsCBzMLC2VUtjo5UWs0+jM2/MnQZIyVCuk3Jk5
         nCPOurEzc2u/aCUoM+1BHsMlcBzdkrkV0vp/8NGO4a69tuM80RWKPb833HnvasonfmN0
         raE77fFREVgLHH1azlannZDshFugqbMwc4JtHJQDdF1+1lkKyGtvUv9pokE6lKT1Syj4
         079SoXKrsR6rmA+xHOwVckAKSZL7bBbf10CkWRtKS58sNO3FT1UTO1rmeNrFfCTOeeXA
         TrLNXA4PKlNFAc1JZ5m4SIsG20foma73XLi1XRlNFKHgZRNHto9tA6OTuslVcfllcl/f
         /LwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@joelfernandes.org header.s=google header.b="R0N/0iO4";
       spf=pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=joel@joelfernandes.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id c15si20474pjv.1.2020.05.26.09.29.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 09:29:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id p12so16578707qtn.13
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 09:29:08 -0700 (PDT)
X-Received: by 2002:ac8:34d0:: with SMTP id x16mr2187142qtb.300.1590510547246;
        Tue, 26 May 2020 09:29:07 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
        by smtp.gmail.com with ESMTPSA id l22sm86050qki.45.2020.05.26.09.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 09:29:06 -0700 (PDT)
Date: Tue, 26 May 2020 12:29:06 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [rcu:dev.2020.05.25a 51/63] kernel/rcu/refperf.c:298:6: warning:
 no previous prototype for function 'reset_readers'
Message-ID: <20200526162906.GA112595@google.com>
References: <202005262032.uaSJI5NU%lkp@intel.com>
 <20200526161117.GH2869@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200526161117.GH2869@paulmck-ThinkPad-P72>
X-Original-Sender: joel@joelfernandes.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@joelfernandes.org header.s=google header.b="R0N/0iO4";
       spf=pass (google.com: domain of joel@joelfernandes.org designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=joel@joelfernandes.org
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

On Tue, May 26, 2020 at 09:11:17AM -0700, Paul E. McKenney wrote:
> On Tue, May 26, 2020 at 08:07:35PM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git dev.2020.05.25a
> > head:   1e9451642683146552713c5ce6d269ae378eacd5
> > commit: 786a25497743696d79592b864cafbfe48787e6e1 [51/63] refperf: Add a test to measure performance of read-side synchronization
> > config: x86_64-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 786a25497743696d79592b864cafbfe48787e6e1
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > 
> > >> kernel/rcu/refperf.c:298:6: warning: no previous prototype for function 'reset_readers' [-Wmissing-prototypes]
> > void reset_readers(int n)
> > ^
> > kernel/rcu/refperf.c:298:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > void reset_readers(int n)
> > ^
> > static
> > >> kernel/rcu/refperf.c:311:5: warning: no previous prototype for function 'process_durations' [-Wmissing-prototypes]
> > u64 process_durations(int n)
> > ^
> > kernel/rcu/refperf.c:311:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > u64 process_durations(int n)
> > ^
> > static
> > 2 warnings generated.
> 
> Good catches, fixing!
> 
> 							Thanx, Paul

Thanks in advance, Paul, for the fix!

 - Joel

> > vim +/reset_readers +298 kernel/rcu/refperf.c
> > 
> >    297	
> >  > 298	void reset_readers(int n)
> >    299	{
> >    300		int i;
> >    301		struct reader_task *rt;
> >    302	
> >    303		for (i = 0; i < n; i++) {
> >    304			rt = &(reader_tasks[i]);
> >    305	
> >    306			rt->last_duration_ns = 0;
> >    307		}
> >    308	}
> >    309	
> >    310	// Print the results of each reader and return the sum of all their durations.
> >  > 311	u64 process_durations(int n)
> >    312	{
> >    313		int i;
> >    314		struct reader_task *rt;
> >    315		char buf1[64];
> >    316		char buf[512];
> >    317		u64 sum = 0;
> >    318	
> >    319		buf[0] = 0;
> >    320		sprintf(buf, "Experiment #%d (Format: <THREAD-NUM>:<Total loop time in ns>)",
> >    321			exp_idx);
> >    322	
> >    323		for (i = 0; i <= n && !torture_must_stop(); i++) {
> >    324			rt = &(reader_tasks[i]);
> >    325			sprintf(buf1, "%d: %llu\t", i, rt->last_duration_ns);
> >    326	
> >    327			if (i % 5 == 0)
> >    328				strcat(buf, "\n");
> >    329			strcat(buf, buf1);
> >    330	
> >    331			sum += rt->last_duration_ns;
> >    332		}
> >    333		strcat(buf, "\n");
> >    334	
> >    335		PERFOUT("%s\n", buf);
> >    336	
> >    337		return sum;
> >    338	}
> >    339	
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526162906.GA112595%40google.com.
