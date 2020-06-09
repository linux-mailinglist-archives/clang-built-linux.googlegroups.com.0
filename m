Return-Path: <clang-built-linux+bncBDZYPUPHYEJBB7VX7P3AKGQES7NNRYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 038131F2EE6
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 02:46:55 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id x27sf6280051lfq.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 17:46:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591663614; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDXYf5JFEB5gCu9gIxVhqVi1Dsin7g2Gqr2adpPfDmbfLqiRBlaN5PuwZrBzDqw/CB
         6cSePNVttrINhCLpumPzFNFTjj7IFgu+J0P4lDIGV1NPGSB2Ef19Fr0VlWCMfj32vpLA
         QczfFQ6KedvDXNHorSK6+rCI8HRfTOtRa18XJx9sHYfsDECEJeKdClwNk8yNUqxn/F7m
         yQucOSaqXCWP/YB8fIQYA9YJythG6eKUoNNSFHvpy6n45g/PT/QOfUCjkCTthve/zBWl
         bFXhgmjuUkkkA6hVx3v9fncOslrSEjg12khWckEYhudI5Xe4ErxINV1MVO7zasOmV8bR
         +9Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ShlGXifNGPRx7xraBvMl69mmXLdAHRZPYIXQYNQB23o=;
        b=n+MmL34eOl+2y++fPyS1DPbtN6S4SefaQvva0VS/bBA9xy8GZK5fSp6nxraULVubQv
         ogkUTndlgW5xPP0ua7wS0TddHrqxQXBbYvKj/v5JCu+fQk9D4N1bIf/aPuzanxb+l949
         gBQO8Zgj+A8FSWm9zKdvm6wmIIQv1Lq6dLGYbwoJdO+5TObj3DayiV+zUO+iH+Mjlhlt
         /B6ppoc4P1HF7IGxdZkNFnCRwu+I+OqB+9f3AeI+4U39XmV5Gg0z/Ff/Gi0GpFyWySHY
         XM1XGsAzimlv8rTZKXbnfG7rlsxq98t3lD25U6CzSAzmkyxgyf2gFN7QlqIPrgLA1+df
         9N8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=Fq2WqHVe;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ShlGXifNGPRx7xraBvMl69mmXLdAHRZPYIXQYNQB23o=;
        b=n6FDb+LLSgJVuJnp31jB+YL6cMPOK74Z0oXy3ayfmR02Q9FkDjwLtp3kqhTb5wnFn3
         ab3tVEI/66ZV62QfIQchn9u42AkduYfmZGSMqYtxFXxV2Ru9t/fYOSBRC2NtzAQKFGj/
         tDAf2lkj4mD3vYFImnqBh7yvU1bfO2WRNDrTiu3vUjZnREeB1W7xkz+eIGuh/KULvUar
         2c1TCJS+g0X44USjIaa81US6+6cnBU4wzORSUliCApjti/SLV2OWdDFRNo1n4b9WG+KH
         SIIflT8o43eK9sZ7F8lBAt1qiF8CV6FnnYPGXG3r9Sa0U9TPP0T4Cm6a5jXOYeqJHo72
         OUdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ShlGXifNGPRx7xraBvMl69mmXLdAHRZPYIXQYNQB23o=;
        b=jb8vbYwmcI1PYBJGzwmGyLe0ecGSTOr92oWMo842sl/HR2ABTstviHR1mfaOPf8tw7
         u0Z2oMC0Nw03l5L7xttlFC8so3D4jEH4rEvz9ipArbi/D8ElHExZDPLvJiFDHBgvbsWd
         CcvnUDmhEqND37aj/uY1AiBuhjuuXwgQFkT58xpGhFAjFFAPeC8gcEGfsjZhAcW5QBRu
         C39tuzkUXOlJ+Ttb+CBSOyZRGb4IkQ5TlhGPYHJzs+SxpZUZC+oy9IEgKyWK0Rx3BeYe
         T3bs2sMnCjxmoFxjFwVNngsXoaCCKnIWXwmuaoXoK1F42W+YwTEjgnWgvaFf8usLoq10
         5+TA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mCXUFzjMpOdGQIzBPumyZ8A6/z827YDFk/jMZ2pZkGUe7vQgG
	bThAHMvi2+xFKxn8O90Waoo=
X-Google-Smtp-Source: ABdhPJxyjeRAW2Vomn8WRz5bRT8SR0ZLau4yQrdcAr41huF1IzFp3da9Uwv7fhicZDeQg2Y5WvFu+Q==
X-Received: by 2002:ac2:55b2:: with SMTP id y18mr14068039lfg.55.1591663614433;
        Mon, 08 Jun 2020 17:46:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9597:: with SMTP id w23ls998604ljh.8.gmail; Mon, 08 Jun
 2020 17:46:53 -0700 (PDT)
X-Received: by 2002:a05:651c:1a2:: with SMTP id c2mr12432682ljn.299.1591663613700;
        Mon, 08 Jun 2020 17:46:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591663613; cv=none;
        d=google.com; s=arc-20160816;
        b=ifQ0V25J4I0QeBeOmDW19bj31MkwADsraSYUGOpmRFfq1MFzeXydrIF+kz2zquJM4I
         8OujdPgi2pajGR1zZCnKe089d1u+XPHkfBW0AhpAyhnpkQ8JoRtCZn1WaF1P2y+kKsBv
         VstK6cKzO1Pqtp0kgWJVY5vKT1bUcJfAl5BT7NPd/3Oa2ngweejJuZINZCMmXGTViDSf
         0fvlZbwpgJ1wYNXd/nDPNCRn5UeEUv7HbpGEJs1ux0ry9RaPrIk+QGGFw4HaydzIq6qt
         fXFyddME4HqlYHhBHwFvu7RmCvDHIhw3/B+Kptqte9cZMuVJ17w0FzGkIA3CebDfp06Q
         aY2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6zCH4n2iYndxCImQUVO1t9gw8KAnucClc8TKaXcz6VE=;
        b=jLt0gF5aK4XeHImjUps7Ka3U18FTxOAjBDmkf+j9epEjCZyCy9snO47/R12b/7a+Vj
         ZZ8PxLILBI0D19F5TxQJRU+0a8qV1dVEJ5nNxu94B/81o6o1R/54nXUjol+LknasOReG
         P1NUIMRKb72brW5mF02w2CS0Bs7Ptpms6MzquLkZUPr5AJJhXBzzDgLM9UWs5iqOIBi0
         S6Rmmbcbe9TyKB/gqvW2H32jhfStPi5N9T8ypgJfVLbsNh2wOOGUzP3Op64tU2YysfB0
         fghmBX2mRGedzVCpSafmGmQ6qgtzo0WJvfdzMY7VrDARNvMINU+rt81nitdR9k7l+0v0
         aoCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=Fq2WqHVe;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 130si552855lfi.3.2020.06.08.17.46.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 17:46:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id m21so14920798eds.13
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 17:46:53 -0700 (PDT)
X-Received: by 2002:a50:eb0c:: with SMTP id y12mr23805262edp.165.1591663613143;
 Mon, 08 Jun 2020 17:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200607131339.476036-6-vaibhav@linux.ibm.com> <202006090059.o4CE5D9b%lkp@intel.com>
In-Reply-To: <202006090059.o4CE5D9b%lkp@intel.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 8 Jun 2020 17:46:42 -0700
Message-ID: <CAPcyv4iQo_xgRGPx_j+RPzgWGZaigGRbc_kRzKEFePfVHenx5g@mail.gmail.com>
Subject: Re: [PATCH v11 5/6] ndctl/papr_scm,uapi: Add support for PAPR nvdimm
 specific methods
To: kernel test robot <lkp@intel.com>
Cc: Vaibhav Jain <vaibhav@linux.ibm.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	linux-nvdimm <linux-nvdimm@lists.01.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	"Oliver O'Halloran" <oohall@gmail.com>, Santosh Sivaraj <santosh@fossix.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=Fq2WqHVe;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Jun 8, 2020 at 5:16 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Vaibhav,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on powerpc/next]
> [also build test WARNING on linus/master v5.7 next-20200605]
> [cannot apply to linux-nvdimm/libnvdimm-for-next scottwood/next]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Jain/powerpc-papr_scm-Add-support-for-reporting-nvdimm-health/20200607-211653
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
> config: powerpc-randconfig-r016-20200607 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> In file included from <built-in>:1:
> >> ./usr/include/asm/papr_pdsm.h:69:20: warning: field 'hdr' with variable sized type 'struct nd_cmd_pkg' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
> struct nd_cmd_pkg hdr;  /* Package header containing sub-cmd */

Hi Vaibhav,

This looks like it's going to need another round to get this fixed. I
don't think 'struct nd_pdsm_cmd_pkg' should embed a definition of
'struct nd_cmd_pkg'. An instance of 'struct nd_cmd_pkg' carries a
payload that is the 'pdsm' specifics. As the code has it now it's
defined as a superset of 'struct nd_cmd_pkg' and the compiler warning
is pointing out a real 'struct' organization problem.

Given the soak time needed in -next after the code is finalized this
there's no time to do another round of updates and still make the v5.8
merge window.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4iQo_xgRGPx_j%2BRPzgWGZaigGRbc_kRzKEFePfVHenx5g%40mail.gmail.com.
