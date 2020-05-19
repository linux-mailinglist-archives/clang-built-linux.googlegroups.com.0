Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBM7BSH3AKGQED7YFAUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2082F1DA5CE
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 01:50:13 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id w79sf694492vkw.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 16:50:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589932212; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCRGnroU24kiugBK3rkQHjERElEsCDV4yVJZ8jRRabZl1EHFzUQHMD/jLUB3X/DjmM
         AusY7CeBUAlJ8shSoX0fShxk4UTCHQdDo3QmRAroRqA6hQuZak2yC6ErRxxb5txrjcA3
         KrJfDvFN5MBMleUqTFKAHx6HEyWO3x5vJj5oCcmzHYcAUJO+XN1GrG63vyKudiwuilXp
         KWXOA2r5qxDR1M1NPL3AZaJCauAYSQVHR6jaUgjq5hVQq0lBQwG9k0bL9tN8Dd6w9gc4
         J33Zt+kQ9qn3wdu/bUfKZ725Z/nDsQ2ljtNxLC4CoBg/dHDG4Kh6R3FMu8OcxqjSY9A5
         aB8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-version:dlp-product:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=EUO7QKsJRUPcSdst0GBFwMmt0zDCPXu7fv2h/Rnwdus=;
        b=KSXAgZmKZ8jphJ0sVKUicGI0MCIMLehc06deO2TGk9ySCbVJSedZ0DhXxKLEzw6gBM
         Ep1PJEVWwiMRm5S/yt/C8qXWCIIScHo0b9xgC+0rA/uVXl2ODYyu3uYnAoysOvyNGQlh
         oNrJymzKfh6zaSXrpyrLNYv6+X+8IFZnXnDIaF4Geb/9eTGTBZNnIVH0w++MV4u8dtwS
         zp+HgsqpuQ2CCLjIHTZX0nI21BuffjVW+da401hWeygKVC6lar/HaWlslPBaMBWlAZEY
         1WzbOoXjDDgYHfY9eRK/cF4sZHRskKR5J0LA3yUhGg6MwKNszV8Xqc9RoGKEkhzbqYeY
         SKAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EUO7QKsJRUPcSdst0GBFwMmt0zDCPXu7fv2h/Rnwdus=;
        b=QEz9fEifKaFldwUN7gH1mIepmRC7Vqhr7snLfqkCIZW3AYZfEA2ShhIveZs5KsrNgz
         xyRYpNY8c46U83i50NuvN6sUZ7lL6iGik+tutU9sCH2Lg9II2CFRtNTRMRDn3kuGYncO
         2USaS5ivY6QwC1/FkASPE3ox+7bIq5Wzmld8d9Cr3DvNe27wUV4c1bcRyWuL86ggP31V
         nPOMbMVLKnwVUFfAJx7rnGpDd3Y252tkbH89f4VvziZIXgcOHwRwp2smAVlHH0i3zrHi
         CborfGdauNfSBprurZrwnRZ4jcenYEIMdzIbf5QFOprO93mqSvUNThtt3EFxYB8YSVqp
         Q6tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EUO7QKsJRUPcSdst0GBFwMmt0zDCPXu7fv2h/Rnwdus=;
        b=fkQbL4Y46tXalOEOb2Y+gFBa22JRO3Q7yqey5azGV6XTv5xMutT40SQmb+hpb8WWxw
         nVL1Ny5eGKrIGHNe3gRovcsCWaeagt9jC+oRsVd6ZDNS1fei4AqN3Mj96ygWmpUJi0+b
         McV/M5mvEXA9Bob8FqxME0P/XyMdAyiQrVop4suJrzMA6uuYhjR21Lye4aSQPj5cJWWI
         cJFp7B0mwN5sdQs4kDhIo99I7qi9mC9AZzdCSIUx9Srg/PiVH2WvaltxWpVY86Emfc4J
         BZYfw5O6x3XK2BkO7UhLWJmLbLoFkHl9+SNDbCMGlrtdl+yK5E11wiOunbnR1LZ3ZoWE
         ARMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329YyVYYoooTH0HIlWdK5KCkRZhnkAZDBYxZJPB1g3CEBoEYm7t
	URQWbGNHjz+x1KiXW6YTIkg=
X-Google-Smtp-Source: ABdhPJyjjEBXICKeA1w1pw6tNl+p725s2Y6kUqaM0nQMkLmoHnYlqF6jwv/C58HJlNnU7NpiT8ngmA==
X-Received: by 2002:ab0:d97:: with SMTP id i23mr1640740uak.106.1589932212054;
        Tue, 19 May 2020 16:50:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3f85:: with SMTP id m127ls78286vka.8.gmail; Tue, 19 May
 2020 16:50:11 -0700 (PDT)
X-Received: by 2002:a1f:212:: with SMTP id 18mr2105008vkc.14.1589932211654;
        Tue, 19 May 2020 16:50:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589932211; cv=none;
        d=google.com; s=arc-20160816;
        b=lz1sta3Gjdubq2h8iBTbrJqF8rDKb02ZR/yPs8KQk8Xx6FBgj5jvw8LRISl5xVs6wB
         UwIJTJbWyqMGFkyY/q4se+7rdjkH5fbC4UGQsNkWL2GQzkXFcnZZJ/iOkeFdsQHEXIcC
         n6EXMDDfle6hRlnxl8T7E9I6O+pbIr1Gcn66bHpY6VwBdMryhDqchn7fgBhkw6tvAgdx
         TDCh/Q0ZoyvFUVOrb5xo20HJsX0Pgpvk+mz+FyuszXzoxeQb+KjiPFtWvN5X3qK595TF
         +WG7EPK2nZLYsdLFN8raPK+hTkkwWPD1ORAxCvWp6TxjKTH6TmkklOt3FAv12P3mEF0H
         fQsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:ironport-sdr;
        bh=TDslAn/CvmQcdyUivE24GgoLClQDW3E9kuUqomvsjkg=;
        b=okVUeDsaRI+H9EZHoVSl4gNCdc5uBkuiwsu9AomgIhNeTBOdsiGkIKoH04vDQOpksf
         /HYb5BE79CmLzW46Hgtxgxh18TF6WS+mX2jvXzNKaLx7wyFsxFxYzQpYQkQePAyAtbsr
         e1F7b/WRTLK77OCzCBal1vZiWEETBOs5Cg4Se/1+5oNryOvlpAahrbXNNa3AewKTmw3j
         tkSQmVWeCOzZ5cbocNCMLCNl/Y7nL73NKuZo5Phcrlzm49YCqpBOpb3UR9CuUD7aH0Vb
         YD0z6/8P2UySs9qjz2HfNxX2tL5sc0efY/+fpBZJFqvUj2vHuae6Y+Ye3WN3RBx+QFp5
         wbyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id 132si80139vkb.1.2020.05.19.16.50.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 May 2020 16:50:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: VvKv1FWRWAwsIq/ZmjP+kYpRt6rf3QYPGONA0vxOYeLzT9SbWLAQT+s20qNOZmug1D7PyhLDyv
 pqR0KuACE7eA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 May 2020 16:50:09 -0700
IronPort-SDR: wCe+NJ+NoQ/9Ds3/bv8vKtOiZaxcmsEmQR3CPEcYjA2tjaZ5NGBd/yE6oKoV7hbOL6Iy8kIivR
 oi7JsxW3jYrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; 
   d="scan'208";a="268063878"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by orsmga006.jf.intel.com with ESMTP; 19 May 2020 16:50:09 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 16:50:09 -0700
Received: from shsmsx152.ccr.corp.intel.com (10.239.6.52) by
 fmsmsx121.amr.corp.intel.com (10.18.125.36) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 16:50:09 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.245]) by
 SHSMSX152.ccr.corp.intel.com ([169.254.6.177]) with mapi id 14.03.0439.000;
 Wed, 20 May 2020 07:50:06 +0800
From: "Li, Philip" <philip.li@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>, lkp <lkp@intel.com>
CC: Eric Dumazet <edumazet@google.com>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [linux-next:master 5639/6402] net/ipv4/tcp_output.c:188:3:
 warning: result of comparison of constant -1 with expression of type 'u8'
 (aka 'unsigned char') is always false
Thread-Topic: [linux-next:master 5639/6402] net/ipv4/tcp_output.c:188:3:
 warning: result of comparison of constant -1 with expression of type 'u8'
 (aka 'unsigned char') is always false
Thread-Index: AQHWLhcz7oUPVZQWHU6pP4vO6pd19aiwFAkA
Date: Tue, 19 May 2020 23:50:06 +0000
Message-ID: <831EE4E5E37DCC428EB295A351E6624952648AE3@shsmsx102.ccr.corp.intel.com>
References: <202005200039.g3FQKoCQ%lkp@intel.com>
 <20200519195214.GA1958892@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200519195214.GA1958892@ubuntu-s3-xlarge-x86>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.100 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

> Subject: Re: [linux-next:master 5639/6402] net/ipv4/tcp_output.c:188:3: warning:
> result of comparison of constant -1 with expression of type 'u8' (aka 'unsigned
> char') is always false
> 
> On Wed, May 20, 2020 at 12:09:47AM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   dfd71d381f7e1aa118e0368774aa05f5c4a48870
> > commit: 2b195850128f5bafde177b12489d9fa27962cc1e [5639/6402] tcp: add tp-
> >dup_ack_counter
> > config: x86_64-randconfig-r012-20200519 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 2b195850128f5bafde177b12489d9fa27962cc1e
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang
> make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> net/ipv4/tcp_output.c:188:3: warning: result of comparison of constant -1 with
> expression of type 'u8' (aka 'unsigned char') is always false [-Wtautological-
> constant-out-of-range-compare]
> > NET_ADD_STATS(sock_net(sk), LINUX_MIB_TCPACKCOMPRESSED,
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/net/ip.h:293:41: note: expanded from macro 'NET_ADD_STATS'
> > #define NET_ADD_STATS(net, field, adnd) SNMP_ADD_STATS((net)-
> >mib.net_statistics, field, adnd)
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/net/snmp.h:143:4: note: expanded from macro 'SNMP_ADD_STATS'
> > this_cpu_add(mib->mibs[field], addend)
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/linux/percpu-defs.h:509:33: note: expanded from macro 'this_cpu_add'
> > #define this_cpu_add(pcp, val)          __pcpu_size_call(this_cpu_add_, pcp, val)
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see
> all)
> > <scratch space>:292:1: note: expanded from here
> > this_cpu_add_8
> > ^
> > arch/x86/include/asm/percpu.h:492:35: note: expanded from macro
> 'this_cpu_add_8'
> > #define this_cpu_add_8(pcp, val)                percpu_add_op(volatile, (pcp), val)
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > arch/x86/include/asm/percpu.h:131:31: note: expanded from macro
> 'percpu_add_op'
> > ((val) == 1 || (val) == -1)) ?                                                            ~~~~~ ^  ~~
> > 1 warning generated.
> 
> This warning is supposed to be disabled under a regular build, is W=1
> being turned on (see scripts/Makefile.extrawarn)?
Yes, this is turned on. Do you have any suggestion/comments for this, we can
further tune the make command?

> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/831EE4E5E37DCC428EB295A351E6624952648AE3%40shsmsx102.ccr.corp.intel.com.
