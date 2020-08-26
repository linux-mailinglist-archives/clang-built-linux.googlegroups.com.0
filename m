Return-Path: <clang-built-linux+bncBCT4XGV33UIBBSGSS35AKGQETLHX4QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 586BE2524A4
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 02:14:02 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id e26sf21150uam.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 17:14:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598400841; cv=pass;
        d=google.com; s=arc-20160816;
        b=WgLO/tHRmG7x0/qo/F7xH9psh5tI7fZfr9accqn+/TdkciaC6tLjtBQ24lR4QKCOof
         J5JBH1O9mjT1QpKDiEtiZPufvs4f9V9BHY2jMQLfJcTQxc1go279Lt2AGaCDHjwZ25Ad
         E6o4XSTorLMTvIvmfsucIgpZg5nbpo4quZk787S7Z/BV8sfJaUBYMyYZu3tfHGHiW0XQ
         6a7/1SCzvoeWTHvOU0ZoJp1nixdEA+6Vr96tIX8ZmSRiQkJzBpuzjWsJsl2nXqz5lGmG
         TnYLBu49iw9p9N2rVyIvxSpGIbI+zestaP76pekBJNCdw8VGo6L4pjaZrUeZqklaWNdO
         cAmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=VU7FfdUFeYbHUWbB2j8Je4CB4r6SFB5R4A1hoga6hGA=;
        b=HT+mbl5L0Vjr0/gKfyUa87KasMHR9UHCVblcyZ1Gq5sJurlGeNEZa+rH1+aF5ECY+n
         +qCX+NjAAXN757vg786mlYQZJ67LbClcCCba/Tau5/vwR3/3KiGzs2cU0gUNwsTjkuHK
         5Q+f0obpyQcpmHOP2l4qs+8dj+NU58E65AqWmFd1MdPV1Boz3bDpjSyWNH+djd5jdwxa
         IqIZ64b/+ikgtBn3vKrtwJkJkfOR1Uw2FN+uuX1h+rn7zf1Wl0p+BJjut6MwAlOmkm1j
         bjGN2v2h41urMjoy2ZNwkmK4NvBSUuX1kd/JpvIX0MInEq7A6OY90rFvKponZX4S5715
         mHMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="YXbk/ZBu";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VU7FfdUFeYbHUWbB2j8Je4CB4r6SFB5R4A1hoga6hGA=;
        b=itgKjo+ixZUJizddVQvgHm6VM/oSOm6ICKeZ9URGb/96lFePzXTgQq5gaE9bF0jRMd
         0h/nj7fCXggviN+ApnHBao57bxx16DjVFRbLUH1LHvY0hANWn/S9/ItypetpTiWQj62A
         2SDrjZ3yoljFSQOU5QYcuDg+/PrIiiMRsvf9DPkoRC6cBU0tHuhEEMGnnxaPPUUaX0me
         pCG+qHQT7xtrzODviiPJ5XvBSGsqKtPaRz5bhAwoaVeXf8IAY7DVCsjemLaYoDhgf1ci
         V4JyiUf7b2IabYyn8qdHsSzdxnRubrNUndN/Bhlq3DcXFdzMPCYlV0M+CXxWvl9nzoFB
         cBYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VU7FfdUFeYbHUWbB2j8Je4CB4r6SFB5R4A1hoga6hGA=;
        b=qk1lk+/J7XqeyZfK4iMODduZYVqM6+EH2btHdx7k81BWoIAyEQ7xxirO8Tl1uvZnbr
         4cmheZTFDyXnXhdK8btnYuECvR3QobpEJjlXDYoD+O19+pAys8GnqN4dUzXE+vRCSO5e
         MlrXEjZ79pGv55+Bb+EtBcT1nBZQKCs6gsWGNdpgMIFZv6QDJ1C0YZe3kCJKH98Mf+YB
         PBkSt+QFaTMU2qJwrZWq913IBCJKaWPzFiSdBYx7iwqMtDnsZfOjSHN3uFgX6EzrZ0Au
         8bQ/ESRkMM/l/LONRA8BbIFFV4nhvpf7jubAiDNWBAwBUqMYnFqey1fiPD5ZJQ5EmVJI
         zxMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WrZkf4RM0o5gecGgFQes8wxDPgd30WcmqWtH2HLQNyuphD2Fp
	Zp8IHr1lgWcrhJ5LUdot/60=
X-Google-Smtp-Source: ABdhPJyiURawuGHuHsbple4Y5NKH9p1aN6BiAkmE3GGRdcI8cVJ6wiPX84hzMY/1PT9tBn5Mr6DhXg==
X-Received: by 2002:a67:b348:: with SMTP id b8mr3471579vsm.58.1598400841024;
        Tue, 25 Aug 2020 17:14:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:24c1:: with SMTP id k184ls54809vsk.3.gmail; Tue, 25 Aug
 2020 17:14:00 -0700 (PDT)
X-Received: by 2002:a05:6102:22cb:: with SMTP id a11mr6047013vsh.93.1598400840506;
        Tue, 25 Aug 2020 17:14:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598400840; cv=none;
        d=google.com; s=arc-20160816;
        b=XUc5nxPiiDtuSye+ard32gWBc6+AJoD2RN82w4Kj7RoPXysgqdlOBeuCf4HNoWvhLF
         Y3S6xTn+Jjsv0tQxLHgOTPJ00QjQzkoXdHGsqNk0NtsURzGlig3+UpCYs9ZNSxxcLxAi
         /r2TWNugOnFJDcaS2x8HRrkXlKCeZOzQIY5t9Zl9SjWSYWGGXLhEki2IhJ43DfizLG6Y
         TDwvjQLzvxLZwYcCQ7Sf3LEQ+hkrKqUbXTuInVef5dWhD3cREGouqMigW2MZICAM60BJ
         JX/GBTSfL93Qgt4PC9Jkecu3vZZPONcAuzHClftE86W1TuVDTsKUQXAJ6AMO8h0HZ+8V
         cXcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XqSKOdRijC502XQfVqEZh4fIRhFU965t3i00K4vr71o=;
        b=gBgP1h0d6vPVOJAlhFzlUI8bdqQt7rZW/E8YPXd/uovwqLw5GOW+Davz+ydBXTf2db
         SIX4DNBQm2GW5YEBjEDSCMoXX8jK4WK2xSiGUw7piFhzere+LzvZa1fyOabHYJZycjlU
         8XKMrtZ7LnrRQ2yuAqrS5u5Sqppbrh3G8xs4iUpt54E5G2E+NJj+mHSaUbQqAd5HFPDo
         ro5Cj7R9xMSGOpC+tsHljJdZZ8KQSgEuKWpclZ+1v4zripmQe+tNMusMt8Aqt4vrTcyK
         mLPRp08gAaa5s8DccGF7VuZobEybdMhGCwfyyqFq53YIszgkFvMXXdlPKrl5ylyrNCQ6
         OFCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="YXbk/ZBu";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p197si33687vkp.0.2020.08.25.17.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Aug 2020 17:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 764FB20707;
	Wed, 26 Aug 2020 00:13:58 +0000 (UTC)
Date: Tue, 25 Aug 2020 17:13:58 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Dan Williams <dan.j.williams@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Linux Memory Management List
 <linux-mm@kvack.org>
Subject: Re: [linux-next:master 2796/2998] drivers/nvdimm/e820.c:24:12:
 error: implicit declaration of function 'phys_to_target_node'
Message-Id: <20200825171358.3929899ac60bc7354e97f68e@linux-foundation.org>
In-Reply-To: <202008252130.7YrHIyMI%lkp@intel.com>
References: <202008252130.7YrHIyMI%lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="YXbk/ZBu";       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Tue, 25 Aug 2020 21:42:38 +0800 kernel test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   3a00d3dfd4b68b208ecd5405e676d06c8ad6bb63
> commit: c36f93c29a94b01da6c400033a0cf6ec2d394579 [2796/2998] mm/memory_hotplug: introduce default phys_to_target_node() implementation
> config: x86_64-randconfig-a011-20200825 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 77e5a195f818b9ace91f7b12ab948b21d7918238)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout c36f93c29a94b01da6c400033a0cf6ec2d394579
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/nvdimm/e820.c:24:12: error: implicit declaration of function 'phys_to_target_node' [-Werror,-Wimplicit-function-declaration]
>            int nid = phys_to_target_node(res->start);
>                      ^
>    1 error generated.

Let's move the definitions outside CONFIG_MEMORY_HOTPLUG.

--- a/include/linux/memory_hotplug.h~mm-memory_hotplug-introduce-default-phys_to_target_node-implementation-fix
+++ a/include/linux/memory_hotplug.h
@@ -149,20 +149,6 @@ int add_pages(int nid, unsigned long sta
 	      struct mhp_params *params);
 #endif /* ARCH_HAS_ADD_PAGES */
 
-#ifdef CONFIG_NUMA
-extern int memory_add_physaddr_to_nid(u64 start);
-extern int phys_to_target_node(u64 start);
-#else
-static inline int memory_add_physaddr_to_nid(u64 start)
-{
-	return 0;
-}
-static inline int phys_to_target_node(u64 start)
-{
-	return 0;
-}
-#endif
-
 #ifdef CONFIG_HAVE_ARCH_NODEDATA_EXTENSION
 /*
  * For supporting node-hotadd, we have to allocate a new pgdat.
@@ -289,6 +275,20 @@ static inline bool movable_node_is_enabl
 }
 #endif /* ! CONFIG_MEMORY_HOTPLUG */
 
+#ifdef CONFIG_NUMA
+extern int memory_add_physaddr_to_nid(u64 start);
+extern int phys_to_target_node(u64 start);
+#else
+static inline int memory_add_physaddr_to_nid(u64 start)
+{
+	return 0;
+}
+static inline int phys_to_target_node(u64 start)
+{
+	return 0;
+}
+#endif
+
 #if defined(CONFIG_MEMORY_HOTPLUG) || defined(CONFIG_DEFERRED_STRUCT_PAGE_INIT)
 /*
  * pgdat resizing functions
_

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825171358.3929899ac60bc7354e97f68e%40linux-foundation.org.
