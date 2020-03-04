Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXPK7PZAKGQEQUMIMTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B2665178701
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 01:25:02 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id c125sf69221ywf.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 16:25:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583281501; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z2MtVCHZ2NWPTaClH7btF6UCbh2qvN9clm8wncRT5SI4e1aGsGzcHS6tMcog8sKO6/
         kjN6BcFXWQJq7CHMWUDi1/My3uphRmkxh7pNs7pBBz/EwyHYNqEvj0GfLTGO9eQAfcjg
         ZomC/BKGE6NK+W/dRvPyKrNP0fCMC5Wre/+9nyymQQ9rdXtWaX1Xg5fW8ZYB/uqDt2hU
         aGPH2TjU4dK9nEIOkoyBNQSAj3UKXoWzZhBxXAyOYUNUGh+Niu1fhV73J8b4/Bdh0AI2
         DUJ7JX/xQpSkhKzWxZ+quZEkaW4y4TgRjSq0AuHgmsVBTBzsly6EalJjSJGVYRTBngJU
         h/4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NLlpnz4OPhBlCo7XEu/WZ8PxvaMs56oMCwtpUGDPIfQ=;
        b=cWZm5t2bYLf8UUAjLMbpCk65TmDFYq4fObp1O+KcWnABnsdcaP5NjBw4fDFUIsRLLf
         jQWSw/eflBz9MnGUOc4/1lTCcmfZZDdHlTiGmDcU7T5o1BTP/iObTkWAhh26VYmT6bje
         t5QAf8n+IJgrxzwtxBBxJPSL5fE3gYgRC3jvkcXK+q3m5NE9e3tRO3UP8lh3b/m5FwjN
         0ia7b+jZTBEgFDG8g2RU23NlFXcUYudMnzVowChK5xQIVPhaBoJIPVDnUOTKhW2mo39I
         u/D1YG6FBPMhobWfoUth4+PCKjHO5rFePszUA5QS0j2B5jtz/hQLv53yOUcIUnoEiyTe
         6QzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NLlpnz4OPhBlCo7XEu/WZ8PxvaMs56oMCwtpUGDPIfQ=;
        b=chJ9FzqOryHW6tzfe4ZXkIsFD0H6dUvY4slbootZYx9w1mVE0llZrIHlLYOF8odBWO
         TfCJwpzBGkCM1CthfXxRubC8xAKbFjpoEVXWMCykhf7Z6lOCcwmqaPnnX9/7efXeSWk3
         ismFz3ebsy6RKNk/94h6bukc2qpdqshSY2kPQtiUJ19Yk7BhSGuXylMvSGOUuOQEs4Pv
         vivlZMvaqoVBl2vLidtOXAyu9ue8it7BsQwHfWj/KaIJ2wm3yIzU+kb5iomAKodIZPPt
         v9HmEXAQtEmXkCtcva5b0bo+FsKVKEVAmwIzvC/qLuBcBJImN4IythUzRo2d2nV8pSYe
         YyZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NLlpnz4OPhBlCo7XEu/WZ8PxvaMs56oMCwtpUGDPIfQ=;
        b=kpcGIlT5BZLcLRzs3WCoT70o73iRBG2c9KW0EA3eB6mqmTvc0+NhNAm+MpeF6T5n5l
         ayAFCDRGQzsEQg817myhIcQ2ukdytk9WT+fWvXocSmwDcfvdwO5/DNyTfy5SAcRyW+UN
         mwjsbltKby1VrY9wr8wYk6aPH60Nc9vZA0ExdXFrBLZcYutw8/QbAJdnBKwe/eDRrC26
         NZu/HrmDQlFs/A+q+i4oUnZu1UnmJ6IMYFAATmIiI7j1Pa8IhyiBWRLtEwwWTBvMVbtP
         nWQzyd7izgIOoYVC3wGhyeTazfNc+c4tHwVmZT+vp9USQtaWpq1crW5phYh1yh8t+7sG
         E48g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3575TajkX+oIdmY0vV/yimMrnMuMIMLtXMtLD59E8MVTFr3pzQ
	5dnnTFm5rRKFe9zR69IDUes=
X-Google-Smtp-Source: ADFU+vsYn30cCpWWAqd/wuj8P2ThjD+UZsSYTsp8z1yRxyPt3a4hmM6HQCVj5neEgkwAiRwlJRgdgw==
X-Received: by 2002:a81:53d7:: with SMTP id h206mr409832ywb.92.1583281501425;
        Tue, 03 Mar 2020 16:25:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:1bc4:: with SMTP id b187ls25873ywb.10.gmail; Tue, 03 Mar
 2020 16:25:01 -0800 (PST)
X-Received: by 2002:a81:b38a:: with SMTP id r132mr441908ywh.114.1583281500942;
        Tue, 03 Mar 2020 16:25:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583281500; cv=none;
        d=google.com; s=arc-20160816;
        b=zDyHnNWFJIBeRIYv1TMgVuC+7wZ8CWc7gie0keNuF/R/VxVZdi+bKQIuLBmU9JElCl
         fRsSo/r6/sTM4leo+xeXpQ529q2Rp3bJezDTN2W60z9QsyD/TyNdTJrAx43E8munrZFD
         BOBrcnjh7tjgyMDLvBpN97ij/r2JtvPJTD79JhD53OeBGHNb5NMMX710hSbymV7uSgje
         Si5pHH8rudOyikvRegyB6p5HsIkubNG/qCespguevY4tkbpkZA5GDZV+ok6TlxIetcjG
         hlYC4fuBviCFb0xD3gwjj/Tg97sKqaRERm8g5uI6/zudtTlIhGLGhfeOYboAdI9KJEf8
         B3xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=gG27dQ6gUS9tP5Y9B6cCIdeSd66HnZ8SVVQ5eytVnNA=;
        b=fiK3wyqRoJHgieXhoSwQ3+m+v+Q8D9mC+slMjXxl7wn7xpR3d5aJRNGX6vn2XLt0jX
         fZdUbJKg+hmVrLcS/6ZkZsQdilNUtetRIAVtpGKZBCDJlZX5yw5OB9usOAAhvHtN5MeK
         U+BIanWhWgnHF816478w/Ccqs94COeh2GwI83zvbGj/2eAN2ui//oU1a/vQ+p8OlpQ3E
         ftKqk8h4heNE44coL1X0D4btoQRAYqCubSuLSsUbBt8IOqBm+39Y+ZV+2vAdi3NY2z2H
         A2PjHnj+iQ8uRjYG2UH/wIjgZXwc8i+6XJ1E/zAEaX0cJjMwFTV1j87a3VjydbcxqKc6
         5iHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id d80si25433ywb.2.2020.03.03.16.24.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2020 16:25:00 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2020 16:24:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; 
   d="gz'50?scan'50,208,50";a="263402738"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 03 Mar 2020 16:24:57 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1j9HqK-0001Mm-Il; Wed, 04 Mar 2020 08:24:56 +0800
Date: Wed, 4 Mar 2020 08:24:23 +0800
From: kbuild test robot <lkp@intel.com>
To: Mel Gorman <mgorman@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [mel:sched-sisoptimise-v1r13 13/17] kernel/sched/fair.c:5983:15:
 error: use of undeclared identifier 'SIS_IDLE_AVAILABLE'
Message-ID: <202003040820.AyGjynNr%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mel/linux.git sched-sisoptimise-v1r13
head:   29c923785d2d841e56ede88add8125edb98780a1
commit: b78fe901aa5f4c38357108ef750eefae8e15e1bc [13/17] sched/fair: Cache the value of a core that recently went idle
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 211fb91f1067ecdf7c0b8a019bcf76554d813129)
reproduce:
        # FIXME the reproduce steps for clang is not ready yet

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/sched/fair.c:5983:15: error: use of undeclared identifier 'SIS_IDLE_AVAILABLE'
                   if (core == SIS_IDLE_AVAILABLE)
                               ^
   kernel/sched/fair.c:5987:38: error: use of undeclared identifier 'SIS_IDLE_AVAILABLE'
                           WRITE_ONCE(sds->recent_idle_core, SIS_IDLE_AVAILABLE);
                                                             ^
>> kernel/sched/fair.c:6008:36: error: use of undeclared identifier 'SIS_IDLE_UNAVAILABLE'; did you mean 'SKB_FCLONE_UNAVAILABLE'?
           if (get_idle_cores(core, core) != SIS_IDLE_UNAVAILABLE)
                                             ^~~~~~~~~~~~~~~~~~~~
                                             SKB_FCLONE_UNAVAILABLE
   include/linux/skbuff.h:552:2: note: 'SKB_FCLONE_UNAVAILABLE' declared here
           SKB_FCLONE_UNAVAILABLE, /* skb has no fclone (from head_cache) */
           ^
   kernel/sched/fair.c:6040:14: error: use of undeclared identifier 'SIS_IDLE_UNAVAILABLE'; did you mean 'SKB_FCLONE_UNAVAILABLE'?
           if (core == SIS_IDLE_UNAVAILABLE)
                       ^~~~~~~~~~~~~~~~~~~~
                       SKB_FCLONE_UNAVAILABLE
   include/linux/skbuff.h:552:2: note: 'SKB_FCLONE_UNAVAILABLE' declared here
           SKB_FCLONE_UNAVAILABLE, /* skb has no fclone (from head_cache) */
           ^
   kernel/sched/fair.c:6054:14: error: use of undeclared identifier 'SIS_IDLE_AVAILABLE'
           if (core == SIS_IDLE_AVAILABLE)
                       ^
   kernel/sched/fair.c:6082:25: error: use of undeclared identifier 'SIS_IDLE_UNAVAILABLE'; did you mean 'SKB_FCLONE_UNAVAILABLE'?
           set_idle_cores(target, SIS_IDLE_UNAVAILABLE);
                                  ^~~~~~~~~~~~~~~~~~~~
                                  SKB_FCLONE_UNAVAILABLE
   include/linux/skbuff.h:552:2: note: 'SKB_FCLONE_UNAVAILABLE' declared here
           SKB_FCLONE_UNAVAILABLE, /* skb has no fclone (from head_cache) */
           ^
   6 errors generated.

vim +/SIS_IDLE_AVAILABLE +5983 kernel/sched/fair.c

  5974	
  5975	static inline int get_idle_cores(int cpu, int def)
  5976	{
  5977		struct sched_domain_shared *sds;
  5978	
  5979		sds = rcu_dereference(per_cpu(sd_llc_shared, cpu));
  5980		if (sds) {
  5981			int core = READ_ONCE(sds->recent_idle_core);
  5982	
> 5983			if (core == SIS_IDLE_AVAILABLE)
  5984				return cpu;
  5985	
  5986			if (core >= 0)
  5987				WRITE_ONCE(sds->recent_idle_core, SIS_IDLE_AVAILABLE);
  5988	
  5989			return core;
  5990		}
  5991	
  5992		return def;
  5993	}
  5994	
  5995	/*
  5996	 * Scans the local SMT mask to see if the entire core is idle, and records this
  5997	 * information in sd_llc_shared->recent_idle_core.
  5998	 *
  5999	 * Since SMT siblings share all cache levels, inspecting this limited remote
  6000	 * state should be fairly cheap.
  6001	 */
  6002	void __update_idle_core(struct rq *rq)
  6003	{
  6004		int core = cpu_of(rq);
  6005		int cpu;
  6006	
  6007		rcu_read_lock();
> 6008		if (get_idle_cores(core, core) != SIS_IDLE_UNAVAILABLE)
  6009			goto unlock;
  6010	
  6011		for_each_cpu(cpu, cpu_smt_mask(core)) {
  6012			if (cpu == core)
  6013				continue;
  6014	
  6015			if (!available_idle_cpu(cpu))
  6016				goto unlock;
  6017		}
  6018	
  6019		set_idle_cores(core, core);
  6020	unlock:
  6021		rcu_read_unlock();
  6022	}
  6023	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003040820.AyGjynNr%25lkp%40intel.com.

--jI8keyz6grp/JLjh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--jI8keyz6grp/JLjh--
