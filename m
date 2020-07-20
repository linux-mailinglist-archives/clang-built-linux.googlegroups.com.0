Return-Path: <clang-built-linux+bncBAABBFFD2X4AKGQEL4FCPXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E93B2259B2
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 10:11:04 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id 101sf2553147uaf.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 01:11:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595232662; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uu1jkGVXp4teHd8ErVD9hgGbZ1XS77yKxmzQL0vukpuqJn431jh5Ko7/+gCUVoGkx2
         Lay6ylBFTf6zZZENlcpoNLMiCCmKaSiNarxYgCuhvNUgMcWCT0Cl2zFHHcpi4Gj9B08T
         ysWthgL6hEkc0ZurclNvGAMOvrgRxN5f0Lk5aEmW/+cxI/ehD6eFS2Ts61VaiiqCDVYW
         C8lNyFi4p33delWtj153jS3/YyMnWkQAyYRr6Xi8q2B7F8GS9aZuIIyFfcLMLbp66cBt
         6uv1MCtm/Gy/mJKq4z3LyKjMz+4Af5RG4gMLf1+BvDaa5zt+FxUcqqQ+S33EV9vLWrKI
         kT7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:to:cc:in-reply-to:date
         :subject:mime-version:message-id:from:sender:dkim-signature;
        bh=j+uHMGf4nTmluqJJScqp9togLgeqNLe8dgeWZR8lz8A=;
        b=glJPsLYcafdB+W+Y1W28Jtk8Sv75Bv+1M8EN4wzCJ6H4LIfSbb9lAur3uKPKzO9gyv
         DVAFJqy60QcdVCR4Be7Rkqwnyq30yCwuGur/oEYFcCtmlKe7AbZveDbFmhLy4x+qdHVV
         VNIEOBHK61J6o9ptRs+HCJ/6LEpoT3NPmSQ0ckikNfm2Xrpbo5exuwi/SPh0n70UT1ck
         H6JWBnMskqi+d/3HmbLr5FFqbTF4W7dI6LC1Fu39KiK92Pip/pZU++IYjG7Ri4XZM9/o
         5PebucwiUyDOedfoYfGs+4IthLGy78vTy6afPzo2H6Dm31GqQxORMRcOgZd4pS/dHW85
         oIsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 148.163.158.5 is neither permitted nor denied by best guess record for domain of atrajeev@linux.vnet.ibm.com) smtp.mailfrom=atrajeev@linux.vnet.ibm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+uHMGf4nTmluqJJScqp9togLgeqNLe8dgeWZR8lz8A=;
        b=Z9o6dpTdvoqbWkh5uKUWnRS558u6NJRkmkXJfRr7rP+1zgiN8nt3x7vPQ5kTIuBDJh
         exiP+C8iPDFxWkbhiAUTLQa6W6AZASGbPI0/S78SBWEo8DnR7yVpIBxGQQAup/eTrbsT
         3HVTtakm7ycSN4DSwr3ZP42VnxfD93/kPIZG+JBr3Xg9z257SyH+wweKr0zN14ceMIjK
         ZUabi551gzi7t2r89R+IwE6b3GR/Kh5ADglEiL2x6f/3KTfp9Li89sxkC6rJeg1BOqug
         ppuEky5v0ICdzKQJWuV+mtC8+4gSHljYEncPeXqGkj2j71aF0AUDgbk/Z+KB0HuJtioW
         Ahxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+uHMGf4nTmluqJJScqp9togLgeqNLe8dgeWZR8lz8A=;
        b=J37V1YxMi7u76/mChgFpsYwhY0HBS7pXFIEyM8X3Ugpihi5nQhQ5UsgBcbbYPECLB5
         hPEaO268kIO82ldQ9ZsFP8hb9IEF75b+9EXUoth5yMfA3cmydgljeg5y9vJMLl8uVh3N
         8dDml16QMfWYyAllYXGTwwZVIYGBPVNzKC9y2RCJF7JW76vf7dW7qD8fhFtVIYbdq/DT
         U4U4qbhIiLN9ftCEaB9M+5KUOBpgo9iU6g2wfx9KFoqhOftSR2z4fs5U9+u7+0CA9wQf
         wTf/zY4HgquYf0jM1qNXCXzV2kLdp1m2IfGg2HCCMdSsngfVMB+PgTppVL474Pkahz7v
         Xv8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xPoH+9Ke5JlVubczPlEpAM86tTNWXAWpTWE/fVnxyf0Rn4VZg
	4T5GvVQ7tgK1T9sY6Ug8dKI=
X-Google-Smtp-Source: ABdhPJzl+GtJOmsvMjhVEhOftvDZUeSZaxTE4VpD3zndJvFGzZtVyJA0jzFP/2WByOyqNAuQhIBRpA==
X-Received: by 2002:a1f:2ec6:: with SMTP id u189mr15355316vku.46.1595232660796;
        Mon, 20 Jul 2020 01:11:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:21d0:: with SMTP id r16ls582708vsg.0.gmail; Mon, 20
 Jul 2020 01:11:00 -0700 (PDT)
X-Received: by 2002:a67:d88c:: with SMTP id f12mr15262424vsj.92.1595232660456;
        Mon, 20 Jul 2020 01:11:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595232660; cv=none;
        d=google.com; s=arc-20160816;
        b=oydmHMJpd+qg02oSnB+EvbSFl9kgeX6Y82XdbujpWZEvbsYgXsjP9hNueYKMlsWCd7
         oEzZ0oaD0lOpp9OAiFwS1yBZbfPn7EAbO3ps/gPu9PEwCCs9ijLixz0NI25QA7uZ7Kdz
         OC3JWnwZ8QGYIgcbtqzcQKmKkEdKreCklIX0BvzB0UTlMA8tFVEWKieGgxpeG6fSKSoH
         NMtHc7dL0iWdngThtGQyDktF9OmlXAwij7UsISNe6oUBenpUaNv935pgeOf9rZGcs9Aa
         dZQ5SALx15tyqEfP3vzE2bteB3C2fmpLUIvuHB4WBg0BNgDTyvX1HyMckQ7xHf5cx+Et
         Dfvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from;
        bh=stau/O/HvVSpO96rjQWuUxXArusjeTsqjGzJbfhnG6E=;
        b=G00Dta6wHOP9sGDVq/A7pK6zly9dH77WbWZm6477Rp2DJ/JLmYX5kcXn/+vfwVcNuP
         BzUupRNkmUldKFrSNHyH3KUjsFzWwAfNcx4IDkeMn95zem8qI1Y9XXYJs+X1tgHlpVcb
         u3WyEz1svMjWi/pMk3p7Zih/OR9E8X/wk00MvN5NTasZ8SCCV7TkZ0Se63G6udf5f3/B
         6t+vq4bKq2+Z53mf6+oXMJOthQLU3wy9M+RKhDOg7ZJngy9SUx1XN+J0DObiEKfPrd82
         VHY2uYC909IBPLfnXafqXqeKW7WmLB8RY+OfAJDE5cffmRs7tN23mI6w/ujAyWCAiblr
         U0Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 148.163.158.5 is neither permitted nor denied by best guess record for domain of atrajeev@linux.vnet.ibm.com) smtp.mailfrom=atrajeev@linux.vnet.ibm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id q20si946320uas.1.2020.07.20.01.11.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 01:11:00 -0700 (PDT)
Received-SPF: neutral (google.com: 148.163.158.5 is neither permitted nor denied by best guess record for domain of atrajeev@linux.vnet.ibm.com) client-ip=148.163.158.5;
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 06K82vhq031028;
	Mon, 20 Jul 2020 04:10:55 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0b-001b2d01.pphosted.com with ESMTP id 32cea0u2cv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Jul 2020 04:10:55 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 06K853vK011110;
	Mon, 20 Jul 2020 08:09:56 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma03ams.nl.ibm.com with ESMTP id 32brq7jdw5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Jul 2020 08:09:56 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 06K88UPg54919658
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 20 Jul 2020 08:08:30 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 40076A4059;
	Mon, 20 Jul 2020 08:09:54 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EA615A4051;
	Mon, 20 Jul 2020 08:09:49 +0000 (GMT)
Received: from [9.79.219.218] (unknown [9.79.219.218])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Mon, 20 Jul 2020 08:09:49 +0000 (GMT)
From: Athira Rajeev <atrajeev@linux.vnet.ibm.com>
Message-Id: <E9CBA3E7-A31C-44A8-B4F5-42DF58FE21BE@linux.vnet.ibm.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A5551C5C-F653-4A8F-8DFB-D9ACF0D5F7B6"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [v3 12/15] powerpc/perf: Add support for outputting extended regs
 in perf intr_regs
Date: Mon, 20 Jul 2020 13:39:47 +0530
In-Reply-To: <202007191932.4rHY8FD8%lkp@intel.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, ego <ego@linux.vnet.ibm.com>,
        Michael Neuling <mikey@neuling.org>, maddy@linux.vnet.ibm.com,
        kbuild-all@lists.01.org, kvm@vger.kernel.org, kvm-ppc@vger.kernel.org,
        svaidyan@in.ibm.com, clang-built-linux@googlegroups.com,
        acme@kernel.org, jolsa@kernel.org, linuxppc-dev@lists.ozlabs.org
To: kernel test robot <lkp@intel.com>
References: <1594996707-3727-13-git-send-email-atrajeev@linux.vnet.ibm.com>
 <202007191932.4rHY8FD8%lkp@intel.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-20_04:2020-07-17,2020-07-20 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 spamscore=0 malwarescore=0 mlxscore=0 phishscore=0
 adultscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 mlxlogscore=999 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2006250000 definitions=main-2007200060
X-Original-Sender: atrajeev@linux.vnet.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 148.163.158.5 is neither permitted nor denied by best guess
 record for domain of atrajeev@linux.vnet.ibm.com) smtp.mailfrom=atrajeev@linux.vnet.ibm.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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


--Apple-Mail=_A5551C5C-F653-4A8F-8DFB-D9ACF0D5F7B6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"



> On 19-Jul-2020, at 4:47 PM, kernel test robot <lkp@intel.com> wrote:
>=20
> Hi Athira,
>=20
> Thank you for the patch! Yet something to improve:
>=20
> [auto build test ERROR on powerpc/next]
> [also build test ERROR on tip/perf/core v5.8-rc5 next-20200717]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>=20
> url:    https://github.com/0day-ci/linux/commits/Athira-Rajeev/powerpc-pe=
rf-Add-support-for-power10-PMU-Hardware/20200717-224353
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git=
 next
> config: powerpc64-randconfig-r024-20200719 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ed6b=
578040a85977026c93bf4188f996148f3218)
> reproduce (this is a W=3D1 build):
>        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin=
/make.cross -O ~/bin/make.cross
>        chmod +x ~/bin/make.cross
>        # install powerpc64 cross compiling tool for clang build
>        # apt-get install binutils-powerpc64-linux-gnu
>        # save the attached .config to linux build tree
>        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARC=
H=3Dpowerpc64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]
>   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI=
_AC_NORET'
>                   __do_##name al;                                 \
>                   ^~~~~~~~~~~~~~
>   <scratch space>:221:1: note: expanded from here
>   __do_insw
>   ^
>   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_i=
nsw'
>   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), =
(n))
>                                          ~~~~~~~~~~~~~~~~~~~~~^
>   In file included from arch/powerpc/perf/perf_regs.c:10:
>   In file included from include/linux/perf_event.h:57:
>   In file included from include/linux/cgroup.h:26:
>   In file included from include/linux/kernel_stat.h:9:
>   In file included from include/linux/interrupt.h:11:
>   In file included from include/linux/hardirq.h:10:
>   In file included from arch/powerpc/include/asm/hardirq.h:6:
>   In file included from include/linux/irq.h:20:
>   In file included from include/linux/io.h:13:
>   In file included from arch/powerpc/include/asm/io.h:604:
>   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]
>   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI=
_AC_NORET'
>                   __do_##name al;                                 \
>                   ^~~~~~~~~~~~~~
>   <scratch space>:223:1: note: expanded from here
>   __do_insl
>   ^
>   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_i=
nsl'
>   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), =
(n))
>                                          ~~~~~~~~~~~~~~~~~~~~~^
>   In file included from arch/powerpc/perf/perf_regs.c:10:
>   In file included from include/linux/perf_event.h:57:
>   In file included from include/linux/cgroup.h:26:
>   In file included from include/linux/kernel_stat.h:9:
>   In file included from include/linux/interrupt.h:11:
>   In file included from include/linux/hardirq.h:10:
>   In file included from arch/powerpc/include/asm/hardirq.h:6:
>   In file included from include/linux/irq.h:20:
>   In file included from include/linux/io.h:13:
>   In file included from arch/powerpc/include/asm/io.h:604:
>   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]
>   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long =
c),
>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
>   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI=
_AC_NORET'
>                   __do_##name al;                                 \
>                   ^~~~~~~~~~~~~~
>   <scratch space>:225:1: note: expanded from here
>   __do_outsb
>   ^
>   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_o=
utsb'
>   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(=
n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>   In file included from arch/powerpc/perf/perf_regs.c:10:
>   In file included from include/linux/perf_event.h:57:
>   In file included from include/linux/cgroup.h:26:
>   In file included from include/linux/kernel_stat.h:9:
>   In file included from include/linux/interrupt.h:11:
>   In file included from include/linux/hardirq.h:10:
>   In file included from arch/powerpc/include/asm/hardirq.h:6:
>   In file included from include/linux/irq.h:20:
>   In file included from include/linux/io.h:13:
>   In file included from arch/powerpc/include/asm/io.h:604:
>   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]
>   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long =
c),
>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
>   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI=
_AC_NORET'
>                   __do_##name al;                                 \
>                   ^~~~~~~~~~~~~~
>   <scratch space>:227:1: note: expanded from here
>   __do_outsw
>   ^
>   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_o=
utsw'
>   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(=
n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>   In file included from arch/powerpc/perf/perf_regs.c:10:
>   In file included from include/linux/perf_event.h:57:
>   In file included from include/linux/cgroup.h:26:
>   In file included from include/linux/kernel_stat.h:9:
>   In file included from include/linux/interrupt.h:11:
>   In file included from include/linux/hardirq.h:10:
>   In file included from arch/powerpc/include/asm/hardirq.h:6:
>   In file included from include/linux/irq.h:20:
>   In file included from include/linux/io.h:13:
>   In file included from arch/powerpc/include/asm/io.h:604:
>   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]
>   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long =
c),
>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
>   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI=
_AC_NORET'
>                   __do_##name al;                                 \
>                   ^~~~~~~~~~~~~~
>   <scratch space>:229:1: note: expanded from here
>   __do_outsl
>   ^
>   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_o=
utsl'
>   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(=
n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>>> arch/powerpc/perf/perf_regs.c:16:5: error: expected identifier or '('
>   u64 PERF_REG_EXTENDED_MASK;
>       ^
>   include/linux/perf_regs.h:16:32: note: expanded from macro 'PERF_REG_EX=
TENDED_MASK'
>   #define PERF_REG_EXTENDED_MASK  0
>                                   ^
>   12 warnings and 1 error generated.
>=20
> vim +16 arch/powerpc/perf/perf_regs.c
>=20
>    15=09
>> 16	u64 PERF_REG_EXTENDED_MASK;
>    17=09

Hi,

This patch defines PERF_REG_EXTENDED_MASK
in arch/powerpc/include/asm/perf_event_server.h and this header file is inc=
luded conditionally based on
CONFIG_PPC_PERF_CTRS in arch/powerpc/include/asm/perf_event.h.
So build breaks happens with config having CONFIG_PERF_EVENTS set
and without CONFIG_PPC_PERF_CTRS.=20

This will be fixed by defining PERF_REG_EXTENDED_MASK in perf_event.h as be=
low:

=E2=80=94
diff --git a/arch/powerpc/include/asm/perf_event.h b/arch/powerpc/include/a=
sm/perf_event.h
index eed3954082fa..b1c3a91aa6fa 100644
--- a/arch/powerpc/include/asm/perf_event.h
+++ b/arch/powerpc/include/asm/perf_event.h
@@ -38,4 +38,6 @@
=20
 /* To support perf_regs sier update */
 extern bool is_sier_available(void);
+extern u64 PERF_REG_EXTENDED_MASK;
+#define PERF_REG_EXTENDED_MASK	PERF_REG_EXTENDED_MASK
 #endif
diff --git a/arch/powerpc/include/asm/perf_event_server.h b/arch/powerpc/in=
clude/asm/perf_event_server.h
index bf85d1a0b59e..5d368e81445f 100644
--- a/arch/powerpc/include/asm/perf_event_server.h
+++ b/arch/powerpc/include/asm/perf_event_server.h
@@ -15,9 +15,6 @@
 #define MAX_EVENT_ALTERNATIVES	8
 #define MAX_LIMITED_HWCOUNTERS	2
=20
-extern u64 PERF_REG_EXTENDED_MASK;
-#define PERF_REG_EXTENDED_MASK	PERF_REG_EXTENDED_MASK
-
 struct perf_event;
=20
 struct mmcr_regs {
=E2=80=94

We also need this patch by Madhavan Sirinivasan : https://patchwork.ozlabs.=
org/project/linuxppc-dev/list/?series=3D183203
to solve similar build break with `is_sier_available`

Thanks
Athira=20

>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> <.config.gz>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/E9CBA3E7-A31C-44A8-B4F5-42DF58FE21BE%40linux.vnet.ibm.com=
.

--Apple-Mail=_A5551C5C-F653-4A8F-8DFB-D9ACF0D5F7B6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D""><br class=3D""><div><br cl=
ass=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On 19-Jul-202=
0, at 4:47 PM, kernel test robot &lt;<a href=3D"mailto:lkp@intel.com" class=
=3D"">lkp@intel.com</a>&gt; wrote:</div><br class=3D"Apple-interchange-newl=
ine"><div class=3D""><div class=3D"">Hi Athira,<br class=3D""><br class=3D"=
">Thank you for the patch! Yet something to improve:<br class=3D""><br clas=
s=3D"">[auto build test ERROR on powerpc/next]<br class=3D"">[also build te=
st ERROR on tip/perf/core v5.8-rc5 next-20200717]<br class=3D"">[If your pa=
tch is applied to the wrong git tree, kindly drop us a note.<br class=3D"">=
And when submitting patch, we suggest to use '--base' as documented in<br c=
lass=3D""><a href=3D"https://git-scm.com/docs/git-format-patch" class=3D"">=
https://git-scm.com/docs/git-format-patch</a>]<br class=3D""><br class=3D""=
>url: &nbsp;&nbsp;&nbsp;<a href=3D"https://github.com/0day-ci/linux/commits=
/Athira-Rajeev/powerpc-perf-Add-support-for-power10-PMU-Hardware/20200717-2=
24353" class=3D"">https://github.com/0day-ci/linux/commits/Athira-Rajeev/po=
werpc-perf-Add-support-for-power10-PMU-Hardware/20200717-224353</a><br clas=
s=3D"">base: &nbsp;&nbsp;<a href=3D"https://git.kernel.org/pub/scm/linux/ke=
rnel/git/powerpc/linux.git" class=3D"">https://git.kernel.org/pub/scm/linux=
/kernel/git/powerpc/linux.git</a> next<br class=3D"">config: powerpc64-rand=
config-r024-20200719 (attached as .config)<br class=3D"">compiler: clang ve=
rsion 12.0.0 (<a href=3D"https://github.com/llvm/llvm-project" class=3D"">h=
ttps://github.com/llvm/llvm-project</a> ed6b578040a85977026c93bf4188f996148=
f3218)<br class=3D"">reproduce (this is a W=3D1 build):<br class=3D""> &nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wget <a href=3D"https://raw.githubuse=
rcontent.com/intel/lkp-tests/master/sbin/make.cross" class=3D"">https://raw=
.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross</a> -O ~/bin/=
make.cross<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;chmod +=
x ~/bin/make.cross<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;# install powerpc64 cross compiling tool for clang build<br class=3D""> &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# apt-get install binutils-powerpc6=
4-linux-gnu<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# save=
 the attached .config to linux build tree<br class=3D""> &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang=
 make.cross ARCH=3Dpowerpc64 <br class=3D""><br class=3D"">If you fix the i=
ssue, kindly add following tag as appropriate<br class=3D"">Reported-by: ke=
rnel test robot &lt;<a href=3D"mailto:lkp@intel.com" class=3D"">lkp@intel.c=
om</a>&gt;<br class=3D""><br class=3D"">All errors (new ones prefixed by &g=
t;&gt;):<br class=3D""><br class=3D""> &nbsp;&nbsp;arch/powerpc/include/asm=
/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer h=
as undefined behavior [-Wnull-pointer-arithmetic]<br class=3D""> &nbsp;&nbs=
p;DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),<br cl=
ass=3D""> &nbsp;&nbsp;^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~<br class=3D""> &nbsp;&nbsp;arch/powerpc/include/asm/io.h:601=
:3: note: expanded from macro 'DEF_PCI_AC_NORET'<br class=3D""> &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;__do_##name al; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;\<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^~~~~~~~~~~~~~<br cl=
ass=3D""> &nbsp;&nbsp;&lt;scratch space&gt;:221:1: note: expanded from here=
<br class=3D""> &nbsp;&nbsp;__do_insw<br class=3D""> &nbsp;&nbsp;^<br class=
=3D""> &nbsp;&nbsp;arch/powerpc/include/asm/io.h:542:56: note: expanded fro=
m macro '__do_insw'<br class=3D""> &nbsp;&nbsp;#define __do_insw(p, b, n) &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))<br=
 class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~~~~~~~~~~~~~~~~~~~~~^<br class=3D""> &nb=
sp;&nbsp;In file included from arch/powerpc/perf/perf_regs.c:10:<br class=
=3D""> &nbsp;&nbsp;In file included from include/linux/perf_event.h:57:<br =
class=3D""> &nbsp;&nbsp;In file included from include/linux/cgroup.h:26:<br=
 class=3D""> &nbsp;&nbsp;In file included from include/linux/kernel_stat.h:=
9:<br class=3D""> &nbsp;&nbsp;In file included from include/linux/interrupt=
.h:11:<br class=3D""> &nbsp;&nbsp;In file included from include/linux/hardi=
rq.h:10:<br class=3D""> &nbsp;&nbsp;In file included from arch/powerpc/incl=
ude/asm/hardirq.h:6:<br class=3D""> &nbsp;&nbsp;In file included from inclu=
de/linux/irq.h:20:<br class=3D""> &nbsp;&nbsp;In file included from include=
/linux/io.h:13:<br class=3D""> &nbsp;&nbsp;In file included from arch/power=
pc/include/asm/io.h:604:<br class=3D""> &nbsp;&nbsp;arch/powerpc/include/as=
m/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer =
has undefined behavior [-Wnull-pointer-arithmetic]<br class=3D""> &nbsp;&nb=
sp;DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),<br c=
lass=3D""> &nbsp;&nbsp;^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~<br class=3D""> &nbsp;&nbsp;arch/powerpc/include/asm/io.h:60=
1:3: note: expanded from macro 'DEF_PCI_AC_NORET'<br class=3D""> &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;__do_##name al; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;\<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^~~~~~~~~~~~~~<br c=
lass=3D""> &nbsp;&nbsp;&lt;scratch space&gt;:223:1: note: expanded from her=
e<br class=3D""> &nbsp;&nbsp;__do_insl<br class=3D""> &nbsp;&nbsp;^<br clas=
s=3D""> &nbsp;&nbsp;arch/powerpc/include/asm/io.h:543:56: note: expanded fr=
om macro '__do_insl'<br class=3D""> &nbsp;&nbsp;#define __do_insl(p, b, n) =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))<b=
r class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~~~~~~~~~~~~~~~~~~~~~^<br class=3D""> &n=
bsp;&nbsp;In file included from arch/powerpc/perf/perf_regs.c:10:<br class=
=3D""> &nbsp;&nbsp;In file included from include/linux/perf_event.h:57:<br =
class=3D""> &nbsp;&nbsp;In file included from include/linux/cgroup.h:26:<br=
 class=3D""> &nbsp;&nbsp;In file included from include/linux/kernel_stat.h:=
9:<br class=3D""> &nbsp;&nbsp;In file included from include/linux/interrupt=
.h:11:<br class=3D""> &nbsp;&nbsp;In file included from include/linux/hardi=
rq.h:10:<br class=3D""> &nbsp;&nbsp;In file included from arch/powerpc/incl=
ude/asm/hardirq.h:6:<br class=3D""> &nbsp;&nbsp;In file included from inclu=
de/linux/irq.h:20:<br class=3D""> &nbsp;&nbsp;In file included from include=
/linux/io.h:13:<br class=3D""> &nbsp;&nbsp;In file included from arch/power=
pc/include/asm/io.h:604:<br class=3D""> &nbsp;&nbsp;arch/powerpc/include/as=
m/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer =
has undefined behavior [-Wnull-pointer-arithmetic]<br class=3D""> &nbsp;&nb=
sp;DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c=
),<br class=3D""> &nbsp;&nbsp;^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br class=3D""> &nbsp;&nbsp;arch/powerpc/inclu=
de/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'<br class=3D=
""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;__do_##name al; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;\<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^~~~~=
~~~~~~~~~<br class=3D""> &nbsp;&nbsp;&lt;scratch space&gt;:225:1: note: exp=
anded from here<br class=3D""> &nbsp;&nbsp;__do_outsb<br class=3D""> &nbsp;=
&nbsp;^<br class=3D""> &nbsp;&nbsp;arch/powerpc/include/asm/io.h:544:58: no=
te: expanded from macro '__do_outsb'<br class=3D""> &nbsp;&nbsp;#define __d=
o_outsb(p, b, n) &nbsp;&nbsp;&nbsp;&nbsp;writesb((PCI_IO_ADDR)_IO_BASE+(p),=
(b),(n))<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~~~~~~~~~~~~~~~~~~~~~^<b=
r class=3D""> &nbsp;&nbsp;In file included from arch/powerpc/perf/perf_regs=
.c:10:<br class=3D""> &nbsp;&nbsp;In file included from include/linux/perf_=
event.h:57:<br class=3D""> &nbsp;&nbsp;In file included from include/linux/=
cgroup.h:26:<br class=3D""> &nbsp;&nbsp;In file included from include/linux=
/kernel_stat.h:9:<br class=3D""> &nbsp;&nbsp;In file included from include/=
linux/interrupt.h:11:<br class=3D""> &nbsp;&nbsp;In file included from incl=
ude/linux/hardirq.h:10:<br class=3D""> &nbsp;&nbsp;In file included from ar=
ch/powerpc/include/asm/hardirq.h:6:<br class=3D""> &nbsp;&nbsp;In file incl=
uded from include/linux/irq.h:20:<br class=3D""> &nbsp;&nbsp;In file includ=
ed from include/linux/io.h:13:<br class=3D""> &nbsp;&nbsp;In file included =
from arch/powerpc/include/asm/io.h:604:<br class=3D""> &nbsp;&nbsp;arch/pow=
erpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on =
a null pointer has undefined behavior [-Wnull-pointer-arithmetic]<br class=
=3D""> &nbsp;&nbsp;DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b,=
 unsigned long c),<br class=3D""> &nbsp;&nbsp;^~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br class=3D""> &nbsp;&nbsp;ar=
ch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NO=
RET'<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;__do_##name al; &nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<br class=3D""> &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;^~~~~~~~~~~~~~<br class=3D""> &nbsp;&nbsp;&lt;scratch space&gt;:=
227:1: note: expanded from here<br class=3D""> &nbsp;&nbsp;__do_outsw<br cl=
ass=3D""> &nbsp;&nbsp;^<br class=3D""> &nbsp;&nbsp;arch/powerpc/include/asm=
/io.h:545:58: note: expanded from macro '__do_outsw'<br class=3D""> &nbsp;&=
nbsp;#define __do_outsw(p, b, n) &nbsp;&nbsp;&nbsp;&nbsp;writesw((PCI_IO_AD=
DR)_IO_BASE+(p),(b),(n))<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~~~~~~~~=
~~~~~~~~~~~~~^<br class=3D""> &nbsp;&nbsp;In file included from arch/powerp=
c/perf/perf_regs.c:10:<br class=3D""> &nbsp;&nbsp;In file included from inc=
lude/linux/perf_event.h:57:<br class=3D""> &nbsp;&nbsp;In file included fro=
m include/linux/cgroup.h:26:<br class=3D""> &nbsp;&nbsp;In file included fr=
om include/linux/kernel_stat.h:9:<br class=3D""> &nbsp;&nbsp;In file includ=
ed from include/linux/interrupt.h:11:<br class=3D""> &nbsp;&nbsp;In file in=
cluded from include/linux/hardirq.h:10:<br class=3D""> &nbsp;&nbsp;In file =
included from arch/powerpc/include/asm/hardirq.h:6:<br class=3D""> &nbsp;&n=
bsp;In file included from include/linux/irq.h:20:<br class=3D""> &nbsp;&nbs=
p;In file included from include/linux/io.h:13:<br class=3D""> &nbsp;&nbsp;I=
n file included from arch/powerpc/include/asm/io.h:604:<br class=3D""> &nbs=
p;&nbsp;arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointe=
r arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arith=
metic]<br class=3D""> &nbsp;&nbsp;DEF_PCI_AC_NORET(outsl, (unsigned long p,=
 const void *b, unsigned long c),<br class=3D""> &nbsp;&nbsp;^~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br class=3D"">=
 &nbsp;&nbsp;arch/powerpc/include/asm/io.h:601:3: note: expanded from macro=
 'DEF_PCI_AC_NORET'<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;__do_##=
name al; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<br class=3D""> &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;^~~~~~~~~~~~~~<br class=3D""> &nbsp;&nbsp;&lt;scr=
atch space&gt;:229:1: note: expanded from here<br class=3D""> &nbsp;&nbsp;_=
_do_outsl<br class=3D""> &nbsp;&nbsp;^<br class=3D""> &nbsp;&nbsp;arch/powe=
rpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'<br clas=
s=3D""> &nbsp;&nbsp;#define __do_outsl(p, b, n) &nbsp;&nbsp;&nbsp;&nbsp;wri=
tesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))<br class=3D""> &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;~~~~~~~~~~~~~~~~~~~~~^<br class=3D""><blockquote type=3D"cite" class=
=3D""><blockquote type=3D"cite" class=3D"">arch/powerpc/perf/perf_regs.c:16=
:5: error: expected identifier or '('<br class=3D""></blockquote></blockquo=
te> &nbsp;&nbsp;u64 PERF_REG_EXTENDED_MASK;<br class=3D""> &nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;^<br class=3D""> &nbsp;&nbsp;include/linux/perf_regs.h:=
16:32: note: expanded from macro 'PERF_REG_EXTENDED_MASK'<br class=3D""> &n=
bsp;&nbsp;#define PERF_REG_EXTENDED_MASK &nbsp;0<br class=3D""> &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^<br class=3D""> &nbsp;&nbsp;12 =
warnings and 1 error generated.<br class=3D""><br class=3D"">vim +16 arch/p=
owerpc/perf/perf_regs.c<br class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;15<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><br class=
=3D""><blockquote type=3D"cite" class=3D"">16<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>u64 PERF_REG_EXTENDED_MASK;<br class=3D"=
"></blockquote> &nbsp;&nbsp;&nbsp;17<span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span><br class=3D""></div></div></blockquote><div><br =
class=3D""></div><div>Hi,</div><div><br class=3D""></div><div><span style=
=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">This patch =
defines&nbsp;</span>PERF_REG_EXTENDED_MASK</div><div>in arch/powerpc/includ=
e/asm/perf_event_server.h and this header file is included conditionally ba=
sed on</div><div>CONFIG_PPC_PERF_CTRS in arch/powerpc/include/asm/perf_even=
t.h.</div><div><div>So build breaks happens with config having&nbsp;<span s=
tyle=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">CONFIG_=
PERF_EVENTS set</span></div><div><font color=3D"#000000" class=3D"">and wit=
hout&nbsp;</font><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0,=
 0);" class=3D"">CONFIG_PPC_PERF_CTRS.&nbsp;</span></div><div><span style=
=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br class=
=3D""></span></div><div><span style=3D"caret-color: rgb(0, 0, 0); color: rg=
b(0, 0, 0);" class=3D"">This will be fixed by defining&nbsp;</span><span st=
yle=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">PERF_REG=
_EXTENDED_MASK in&nbsp;</span><span style=3D"caret-color: rgb(0, 0, 0); col=
or: rgb(0, 0, 0);" class=3D"">perf_event.h as below:</span></div><div><span=
 style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D""><br c=
lass=3D""></span></div><div><font color=3D"#000000" class=3D""><span style=
=3D"caret-color: rgb(0, 0, 0);" class=3D"">=E2=80=94</span></font></div><di=
v><div style=3D"margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;;" class=3D"">diff --git a/arch/powerpc=
/include/asm/perf_event.h b/arch/powerpc/include/asm/perf_event.h</div><div=
 style=3D"margin: 0px; font-stretch: normal; line-height: normal; font-fami=
ly: &quot;Helvetica Neue&quot;;" class=3D"">index eed3954082fa..b1c3a91aa6f=
a 100644</div><div style=3D"margin: 0px; font-stretch: normal; line-height:=
 normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"">--- a/arch/po=
werpc/include/asm/perf_event.h</div><div style=3D"margin: 0px; font-stretch=
: normal; line-height: normal; font-family: &quot;Helvetica Neue&quot;;" cl=
ass=3D"">+++ b/arch/powerpc/include/asm/perf_event.h</div><div style=3D"mar=
gin: 0px; font-stretch: normal; line-height: normal; font-family: &quot;Hel=
vetica Neue&quot;;" class=3D"">@@ -38,4 +38,6 @@</div><p style=3D"margin: 0=
px; font-stretch: normal; line-height: normal; font-family: &quot;Helvetica=
 Neue&quot;; min-height: 14px;" class=3D"">&nbsp;<br class=3D"webkit-block-=
placeholder"></p><div style=3D"margin: 0px; font-stretch: normal; line-heig=
ht: normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"">&nbsp;/* T=
o support perf_regs sier update */</div><div style=3D"margin: 0px; font-str=
etch: normal; line-height: normal; font-family: &quot;Helvetica Neue&quot;;=
" class=3D"">&nbsp;extern bool is_sier_available(void);</div><div style=3D"=
margin: 0px; font-stretch: normal; line-height: normal; font-family: &quot;=
Helvetica Neue&quot;;" class=3D"">+extern u64 PERF_REG_EXTENDED_MASK;</div>=
<div style=3D"margin: 0px; font-stretch: normal; line-height: normal; font-=
family: &quot;Helvetica Neue&quot;;" class=3D"">+#define PERF_REG_EXTENDED_=
MASK<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>PERF_R=
EG_EXTENDED_MASK</div><div style=3D"margin: 0px; font-stretch: normal; line=
-height: normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"">&nbsp=
;#endif</div><div style=3D"margin: 0px; font-stretch: normal; line-height: =
normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"">diff --git a/a=
rch/powerpc/include/asm/perf_event_server.h b/arch/powerpc/include/asm/perf=
_event_server.h</div><div style=3D"margin: 0px; font-stretch: normal; line-=
height: normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"">index =
bf85d1a0b59e..5d368e81445f 100644</div><div style=3D"margin: 0px; font-stre=
tch: normal; line-height: normal; font-family: &quot;Helvetica Neue&quot;;"=
 class=3D"">--- a/arch/powerpc/include/asm/perf_event_server.h</div><div st=
yle=3D"margin: 0px; font-stretch: normal; line-height: normal; font-family:=
 &quot;Helvetica Neue&quot;;" class=3D"">+++ b/arch/powerpc/include/asm/per=
f_event_server.h</div><div style=3D"margin: 0px; font-stretch: normal; line=
-height: normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"">@@ -1=
5,9 +15,6 @@</div><div style=3D"margin: 0px; font-stretch: normal; line-hei=
ght: normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"">&nbsp;#de=
fine MAX_EVENT_ALTERNATIVES<span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>8</div><div style=3D"margin: 0px; font-stretch: normal; li=
ne-height: normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"">&nb=
sp;#define MAX_LIMITED_HWCOUNTERS<span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre">	</span>2</div><p style=3D"margin: 0px; font-stretch: normal=
; line-height: normal; font-family: &quot;Helvetica Neue&quot;; min-height:=
 14px;" class=3D"">&nbsp;<br class=3D"webkit-block-placeholder"></p><div st=
yle=3D"margin: 0px; font-stretch: normal; line-height: normal; font-family:=
 &quot;Helvetica Neue&quot;;" class=3D"">-extern u64 PERF_REG_EXTENDED_MASK=
;</div><div style=3D"margin: 0px; font-stretch: normal; line-height: normal=
; font-family: &quot;Helvetica Neue&quot;;" class=3D"">-#define PERF_REG_EX=
TENDED_MASK<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>PERF_REG_EXTENDED_MASK</div><div style=3D"margin: 0px; font-stretch: norma=
l; line-height: normal; font-family: &quot;Helvetica Neue&quot;;" class=3D"=
">-</div><div style=3D"margin: 0px; font-stretch: normal; line-height: norm=
al; font-family: &quot;Helvetica Neue&quot;;" class=3D"">&nbsp;struct perf_=
event;</div><p style=3D"margin: 0px; font-stretch: normal; line-height: nor=
mal; font-family: &quot;Helvetica Neue&quot;; min-height: 14px;" class=3D""=
>&nbsp;<br class=3D"webkit-block-placeholder"></p><div style=3D"margin: 0px=
; font-stretch: normal; line-height: normal; font-family: &quot;Helvetica N=
eue&quot;;" class=3D"">&nbsp;struct mmcr_regs {</div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: &quot;Helvetic=
a Neue&quot;;" class=3D"">=E2=80=94</div><div style=3D"margin: 0px; font-st=
retch: normal; line-height: normal; font-family: &quot;Helvetica Neue&quot;=
;" class=3D""><br class=3D""></div></div><div><span style=3D"caret-color: r=
gb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">We also need this patch by Ma=
dhavan Sirinivasan :&nbsp;</span><font color=3D"#000000" class=3D""><span s=
tyle=3D"caret-color: rgb(0, 0, 0);" class=3D""><a href=3D"https://patchwork=
.ozlabs.org/project/linuxppc-dev/list/?series=3D183203" class=3D"">https://=
patchwork.ozlabs.org/project/linuxppc-dev/list/?series=3D183203</a></span><=
/font></div><div><font color=3D"#000000" class=3D"">to solve similar build =
break with `is_sier_available`</font></div></div><div><br class=3D""></div>=
<div>Thanks</div><div>Athira&nbsp;</div><br class=3D""><blockquote type=3D"=
cite" class=3D""><div class=3D""><div class=3D""><br class=3D"">---<br clas=
s=3D"">0-DAY CI Kernel Test Service, Intel Corporation<br class=3D""><a hre=
f=3D"https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org" class=3D=
"">https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org</a><br clas=
s=3D""><span id=3D"cid:61136650-2C38-4F4C-81B9-B38529B45A87">&lt;.config.gz=
&gt;</span></div></div></blockquote></div><br class=3D""></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/E9CBA3E7-A31C-44A8-B4F5-42DF58FE21BE%40linux.v=
net.ibm.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.c=
om/d/msgid/clang-built-linux/E9CBA3E7-A31C-44A8-B4F5-42DF58FE21BE%40linux.v=
net.ibm.com</a>.<br />

--Apple-Mail=_A5551C5C-F653-4A8F-8DFB-D9ACF0D5F7B6--

