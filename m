Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKP3RXWAKGQEKSUHICY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3E2B7A22
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 15:07:55 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id i187sf2193128pfc.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 06:07:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568898473; cv=pass;
        d=google.com; s=arc-20160816;
        b=LWfWJLR7YVAiweAk2UvrT5ayqlRCKdZHe8KHAZOR5Dd5Qa3paNopGnef7hG3z5SiUt
         Iu0VYWF/NZTJGMParuP5bHsqAhvqxExFqRnSSikM+FBbxZPPnCmkWf5tGgbXwSfCmvVH
         nQF7ljvnRsyRy5FNPbdgnmw9d713vzprT/UVis/+vAax3vpm6ugTcAdydDsHmVua4/0P
         fSvT7T+kgZJWq06AJdFcHPtlPAT2hnwOhPnLlXfTMqe4OtZOQ/Rqg1YqYDgm/lgL+iui
         JkaC9gorC7cFujsReZTN9AkkQX2Nv0YHFin8Xq+70/E0gY5BZ+0C8sT1rmXviNBZ5F1V
         YsYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LuUuWhKhZxMFOQUcJ1RP5ST/zn65734k2pp0qvlLOjE=;
        b=ydWHgF3V2Bki6c23e07k6mSpfv9B9nyxOeaRG5SzJQKkw8HM0iGas6brzJ4DOnmdka
         O44zv4hVWZg8/XS2g9urilBm7OV5ebqX5tLVzjkGLdnFF6E4iJ5pOVhQj3EAep5s7e7Z
         u16HDNFhg03jdHeg4Qip7dX6Hb5okXLUjuZsS4YBUeIIrER5cp8kNX5b1Kn6q/EqhDT1
         uNZS87xRWs7hxUcKIe609B104vx/rfidzRb3SnDEeok20rmeczAgcoiW9pN/DM6mZSFH
         2J+kHoKRRqcUjdEvOVaJx3OliV8Ibj76ltdRDuIMXCaAZnv6ZpPPCbGPAgYah+T0Djvn
         E8ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LuUuWhKhZxMFOQUcJ1RP5ST/zn65734k2pp0qvlLOjE=;
        b=kq0aX8nbykj+0P1PWLeDMWBV74kDDNVb0o8aF3IEsF9hth0SYbSDrKieaygGSDheSD
         W6QNxvXOaG98CWmKLzqGT1JUz+WGYEYpT7fKv+nXaq0a4BpdfdPri25UIlSeZc4GmUMM
         fB23YbEZj5JgiGkRpShm1muHNTxsmY5vWiGbrYrIwqR7wHlfpuPyqjT0XiCHCzUbpW5D
         DGhH1Q58VkVg52/RlmHvQQ+kQXFqVmzppiFL4dW/Z4u36oTF8PT3hUjCrNTOZsKYoE8B
         iBDZl4Ej8gEotTUHOPgPIzVpnZRG1LEfqsCnJ0zkL9RfUmV/6QL4CgQ3W3NeEAQ3grJU
         XFEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LuUuWhKhZxMFOQUcJ1RP5ST/zn65734k2pp0qvlLOjE=;
        b=ghDi8arwfc13rbZ+66RhAZk4c6rg4kyPXKDoLlOzH5qHz6bE2rGihKDrNSJTq4ftZl
         LzRdWQ5Z+lmII7+VSa4iiBx8Tz7uP5yjqZ88rd4VcdRfLXWQW61fdes5FlEpGBfiRNt8
         PFUnI/swHRH5mscv6zK7VIWm+3rMq1ls5dv8iVQEsKzriAim0fR40O8wspzCUcU1pybD
         orx5sN9lUpnVughHelqzE0av7dAkV+DiGiWEghZt3umCmblMYW8ki1U0w23JPdxW+HvE
         f3nlqoumGIgJPSz0diHHD0DQq3+TkdDRqFfXEU0isK64XlX3DQ6375Sji4Ki/MYaHv1Z
         fgcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXLmxthbJe5ZFqGKBZD9mjeg94mQofYmDLlzSseXCd3qDq79sNC
	7t1ocg9KjRVcY5roPqcAm9o=
X-Google-Smtp-Source: APXvYqxuFYqK1LN6IGKdVHO/S2IkfowHQE4bg34eCX7tkc831FkMrle3tZILIQg/z6FqdEfICKIN3Q==
X-Received: by 2002:a65:404b:: with SMTP id h11mr9064150pgp.237.1568898473176;
        Thu, 19 Sep 2019 06:07:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9611:: with SMTP id q17ls1031191pfg.16.gmail; Thu, 19
 Sep 2019 06:07:52 -0700 (PDT)
X-Received: by 2002:a62:3083:: with SMTP id w125mr10363789pfw.102.1568898472746;
        Thu, 19 Sep 2019 06:07:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568898472; cv=none;
        d=google.com; s=arc-20160816;
        b=oQtfy5ao2AX3zQu1jopZREDXAwV8ijR4H/+D0Q1Lxf6WwtnsGSoCJR3QCVG3RkdfBM
         fgWcv97JN07S6Ftq0A1I/9+lPFNTvKG0GUvaTymqeDWcq+MAda9I+jIHtBrNSEKp8T/g
         o/Fmw3gaDFeKn10GbKHVIqfzCQid7PNlDUGEoxfKTr6GRnCIJRdYK/l4rYtGGOHn4uN4
         lt4SFYyJJqiYi4R00ukujMpgiAzHeFx7RqHdt1JPeY1uAvvWoVD08bVLCEEdd7Ta4nKT
         imKUK5ifYZY5gyvku/b/Qr7a2wwHE08RgJRiFujVUyHvTsdrFQQwLC+/K9CtzOw5A0TL
         vkMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=sUUVkGu+Ceh69b78kB0Orr3KUnUxcGbXNxXKR/9l/CA=;
        b=QWP3J4/O1cSoCL97h+jAf2+tVD8SXW2Is3qUZq4/icbHo/eGyEKhPTQjrSNO3BjpQv
         70dIp4Psc7z2e9hB1pVYRVFOumooiQ84+EO1jh/yWgbLnKC9LdMElE1eVQUkfzOQSA/M
         2jZ6lPzmN0nDQg0BNR5Ern9zJ2qLPmpE5hQDMP/x2YTd0bIQ6Q88VgY+E6FGSvGYR0qB
         w99PsnkUOW2vKuSrDAxPtnHz068PZAfCOw/B6yj0LLFKBehI5L679BpIqf8qVNt1CTzu
         +146DNGOhd+2x+hp8uoL8TbRT2eA33zpxPW8IHWg+BqXmS0OaqRTpRg+5VH3O4UkHCVS
         iz3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id q2si717201pgq.3.2019.09.19.06.07.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Sep 2019 06:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2019 06:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; 
   d="gz'50?scan'50,208,50";a="202280658"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2019 06:07:51 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iAwA2-000Eu4-JU; Thu, 19 Sep 2019 21:07:50 +0800
Date: Thu, 19 Sep 2019 21:07:41 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-pb:lkml/utilclamp_mainline_testing 6/18]
 kernel/sched/sched_tp.c:77:22: error: no member named 'cfs_rq' in 'struct
 sched_entity'
Message-ID: <201909192139.iIdk91HA%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5h47leaajuxibvpb"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--5h47leaajuxibvpb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Qais Yousef <qais.yousef@arm.com>
CC: Patrick Bellasi <patrick.bellasi@matbug.net>

tree:   git://linux-arm.org/linux-pb.git lkml/utilclamp_mainline_testing
head:   f4889b4c3fabe850193877e1e009faa1b70cec2d
commit: 06b140c9627c2e3a65d9bf0c04728e2a532a3006 [6/18] sched: add a module to convert tp into events
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 06b140c9627c2e3a65d9bf0c04728e2a532a3006
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/sched/sched_tp.c:77:22: error: no member named 'cfs_rq' in 'struct sched_entity'
                   void *cfs_rq = se->cfs_rq;
                                  ~~  ^
   1 error generated.

vim +77 kernel/sched/sched_tp.c

    72	
    73	static void sched_pelt_se(void *data, struct sched_entity *se)
    74	{
    75		if (trace_sched_pelt_se_enabled()) {
    76			void *gcfs_rq = get_group_cfs_rq(se);
  > 77			void *cfs_rq = se->cfs_rq;
    78			struct task_struct *p;
    79			char path[PATH_SIZE];
    80			char *comm;
    81			pid_t pid;
    82			int cpu;
    83	
    84			sched_trace_cfs_rq_path(gcfs_rq, path, PATH_SIZE);
    85			cpu = sched_trace_cfs_rq_cpu(cfs_rq);
    86	
    87			p = gcfs_rq ? NULL : container_of(se, struct task_struct, se);
    88			comm = p ? p->comm : "(null)";
    89			pid = p ? p->pid : -1;
    90	
    91			trace_sched_pelt_se(cpu, path, comm, pid, &se->avg);
    92		}
    93	}
    94	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909192139.iIdk91HA%25lkp%40intel.com.

--5h47leaajuxibvpb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5h47leaajuxibvpb--
