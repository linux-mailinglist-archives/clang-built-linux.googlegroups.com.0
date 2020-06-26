Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBI4T3H3QKGQERQDAQRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0B320B932
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 21:16:53 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id e82sf10776540ybh.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 12:16:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593199012; cv=pass;
        d=google.com; s=arc-20160816;
        b=HD3gh/ugdOUAC+DldcrpnXYi3tfcyBP2c4O1jkXALlc93SCpxGaq9VMiF8SjJxnyQa
         hOyuOPDdtFrggTcnir0NcuNHRvqb32vbslFpHdFZHjJPkwO+d8r7u5M7F8WBvWdMf2Ho
         l/bH4XKIHQNXJI8BZqjuDbNDYG8YRkXuNfUqYY9eCepxqPKZHVJtuGcOc+q9zAl+TyFX
         Byi1HguHmai2gBQD31q0N2IfelMZjOHpJc+mTMMgBgnEJdrrfCAFkb8V79XQpuz9kygr
         XViZ1bMus8tGVCtAldti6L+q9uobimGi7pi81hSsRviKwPErDGInI/n8THnoeuGtBXnt
         dgTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=vwC/IPIsU/T5HfmuHLvwJRFVX7QBjNlbeuC2Kctu+xo=;
        b=Kms2dbPvOMz02GQdrhQyHt/Sf6oX/VEkW3RVRdxv3BjgV/uEbK3uGH2uQvHfJG5Slc
         eHFkTBcvxEtkjpkCmY0Vrn5jPTQE06wuZJtIOvfr96s0Mn9mrNrddCpInSCx8kYV0gak
         +vSt/C1sX31MnqjZok+07JiQc22t5XWUNvxqlk7BKF97mDN5FfDwky2GDrGBkwYlilVO
         i0bID6y6fjmWdJxGWoMFAwTIGEL8NExOmRwEJ66vSm7mllpIqkUvHNxDyb4j4XtJICMQ
         ZZUvt9rKw+3jUf0DrHTTXTHNtqzb1S+mahaONOK6aaikFKOI2rO4ap0L6EtcgRV4Ehyw
         hLeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vwC/IPIsU/T5HfmuHLvwJRFVX7QBjNlbeuC2Kctu+xo=;
        b=Ca/fsTOVho9/j7lE+zNtQsMW+rmE5nTvZdiUDKUtE9Y3XSbcllBHMMMYGFcNn8mJ9M
         2GxFQHaN5zNg/xN+tWJ2guEPevTW2aFW2CCRiG2DNzU8nR5vZNZN1T8j+j9GJ+2UUzX5
         /LzYzQm4yXvk07Ni3zsSjIFLE7eZ6AzMToA2IxL6qOHuFlh9UCkcknrnUlkH3WZRV2hh
         WLUUUNl675b9MVkElu5GsqpH3gZ5IUFS/Tg7l+p45Tye/riNRKEXuQQzOMl378VIrbFa
         vbUndblNviYS9bigXPCOPbGZu+f1EWMzhc0k8MtdrR2vxfj6G8fKTGhaU6LYwX5F9Dae
         5afg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vwC/IPIsU/T5HfmuHLvwJRFVX7QBjNlbeuC2Kctu+xo=;
        b=lNVJLGNouAvh8AbqJEGjbEaBbGToccEbDuwSVKUv7WAfALvkWwtRmxRi1oUjSByRt9
         CkqB6+Msba3jg0P7a/Ti597sVyiKYqKss+4tnr78EUhUkNA4KbG3CqgcWnNveJmyNaJc
         TlreRWCcdN6D2k+tQp0v2Br6TfsitEvUde1orT8dcMQz2u2eYt2iZj0f9LYNMg5U+EZg
         TgTXsNWbpXX0DwP14bPOw2dtprzNy81dlu/j1YVKQfYTXdaSuwPpxOJKlZBgphboBb4Y
         kfDROr1GELvAJJa2Q3/QuwE5uSSN9L9ipnalaVAYyCoNcyLijIyOHvfLCCY6KL3a3Vzu
         vNVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Sh38pOYYpT1VeBxIjtDjqRJyZY0GcfNVWzYF+Sh5qo5eStX6f
	C7n9ekC2Wfcu7QB163fY4N8=
X-Google-Smtp-Source: ABdhPJzf0IiblCrRfwZwoG8dfZ5vrMcC30bSz57fCu9iZsJOeh3evMZKMSMiEP5ZPPVGNWc5E42Ptw==
X-Received: by 2002:a25:38c5:: with SMTP id f188mr7541700yba.332.1593199012025;
        Fri, 26 Jun 2020 12:16:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b18b:: with SMTP id h11ls3641531ybj.4.gmail; Fri, 26 Jun
 2020 12:16:51 -0700 (PDT)
X-Received: by 2002:a25:6403:: with SMTP id y3mr7640155ybb.229.1593199011633;
        Fri, 26 Jun 2020 12:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593199011; cv=none;
        d=google.com; s=arc-20160816;
        b=wNRZGM+J2IZhsW7KfmVXWFGqLnz8Asxxw3eNTboKNh5VG3EmbDrhDTLeaC010aSYYK
         SsQlyOyD1UNfMECVsMaBvroaB/yhoi1uwLLJwDeaH+qqG+Ea8eF4wM11IpC1LkWKovaE
         2fV9MekzF/MTYLUyrDVDhT1U49U0KVj+VhAVNXQrOqdVYOxON/cTUDTywi4CSU59zXrN
         7pwY7qmujwwt8quupRN6Wa5jqkiuX0fT+1Yx0XBeVl7z14FGk10ozSPSNP3Ak0bbs1a6
         FEwUiitlJaBMcLxoB7LjpjH2YZK6DTk6tsv6BP+dwAJ7AcYbMiBY6Bkbyw6Bi5EdO/QS
         X80Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=f0JctZb+GbYlB0Gt2AtDWe1r/68lS1xiQauTlZzTgkI=;
        b=B+t0S9ukdDO+OQ+Ha63YIi3yOF8nkbvA6ceTq/kgLGU9cMIx2Meeu6/tIG9/OkcoNl
         2JDTy1x46sKsYUy2R9E3HZAoLx473CGn1GdP1orwTaUTMjv6qntMLBzMnM1lLzsOgmYo
         lMLtfnpsmrwlrBR0mIXngZTxufgS1x0f8K3ugau4mcmfCiyYjBd8uPgbtVgph6TtuN7x
         uTW6oT3/QeTgbRDiX3kOR+EJ5yTlpx2/C8ks480e+xBtVJOixT0X3K22njpF10N7VRVj
         YjtJa6ZjOH01aXpCNB2OEhnsmoQ6Jxfq8sMoPuA5sN+Bo6+kv6QbMoeLV4dbveQttUni
         8TnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id l126si118899ybf.4.2020.06.26.12.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jun 2020 12:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: saUwwBct24t2HMX0KDY7eW1L4Cv7sX/GVfHv9WN7F5lZxzmyoSogv2wA7bXkwbE1kt7goBzUDw
 O4Coxu8PZxug==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="163482552"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; 
   d="gz'50?scan'50,208,50";a="163482552"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2020 12:16:49 -0700
IronPort-SDR: DT8LsoIJup9Hj6JMYgXqyMPMeMLuaTO3jLphzZx3oWSyiW6KgLCnErkmcoXXQArQc0vQgKAn+x
 PDx2TMh40Kbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; 
   d="gz'50?scan'50,208,50";a="320083128"
Received: from lkp-server01.sh.intel.com (HELO 538b5e3c8319) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 26 Jun 2020 12:16:47 -0700
Received: from kbuild by 538b5e3c8319 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jotqA-0002Pd-Cq; Fri, 26 Jun 2020 19:16:46 +0000
Date: Sat, 27 Jun 2020 03:16:15 +0800
From: kernel test robot <lkp@intel.com>
To: Guenter Roeck <linux@roeck-us.net>, Ingo Molnar <mingo@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] sched: Declare sched_rt_bandwidth_account() in include
 file
Message-ID: <202006270351.lVmaZ420%lkp@intel.com>
References: <20200626140253.141358-1-linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <20200626140253.141358-1-linux@roeck-us.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Guenter,

I love your patch! Yet something to improve:

[auto build test ERROR on tip/sched/core]
[also build test ERROR on tip/auto-latest linux/master linus/master v5.8-rc2 next-20200626]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Guenter-Roeck/sched-Declare-sched_rt_bandwidth_account-in-include-file/20200626-220544
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 01e377c539ca52a6c753d0fdbe93b3b8fcd66a1c
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6e11ed52057ffc39941cb2de6d93cae522db4782)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/sched/deadline.c:1315:7: error: implicit declaration of function 'sched_rt_bandwidth_account' [-Werror,-Wimplicit-function-declaration]
                   if (sched_rt_bandwidth_account(rt_rq))
                       ^
   1 error generated.

vim +/sched_rt_bandwidth_account +1315 kernel/sched/deadline.c

c52f14d384628d Luca Abeni      2017-05-18  1213  
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1214  /*
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1215   * Update the current task's runtime statistics (provided it is still
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1216   * a -deadline task and has not been removed from the dl_rq).
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1217   */
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1218  static void update_curr_dl(struct rq *rq)
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1219  {
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1220  	struct task_struct *curr = rq->curr;
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1221  	struct sched_dl_entity *dl_se = &curr->dl;
07881166a892fa Juri Lelli      2017-12-04  1222  	u64 delta_exec, scaled_delta_exec;
07881166a892fa Juri Lelli      2017-12-04  1223  	int cpu = cpu_of(rq);
6fe0ce1eb04f99 Wen Yang        2018-02-06  1224  	u64 now;
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1225  
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1226  	if (!dl_task(curr) || !on_dl_rq(dl_se))
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1227  		return;
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1228  
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1229  	/*
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1230  	 * Consumed budget is computed considering the time as
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1231  	 * observed by schedulable tasks (excluding time spent
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1232  	 * in hardirq context, etc.). Deadlines are instead
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1233  	 * computed using hard walltime. This seems to be the more
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1234  	 * natural solution, but the full ramifications of this
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1235  	 * approach need further study.
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1236  	 */
6fe0ce1eb04f99 Wen Yang        2018-02-06  1237  	now = rq_clock_task(rq);
6fe0ce1eb04f99 Wen Yang        2018-02-06  1238  	delta_exec = now - curr->se.exec_start;
48be3a67da7413 Peter Zijlstra  2016-02-23  1239  	if (unlikely((s64)delta_exec <= 0)) {
48be3a67da7413 Peter Zijlstra  2016-02-23  1240  		if (unlikely(dl_se->dl_yielded))
48be3a67da7413 Peter Zijlstra  2016-02-23  1241  			goto throttle;
734ff2a71f9e6a Kirill Tkhai    2014-03-04  1242  		return;
48be3a67da7413 Peter Zijlstra  2016-02-23  1243  	}
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1244  
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1245  	schedstat_set(curr->se.statistics.exec_max,
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1246  		      max(curr->se.statistics.exec_max, delta_exec));
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1247  
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1248  	curr->se.sum_exec_runtime += delta_exec;
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1249  	account_group_exec_runtime(curr, delta_exec);
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1250  
6fe0ce1eb04f99 Wen Yang        2018-02-06  1251  	curr->se.exec_start = now;
d2cc5ed6949085 Tejun Heo       2017-09-25  1252  	cgroup_account_cputime(curr, delta_exec);
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1253  
794a56ebd9a57d Juri Lelli      2017-12-04  1254  	if (dl_entity_is_special(dl_se))
794a56ebd9a57d Juri Lelli      2017-12-04  1255  		return;
794a56ebd9a57d Juri Lelli      2017-12-04  1256  
07881166a892fa Juri Lelli      2017-12-04  1257  	/*
07881166a892fa Juri Lelli      2017-12-04  1258  	 * For tasks that participate in GRUB, we implement GRUB-PA: the
07881166a892fa Juri Lelli      2017-12-04  1259  	 * spare reclaimed bandwidth is used to clock down frequency.
07881166a892fa Juri Lelli      2017-12-04  1260  	 *
07881166a892fa Juri Lelli      2017-12-04  1261  	 * For the others, we still need to scale reservation parameters
07881166a892fa Juri Lelli      2017-12-04  1262  	 * according to current frequency and CPU maximum capacity.
07881166a892fa Juri Lelli      2017-12-04  1263  	 */
07881166a892fa Juri Lelli      2017-12-04  1264  	if (unlikely(dl_se->flags & SCHED_FLAG_RECLAIM)) {
07881166a892fa Juri Lelli      2017-12-04  1265  		scaled_delta_exec = grub_reclaim(delta_exec,
07881166a892fa Juri Lelli      2017-12-04  1266  						 rq,
07881166a892fa Juri Lelli      2017-12-04  1267  						 &curr->dl);
07881166a892fa Juri Lelli      2017-12-04  1268  	} else {
07881166a892fa Juri Lelli      2017-12-04  1269  		unsigned long scale_freq = arch_scale_freq_capacity(cpu);
8ec59c0f5f4966 Vincent Guittot 2019-06-17  1270  		unsigned long scale_cpu = arch_scale_cpu_capacity(cpu);
07881166a892fa Juri Lelli      2017-12-04  1271  
07881166a892fa Juri Lelli      2017-12-04  1272  		scaled_delta_exec = cap_scale(delta_exec, scale_freq);
07881166a892fa Juri Lelli      2017-12-04  1273  		scaled_delta_exec = cap_scale(scaled_delta_exec, scale_cpu);
07881166a892fa Juri Lelli      2017-12-04  1274  	}
07881166a892fa Juri Lelli      2017-12-04  1275  
07881166a892fa Juri Lelli      2017-12-04  1276  	dl_se->runtime -= scaled_delta_exec;
48be3a67da7413 Peter Zijlstra  2016-02-23  1277  
48be3a67da7413 Peter Zijlstra  2016-02-23  1278  throttle:
48be3a67da7413 Peter Zijlstra  2016-02-23  1279  	if (dl_runtime_exceeded(dl_se) || dl_se->dl_yielded) {
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1280  		dl_se->dl_throttled = 1;
34be39305a77b8 Juri Lelli      2017-12-12  1281  
34be39305a77b8 Juri Lelli      2017-12-12  1282  		/* If requested, inform the user about runtime overruns. */
34be39305a77b8 Juri Lelli      2017-12-12  1283  		if (dl_runtime_exceeded(dl_se) &&
34be39305a77b8 Juri Lelli      2017-12-12  1284  		    (dl_se->flags & SCHED_FLAG_DL_OVERRUN))
34be39305a77b8 Juri Lelli      2017-12-12  1285  			dl_se->dl_overrun = 1;
34be39305a77b8 Juri Lelli      2017-12-12  1286  
1019a359d3dc4b Peter Zijlstra  2014-11-26  1287  		__dequeue_task_dl(rq, curr, 0);
a649f237db1845 Peter Zijlstra  2015-06-11  1288  		if (unlikely(dl_se->dl_boosted || !start_dl_timer(curr)))
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1289  			enqueue_task_dl(rq, curr, ENQUEUE_REPLENISH);
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1290  
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1291  		if (!is_leftmost(curr, &rq->dl))
8875125efe8402 Kirill Tkhai    2014-06-29  1292  			resched_curr(rq);
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1293  	}
1724813d9f2c7f Peter Zijlstra  2013-12-17  1294  
1724813d9f2c7f Peter Zijlstra  2013-12-17  1295  	/*
1724813d9f2c7f Peter Zijlstra  2013-12-17  1296  	 * Because -- for now -- we share the rt bandwidth, we need to
1724813d9f2c7f Peter Zijlstra  2013-12-17  1297  	 * account our runtime there too, otherwise actual rt tasks
1724813d9f2c7f Peter Zijlstra  2013-12-17  1298  	 * would be able to exceed the shared quota.
1724813d9f2c7f Peter Zijlstra  2013-12-17  1299  	 *
1724813d9f2c7f Peter Zijlstra  2013-12-17  1300  	 * Account to the root rt group for now.
1724813d9f2c7f Peter Zijlstra  2013-12-17  1301  	 *
1724813d9f2c7f Peter Zijlstra  2013-12-17  1302  	 * The solution we're working towards is having the RT groups scheduled
1724813d9f2c7f Peter Zijlstra  2013-12-17  1303  	 * using deadline servers -- however there's a few nasties to figure
1724813d9f2c7f Peter Zijlstra  2013-12-17  1304  	 * out before that can happen.
1724813d9f2c7f Peter Zijlstra  2013-12-17  1305  	 */
1724813d9f2c7f Peter Zijlstra  2013-12-17  1306  	if (rt_bandwidth_enabled()) {
1724813d9f2c7f Peter Zijlstra  2013-12-17  1307  		struct rt_rq *rt_rq = &rq->rt;
1724813d9f2c7f Peter Zijlstra  2013-12-17  1308  
1724813d9f2c7f Peter Zijlstra  2013-12-17  1309  		raw_spin_lock(&rt_rq->rt_runtime_lock);
1724813d9f2c7f Peter Zijlstra  2013-12-17  1310  		/*
1724813d9f2c7f Peter Zijlstra  2013-12-17  1311  		 * We'll let actual RT tasks worry about the overflow here, we
faa5993736d9b4 Juri Lelli      2014-02-21  1312  		 * have our own CBS to keep us inline; only account when RT
faa5993736d9b4 Juri Lelli      2014-02-21  1313  		 * bandwidth is relevant.
1724813d9f2c7f Peter Zijlstra  2013-12-17  1314  		 */
faa5993736d9b4 Juri Lelli      2014-02-21 @1315  		if (sched_rt_bandwidth_account(rt_rq))
faa5993736d9b4 Juri Lelli      2014-02-21  1316  			rt_rq->rt_time += delta_exec;
1724813d9f2c7f Peter Zijlstra  2013-12-17  1317  		raw_spin_unlock(&rt_rq->rt_runtime_lock);
1724813d9f2c7f Peter Zijlstra  2013-12-17  1318  	}
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1319  }
aab03e05e8f7e2 Dario Faggioli  2013-11-28  1320  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006270351.lVmaZ420%25lkp%40intel.com.

--3MwIy2ne0vdjdPXF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJM+9l4AAy5jb25maWcAlFxZk9u2k3/Pp2AlVVvJg+25M96teYBIUETEywSoY15YssQZ
azMjzV/SJPa3326QFEGyoWRTlcRmNw4Cffz6oH756ReHvR93r8vjZrV8efnhPJfbcr88lmvn
afNS/o/jJU6cKId7Qn0E5nCzff/+6fv9XXF349x+vP948WG/unQm5X5bvjjubvu0eX6H8Zvd
9qdffnKT2BfjwnWLKc+kSOJC8bl6+Hn1stw+O3+V+wPwOZeXHy8+Xji/Pm+O//3pE/z3dbPf
7/afXl7+ei3e9rv/LVdH5668vCzXt1cXt78/Pa2uP3++uVx9vVqXd+vP16tleXt1tf568/v9
1W8/N6uO22UfLpqHoTd8BnxCFm7I4vHDD4MRHoah1z7SHKfhl5cX8I8xh8viIhTxxBjQPiyk
Ykq4HVrAZMFkVIwTlVgJRZKrNFckXcQwNW9JIvtSzJLM2MEoF6GnRMQLxUYhL2SSGVOpIOMM
3jP2E/gPsEgcCvf2izPWYvDiHMrj+1t7k6MsmfC4gIuUUWosHAtV8HhasAxOTkRCPVxfwSzN
lpMoFbC64lI5m4Oz3R1x4tNRJy4Lm2P9+ed2nEkoWK4SYrB+w0KyUOHQ+mHApryY8CzmYTF+
FMZOTcoIKFc0KXyMGE2ZP9pGJDbCTUvo7un0ouaGzHfsM+C2ztHnj+dHJ+fJN8T5etxneaj0
FRsn3DwOEqliFvGHn3/d7rblb8btyYWcitQll5wx5QbFl5znnKS7WSJlEfEoyRYFU4q5AcmX
Sx6KEbFtfQMsg0VYDqYL9gKiFDbSDYriHN6/Hn4cjuVrK91jHvNMuFqP0iwZGaplkmSQzMy7
zjx4Kgs5KzIueex1FdJLIiZi6lkRCJ7hHhf0OhFTmZgXsG/QA5VkNBeumU3BuICORInXMwd+
krncqzVdmAZOpiyTHJm0JJbbtbN76p1Ma/kSdyKTHOaqrs5LjJn0MZssWlZ+UIOnLBQeU7wI
mVSFu3BD4oy1vZq2V9Yj6/n4lMdKniWisWKeCwudZ4vgJpj3R07yRYks8hS33MiO2ryC36LE
J3gsUhiVeNrOn2Q0TpAivJAWdU0mKYEYB3i9+kAy2eWp72uwm2YzacZ5lCqYXnuI06TN82kS
5rFi2YJcuuYyafrl3TT/pJaHP50jrOssYQ+H4/J4cJar1e59e9xsn9vjAHc3KWBAwVw3gbUq
6TstMRWZ6pHx2MntoCRrqWh56W1LQZ7Sv9i2fr3MzR05vFhYb1EAzdw+/LXgc7hvyqPJitkc
Lpvx9Za6SxmvOqn+YLNpeSxrV+4GoNhakBvRlKtv5fr9pdw7T+Xy+L4vD/pxvSJB7WiwzNMU
4IEs4jxixYgB2nE7FkNzzVisgKj06nkcsbRQ4ajww1wGA5AiYnV5dd+b4bTOidqa/XGW5Kmk
XULA3UmawCDUCTCHtDpVx4JgQc9F8mQ8ZLTcj8IJuLaptmCZR7MkCcit7Y7gxZMURFU8crS9
aBDgfxEcZUcL+2wS/kDJEdhAFYKcuTzVBl5lzOUPXZyRujKdwEohU7hUS63E01w2ApctwGdm
9NGNuYoAAxa16aWZFtKXZzn8gMU2Y5cmEjwaZc9OhgcueEIffG5R+u7702MZuDo/t+04h7CE
pPA0sZ2DGMcs9GkZ0S9ooWmvY6HJACAPSWGCxm4iKfLMZg6ZNxXw3vVl0QcOC45YlgmLTExw
4CKix45Sn5KEgblowCLy/yE6EonCqIndEzGnQEPS7hIWjMEvg/p3rLHkX4jxMIp7Hvf6GgNr
FicEYQjS5UUHAmvrWYe2abl/2u1fl9tV6fC/yi14DwZ21UX/AR64dRaWyT0O8lsR4Z2LaaRh
Hemt/uWKhiuNqgUL7RxtqoVRGINLyGj1kiGjgLQM85H5HjJMRtbxcE/ZmDf3bWfzAV6EAhBg
BqYioSW+y4goGzCZTW1y3weXmDJY/ASXLfYl8UU4UJj65LtRb3MEdzcjE8/OdfKj83czEpYq
y11trD3uAh43YHsVyhfaIUAwVb483d18+H5/9+Hu5hRYoT/3eNp4SQOvQxA00fZ/SIuivOdk
I3TMWewVsHUNcR+u7s8xsDlG7CRDIzfNRJZ5Omww3eXdAEwD+B9liP49dMC9HaOaIxxE5zyn
aBADcsylcO0tCQ64WBD+Ih3DJaueykuu8hTVr4KcEA21DDEHxNCQtMmAqTKMT4LcTOd0+LSs
kWzVfsQIouoqKgOnJ8Uo7G9Z5jKFaNFG1pZTHx0LiyAH3xyOWpZHgPWFF7FrI4GhI1092Ia4
aiMEW9daYmPLdfBrRFc+OG3OsnDhYpDJDYyRjis0GoIBCuXDTQ8ASobXhZKLd8LdKorVdjXd
71bl4bDbO8cfbxUo76DW3ovSih/RAA9V1OdM5RkvMDshCcOGPFGqg2DTvo2T0POFpNMNGVcA
CEAEratWEgyoLaNhA/LwuYJ7R1k6B1kqIJtEcKV+Bu9QaOxrcdPBAuQSnD1AyXHey7K1rn5y
Tz9PJZ2lidDN0gkpMGBdu93X9TTvWky99xjsYa3IMhC+ergzWcJLO01JtzufG6VzNxj3DDEG
7NPuEzBZIsojfTM+i0S4eLi7MRm0UgDMjqRhqgVolhahAijd+DlxucSDljwEgaZiAFgJdEm/
spG/aB6zyBs+DBbjJB4+dsGrszwbEh4DlszNtFKQclXhzg7qiASxwVibMIneF4zYiI9hokua
iOmsAan27wNC+wB2GKKh72aC9CVjTrdgqejdJwDZ+mFHVzIOUZyqgqQ6+awDMMy4WRUscvkA
xplo6nW33Rx3+ypb0d5sC9zwjkDfZn1tq2GCZa7uJpoEFniUPNSOwLpfkaQh/odbTIG4pyFb
JFyQRtAp+0lI2l7UpkrQeAqpt9qiW+ymJzIQ/WI8QlfSgbl4cOAgQG7cbJFS2lG5Gm13K0ZG
uMYTuRG1Hl2rXpMfxqynoWciDPkYZKy2l5hzzPnDxfd1uVxfGP/0TgPTC4BeEonBRZan/Rvr
CCWmXMHpJTO0Je19qIw+br3pM1gXJ5UApKzEPBJ2orYzzWHUfhZxx4QvbI6vGqLkXB9ekfh+
X/H6HGekt8vZr9O0Do27iBFp//VYXF5cUDmvx+Lq9sLcHDy57rL2ZqGneYBpzJLHnNM+z82Y
DAov7260MRHBQgq0XwBpAH9ffL/sixKgV4w+UKbPjQckPI5h/FVvOEquu+jbDmqqPuc8icOF
eU59BkwE028ceRpVg12lMQtcq/AXReipM9G+RtmhmPIUc4NmpvMc0BtgeOZ5RWNUTFplJhoh
DxKVhnk/NVnzyDQEzJSiBVdmdjTd/V3uHbDay+fyFcJpvRPmpsLZvWG9ugM7a3BOx5AU8Oki
aJy2YxZxGVIpfDFwVWCYHX9f/ue93K5+OIfV8qXnqTSUyboZDzPXTYw+TSzWL2V/rmFtwpir
GnC6zH88RD356P3QPHB+TV3hlMfVx9/MdYVkxSinfTjSAPIjILCby4X0R+SmLWtX+9psl/sf
Dn99f1kO7lxjvn/21vPrK3rdwdx6cn+zf/17uS8db7/5q8oUtblAj5YwiCujGQSpKO82tzBO
knHIT6wDKVLl837pPDWrr/XqZj3AwtCQB/vuFrenUb+Yk4NRexwcXaMAoBPT+e2lGa5CeBiw
yyIW/WdXt3f9pypluTzV4Jo8zXK/+rY5lis0Jh/W5RtsHWWy1Wdzy0mV+zGwRvOkiCMxxM5/
gA8AFDsiUZCekfu+cAUm3vJYW3SsPLgYHvQsE2b8sFFBCYCvcsb6DQkC4izMoxCJi0k/Fq+e
YiRKEZKUfl5Pg50bPlVE8PO4Ag08ywBqi/iPCkT02OCgek/0++kZgySZ9IioxPB3JcZ5khPV
WojftfGp69NUTgfMKTqfqn5MMEje4EALscaq0eDQq51XLTBV0q6YBULpfCORi4GwZxFD/Ojq
Ppl6RH9KGaG3rFtW+neQ8TFoQexVCZFaUtDI9fkk/2K7HmywsQ4MZhAjcVZVyXq0SMxBOluy
1NvpMWE2HpMceRYDXoCDF2b6sp87J6QB07TocyH+83iV79EjqEmI9Zv0eFYfEcIw6tZa1TxP
1clEBaBkIBuVLBeS+bxJJfSnqhW6Fg0EJT2OelwV0lpoXpJ3wpt2lzUcrrOWJAeeQQgX1s9l
9vNpjSuvc24d8qABoEs+2zozEyoAi1XdhU5C9S8MlZvPlTYAk06xWJMtNf6+9RtW9/vCm6Bw
RP06TmN7YowX0QxjmpS4KCtfkebknEjHEk1K2IGKiPASPFVGX23ia7ujFoP38JoAl7ugXUYO
BEh5CAYaXQUPfS25hEXTJB1IdnLg7dqdvH6Pgc8BGJOmtjuqLRXUl5wuGkOpwv6klXTUjT1D
jwHvISpYfqpfdArhVdXg+mokqvTVWYHEK6km6oCP09NzJUTQYwF6XDe7ZTOjxnCG1B9eXVOX
p91fCm8LGLIOArsuwKxlNumRE55xk+mHr8tDuXb+rIp/b/vd0+al009zmgC5iwa6VC1SbQXr
zEyd/WJ3LMZQIpad8f8OWTVT6bq6xFrmw2UnYERZJm6jkXKVcUyfJOAozJscoe8ghlWNrqA1
YI3yGJnqvrUuXUtoRT9HI8fOMnD9tsEmsTu6F/apBAECIHICAOpuR0+/hO6Is7NkM4oBrx6M
eQG2MAtZmqIxhXA5QywAho1GR02xvBhxH/+HzrXbJWjwVomCWQaT81Odhn8vV+/H5deXUneE
OzrzeeyEMSMR+5FC20S3CVRk6WYipSsTNUckLIUIfIN+SuYksrYN6h1G5esOgrKoDVgHwcHZ
ZGKbiYxYnDOK0rfxTR4Oe0EVNRM4TID7nCJNq4CvzYq2brvPYzOUPnZWjrt61U2bUFX+Kmei
8yVVKv+mZ6Nda0ysHWnGUQN6dfWGIVjoxE5WqH4tXQMElWAmwNzvRFIplqaNRJ9Q1bXpZQ83
F5/vjM4bwsuf600BUxSA8+iEZJ0676QT57oAx2JdpLKk0ug65WNqy609jnI6BfAohx0ivehJ
V2Sb2JFQ6FRX2msYY5Y5dBFJMUVnX0B2wFrEbhCx7KxHxfk1kGEdF2RXuXaNmFOlgQqktF1C
WoO98q/NysyedJiFZObL4d9tE6duJyWHmSG6ncxl3da/NuWwWdX7cJJhyjCvenACHqaWKi1c
hopSnz52uJDYY6EtSwv2RE9/Sg3pDx8G2zxlbV52y3Wd76ln8GfgcZlnqWn1Bxq5SxDDme6K
pM3w6eWwt8DLINqyvb1m4NOM0ydQMeBHIvU0YFUQ+Z8vM+uCg6VbH8nTPMQeipEACyf4EOwM
7/SUwVxr0etcchSIYdrSSDw2Qwx1iqWl807Rmp/4NqWLxDhQjTCD3c3qLiDDFOtHA6mIwWc4
8v3tbbc/minAzvPKX24OK+q94dqjBUIfuqcxdsNEYrcFFsaEa7lgCSEknVbFlqx5IT3fVpW5
It+Lc7j4yDkYb9bsSFOKz9fu/I5GDd2hdcr0+/LgiO3huH9/1Q13h2+gEmvnuF9uD8jnAJAu
nTUc0uYN/9jNp/6/R+vh7OUIkNvx0zEzsrG7v7eoic7rDnu2nV8xo7/Zl7DAlYuJ9Oo7lu0R
ED5ATue/nH35oj/bIw5jmqRWoT03hXGcbpCQwzvy0o3qvVO6VrpS1EzG9hqhACKiLlMxqQGG
4jBXxCrBMp02E3IgF2L79n4crthm+uM0H0pTsNyv9eGLT4mDQ7oVIfy0499ppmY19XLMIt4X
4NPLUsu2t0O8SLUrkK3lCiSH0lal6PZ23BgLtS231l7SSBRVB7el1Wh2rpKNeMPSwgykiY0W
T22mAbYyrmrzOkFP8igX/k3p8YqHbj+qbOtbg0NsB1YvCYAyB3+EPSdD51nJ2pVLitgV3dxr
shvc17Tdk7ayYRrRhKD/BUzjGdKhlqQqdVYvu9Wfxv4rs7rV0RTgdvy4Dit8gNfww1KE8voe
AKxEGIA6xx3MVzrHb6WzXK836ECXL9Wsh4+mdRwuZmxOxNaGuXEqkt4nfifa7JJ+V2zcKdjU
8oWBpmJ0RseiFR1D+pBWomAWWSIhFUBwzej3aD6bo4IvOTKbQNtLllRD9giCDJJ91Is+Kn/+
/nLcPL1vV3gzjSFZDyuRke+BXQX5pgOYQCHekMK9pqEMjJ7wKA1pRKMnV3fXn3+3kmV0e0Hf
JhvNby8uNPa0j15I13InSFaiYNH19e0c2wiZZ2l2RMYv0fyexgtnD9KwGnyM9WNL93nEPcEK
l7tNyugMF8FRBSL75du3zepAGR2v20BWwQt4ZrqI+n3Mx1XksF++ls7X96cnMIfe0KdYqu3k
sApBL1d/vmyevx0BWYSud8YdAxU/rpfYWYjokc4RYTFEu1k7awPE/2HlE/7vH6Whe0keU1+k
5KCrSeCKAqIJFer+SMGMnDfS2/b8NjaEx3mYDmIHg3wKqwPX6w0d3Ck+04Cy1eTT8/TbjwP+
loMTLn+gYxvqegxwEFecu1xMyQM8M0/3ncbMG1vsqFqkFjCPA7MESwIzoSwfdkeRRUt5JPHD
UhpFcAhxuUfb/apqKnQcuCDugHvMbRK40s1yo9lekwYfXWRgE8EzdR9E7uXN3f3lfU1p7YJy
K7mloRGa3kHcVKU/IjbKfbJFCXO7WAOwTQnjqsqZLuXSzqxmCzjrf3ZZi0JvfeM887knZGr7
kjK3fLCmM34Ebu8wiAQuOs5pupfSPmqKv0UwGFdHtav97rB7OjrBj7dy/2HqPL+Xh2PHFp0C
mvOsxvkrNrZ9eYd9Qk13f0Fcbcfr4I8dFLbAN4AolZ/msn3DF4YsTubnPyhwkwiAC0ghrTzB
rKlMDI7P1bhN7t73HfDQzBtO+FQV4v7q9tooRoeTEf6GSv20hdzUXGZsJ8JRQn+MKeAFcqtf
zMrX3bF82+9WlM3DTJLCkJ9G5cTgatK318MzOV8ayUZW6Rk7I6swGBb/VeoPvp1kC8HH5u03
5/BWrjZPpyTUyZSz15fdMzyWO7ezfuO+CXI1DiaEEN42bEitfPV+t1yvdq+2cSS9Si3N00/+
viyx0bB0vuz24ottkn9i1bybj9HcNsGApolf3pcvsDXr3km66enxFycG4jTHmun3wZzdhNXU
zcnLpwafchv/SgqMeEQbkGG7Z+Ob5soKfXXVh1Yli3VOZ0MAiUm/FeySspYDmrFEin0BtjSD
jr90+wgggZAIqyHS7PwUQxsQ1rldZCBxohsVkyRmCDOurFwYyKZzVlzdxxEGzbT17XDhfFau
qgmeD2BLE/123qYXbLqWDs/IHSI/4tMT6l7OsRmXwIZ4g23X+91mbZ44i70s6X8q0hiUmt1A
FIy23nE/MVTl3GaYHl1tts9UYCCV5YOY6pODgNwSMaURxWCWlc4TWX5PQli8kQxFZE2i4Ycn
8Oe494GY4Yvz4bd8DeLqFrzqsg5YzEp6DM/rVZ/LzZLM6Dtt8VDzWzu+LHTxmI5J+RzdKfDo
5osisfz8hm42QQ4b5IEZ6q4WW6EYOAD1CUtu0juDUkVFK6w/XeGzM6O/5ImiLx1LR768KSwl
uYpso/rYsWGhVT0aix65Eu3l6lsvspZERbmBSxV3pfuH8n29000OrSi0pgSwjW07muYGIvSy
/6vsaprbtoHovb/Ck1MPasdJPW4uPlDUhzmiSJkgzaQXjWwrqsa1rZHtTpJfX+wCIIHFLu2e
nAgrkATAxQPw3pPgsIO2HjwuNNLjGbdu7SlJ2TwpasjKhn3nDXT4wzSiS1TxM3kJMFNmhaPv
rp4K4LcQjC2aIoulcd1hp/c6GWy2vX097l9+cAstqqPqG22aNjCe9SpqqnBOQ5LYYKzUQ0Ci
MFLqTJWxAsF1hiPZghcCvg5IzvMtwrydcxLGj+KAYM3fOloXdtSh+IDbvcGWn9E3S+IRHHO1
vPgA4B+OtkY/Ng+bERxwHfaPo+fNt62uZ3832j++bHfQD6Obw7cPgQHH35vj3fYRsnrfRT7F
Z69nuf3mn/3P2HwShUX6XdYpsSKSVHQuNBRGSpT1iiSrGwwBVja0f/f8QvpzweBpIcaGHAr6
TMQhhGmSDmXS8ey9kpCjyygv5fubI+hXjk+vL/vHMEOtkijvEzSmR36R6pE4g1NXGCkM2V+H
5NNCKJ1lhbNdGIcWMame3iR8VgFtuGiWY7KbQLFimsHq0WfJdBZ6ZUyegcTukbsX1XR2EdNr
kGiFjkqrPODJd3Wor0sNnvTM1HFBvU7QCTnNagEeVOnHc6lkXX88nWQ81Q6Ks7pZi9VS7VJf
cn4mlYgF/HZ+no3xQpK+MuVdCMx52x+fgI83o06h/cLrL7BVYTOjgr4M6XjwEaAbqv5QsO9F
CF8KN8PWeoTO60tSBgWWZFxT6iQK1Vhym2qz0ph2+NttoNswVBc+S4D3ZClLLN24vZ6oMh7N
eqqG47lyNkkYU0n4jmHas8TkFbALA1VJV9RYzQnavCFaoRRYyJNtkgfEbJgOi7nQoTZRRWkn
zPm394YDjZ8ejnp+uMcDybuH7fMu5nLqP6pEoDpH/XqnH/9TjLhqsmndG5fomVzBXBzVcOaD
peW4zIGBV1VgL8I+mHizJrE+PRw0CPkNDQk1xLu9f8bQW/P5kcMhhh8Fbr08kLcS2QYtaaYs
kdo4ibRJVVx8Oj37HHbVCvVLotsXMKjxCokSjuqncICo0AOJFwmbJ1BWn67h3dKKhXuQFJTg
na6tsrlHI1RvQFoIPU/X7TRZOBYnD63f2wUB/8+OzMn25nW3g6nXI/wEB6rJHOa8r0qgTNlb
5WatXk+wmE+C9AH/H4LhzVglBZjuZDU4CzptgEPEUMo2xbseLuxEI5aIG59yuH2I1tUbYguw
GQFLHCUtHIltkQygy7YQFohG7VNqbF1IC1hzlarUwyqRrKq7ljbBqAIhFbRfmO91QKS2kjby
pXIMektxMNgm1/nZysHI113JwHOZ16ZRhA/dJwC0GzJR4EolZRDSAtdLZwEV39W1xAMKv/iO
ixh1MXMFUzBwGct8B+w9/KYlKqHSpb7A2fVFWjtTantXKFWtXtj5Ukf7McqYTiPM378kURde
Ev6l5Ufr+JPy6fA8Osn18ur1YNLY5eZxR0C8XhHDAqQkezxcuXNNCQsRWzT1hedYAVo3ovhk
G7rThfZkLiQR0RXrQF1ec0Dh+rLR4ALEuGxQe8VybrwNPz1PmqsJ23BD7fpL6LcbZrbIcFfu
U2iHxXS6IknJrMjgpKzPxb8+67UyEqtGJw+vL9vvW/0P8Db4HZ0VHPqGTTyse47YK+YirKry
engrD+sArDuUT5jDQvruga3qINe7bU0QuEq2q4Ru6IaJuVXSFpAJwLuWJwgT5A74c93mb9SF
+iqN1R185a+NV9UDFb3mxGVL/6CDWPh/dHiwPWOFlfylAUKBrqsplF7LgLxsiL6J04mZjoRU
Y3WFd5uXzQmgg9vIs8+2YSY0hp3O3yhXQ7O0E6cLvrQwoxZrnMh5MyfylguPRK+aVrr9ijpL
8nhbF/y8WXwDRuGoaxcHB0S8OYIwSOxkdCO/Uty60vMbl9NQa38pYF1FeNmBx06VL3iQhj4F
GERV7V3pvEpWl3yMM1lgXSrCQtSnczYCXJi1gUAjZHpbJmyJhzK6PthwoiJnq43ESOOfQCvR
A6Oieu/U1maq7guhGiE7z+ROVnq65GW1HlxJYxyDn7kfYQm2iLFkGH/BqR38Eg6qgNBJGQf3
98/nwXD3HgwF/bNcQx7u+dAab1qNS4WOU7Vg0W60bQNu4Hb6zMe4JSG1yXKZlXS8BrdiPXrZ
vOx2ZErjV7s+/fI5cCLzCgRj4i6imYiW812MbNC1SgY2jExD4OgbSpjL7I2NNeeEuZ7x73/R
ZgW0lE4TwaLSff62SWkXChal/HFQOKz8raB6+wy/04AQLH36d3vc7AIfq0VDIH5/QGTnCmpt
Ixwkmh+7YWLou7FIfavR3vAW1PlmzK3S8GUrr/nkDZ4XS5P7ISuI1Df9KorYYbCZonMDs632
H+7BPpn+awAA

--3MwIy2ne0vdjdPXF--
