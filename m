Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2MOSPWQKGQETXUQQ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 395A4D69E0
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 21:07:22 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id p66sf14534960yba.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 12:07:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571080041; cv=pass;
        d=google.com; s=arc-20160816;
        b=WaCI47OOe+c+ySQ3ELROk5M/mfLXmLqm1mXaTtgCvQ2+suFTIKdi8/Zz4ylNY941xf
         utPvT9bhvhlG+gMJweUIokySI01xgKqXvWr5HSNXvru0nEahvx12LCgT81sWgSdOMH91
         mBa72INMqAMBrfgGlUj4X1h/gEQiAfVDTL2Zf5LBb+2L21nfkhhoaOczPsgrquhoEsLu
         JK6zMQLUw+bjfYin8kHzlLzPSZfTNASH2UzrsEG8Hry/3QxNYldqRH+WsxwgTnPikiBE
         Pa5MeMs6F85xJnDE75STNxSZwNVsELTeCd3wqVnKcorSLvZKih3aeVKlQnzoRw3R3ZBc
         rGPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ow/bmOpCbJczNiN4DDMPZ7jjyzCVrQbkfAePmj8s3EM=;
        b=z2T80qTq4Xla+4N4Y0HY6Yveex5VfjNis6lSTgfOrqka49DUE0gMRghJrDgFwblxdS
         iajgE9lnJFO3pcf9TQwyTUk1HkyfIlRg+tUXSBZ6WVU2IUUb1+YL0aH0HXgbBU/2cNFD
         XBk7Hdpfr/KS+C19O4zuCvhS7dO4+NvjMS8nSghpoRH+xor6WhbEi6QNluRu11yUG7u7
         6kEVv6PKRWKZYpN3KX5J0lHZqa/52tdKfY5BGKnmbo0kvpGZ57NtKUJO3maaJnZsOHUa
         JcB729H9SynF4DqfYX4F//Px5RGlrckHVSGPU5KTC9Gi+2YN2qRSleU+k9TBfCjM9BPt
         AqSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ow/bmOpCbJczNiN4DDMPZ7jjyzCVrQbkfAePmj8s3EM=;
        b=YOozNM5jUptW7hZupENllFatD/z2qIYRSHHflpn5g0wRWLbul5NshqYeFWbjUzAZDk
         sz4XrIotvPCnv42m4EJi98GS0cyNwa+kG/0ReUoBt+CjwWcsiJN28/BMD1+kzsYrhl4J
         W6A9zSjsIendWWktEZ5ZM33HlNncVuOg7/t9c+fOe9kuvgcHgOeBlLW1XcpzKAcqYcxh
         gTPMqG+VShsjNnrjgDru9VM3bNMLtdwIbRYa6FNCC0N18dBZXPoFmuFiI87GeAznzCFY
         6kmFEDD27ovAJ6Nf6oX1fwlgZf+jSg9ctrnYu65biZggHsYXXp/n47KQR1J6c6bVmiSJ
         WO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ow/bmOpCbJczNiN4DDMPZ7jjyzCVrQbkfAePmj8s3EM=;
        b=pPROuTzfaG9Lyzrt+WZBkVVpzVtgz4qRLyC5oROZf2s2HZHJahDotFi5BqQzFECMeo
         iowCqSp66mABzdfzd7+BkLIMfCjRQw0bDJugfiV5Wq9ikgACp3tantl+h0TUv8X1ZRN7
         Tn1UWHHUV+Jx+VErew/OvhwuL5AcwYFZcCsx4NaKWQySr/VeMJopYhOWldfts6XkVZQq
         wcNcpdFps9lzcXzlcVwQgsb+VHA7hgyI0EQcjwlhuIQb7QtAa9a4pNIlr68MbETMHP9m
         LoM9ysjSrGEz3QBGfUL9AAWNlPp4DrJz9TWcD0MBmsNJeKfjUCbtyqqbLfHyFPnbwVyR
         Nowg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQnqVzf/nO7GgEi3yvVCxPe92Z8MqXaBoxKTcWuasJo3OgPW9k
	uqSTBaeOFyTHE+soQYpspzQ=
X-Google-Smtp-Source: APXvYqxmm4VnYGbZuPcZHULpdznJGOPW9+/zlwdZqvma/mGatcflbF65zvgs8C/pazXTv9IYiqGLWQ==
X-Received: by 2002:a25:5f01:: with SMTP id t1mr13815156ybb.31.1571080041119;
        Mon, 14 Oct 2019 12:07:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:77c4:: with SMTP id s187ls2613300ywc.7.gmail; Mon, 14
 Oct 2019 12:07:20 -0700 (PDT)
X-Received: by 2002:a81:4320:: with SMTP id q32mr13911464ywa.464.1571080040701;
        Mon, 14 Oct 2019 12:07:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571080040; cv=none;
        d=google.com; s=arc-20160816;
        b=UoKTd4iqKo/AgCqmDKoayxLvPmZ9r8ng5whz+2LAQMFHDf0AwHzEcr2pew7hfwm1pg
         1JReMxlQ7W+hBsfvod+jYQ8grAmeiMhKfScB98bjUZiAm5J1vLcdoNCP/+mSXsSXvpwx
         qALQhdek0/UKDXVAVSfcX6fZYSpXUAtifld4udnpkNoeFgtePn0HyssNTjr4LDEN8k01
         eq7XqagkvTejolCZLt3bCb4Vf4fl930e9JAJuzXFqyYuJifV/WYy9l8n+YCXeQvRYu5a
         lBfNF3x+siPN2uSqzQpOo5RM1IqIR2cG+zDITjBc/OeCVR8PGEOR6bhlpxFUpEMhzP4e
         ChRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=X+WPgPLSzNorjWJqhZ3GFgvls5/nmYHwROll+E7ZjfQ=;
        b=gq3P6ckOCq1z/m0SKKKuips2+7G8HlgVdV230SdaZ0M477YLB3xCjiVKY6lEJCAXEZ
         qblBibaX6zGFFh9wKpyg5pHPhzwFkPjGMRH93QXFxge18mFnPGgRXEdMPJNXN6bMOpGo
         mIxCKrOLIWuJ9ao4SAPjr/RuN1RfXqvwsCN00UtcAyswsGpvXbCwo1/uWWbylu8JTvBb
         PruPBQMBh8dG7ZqR8RtS+bEu44tQMYE6W7DU1IhOXjiP4ut/hAhasp/w8yuDJZ96I+bn
         /2+h5Eocnd1mGR4sl79omYgkhudtKJGASAzV19UzSAXfFG9nRJHQy69FViJrVsUv40r9
         Pt3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id x188si755282ywg.0.2019.10.14.12.07.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Oct 2019 12:07:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2019 12:07:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; 
   d="gz'50?scan'50,208,50";a="225169194"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 14 Oct 2019 12:07:17 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iK5gZ-000DiE-W4; Tue, 15 Oct 2019 03:07:15 +0800
Date: Tue, 15 Oct 2019 03:06:51 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCHv7 15/33] posix-timers: Make clock_nanosleep() time
 namespace aware
Message-ID: <201910150313.JLpd1QLE%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="kshggoy6zsvdahi4"
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


--kshggoy6zsvdahi4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20191011012341.846266-16-dima@arista.com>
References: <20191011012341.846266-16-dima@arista.com>
TO: Dmitry Safonov <dima@arista.com>
CC: linux-kernel@vger.kernel.org
CC: Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>=
, Dmitry Safonov <dima@arista.com>, Adrian Reber <adrian@lisas.de>, Andy Lu=
tomirski <luto@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Christian Braune=
r <christian.brauner@ubuntu.com>, Cyrill Gorcunov <gorcunov@openvz.org>, "E=
ric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>=
, Ingo Molnar <mingo@redhat.com>, Jann Horn <jannh@google.com>, Jeff Dike <=
jdike@addtoit.com>, Oleg Nesterov <oleg@redhat.com>, Pavel Emelyanov <xemul=
@virtuozzo.com>, Shuah Khan <shuah@kernel.org>, Thomas Gleixner <tglx@linut=
ronix.de>, Vincenzo Frascino <vincenzo.frascino@arm.com>, containers@lists.=
linux-foundation.org, criu@openvz.org, linux-api@vger.kernel.org, x86@kerne=
l.org

Hi Dmitry,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.4-rc3 next-20191014]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Dmitry-Safonov/kernel-Intr=
oduce-Time-Namespace/20191014-075119
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 1f5823b788037b=
0dc8c846a22ef6a5a8a0714af7)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/time/posix-stubs.c:153:31: error: use of undeclared identifier 'c=
lockid'
                   texp =3D timens_ktime_to_host(clockid, texp);
                                               ^
   1 error generated.

vim +/clockid +153 kernel/time/posix-stubs.c

   126=09
   127	SYSCALL_DEFINE4(clock_nanosleep, const clockid_t, which_clock, int, =
flags,
   128			const struct __kernel_timespec __user *, rqtp,
   129			struct __kernel_timespec __user *, rmtp)
   130	{
   131		struct timespec64 t;
   132		ktime_t texp;
   133=09
   134		switch (which_clock) {
   135		case CLOCK_REALTIME:
   136		case CLOCK_MONOTONIC:
   137		case CLOCK_BOOTTIME:
   138			break;
   139		default:
   140			return -EINVAL;
   141		}
   142=09
   143		if (get_timespec64(&t, rqtp))
   144			return -EFAULT;
   145		if (!timespec64_valid(&t))
   146			return -EINVAL;
   147		if (flags & TIMER_ABSTIME)
   148			rmtp =3D NULL;
   149		current->restart_block.nanosleep.type =3D rmtp ? TT_NATIVE : TT_NON=
E;
   150		current->restart_block.nanosleep.rmtp =3D rmtp;
   151		texp =3D timespec64_to_ktime(t);
   152		if (flags & TIMER_ABSTIME)
 > 153			texp =3D timens_ktime_to_host(clockid, texp);
   154		return hrtimer_nanosleep(texp, flags & TIMER_ABSTIME ?
   155					 HRTIMER_MODE_ABS : HRTIMER_MODE_REL,
   156					 which_clock);
   157	}
   158=09

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201910150313.JLpd1QLE%25lkp%40intel.com.

--kshggoy6zsvdahi4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--kshggoy6zsvdahi4--
