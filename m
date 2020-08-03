Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRNRUH4QKGQE2LYIUOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id E736823AC6C
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 20:34:46 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id w24sf7895779vsk.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 11:34:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596479686; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGHwPu3LF4c4v1IUjMAkQwI4oFYtqC0ASbfXB9bk+nqdD53yNiiMg1U6T+q7JajX2L
         OQxqNyEoAKv+OA3/DUSqnkOxu/P2xwYx/SA0Xi9hMJ8JZB+0fs1MHwq+KVDWtw7KUycQ
         Mg12oPJAK3HUMKmTEEVDLKxGxSNJ/SJvl339I8ZEOgtgVBw2X6Oj6EBBOOVg6xYO8vO5
         mPHSmqPjIE58vnsjOo9E+f+xaHSyF7BYN/9k6/qbyQ/SlMFIQ2khWN7lB7RXsXVjI4YX
         yv3VYASStCadNbF40HrO1gkfqDaqXBqy+o4XsUosoChs75e5cHtI/UpbRfeYWmFMNW8i
         VUjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=erxkWmYwTyeGDeW7P0y+8QfBoaWpn0fHlhIFCBk6fpU=;
        b=glt8in+SsZTzimJZR2AmOp8cwa05ePD9953RCdGfXvQnEdsaN86ua8RqEl/s7OvInL
         8p0iJI6724xj4IjpTt2B3owwqRK//kMRRVbp10DLrtxJuNJMXj34BinlvlQ3h0oAd1jt
         yNa1H4lXAly9X+Ugf2LYu0iHEZ1q1iBrwWLIfoWcCwj3IbNOHOrYYGyUQfmSntDayv0D
         HeJYgLnF/IX5gGnHMftrGeFOk5/IaFcAawBB2+D1HMHYo3NPmy5YtVvNCfAK8Nx+neto
         oUqs1/blH/1BnpIg77OROgXbwnAdSdxBalwONNsUEv94lhqpH85g0+VpJr4s/GhjlZTx
         7RfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=erxkWmYwTyeGDeW7P0y+8QfBoaWpn0fHlhIFCBk6fpU=;
        b=AzX1lL4moeAyKVIVuqbQZ6AE/u3ghHrzZxV8KPRwC1j14zdd5L1CiOEXnxAPCLuANK
         bJU7WF13rU4+zpcJZc1X8IBf2n0DlA6tKYD0tBF0cx9ZDzQWwq/D3bbdyiZgwP2d22/p
         Qbh7wbOlnsg2/hvEGDrCCqdImW/VJgUYL0zOG6FvQzL2w6pxfjpIMCAc7UKWrgVtaJ0r
         c0mCEpR0F05D7hvyuQb+1Rhptfm93xl2POWtxWYAf3hN1SOjC0X0GXNFTjW3Pk+svGTy
         rSF3d+Arx8STTa/2fLHx+I/uK6GJUFlYkL38PymtHgBGnRoJvChOfdlNNSbxgjaxPmaT
         8e/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=erxkWmYwTyeGDeW7P0y+8QfBoaWpn0fHlhIFCBk6fpU=;
        b=h6e7U1G+wSS4wDvpXLtVRzehsM3bSvuCSutVT68fYWS1oxX86yHuL82SH++JOzblXm
         Vhtl4KJHo5l8cT/cRtbyKdbrNJSAiqAaKm/qsFlWhbdEJ1WxHDpFbroETveP8NoJUlzC
         1cZ71IcyimHHineQAUIJELo57GaEziFd1LAH+mAo7gvHttdmrX48580GkBONfe1GrQns
         NHRq+yyl4dm0KTl1T94FWoQJEmSN7cJpwc2s8FDjeiWYwerZUTvifJs0koMYjr0fUyHH
         iZjPR1X88NKJYZTBz8IwYkBB+ogGKt3CB1hQdIwHcuJfegkzC2qC65sWc12AdNp+ljhV
         lPOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532s8FnHVdIOrPwnFKj94CFwp2Y/pbxpbeVI5WQ1WrX9sf7/ZJ/Q
	7gu81OiKXCHkNekj9JF41KE=
X-Google-Smtp-Source: ABdhPJxvGyiPC8mopAJzSr836jOH3nVlKVu/8M54DqmCYI4Z7SK3Qy9CPDeKxvPfSbmWb52Oau2L7w==
X-Received: by 2002:ab0:44e5:: with SMTP id n92mr12204785uan.121.1596479685763;
        Mon, 03 Aug 2020 11:34:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf4a:: with SMTP id f10ls1349635vsm.3.gmail; Mon, 03 Aug
 2020 11:34:45 -0700 (PDT)
X-Received: by 2002:a67:ed59:: with SMTP id m25mr12552271vsp.218.1596479685239;
        Mon, 03 Aug 2020 11:34:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596479685; cv=none;
        d=google.com; s=arc-20160816;
        b=Kp/09T0n6fzWJ7NJjOjLJn/+xcJQCaL4kmP9T3MPBnreY3he/XLBiTMOemB+/Faga+
         RBqVdfauW0t5PUEX4c9MUoQMJYE/6FsdEtfsVzmITnTo0QJgc2mbQAwvLHj52YIch8AS
         w3LZgIb7DiLL7T8OyGJjvVv9pnc8wlp1tHv+8G0Va50oWbSXAzHaJpNzRE4Uf2upHz5z
         SHdrScc5ty5GdHEr6Z8v3HQW6qIt2YDS4PEtcD370SwGYQIwLQWdi4UcvyPZvRqrr+h0
         TDNRL6ylSCIeyXWvV72mNWmlv1ngpcO31ygJ536hjftuO9ODPvAjKO9RZa/F3gViwFsO
         v3Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=OdofG7kuVhyrXHBZ1eBJBGzS7EKEsi2ULIW42928dIM=;
        b=kwVQNKJKHS2C+H6WVV/64cbxtGRgcgX7qvARI4DrtJGRH4PUIkJjRKisAS36fjqdFr
         pzX2iSdiyvc6goyRbZT7iCXwJW7cvtz2x5dnlqcasUguHq5G0k+ngYX6/+OjTA8+d5Zg
         JveNnpzvyxtn8nrJAhmiW4OGuti/afzftcg1IU2OW+OB3P9vvWZgpPp/no4ubdLw+vGY
         0q3m/kG8Q82IPcLfnbd8scn+Ous1yljkmn0579J1sn+vv4Hwqvfnp68zYRXxvbV4gUzG
         IBCM0FOfcGbMRXRLQ1puzWJKaYuYCYZKmhoHBPyZ0kzn4tbMaMBk/bk+yiMvr+5lr1+G
         VmXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id p8si39934vsf.1.2020.08.03.11.34.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Aug 2020 11:34:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: wKOKYTknO3X1UvxIEGBP3aXviPnlI+76GZWOd/ceWq7xpHt408MaU3oqw5usUEpPmJS3yVkh/a
 EZMdKqgSNVcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="131751313"
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; 
   d="gz'50?scan'50,208,50";a="131751313"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2020 11:34:41 -0700
IronPort-SDR: zKkci+U7yw9wYgiU6OyZyS5K0aN1r3/EW8YtJGLnLwkPiMBiX13z1Mr1NcGMvcDFRtAkE7GPcK
 lsN2WAn9ZSuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; 
   d="gz'50?scan'50,208,50";a="292191123"
Received: from lkp-server02.sh.intel.com (HELO 84ccfe698a63) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 03 Aug 2020 11:34:37 -0700
Received: from kbuild by 84ccfe698a63 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k2fIC-0000BW-Ss; Mon, 03 Aug 2020 18:34:36 +0000
Date: Tue, 4 Aug 2020 02:33:42 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [mark-rutland:treewide/thread-flags 1/1]
 arch/x86/entry/common.c:249:18: error: too few arguments to function call,
 single argument 'task' was not specified
Message-ID: <202008040234.ccklBcH0%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="17pEHd4RhPHOinZp"
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


--17pEHd4RhPHOinZp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git treewide/thread-flags
head:   1de8ae7dcc46071ef2a7b710ff7297595bd5554d
commit: 1de8ae7dcc46071ef2a7b710ff7297595bd5554d [1/1] treewide: use helper to snapshot thread flags
config: x86_64-randconfig-a006-20200803 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4ffa6a27aca17fe88fa6bdd605b198df6632a570)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 1de8ae7dcc46071ef2a7b710ff7297595bd5554d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:48: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                                         ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:25: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                  ^
   include/linux/compiler_types.h:264:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:46: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                                       ^
   include/linux/compiler.h:280:65: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                    ^
   include/linux/compiler_types.h:264:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:46: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                                       ^
   include/linux/compiler.h:280:72: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                           ^
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:18: error: too few arguments to function call, single argument 'task' was not specified
                   cached_flags = read_thread_flags();
                                  ^~~~~~~~~~~~~~~~~~~
   include/linux/thread_info.h:100:29: note: expanded from macro 'read_thread_flags'
           READ_ONCE(task_thread_info()->flags)
                     ~~~~~~~~~~~~~~~~ ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:286:10: note: expanded from macro '__READ_ONCE_SCALAR'
           (typeof(x))__x;                                                 \
                   ^
   include/linux/sched.h:1688:35: note: 'task_thread_info' declared here
   static inline struct thread_info *task_thread_info(struct task_struct *task)
                                     ^
>> arch/x86/entry/common.c:249:16: error: assigning to 'u32' (aka 'unsigned int') from incompatible type 'void'
                   cached_flags = read_thread_flags();
                                ^ ~~~~~~~~~~~~~~~~~~~
   arch/x86/entry/common.c:359:24: warning: no previous prototype for function 'syscall_return_slowpath' [-Wmissing-prototypes]
   __visible noinstr void syscall_return_slowpath(struct pt_regs *regs)
                          ^
   arch/x86/entry/common.c:359:19: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible noinstr void syscall_return_slowpath(struct pt_regs *regs)
                     ^
                     static 
   arch/x86/entry/common.c:544:24: warning: no previous prototype for function 'do_SYSENTER_32' [-Wmissing-prototypes]
   __visible noinstr long do_SYSENTER_32(struct pt_regs *regs)
                          ^
   arch/x86/entry/common.c:544:19: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible noinstr long do_SYSENTER_32(struct pt_regs *regs)
                     ^
                     static 
   2 warnings and 10 errors generated.

vim +/task +249 arch/x86/entry/common.c

   206	
   207	#define EXIT_TO_USERMODE_LOOP_FLAGS				\
   208		(_TIF_SIGPENDING | _TIF_NOTIFY_RESUME | _TIF_UPROBE |	\
   209		 _TIF_NEED_RESCHED | _TIF_USER_RETURN_NOTIFY | _TIF_PATCH_PENDING)
   210	
   211	static void exit_to_usermode_loop(struct pt_regs *regs, u32 cached_flags)
   212	{
   213		/*
   214		 * In order to return to user mode, we need to have IRQs off with
   215		 * none of EXIT_TO_USERMODE_LOOP_FLAGS set.  Several of these flags
   216		 * can be set at any time on preemptible kernels if we have IRQs on,
   217		 * so we need to loop.  Disabling preemption wouldn't help: doing the
   218		 * work to clear some of the flags can sleep.
   219		 */
   220		while (true) {
   221			/* We have work to do. */
   222			local_irq_enable();
   223	
   224			if (cached_flags & _TIF_NEED_RESCHED)
   225				schedule();
   226	
   227			if (cached_flags & _TIF_UPROBE)
   228				uprobe_notify_resume(regs);
   229	
   230			if (cached_flags & _TIF_PATCH_PENDING)
   231				klp_update_patch_state(current);
   232	
   233			/* deal with pending signal delivery */
   234			if (cached_flags & _TIF_SIGPENDING)
   235				do_signal(regs);
   236	
   237			if (cached_flags & _TIF_NOTIFY_RESUME) {
   238				clear_thread_flag(TIF_NOTIFY_RESUME);
   239				tracehook_notify_resume(regs);
   240				rseq_handle_notify_resume(NULL, regs);
   241			}
   242	
   243			if (cached_flags & _TIF_USER_RETURN_NOTIFY)
   244				fire_user_return_notifiers();
   245	
   246			/* Disable IRQs and retry */
   247			local_irq_disable();
   248	
 > 249			cached_flags = read_thread_flags();
   250	
   251			if (!(cached_flags & EXIT_TO_USERMODE_LOOP_FLAGS))
   252				break;
   253		}
   254	}
   255	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008040234.ccklBcH0%25lkp%40intel.com.

--17pEHd4RhPHOinZp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFpRKF8AAy5jb25maWcAjDxdd9s2su/9FTrpS/ehre0kbvbe4weQBCVUJMEAoCz5BUex
5azvOnZWttvk398ZACQBEHS2D6mJGXwNBvMN/fzTzwvy8vz4Zf98d72/v/+++Hx4OBz3z4eb
xe3d/eF/FwVfNFwtaMHUb4Bc3T28fPv924dzff5u8f63D7+dLNaH48PhfpE/PtzefX6BvneP
Dz/9/FPOm5ItdZ7rDRWS8UYrulUXb67v9w+fF38djk+Atzg9++0Exvjl893z//z+O/z75e54
fDz+fn//1xf99fj4f4fr58W729v9+f7sj/31/vSP28OHD/D56ebm/OT9p9N/fri5PT9/e7Z/
/8fJP970sy7HaS9O+saqmLYBHpM6r0izvPjuIUJjVRVjk8EYup+encB/3hg5aXTFmrXXYWzU
UhHF8gC2IlITWeslV3wWoHmn2k4l4ayBoekIYuKjvuTCW0HWsapQrKZakayiWnLhDaVWghLY
Z1Ny+AdQJHaFc/t5sTQscL94Ojy/fB1PkjVMadpsNBFAIlYzdfH2DND7tfG6ZTCNolIt7p4W
D4/POMJAU56TqqffmzepZk06nxhm/VqSSnn4K7Khek1FQyu9vGLtiO5DMoCcpUHVVU3SkO3V
XA8+B3gHgIEA3qr8/cdws7bXEHCFr8G3V6/35gnqByt2bQUtSVcpc64ehfvmFZeqITW9ePPL
w+PDAe7WMJW8JG1iErmTG9Z6fO4a8P+5qsb2lku21fXHjnY03Tp2GSa9JCpfaQNN7j8XXEpd
05qLnSZKkXyVxOskrViWBJEOpFxiY+bQiYDpDQaujVRVf13g5i2eXj49fX96PnwZr8uSNlSw
3FzMVvDM26kPkit+mYbQsqS5Yjh1WeraXtAIr6VNwRpz+9OD1GwpQPjAnUuCWfMnzuGDV0QU
AJJwylpQCROEQqbgNWFNqk2vGBVIpt3MWogScMJAOrj0ios0Fs4pNmbNuuZFJOJKLnJaOOnF
fKEtWyIknadEQbNuWUrDUoeHm8XjbXRyo6jn+VryDiayTFdwbxrDBj6KuT7fU503pGIFUVRX
RCqd7/IqwQNGQG9GlorAZjy6oY2SrwJ1JjgpcpjodbQajokUf3ZJvJpL3bW45J631d0XUNQp
9gaFtta8ocC/3lCrK2BJwXhh1N1wsRqOEFZU6atrwWVXVfPg1LVkyxWyi6GhCE52su5xtFZQ
WrcKRm3Sq+kRNrzqGkXELjG1w/GEl+uUc+gzabYXzFA0b7vf1f7p34tnWOJiD8t9et4/Py32
19ePLw/Pdw+fIxpDB01yM67l92GhGyZUBMazTCwX+d8wWjCQL91kvoJrRTa9KBllvQGoFRU1
qXA/UnYiTbhMFijpckDBiVQSCQ0NtIdkmvaShe3uPP8LqnmaAEjCJK+MDPGHMwcg8m4hE/wM
J6UBNj3SoBE+NN0Cj3uHLAMMM1DUhHs2Xd1VS4AmTV1Bp1MD5aoKTa3aF9kIaSgck6TLPKuY
f7kRVpIGLMmL83fTRl1RUl6cno/UQ1jGedKIMxPxPEMS+0xil6wEyc2atTEt6yx5lCH9Bw5d
2z88ab8ezoEHwoStVzA8XPiklYl2YwlalZXq4uzEb0e2qMnWg5+ejWfNGgWGOilpNMbp2+Ce
dI101rS5F0a09ldbXv/rcPNyfzgubg/755fj4ck0u30noIFOkV3bgoUuddPVRGcEHI48uKcG
65I0CoDKzN41NWm1qjJdVp1cTfwE2NPp2YdohGGeGJovBe9a6ZMarKl8mb7r1dp1SJyCBVgS
jeOXhAmdhOQl6C/SFJesUCt/fpBvXof5mVpWyHgjWhTG0h/Fgm0u4X5eUZG2IVuwDmdEk+te
0A3LZyxQiwGDxNIvWi0V5WS1WVsmFmuMlpSpzfP1gENUsE802sEYAjGcWsKK5uuWw9mj5gQj
jE6FPbphk6MdcXYSjqugIB7BigtPZTw4WpGU3kS2AQoao0n4hiV+kxoGtraT54+IInL0oKH3
78b5ionbNEKMYxeipnwkAwg8OhCDqNHx7/SB55qDcq/ZFUXD1BwsBz3ZhAwygy3hj8BXCnwk
K21YcXoe44D+yamxKazEjfq0uWzXsBZQf7gYz59uPa6LdVg0Uw0eIIO74NnockkVOiF6Yqta
jpg0lyu40lXAX9bFs+Za0qpCKexrYCOVm5r5UQFPJM7vlYArgAalt5xO0W30CYLDI0nLg12x
ZUOq0mNSs27TMGzIWNVlSjLJFQhPT/QyHugwrjvYXOpqk2LDJO3J6Yk1GC8jQjD/UNaIsqvl
tEUHZzG2ZmAYwdaRV60SjzEM6fD+ousZcM/0iEeV1EcNEO1P4xD5DrcwwCSdzBCorMbtwTwN
eCNWNvWXU9LALDWC0bQmxoSRaFH4GsbeDFiHHnypkSnz05N3EzPRRTXbw/H28fhl/3B9WNC/
Dg9gcxLQ5zlaneBhjPbjzOB2nQYIdNCb2ni/ScPov5zRs/9rO6F1OqIrNcrrqstm9QgG7Qic
mokbel1IlmJpGClE4+k4CvaH8xRL2vNFcjRAQmWM9qoWICu4d19CKMYkwHL2DlSuurIEM6wl
MIkfUQj3jTZfS4RipEotYScVrY0CxdAuK1nex0o8b5CXrEpfVSN+jTINnM8wftojn7/L/EDB
1oTQg29fHUolOhOYAQrmvPDvvA0Ka6Np1MWbw/3t+btfv304//X8nR9WXYOK7o09j26K5Gtr
qE9gdd1FV7tG+1I0oHCZjR1cnH14DYFsMSScROg5rR9oZpwADYYDz8Th9VGKQAF4jYPM0uZE
bEAgQgPpxTKBIZkCDZRotyiFkGFwoG0KRsA8wog+jXT3gAGcAhPrdglcoyLpA4altf2syw4u
0ohgnLceZKQXDCUwaLTq/KRCgGdYP4lm18MyKhobRwO9K1lWxUuWncQA4hzYCHZDOvD8Vx3o
/yobUa440AFM7LdeoN2ER03nOafDyUNYurm08X3Qsm7nunYmiuqdagm2BCWi2uUYKvS1bbED
IxjDo6udhDtdRdHTdml9uArEJ2jY95HbJAmeMF4UPEaaW8FitEJ7fLw+PD09HhfP37/aQETg
60W0Sckcf4O46ZIS1QlqzXZf8iBwe0ZalieGQWDdmpCnx+a8KkrmO4KCKrBqgkQR9rRcDsak
qEIA3SpgCGSy0aQKFrSB9SdlPgL7+WcR8F5WumplyvpDBFKPUztXKzSbZKnrjKW1jnFeeA0c
WIIvMciBVORwB5cIzCywwpcd9cMlQFGCcbVABbi2qRadosiWNSYEnKZBMjq3BkUeLcNGmdsO
Q6bAk5Vytuk44SZN5WEhUbgvZW33qH0QYxjkT8KqFUd7xSwrnSvJRfMKuF5/SLe3Mk8D0N5L
58VAzfE6sYFBqvt2bM9mogGt6US2jeSc+yjV6TxMyUgu5XW7zVfLSF1jvHwTtoBiY3VXm/tV
ggSqdl7QDREMB4EPV0tPoTOQoUYM6MADNNet3k4ExGiYYKQVHUlagZAKogcwP8hNe99SZp+D
w3XzAhGucbVb+sHFvjkHS5N0Ygq4WhG+9TNCq5Za/gvssaJOX9slmGdwscH4mDn8bSRyel1o
tKBEyxH0YEaXaJ2kgZjDen86ATrb1DsiB/FarFCRdUBe21jPyWWT09YouCO25IlGQQVHfwwj
Apnga9rYsAOm4GLhW4dxBauRPHfhy+PD3fPjMcgheH6JE7+CtH4u1oMb6csv3bk5a3ZmgoBL
nWMIpktXRdlGu/G2wn9oqE/Yh3X6yFkOvA3Xd1aPwPWZob2RmeHs742aD9sKJuDK6GWGlsiE
znlLbM2GVCxPqSokFBgcwFi52LUBb0QgkJPGJs12KVdojNl1SWPBGkBGy9sxScKIG8A9P0dw
Ix36xDhmVGMH3oGiJDWrKrrElI/VopjN7OjFybebw/7mxPvPJ2uLy8Bu+W7U3ml4JEoxLAlW
P5fo94uunTIR3gpUWXW/3hHRdo/vFaaRMZp/6V3nWglPguEXWntMgTk/2+7IPpD3ZAYNDwIj
J0aM9MinIWeBbzN3zLEHjOgS3KKYObuapcThaF6Nx6lsbl+v6S7gcVrOWFA0R/8rZTBd6dOT
E38MaDl7f5IcBkBvT2ZBMM5JcoaL05GZrIRdCcyAejEquqVBKsg0oNc1VxJC5EoXXXJLg28A
Nx3svZNvp46f/SA2hhXw8F/rDz7lsoH+Z8F16F0QdxrgbXK/kmsFzFx1y9B2GVncAwdUt+6T
D01v3HrRm0LyJNxd0Uhup3YZY255U+38FcUIs2n1vC6M6wybTKf5QTSxEihVqD7QOFeKU4FE
bTEHFiykb0wG115z3CZuPCkK3SsGH+YEgTtSdwo/whHw1yYW2g5LthV4Ky2qXeVnEtvHvw/H
Bejc/efDl8PDs1kvyVu2ePyK5ZVe3NH58F6Exzn1Ls81Bcg1a02I1TMCai0rSttpS+ivQism
h3rc0euo9SVZ04njM4CDIQwTh4MWG0yaFAmQXcW0PUp99C1aqHBfeRW4NpcfrYWD1VUsZ3QM
Xc+q3z7+gPT3jnHy1V8FIzAkKB6+7uJgRs2WK+XqybBLW+TRIC4maReJRggMNYnUGUxDk6V/
wkGzdukbz2PD4dtc6DmRZnfRsnimyXnbtYORVkq70rnBBN1o4H4hWEH9MFM4EshwV50142oC
DklZ2waSEQX2yS5ac9YpFUZyTfMGFpJK/hmgIkVMzMgzHjZuPK/51bI29HYmEsZOhzKga5eC
+GVuP4T1lyFaVY4Hxee8dcCAvxUBETx7Wr1escIrmrUHMh46MZZDMhmj05iWeSfBj4fB1YoX
k+ULWnQoATDUf4mGFCqauYXCX4HRjd9ovXSCqd1ssmO8dqSl3uUN2126MeI+ACQJW7SqnF4B
TzAyzPqCURiVIk1OBv4u56JiKNycO93L8pJdjAVli/J4+M/L4eH6++Lpen9v/b8gGADK4GNS
L6Z7DwOzm/uDV8uPhVWF74H0LXrJN2DjFEGiIgDWtAlKhgKgomk7JUDqw2DJk7WgPmTm+6/j
NgZb4Ifa1ew/e3nqGxa/wO1aHJ6vf/uH51nDhbN+pKdwoK2u7YfnT5gWjAidngQ2C6LnTXZ2
Alv82DGR9oeZJCDO0rIRYUVNMLAw46c2Xsze+BQ7WWY+gWb2aWlw97A/fl/QLy/3+8jwMFGr
GYd/6ycFnDE6bZqgYAykO39nLWpgGD9v5UrJh57j8idLNCsv745f/t4fD4viePeXzdSO/k+R
rlopmaiN7AEBWJN0nJvJXIJ8z8qUwVBe6rx0BRH+OfvtvSGcCmhyvqzosAw/sG8AGCI1wSFF
IjXa98S4d9aVJaaIHHI66Gbxsb6LN5J7Y88va9N6Eh1cyCH30ksidfh83C9ue8LfGML7JXAz
CD14cmSBgF5vPCsS49YdsMnVJF8LaOnnERuwUcEQ4UntBxp5s31/6qeywOxakVPdsLjt7P15
3ApeWyeHouk+/7s/Xv/r7vlwjV7GrzeHr7BNlDYTE966qWG9g/Vsw7ZeA9topE8bbrPUHm7f
gtpsGotd21RaghJ/grMMgjyjQbbBPmAycQSMJ5Uzb3wmGTqzuNHS7hpzs7HELEcLKjKOMeGA
j34Ua3SGb0yigRhQA/PEieTqOjnzGtNfKQBv0+1uGLA9dJmqrSq7xkZUDCOlX09saFiwND4e
MSOuwC2IgCi/0TZjy453iaw1uGBWC9pXDxHVTN4ZvAP0nV3x3BRBUjW16nygC4jWE6LbldvH
YrYoQV+umKJhlfGQL5ZD4EOZWjHTIx5S1ujsu1df8RmArQS3Ef1UzMA6TkH9FuPZiqDk8eAL
tdmOq0udwXZsFWQEq9kWuHMES7OcCAkdK8ysdqLRDQfCByVZcalRghvQxkVf2RR42gRzVBQ6
DpKYv68mEo5EGOBKnVpwl1+BJqq96rrTS4JV/84TwWhCEozl3ikUx132NtjCapdGixfjRIJj
Loy7RBiun82rzMAK3s0UMDjbAo0H+0Kof4SYwOVV4eGnqOZCpK7SI4mBZ1IBA0XASUFBL/1d
0UEANmG0SAJ74FffqF0ytQIJannDWAQxA6GwoVtlBNJ6+hZk5l1JLI1/+KYE414Y3JqRhY0J
mAPVsbQkceyzeLrtkmMiHCvs4qCLOVoDxEgbaHCRnEry0shBtZvso+hTLTTHIjHvIvCiw2AP
qi7Qi+YmJSSsAZn4flA3NM4d1FHF+nMLzm1S9Ie9xtKsxLheXdXcID5KYigHNuhYIzplqnbX
KwpVxVDLje5F3FRjAt2YjYgO9WkjhvN/QlGOV1WypQtqvp34Eg5OIv08OCMZsznq1GkgD9mV
+FdwbH0tsgNijIEYcw9uxaVXSPYKKO5u+SrZPQUal94CJcEvc6mLUL0ORhZYAilLClWSX1Ea
d3VVul7W05q7Od/8+mn/dLhZ/NuWsH49Pt7exWEIRHN7f41+Bq03XokreukLK1+ZKSAFPv9H
U5k1ycLMHxjm/VAgBWusEvdZ3VRHS6zi9fKAVgj4vOIOybxWBbqStL/psLrmNYzeTHptBCny
4Q39zCPKHnPmKYMD4/XAJ36v4WDh3iVYSlKiYhhem2hWmzh5yi9ogOvgOu7qjAcV7U56midz
cbw8cwmR4ROsSXS9Bf0Y1kr1b0oyuUw2ViybtmOqdInRwldAWp0GybceAav70sdlXkW5PJcx
NlKaGpEus2gD0KDrj9PZMN2XjAsaemC9W0uquJv9bYj+nqYeQbb74/MdcvtCff8a1i6acmlr
RbusTGL2WhZcjqhhXMBvHoNu0YzBMU8CQriL+iPGxyZtaJ0wHjabBJN9jM/Hh3aeiw39GLdJ
5QIUVFgR6QHXu8y36vrmrPzo7yWc5KeBcO4lVi/SZHM6fnWNOxWsEDRXPo8rdsdMk+LoQYna
+2UAI4lsZzgaftn46xSXEuTyDNAQeAY2qATzuwrFWL44osxD4s7iMt110j4I+wZXBJKrIm2L
woQUBUofbQRKSjv2D0N0Rkv8H3pB4Y8EeLg2IX0pYHB/z2Ni1HAM/Xa4fnnef7o/mF+8WZhi
p2ePdzLWlLVCG25iRqRA8BGGbRySzAULS4UcACRpuiQSh4mLFwYenFu22VN9+PJ4/L6oxxD3
NG/8WlnQWFNUk6YjKUhsI/dFJ/iLESo1EjgcYHTQFGhj462T+qYJRuzv4+8qLH2l4ZYxvP6O
OmCAE4czv3rTBHwzl9QP292SAlUfIvQPoXgzE+Sdrwxw1QDKSkSsQ3wXlXTksTD3pPYSrWiU
H+lq38QPgeQm5qSjQnysazEXUav4zYotLOZojPsUWMtUdW5PCHOy9mcnCnHx7uSf3lvzlHc3
Zxza6JJatToMDebgazemltdri17+1mT+BVQPK2XQ37zQkBd/BAft+YjJU7hq54pbrrIubTJc
yemTsN5idvE/E2fvo5/jIoHAVIgwchL9GomJGpr2qas/CMrWPIcJ/Wb7gGFSf29b8F3mJl0u
ZAvvN1GIo1cU0v5kB0yly4osUxqhjWvV7DtFPfnJiJ5G+HQaDJ1VTcTkBYzbnHHbSeBJzAvI
foSGenSED6DsUtiYtRGxzeH578fjv8H1mMpWuKhrGjwqwG/gG+LRHwyCbfgFKqKOWlyX8cJU
Mw8LSlEbZZiuLqXodaay6duiNW/Jqe/seY3RmpmlypgMa+1LYfzdmXS2rB1re0ydc8ogBqS2
8ZjPfutilbfRZNhsiuTmJkMEQUQabk6xnfl1LguEIwYmr7ttquDcYGjVNU2UHdk1IEv5mtH0
4diOG5WuIEBoydPF7w42TjuTBEY8kn4QYmDgoc0DWTtT9Gmgw3b9xilXaJW3E241gK6wgPkF
CHL5AwyEwrmAoONpwYuzw5/L13yWASfvMj+G1yuqHn7x5vrl0931m3D0ungf+c4D123OQzbd
nDteR3OonGFVQPp/zp5tuXFbyV/R01ZSdbIRKUuWtioPEElJGPNmgrp4XlgeW8mo4thTtiYn
5+8XDfACgN3k7D64ZoRugLh2Nxp90dEAwMa8Con7P4x+MbS0i8G1XSCLa/ch4fmChvIYj0Sn
gM6GNkGCl70pkWXVosAWRoHTUIrBSiYrH/KoV1tvw4FxABnK4zrWIXFMFKJaGhouou2iio9j
31NokungkrveA3k83FCSy42FExqI5AhvDTVXMwmCAkkhTWkvJVtMclzgk6juI0Vb1B4T6zpS
8FBKCi1ST2kQvL2fge/J+8b1/E4F/Ow+0nFMs/81UP5PxcYkA0X1UenYf33cOMPJSR8zE/gR
TTdADVIlOFEIECpItiPFIgpjYDt2XTlhWI350tCkW7xPRCQPPojeYvL8fwbW0hyCFgVgT9+Q
o8yL7PQwiBKCO9oAHKaSZNwaPFS9iOApnkaRkyCx5AV8iDwAiuzDwGoMzVo9rX8v/u8Ti5Ng
a2JJlHpiSXg3MyRKPbkUI1jQU9dOy9CoDRKT90mLOf9hEJCinQgIsa8I8fWU/AC1GS4tJzT5
U14hUZcaAMXMfoeFsiTPcLYIwHXhL5b4Hoz9Eg2bWpoKjMJUgSuK7P6u+DaR05FmWW5d6Gro
QXa5fp524gXWCEmBeviop3qQtQRzKDYUITXUh5ZT37PU1l1ptT2gXzIwkkNhifhhFKQRGj04
NgQ2+cM01CpZfGdKc4eK5VISqIsNBUqOXSB5HobONUMWgO4cjXF78udGR1huPC3ku8y5Hi3i
7JgzXGHDoyiCSZgTJC0qyaBnYWB8NUzBRkVkEETZfKYqE6Y0+NYGaEub/x6Q5k0s8zXbKA9Z
SbSbYkfOgCd1iFKsLuIDQCARDSj7SvxhpkMChu5ITC1alkfpQRx5z4uo2br1tRgXt5Q44d6B
kjwm0KvUjNSwE4V77HRHSOFCYsQziGwBIoSDVePcF6WxKeBXJUx7DFUiJVT3y2kgMNm+yA0t
QbFRUT4tz1o7emAdnw4azAtOWHh3OEHMhODYhleXRAjcKB4qO0jX+t5+/NLRp/AtAAGsyiJi
Cf00p+7b8Lqpw5vbqp7J9fxxdR611djuSifqqk08i0zeHrOUl67DSM08e807AFPF1FHrpGCh
egar3/Oe/jxfJ8Xj8+UNHsWvb09vL9azHpOUC1N/MmvxIWS9vI7jSyVh6wC3rgXY9oi3X33y
VrNV01NZMAnPf1+eUMtsQD8EDIuSoUAnpL8iDggaC1Dq+GjYet8oNQnpu9/bduvZZAyCaEUh
+t4LQVYd3DgihBZ4BhYbsM7CW+qpqtdla5HrfKMprqIg3OGttSjay8+s3USd6OnNtV/Ay/fz
9e3t+nXyrGfnub+WspFdwNflXuBRwjR8zwpiqFA5SPzp7GSNFopz5k37pRv5JbcwLGOvh1jO
gl5ZvI8CVoTOLEjIQf6RS1UcYnTfkPNjHEgpmp+KHFcgSOBdgL2qHHkRxc6lOthsQZLw+hf2
BvB6Pj9/TK5vky9n2UN4NHyGB8NJwgKFYDyU1yWgcAcF+k6FzFXhrqZdHxIzPpb6WZ8lHWph
2fGIO26Sa/1b7X5zAHUxT/M9TrtrhG3OMd89oLIrQ2zWvztDAYscr+igqgHj5hOv/NWXNlRp
/8pvQvUu7GpE+a5yMg60Vy9jH8ofUnjY8tK254DiNMC4MUB2poEEFIhdqETlmnE9vk82l/ML
hA/866/vr5cndSOb/CRRf663pvFuoRrgift5eFT0UKd9BU3nNzd2J1RRxf2gVzybIUWVdW67
4l4DKjCIbQdpFfdriNL35L8ML63xDYb7Q/PVCvyCSekucncY3+BKKkwX2AjxEMPNfsKUcpHc
OjoAaNvEhvEY7CWQJqJyV2ZZ3MihzsN31MXlVDujx4EtZC6MCev/kje4NUh0iXX9VBBwaMMq
aHedqsgyi0spoLIgo26klgWQ+6POO+FE8+TqFdxxmDOgTFj+6HWJET3FakvBlIOnkP1BF9ZG
AzOeH0LGgwVbiFVe4vKW8jNEZXSAKFdCd1aGopeB63C5x0gUgMAeAXhO7abqtsszXMICmNwl
NIw50r4N9XM8gJ7qkeug1Fhf5Dal1LKxLHt6e72+v71A9PVOUqlPwsflj9cjuJ0BolK3iu/f
vr29X03XtSE0bXLz9kW2e3kB8JlsZgBLc+zH5zMEWlLgrtOQyaLX1jhua3uHz0A7O9Hr87e3
y+vVMgOEk5yGygsGFXGsim1TH/++XJ++4vNt77djfb8tIzwc7nBr3W6opbb2dxJwZm9RKFFG
uFXA0ZjosgVt0lIP45enx/fnyZf3y/Mftm3kA8RAw7dsuLj1V7imZ+lPV3hku4LlPLRlms6D
8PJU0+dJ1hoYtDX32k57F8U5yg6kfFImue2F2pTJ2+g+RUPyliwNWey4nuSF/lbrHasSc/X6
3HpvvrzJjfne8ZTNUU2+ZYLXFCnjlBDSLRgc41QWrHOC7SLBd7WU85MeO9aoAZYsM47XzLS1
7PAaa2eLxR41J0b3pDvGVgTWIbAPrcmeoZ5U1tI4zCk1FkrdSwt+IFTl7cW1IN4yNIK62ulm
Km1shivKAY0p28oaWblBIhvEiLioAsEQea0AfNjHEDh2zWNectOCvoi2lqmR/m2LbnWZiHmy
3vfqVkevV5Qkpk1w06aZC6ppU+79EG5RfUhg6VUTpl2F1O7cuLEM5QaNJOfWPp3oXiHOcBta
oJO+O13hjvcd/Q0vfVcAlf+kjamVcVyzoHY9RFd7m1Lm/SXOjbMNshPcaDbau66OUtP1RRdh
XNw0+FHWPmrHSklQ1IGXmni7rSqrQ7Zj79Rm+b2CKt3LO+PafgVwYVWTA6/25MXYQ1hkCdYG
SGhChHLieD7zTyd09hrkfRJh9/kGHGdZ3h8BlCrbSZ1WaunClX1/VtftfTIs1rSbgpqEEbi4
G4GflgNDKljSHxEEN9OD6SJ7mzClaVBGoubsg441CA9msFKzuD6h4LbWXbsthGOPpjf7uGTK
Ah3uT13rWnVA7Z2xaS2EvRf0XfyQRJZE6K4FwFEdsgRUG+xZRUFKVmztVyejWG0gutUaaYPr
oEyU0n2XbW7M5qi0HHz5eOprFlg49+enSoqTptN4V2iTf8kPkwc3ERlfJ+A5jktfO8mAMxxW
8k2iuCz2+BeI1cwXN1PPupWmQZxBlrMKQkj2dcPNnUMymBiNJZWHYrWc+sz0deIi9lfT6cwt
8addiYhSkRWiKiVkPkcA6513e2v5JDUQ9c3VFLNb3CXBYja30uWEwlssfQRX6EOL3gJ6mV1b
rBMkSDhVItxE2D4FB4eqKIWhM8wPOUutlLi+yzt0idwLskusqHzPjjapfTciye0S43LUrKAq
l4fbNzRTdaEbfrQuTthpsbyd98pXs+C06JXysKyWq10emYOqYVHkTac3pl7J6aYxxvWtN+1t
zjqYyj+PHxP++nF9//6XygLy8VVKns+T6/vj6we0M3m5vJ4nz/K8Xb7Bf02qUsKFHj2x/492
+7st5kKp53DdNZgeqAC6OWFAV4cpxVUDLbQiCGKHUJ5wjIO+pxwSRBvAX6/nl0nCg8l/Td7P
LyrT9UefLNcfUakliLwqAd+QwIPk25QkN9QDQ0yL0uM9RrOiYGcptdXpYnEAMSSIl4r2ALoY
Pbiju96xNUtZxfCkjBapt7R23ErbGraRcfKX8+PHWbZynoRvT2r/KQXrr5fnM/z99/vHVT1M
fD2/fPv18vr72+TtdSIb0Pd+M/pUGAHvzjnGoAEoWIlpjwC0Da3Oyd+Vk0KtK0XDahnfCQTW
gTCK7zgmS5o1Q6LrgUpTvs4gpACEmaG8P2t02ceIaEnFNEOPUBjp+Cw8C0pMIa3CNcJFYtOK
4rAKT18v3yRWs11//fL9j98v/7jr0kty2QrMSFKJVpRNwsUNHs3WGJEU/lH9ntG5D+w4N03U
XRv8DJhlL3xvEKf47IYx7qGwKFiMXQpYzL35aTaMk4S3N2PtlJyfcEHPmt/hVsqCb+JoGGeX
l7MFbijYoHxS7zH4i3y7E2R/h9e6XHq3uNLMQPG94blTKMMfSsXy9sabD/c2DPypXEsIKvFj
iGmE21C0N6fDkUgR0mJwnjjecAiOmM9HpkDEwWoajSxZWSRSFB1EOXC29IPTyEYsg+UimE77
T9Hgut+8hffENeXXn2QGWS4YB/JbmkmcAMv+VekMn2ZJ7/lLlTqkTHWm7oWOB/2TFHf+/Nfk
+vjt/K9JEP4ixbWfMfoh8PUPdoUGE6ZHTW0i62hTG32UboBmTiU1KPl/UNiWzhSBNe/WsfxU
5QJMXpSaD1+dshEAP5yVERAAtb8W8t7YFttf0jESFYwQnaBVCLo3jhLztfwHu6oojCI3+tBk
2nVG48zOsckH0bFDBcGdMTRMRV3shXXUy3DarmcajR4JIN2MIa3Tkz+As478AWC9xWbHSp7R
kzpA9Jd2ucCfMRRUtrGiDnqD4KyJDWfwojIA3jHvluD1GoEFbv8tMA9uZf8MRYIuAB4nVHq0
2nPVyEVXY4B7eqmTv1WJ+G1uxftvkNT7RvsAgV3wa0Sts+xl5bCgKvPYtN8P9a5Slg86yWlv
VwHiamgNJMKKEgs0PT0MrlFy2BMJeTRlzUEng2k39NfBf0g89E8DK4KEIHMKHslO+Tg8kRdz
Rfcl86QMKlscfYsfxhkevxRkxhD8QQSRsKLM7wcmcb8Ru2DwGJac0M/pLjwURILNGkpcPvX1
Nz+41KKGS5K6sdJoqIIMlzX0UFNCZq658GnmrbyBgW60oQZ5QVVI27DEra4bnjJQl+cDCwU+
8YT5cQNnHiHN6+GXhFSsoQ/JfBYs5anG5dW6gwOH4l6ybB5Unr8c6MR9zChNbQsfYTBxPtSA
4MmtN9CBMJit5v8MUCSYhtUt7s+gMI7hrbfCVJS6fdfWTotuSY8XuAhLR+B0uOrGnTcT2jcS
1Px6F8WCZ5V7LDBJgrY5AEY39/GtU6PUJ2MIRe+OIQy9A+eoiZ6e2l1vhOGuKkLCfbVBULE2
BjGiZLgFFu8dQcOU0Zz7gPEmY0ia8EKzy2zr5jphb6cjwZi0xFHx19yKrlbE/FCuHuJrb9fO
oubfl+tXif/6i9hsJq+P18vf58kF0jH//vhk6V1VI2yHatlaGKoHUVBJiQJvQewYXR9Eq94X
bBzBY/+GmBE5gPYWJMfy5A7y6fvH9e2viTK9wgYob7iS+SeE9AhfuBc9Rwercyeqa+tEX+d0
50B9h/ZQoVmeDbBujj7B/GJ4DHoTLctUhEgiR2uD0idJDeRAGRErjOTQq5TiRnJ618nrJhcE
/61XdAhI8D4FPBAHGID7eGAXyQv/ELCMhOi/WuQ/vmy52s5EDzQwIcwDFbAoCdFJg2mNWA3P
l4tbgjQDwoC+TMMf6ECJCiHaMCIniKJotB6thQ91D+Ann4oF1SDgqiEFH9CedfCBDgxp+RSC
lI4lc8T3rUJIozIYRuDpJzbDhSqNMKC7UwjyiJOaRo0gJXCKmikErdEbWgmgiJReUCGAo5a8
Kg0ghAR3VweYcEXUQEhxWEBEiIHmJfFYEIJlPkQ/FLDMxI6vByZoSGmcD9ERBTzydJ2lfWPC
nGe/vL2+/MelJT0Cop8NyIuF3onDe0DvooEJgk2CUHq9+n3ZTxXXHH5g0XsvCJbl5++PLy9f
Hp/+nPw6eTn/8fj0H8yOFtoZetFQHxq6KaNhcrTFhx3DsAySijsRWaEMovTa4jOU5uQ1BKBg
nYnZHoCtClhqdiYt5oeM56RaXdczfNnsBRbrFDytJ95sdTP5aXN5Px/l38/YG9GGFxEYBqId
b4BVmglnMptn3aHPtC+t4HsMZ6q2tLSDBrMAEuokkHl7XWLPh9rxCCxSutlIu8XqtIHyTFE+
zsq4BoXA+LZ7SnUX3auEKwMhxig7IrAfihh+FuSYIR4ACuM5CTqcKAicB8LOdc2KaB/iQsGW
CC4h+ydcA/VuXIFOnoNv9T3eQVleHdSiFZkQFVH7EBHKkNo0LSWCvaRxQiUaK4jYChC1AtmN
qpjcKwDtGYUZMLk8rtWAAY1SGgYnTftpkyifGeEWA0B5hYKMriSch+XtrT/HxQpAYMmaCcFC
Kr9fCelZC/6Zmmf4Bh0fBMLW+tMpvuqqbRok91qG82rtrKgXsUcAw8vH9f3y5TsYmgjtUcGM
COgWZ2ncXX6wSmuUArlAeiETD1EqZ7GaBbb9bBQTcqfWZsyCOaFE6hCWuKvFISsoVV35kO8y
1L7X6CkLWV7aKYbrIpUleMPR5wCzgW1kU+Ko9GYeFU2wqRSzoJAXKjufrYh5kAns5cuqWkZu
lsuIUtbWhlmlGBtEwj6bcWItkJ25MQmXnudVFLHKgeRQErxezDQJKFIO2etOW9QRweyS5Etp
actg7J6w5TbrFQE+RNjKmUMKY4pcxLjmEQDUOY49annG9sm+yAp7nKqkStfLJe6f21VeFxkL
nYO4vsHP2TpIgI0Sj9npCZ+MgNp3Jd9mKWGlIBsjtF0qD67rPWBWxHiZPeBA5041KmHaHqMO
VEhtjaEUAFDXbbPSge+teS13+xT8i+SEVDkeXc5EOYyjrLcEVTNwCgIn5vd718sMGYXWeFsW
uLUSvMT3eAvGl7YF43usAx8w/xKzZ7wo7IDTgViu/hnZ74G8JVijcckiUkUFz7YjR5+qKGD4
FgxxccpoMLRZiQ6niscaM2vVBizdh2Ifj0Ao5OK7/sP99iBHZ3SyzkHkj/Y9+hzseI5SyM3+
Ey+Flc21ec1IDp+85QgZ0+kk0ZZ3e3Y0M/MaIL705+abvwkCW11rqfFoBVA8dfEISYxv8ZdX
WU4cV36iqrg8rIPckF/HKemnZGSta6WbRcAOSUi9ft4RBmbi7gG7oZsfkl9haWZtqyQ+3VTU
w318mvcM3U2oOA6CN1hwIbM/PCjsTXAnlssbnFMBaO7JZnHl4534LKtSxtLOR7P6mHTklqW3
N7ORM6BqiijB93ryUFh2zfDbmxJrtYlYnI58LmVl/bGOGOki/BIplrOlP0Jg5X+jwkm+Knxi
px1OaGB/u7kiS7MEJwyp3Xcu5cIIclNIeRvyBFeutNJvYTlbTRGKxU7kTTry72i9oq6dE1dq
s+cHyXstnqIeJUNHZO5XzO6sMUPW9BH+VYeZj9ItT+10VDsp0st9ig7lIQIP5Q1qrm42HqUC
MthZdnPZKE/Vj9dmpfuYzSjrsvuYFCJlm6corSjwPRop0ezIHnwkEktOuw/AXYcK4lwko4tb
hNbQisX0ZuTUFBHcwiz2vvRmK0KTAqAyw49UsfQWq7GPpWBvhZ6oAiIZFihIsERKFva7J/Aw
95qH1IzMnKwmIIvl9Vn+2UktKXOUTQB++8HYFU7w2A4HJ4KVP515Y7VsszUuVpTxDxfeamRB
RSIChK6IJFh5ARH2Icp5QBocyfZWHvHypoA3Y5RZZIE8mdEJ18aIUjEfawrKROmeR5fXjhS5
Y3n+kMgNTQmn24iKFgi54wjew/cjnXhIs9wxPYQX+VO8dU5yv24Z7falRVZ1yUgtuwavglxK
KxCCXRCR3csYDWFotHmweYL8WRU7J2GQBT1ARkdeYkk8jGaP/LMTg1aXVMc5teFahNmYCkG7
eZqN146f7MRpMlrjxLGc69EFOvHC0VHU5wkAPmHktwlDfC9JyYxwgFLhVdekDw9IzLURMc7+
dw9ORLcOlBMGnfi9by/WdZTQngIeQPLuic8qAO/kZYlQvAE4j7ZMEP6JAC/KeOk41SJwnIIB
HATdJcHIAS7/KNkKwDuB8zWA8XyHE6OjQ/CbcIjVMcQ0pYDe6XYTzXgxWGmpXuXPgWhZEjrv
SYZoo4kZHNcEGco4BNqoLhBQc9UlQIXkiBaFzsALF9+nBRfJHLPFMhvt7pMYMJKSLTmnBbMd
cSxYKwVhQNPNxwSYST/N8pLA//wQmsKPCVI64yhNMavNgj0E/UeU4yVhpwm86r6cPz4m6/e3
x+cvj6/PWBwXHRGT+zfTKTx3O4SifmIZbdBoj3oFTeD2gqvfaiVNRSefkPRNcJxBq9dcJNZg
J/mLEGVwB2NLyx9V7oTQaMqIsLL89dv3K+kmpuKDWvcPKOjF0rWAmw3kbasjploQCCRthY3R
xTrB350VokhDElYW/FRDVHf3H+f3F1iy1lTyw+ltpR7zkc805RBEcn8ioSIoInnrOf3mTf2b
YZyH324XS3duPmUPeKRSDY4OumtOrehALw4VOVLXvIse1pkTRrcpkxQ4n899nOHYSMvljyBh
t58Opbxb4924L70pwfYsnNtRHN9bjOCEdUz4YrHEzdRazPjujggr06K44W9xDLWxifzELWIZ
sMWNh9sfmkjLG29kKfSpGBlbspz5OJmycGYjOJJg3s7m+NNvhxTgFK9DyAuPcO9ucdLoWBLv
+y0OJAsAleXI5+rb9MjCZXG44WI3FLira/F/GbuSLrdxJP1X8jhzqCku4nboAwRSEp3cTEIp
ZV70suycLr+xy36u7Jmqfz8IACSxBKg+OJ8VXxAI7AEgEMH6C7kQ3DBj5Tp3d3sUa6Mb68/0
ZEUHRDgvzS6I7/T2K7ubIxx73jwGNdq85p2x+IQGAdOMRWWm3UhHrLhPDkesPTJeqWWNUGm/
HwlCPx4iPPvj6IktaHDc0Fh7K8u55sO31f0kLZhQ8QhlaO5TXVaXGm4Dt5JnbUmxlOeXEjhg
+wWx4chzx7/wXcg41h6DmoUJ3rs3+M55LSVEhu5HXBoB7onnWH9lgxC5d6rpUpf8B5rLy6nq
TmfsJnntUFMShCH6NazI5+0ucB1IiX4LANdotksnmLzxBRa24Tpie/EFP0w1Sfe2YiJiQOmm
meK32LPxqqe6Z24dqgfrzFMDj4xiV9Max4l0XAM+er5/3PMf2wmonTCSwFSNNWl49+SbMU/g
MFlumCSlouWdmsCLjqtL5fnQ5mlwvfUdHoJVY5u57FonZRburm7akm47YjJZhKEauPIfeLNO
bhr7lvgOAZQyGF+D2/7MfOuh0qbpNDx69gpKe77mRZTcqYaWhnGWx7fhMsosHc245TpJEiB1
MRDct7qEhWa0ryrDY6wGlRXtSw/2VBsLgcqPNWS67VnnbCwIq4W3VVZFrpgQ3niAICuCYaO+
Hq/sA6bgzpuXSzVy1atyc3iuxMZ7I2nahoE/abABbgiD23jRZ+zijRU7+9tH6QkGgz2WFIuo
Vq8Y53m3Z5abNC1EdfanPtBD7rMf1Np07BkZn8HVX4+vmJK3JEWQRPioFFjix9IYxy5c0w1h
pLvD/NrE+DgXgNfjmuSqW14xFA8krDg+TlFaeEK6qq5B4gA9B1YplBWB9WVq+P/2xBkv5fgU
wWS3TjcunCbbcObCY1vvrBcJgmQ6DQbK1O4tykH3uThTxMTfW/SoVA7ubP4wdCiRTYkDh7Iz
7gYFDT1wU1AyHyucXn9+Fl6m61/7B9shiyk34obX4hA/b3Ue7CKbyP/aThclQFkeUe9bcMEy
0HqYUA+SAm7qPYfdlK3YUgamzFPld2ZmU9TK0AzmByO9obnIbfDkO7quRtQY7kjaStWHRbl1
U5LkCL0xmnghV+05DB7xLebCdODrvcWiTgax9l+dByInZPLs8ffXn6+fIPqm432VMUOTfcJu
tSHcfJHfBvasjTv5dshLVJ58o2Tx1tuIKM7gGhxcrM8denr7+eX1q2ZnrrUW174qMjbPVJ8P
FZBHphPUhciX62EEw7yqFK+zen0V1vmkm2mje8xQmCZJQG5PXEMivi23zn+A3dejp/fOTFQ+
CPEIbXir0qXU45roQHUlo09+zzGHztJWHdeoMOVY5+rGGwThmv6xw9CRt3DdVgsLmlF1ZRXf
eaIee/QKuPB5wVee0vNQWZeFRTlqXagzNcPk6QxtvfTI7vsfvwCNJyK6pvAEhrwJU59D4Zua
oa4gJIe5OGlErUvYqX7weDNWcANm7R+3OCZKO88j54UjTOsp8/kJkkxq4v3AyNGOxuZhvcs2
egw7JDwOHk8pEj5MvPDDvTwEV93B49N7rDAOXsIYP4Gda2qw373NnirMyctq4payUQYmQxq4
kx7aSt+TuuXUjzH8+K27HT19pOtfep/1Hri296Uo4hXcJt8GQQkO1wo+17aLzyo8BfU+jbov
42ZVb2hr2NKXjbHdAiq8moXYsqYvVoGAt2h5OOpLUl7XyzOyA9EPswSsXypKwqRHexOkC4F4
q/3RFgs2W71wnKFLtXeyREQ7XbjO05WmTcNCvMHUyrURPDbAymZd+64A0aO5rmRpXYKQbWc3
ECm5pqbndOVUFe5CHz4hSsXaWZ47Ku43PEsRuCqBqLs7fEexwjt9ladjZO2BhvmWHx2fXknX
FNqLFY1L0Xn78ZrX8+KUx9ZjtdQ9jQRrJq7TKvONtRRw/yvo1dOk60f8t61ynwaPkQQfI0d6
quA0EnoJdsRF+b/B17UGTFjxST05z7sF1TggU4x8iyUtGfDJQOPic3HdVZ5TIp2xOz/1DLXt
A65uoqZgsx2FkRaWmQZT84QYSE8Mgq6N/RU7fZrFm1gcvwy613gbMfecfFhS9Sp+yexaN82z
z/m3q6VrW0TVcOMZwgEOmB2cwQJOKZfISvKKNqLItbkuMDg/Eo3QcwX6WBuHEJwqLml43fYm
GQIlmSG/BfXEmfHbZY624lpbxoT419f3Lz++vv3Fiw0i0t+//EDlhI/mxdSiNozu4iB1gYGS
ItmFtnArhLssm3l4LfgLAC8P6NDI0/jZ6/lWYfTvVQAq2AyZUk9mUCMxwppjv6+ZSxwo0Rt3
2RpCOKC1BtWU/cBT5vTfv//5ficCm0y+DhOPUrTgKX4lu+AeFzMCb8sswa+YFQxvR7fwW+tR
FMV042yfddDnNkWCLT7jAgi+QjynhzB1ifsuv1DS2p93Yc8xHLQ+OG0u/NXO8dRz0argIsXV
eYB93lYUxuc/Z6kX/tCcvbnIi4o3I+vU8vef72/fHn6DUFSS/+E/vvHO9vXvh7dvv719/vz2
+eFXxfUL32GBR/b/NJOkvOs76jIAZTXVx046rtxynmLzomZ4wFS11VNk5+KJIAzQY9XKka7R
enG/b9L4iEQduMnGaRkaAgXAxXxWhi75iy8Cf/CNBYd+leP29fPrj3djvOplrnuwXzvrkznQ
x37fs8P55eXWS4XWEIgRuG5/wjQBAdfdsxl9V/aTAXzrSTMeIWz//ruc7ZSkWg+w5m9tvtRb
Xd7639wAuOvBlm92s2oYD1MqoIZredZM24h4tiL8itvhwD2v983ZygLT8B0Wb6gPbT1e5NKD
j9Oym4ACboKZrkCWF5O8Kt2488LBfN11wmPDDmZQ2GHaMHPt2AAc7s6A0z59/SJDx7gnJpAo
3xXAo6xHR2/FuMSRIS7szKLmiyX7f4KTpNf37z/dNZANXLjvn/7HBioR9fxBGW6DzV5XMXCc
Jez4QVC+U28HcJrz/v0BApTwLs9H5OcvEJ+ED1OR6p//pTvJcDNbZK87OBdYm5MTWt3MDxj4
/7QjZRU6cQW0PQl0MZUkVlESsX0zzGRxFYWd1M8MLR2ieApyU1G0USzp6RomaMipmWFPntlI
6sZNlm9sxvH5qa4uLtY8d1cRccqFrI3wkg9X663bwCUj0nV915BHjyX/zFaVBOIxYwe8S01W
Hd/kefI5Vm3d1XY+tvi0Ag7s+w9k4rPune+b6lJP+/N4RFvj3I31VDkRey02Vh9lPkhbw16C
II017bImTjxAod3XwEiVZ7wm4XbgE9kAdvVN3XI9NwkjneNmRnScP6rHj/brWjkYPMu4SGr2
0q/TnIg0girMCYN1l/L27fvPvx++vf74wfUYkYWzxklh23IwNkPSguBCBvxJiIDhKN8n8jL4
EbVCMNQUewwhC7HP0ym72kWrupcwyizqVJsPtqV1wzVPEl/qi85ilf92UM5q5k2Rv+7kvMxn
x18UCrdaG7V7yMI8t7OsWZ45kvt0/BmMQ9TzjoCV40Erm8sUpnSX6yXblHzRjAX17a8ffGFB
+os0abZrUVLNILVavwwwauS2n6JDOr7Cin1wbNepoiICSBsKm58NNY3yMNBrBym7HEuH8t+o
k8guo7JWsqjSCAMjJhbR1uEFsRniYhc7xDyLscqEGdDfq6T9ia+e2TClSZ66FcfJRRg4uSkA
W5wl/rG95qmdmjSfcRI70324Qw9aZdcWVifOV0BOtj4qCiOUIdKwSxAup8HNrLY2/NI8i/me
k8m24etnvzHiIVYl+Lm5eezaZ6ZKckX4Ll9aB5U0drzfanHpsRqAdz6bXd7YVi3JIZ/Z9XY8
jtWR+Lxqy7rp6eMZMyrVQ2VfQriWmZe78Jf/+6K2Wu0r37GbLcZ55d5DGPj32Dy6spRTtDO9
K5hYjh+Y6EzhBdujrhzmoeBKn461XptIofTCTl9f//fNLqfcJILXL/zEYWGZfDcDCwcUNsAW
U5MjN0qiA/AyrjTD1RscYez7NLWqf4U8Ly90njzAz6OMdDyHUiYP9vbe5Ii9gsbxjaJGySaX
p/aS4IoDWR74gBAH8irY+ZAwQ/qb6leaTg5XhjfyhC0VEhORiAw1fiXDX0bwuOmCazoPQ6MZ
FurUxWk9hp0urX7kP5RE4sbNlbDTnclrU0mzReic+EwjcSs5ub64qUEsYUlFktoTxsf282I7
rX8Ilw5HqFuuQASpJ0qj+p5eoiDEhuPMAJ0g1XqHTs+NCc1AtnMVLJ7QhYpl2mMdYy4aR/X2
ACc3FnFOZ/8xUpGwnCwU5DEOt7lO5UekFiy9S6OHCVo7vPOEGe4DxWJBkhVIFGqjeK4QrR9Y
SD0NkBrWQURHDuKNegYdUN8jzXRzrVnTEw3hAg2L0yTEPrhmWVrELsJrfRcmSHEEYK6kOhQl
2UZxgCPTd+kakORF4AJTu493GdaQR3I+VnDnFhU7bEpf+JQFi9uaI0uCGCn7yIpdgggpjoi5
MjSUaOnLoihQ49mZ41I3+qN5a6ITP7kGZiQuieoc+GS+3ZJWYjLSC3J/toRdL7NdiIllMGgr
1kpvwyAybi1NyGespPOkmxkDR+HNAF2pdY4wyzwfFxE6wlcOll1DJHo9ADs/4KkMDqHHlwZH
Fng/zrAFYOGY4gwTaKJZ6mmda307kA40aa4Xe1zfKN7HHFyYbrOEwV2eA2nD5OSulq5sbQme
0MYjZuKwMHFFoJpaipUaPKKghZ6GymPdqRjYdQjdFIVZDJQPgaY0Qmqe7wRkxdv0qmn4fNVi
0qlHGqREo3zpTAn2eZ08gs/vjW/hSCpIDq5U4qwqOhyxZA9ZEmcJGrlUccyPnUiJNMZhoifz
QH9BGN/5nBlh1VbixyYJ8wmtLw5FwYTttxYOrhURVyZOjlzqqT6lYYy0Zb1vSdWi9MF0SLo2
ReJzi6U44L7OHjB2IvKs0KJ+oDtEdj6mxjCK0E7f1F3li8C88IgVcmuGkRyIQAowb10MsEDq
FMxgwgQZIABEIdrBBRT5TG41nnsF2UWpR6QoRSdLUOnSIN1KVrCE6DoloDS/83GB1C2nx2GG
9UmOpOgEI4C48ABY3xFAgnYdARWYsmZKiLVwS4c4QCVsrhA29kA6F2M0TXaoJFV3iMJ9S6W2
s9W+bRqjvafN8AMEjWFbWeEM2T2GrVZu2hzrdnxniVITlIqNwBYdYW2BNDanemqnSKJ4SwMU
HDtsxAoAHbEDzbM43VKygGMXIYXqGJVnWTXE4UNwyviYQssCULapLnEOvi9GqgeAQj80WYCB
ttkVnezFLUOBqaGDaSC3fICTQVmNMqTV9xCb81C5AF+AbvRwGJDE6m4aziPEk0XRMU4ibGxy
IA9SpPz1OEzJLkBnx3pq0pyrAJudJ0qCNEU6DywQGbKxUMD6jBdlifMQqTA1XeMTiZiMg61d
A2eJgiz2zYgcSzxxWo1JMb+zXMS73Q6f2fM0R2pkuFZ8hUG+YMO0C/jKiCJJnGboqnSmZYEb
tOscEa5IX8uhCqOt7cxLk3qU8OnE0MMsDce6JifHf3nSo9vtsWWquOjVbcVX2u35veKa7g49
itE4ojBA5nMOpHCKh5SrneguazeQIkKLLdB9vLk8c+U7SSGifN+2PbLeCjxCN8gCivErqIWH
sckaDI6ULVcu8E0tDaO8zMOtJZOUU5ZH2LkDr88cncE6EgVohwfkir+6WxhidFZkNEPnEnZq
KXrpuDC0Q4gtM4KOrl0CwV1VaSw7X6BojSXaahbOkISoAOCjlQ7nu5t5zpfmqSe06szDwshz
Ubqy5FG8zXLJ4yyL0Ri1Gkcelm49A1B4gQjdlgpoW1MULFtTGGdo+PzPJk8GHEw9rrQ0Lj4w
T1hMEZOlOiEbeveWXEc2++wVrHj+8feWTfUyCOERhnMlsqDsMQg9j++FZkcwK0D37dpMsd76
LOSuv5DnXvexsUDyeZ54YHKrOnCVUyJc4ABNmE5CIoEDz4ZY0n3m6/un3z9//+fD8PPt/cu3
t+//en84fufV88d36+J5/nzgG32Z9u3YG49MzAQdh4RrhfYHtqSHVqc6ObrPk9znSfF0FMe6
D9MaavkezLWCtNjO5FISXpwSf7qgbt+2E5B3cRtSKl/NmIgvdT3CJehmDnyLakuoEBVZCemm
5QXNb/YSs50f32fHV7zYikW4q3FzJfTjGcJ5cmn1XEn5BI5h6clb0aSpW3g2s8mQhUHoZaj2
9MYV8J2npsRhY+5INg3gwfuGO8uaeJKHmg00QuuyOo89VigF1/uMpyzzW0gtmfRrXHKAOxZT
pDqNg6Ca9t6S1hXoUF6Ul8UnEcuzMDpYMnGiLcJp2O4g0iDMK8LEVSlZdGwXClvsMLaz7J7s
RligNNgoLlcOnE4zi8FV0tlg0Wl3jsXZPpNlRz6WRmL2Z6CO4PzzAmlWLqfmWXawk+HkQpGx
SY3Q04sjMO+L1cBV53hrWHZ1EcRXU4auplkQ5iYR3u6TKFTE2dbsl99e/3z7vC4C9PXnZzM4
NK0Hemc6ZdbjodmMy5e4+hAuKak7o0zgaK6fpnpv+P/QH9cAy6Teouhf0RocdeNfz6hNhEfP
m1/NDCZdPlSGRIVzCu3jtQEdNnzsrGwec+w9bQmaAwBOxYt3lf/9rz8+wYOL2cONo0K1h9LS
Z4AC13i6k6ahralrYio4CYvyLHAiJgPGxUqKwGOCKBjKIsnC9vLk5SDXIQp8RhdCdvUSynAJ
DYBte7/S1A2BkY8wvEdPAxY0TtCPPH6IFxyNd7KixpZaVDPoPmi4qwXVbUggJaV1GRcfCz1x
aWlkl0S6V/MI6pqnCGrTYccuopppGF/12HIaEav8dojSCPdCfGL0NpCppvhGCGCeIF+SvI0g
XriAf/rxEX2xuDA3A7XfBRjYhL4ZkMlPPZXNQ0+spIYD/VUG05GOSZ8fbCCiC9gXN0uwfZxS
T9BPgD+Q7uVG2x6PWAkctpU30KT/TKfVJdk3TjD7MjnuruEuybADIgVbhj0LNd+51LwIMoQY
OeNTkAv8KG3F8UMOgbM09jgkn2H00EuA8/7ElNSwWdbooFXb4g/0kPBRiQ1LZZuOzrqIrbWO
zmZE5jc0YUmOjzHAp4puRBMEhnqXpVeHR+doE/3UcSFZ1mGC/vic8/4S2dy6IwuyvyZIBZB9
HCqyT47nieonkEBj9Y20cZxcb2yihvUAoMt7B6PEYOzmcauvkmxazOOEaFnx6mHNBd4thEFi
jBvxliEIsdVDQpkzzCQ9x49KVwbvigQyz8847K+MVxgLtQgDlBrhVGzy5xifZ1DrqXnL6uon
M0LOpfnynQMQM26rA1yaMMpidOg0bZyg403kOT8eMT7xvfYSyov9+kYjepWQCLv7FHK3iTzD
Nb4BqudsS8L2DGiDuZtijj97UWAcWj1BHZU46oc8HsFoKO/8MEan0rKId/izkU31dj2sWC/t
lpRXh7zOY22H41BfK97IfcPIUXeWujCAC6izcE3XTedWN2ddecBDpnClrnMh4vDl85h7fFEY
XC0endziSfVlcsUIZXluXoVoYJnEBXYRorFIjR9NWvXtpuzDLZxrSmA/j7LMOw+suYSeuymc
rfKaiKn4GliEzrQWi0euA+mSOEGngZXJXOZWej01RRygIsN9dpSFBM8VlqUMmzYtFk+ZhbH2
vb4GTHfKBZffSV5g8gOUZikGgUaY5D4oT3cFLrUAUUMOk0eqiJ4Eimi7SIIn8dTbrKzeqTmp
vaIWxRqT2hPZa5HJkeXYkmTy5LqNjQYNeZ6gbQPKa4gO0kU5QcQZDucXTzBwjekpz4M08KQA
YP5vJFCgM4yIMKucczigq9uu2KxT3mm2qTkmdhRDhwmsGcI0RmtcU+VQLIpTtGBSNYtiP2bq
exYaxtvzoqvDWZihyTkYXlT34ewKSqXgTm27d4A4E1cNsNJR24U5+HfRVpWmHg0daz8cBO3G
N8Men1MjnSMXYLbAAgUXlZOR6RqgQDtcH2/y+nI9nucTeuuL+SAxjzvvGsZ4ZboV4h8wrk/U
o5WF16syx5SfQCOVsSpHwmIrlYmNFWlfCGYWXI/zY38k+/rYj0NzPlpB+nSGM9FVYk5ijHOb
KfFKbfp+gLdxvvqSnlW9aI1b9vOEr/v+eiufMOt7WtldSoRkFHSzK610UGR69Gmh5FG4+7EC
eIuBD+CN7/fl+CS83k1VU9Hl1L59+/zldVZ83//+oTsoV+KRFo47VwkMVAZ3urEnH0NZH2vG
VVs/x/j/jF1Jc+PGkr7Pr+DpPTvmOYx9mQgfQAAk0cTWKBCC+sKg1WxbMWqpR1K/sefXT2UV
llqyaB+kVueXqDUra8vKTODhtwEkWWeCZr8cJpw9ZhQbbvGKoVVZaIqHl1ckyOFQZHmjHA/z
1mnYgxPJa242bNfJWMpUSpxlOjx+vr545ePz9z82L99gF/Km5jp4paA5V5q8/xHo0Nk57WzR
eQuHk2xQH6JygO9QqqJmIULrvaibOEd/qsU6soyqvHLoj9wuDNnd1VT9KWlsTztwqoJQhyop
yyYVGwxrGKmbFkeKWrOpPQMdYu43qrw+nkBUeHvxu6yn6+XtCkOJycjvl3fmeOrK3FV91ovQ
Xf/n+/XtfZNwN2D52FK9UuU1FXzRNZWx6Iwpe/zt8f3ytOkHoUqrMQMVqqpCdSlAtRj/ifEm
I+3upIXws7/YgZxQdl8ncNDMOhyboxhTDr42CVUWBZ1UyoYQ+msv53Iq80WglmoiFRF1jXZ5
xDoEIkKtg5Ubk1x/fbh81QMnACsXyrRMiBadWYDEgJrYASgEuiLcmadAqvxANHNjJesHK5AN
ptnHZYRuI5aEz9u8/ignxekphILXkuNQWyTYjmzlyPqUKGvUFcz7pjKHl+Y84KW3NcSHXLk+
5GB48uGvuErHsvxtik2FK9eR5iiHyBOwpi5SLObQylIlHcGaseri0LWtBMPqu8gyNHEz+DZ+
VSTxoC8IFI5zjGfRJqljYWdmEkvoyodxCmgwN1y5SO6hxt8CRx3TgohGpypmaCNCe2XE1l8K
ywfD5/SXj26BVB4bLRqDfDMU3MoWO3tSeAJjtrbvRIbEP8borZXCkaIpf4xd8a28gIBloWfI
sT/aSogEhIfqJvEtjgCdarqORkdOH9gGBdI3ij9ahOPUSoHCBWiIfNfBkCG1uKMsHaGjv8LL
MhYd92VfmEPWc85PqYuaQ7NIg3dKl1CCMG0pwO05Y5pdqI5WavmpcwNPnyJoD97l2xT1Uc9w
x5EfwPIMKNTr5pXJ8+Xp5TeYWGFrpE2M/NN26Cjq6GlOADcBRZtT5qMTvLEBDhnlUteITFoD
S7PPl1C9XPsmtGRVKVT258/rauJGpZOTJVnWi9R5Ba1kO4GGoChTP4+Oa6NyNa2Kq8CykCpx
+jkpCW5TLnEp7awuBtFas8WXuJefCOryfiEXWwghJ94kz1ASiV7thA/YWgjLYobOu+RU9vdm
DiQ3Clmh3GQzdKr6M35XOXOkoxLyVgLMkYZntip2RB28lonuUQedPrShJT8FFBEHE4uZYd9G
LTnqSdbNQJXkeRqgCsjOMBB61vd0jXXSgYbuMxIb6dJdbImTp0xfj5m0erVpP3i+g4blmAtz
50ivQJYuKJiPg3OPVmDwbUzKkk90qR0iLZGnh7ogiamlBoQGlbPR3gIEnUQXhvqe5DmS5CkI
bFRWoeDo8m5pjjxwXKTGeWoHEZYi7CXw5d7MUVa54xuuaRcJH0vbtgn20GJm6frSicYRESf6
Lzkiw/lTZrvyY0lAmLSet6dsbwiVsjJlqPt1UhGebaeMva2TOmcIIZU2ra7lVFSfyYErIVRK
NbXKt5T/ArX6w0WaX368NbvkFbSYOrtwKno+M0Gg//XJYQJvTa8TCzsu5MH6Xr68Myfsn69f
Hp+vnzevl8+PL0qZpYVHUnSkxcNNnVj45vTY4UGrp+O1tLhxLMkP7ZYDhj9lOhjyqItdlcY9
88u09Wt9ccqpaIHXk0CNR8lM9NTHhksnTX5MmshWPkVmZaoSuhRNMoPV31TuQ4J6qhZQbbN3
zPMaN4hiQzUBVV2bVuNVEou7J55Pnyd+KL8WloDz2KNPlaZSJkkYWsFBT3UXRKKfEU7mZjD6
4Rqs/4QYkEw2H16+fgUjC3b+YzrshAWXZ2tDrR+WcAETPb1vu5yQ867oKog5oZ8qOsop/EpH
RiyjV7SxW/Xkk3+xHFAaFNENFaWsyEDrkSKpqUxl4qJjpXf4sW7fSkqO0lbB5ybfhkW9V64n
tTqfUGw1OTE7OIi/lZ2QGTt4X5OQa1JUqa4Rh4L+a1SG9Bun0hOCCzbpyFg+XxSOHC/PD49P
T5fXP02Hj0nfJ8x1Nncd3TEPypOgXr6/v/z0dn26PrxTtfvrn5t/JpTCCXrK/1QFGm6rnEWN
J99Ba3++PryAT9l/bb69vlDV/QYxEyD6wdfHP5TXcrP4Mxs18zYkS0LP1WYhSo4jD9ueZIkd
x+GNfU2eBJ7ta4LI6KL1PidXpHU9bB+UEtc1PACeGXwXdXCzwqXrJFo5ysF1rKRIHXer53qi
1XM97C6b43dVFIquKVaq6GpmkrPWCUnVahqJNPX9edvvzhxbhPDv9TDr4i4jC6MqNlQPB9w7
+ZKyxL5eHhmTSLIBHq1pe2JGdjFyIPtslAC4przRj8AVefh1OOfY9pGNxbdfUD9Qy0SJgUY8
EsuW3/hPMkjXz7SkAbYoX9o0tG2tQThZn3LAIin0tIaa6dAgyMgaWt/2bgwswH1sSMKW0jLL
bH/nRKIrl5kax/LTe4GOm/CuDOhWe5b60eUOuARBA/m9SOKNSG1oh1pT0kndn/WQeL2HivP1
+Uba4l5RIEfaYGZSHiLtzAGzxgHc1XudkWOU7IsWUBIZF5Eki90oxoNSTBzHKDKYvUy9dyCR
o/pkk1p2aUWhZR+/UmX07+vX6/P7BoKAaU18arPAs1xbU7ccmPwTSfnoaa7z3M+cha77vr1S
FQgWtmi2oOtC3zkQTY8aU+B7oqzbvH9/pnP0nKy0WgHnNrbqBGsOH6x8yhcLj28PVzqbP19f
IF7f9embkLTa/qFradJQ+U4YIzKnPDxTULpYqoq2yCwHLeqNUvEaX75eXy/0m2c6yZg2sKQq
kralC7hSLfOh8HXFW1S06ZC5gNHNShxgP8I/C3HH/itDjB9sLAyu4cZuZUBtTDncDE6ALYSA
7t9KFxiiWyVjDPjrvYUhRD2zzrAfeJpWawbVid3KHd5OTF/YADVG7hiaIXRQdzcLHMqRTRZ6
4N1ukvB2IcPQ02bhZoiQFUAzxAHGGwc+QrXdyNfuAAYSBA4iy1UfV5bB84zA4d5a0wCHKXjG
wtFaBpcwC0f/l+XobTQeyYIPlj4JMbK+KQCyrXOTznKtNnW1Zq2bprZsFKr8qimJ3rTdB9+r
b9WI+McgwW78BVjTrpTq5eleX4n7R3+b7DQyU3nawVwf5UdpWY3rT6ZaS0rD/EzP87hPJ2Hz
QuIYuvpYzO7i0NaWcZQaWeF5SCuxZFL2LP/d0+Xtd+MVWNbaga81GzxHCrSuo9TAC8Tc5LT5
BNsW6jS4zqAqJu+oZ3Mx3mzf395fvj7+3xXOXdm0q+3AGT9E6mxLzXCSY7BnjRzpKZCMRk58
CxSXpXq6oW1E40h0UymB7ETN9CUDDV9WvWONhgIBJl+Taij6ukxmcoLgRhI2+lROZPrY25Zt
aM9RsSiRMd+yjN95RqwaS/qhT26hoW7jydHU80hkaeeQEwrrwMC/1fu2oTK71JIUq4Y5NzBD
caYcDV/m5hbapXRxZWq9KOoIXCYbWqg/JbFlGWpCCsf2DYJa9LHtGgS1o+rP1CNj6Vp2tzOJ
4MfKzmzaSIYTA411S6vmoctjTLeISuftuoGLlt3ry/M7/eRtDj3KXv69vdM97eX18+aHt8s7
XWQ/vl9/3HwRWKfywOEo6bdWFAvnQxMx0C42wSAntiTvjgvZeL1N0cC20a8C0xKD2XnSkYEa
KDAwijLicud8WK0fWPjV/9y8X1/p/ur99RHuwcT6y1aj3Ygb0rOLvkmNpk6Gu1FglSlgJJoK
W0eRFyoXu5y4lJ+SfiLG3pLySkfHs43NzVDxoQzLrHdtJf9PJe1eN8CIqij4B1s6Gp373BHd
n85CY2FC4+jixYQCEy+FCFOcFbkakRY0CnRWJ1CsBoac2GOsfj+pgMzWissh3sZ6rjT9URVk
qoIC/NHX2ltKSTkxRIhaO1PBGhXLjp7QWUrho6NBqwrE6kzUrHnTsVXBInj95gfjQBHL0kbS
y9aFNmoVcUK1MJzoaFoAhAt9nTUNzExOpqR7ysjGquQppajHXhdGOhB8ZCC4vtLVs1XRFien
GjkEMkpt1SpTusGjr1AZZWQxExCljHmKKmg30OQqc+iEpr7jAKpnq887mA2Fat7BiQ5KhBMp
XWQDpfzc0AIs7xulQ7k90XmXiwKZThrcKIowqiN1DPCmc1DpUDUi10rhnGnSE5pn/fL6/vsm
odumx4fL88/Hl9fr5XnTr0Pj55TNK1k/GEtGxc6xVFuspvNt5X30TMafJrK71pRucFQdWe6z
3nXV9CeqZiM00Q3+XzkH7Syz5Q0bnhZ2MMak8hT5jiIWnHbOVLOziT54pdIRkIO9qKOCZH9f
H8VqX9OhFeFq0LGIlIU81/7jr/OVVX4KT+1NHcemds9dIj3PJo9C2puX56c/p1Xdz21ZyhWT
TjPXSQksDC1VAQtQvFxrkDydX+PMG9/Nl5dXvspAVj9uPN5/MNSmrLcHR5csoJrkgoKt2jWM
pql/eMOPh7BcUDUhTlSGM+yRXXVMkGhf+ghRnU+TfkvXk6rSo3ojCHxt2VqMdKvuYwbU07q0
o7OzbgbKLPWw3S2Ah6Y7ETfRviFp0xtNFg95KXgATrkNSkHl9fXL5eG6+SGvfctx7B/FZ1ma
lcA8E1jaAq11xDMU056D5d2/vDy9bd7h1uvf16eXb5vn6//eWGyfquqe6nv8TsBg1sAS2b9e
vv3++PAmvGJcUk722AOyYZ+ck06YxCcCe0S2b0/yAzIAyV3Rp4e8azCbhKwTp3gwF2mpXhtZ
UDj+VHCtKaAs1FuFB3FdGUhe7sCyBM/wfKwI9HUrzdQTfbddISRlWryK9PDuoSmb/f25y3eo
hQz9YMdeVuYVvCovRBP3FWyGvOPGQnQ+lbPjDGWeHM/t4Z6YQ9cCc9kk2Znug7PFxMlQJlp8
fs8o0PZ5dSYHsPjB2oTQrssWPe+k823hhuo+/NoLvgIbuvRA12qBnBq3rSttMdDGTK/Hlh2h
xdGotr0Eq+/3hUDmprLxBUlXSfaP8+WhQJZz7ZIsNzyfBzipMirvRrhuTkOemPEiRr0/AjTs
80ptguFoeKnHwOpuv8MvgVkPV4bnVQCeslLNKyEGI12KVftkr10nC/jHEX8iD9i2SQ+m0QJu
jYoGNIgsGW1S5+U67b99e7r8uWkvz9cnqRcVRExh2xWZ6EppSXVFpMRXhb99ffz821URbf5w
oBjpH2MoWfpKaNaKyt6ctvhx3tfJUGhKbyJjruMlvrTo6KR3/pijbuC4INjOyZWDpbHG3zYj
O+s3a5h8n6RYUMK1NZuugFfM7AUwuOY+LsvD3evl63Xz6/cvX+iIzNQbCapx0yqDWG1rU+7g
9UNf7O5FkvD3pOWYzpO+Yg7v6VYGcUIA+dCfXVGWHX9fKgNp097TNBMNKKpkn2/LQv6E3BM8
LQDQtAAQ01oaGErVdHmxr895nRUJFuRrzlEyOt2BQfsu77o8O4vOntgklp62cv7ghGTS8XIa
fVGyMvVFvUf77PfL62duUa5fcEEjMcFDZYeibYUf3MKH99u8c/CdO4UT2QUGUOjkQdsHV0+s
q0hvBOlixMbcI1HoBCIjtYlGqD3xdB9aeC8zQDAFsCKW25bY2eybVixLTYdbge8hKdoVgxEr
QsOFOsXKPLL8ELehBAFI+q7BpwnI1DzdQcv397ZjTJmiJojgdviAJIMpOiOghVGiBnPL1XlD
R1iB29BQ/Hjf4UqOYm5mmEMhy6bJmgY/Wge4jwLHWNGezjO5WWiVlwDy2DEmmtKFS1FjCz1o
PNn3KaOQ9LRTxZBO/ngCEGBtP/aeL++7KDIHjMa/m7wTynonp2JXN1WupASnCHhcItb90/Wu
JBNVaOOWT+gUw9TU9vLw30+Pv/3+vvnHpkyz2ZkLsuGh6OQKgvtcQgoG/oHKYn/oJca1tisO
sWS6IsUgPSr7jKxuhTWIBf0Vm2OFmIuyuzLH71JWPpLQTRVmSbGyqN42hfxVX+wSFEWBGZJN
K1dwdt58s0Sa88cVArsEN8bTpkuSrOlwNSG0COKjTS+B4ppe6GPJw6JQsIG2VFi2eNG2WWBb
uI9oIdMuHdO6RmX9LyR6Ls8hqyQH33Rd2qDpaYcAcwqkOdViCCn47xl8u6juA2UEAv/Q4VGg
8YmlBOuMRR/qZFKbVhrhnJeZTizyNBatuICeVUle76lm1NPpkruKTrsy8QNtc50yveyXvBUR
XkfY0cvEqhjzDiC9hCbiGXyWFTUCIg1y6BCi7JdHKVAywvyQkV9cR+glisw+wKgSP08eiPQe
oh3YpOedkugAfsRJzkAzVtT9URINKKrB6y37sqK7Ta1uFV2/77ennZoSAf9LdYp6LwM8SePw
PD/2ERNUXxjx1iatVlQ4SkPHJksefMQZsq76Nhn08oLPuPPJDnyD20H2aXvCXbMsVWKhxmDB
lMtVUEDYDcAz+zWWF69noZYryewowm1ZGUyKQ4v7/2dwXxSjIUjeArPtBn5kxZhOUWR4nzzD
zm3YvQHfGWJlU2zbRyG+zAM0TSzb8BiCwVVhCozAtMN4T+d989fEcyJDyD8OB4bYJQzux505
6yzpyuRGi+1ZeEgjXCb3Nz/nyeN22UvyZpgnb8arpjYEVGTq1Yzl6aFxDfEEawhokRXqrKfB
hoe6K0OG+7USUzB325yEmSOvie2G5rbnuFludlVkiooJk0dGzEMVQPMYpUtbO7zRayxcSDSa
Sz4zmLM4Nt3edtRFvSg5TWnu/XIMvMDL8Y3iNDMnnSFyGIXryvHNg71NxwPu1JMtJoq2p9s6
M17lBnvwCY3NOTPU4DqYTysGp+1sRi2SyLmhRyb8L/Qz28g1xDw0htFxzCW8r3ZYbK5D9hN7
rCO9v2FymHBhQReoy1f/oXxCF5rs+oTuFj/lv1hymieCv5uaFlppgW2FWOs2yuoBgu2wmVaO
Xj4h007v1sKTJVDBdN3iQPqJatjQseNqjCPXD1lgNiNr1/uB5888smSsObl/mOVn4uryuimM
a6m+4oGG1Dy2acViNhYOOd8dCtKXxvVYlpNiX7OjWsqtrwsXlDaZJizkJZ2eyMJF++71en17
uDxdN2l7Wkwzp0valXXyFYB88l9CGNepDXakpGudDuluQEiirZtmqPqI3WNIyZ7o9ms0JEwK
A9BmxQ6Hcl4arCxFuitKU0lzqN+NshbVyMp6kl4m32x6RcdTKTgUgWNDkA2zJuZ5mWdqhvPQ
Vvx+tcyHHDucmpmr/kjXculAMqzqpNmhiXDB6qvHh9cX9iz/9eUZtr6URLU1/XJ6tSoeD81t
8ve/Uss6RWVFhoCAsmf7cBFQJT3un1n5wCAtY79r94ma2afx3GeGHTlvfIfqBPh7dW3LNlJI
EGRRJSKbLYZlyel86osSUZiA2aEUEV5CRiMS3EBkF8ciCm+lDYhtR2bkfLi7AeLZHT08yaPn
qQcVE933PZQeiMaJIt3DKnP0XdF2V6D7aL5l6gcOksE2cyIc6M8kbXT6HA7RIAcpcf3SRUrM
ASQjDiBtwgHfBCC1h/1WiTUXA3xEmCYA71wOGpMzFSBEK+k5AVoVzxEPOyW6obzhjeKOI9L5
E2D8yrVdvAiuhxfB9WKMDu44sIRGxwodZGpkKyCksfjKCKFXBVIBOPY0SWNOQhsTLUp3sLrl
JHJtpF+B7iAty+l4w+7BgyOSR1GDG5+ja2ESXCV0PWhFSFYMoSvFxAD5FlJPhojGzBIQOybE
DSW/ETKGRneTc0SkoCJVFNsBRNyajCZu80yxAXQmunK0gwhpWADCCJGbCcC7iYExIp0TYP5K
CnaiAMavXAtrnAkwf0VrjHT8jBi/823nDyOAf0UlExX1rqTTBNLqXU+1R3QmGTJ3wr4FG05A
x9OCfQ4meYBEYCiPRS9ZmaQnExLZVEDppkcim79A9Dgj41+QfV/Kzx4XpPh/yq5kuZGbSb8K
j/4PHpNFcdFM+IBaSKJVmwpVXPpSIUt0t8JqSSGpY+y3n0ygFiwJynPpFvPLwr4kgFy2GYsF
cUTsEbqLBrRKtkY4mpEB31LhxFemfMPty3bFUW06AdSzdHqETSGywAgmpgNLSu7qAE9VRHa1
oBYoUbM5tWcgfUG1Zc3h/EYInzUTwYLaxCWw9AAralMGYDGlpC4EVjOitBII6KRAriNWbOmt
i9r86g27Xq8oYHR3dRGkO2BgmBs2Ui4cHKnS6vBnGRi6CBYcR8cZ6Qhj4BNzFgSrhMhAKPnG
g1DStvQBRskFMhwkJXIesrVhR6LTqXaXdCoDoK/pdMiVCOnUaiz9kXn458R0Qjol8CCdmk6S
TtdrtSJmANLXxFwC+poSTBSdHjEYjmtK533tSeua2lQlnS7T9cqTzopu6+s1NSYEQ1dM1Kj+
Kk/318uSNHDRZaXVgpjSGDqPOq1IOiUb1ssl1QI5WgxdeYA1NZ4lEBCNpgBqCSgZnFynzLR1
MC4SjE/U1oSP1eR1wQibwFFfd7W7WXXLzGM3LNOOGxdF8LMN5UXLSQYfy7c1pdIEbBU76B82
O9L9JKY36vyoa6bX8z0aJuEHziUK8rMr9F1tl4pFUVMXDRn8XeFVc3Q/AmK7oXw5S7g0fGUM
JDMImiSLhrralFCD1+1OIybpDaffPBVcF6VVMJOBb8Mkv8SBxiMVpXusQA6/TnapoqISjLza
VmizZU7VMxaxNPVlVFZFzG+SkzCbMZL+B5zsy4D2wiNBaMaa75NWhNOF6WlKwspbredjGI7b
Iq+4MDTaexo0o1m8BE1abFrKcpuSRLrDXEUrLMJXqL1J2iZZyPWpKYmbKrPrtE2LihfekbUr
UhUjZPxIUi6Nim1RbGFp2LEsS+hXOslVL9dzPww1cqaayXCi1AARaSJU9I/Muh9YWusOfpG2
58kBo99YrNtTZdkFIZVHLLYmKq8twhcWVs6Iqw8835Ga46qeueCwxNnZpZFUHrETs3QJDSQv
9tbAwHboFjKC2sZfPAD8KA0FnAEh1zFEqyYL06RkcaBGtfHp9vpq6v/0sEuS1J0MUls4g6GZ
2PQUtVbdNeK0SRmp/YqwDG65tVs543hLWmxqi1zksP0kztqVNWnNLw/LvKZUtxRS8a2ZT1HZ
kwuXM5ajPQnMS19Xl0kO7ZJbhS6TmqWn3NmASliGUzKwl0RhycHm5JG1fJYVB7HHTqxCjWHP
27rEiyhilHUfgrDuGwGHFC0TTb6180HHvN5MRJkkaJZCK2dLjjohY/V0GAw3EAcS4eSqIi35
hpAealguFFWS5EyYm8xA9O/5ImNV/aU4mVGddKozGWBXsuY2rGYiSRzJqd7BakIrDyi4akSt
NPu8TA1KVm0pKBNeiQebr0lllefAnI3qwLkdogTJRw7D15M0pms2S09xmuTrKQbZyp7RAtbT
omp3Teh0rkIiqD8Gjpa/vE3A0pJ+MZXLAAgRQWAp9vRvkYRoKWVOVHogxV8Zx8EVgUtSmO2Y
ewPcLlM77cEk1MxwSB9fFC1h2bDWdNN6/jg/TdC2wJeifCAGBn+6dBKDJomepVbZYhfxFi2g
QKJQJlhjfzdGtEmNOISuGs8GGHklidHgg37plqGL0pLjacXT7vBnbmmWyxAdFe6YTLS7KDYQ
k83S9VQBa3JYxqOkzZNDH03aeRI3PcdiTxNxRVUAFalh2qIRGSctrCWXrZxspFHU/tYBDJVK
oJ/9qSNPmEpdeVF3k9DsASG7YJtUSHB7TsY2bmCBz1EJJWWn3wMdVr06zqeX949JNJr8x64R
nOy45eo4nWL/eIp9xEGmus/4UNLjcBuREVsHDqJrezoq8iSC+YaUYusCMpgtkYxlsqkVmlJC
47Z1TaB1jeOptw63UaKskr4RlEqHXhC9nObAODbBbLor7QY2mLgoZ7Pl8UInbGDwoK6KU+eC
bIliKFbEPYiw52DxWVWajsG/RMzmwUUGka5nswu1rNboaeN65VZoLLGRIJJlLI7MkruGWaCM
qibR09076ehUzquIlgnkyoSmAaRaC6KH2BqYdTbco+Swu//3RFa7Lio0GXw4v6IfjAlqfkWC
T/74+TEJ0xtc3VoRT37c/dPrh909vb9M/jhPns/nh/PD/0C2ZyOl3fnpVeo4/cBw24/Pf76Y
W2bHZ+0GimhHa9EhvCkxpNCOIJee0hkRQ4qsZhvmi6Tac21A+DPEIB3kIg7sOEU9Bn8zJ7Bu
D4o4rki/RDbTYkGn/qXJSrErahplKWtiRmNFnsjzDo3esCrzfNhH9oFmi5wx3TPB2tg24TJY
UA8Kcroxoa/3/Mfdt8fnb3Qw6SyOnDBQ8nxnnbGAzktpDuXb5+NcWBGmJKndMoySZldGYbvC
uykqBtwMDhUr7c8zOcljUhVQReqLnChaSHNydDlUeS+k28YNS2E7SQdXC+XT3QdMuh+T7dPP
c7efTgQlssrvnbVXlYyVjmQBAK2TLFtoh67zE1/0aNw7Vkurazuiu44OALRPXzdnK0IG1TyS
5eK2hbxDQ5ErMLaOb+VVhkbkZ6Zo51xEy8034/rLSEcKnLjJLG7qxhc5VyR7kVjLYZpsi9q+
YZKAd+vqp3R0WkVLZ0xGJ+kFw9eFsXWTI3f8Oub9nadZG7wBj6HtQQAku0YytNkG5BY4yqJL
Io+5uoo5BxJluN/6hldqDaC6YiCU73lYMVinrMFVHFhV8cJpNo9TIyVACRhmcg/f8GPdVMSI
RNPSzcFbhRN85Ovd5Ktsy6M1TFA+hP+DxexoSUE7AfI//DFfTOc0crXUn+9kG2H8ZugN6RJb
uGvgjhXiJqFu6GV/1u6+inc4/qs0megR3078oljCtmkCSftka7mnZvr+UX7/5/3xHk7n6d0/
lIcwKQ3ttKv0vAtOeYwS0/sLEvEo2O7p82LNdvuiOwQOHw1EtTaFp/7MdmHd60N2aid9Ty30
L4edyqHREbM7rDMW9Ta5ngS6WPHY97isvvNPny80Yiuf8wIC7aWFvMngdL7ZoLlooHXq+e3x
9fv5DRpkPAraq3B/uGhi3z67rRA0m6wX1q2T/JEZfujlLr7vvjb3dqDO/WeFDBOn3qIQDOOo
S9LcmMnNGJmpC4YsXizmS6vSBgvId0Gw8m/NEvfETpHNVtz4p2iyDaZe+UO6xusP3frwJvvT
Whrknxv3tgQT2N49fDt/TF7fzhhy6OX9/IBuAf98/Pbz7Y68OcErRm8dnJh9Zg1r//oFy8eF
U5ca3J4Q7nLINnmEz1AXWDL0dNEfmD6ZiTXukX6BcUsIKmZeHDZrV6K0EiHOkpawjArpWVkI
Xl8oMiy8Nx7bUoXDebb1uF1TDPKp5gLuXFMaaBxuadNMBR+SMGL+rsXbc6qltEH++RgddpJT
qWv9yZ9tHZkn1YHqMYFW+AY3fTtAlcHR4JndD+/iuRAYUu4CT10KWNXWR3Jq1v+8nn+NlAP7
16fz3+e33+Kz9msi/vfx4/67e0mu0s6aY1vyuazGYh7YK8f/N3W7WOzp4/z2fPdxnmQvD2dX
PFCFQD+YaY23MXavKNdRGkqVzpOJse3AOaNzzmmv6AiJ7rYdLw/Jjsgyer3PkkzUPKKiG+MN
NN7OjlWSd7XSl47xmjtQW+e11WQKK5Rpczww7A4oIOZb8+1aBedJYurgJFOgvNCYHBgVZ07d
HYxoYNVIhsyxiWXErvvxRNClpOfLpXsQsApWzq+vaPPsAfdYEXf4YmE/MDk47YBqwJcX018v
PJbpY8UX1IljgJd6QBFJVS6KUPG3buyBhJiuviiJg7slM/Mq2aJn1oK6kVRDKwaJxO5Dxw2S
pGbRbL5az5086ogtF1MqyqiC02hxPTN9ww1javG377MsyTfBLBwvSMfhLa8y/3h6fP7rl5mK
Ul9tw0mnzvHzGX2jEk+Hk1/GN93/jAuRagU8k2V2fdNjpR/1JREO3pVFynm0Wodu/WoOVWy6
BzRv68ASP5sujnot67fHb9+M1VJ/7HHXkP4VSPrP8WbUMRWwjBjXlwYac3HjTX+XsKoOE1In
wWAcPDx5col0/6cGwkBM2/P65IHJBWIoe/doZza2bNXH1w90wP8++VBNOw6U/Pzx5yNuI53M
MPkFe+Dj7g1Eiv84y+jQ0hXLBbe83ZE1ZdAlzFvkksHg+SwNODYYHpqsFFC7M/c1JwrcI8ai
CPYQHvJUNbH25LzhOQ9ZTt1XJTGLWlhD8KlTRJX+ECkh59m4qqM25aFJgNXjarmerTtkyBox
uQkSOccZ655y9S9GqutzSfm4zZjrgBW9LSnPBWO5kNb58pO7ap7oqrmIsqjUbmXxcaNiICxv
Y/2uvnuwB9ryymxVRT/S4nEHF6zGAlMcZXpsfZj0h7fDTNtsm1EDceTQ6nTABKPet5lJNRq5
Y7Sk4A7diaY10hWbtlSEoQeip8fz84chijBxykGq9VcK6PblX59e2Gy01/o+W0wPL0/0oouD
pNNHii4lT+YAtVmxTzq/vJfYeu/rHn/ViglWTFv3pfeVbNZoGGHNsbur1Wu0i6+uVp6LA55h
u0ac27fNAwde6aLXxzBtC4+qqc5CbVUaLkVV7cLGXJAbtK3ilLIWImVc7VF/nFe39kcxumZX
EN1xwMM8AdcRg205KjxeWGXWEe811708sNCSF8P4edWYwjsSs83S4zcIF5XeHRuRonIDPjZi
5xYcRJ5Gz6Mj01OwBzPTi3pHDtFjDNmVQ17Z7z8smvQGSCSWZZ5bm31ckjFL5ZWsUxtJRR1R
0WkfEf62OzWd+7eX95c/PyY7OOe9/bqffPt5fv+gdKV2cFis9uQM+yyVvrTbKjkZLm86QpsI
3SSkZlvlOLqfEgXqxNu/7dfygapEE7lw8K9JexP+Hkyv1hfYMnbUOTW3Px1zxkV0YYx1XFww
1y9gh5VRathfaWTd6EUnG49lGkCeHEd8PQvoD9cz2j+UzkH7Yx44srnlvctkQHtQaCdeBNMp
toZTL8VQRsF8eRlfzkkcpojxVq6TqVqDyDSlLqoHWMyWmdsrQJ+uyQLILyjq2nRrrLGvSWfk
I8Pyii56HficsGkcntiMOseF/pL4wpP5jPYoq3EE9BVHz5Fl84A8v3QMm3ShBzzshwBuPryY
Be2aKBiinFdFS/pd7+ehVBcLpjeRk3q0PKLdf+EAWRktiYnI4ttZEDrkHJC6ZcFsQfV6h1JX
LzpHZm7nFjRbUueDkSllYRl1Y5SYqOzC1wDHjGh6oGdE0wC5oVoMb6pv5w5dLDwrF/98BVVe
1LyLaBSqCdhGgp5sMGujC8nnyHTborV+5Kbeobh8XXlw1eg0lqE4RpXrtmHKbIXdlheLJ5+X
hqq7M+56TVqAjUWABJaL6Yz4GJC4uThdFcfGF6nF4JL+Afwl2Wc3ayPAdEdfBwt3hgGRWoGQ
3Ar65NKx3Kj/4Yz773akS7sRvQV4hwAF1MQcyVHptemiYGjHcNhprwP6/RFAq0YjtF7NvF/B
tJt6oymIbGXqqvXmpHd//XzF25j3l6fz5P31fL7/bngoozm0858S1VTMZCcD9vzw9vL4YB5L
d764U9yOFdHHU+pS0e516qTdxhnIIvSQ7iMKuI+gPYNo0aUZxnYxDho5FychSkY/BGZSqMZX
wDzJa2oi9+KsdRfUkzG/qjDOED1E2wD3aH/B53yWFrTi+4gXJd4QXkjbsdfrgYpRvlB61NUz
GmopgyDFpkZKD5p2CD1Vmek7JWh8rlYHBtMjp4pAd/f+1/nDCMxlDdYtEzdJ3W4qliWHwo6V
0fuwN5PpS7zhSRpLtQ8zltwNLCNTTxSr29TzzH1cLweVbsqQomMrM3UnqLVbP8BLXmp3S9km
7t2naUvRDoZcMuQjbATYS3yLTwigDvUwum7Snas2w8tCT0xLglhWRV1Y5JtQ2ocaN9njWt97
g1Ph+6iVvs8PPw1Z5WYqz4m6g/keUMZUhrnHAJ0E9YX1qi3JMAhLaYS6TezMFWQHnjrwNCqM
huwpWlGHFhiwZO9ZdQaOOkkTjI2i5ZUlacry4khYa6g3l3ZX1Bg6wKHr83SHruCjVNM+hx8y
nGBR3DSly4iOdGEZ1ceUfJrpEtG38o7aPcPRW3nPgw4trnRXGRom+MJwJ2dBCy90dUUiURwl
q+mSxmT80FZ3vquhJUszZhppHkTJ87QwF2K1Nj293P81ES8/3+6Jp3tILtnXLQdxSJO05c8W
kzM6JEzjgXP0lEGlP3Q142lYaJJaGWmjsr+CNzg41LPR3iHUmnt+xnjMEwlOyrtvZ/kGpCl9
jevqJ6xmPsR8QDfD6mO7Kavzj5eP8+vbyz31Nl8laNSJsSbI9Z74WCX6+uP9m9sxVZkJU6hD
glymiCGsQPlIsMXnz7E5bQQJNjpcYY6FNQo13Jth0JQDrwateOj154fD49vZfaIZeFv0D5Dr
IYdGSL6aUMCtMhZRmUCD/iL+ef84/5gUz5Po++Prf1BQvH/8E7p5NG1TEuGPp5dvQEZ3wHof
9aIeAavvUPJ88H7moipS09vL3cP9yw/fdySuLISO5W+jk+Lblzd+60vkM1b1KPpf2dGXgINJ
8Pbn3RMUzVt2EtdkHfSc47pLPz4+PT7/7aTZyyPKDfA+asgpQn08nBT+1SjQntukwLOpklti
uiTHOhotJpO/P+D80ZuLxfZMVMwtq/jXIjduQzpkIxhsGtQlXMdgv3R35O7NMK/nVx7P+h0j
7Erz+WLxCctqtbym30x0nvUVZb3ecQwbi0Wu88VM11Lp6FW9vl7NqSYR2WJBXox2eK8m7iQJ
QKTJgbqKVlHRb3jc86CR1/Qpdw/CaugJ/lgeXKfu+IqFQXld5Tt8u4b9q38B6w26bX6tqCUG
aqI146sErSHgB5zg0lSX9BQSVlEm6hB/RbpXUYWi88CT0AY1HI5gy/vjXc6Ysci96391dhoK
FkZZewOjW1pGIEidEnYnVPFug3WeSYsIbVfXIUxCTxtBNdQTRwGvazKzsNqneHSkjYwz03oO
fnre1hBRRwXVLuc3VBe/e4ap/uPl+fHj5Y1ynX6JTduTmVfV9soZR+NlRS9o5HFVmA4OOlIb
8hyGFowXur2GG4vus5SH+T7mmbaz98al3ZtiPyfw2dcQkENP9FGVXltuqHfHmB27i8Qx6Zhp
Qly+N7PFn/aRpyOWGQzdmA3b/e4w+Xi7u0dzRmfCCdNeBn6qAx8c7WA8EgUdOTAUrabWgoDU
tDdJIIFUUYKzUBS6+zENGxSnSHRTV0yXddTArw191Z5mD1iXATVWiFoN+LbeuVlBcShqJhqC
WtacoI62ML0XCrdTtPu/kjQhq5NBToQ/KRFDJ/dfqSsyEEnh4GwGL+GF6akQfrf9jQ/V9SnP
VALjJ0BSonBUV5RZv9TRh79zI0JyhD6F9KGO93R661iSg4pG/IjXmXJB0xWXIhbtkvZQVHGn
wKWXb89SHrMaRpGArbgSpAIgYHA6Me1lYfMMaGMiQOateb7pSC3aGhyhFLRpQ88lkqipeE1t
CMByZcTck4QGfboVlSyTBemZWiW6+jd5We/xX8LY2GjwtzdyHySfhbL1jUNVwqGVASMb74sE
jCw+bbcvl+uBsGNpJr/BOOSohU7vKEenjONd5UZ4Oh+jHgZGD/WUtgiikCBjKRx2ZasGguGN
8nk+5KzDZAHCuuqb0KLQA2FAoZtkRMs62doN6TJXDQicLAe+1lHiMnit8aOITMAIqIkSVskG
Df+Mm7Wcp3aTbgKripKADUmxtUdW18ZteA9cHlY9FzW0TCbVdGR3SJwXrbVHqbSlsgrPvyRR
5+PPyRtfJtDQ2XlHGacYCAH03NO7e5jSeMNjr02KBlJKAbUoSrIaPE3k5ZT17JWB9IQvBieD
gy5PkkfVqTS9GRrklqVbYWA4FnRl5oFkj6sRCBue1jxHf+c5QwNnI0X72ja2CVwRej31saGZ
q9LYQbdNURsHMklAbTh5+SM3uA0jI0VLE7WO/8Cq3GpdBfiWV4XWVaKNq9tNVrf7mU3QdgX5
VVSnLkUONl3GQi8kG2HuN4pmTjO5/egX64Z1facEZyyJ0FcpO3lo6B+RVzAn2phXlxlYemAg
uWzg9FYY/nc1ZhTr6SdFjekI/S7r9hljlkBbFaWrdBfd3X/XL+M2wtn5OpJa8T3TWXFgvLRi
W5F+A3seZ0vrgSLEBaX1uMaSPNJeWuuwgeamqmFkqcZLadUAqjHiX6si+y3ex1Ioc2QykDSv
l8upvdMXKSd9hHwFfpO1iTfO3tyXg85b6UEX4rcNq39Ljvjv/1V2LMttI7lfUeW0h8yU5Udi
b1UOFElJXFEkzYcl+8JSbI2jSiy7JHknnq9fAN1N9gMtew8zsQCw340G0AA6q63W9WytAkrf
4X8zpnPGI8IdQWY1I1EoefZYy4QWvV+/PjwP/uLGs3+KudfjETTzpJYhJBovdD5AwAKj2+c5
nOz6NTChwmmSRmWc2V9gikLMO2cHW4mPiobMJyD895hZXGbG49CmllrPC+cnd5oJhHO6T5sJ
sN4RexyD+juWuZU1FtWlzZskkyCrEzEMujaC//SSqTJYuDOiLSF0L6V9c1vVsSc+GM4IvKz2
0SkqPaoCfnQPOH/a7J8vLy+u/hh+0spMK3qeg2by/Iz3+DOIvp5xwWcmyVfDocfAXbIpkyyS
U7MHGuZYwR9o/OUX/oLeIuJ9Ki0iPkrRIuJsuRbJua+z+mteFuaLF3PlwVyd+b65Ml0Yra8+
0Murcy7Fl9mur+d2HcClcTW2l+99OzzVLds2amiXS+EZnjJVnUOzPAU+5cFnvqZzjrU6/oIv
7wsP/sqDr3jw0Nsq1t/XIHA20SxPLlvOltEhG7MVGKwE56ae01SBwxgk6pCDg2jb6Ml3O0yZ
g2rNlnVbJmnKlTYJYgE3+kEYEHHZQHGJT0JM3BS5RSZZk9RcidTRhE2ErkhAdZgl1dT+uqnH
vEdelHqSMGRJ6GSplgeIYbASF6/r+9fd5vDmhmqZjwrgLzhXrxvM5OQImjLtKkwPEoKOMWEV
dKfUGhMyx5GC9lKNUNEkhu0mINpoCtpjLBLWe954lao0hitVdI9Sl0noeXrbb9FRKEviQf5R
B6MU0xvmKTWD+ZjcWcjzKIsj0vNQnm/piWjT+c0hMqQMp4QxFOHxy3OJsbFVYaYbG4Mejrqn
sGvzg4Imq5CKwbwO0zgtWIulioTpBzzQtlxazb99Qh+Sh+e/t5/fVk+rz7+eVw8vm+3n/eqv
NZSzefi82R7Wj7gWP4mlOVvvtutfgx+r3cN6i1bpfomKqKP10/PubbDZbg6b1a/NP5Q7RPN6
CUnCQh2rvQlK2Jvm1sTf2L1w1mZ5xgmtGgWMtK6yJxi0LGZQi2J2KTAlpknQRzvxrVdof+e7
y3J756rKl3kpTCuG6xlsp1yZ6sPd28vheXCPyUWfd4Mf618vlDXKIEbjSKAH0xrgUxceBxEL
dEmrWZgUU9PRzUC4n0yNIEYN6JKWRtRXB2MJO8nWabi3JYGv8bOicKlnReGWgHYPlxROiGDC
lCvh7gdmagOTGhMDEGcia6lDNRkPTy/nTeogsiblgW71Bf3rgOkfZiU09RTYuqHpC4wne6Ba
EsncLWySNnhJh7zIfHNJ4ru4caHIvn7/tbn/4+f6bXBPK/9xt3r58eYs+NKI1RKwyF11cRgy
MJawjJgigUHexKcXF/r7eQ5KdktcKr8efqy3h8396rB+GMRb6gRs+cHfm8OPQbDfP99vCBWt
DiunV2E4d8ePgYVTONWD05MiT2+HxuOJ3V6eJNXw9JKZQoWCP6osaasqZmNM5IzG12Y+wW64
pgEwTsM9V3hgkffh0/ODbu5SrR5xSyocs+EcElm7uyZk9khseh9IaFpyDu0SmY9HzDYZuetl
ydQHEo3MkWvtvql3SnoUjfkxfHCzZHgZRvXWzZybjapipmK62v/wzcQ8cPs55YBLbkRuBKWw
mm0e1/uDW0MZnp26Xwqw7WeoI3koBqtyLHC5ZA+bURrM4lNuSQgMG5NlELCsCppSD0/EK6bO
MlY42VR/DRO2yd51060KDB7QrQfqEIk4mFvOPIE9G6et8eS14qbziGcWiPDYUHqK0ws2NrPD
n+nZjhRjmQZDFgibo4rPOBRU40deDE+Pfun5hgOfMeNQzTnLjkLiNcsodyWZelIOr06Z4hbF
BR/Zp62QlpYRRpSp3SLkQco56W7pwMzj0kNb9qEnDa/VYCGzZpS4vC8ow3N2Z+ULDFE5trUE
Rf/siQffrXRnkwUY3pCwoYgmhW+3dHhx+gGn/TjlqZ9UxIlxnULcBdsVgGv1H+tSVTO8CKHH
2h/F7tQB7KyNo9j3zViJiXZrZ9Pgjo8wllsgSKuA2eZKUPEifC2RT0bZwLKIM1eMlXA6V/0F
CpojI6aR+IuZc+uyZlPCK+QiHycMx5dw38JRaE9DTHR7tghuvTRGnwUXeX562a33e6GF290B
RSsNak7NVoLVXc6MwuX5EZ6W3nEDB9Ap5yco0XcVaSciLmO1fXh+GmSvT9/XOxFVYlsRFNuq
kjYsONUyKkcTlTuFwUytPE0Gjn+yTyfhhFVEOMD/JJhXLEbP4sKdNVQVW6HN2y1RqHda05Fp
yru3qJJ1ybCppMXAORft22pLpMRzLMnGtjXj1+b7brV7G+yeXw+bLSOgpslInmgMXJw/zqE0
FdY7JJFCHPu5EvD6p3adRdlTHTk5jQoFO2PrEyitOh/JO306ooqa6Hd61hMe2azJiD0/EN7J
oyWm0Pk2HB5ttVesNYo6NjhHS3hXEUYijwQ4XXB7HV20g8iO3HOJgnqOwSKMjtNjhfWBq0Lg
sWEn556cBz1xGPI5njWS66Buo+nl1cXvkE/BZdGGZ8ulJzuERfjFl/SFr/zGkwONqf6DpNCA
Gy7nmUZnp/zSUFUwjpdhnPrmYU5P8LaTJaewBdXtHMNrgQCvMDAWuK9EQxbNKJU0VTPyktXF
nKdZXpxctWGMBv4kRH9j4Wyst7mYhdUluoTdIB5LcR2SO2JVkddnGUv7CgdhVeG1SFebgaV3
QIz3mtFrDsP8Y+HPR76Y2N6kj3IJ17sDBoCtDus9ZZLdbx63q8Prbj24/7G+/7nZPuoJBtGp
Qb9YKo0sYC6++vZJc2aQ+HhZl4E+fPylUJ5FQXn7bm39q4DvU9Dxhn+JZikfow+MgSpylGTY
KHL1G6tBTL2nYxkk0Ze2uO7bpCDtKM5CkF9KLdQ0TbI4KIEkm+i8HGOejH6NElBgMQmNtiRV
XBLotlmI91dlPreM2DpJGmcebBbXbVMnupeKQo2TLIL/lfjEiHnfE+ZllPCMDJ/7pSc2Rnxi
IXHDqAdkdSFWYdJ56lsoC0xHGDouhvNiGU4n5LpaxmOLAq+sMH+OyIxUpIne/64M2P/0gGYt
rj51LhUCa09qQ58JjWxjQNEZnDRYUjet+ZVpN0ODmUqh6cCBU8WjW8vYo2H4pIuSJCgXgec9
BEEBE8ny6tBUYWwLQshmuE5Grhkx1JL02NY/WOlRPmc7f4eCAEiiqeHbdScEHQsK2k3nW21C
o5iDn7PU5yw1ajQMOYE5+uUdgu3fpnVSwig4rzAkDolJAta+ILGB+bxkD62nsMv832HaHLdl
o/A/TGmee6O+x+3kLtF2oIYYAeKUxSzvWLDQNK0dztzgL4OyDG7F5tXP6yoPE9irIMASQY/C
/Q6cQg+kEyD0kW8NDoJwI4dvFsOZU4m8x8AsjUAxwlGu4aAgjcr2PqRkyVFUtjWo8IJVOnwo
x2g3JGyyziNDO7oWSV6n2oUHUob5lLRQWDl5aqG0dMPrv1avvw6YEuqweXzFF+CexH34arde
weH2z/rfmv4GH1NqzSIu0QUIXSX19JoKXaElenRbs/lvDCqtoDdfQQkfAGESsaEQSBKkINjM
0bB0qbnsIKJIvA721SQVi8poVdFgWA6mAiZfBK5C9Hk11kp0rR9WaT4yfzHMLEulW6sqM71D
3xa9JUl5jZoTJ9XOi8RIII7xrSVeChp5ZEiDU7vnJqpyd09N4hqz4ufjSN8l+jeUNb/VD71x
jnY6O6k5QS9/62cfgeiV5Tg1ov+qibVeuz2AobWt4QYBAOyZbl3rqBsR79eO06aaKi8pnYhm
cBHoSXAIFMWFnuK/gg1pzCe6LWUTfdo60dCR7EznGSUfE/Rlt9kefg5W8OXD03r/6Hp9kdQ4
ozE2VAUBDgOMWudWoAimxQRGKYh9aedX8dVLcd0kcf3tvB9WoTg4JZz3rcDUZ6op9EA27xgn
X/l2dhlP0Xpc1kHGGuWogsVlCeR69nX6DP6TT8bps+Ed4c5Euvm1/uOweZKC+55I7wV8586H
qEuauxwYBqY0YWxY0TRsBfIj7+umEUWLoBzzAtokGuEDAknB2uPijBxM5g1eVGBAmrbRMCsa
BRiJrMmaOxmUBuchBoqzrudlHERULNDovZrGmIcBg2tgv7AsSHSpEqFt6A0/D2r97V4bQ81r
8yy9tfaiCtG1IuRkCCSdiYs4mOEhgpyXjwn56EQbmY/kpo3W318f6a3fZLs/7F6fZFp+tVMC
tC6A4lhqOpsG7BzOxAR9O/k95KjEk2d8CQKHnhoNpfUBVdQchcpi6sTcZrBe9BHD35wFpOOW
oyqQUZ14oBo+doTTCxPEoJWzr9ETcoSphSqrDIqLsGFWnVYl3dnNG0LQhkGE7Mx/aC7N0cTo
FNOaJKNxoeWOB4b0G+zK1Vg3vSq9rOOsMk4nURhilWzBI9SGdlziqOB8kVnWIzLz5EmVZ1YE
ptWNQrw87nnDgUjKHJ8Y90n03YIRxIulO1QLTg7rlPQ6aubaYSp+W09qSKCT5k+UL0LcfGDz
XGYp0BP0yAAoMnoRiH1ZxSDDGB5fW8qwIW7pbwtKv0WjUh68W5m1LIYaN0+bkfe6hviCXOAg
M6XAMu0mvwdHWYsEs1ZcC3w5OTmxO9XR2ovHR9e54445C7BFTN7DVRg420mcFE1lhG1VcAxG
EhVnkX0qWuv4Bvo2Ifdxu/CbuTt5QI0uUihTHuklUJV8RiStznEasP75/mbZLRdP8DCNFAhv
2SLDk3LF7gVqBFK4cwJnKshbeSmj1B1mJc5c1Gr5Iyio9LmyEDiCJguUTuIC694Y6dhqAfqQ
Hi4usbgXUTbP8v5UAb3aSvtBZTDjIsvGJUM6rekd3nN5a/VNRT4qqUwD0SB/ftl/HqTP9z9f
X4SsMV1tH3XJHp+uQqf0PC8My60GRtGngY1mIkkha2ponwSj6bJBXlnDFOnmjyof1y7SkN+L
AGRDnbDwPKnlJ5atPOlnuYysWnGhjPV10FGI1AnYJRj0ecHSHG+7Rvh+223iru3azsHK2mmT
4SPZ1YzdvYtrEFdBaI08qZpJKBH18NG+R9eIiAQCMfXhFWVTRrYQnM2J1SYwE12uQhSYIm2W
gTMxi+PiHRkCjs954b4zhX3RZKx/7V82W/QWhm4+vR7Wv9fwx/pw/+eff+ovCGLaCSqXMjn3
lgNN3cU3pfzJJagE7LfNn9Bm19TxMnZEBZW71YZ7yBcLgYEzNl8UgZlcSta1qPjwXYGmNlrs
DmFRXLhlSYS3MPWaXBrHhd1UOUzCOUQ9smXW2cJmwtQYrS0k9d2UH7Lr6P+ZZVUt5T9BkxWd
dpaKZyVHIU0QhqptMvQRg5UurP7uOM2EUOSsQ7G/fgqZ/2F1WA1Q2L/HCzpHmafLPafkwpM+
Qa6eifuFOjD5yDeS4LKW5GqQdMumsMPTLObgabzZjrCE4clqUA4rdfyAvMlxDN+Mo3iKzNkv
ryGF/jVnJQASFAPIFtCdT6dDHW/NMYLiaz3fhEqDa7TfUSyupcpfMsq+QSmy2YD+hU4A7IUV
NFjmyRYWeZUIUh8evDXKwts6Z9Vc9JzqF7Br88zyQvTbCCoEVqbeU38HOwH1esrTKJuZnfyO
QbaLpJ6i+dcW0TgymVgFLYs2uSSbk6IC5eENrkWCKSVoCSAlKKNZ7RSCLnG2DTqUpYmie6To
OZr17eUjmhKaHJxssqNmPNZHizKsE731/BgoW7A4xNPWzhhrRRHTXgChbgCWByCa4Nm+OvUp
5deuSBIy9nLVY0PkIWO7/IZZkd519c6S8q2m9xfSx9dQ1wQ4zdG5RJdTSUWzGwWDC6LmuIdr
8gCNvsRwxmKSj9wPpwvY0MxnHQE+lkRoFis7KVc5d9bLFVtloBAZrwRbiE5zMpfVCA46WI1y
hCgQ1pKDCC59DfB9Bfog5s+cjhx25FFClbhU5SnjeB0UNorlewVag4uxA1NLwobzJXi4iuYB
lMGSct9J6OcU3XTU2868NE41CEYg9FjfzNE25vxsdH6go506gpSueHHcjy6hOoATtThy6moV
vkuscSO6hzlGmd8kUdzm0zAZnl2d0x0o6v98tDm+psRe32qafOiq+AQjFwi5z3u9O+T1bs2i
QSlqk0qwXeOCm3IFSAqNTeQOhgSh35dfWEHIEERdvotO9PIiiThuY2b9DMpU+nJxN79Sh0pH
dONojUrHWzgVB6tFBwdMQcwL3313xRyfLNn85xrevIjqEI3/rq6j8YTgS9GK7v1QnzbjkQp/
rjrxoTr7bcl5nrB9NoaG7jkK40XUosG4ftSFvPU22UKkdc5L4xa/g4urMdr39pEgBVJzHem3
ufV6f0AFCDX38Pm/693qca2HWsyajHWVYk1r1vVWMefJuOLoffP3DHbHkk0GSVqlAXc5hChx
Y+A4QhBqHsxilYfE93mSdyqB/fkYlU2eT5rN7S66jvGOWZhrz7xLeyDwGwDLba8/X2RS4y9l
Wqc8iCXepJg2QyTBC8+ymVMMEXvvKaiAEwdlLFxTvp38Pj8xTOUlHHUkyMGoiZfWMl6VAXbm
1cKPLkInb4XwO/gfLNNciQg8AgA=

--17pEHd4RhPHOinZp--
