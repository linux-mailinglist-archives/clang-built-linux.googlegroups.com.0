Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZF6X3XQKGQEYIMA3VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id DE95F1189F3
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 14:36:37 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id m13sf4848086iol.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 05:36:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575984996; cv=pass;
        d=google.com; s=arc-20160816;
        b=TTHcmtN/saptDozD127PRNuOECnrtd1++lVGdwNQOHNGTkTNv6Y9JCf2C9Iup2ULqU
         v8LVztp2v4liuMJ8Soa3ec1GmIjVsy1HvMbG38Z4sc0F9z4Ry2Z/8PpWAt2mREVouI6Y
         tLBEOTiMVPJDr2JR8ytDV36N2S3LHf3smaFiFkV4/yMyFYX4qlIFZVQ6c1NjD1cmC8Ui
         r0PoNdD8YZCTmKmQ2yKj/ZhfihPU46GF7BkJfiBWTgHujaKP0iaRO0KLfJ0fB0u3gyqB
         TDGBNoas4Zspg2uMpcciqHyeDPjzeLQ7UmrjI4xRc0wpxECiW/FE1V3sJp4UlfATE3//
         Dqcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DSuAkrhtkOYkwSKyLDmdAcYJwRouABgwf8MLc+eBQok=;
        b=NPL/WZSRBOi95/xeZD90oMXoowm42TOSGRD3/aj1DpCYGfLIHb+VWZLq+RBgh3Ag0/
         Whn+8OJpNvxpyQiHclKUzczWfs+WbnuG45/ejNzxMO6oSSuhdCp2RHBm9Z7mtDYhztgt
         WajnRNYTLoqMa5w1zrd4lJ0aSALuD31oSBYBEcuXHWGDXfqcrm4VMYQrrWAzx0X6HN6z
         /SHGskGT5aJf4q0JnhgmYGoAyFXjDXgUTmz/tNwvcYds+Lnjpglg3r0xUBUv2Bx7B/0S
         7GOSDTmt4D0hEzTvxiIMXwp5MpKPG1Tteuj/NcPIt0QU6b8wtr0NV0lSee+8H6MgNp2O
         8OhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DSuAkrhtkOYkwSKyLDmdAcYJwRouABgwf8MLc+eBQok=;
        b=NkdbAGZTFlt2hz8rcaRM3BbbPeHRGaYRJCCm1YoMkmLjt9g6nOeqpVdZSmdufnKpSw
         b1sU8WqD55U8shmNN6+vhJjzV04b+npnAE+CYq3KK8HqBGqll9lmI+NfS5JScVkFznq0
         oLRd0V3kJ7H3a7aQ0nrgWlsxe0l7gTuFdGjom0/uccpzpduUx1YevJLaLzBvB76/UKmz
         d2rXuiVFB6SfMCEWr81APQXUDhDzHhQPlwZyG7Zuh1jMA9Zg/aSLgnmn5tWUibakPRGY
         ujZllnietGBx9sAoaO1YEoLdVZVmC/F5sNvsv/pDPrZm0Y5/FcLBJLb9iR6wk06pSKgN
         XQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DSuAkrhtkOYkwSKyLDmdAcYJwRouABgwf8MLc+eBQok=;
        b=HhX5pEWoZ14SKcdMNJOH7kj+drSurwKWaCXYsNDdkgvrTgUBl9EpuGSnqNX3VrLpyz
         FS7J5AQdvVN8aJnq/yqTWHdjHtqo2b6Odc4unV/Ocrw+c+m+kDX3nplSOWeiZPAaVzCc
         js2hFY1ys9ue4m/7/eKLZQLLvViOmL6GMNL2yKjHFhAgXsAfO31XbXu4UWtrhInSwrL2
         slT6mg2tyo98eIVdhJYo2jj43PNyKXL96v4xpl/bhr1MH5KOrO+XrxfRyNLl7Y5jmhr0
         vKP86R2Cjg4C/h8rLFxcod4hdS/EcuZRw6rWDLeHIw7jewPmSJQwcKBmK/Rcpfc/lWT5
         7hIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWaC13A5mfLRPPk7Pa3cy5RiXVWz8+uL+dRDh8aUcLONg/zcSRL
	kDSSqs92sbALGFHK0+E2Tv4=
X-Google-Smtp-Source: APXvYqxe5ph2TUdNWQzviaiSJe6i31jIWjxPU8DaRlvpnWwRMqGcdwGYpdd4YwKrZ25ZJmPLdaT0rw==
X-Received: by 2002:a02:95c3:: with SMTP id b61mr27051363jai.21.1575984996324;
        Tue, 10 Dec 2019 05:36:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8789:: with SMTP id f9ls2245249ion.9.gmail; Tue, 10 Dec
 2019 05:36:35 -0800 (PST)
X-Received: by 2002:a6b:c804:: with SMTP id y4mr26357058iof.9.1575984995901;
        Tue, 10 Dec 2019 05:36:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575984995; cv=none;
        d=google.com; s=arc-20160816;
        b=wsig3L5JYKVxvYLOsaG5/mOZMM5Jgv67/8Ib4Jtgp/z9Cco0PgLynt2OI1DIcyS3xe
         2SwjKu0rxJVGOLSGZ1KEUxFH1xlF3GN3aqmT7PlVNzt+lmrQT9awt2wCn1sjflvvARSz
         IyjTnZNqSr7wazA0YmohoY9iDK+4rMga1Lg6TI3EvzyZat0Pb1+dtCl9sP3+YyzIl/A5
         wcl9nGr3TQ1Qs44tl61/DUnqrcJ5UkdIP2z5yZCrA23RspHkhPyvwEz7uj9G6mpBhaSv
         P59HK1fOJJjpSgPYiOWIiVoWBrLwvpi4B99fYaAJFU6J5bpsJrrTX/eRbgMbES0Fe2N3
         Z/Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=SDfCam9XaaUn3HUbFl9/YazPgkTd1l8sxZrn2dF0lDc=;
        b=AUpwfZoBqPQzEsljrelpElCfTpn6vhzaDLPczMQyx1xP/k5Jj2MoR+c/XS0z6XbySN
         I5vyErojJVdztvtIO+3dRWk2s/QwbxlBRWU0OFjrHZGOMvY8fK/jwgUGr6RZ4Se8yifc
         kah0osZ3yx/f9z9YNa3pwWAHu3x6GDbzIUZKUnCnE9lkyGD3JaQyHyyyEyfAm0H2hmuo
         msHGq8txvbbOUhjCVuR8D4IkKIkPiXcXaSQPdwaoq1mte7nzNMYV5LtH+eT0LixAVFQx
         2cRiXgjTF5u27HbrO4v4Er+Gh2EWaemopbStgJN+r7Nr0nNucCdewhhLIDKkeDdqDOsH
         rywg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id h4si218030ilf.3.2019.12.10.05.36.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 05:36:35 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Dec 2019 05:36:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; 
   d="gz'50?scan'50,208,50";a="210441975"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 10 Dec 2019 05:36:33 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iefgn-0005gK-3U; Tue, 10 Dec 2019 21:36:33 +0800
Date: Tue, 10 Dec 2019 21:36:14 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [brauner:clone_into_cgroup 1/1] kernel/fork.c:2180:30: error: too
 many arguments to function call, expected single argument 'p', have 2
 arguments
Message-ID: <201912102110.SA0fx4Y9%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5a5mythtowfi2yjm"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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


--5a5mythtowfi2yjm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Christian Brauner <christian.brauner@ubuntu.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git clone_into_cgroup
head:   59ce5e6cff6fa5358b51a9a2df4238c3bc733e74
commit: 59ce5e6cff6fa5358b51a9a2df4238c3bc733e74 [1/1] [WIP]: clone3: clone into cgroup
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 9fdb7ac503a964b128ec909fbf95443c3ea279a4)
reproduce:
        git checkout 59ce5e6cff6fa5358b51a9a2df4238c3bc733e74
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/fork.c:2180:30: error: too many arguments to function call, expected single argument 'p', have 2 arguments
           retval = cgroup_can_fork(p, args);
                    ~~~~~~~~~~~~~~~    ^~~~
   include/linux/cgroup.h:719:1: note: 'cgroup_can_fork' declared here
   static inline int cgroup_can_fork(struct task_struct *p) { return 0; }
   ^
   kernel/fork.c:2291:22: error: too many arguments to function call, expected single argument 'p', have 2 arguments
           cgroup_post_fork(p, args);
           ~~~~~~~~~~~~~~~~    ^~~~
   include/linux/cgroup.h:721:1: note: 'cgroup_post_fork' declared here
   static inline void cgroup_post_fork(struct task_struct *p) {}
   ^
   kernel/fork.c:2304:24: error: too many arguments to function call, expected single argument 'p', have 2 arguments
           cgroup_cancel_fork(p, args);
           ~~~~~~~~~~~~~~~~~~    ^~~~
   include/linux/cgroup.h:720:1: note: 'cgroup_cancel_fork' declared here
   static inline void cgroup_cancel_fork(struct task_struct *p) {}
   ^
   3 errors generated.

vim +/p +2180 kernel/fork.c

  2040	
  2041		/* Perform scheduler related setup. Assign this task to a CPU. */
  2042		retval = sched_fork(clone_flags, p);
  2043		if (retval)
  2044			goto bad_fork_cleanup_policy;
  2045	
  2046		retval = perf_event_init_task(p);
  2047		if (retval)
  2048			goto bad_fork_cleanup_policy;
  2049		retval = audit_alloc(p);
  2050		if (retval)
  2051			goto bad_fork_cleanup_perf;
  2052		/* copy all the process information */
  2053		shm_init_task(p);
  2054		retval = security_task_alloc(p, clone_flags);
  2055		if (retval)
  2056			goto bad_fork_cleanup_audit;
  2057		retval = copy_semundo(clone_flags, p);
  2058		if (retval)
  2059			goto bad_fork_cleanup_security;
  2060		retval = copy_files(clone_flags, p);
  2061		if (retval)
  2062			goto bad_fork_cleanup_semundo;
  2063		retval = copy_fs(clone_flags, p);
  2064		if (retval)
  2065			goto bad_fork_cleanup_files;
  2066		retval = copy_sighand(clone_flags, p);
  2067		if (retval)
  2068			goto bad_fork_cleanup_fs;
  2069		retval = copy_signal(clone_flags, p);
  2070		if (retval)
  2071			goto bad_fork_cleanup_sighand;
  2072		retval = copy_mm(clone_flags, p);
  2073		if (retval)
  2074			goto bad_fork_cleanup_signal;
  2075		retval = copy_namespaces(clone_flags, p);
  2076		if (retval)
  2077			goto bad_fork_cleanup_mm;
  2078		retval = copy_io(clone_flags, p);
  2079		if (retval)
  2080			goto bad_fork_cleanup_namespaces;
  2081		retval = copy_thread_tls(clone_flags, args->stack, args->stack_size, p,
  2082					 args->tls);
  2083		if (retval)
  2084			goto bad_fork_cleanup_io;
  2085	
  2086		stackleak_task_init(p);
  2087	
  2088		if (pid != &init_struct_pid) {
  2089			pid = alloc_pid(p->nsproxy->pid_ns_for_children, args->set_tid,
  2090					args->set_tid_size);
  2091			if (IS_ERR(pid)) {
  2092				retval = PTR_ERR(pid);
  2093				goto bad_fork_cleanup_thread;
  2094			}
  2095		}
  2096	
  2097		/*
  2098		 * This has to happen after we've potentially unshared the file
  2099		 * descriptor table (so that the pidfd doesn't leak into the child
  2100		 * if the fd table isn't shared).
  2101		 */
  2102		if (clone_flags & CLONE_PIDFD) {
  2103			retval = get_unused_fd_flags(O_RDWR | O_CLOEXEC);
  2104			if (retval < 0)
  2105				goto bad_fork_free_pid;
  2106	
  2107			pidfd = retval;
  2108	
  2109			pidfile = anon_inode_getfile("[pidfd]", &pidfd_fops, pid,
  2110						      O_RDWR | O_CLOEXEC);
  2111			if (IS_ERR(pidfile)) {
  2112				put_unused_fd(pidfd);
  2113				retval = PTR_ERR(pidfile);
  2114				goto bad_fork_free_pid;
  2115			}
  2116			get_pid(pid);	/* held by pidfile now */
  2117	
  2118			retval = put_user(pidfd, args->pidfd);
  2119			if (retval)
  2120				goto bad_fork_put_pidfd;
  2121		}
  2122	
  2123	#ifdef CONFIG_BLOCK
  2124		p->plug = NULL;
  2125	#endif
  2126		futex_init_task(p);
  2127	
  2128		/*
  2129		 * sigaltstack should be cleared when sharing the same VM
  2130		 */
  2131		if ((clone_flags & (CLONE_VM|CLONE_VFORK)) == CLONE_VM)
  2132			sas_ss_reset(p);
  2133	
  2134		/*
  2135		 * Syscall tracing and stepping should be turned off in the
  2136		 * child regardless of CLONE_PTRACE.
  2137		 */
  2138		user_disable_single_step(p);
  2139		clear_tsk_thread_flag(p, TIF_SYSCALL_TRACE);
  2140	#ifdef TIF_SYSCALL_EMU
  2141		clear_tsk_thread_flag(p, TIF_SYSCALL_EMU);
  2142	#endif
  2143		clear_tsk_latency_tracing(p);
  2144	
  2145		/* ok, now we should be set up.. */
  2146		p->pid = pid_nr(pid);
  2147		if (clone_flags & CLONE_THREAD) {
  2148			p->exit_signal = -1;
  2149			p->group_leader = current->group_leader;
  2150			p->tgid = current->tgid;
  2151		} else {
  2152			if (clone_flags & CLONE_PARENT)
  2153				p->exit_signal = current->group_leader->exit_signal;
  2154			else
  2155				p->exit_signal = args->exit_signal;
  2156			p->group_leader = p;
  2157			p->tgid = p->pid;
  2158		}
  2159	
  2160		p->nr_dirtied = 0;
  2161		p->nr_dirtied_pause = 128 >> (PAGE_SHIFT - 10);
  2162		p->dirty_paused_when = 0;
  2163	
  2164		p->pdeath_signal = 0;
  2165		INIT_LIST_HEAD(&p->thread_group);
  2166		p->task_works = NULL;
  2167	
  2168		cgroup_threadgroup_change_begin(current);
  2169	
  2170		retval = cgroup_fork_css_set_find(current, args);
  2171		if (retval)
  2172			goto bad_fork_cgroup_threadgroup_change_end;
  2173	
  2174		/*
  2175		 * Ensure that the cgroup subsystem policies allow the new process to be
  2176		 * forked. It should be noted the the new process's css_set can be changed
  2177		 * between here and cgroup_post_fork() if an organisation operation is in
  2178		 * progress.
  2179		 */
> 2180		retval = cgroup_can_fork(p, args);
  2181		if (retval)
  2182			goto bad_fork_cgroup_threadgroup_change_end;
  2183	
  2184		/*
  2185		 * From this point on we must avoid any synchronous user-space
  2186		 * communication until we take the tasklist-lock. In particular, we do
  2187		 * not want user-space to be able to predict the process start-time by
  2188		 * stalling fork(2) after we recorded the start_time but before it is
  2189		 * visible to the system.
  2190		 */
  2191	
  2192		p->start_time = ktime_get_ns();
  2193		p->real_start_time = ktime_get_boottime_ns();
  2194	
  2195		/*
  2196		 * Make it visible to the rest of the system, but dont wake it up yet.
  2197		 * Need tasklist lock for parent etc handling!
  2198		 */
  2199		write_lock_irq(&tasklist_lock);
  2200	
  2201		/* CLONE_PARENT re-uses the old parent */
  2202		if (clone_flags & (CLONE_PARENT|CLONE_THREAD)) {
  2203			p->real_parent = current->real_parent;
  2204			p->parent_exec_id = current->parent_exec_id;
  2205		} else {
  2206			p->real_parent = current;
  2207			p->parent_exec_id = current->self_exec_id;
  2208		}
  2209	
  2210		klp_copy_process(p);
  2211	
  2212		spin_lock(&current->sighand->siglock);
  2213	
  2214		/*
  2215		 * Copy seccomp details explicitly here, in case they were changed
  2216		 * before holding sighand lock.
  2217		 */
  2218		copy_seccomp(p);
  2219	
  2220		rseq_fork(p, clone_flags);
  2221	
  2222		/* Don't start children in a dying pid namespace */
  2223		if (unlikely(!(ns_of_pid(pid)->pid_allocated & PIDNS_ADDING))) {
  2224			retval = -ENOMEM;
  2225			goto bad_fork_cancel_cgroup;
  2226		}
  2227	
  2228		/* Let kill terminate clone/fork in the middle */
  2229		if (fatal_signal_pending(current)) {
  2230			retval = -EINTR;
  2231			goto bad_fork_cancel_cgroup;
  2232		}
  2233	
  2234		retval = cgroup_fork_lock(args);
  2235		if (retval)
  2236			goto bad_fork_cancel_cgroup;
  2237	
  2238		/* past the last point of failure */
  2239		if (pidfile)
  2240			fd_install(pidfd, pidfile);
  2241	
  2242		init_task_pid_links(p);
  2243		if (likely(p->pid)) {
  2244			ptrace_init_task(p, (clone_flags & CLONE_PTRACE) || trace);
  2245	
  2246			init_task_pid(p, PIDTYPE_PID, pid);
  2247			if (thread_group_leader(p)) {
  2248				init_task_pid(p, PIDTYPE_TGID, pid);
  2249				init_task_pid(p, PIDTYPE_PGID, task_pgrp(current));
  2250				init_task_pid(p, PIDTYPE_SID, task_session(current));
  2251	
  2252				if (is_child_reaper(pid)) {
  2253					ns_of_pid(pid)->child_reaper = p;
  2254					p->signal->flags |= SIGNAL_UNKILLABLE;
  2255				}
  2256				p->signal->shared_pending.signal = delayed.signal;
  2257				p->signal->tty = tty_kref_get(current->signal->tty);
  2258				/*
  2259				 * Inherit has_child_subreaper flag under the same
  2260				 * tasklist_lock with adding child to the process tree
  2261				 * for propagate_has_child_subreaper optimization.
  2262				 */
  2263				p->signal->has_child_subreaper = p->real_parent->signal->has_child_subreaper ||
  2264								 p->real_parent->signal->is_child_subreaper;
  2265				list_add_tail(&p->sibling, &p->real_parent->children);
  2266				list_add_tail_rcu(&p->tasks, &init_task.tasks);
  2267				attach_pid(p, PIDTYPE_TGID);
  2268				attach_pid(p, PIDTYPE_PGID);
  2269				attach_pid(p, PIDTYPE_SID);
  2270				__this_cpu_inc(process_counts);
  2271			} else {
  2272				current->signal->nr_threads++;
  2273				atomic_inc(&current->signal->live);
  2274				refcount_inc(&current->signal->sigcnt);
  2275				task_join_group_stop(p);
  2276				list_add_tail_rcu(&p->thread_group,
  2277						  &p->group_leader->thread_group);
  2278				list_add_tail_rcu(&p->thread_node,
  2279						  &p->signal->thread_head);
  2280			}
  2281			attach_pid(p, PIDTYPE_PID);
  2282			nr_threads++;
  2283		}
  2284		total_forks++;
  2285		hlist_del_init(&delayed.node);
  2286		spin_unlock(&current->sighand->siglock);
  2287		syscall_tracepoint_update(p);
  2288		write_unlock_irq(&tasklist_lock);
  2289	
  2290		proc_fork_connector(p);
  2291		cgroup_post_fork(p, args);
  2292		cgroup_fork_unlock(args);
  2293		cgroup_threadgroup_change_end(current);
  2294		perf_event_fork(p);
  2295	
  2296		trace_task_newtask(p, clone_flags);
  2297		uprobe_copy_process(p, clone_flags);
  2298	
  2299		return p;
  2300	
  2301	bad_fork_cancel_cgroup:
  2302		spin_unlock(&current->sighand->siglock);
  2303		write_unlock_irq(&tasklist_lock);
  2304		cgroup_cancel_fork(p, args);
  2305	bad_fork_cgroup_threadgroup_change_end:
  2306		cgroup_fork_css_set_put(args);
  2307		cgroup_threadgroup_change_end(current);
  2308	bad_fork_put_pidfd:
  2309		if (clone_flags & CLONE_PIDFD) {
  2310			fput(pidfile);
  2311			put_unused_fd(pidfd);
  2312		}
  2313	bad_fork_free_pid:
  2314		if (pid != &init_struct_pid)
  2315			free_pid(pid);
  2316	bad_fork_cleanup_thread:
  2317		exit_thread(p);
  2318	bad_fork_cleanup_io:
  2319		if (p->io_context)
  2320			exit_io_context(p);
  2321	bad_fork_cleanup_namespaces:
  2322		exit_task_namespaces(p);
  2323	bad_fork_cleanup_mm:
  2324		if (p->mm) {
  2325			mm_clear_owner(p->mm, p);
  2326			mmput(p->mm);
  2327		}
  2328	bad_fork_cleanup_signal:
  2329		if (!(clone_flags & CLONE_THREAD))
  2330			free_signal_struct(p->signal);
  2331	bad_fork_cleanup_sighand:
  2332		__cleanup_sighand(p->sighand);
  2333	bad_fork_cleanup_fs:
  2334		exit_fs(p); /* blocking */
  2335	bad_fork_cleanup_files:
  2336		exit_files(p); /* blocking */
  2337	bad_fork_cleanup_semundo:
  2338		exit_sem(p);
  2339	bad_fork_cleanup_security:
  2340		security_task_free(p);
  2341	bad_fork_cleanup_audit:
  2342		audit_free(p);
  2343	bad_fork_cleanup_perf:
  2344		perf_event_free_task(p);
  2345	bad_fork_cleanup_policy:
  2346		lockdep_free_task(p);
  2347	#ifdef CONFIG_NUMA
  2348		mpol_put(p->mempolicy);
  2349	bad_fork_cleanup_threadgroup_lock:
  2350	#endif
  2351		delayacct_tsk_free(p);
  2352	bad_fork_cleanup_count:
  2353		atomic_dec(&p->cred->user->processes);
  2354		exit_creds(p);
  2355	bad_fork_free:
  2356		p->state = TASK_DEAD;
  2357		put_task_stack(p);
  2358		delayed_free_task(p);
  2359	fork_out:
  2360		spin_lock_irq(&current->sighand->siglock);
  2361		hlist_del_init(&delayed.node);
  2362		spin_unlock_irq(&current->sighand->siglock);
  2363		return ERR_PTR(retval);
  2364	}
  2365	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912102110.SA0fx4Y9%25lkp%40intel.com.

--5a5mythtowfi2yjm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5a5mythtowfi2yjm--
