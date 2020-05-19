Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4XRSD3AKGQEZOIU33A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6BE1DA156
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 21:52:19 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id n14sf588768pgr.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 12:52:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589917938; cv=pass;
        d=google.com; s=arc-20160816;
        b=MDAK37fKyyCfMv6ByUaHU7n7Frw8eMb0JDuE8/SrCYVftDvzFFcFCG8czLJikDVjH9
         iTufULX10qZnrkQLNI9+IIZi3V9QrXDDoPlwvVpl2XMypEGqHDoQlQZjBC5QK0diloFG
         SNqLVkhK2MiSLF8bg3zXzpOOEnVO6XiMZI4Kow4+N0ChWHw53LbUtL312fZHUEEUP5Me
         PnJPaf1u7olG2IRhhsS+FQFV1jVfWZhDY40Nk04LsRqDzb7NwsyWxkCN/MkN3U1D3oWJ
         m97czebZfAKjecvubJ9Rapc484B0IZMTauOaI9sBhj/3TepoDj5qPo8pOzeok1j+jvPJ
         06/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=tIoI+7+0iEPUd0UMkH4siJUauDXEupq8e0A8WsBtcrs=;
        b=fNH3YSFTqgHY5BAf6bZmPQBsiRmczxLqL64YuCoeMEEaBqwTx1NgPyFQSdplxPQj2p
         yfdic90m6ah1pL5bKIjT6+4rupBvQIDiLDWOOImJGVaRe/2+gB8mmt3Psr8+qWmEARkW
         rSm+zMohvQ8zOGizC/czKGD4s1NluWpvoubPw8YsXTNc6VRoyUAz7Zzm08X9K4VqzyP8
         OhG1lpDmrl1FcW+J0IVRohhU4HZp0QXxZmSURIefR70oMXZ7FkcrtswWuWpK0s6aj7hr
         CQkSJC/SLG76kSRm0kFrOd11MKNlnQ1f3+XdqoIx5Yq+Xqig/RN2Ql2Jwcssv/yak8Vc
         E20Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DIpjLpMg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tIoI+7+0iEPUd0UMkH4siJUauDXEupq8e0A8WsBtcrs=;
        b=K18QXwHSKQ7+oS0jT4Ww4smGLBYtGv3hZFfHV/4+1gCu32we3ZkEvsd7iR42rVVTxs
         irrRBLi42vawRVqM3nsUUZ41CS5dM7Aoj8dP7q5dKR/AVmqI0u0+7bA262e3J9aGHsfK
         mYukanw119+4fUq2pACPtkncoMQ/o/z5vKIRWx4TW5NdwSP3XK2rsCV2Bu5a0GHSRiim
         +d7+TxUW/A8j9Xw0WG7+rQOLb6HNcpM1yJSphl6z20A6YbUogaQDKe2k5yoiJoB4BS7q
         SC4E4/+jiuQanMvZEmLUEz2PUnpSaFDzXqV/oU7icZosGGpbspRnaE6cVD8/6Trz1/VO
         2qHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tIoI+7+0iEPUd0UMkH4siJUauDXEupq8e0A8WsBtcrs=;
        b=kitis8OsEF6QOkRsjXJBISY7LU/6jtGn6osr75eC2X/vZvCt/7sbavsL8wRmuUw8Db
         Bctcxic/ckICner1+hvXP5P6ykuXkISOQKjOccwH94ZSQ4rJ2OI69w4Vzmlmr610jirP
         Rka2KjZKv01RxAYBa/I4cewsB3K4uWt/CV3fXKMrzTogTI7qR3gxtg3PXyABWs5QB+FU
         JcOdr+vwNEjUvGwk4E3yQCmvgcYcKqVYiZD8Vu7Aif2QKIXNccis1sfycmqj4By4K0VI
         yeEq6O78nrPp0YeR55FiSr6/IJXW5QpG7PBwAssz+yudMTKI0kCTe3Tq/W4/oj8exV4a
         HK0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tIoI+7+0iEPUd0UMkH4siJUauDXEupq8e0A8WsBtcrs=;
        b=MuKqL+gkfkGCZQ96I0I5UmebFgfXLS49LBv3Po9/nfYAp3b81dlCVIiQBIbbO5STw/
         caZV++zDg4s/oz7Z1wPQR6X93v3MXEu3QaDxg3EKlKdoMny0A8OB+H+qeeQ49vk53eOF
         qD19s6Ei9ceazyu1/YAsSDSslyzTk2lUUdPsP2S3yG/K7Clok41XElu6mDGP5LHkV1Dw
         dQAPyFoA6d7lJmXfcjpqT8/otyOgk76rQcUvLqJ9qUPgLcsDxNPCQph42SsVUZmu43e3
         zhBHW07ujqeedb/cAdxGG9kXEIW5W1LpzQ9sW8DHYh7sAg/0T4UB4ObvzTK/N2FHVddw
         KpyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Qv6F0ZsSCJ1ian2cASvVI4n9Wz5uY1on7NClggvsTp/4i93If
	Muw3hsAa2OPTCOYOG0/JeLQ=
X-Google-Smtp-Source: ABdhPJxB0jVmWIMtjo/uGhBGGgboaJXHeBdzsBZaLAwEY27Q2ASVDJMkDrQREP/hELS/k1HoWY8nJQ==
X-Received: by 2002:a63:2f03:: with SMTP id v3mr787242pgv.102.1589917938178;
        Tue, 19 May 2020 12:52:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8ccf:: with SMTP id m198ls123627pfd.10.gmail; Tue, 19
 May 2020 12:52:17 -0700 (PDT)
X-Received: by 2002:a62:5f81:: with SMTP id t123mr758051pfb.79.1589917937738;
        Tue, 19 May 2020 12:52:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589917937; cv=none;
        d=google.com; s=arc-20160816;
        b=XYURv8Y6aQ0lSiGAsScWr+S3KpH00YJ0TTbb/wg/4YrJ5N00iARYfKOHToiDHPpAfv
         mWHLhDxALhF3Apj0A8ePLXprDgw8zWB70e3mjw9F5HPPyl+N2jvwfnKxUIU5UAooZuJM
         n6q6jyLQwFDOT8SjY32ZfcLr2hD9WvKQQOW0gDY6kwzN9KpCEHHxBUvbIvgBdzyJvmx7
         UuT7cTKEVouWsNrqZ26hwixJnfGLNYIlbdS7Rb8x5yAx9U7pHgwq69pwN+yZltlNUvGc
         r7NKpAcj+c2BtgBiEQVK3EpuOb066yLb6yQVLUfxhV+TeNtBIcVVCIlloUXXumjfiOXZ
         mbMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6cf5dwP9OZoTiU6pGPDjEM+pP/TqQvOrYrzG5EYl3G4=;
        b=ujeo7NhKaXP8oOnZJuKp3Y0zctuENsM75PahtTsxYhPapswC+Bi3LkB23GxpSikD7H
         p7zy1AB2ESyojJ4fDGlU2EuilIJ/eks+B3YXonP/DviJEf6NLGaxiGVBiEepY7oRPyWu
         hg5N3ohcHiSAgPI2008SLDyHG6KUxP+dwfMJipdZg2hZ9PQdGubLnhPyx1exjvLtt25j
         8sKMGHahNoD3+geGolyy84AsRoIoV5fYbHpIRwrTeRxLp7ljuN+bvaCO4jUQn/vGXcP2
         AkHzNQ9dsBHlOlQUwlbzoFsJ+r9bJcvJb25R1I5x2m0i+mT6qBkoUpixqI2jBPNzSCZ6
         +8oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DIpjLpMg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id ba3si50990plb.1.2020.05.19.12.52.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 12:52:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id c3so507806otr.12
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 12:52:17 -0700 (PDT)
X-Received: by 2002:a9d:6f89:: with SMTP id h9mr578569otq.75.1589917936931;
        Tue, 19 May 2020 12:52:16 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q7sm201720oig.23.2020.05.19.12.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 12:52:16 -0700 (PDT)
Date: Tue, 19 May 2020 12:52:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Eric Dumazet <edumazet@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [linux-next:master 5639/6402] net/ipv4/tcp_output.c:188:3:
 warning: result of comparison of constant -1 with expression of type 'u8'
 (aka 'unsigned char') is always false
Message-ID: <20200519195214.GA1958892@ubuntu-s3-xlarge-x86>
References: <202005200039.g3FQKoCQ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005200039.g3FQKoCQ%lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DIpjLpMg;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, May 20, 2020 at 12:09:47AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   dfd71d381f7e1aa118e0368774aa05f5c4a48870
> commit: 2b195850128f5bafde177b12489d9fa27962cc1e [5639/6402] tcp: add tp->dup_ack_counter
> config: x86_64-randconfig-r012-20200519 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 2b195850128f5bafde177b12489d9fa27962cc1e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> net/ipv4/tcp_output.c:188:3: warning: result of comparison of constant -1 with expression of type 'u8' (aka 'unsigned char') is always false [-Wtautological-constant-out-of-range-compare]
> NET_ADD_STATS(sock_net(sk), LINUX_MIB_TCPACKCOMPRESSED,
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/net/ip.h:293:41: note: expanded from macro 'NET_ADD_STATS'
> #define NET_ADD_STATS(net, field, adnd) SNMP_ADD_STATS((net)->mib.net_statistics, field, adnd)
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/net/snmp.h:143:4: note: expanded from macro 'SNMP_ADD_STATS'
> this_cpu_add(mib->mibs[field], addend)
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> <scratch space>:292:1: note: expanded from here
> this_cpu_add_8
> ^
> arch/x86/include/asm/percpu.h:492:35: note: expanded from macro 'this_cpu_add_8'
> #define this_cpu_add_8(pcp, val)                percpu_add_op(volatile, (pcp), val)
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/x86/include/asm/percpu.h:131:31: note: expanded from macro 'percpu_add_op'
> ((val) == 1 || (val) == -1)) ?                                                            ~~~~~ ^  ~~
> 1 warning generated.

This warning is supposed to be disabled under a regular build, is W=1
being turned on (see scripts/Makefile.extrawarn)?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200519195214.GA1958892%40ubuntu-s3-xlarge-x86.
