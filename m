Return-Path: <clang-built-linux+bncBD26TVH6RINBBIMA42DAMGQETZSHBLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B93F43B5A1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 09:54:10 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id v4-20020a92cd440000b02901ee67a35b12sf6812407ilq.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 00:54:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624866849; cv=pass;
        d=google.com; s=arc-20160816;
        b=CSuVFxyzJpHzr/bUmMomUfA69PkSHOlGiksL8HbDVbED+bxe8Oc+ZZuVqJN+AYicpY
         mj99/vvMwfkPtzTmUtcq5nwttuEBirdsMh2a2jr5h7wvmRuMJ21Rm1a6Z3QYqErzWwUM
         BWRosUqfnnoeEztgkscQH2IRhSt4RiyEDADfnFntMG+4YUWdK0o7m1iWFGh98BoRqPau
         thpDa8jI3thQ1JbrS1jImxwKmA4WXupwroBgk21i34mwx61vJApYljSOKdP9htsd2ech
         Dznuihz761uJp80exXdOTeookFAuLoMOHPPqkSTFf+E7TzjDdMYAKKMkDaJwtzvzUgGl
         rZJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=/49XV04wRNdUjsU4LIs47y+9XTaXHO7hxRJWHKwgC7k=;
        b=nTSsVXlvcs+JUfc/iv39GhB7mng/Px4OubJQ38/ixCAsCFjlRvhFHKh2mmIfjEKICy
         vEjQ6vxzxD2ZHXrQ8naPUBh64zO7Jal3XBEhZrirTOPUrvTujM/JuJmqNmi80FWt0H2K
         q83YaG2GWMS1huA/HKZM3GnSALD5SEGQti63BL2BjQU6/opbDgfJVUty20E1UklgWJTt
         j90v88Cau6EQi3DIOTXq47F3E4qc6j8yxpLPVQC4R24Qw4XdRs9YCjP9IIX+MFyT0dAX
         tE0VS0XpLHS5u7XpefcfuJ0wtMpD4jhYajZkS2F0ft92QeNvDTdfhuTi45K7di547eWh
         mG0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/49XV04wRNdUjsU4LIs47y+9XTaXHO7hxRJWHKwgC7k=;
        b=n1vV6ZwNuc+vqxrSxFw9t5lezZTTwvkec0KVIBMEvPvJcF6JEOv8+epwEcvgXH1eZD
         MAd3aE72/Gk02OpIo4dko7QnQ2XsI+aDqd1A5DDTGtxO/Pufs8GH6VHSYIvgTxl+R70F
         x8Y14Z0iVWUTAW55gxxkhzUopTieBzdmY8zIV7S2+NWn5umjdOLvxbsi7M4zhh+odoYj
         dc8dAl7/L6Zimo/MweQQ4nqY/ZISSWToDsy3rP8N172+qMG9byP/gtto0tlKu8+B2oKH
         +d7xiWhweXk39MDVER0luTWYCte11mlM3VLUvpKOpIAT2608Vz72E/T/noQ36blI3YGS
         ISJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/49XV04wRNdUjsU4LIs47y+9XTaXHO7hxRJWHKwgC7k=;
        b=uPNF//+ZWs/JoZXcBu4+AwVIs3NaHzj6smfDTlmgnRSgAH9lzj8pF4lBwmrIa78Ccs
         ioNOIu5Ssko8cpCKGCc0DNtf3CyP5zbUf4PRNCjX4gFQxvkVwJg4TTYtAc9y+HV+Mdm/
         ubDp+ESeigF2KSJyoTIbzIstjKleCmgx/8tQ7bg1a5MOLcBLRaDLfEmqb6jIhS6S92mE
         X0Lkk/iU+EZ28VUfVL2B8ELh1mdUO3hG3IzSs+j/sd06ue9tLPUi7u887smlM/uisCfN
         017jb6R1Mzma6Eq78/yiU0E4s6my1Ui45izE8jAV73FgtM6uzbMZV9uR7SEs0ekjUDXz
         qnvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dMV/QDRlgmcjFZta4vf6XHb+pHD3SBh0h+vhGGB7VKz1Gxujr
	tFVdr7+uMyxAcaH6JPc5Kq4=
X-Google-Smtp-Source: ABdhPJzN+aGgYUtn8VsPXbzuFMne00o2U6ZUh+MoUaBi/hBMpkqeWHDYq3TGzjn6NjvmSTIAb2UMaw==
X-Received: by 2002:a02:cc1b:: with SMTP id n27mr8061587jap.121.1624866849374;
        Mon, 28 Jun 2021 00:54:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:8ed:: with SMTP id n13ls2331852ilt.8.gmail; Mon, 28
 Jun 2021 00:54:09 -0700 (PDT)
X-Received: by 2002:a05:6e02:7:: with SMTP id h7mr11895546ilr.288.1624866849018;
        Mon, 28 Jun 2021 00:54:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624866849; cv=none;
        d=google.com; s=arc-20160816;
        b=spknu7YbCPX5CGpeWvKEEZEOWaB4HpNyyEls0JNItz3dZXVFoST+YACsaRyxvt/qRF
         fT9j0M9Eqb0+ZXiNEQ/MahPNx174MKqQ3eK+RD8mLkGEcmnu4acG3eCaUKsF43lKF5Kw
         IQuD57FL9AW2rlVpTgXPiWAP2W/eMEdP8v7DribPZj2Vx0fcakB+U+YD9JkWefMWT8+j
         NYfphDWf8arEzRcMZaIInDviTsJqLLvQZJu5L57cVJHqMrYg9qBHBjTH8YP2iVTDomD8
         PA9rXxpM0ZYRsna2bVrAwY5MQhxRqQ2WQMRy8wTU1vhgR1/qTufxRi3SnUYPP2TIu5E6
         Lbww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=nm4b3R4Qs644LkCGVpT5/bX2vAPb4Ybv9z7CjoVEkc0=;
        b=Ot2YgfHuE6LaIA7WxRq0YwWHKiRb9hNROZJ8PLbCMO5daip1ZaPqa9hSsiK5UYrKpJ
         GTuAVPcU/NWEcUC9xVq2SueP64V6eZwoEMJB9fLye/hNTe4UpYx3gkzFtS+SOWBRCSZf
         Az6wcoQrQ8L7eOLwLDRkHHQNV5LG6X8dB/ZIGYFsDRletlkiPv8saY+Yl6lhgk1Xfefz
         NYOdkpX5AIsp2VCVdLP26pMVJtGbPfGa6cY+1+IexlXLiEt6ajuUWfLqUbhO+CAgoVaL
         tPNnn4TEH2sRCaV2q+E6LapDJs73uwUE83GrHYJW+DCv1YUv1hIaVROffqwUCqppo8aM
         BAMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id x4si1382174iof.3.2021.06.28.00.54.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 00:54:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="195202038"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; 
   d="scan'208";a="195202038"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2021 00:53:56 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; 
   d="scan'208";a="456223372"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.30.185]) ([10.255.30.185])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2021 00:53:52 -0700
Subject: Re: [kbuild-all] Re: net/ceph/messenger_v1.c:1204:5: warning: stack
 frame size (2880) exceeds limit (2048) in function 'ceph_con_v1_try_read'
To: Ilya Dryomov <idryomov@gmail.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>
References: <202106281329.JLKL1c31-lkp@intel.com>
 <CAOi1vP9NJ3nw9aWxtbzY2CA4WOx+A2kVeOvuiCFX5ZEidWTe5A@mail.gmail.com>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <31cca461-eceb-651c-a702-5a9bc9b262b2@intel.com>
Date: Mon, 28 Jun 2021 15:53:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAOi1vP9NJ3nw9aWxtbzY2CA4WOx+A2kVeOvuiCFX5ZEidWTe5A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 6/28/2021 3:42 PM, Ilya Dryomov wrote:
> On Mon, Jun 28, 2021 at 7:16 AM kernel test robot <lkp@intel.com> wrote:
>>
>> Hi Ilya,
>>
>> FYI, the error/warning still remains.
> 
> We won't be fixing the stack frame size warning here.  Please add it to the
> allowlist.

Got it, thanks for the information.

Best Regards,
Rong Chen

> 
> Thanks,
> 
>                  Ilya
> 
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   62fb9874f5da54fdb243003b386128037319b219
>> commit: 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1 libceph: move msgr1 protocol implementation to its own file
>> date:   7 months ago
>> config: powerpc64-randconfig-r034-20210628 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 59558129276098d62046c8cda92240d292cbfb1c)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install powerpc64 cross compiling tool for clang build
>>          # apt-get install binutils-powerpc64-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2f713615ddd9d805b6c5e79c52e0e11af99d2bf1
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>     __do_insb
>>     ^
>>     arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
>>     #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:246:1: note: expanded from here
>>     __do_insw
>>     ^
>>     arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
>>     #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:250:1: note: expanded from here
>>     __do_insl
>>     ^
>>     arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
>>     #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:254:1: note: expanded from here
>>     __do_outsb
>>     ^
>>     arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
>>     #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:4:1: note: expanded from here
>>     __do_outsw
>>     ^
>>     arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
>>     #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>     In file included from net/ceph/messenger_v1.c:8:
>>     In file included from include/net/sock.h:38:
>>     In file included from include/linux/hardirq.h:10:
>>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>>     In file included from include/linux/irq.h:20:
>>     In file included from include/linux/io.h:13:
>>     In file included from arch/powerpc/include/asm/io.h:604:
>>     arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>>     DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>>                     __do_##name al;                                 \
>>                     ^~~~~~~~~~~~~~
>>     <scratch space>:8:1: note: expanded from here
>>     __do_outsl
>>     ^
>>     arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
>>     #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>>> net/ceph/messenger_v1.c:1204:5: warning: stack frame size (2880) exceeds limit (2048) in function 'ceph_con_v1_try_read' [-Wframe-larger-than]
>>     int ceph_con_v1_try_read(struct ceph_connection *con)
>>         ^
>>     14 warnings generated.
>>
>>
>> vim +/ceph_con_v1_try_read +1204 net/ceph/messenger_v1.c
>>
>>    1200
>>    1201  /*
>>    1202   * Read what we can from the socket.
>>    1203   */
>>> 1204  int ceph_con_v1_try_read(struct ceph_connection *con)
>>    1205  {
>>    1206          int ret = -1;
>>    1207
>>    1208  more:
>>    1209          dout("try_read start %p state %d\n", con, con->state);
>>    1210          if (con->state != CEPH_CON_S_V1_BANNER &&
>>    1211              con->state != CEPH_CON_S_V1_CONNECT_MSG &&
>>    1212              con->state != CEPH_CON_S_OPEN)
>>    1213                  return 0;
>>    1214
>>    1215          BUG_ON(!con->sock);
>>    1216
>>    1217          dout("try_read tag %d in_base_pos %d\n", (int)con->in_tag,
>>    1218               con->in_base_pos);
>>    1219
>>    1220          if (con->state == CEPH_CON_S_V1_BANNER) {
>>    1221                  ret = read_partial_banner(con);
>>    1222                  if (ret <= 0)
>>    1223                          goto out;
>>    1224                  ret = process_banner(con);
>>    1225                  if (ret < 0)
>>    1226                          goto out;
>>    1227
>>    1228                  con->state = CEPH_CON_S_V1_CONNECT_MSG;
>>    1229
>>    1230                  /*
>>    1231                   * Received banner is good, exchange connection info.
>>    1232                   * Do not reset out_kvec, as sending our banner raced
>>    1233                   * with receiving peer banner after connect completed.
>>    1234                   */
>>    1235                  ret = prepare_write_connect(con);
>>    1236                  if (ret < 0)
>>    1237                          goto out;
>>    1238                  prepare_read_connect(con);
>>    1239
>>    1240                  /* Send connection info before awaiting response */
>>    1241                  goto out;
>>    1242          }
>>    1243
>>    1244          if (con->state == CEPH_CON_S_V1_CONNECT_MSG) {
>>    1245                  ret = read_partial_connect(con);
>>    1246                  if (ret <= 0)
>>    1247                          goto out;
>>    1248                  ret = process_connect(con);
>>    1249                  if (ret < 0)
>>    1250                          goto out;
>>    1251                  goto more;
>>    1252          }
>>    1253
>>    1254          WARN_ON(con->state != CEPH_CON_S_OPEN);
>>    1255
>>    1256          if (con->in_base_pos < 0) {
>>    1257                  /*
>>    1258                   * skipping + discarding content.
>>    1259                   */
>>    1260                  ret = ceph_tcp_recvmsg(con->sock, NULL, -con->in_base_pos);
>>    1261                  if (ret <= 0)
>>    1262                          goto out;
>>    1263                  dout("skipped %d / %d bytes\n", ret, -con->in_base_pos);
>>    1264                  con->in_base_pos += ret;
>>    1265                  if (con->in_base_pos)
>>    1266                          goto more;
>>    1267          }
>>    1268          if (con->in_tag == CEPH_MSGR_TAG_READY) {
>>    1269                  /*
>>    1270                   * what's next?
>>    1271                   */
>>    1272                  ret = ceph_tcp_recvmsg(con->sock, &con->in_tag, 1);
>>    1273                  if (ret <= 0)
>>    1274                          goto out;
>>    1275                  dout("try_read got tag %d\n", (int)con->in_tag);
>>    1276                  switch (con->in_tag) {
>>    1277                  case CEPH_MSGR_TAG_MSG:
>>    1278                          prepare_read_message(con);
>>    1279                          break;
>>    1280                  case CEPH_MSGR_TAG_ACK:
>>    1281                          prepare_read_ack(con);
>>    1282                          break;
>>    1283                  case CEPH_MSGR_TAG_KEEPALIVE2_ACK:
>>    1284                          prepare_read_keepalive_ack(con);
>>    1285                          break;
>>    1286                  case CEPH_MSGR_TAG_CLOSE:
>>    1287                          ceph_con_close_socket(con);
>>    1288                          con->state = CEPH_CON_S_CLOSED;
>>    1289                          goto out;
>>    1290                  default:
>>    1291                          goto bad_tag;
>>    1292                  }
>>    1293          }
>>    1294          if (con->in_tag == CEPH_MSGR_TAG_MSG) {
>>    1295                  ret = read_partial_message(con);
>>    1296                  if (ret <= 0) {
>>    1297                          switch (ret) {
>>    1298                          case -EBADMSG:
>>    1299                                  con->error_msg = "bad crc/signature";
>>    1300                                  fallthrough;
>>    1301                          case -EBADE:
>>    1302                                  ret = -EIO;
>>    1303                                  break;
>>    1304                          case -EIO:
>>    1305                                  con->error_msg = "io error";
>>    1306                                  break;
>>    1307                          }
>>    1308                          goto out;
>>    1309                  }
>>    1310                  if (con->in_tag == CEPH_MSGR_TAG_READY)
>>    1311                          goto more;
>>    1312                  ceph_con_process_message(con);
>>    1313                  if (con->state == CEPH_CON_S_OPEN)
>>    1314                          prepare_read_tag(con);
>>    1315                  goto more;
>>    1316          }
>>    1317          if (con->in_tag == CEPH_MSGR_TAG_ACK ||
>>    1318              con->in_tag == CEPH_MSGR_TAG_SEQ) {
>>    1319                  /*
>>    1320                   * the final handshake seq exchange is semantically
>>    1321                   * equivalent to an ACK
>>    1322                   */
>>    1323                  ret = read_partial_ack(con);
>>    1324                  if (ret <= 0)
>>    1325                          goto out;
>>    1326                  process_ack(con);
>>    1327                  goto more;
>>    1328          }
>>    1329          if (con->in_tag == CEPH_MSGR_TAG_KEEPALIVE2_ACK) {
>>    1330                  ret = read_keepalive_ack(con);
>>    1331                  if (ret <= 0)
>>    1332                          goto out;
>>    1333                  goto more;
>>    1334          }
>>    1335
>>    1336  out:
>>    1337          dout("try_read done on %p ret %d\n", con, ret);
>>    1338          return ret;
>>    1339
>>    1340  bad_tag:
>>    1341          pr_err("try_read bad con->in_tag = %d\n", (int)con->in_tag);
>>    1342          con->error_msg = "protocol error, garbage tag";
>>    1343          ret = -1;
>>    1344          goto out;
>>    1345  }
>>    1346
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/31cca461-eceb-651c-a702-5a9bc9b262b2%40intel.com.
