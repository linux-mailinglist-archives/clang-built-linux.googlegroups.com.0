Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBREP3HUQKGQETH5NZ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A7A70D5B
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 01:33:26 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id j63sf18620216vkc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 16:33:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563838405; cv=pass;
        d=google.com; s=arc-20160816;
        b=rA2JMXug+/mf9JuINkUYFdx3jDxP0D48kmGwR54Oq2k6XgxeQ0FIpgMKd6jqVORnbT
         FCYtE/s19+g/80N6uci+9ZTcB0ZqzOt0kYt3fJT4src02oUw9LGaZMq7ZdMqKIXm2NRe
         3cBjp1i+RjIXijm0I/AosonZiPbw4JuKjjA8jpK6dL0CkNYX5jkAMvnaz0Pr+RhM8DKZ
         W3/z+mI53YSYbYqI/tR68Co2xT1fVqjCUyprW8MjS1+gjfiYKqaKFya2Lx1zDthSk9KF
         DGYp2ErivTlaMKgFlPnTjLzL7nhN30k2wgMJNWIBKGgDTUDDy/et9hmE8CF6kCyW521K
         3fUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mU5jh/4n1mMRZ9LUsaGvoEd99b3LLt3Cb3PD4OUlLwQ=;
        b=KLwAzPqTjMlamv4uLgGfEp1j8/NiSgy5lf8Gf4MCqpExdJr0arVQTxodY+3HIY0iay
         cgRn5MjlFCQ1ing6U0E2HlT/77qCt2O3BD57QLntK2Knu8INKuSP33bwWEvA2nqEtZWO
         ia7NcD4EEoo3EjY1gFbLg26Vh1wppg1yjCeUtqARSJ8PG4KRq2X9KdaK3wfH0eFJh1Rk
         73RtwDTq+LZiCGwihOcZb1feH9JNqkI/UFGwjoUSvTVsHYwf87RPsPHTrVrUnOC54HOn
         eLHnkkxBmv5dNocNJnm+A3o0DZiNGAnvbCPeS4ZVtc7m4WqGrWnLCCVe3aoNGoGJEfmw
         3G/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mU5jh/4n1mMRZ9LUsaGvoEd99b3LLt3Cb3PD4OUlLwQ=;
        b=QA/mDp64AiY8Lm/9ou73tRPaC10tO4rpdcWkFJHEzj30FDJOhcOIQj0Tes7A/WallB
         1qZsuIazEO+jctGgd/MhItqfPnXPRz41U0qdWSV902fGvXLuZrTPT3+tmOAJoFkrDvyj
         L4LKiem7ZqvW6dmMAcOP2sVkxMvNqspENFirC8CLDX7YB9AX4GR6xXcL6A0hfWirsXZE
         XILZd3qc3jidFckcmF286pykzekQCvtHSF1cAt2mI2O58Qgwg5IGsNBvQb2mgtejknHL
         JU3kpMsH1ACIHDPZApliTy9+vt+ranTZ6BUYNJg0BGmof/vr+ITVPuw9iLsKdj17Yfgv
         Pptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mU5jh/4n1mMRZ9LUsaGvoEd99b3LLt3Cb3PD4OUlLwQ=;
        b=Gxu0CJr3cJ3Z2Nnd2jj5KRJIwqTGmmMoCVwumXyRVvr9Gyd8jqFhaqBUjt5k7rnNSV
         ZwgQm8yXmpgcv/BtabHsiGbb2nmAsZHarrwXJIUBEPr0ZtziEgOITLNRTJohx8cPH+bC
         qqhXBJRhoBmofKE/kjFe8KpifvNEmNLoJyfkiKEaKrzhjP9OtpcgZZ/CnCyOcHpeXxuR
         BVbhMWgkDXQIX7tQYX4n4LNsVGUFT9wJwFrhAPo4C2kph6DdFmaigweW22AnyBkyR18D
         RsIL5+pQrUfJvQ8G6+w3N8K7VLTTzM66EckSHB5+5hIgtdd5XMuEc/S9zRtuRDafeCib
         /8mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVF/BYIZy2KGhBtdwfbuDzCq9wTAZRHTB8vGCfJh1PedXwBl3Gd
	1iPGdz05HNYNhXWlxrkPbOQ=
X-Google-Smtp-Source: APXvYqxLqnZliBhEHz6ICd/i51Mj5CzX5SUjAYSYF9w805AWpugmyCUfcX6+PvoiE5IzN84440ub/g==
X-Received: by 2002:ab0:2789:: with SMTP id t9mr28932709uap.69.1563838404949;
        Mon, 22 Jul 2019 16:33:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f0dc:: with SMTP id j28ls5150858vsl.11.gmail; Mon, 22
 Jul 2019 16:33:24 -0700 (PDT)
X-Received: by 2002:a67:f60f:: with SMTP id k15mr45822872vso.57.1563838404583;
        Mon, 22 Jul 2019 16:33:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563838404; cv=none;
        d=google.com; s=arc-20160816;
        b=FkOSNY8182Gztc0GQbQeIX0R16HxYhbWYb2zS7hIZ0oqxjmb1T0jw0aIZygGwU0A0d
         n3rFNjDBi0sNUGW/QDu18+S2T72wZgIVFevW3VYNmBVqBycYHwSZKq8IaMLwtBPZMhBG
         ZXqg2ncMtwO3holuYMEPCx+pk7gGjF+RyYwXc/MdO07dEZnVk6UytbLi+3YzgZc5sKyV
         TrRgxCWe/dVYqk4c2ypOrm6Go8Fy+5zSqlhn+0Ozfh9fjAwFpjtgQL8+P5c6Cf+9T7vs
         l817VD2hFol2xdYkEXNWJJGiu1ZAtiX3De3kn4byVCNTdvJ+7oguN3btQO8EWHPy9FzM
         GbAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=7zSMf9mvFw9qZciN9eoPWfzuvKY+u+fFBiZ6+O5xdd0=;
        b=erViOjOz7UHk8ghe2oFab18aP+lS60JLao0ouqZGhyhNJPM7OgDNjFau1V6V+J8Cvt
         pHby2qGfZPJO/6RlkC5bojKmcNgVwYEOSPtT4IvR2VAELXZFzwha+t1lOfqR2W/UiFCn
         SkN9QDpu/Bm06f7Unpif8dDaAigoXDlvXbpufEhrTy4dfnCaYXStDkkwY1MVehCxa7vg
         4fmefknZ+BG5ELKBsapAJufNWWftY6oyCe0wUhQ8yL30iTlhOMhSa8bzm5tTUXIMGNFr
         3M6on+JTDYLGiEIg2d4QQmhbjvxjLa6P2ZbALQyH8z+YLVVUksVMvNkHbMwVGFGAI8WU
         j8+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id b5si1741424vsd.2.2019.07.22.16.33.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 16:33:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Jul 2019 16:32:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; 
   d="gz'50?scan'50,208,50";a="253056278"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 22 Jul 2019 16:32:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hphna-0009fy-TI; Tue, 23 Jul 2019 07:32:54 +0800
Date: Tue, 23 Jul 2019 07:32:40 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [driver-core:debugfs_cleanup 23/49]
 fs/ocfs2/dlm/dlmdomain.c:2038:14: warning: variable 'ret' is used
 uninitialized whenever 'for' loop exits because its condition is false
Message-ID: <201907230730.0LT4uPHR%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="exene75d6qkbpimg"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--exene75d6qkbpimg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: devel@driverdev.osuosl.org
TO: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   d3f8c6d526d1397e2953c7c3adfd2bb18daaf92d
commit: d1b9fa51a7d2cbbfb7e52b3ae3c24959034d269c [23/49] ocfs: further debugfs cleanups
config: x86_64-rhel-7.2 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 3d68adebc579720a3914d50e77a413773be34f16)
reproduce:
        git checkout d1b9fa51a7d2cbbfb7e52b3ae3c24959034d269c
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/ocfs2/dlm/dlmdomain.c:2038:14: warning: variable 'ret' is used uninitialized whenever 'for' loop exits because its condition is false [-Wsometimes-uninitialized]
           for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
                       ^~~~~~~~~~~~~~~~~~~~~
   fs/ocfs2/dlm/dlmdomain.c:2056:6: note: uninitialized use occurs here
           if (ret < 0 && dlm) {
               ^~~
   fs/ocfs2/dlm/dlmdomain.c:2038:14: note: remove the condition if it is always true
           for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
                       ^~~~~~~~~~~~~~~~~~~~~
   fs/ocfs2/dlm/dlmdomain.c:1952:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   1 warning generated.

vim +2038 fs/ocfs2/dlm/dlmdomain.c

6714d8e86bf443f Kurt Hackel        2005-12-15  1947  
6714d8e86bf443f Kurt Hackel        2005-12-15  1948  static struct dlm_ctxt *dlm_alloc_ctxt(const char *domain,
6714d8e86bf443f Kurt Hackel        2005-12-15  1949  				u32 key)
6714d8e86bf443f Kurt Hackel        2005-12-15  1950  {
6714d8e86bf443f Kurt Hackel        2005-12-15  1951  	int i;
6325b4a22b8f5e4 Sunil Mushran      2008-03-10  1952  	int ret;
6714d8e86bf443f Kurt Hackel        2005-12-15  1953  	struct dlm_ctxt *dlm = NULL;
6714d8e86bf443f Kurt Hackel        2005-12-15  1954  
cd86128088554d6 Robert P. J. Day   2006-12-13  1955  	dlm = kzalloc(sizeof(*dlm), GFP_KERNEL);
6714d8e86bf443f Kurt Hackel        2005-12-15  1956  	if (!dlm) {
190a7721ac86574 Joseph Qi          2014-10-09  1957  		ret = -ENOMEM;
190a7721ac86574 Joseph Qi          2014-10-09  1958  		mlog_errno(ret);
6714d8e86bf443f Kurt Hackel        2005-12-15  1959  		goto leave;
6714d8e86bf443f Kurt Hackel        2005-12-15  1960  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  1961  
316ce2ba8e74a7b Julia Lawall       2010-05-14  1962  	dlm->name = kstrdup(domain, GFP_KERNEL);
6714d8e86bf443f Kurt Hackel        2005-12-15  1963  	if (dlm->name == NULL) {
190a7721ac86574 Joseph Qi          2014-10-09  1964  		ret = -ENOMEM;
190a7721ac86574 Joseph Qi          2014-10-09  1965  		mlog_errno(ret);
6714d8e86bf443f Kurt Hackel        2005-12-15  1966  		goto leave;
6714d8e86bf443f Kurt Hackel        2005-12-15  1967  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  1968  
03d864c02c3ea80 Daniel Phillips    2006-03-10  1969  	dlm->lockres_hash = (struct hlist_head **)dlm_alloc_pagevec(DLM_HASH_PAGES);
81f2094a631df1b Mark Fasheh        2006-02-28  1970  	if (!dlm->lockres_hash) {
190a7721ac86574 Joseph Qi          2014-10-09  1971  		ret = -ENOMEM;
190a7721ac86574 Joseph Qi          2014-10-09  1972  		mlog_errno(ret);
6714d8e86bf443f Kurt Hackel        2005-12-15  1973  		goto leave;
6714d8e86bf443f Kurt Hackel        2005-12-15  1974  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  1975  
81f2094a631df1b Mark Fasheh        2006-02-28  1976  	for (i = 0; i < DLM_HASH_BUCKETS; i++)
03d864c02c3ea80 Daniel Phillips    2006-03-10  1977  		INIT_HLIST_HEAD(dlm_lockres_hash(dlm, i));
6714d8e86bf443f Kurt Hackel        2005-12-15  1978  
e2b66ddcce92252 Sunil Mushran      2009-02-26  1979  	dlm->master_hash = (struct hlist_head **)
e2b66ddcce92252 Sunil Mushran      2009-02-26  1980  				dlm_alloc_pagevec(DLM_HASH_PAGES);
e2b66ddcce92252 Sunil Mushran      2009-02-26  1981  	if (!dlm->master_hash) {
190a7721ac86574 Joseph Qi          2014-10-09  1982  		ret = -ENOMEM;
190a7721ac86574 Joseph Qi          2014-10-09  1983  		mlog_errno(ret);
e2b66ddcce92252 Sunil Mushran      2009-02-26  1984  		goto leave;
e2b66ddcce92252 Sunil Mushran      2009-02-26  1985  	}
e2b66ddcce92252 Sunil Mushran      2009-02-26  1986  
e2b66ddcce92252 Sunil Mushran      2009-02-26  1987  	for (i = 0; i < DLM_HASH_BUCKETS; i++)
e2b66ddcce92252 Sunil Mushran      2009-02-26  1988  		INIT_HLIST_HEAD(dlm_master_hash(dlm, i));
e2b66ddcce92252 Sunil Mushran      2009-02-26  1989  
6714d8e86bf443f Kurt Hackel        2005-12-15  1990  	dlm->key = key;
6714d8e86bf443f Kurt Hackel        2005-12-15  1991  	dlm->node_num = o2nm_this_node();
6714d8e86bf443f Kurt Hackel        2005-12-15  1992  
d1b9fa51a7d2cbb Greg Kroah-Hartman 2019-07-22  1993  	dlm_create_debugfs_subroot(dlm);
6325b4a22b8f5e4 Sunil Mushran      2008-03-10  1994  
6714d8e86bf443f Kurt Hackel        2005-12-15  1995  	spin_lock_init(&dlm->spinlock);
6714d8e86bf443f Kurt Hackel        2005-12-15  1996  	spin_lock_init(&dlm->master_lock);
6714d8e86bf443f Kurt Hackel        2005-12-15  1997  	spin_lock_init(&dlm->ast_lock);
b0d4f817ba5de8a Sunil Mushran      2008-12-16  1998  	spin_lock_init(&dlm->track_lock);
6714d8e86bf443f Kurt Hackel        2005-12-15  1999  	INIT_LIST_HEAD(&dlm->list);
6714d8e86bf443f Kurt Hackel        2005-12-15  2000  	INIT_LIST_HEAD(&dlm->dirty_list);
6714d8e86bf443f Kurt Hackel        2005-12-15  2001  	INIT_LIST_HEAD(&dlm->reco.resources);
6714d8e86bf443f Kurt Hackel        2005-12-15  2002  	INIT_LIST_HEAD(&dlm->reco.node_data);
6714d8e86bf443f Kurt Hackel        2005-12-15  2003  	INIT_LIST_HEAD(&dlm->purge_list);
6714d8e86bf443f Kurt Hackel        2005-12-15  2004  	INIT_LIST_HEAD(&dlm->dlm_domain_handlers);
29576f8bb54045b Sunil Mushran      2008-03-10  2005  	INIT_LIST_HEAD(&dlm->tracking_list);
6714d8e86bf443f Kurt Hackel        2005-12-15  2006  	dlm->reco.state = 0;
6714d8e86bf443f Kurt Hackel        2005-12-15  2007  
6714d8e86bf443f Kurt Hackel        2005-12-15  2008  	INIT_LIST_HEAD(&dlm->pending_asts);
6714d8e86bf443f Kurt Hackel        2005-12-15  2009  	INIT_LIST_HEAD(&dlm->pending_basts);
6714d8e86bf443f Kurt Hackel        2005-12-15  2010  
6714d8e86bf443f Kurt Hackel        2005-12-15  2011  	mlog(0, "dlm->recovery_map=%p, &(dlm->recovery_map[0])=%p\n",
6714d8e86bf443f Kurt Hackel        2005-12-15  2012  		  dlm->recovery_map, &(dlm->recovery_map[0]));
6714d8e86bf443f Kurt Hackel        2005-12-15  2013  
6714d8e86bf443f Kurt Hackel        2005-12-15  2014  	memset(dlm->recovery_map, 0, sizeof(dlm->recovery_map));
6714d8e86bf443f Kurt Hackel        2005-12-15  2015  	memset(dlm->live_nodes_map, 0, sizeof(dlm->live_nodes_map));
6714d8e86bf443f Kurt Hackel        2005-12-15  2016  	memset(dlm->domain_map, 0, sizeof(dlm->domain_map));
6714d8e86bf443f Kurt Hackel        2005-12-15  2017  
6714d8e86bf443f Kurt Hackel        2005-12-15  2018  	dlm->dlm_thread_task = NULL;
6714d8e86bf443f Kurt Hackel        2005-12-15  2019  	dlm->dlm_reco_thread_task = NULL;
3156d267016627f Kurt Hackel        2006-05-01  2020  	dlm->dlm_worker = NULL;
6714d8e86bf443f Kurt Hackel        2005-12-15  2021  	init_waitqueue_head(&dlm->dlm_thread_wq);
6714d8e86bf443f Kurt Hackel        2005-12-15  2022  	init_waitqueue_head(&dlm->dlm_reco_thread_wq);
6714d8e86bf443f Kurt Hackel        2005-12-15  2023  	init_waitqueue_head(&dlm->reco.event);
6714d8e86bf443f Kurt Hackel        2005-12-15  2024  	init_waitqueue_head(&dlm->ast_wq);
6714d8e86bf443f Kurt Hackel        2005-12-15  2025  	init_waitqueue_head(&dlm->migration_wq);
6714d8e86bf443f Kurt Hackel        2005-12-15  2026  	INIT_LIST_HEAD(&dlm->mle_hb_events);
6714d8e86bf443f Kurt Hackel        2005-12-15  2027  
6714d8e86bf443f Kurt Hackel        2005-12-15  2028  	dlm->joining_node = DLM_LOCK_RES_OWNER_UNKNOWN;
6714d8e86bf443f Kurt Hackel        2005-12-15  2029  	init_waitqueue_head(&dlm->dlm_join_events);
6714d8e86bf443f Kurt Hackel        2005-12-15  2030  
60c7ec9ee4a3410 piaojun            2018-04-05  2031  	dlm->migrate_done = 0;
60c7ec9ee4a3410 piaojun            2018-04-05  2032  
6714d8e86bf443f Kurt Hackel        2005-12-15  2033  	dlm->reco.new_master = O2NM_INVALID_NODE_NUM;
6714d8e86bf443f Kurt Hackel        2005-12-15  2034  	dlm->reco.dead_node = O2NM_INVALID_NODE_NUM;
6714d8e86bf443f Kurt Hackel        2005-12-15  2035  
6800791ab773453 Sunil Mushran      2009-02-26  2036  	atomic_set(&dlm->res_tot_count, 0);
6800791ab773453 Sunil Mushran      2009-02-26  2037  	atomic_set(&dlm->res_cur_count, 0);
2041d8fdcec7603 Sunil Mushran      2009-02-26 @2038  	for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
2041d8fdcec7603 Sunil Mushran      2009-02-26  2039  		atomic_set(&dlm->mle_tot_count[i], 0);
2041d8fdcec7603 Sunil Mushran      2009-02-26  2040  		atomic_set(&dlm->mle_cur_count[i], 0);
2041d8fdcec7603 Sunil Mushran      2009-02-26  2041  	}
2041d8fdcec7603 Sunil Mushran      2009-02-26  2042  
6714d8e86bf443f Kurt Hackel        2005-12-15  2043  	spin_lock_init(&dlm->work_lock);
6714d8e86bf443f Kurt Hackel        2005-12-15  2044  	INIT_LIST_HEAD(&dlm->work_list);
c4028958b6ecad0 David Howells      2006-11-22  2045  	INIT_WORK(&dlm->dispatched_work, dlm_dispatch_work);
6714d8e86bf443f Kurt Hackel        2005-12-15  2046  
6714d8e86bf443f Kurt Hackel        2005-12-15  2047  	kref_init(&dlm->dlm_refs);
6714d8e86bf443f Kurt Hackel        2005-12-15  2048  	dlm->dlm_state = DLM_CTXT_NEW;
6714d8e86bf443f Kurt Hackel        2005-12-15  2049  
6714d8e86bf443f Kurt Hackel        2005-12-15  2050  	INIT_LIST_HEAD(&dlm->dlm_eviction_callbacks);
6714d8e86bf443f Kurt Hackel        2005-12-15  2051  
6714d8e86bf443f Kurt Hackel        2005-12-15  2052  	mlog(0, "context init: refcount %u\n",
2c935bc57221cc2 Peter Zijlstra     2016-11-14  2053  		  kref_read(&dlm->dlm_refs));
6714d8e86bf443f Kurt Hackel        2005-12-15  2054  
6714d8e86bf443f Kurt Hackel        2005-12-15  2055  leave:
190a7721ac86574 Joseph Qi          2014-10-09  2056  	if (ret < 0 && dlm) {
190a7721ac86574 Joseph Qi          2014-10-09  2057  		if (dlm->master_hash)
190a7721ac86574 Joseph Qi          2014-10-09  2058  			dlm_free_pagevec((void **)dlm->master_hash,
190a7721ac86574 Joseph Qi          2014-10-09  2059  					DLM_HASH_PAGES);
190a7721ac86574 Joseph Qi          2014-10-09  2060  
190a7721ac86574 Joseph Qi          2014-10-09  2061  		if (dlm->lockres_hash)
190a7721ac86574 Joseph Qi          2014-10-09  2062  			dlm_free_pagevec((void **)dlm->lockres_hash,
190a7721ac86574 Joseph Qi          2014-10-09  2063  					DLM_HASH_PAGES);
190a7721ac86574 Joseph Qi          2014-10-09  2064  
190a7721ac86574 Joseph Qi          2014-10-09  2065  		kfree(dlm->name);
190a7721ac86574 Joseph Qi          2014-10-09  2066  		kfree(dlm);
190a7721ac86574 Joseph Qi          2014-10-09  2067  		dlm = NULL;
190a7721ac86574 Joseph Qi          2014-10-09  2068  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2069  	return dlm;
6714d8e86bf443f Kurt Hackel        2005-12-15  2070  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2071  
6714d8e86bf443f Kurt Hackel        2005-12-15  2072  /*
d24fbcda0c49883 Joel Becker        2008-01-25  2073   * Compare a requested locking protocol version against the current one.
d24fbcda0c49883 Joel Becker        2008-01-25  2074   *
d24fbcda0c49883 Joel Becker        2008-01-25  2075   * If the major numbers are different, they are incompatible.
d24fbcda0c49883 Joel Becker        2008-01-25  2076   * If the current minor is greater than the request, they are incompatible.
d24fbcda0c49883 Joel Becker        2008-01-25  2077   * If the current minor is less than or equal to the request, they are
d24fbcda0c49883 Joel Becker        2008-01-25  2078   * compatible, and the requester should run at the current minor version.
d24fbcda0c49883 Joel Becker        2008-01-25  2079   */
d24fbcda0c49883 Joel Becker        2008-01-25  2080  static int dlm_protocol_compare(struct dlm_protocol_version *existing,
d24fbcda0c49883 Joel Becker        2008-01-25  2081  				struct dlm_protocol_version *request)
d24fbcda0c49883 Joel Becker        2008-01-25  2082  {
d24fbcda0c49883 Joel Becker        2008-01-25  2083  	if (existing->pv_major != request->pv_major)
d24fbcda0c49883 Joel Becker        2008-01-25  2084  		return 1;
d24fbcda0c49883 Joel Becker        2008-01-25  2085  
d24fbcda0c49883 Joel Becker        2008-01-25  2086  	if (existing->pv_minor > request->pv_minor)
d24fbcda0c49883 Joel Becker        2008-01-25  2087  		return 1;
d24fbcda0c49883 Joel Becker        2008-01-25  2088  
d24fbcda0c49883 Joel Becker        2008-01-25  2089  	if (existing->pv_minor < request->pv_minor)
d24fbcda0c49883 Joel Becker        2008-01-25  2090  		request->pv_minor = existing->pv_minor;
d24fbcda0c49883 Joel Becker        2008-01-25  2091  
d24fbcda0c49883 Joel Becker        2008-01-25  2092  	return 0;
d24fbcda0c49883 Joel Becker        2008-01-25  2093  }
d24fbcda0c49883 Joel Becker        2008-01-25  2094  
d24fbcda0c49883 Joel Becker        2008-01-25  2095  /*
d24fbcda0c49883 Joel Becker        2008-01-25  2096   * dlm_register_domain: one-time setup per "domain".
d24fbcda0c49883 Joel Becker        2008-01-25  2097   *
d24fbcda0c49883 Joel Becker        2008-01-25  2098   * The filesystem passes in the requested locking version via proto.
d24fbcda0c49883 Joel Becker        2008-01-25  2099   * If registration was successful, proto will contain the negotiated
d24fbcda0c49883 Joel Becker        2008-01-25  2100   * locking protocol.
6714d8e86bf443f Kurt Hackel        2005-12-15  2101   */
6714d8e86bf443f Kurt Hackel        2005-12-15  2102  struct dlm_ctxt * dlm_register_domain(const char *domain,
d24fbcda0c49883 Joel Becker        2008-01-25  2103  			       u32 key,
d24fbcda0c49883 Joel Becker        2008-01-25  2104  			       struct dlm_protocol_version *fs_proto)
6714d8e86bf443f Kurt Hackel        2005-12-15  2105  {
6714d8e86bf443f Kurt Hackel        2005-12-15  2106  	int ret;
6714d8e86bf443f Kurt Hackel        2005-12-15  2107  	struct dlm_ctxt *dlm = NULL;
6714d8e86bf443f Kurt Hackel        2005-12-15  2108  	struct dlm_ctxt *new_ctxt = NULL;
6714d8e86bf443f Kurt Hackel        2005-12-15  2109  
e372357ba55ae89 Dan Carpenter      2010-07-10  2110  	if (strlen(domain) >= O2NM_MAX_NAME_LEN) {
6714d8e86bf443f Kurt Hackel        2005-12-15  2111  		ret = -ENAMETOOLONG;
6714d8e86bf443f Kurt Hackel        2005-12-15  2112  		mlog(ML_ERROR, "domain name length too long\n");
6714d8e86bf443f Kurt Hackel        2005-12-15  2113  		goto leave;
6714d8e86bf443f Kurt Hackel        2005-12-15  2114  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2115  
6714d8e86bf443f Kurt Hackel        2005-12-15  2116  	mlog(0, "register called for domain \"%s\"\n", domain);
6714d8e86bf443f Kurt Hackel        2005-12-15  2117  
6714d8e86bf443f Kurt Hackel        2005-12-15  2118  retry:
6714d8e86bf443f Kurt Hackel        2005-12-15  2119  	dlm = NULL;
6714d8e86bf443f Kurt Hackel        2005-12-15  2120  	if (signal_pending(current)) {
6714d8e86bf443f Kurt Hackel        2005-12-15  2121  		ret = -ERESTARTSYS;
6714d8e86bf443f Kurt Hackel        2005-12-15  2122  		mlog_errno(ret);
6714d8e86bf443f Kurt Hackel        2005-12-15  2123  		goto leave;
6714d8e86bf443f Kurt Hackel        2005-12-15  2124  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2125  
6714d8e86bf443f Kurt Hackel        2005-12-15  2126  	spin_lock(&dlm_domain_lock);
6714d8e86bf443f Kurt Hackel        2005-12-15  2127  
6714d8e86bf443f Kurt Hackel        2005-12-15  2128  	dlm = __dlm_lookup_domain(domain);
6714d8e86bf443f Kurt Hackel        2005-12-15  2129  	if (dlm) {
6714d8e86bf443f Kurt Hackel        2005-12-15  2130  		if (dlm->dlm_state != DLM_CTXT_JOINED) {
6714d8e86bf443f Kurt Hackel        2005-12-15  2131  			spin_unlock(&dlm_domain_lock);
6714d8e86bf443f Kurt Hackel        2005-12-15  2132  
6714d8e86bf443f Kurt Hackel        2005-12-15  2133  			mlog(0, "This ctxt is not joined yet!\n");
6714d8e86bf443f Kurt Hackel        2005-12-15  2134  			wait_event_interruptible(dlm_domain_events,
6714d8e86bf443f Kurt Hackel        2005-12-15  2135  						 dlm_wait_on_domain_helper(
6714d8e86bf443f Kurt Hackel        2005-12-15  2136  							 domain));
6714d8e86bf443f Kurt Hackel        2005-12-15  2137  			goto retry;
6714d8e86bf443f Kurt Hackel        2005-12-15  2138  		}
6714d8e86bf443f Kurt Hackel        2005-12-15  2139  
d24fbcda0c49883 Joel Becker        2008-01-25  2140  		if (dlm_protocol_compare(&dlm->fs_locking_proto, fs_proto)) {
6469272c3508729 Julia Lawall       2010-05-26  2141  			spin_unlock(&dlm_domain_lock);
d24fbcda0c49883 Joel Becker        2008-01-25  2142  			mlog(ML_ERROR,
d24fbcda0c49883 Joel Becker        2008-01-25  2143  			     "Requested locking protocol version is not "
d24fbcda0c49883 Joel Becker        2008-01-25  2144  			     "compatible with already registered domain "
d24fbcda0c49883 Joel Becker        2008-01-25  2145  			     "\"%s\"\n", domain);
d24fbcda0c49883 Joel Becker        2008-01-25  2146  			ret = -EPROTO;
d24fbcda0c49883 Joel Becker        2008-01-25  2147  			goto leave;
d24fbcda0c49883 Joel Becker        2008-01-25  2148  		}
d24fbcda0c49883 Joel Becker        2008-01-25  2149  
6714d8e86bf443f Kurt Hackel        2005-12-15  2150  		__dlm_get(dlm);
6714d8e86bf443f Kurt Hackel        2005-12-15  2151  		dlm->num_joins++;
6714d8e86bf443f Kurt Hackel        2005-12-15  2152  
6714d8e86bf443f Kurt Hackel        2005-12-15  2153  		spin_unlock(&dlm_domain_lock);
6714d8e86bf443f Kurt Hackel        2005-12-15  2154  
6714d8e86bf443f Kurt Hackel        2005-12-15  2155  		ret = 0;
6714d8e86bf443f Kurt Hackel        2005-12-15  2156  		goto leave;
6714d8e86bf443f Kurt Hackel        2005-12-15  2157  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2158  
6714d8e86bf443f Kurt Hackel        2005-12-15  2159  	/* doesn't exist */
6714d8e86bf443f Kurt Hackel        2005-12-15  2160  	if (!new_ctxt) {
6714d8e86bf443f Kurt Hackel        2005-12-15  2161  		spin_unlock(&dlm_domain_lock);
6714d8e86bf443f Kurt Hackel        2005-12-15  2162  
6714d8e86bf443f Kurt Hackel        2005-12-15  2163  		new_ctxt = dlm_alloc_ctxt(domain, key);
6714d8e86bf443f Kurt Hackel        2005-12-15  2164  		if (new_ctxt)
6714d8e86bf443f Kurt Hackel        2005-12-15  2165  			goto retry;
6714d8e86bf443f Kurt Hackel        2005-12-15  2166  
6714d8e86bf443f Kurt Hackel        2005-12-15  2167  		ret = -ENOMEM;
6714d8e86bf443f Kurt Hackel        2005-12-15  2168  		mlog_errno(ret);
6714d8e86bf443f Kurt Hackel        2005-12-15  2169  		goto leave;
6714d8e86bf443f Kurt Hackel        2005-12-15  2170  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2171  
6714d8e86bf443f Kurt Hackel        2005-12-15  2172  	/* a little variable switch-a-roo here... */
6714d8e86bf443f Kurt Hackel        2005-12-15  2173  	dlm = new_ctxt;
6714d8e86bf443f Kurt Hackel        2005-12-15  2174  	new_ctxt = NULL;
6714d8e86bf443f Kurt Hackel        2005-12-15  2175  
6714d8e86bf443f Kurt Hackel        2005-12-15  2176  	/* add the new domain */
6714d8e86bf443f Kurt Hackel        2005-12-15  2177  	list_add_tail(&dlm->list, &dlm_domains);
6714d8e86bf443f Kurt Hackel        2005-12-15  2178  	spin_unlock(&dlm_domain_lock);
6714d8e86bf443f Kurt Hackel        2005-12-15  2179  
d24fbcda0c49883 Joel Becker        2008-01-25  2180  	/*
d24fbcda0c49883 Joel Becker        2008-01-25  2181  	 * Pass the locking protocol version into the join.  If the join
d24fbcda0c49883 Joel Becker        2008-01-25  2182  	 * succeeds, it will have the negotiated protocol set.
d24fbcda0c49883 Joel Becker        2008-01-25  2183  	 */
d24fbcda0c49883 Joel Becker        2008-01-25  2184  	dlm->dlm_locking_proto = dlm_protocol;
d24fbcda0c49883 Joel Becker        2008-01-25  2185  	dlm->fs_locking_proto = *fs_proto;
d24fbcda0c49883 Joel Becker        2008-01-25  2186  
6714d8e86bf443f Kurt Hackel        2005-12-15  2187  	ret = dlm_join_domain(dlm);
6714d8e86bf443f Kurt Hackel        2005-12-15  2188  	if (ret) {
6714d8e86bf443f Kurt Hackel        2005-12-15  2189  		mlog_errno(ret);
6714d8e86bf443f Kurt Hackel        2005-12-15  2190  		dlm_put(dlm);
6714d8e86bf443f Kurt Hackel        2005-12-15  2191  		goto leave;
6714d8e86bf443f Kurt Hackel        2005-12-15  2192  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2193  
d24fbcda0c49883 Joel Becker        2008-01-25  2194  	/* Tell the caller what locking protocol we negotiated */
d24fbcda0c49883 Joel Becker        2008-01-25  2195  	*fs_proto = dlm->fs_locking_proto;
d24fbcda0c49883 Joel Becker        2008-01-25  2196  
6714d8e86bf443f Kurt Hackel        2005-12-15  2197  	ret = 0;
6714d8e86bf443f Kurt Hackel        2005-12-15  2198  leave:
6714d8e86bf443f Kurt Hackel        2005-12-15  2199  	if (new_ctxt)
6714d8e86bf443f Kurt Hackel        2005-12-15  2200  		dlm_free_ctxt_mem(new_ctxt);
6714d8e86bf443f Kurt Hackel        2005-12-15  2201  
6714d8e86bf443f Kurt Hackel        2005-12-15  2202  	if (ret < 0)
6714d8e86bf443f Kurt Hackel        2005-12-15  2203  		dlm = ERR_PTR(ret);
6714d8e86bf443f Kurt Hackel        2005-12-15  2204  
6714d8e86bf443f Kurt Hackel        2005-12-15  2205  	return dlm;
6714d8e86bf443f Kurt Hackel        2005-12-15  2206  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2207  EXPORT_SYMBOL_GPL(dlm_register_domain);
6714d8e86bf443f Kurt Hackel        2005-12-15  2208  
6714d8e86bf443f Kurt Hackel        2005-12-15  2209  static LIST_HEAD(dlm_join_handlers);
6714d8e86bf443f Kurt Hackel        2005-12-15  2210  
6714d8e86bf443f Kurt Hackel        2005-12-15  2211  static void dlm_unregister_net_handlers(void)
6714d8e86bf443f Kurt Hackel        2005-12-15  2212  {
6714d8e86bf443f Kurt Hackel        2005-12-15  2213  	o2net_unregister_handler_list(&dlm_join_handlers);
6714d8e86bf443f Kurt Hackel        2005-12-15  2214  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2215  
6714d8e86bf443f Kurt Hackel        2005-12-15  2216  static int dlm_register_net_handlers(void)
6714d8e86bf443f Kurt Hackel        2005-12-15  2217  {
6714d8e86bf443f Kurt Hackel        2005-12-15  2218  	int status = 0;
6714d8e86bf443f Kurt Hackel        2005-12-15  2219  
6714d8e86bf443f Kurt Hackel        2005-12-15  2220  	status = o2net_register_handler(DLM_QUERY_JOIN_MSG, DLM_MOD_KEY,
6714d8e86bf443f Kurt Hackel        2005-12-15  2221  					sizeof(struct dlm_query_join_request),
6714d8e86bf443f Kurt Hackel        2005-12-15  2222  					dlm_query_join_handler,
d74c9803a90d733 Kurt Hackel        2007-01-17  2223  					NULL, NULL, &dlm_join_handlers);
6714d8e86bf443f Kurt Hackel        2005-12-15  2224  	if (status)
6714d8e86bf443f Kurt Hackel        2005-12-15  2225  		goto bail;
6714d8e86bf443f Kurt Hackel        2005-12-15  2226  
6714d8e86bf443f Kurt Hackel        2005-12-15  2227  	status = o2net_register_handler(DLM_ASSERT_JOINED_MSG, DLM_MOD_KEY,
6714d8e86bf443f Kurt Hackel        2005-12-15  2228  					sizeof(struct dlm_assert_joined),
6714d8e86bf443f Kurt Hackel        2005-12-15  2229  					dlm_assert_joined_handler,
d74c9803a90d733 Kurt Hackel        2007-01-17  2230  					NULL, NULL, &dlm_join_handlers);
6714d8e86bf443f Kurt Hackel        2005-12-15  2231  	if (status)
6714d8e86bf443f Kurt Hackel        2005-12-15  2232  		goto bail;
6714d8e86bf443f Kurt Hackel        2005-12-15  2233  
6714d8e86bf443f Kurt Hackel        2005-12-15  2234  	status = o2net_register_handler(DLM_CANCEL_JOIN_MSG, DLM_MOD_KEY,
6714d8e86bf443f Kurt Hackel        2005-12-15  2235  					sizeof(struct dlm_cancel_join),
6714d8e86bf443f Kurt Hackel        2005-12-15  2236  					dlm_cancel_join_handler,
d74c9803a90d733 Kurt Hackel        2007-01-17  2237  					NULL, NULL, &dlm_join_handlers);
ea2034416b54700 Sunil Mushran      2010-10-09  2238  	if (status)
ea2034416b54700 Sunil Mushran      2010-10-09  2239  		goto bail;
ea2034416b54700 Sunil Mushran      2010-10-09  2240  
ea2034416b54700 Sunil Mushran      2010-10-09  2241  	status = o2net_register_handler(DLM_QUERY_REGION, DLM_MOD_KEY,
ea2034416b54700 Sunil Mushran      2010-10-09  2242  					sizeof(struct dlm_query_region),
ea2034416b54700 Sunil Mushran      2010-10-09  2243  					dlm_query_region_handler,
ea2034416b54700 Sunil Mushran      2010-10-09  2244  					NULL, NULL, &dlm_join_handlers);
6714d8e86bf443f Kurt Hackel        2005-12-15  2245  
18cfdf1b1a8e83b Sunil Mushran      2010-10-07  2246  	if (status)
18cfdf1b1a8e83b Sunil Mushran      2010-10-07  2247  		goto bail;
18cfdf1b1a8e83b Sunil Mushran      2010-10-07  2248  
18cfdf1b1a8e83b Sunil Mushran      2010-10-07  2249  	status = o2net_register_handler(DLM_QUERY_NODEINFO, DLM_MOD_KEY,
18cfdf1b1a8e83b Sunil Mushran      2010-10-07  2250  					sizeof(struct dlm_query_nodeinfo),
18cfdf1b1a8e83b Sunil Mushran      2010-10-07  2251  					dlm_query_nodeinfo_handler,
18cfdf1b1a8e83b Sunil Mushran      2010-10-07  2252  					NULL, NULL, &dlm_join_handlers);
6714d8e86bf443f Kurt Hackel        2005-12-15  2253  bail:
6714d8e86bf443f Kurt Hackel        2005-12-15  2254  	if (status < 0)
6714d8e86bf443f Kurt Hackel        2005-12-15  2255  		dlm_unregister_net_handlers();
6714d8e86bf443f Kurt Hackel        2005-12-15  2256  
6714d8e86bf443f Kurt Hackel        2005-12-15  2257  	return status;
6714d8e86bf443f Kurt Hackel        2005-12-15  2258  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2259  
6714d8e86bf443f Kurt Hackel        2005-12-15  2260  /* Domain eviction callback handling.
6714d8e86bf443f Kurt Hackel        2005-12-15  2261   *
6714d8e86bf443f Kurt Hackel        2005-12-15  2262   * The file system requires notification of node death *before* the
6714d8e86bf443f Kurt Hackel        2005-12-15  2263   * dlm completes it's recovery work, otherwise it may be able to
6714d8e86bf443f Kurt Hackel        2005-12-15  2264   * acquire locks on resources requiring recovery. Since the dlm can
6714d8e86bf443f Kurt Hackel        2005-12-15  2265   * evict a node from it's domain *before* heartbeat fires, a similar
6714d8e86bf443f Kurt Hackel        2005-12-15  2266   * mechanism is required. */
6714d8e86bf443f Kurt Hackel        2005-12-15  2267  
6714d8e86bf443f Kurt Hackel        2005-12-15  2268  /* Eviction is not expected to happen often, so a per-domain lock is
6714d8e86bf443f Kurt Hackel        2005-12-15  2269   * not necessary. Eviction callbacks are allowed to sleep for short
6714d8e86bf443f Kurt Hackel        2005-12-15  2270   * periods of time. */
6714d8e86bf443f Kurt Hackel        2005-12-15  2271  static DECLARE_RWSEM(dlm_callback_sem);
6714d8e86bf443f Kurt Hackel        2005-12-15  2272  
6714d8e86bf443f Kurt Hackel        2005-12-15  2273  void dlm_fire_domain_eviction_callbacks(struct dlm_ctxt *dlm,
6714d8e86bf443f Kurt Hackel        2005-12-15  2274  					int node_num)
6714d8e86bf443f Kurt Hackel        2005-12-15  2275  {
6714d8e86bf443f Kurt Hackel        2005-12-15  2276  	struct dlm_eviction_cb *cb;
6714d8e86bf443f Kurt Hackel        2005-12-15  2277  
6714d8e86bf443f Kurt Hackel        2005-12-15  2278  	down_read(&dlm_callback_sem);
df53cd3b70712cd Dong Fang          2013-09-11  2279  	list_for_each_entry(cb, &dlm->dlm_eviction_callbacks, ec_item) {
6714d8e86bf443f Kurt Hackel        2005-12-15  2280  		cb->ec_func(node_num, cb->ec_data);
6714d8e86bf443f Kurt Hackel        2005-12-15  2281  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2282  	up_read(&dlm_callback_sem);
6714d8e86bf443f Kurt Hackel        2005-12-15  2283  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2284  
6714d8e86bf443f Kurt Hackel        2005-12-15  2285  void dlm_setup_eviction_cb(struct dlm_eviction_cb *cb,
6714d8e86bf443f Kurt Hackel        2005-12-15  2286  			   dlm_eviction_func *f,
6714d8e86bf443f Kurt Hackel        2005-12-15  2287  			   void *data)
6714d8e86bf443f Kurt Hackel        2005-12-15  2288  {
6714d8e86bf443f Kurt Hackel        2005-12-15  2289  	INIT_LIST_HEAD(&cb->ec_item);
6714d8e86bf443f Kurt Hackel        2005-12-15  2290  	cb->ec_func = f;
6714d8e86bf443f Kurt Hackel        2005-12-15  2291  	cb->ec_data = data;
6714d8e86bf443f Kurt Hackel        2005-12-15  2292  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2293  EXPORT_SYMBOL_GPL(dlm_setup_eviction_cb);
6714d8e86bf443f Kurt Hackel        2005-12-15  2294  
6714d8e86bf443f Kurt Hackel        2005-12-15  2295  void dlm_register_eviction_cb(struct dlm_ctxt *dlm,
6714d8e86bf443f Kurt Hackel        2005-12-15  2296  			      struct dlm_eviction_cb *cb)
6714d8e86bf443f Kurt Hackel        2005-12-15  2297  {
6714d8e86bf443f Kurt Hackel        2005-12-15  2298  	down_write(&dlm_callback_sem);
6714d8e86bf443f Kurt Hackel        2005-12-15  2299  	list_add_tail(&cb->ec_item, &dlm->dlm_eviction_callbacks);
6714d8e86bf443f Kurt Hackel        2005-12-15  2300  	up_write(&dlm_callback_sem);
6714d8e86bf443f Kurt Hackel        2005-12-15  2301  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2302  EXPORT_SYMBOL_GPL(dlm_register_eviction_cb);
6714d8e86bf443f Kurt Hackel        2005-12-15  2303  
6714d8e86bf443f Kurt Hackel        2005-12-15  2304  void dlm_unregister_eviction_cb(struct dlm_eviction_cb *cb)
6714d8e86bf443f Kurt Hackel        2005-12-15  2305  {
6714d8e86bf443f Kurt Hackel        2005-12-15  2306  	down_write(&dlm_callback_sem);
6714d8e86bf443f Kurt Hackel        2005-12-15  2307  	list_del_init(&cb->ec_item);
6714d8e86bf443f Kurt Hackel        2005-12-15  2308  	up_write(&dlm_callback_sem);
6714d8e86bf443f Kurt Hackel        2005-12-15  2309  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2310  EXPORT_SYMBOL_GPL(dlm_unregister_eviction_cb);
6714d8e86bf443f Kurt Hackel        2005-12-15  2311  
6714d8e86bf443f Kurt Hackel        2005-12-15  2312  static int __init dlm_init(void)
6714d8e86bf443f Kurt Hackel        2005-12-15  2313  {
6714d8e86bf443f Kurt Hackel        2005-12-15  2314  	int status;
6714d8e86bf443f Kurt Hackel        2005-12-15  2315  
6714d8e86bf443f Kurt Hackel        2005-12-15  2316  	status = dlm_init_mle_cache();
12eb0035d6f0466 Sunil Mushran      2008-03-10  2317  	if (status) {
12eb0035d6f0466 Sunil Mushran      2008-03-10  2318  		mlog(ML_ERROR, "Could not create o2dlm_mle slabcache\n");
724bdca9b8449d9 Sunil Mushran      2008-03-10  2319  		goto error;
724bdca9b8449d9 Sunil Mushran      2008-03-10  2320  	}
724bdca9b8449d9 Sunil Mushran      2008-03-10  2321  
724bdca9b8449d9 Sunil Mushran      2008-03-10  2322  	status = dlm_init_master_caches();
724bdca9b8449d9 Sunil Mushran      2008-03-10  2323  	if (status) {
724bdca9b8449d9 Sunil Mushran      2008-03-10  2324  		mlog(ML_ERROR, "Could not create o2dlm_lockres and "
724bdca9b8449d9 Sunil Mushran      2008-03-10  2325  		     "o2dlm_lockname slabcaches\n");
724bdca9b8449d9 Sunil Mushran      2008-03-10  2326  		goto error;
724bdca9b8449d9 Sunil Mushran      2008-03-10  2327  	}
724bdca9b8449d9 Sunil Mushran      2008-03-10  2328  
724bdca9b8449d9 Sunil Mushran      2008-03-10  2329  	status = dlm_init_lock_cache();
724bdca9b8449d9 Sunil Mushran      2008-03-10  2330  	if (status) {
724bdca9b8449d9 Sunil Mushran      2008-03-10  2331  		mlog(ML_ERROR, "Count not create o2dlm_lock slabcache\n");
724bdca9b8449d9 Sunil Mushran      2008-03-10  2332  		goto error;
12eb0035d6f0466 Sunil Mushran      2008-03-10  2333  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2334  
6714d8e86bf443f Kurt Hackel        2005-12-15  2335  	status = dlm_register_net_handlers();
6714d8e86bf443f Kurt Hackel        2005-12-15  2336  	if (status) {
724bdca9b8449d9 Sunil Mushran      2008-03-10  2337  		mlog(ML_ERROR, "Unable to register network handlers\n");
724bdca9b8449d9 Sunil Mushran      2008-03-10  2338  		goto error;
6714d8e86bf443f Kurt Hackel        2005-12-15  2339  	}
6714d8e86bf443f Kurt Hackel        2005-12-15  2340  
e581595ea29c737 Greg Kroah-Hartman 2019-07-11  2341  	dlm_create_debugfs_root();
6325b4a22b8f5e4 Sunil Mushran      2008-03-10  2342  
6714d8e86bf443f Kurt Hackel        2005-12-15  2343  	return 0;
724bdca9b8449d9 Sunil Mushran      2008-03-10  2344  error:
6325b4a22b8f5e4 Sunil Mushran      2008-03-10  2345  	dlm_unregister_net_handlers();
724bdca9b8449d9 Sunil Mushran      2008-03-10  2346  	dlm_destroy_lock_cache();
724bdca9b8449d9 Sunil Mushran      2008-03-10  2347  	dlm_destroy_master_caches();
724bdca9b8449d9 Sunil Mushran      2008-03-10  2348  	dlm_destroy_mle_cache();
724bdca9b8449d9 Sunil Mushran      2008-03-10  2349  	return -1;
6714d8e86bf443f Kurt Hackel        2005-12-15  2350  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2351  
6714d8e86bf443f Kurt Hackel        2005-12-15  2352  static void __exit dlm_exit (void)
6714d8e86bf443f Kurt Hackel        2005-12-15  2353  {
6325b4a22b8f5e4 Sunil Mushran      2008-03-10  2354  	dlm_destroy_debugfs_root();
6714d8e86bf443f Kurt Hackel        2005-12-15  2355  	dlm_unregister_net_handlers();
724bdca9b8449d9 Sunil Mushran      2008-03-10  2356  	dlm_destroy_lock_cache();
724bdca9b8449d9 Sunil Mushran      2008-03-10  2357  	dlm_destroy_master_caches();
6714d8e86bf443f Kurt Hackel        2005-12-15  2358  	dlm_destroy_mle_cache();
6714d8e86bf443f Kurt Hackel        2005-12-15  2359  }
6714d8e86bf443f Kurt Hackel        2005-12-15  2360  
6714d8e86bf443f Kurt Hackel        2005-12-15  2361  MODULE_AUTHOR("Oracle");
6714d8e86bf443f Kurt Hackel        2005-12-15  2362  MODULE_LICENSE("GPL");
ff8fb335221e2c4 Goldwyn Rodrigues  2014-01-21  2363  MODULE_DESCRIPTION("OCFS2 Distributed Lock Management");
6714d8e86bf443f Kurt Hackel        2005-12-15  2364  
6714d8e86bf443f Kurt Hackel        2005-12-15  2365  module_init(dlm_init);
6714d8e86bf443f Kurt Hackel        2005-12-15  2366  module_exit(dlm_exit);

:::::: The code at line 2038 was first introduced by commit
:::::: 2041d8fdcec7603401829f60810c1dbd5e96c043 ocfs2/dlm: Track number of mles

:::::: TO: Sunil Mushran <sunil.mushran@oracle.com>
:::::: CC: Mark Fasheh <mfasheh@suse.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907230730.0LT4uPHR%25lkp%40intel.com.

--exene75d6qkbpimg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
7S+JeoHLuZF03nkRhN2ID+pO//8BYNKcP9m5AgA=

--exene75d6qkbpimg--
