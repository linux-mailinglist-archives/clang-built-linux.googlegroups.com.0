Return-Path: <clang-built-linux+bncBAABBJX7WT3AKGQEWQFSK6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 761EB1E268F
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 18:11:19 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id q195sf11677674ooq.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 09:11:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590509478; cv=pass;
        d=google.com; s=arc-20160816;
        b=hPrsn8QO5aT8FKAZBHTasSVx/4V6v4dQeiHo3C/wVeLvv3T8DDfItUu2IsifmsJbIj
         klY/R5eq+5Nxsv8OdDxD5yGBA1nb216Kb741HZ1OfFqAWWyz3cbw4+gxRAhIO8G7Ujhd
         tUqNL4HNd4iQSUwhiCVL7Z/kIJYUAFXOR6XIkB62Wt9nINy207vEQD2jDXUgYr8qNvaS
         1Xqyq3RYLswZTd81aezU1gUo/P8HaVZHowbwI0Z8hzM4BQe7OB77zznCRP5sXSaVCsGI
         8Ap2nBCWi0UHMKcpIxl3EtV/TITdYiyvsjYD6K0mzFBrbjbQAs/WWboQaOyxRHmlk6Zw
         Y39Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=ra2zIeQ7M6/BIoh7wqP2jmtcmi3juZ1aMzsaPJFDlTk=;
        b=07IwgCAD3xyhlEthsuPJnncLe5nINcKovSG4T5FdC7h7TP5zLNUFSWXwOt9TYPYARB
         SH4tX+T23yZ0iStlyjuuYXU4mptG7sTjSuxRm4L+GXLQj2bnYua+yI/dYVQ8vXhRluJH
         +hQkB7eroZMC3Jjdu5uW3nc0P+HtsPDGjcgevDMuNO4SLpTpvullyvb/6pAqh6OGDHzd
         6eK6a56UYu/rCNBogzzNsKhi7zfQgA8oSOmio9sS802LTi1D9FDnStrW7nHatxGf8mJw
         IzuD3dHOmI/VoyKvBaHBymLqEFhK1Vs69ucQ0xYWY3xx/3ZPNJRdORKEpD3MbidhBOZQ
         beMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p0LgAOh6;
       spf=pass (google.com: domain of srs0=ursf=7i=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=uRSf=7I=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ra2zIeQ7M6/BIoh7wqP2jmtcmi3juZ1aMzsaPJFDlTk=;
        b=FaEh5qGJZ9XF+AiSw2cxm6GRx5j21rU/de5GLqEzbhDj8hECI4WXWR+yR7ySgpT+C6
         s4GUJgy+nF9umt4kLI36IIWYOy6H/7kCTWSClRr0Dx9zkeN9D9KdLYHrmgMBy34lz3An
         N/u48gOtj5dDIB/pAkx91jmYqWWQksGvJtFBXO/Ae+YF3wWRPWB54kf43QeHtQBKLQVg
         xcMqcax2Wp704qJhir1GKkJLK5LRhdmqY8yYTh3rl4Wp0DOIK6PCyO2H9cpgddetgUG9
         nvcEd9XlYVHspJQwmjWlCYJ90QAZ64ihld10wUi4lc2dS9lfZBvg7BtLElKAordi+0ct
         h3QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ra2zIeQ7M6/BIoh7wqP2jmtcmi3juZ1aMzsaPJFDlTk=;
        b=obn2DBq7w9ffQdki4C6vmNV3Kie4YbwMaFPV6SyS1Nl7P27yBImX5bjqXRQNLsn49f
         2GVF5DHx3Z5+/XulwueR5orRIxKjfHyzdojZ5/bJ+2HvP2E7ppnuvWD6xytit1hlUIJz
         ZjzHp6S3+jJaiS2eeS2UluAQWglNBKk7U/JPz6QZKYZ8JTI2Z77MTiyu+IxZ5Y4jMAsl
         ufDaPRuRIW+KSnW8jVkpirwKMBUJ8HewKw9Avo/iLjSfzxZR1LGHI5doqn2kEiyF5b5x
         mIFtrW6cXAqFhJk451xtO4BfebKz9Y0i8iscPWx22GcwzRGwWXWZPsB9qO1zWGZv1j31
         QwIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327SW3HO14aOIX1mcAAZwh1YqbBw37aa4eA6qaOgFceoggqAEOY
	ayDEjMKCM0Uk7V1Hrk4/RwE=
X-Google-Smtp-Source: ABdhPJz8Sjg5LpkcNrTIY6QyQt4uEVXteO8nauT5BS0Jk4kcY79dSith/eR+ZX33lkWt3vV7dU5AnA==
X-Received: by 2002:aca:e188:: with SMTP id y130mr15278217oig.179.1590509478462;
        Tue, 26 May 2020 09:11:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c54b:: with SMTP id v72ls2187115oif.2.gmail; Tue, 26 May
 2020 09:11:18 -0700 (PDT)
X-Received: by 2002:aca:4e84:: with SMTP id c126mr14552249oib.35.1590509478165;
        Tue, 26 May 2020 09:11:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590509478; cv=none;
        d=google.com; s=arc-20160816;
        b=GSmMvPyLmrb1UHWSbXgkvVo3NbYpZ7GVciOBk7HebykglMFgPdg6ulTqLRnmzDRYMl
         8DZ29aHuyb+AgeKanlZrhZZvKVhJZ7koIO1x+89TyEh5xZsrUEf0kkCN/koJdJ+vKK8L
         JoSrYIA+bp9Yxf5kaYKfiUdPVKoRMv4KnNlONvYQrtAZ4rHaQ821vy2PjRskPXwqtyHR
         2A/q7qqJG/p+W0uX9QTaKKVT+vwOPEcsR1rnPYYqp83X9zwa10QLtRjaYG1r3q5rwO3/
         OAXlIQurHWZpg9RAvVnAluEHnuL61eWtvTdBylLnQ+U3+UjndR/599XkYF+HnYw8xaVV
         cFCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=rPI9PcwN5XCG517O6jY1mXPY7Ri7nzX82H/acCwkTi8=;
        b=NpyGU42GTzkoB1/Z78bkO4MtOZZurpKxziukGLtnT2tKo8kroiBDnXmuC/fIU8SPrX
         VV3+j50tx5NXU0RZ2jvQYAQE6W69xvZJ8eN9qIKNhHh+9pqtVCgF01qzi/oDPr06Sern
         HSKzlyWHwwwdn8K1nF5Yef5ixiUn1YlM7TrnqYf1+4/XjrYGkG4J+HReMiuxhk4cdkI/
         EIoGOL6jd2yUXF7iT65M0FgoW+fYqUu4eBj4JhzbbkDF3+Xcg2WjbaQcJmb95YM9DiWm
         VLjBVjz4mwV4Z68/t0yjRwzhamXB9CzAuEkwM+k+ONEnHwDLpbi2BzsRvEdjIMkz5try
         Ihhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p0LgAOh6;
       spf=pass (google.com: domain of srs0=ursf=7i=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=uRSf=7I=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si40728oic.5.2020.05.26.09.11.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 09:11:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ursf=7i=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 66F1320776;
	Tue, 26 May 2020 16:11:17 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 48C113522A8B; Tue, 26 May 2020 09:11:17 -0700 (PDT)
Date: Tue, 26 May 2020 09:11:17 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kbuild test robot <lkp@intel.com>
Cc: "Joel Fernandes (Google)" <joel@joelfernandes.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [rcu:dev.2020.05.25a 51/63] kernel/rcu/refperf.c:298:6: warning:
 no previous prototype for function 'reset_readers'
Message-ID: <20200526161117.GH2869@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <202005262032.uaSJI5NU%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005262032.uaSJI5NU%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=p0LgAOh6;       spf=pass
 (google.com: domain of srs0=ursf=7i=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=uRSf=7I=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, May 26, 2020 at 08:07:35PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git dev.2020.05.25a
> head:   1e9451642683146552713c5ce6d269ae378eacd5
> commit: 786a25497743696d79592b864cafbfe48787e6e1 [51/63] refperf: Add a test to measure performance of read-side synchronization
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 786a25497743696d79592b864cafbfe48787e6e1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> kernel/rcu/refperf.c:298:6: warning: no previous prototype for function 'reset_readers' [-Wmissing-prototypes]
> void reset_readers(int n)
> ^
> kernel/rcu/refperf.c:298:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> void reset_readers(int n)
> ^
> static
> >> kernel/rcu/refperf.c:311:5: warning: no previous prototype for function 'process_durations' [-Wmissing-prototypes]
> u64 process_durations(int n)
> ^
> kernel/rcu/refperf.c:311:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> u64 process_durations(int n)
> ^
> static
> 2 warnings generated.

Good catches, fixing!

							Thanx, Paul

> vim +/reset_readers +298 kernel/rcu/refperf.c
> 
>    297	
>  > 298	void reset_readers(int n)
>    299	{
>    300		int i;
>    301		struct reader_task *rt;
>    302	
>    303		for (i = 0; i < n; i++) {
>    304			rt = &(reader_tasks[i]);
>    305	
>    306			rt->last_duration_ns = 0;
>    307		}
>    308	}
>    309	
>    310	// Print the results of each reader and return the sum of all their durations.
>  > 311	u64 process_durations(int n)
>    312	{
>    313		int i;
>    314		struct reader_task *rt;
>    315		char buf1[64];
>    316		char buf[512];
>    317		u64 sum = 0;
>    318	
>    319		buf[0] = 0;
>    320		sprintf(buf, "Experiment #%d (Format: <THREAD-NUM>:<Total loop time in ns>)",
>    321			exp_idx);
>    322	
>    323		for (i = 0; i <= n && !torture_must_stop(); i++) {
>    324			rt = &(reader_tasks[i]);
>    325			sprintf(buf1, "%d: %llu\t", i, rt->last_duration_ns);
>    326	
>    327			if (i % 5 == 0)
>    328				strcat(buf, "\n");
>    329			strcat(buf, buf1);
>    330	
>    331			sum += rt->last_duration_ns;
>    332		}
>    333		strcat(buf, "\n");
>    334	
>    335		PERFOUT("%s\n", buf);
>    336	
>    337		return sum;
>    338	}
>    339	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526161117.GH2869%40paulmck-ThinkPad-P72.
