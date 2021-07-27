Return-Path: <clang-built-linux+bncBC32535MUICBBJUKQCEAMGQEYCSQS3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D7A3D7598
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 15:07:51 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id k7-20020a67fd870000b02902a0d43d2087sf2192161vsq.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 06:07:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627391270; cv=pass;
        d=google.com; s=arc-20160816;
        b=dOhb/q0W33jEOaWPblexCyXUXTbai3LBMAoRzuj3r2WCruHr6vBH8wjndQSRSqYCPn
         iuUK0tDWCAiksmuDV7kYwr5CX92AfYg+1vIxXPnn3GGuQITFo1H0IUJIRWpUfqvpolSF
         ZbTn9SOK6P1IQ0RtwPyO4ciQO+m5Lo/xKTtRUxTNyxJVOIIj/2zuPPSiv4eCrzXiuBd+
         UTByokwGRzgeu9ac7Tz8I/bBTTUZyF2l2xB8AiC3GglnqnYp1uJTidaxMMnep0XskTRW
         VFqkiWNs5Y8DDH+6jXyhzXTQUFWNCHQDbLU8abdzK2Vf83kcozZgQXYh7gbl3jqMGNJe
         o9WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=Q4+Lrxo87kH9fCaJtDIT9aDn4jF6+K3yJ6ZNE1boud4=;
        b=FXLW2BoXZa2mStQZqicC9gMz0asirSudLjMt9BjFbemn83ZMzS4plA1ZwJu4QG9fhp
         UhF95cQCOwYRJuXuHD+Nd1FSwKyv+cYui+Fxevtz0Ek4y0tpaYlUmlSK132VMMWKkBsH
         p9BON5pQF/+NUIHrSyT7IxWUE0jejYI/I3EdbBx+LMxsNTtT52TBBMGHYBu9L+pJYJUS
         oIBxe87NrRlMLJoKR8Lg/bVkUP59ZYxR28mWiEPhy5DZ7/ED8OTvvnR5NKBpvn0aN/hC
         UZeAOjXMPZ6hFN5vFTDaUYCk5+kRXBxS6LIVpIFrAXSTvG0poJy/JfmurqoLXCLGlb0t
         /4Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="K+in/3od";
       spf=pass (google.com: domain of david@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q4+Lrxo87kH9fCaJtDIT9aDn4jF6+K3yJ6ZNE1boud4=;
        b=a37PJymEbg6Aey/8xXgL16X4vDJgWpqvo/GYAyHTlScrjWWURObYOhWgh0a6w80n+q
         E7jNAc4GVyMBXEhMRPYVXccGqv7Z/FZ4n8oKNfIsIIwrrkprdSKCZlHgASIzfggB5BDl
         oq5buUXAjal7dMKK14AZgZpSO+HMzXOBkveomgiwgwGCP/AZ6keM75+Z7Jr8oUPz366C
         o8jSADJMv8g5XvrVAgjYvXN4F+6F5fzVZvE/yPTT5WzrW5I1HvGIdpnbIb5j2n5NLmQE
         OSIPJOSGkMcuPOflZ2L2N/6DWIvlCM9N1pzNq9gz/HD5LGR4YefGtTYHguqTNPeDIrkv
         ddoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q4+Lrxo87kH9fCaJtDIT9aDn4jF6+K3yJ6ZNE1boud4=;
        b=flIRPo+suPJB5TQG4bfIz3swBAT/BpNsJeY3lNqBhASh110x+R5W7XSujbsWuMBlJi
         jDwq9d9EkTYa+dUIR/hiPkxoHw3H4gzbGZFmudyXwdajQRZOXTrZWqwuDHvXH1aA3Md/
         Wv1zMi0TG1uxaxAYKxw8eF7iMm/CDWIx88jJyU5YwkLCPRFvJquYcnyZmK6KS99xENQJ
         2Enf4DwBiudoSJLkkzVHZ63HZjp65WMONwjg/WtVnwpL5U/UpP5JUsfnnFlMB7lJNyaY
         r9C70rQZ7HS392HGiFHOIz+vPO32QY0FruHJwQVaRgGHHE93CxKLTFNU+7z1Zs/Mutdf
         wKVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wVjhQD/a6kUvjNd+UeUC0iwf1L2gBCC3uTNGFtxqmqH5Hp3gf
	pARYPShtIqoWZfWo9+Gqd4Y=
X-Google-Smtp-Source: ABdhPJxOqtPAv5dd58R4JhgGucfNIKqomQXdVD95LjSbu6XCdxI6xHKVPLU9Rb4zxHq68c7vYbspFw==
X-Received: by 2002:a67:e1c7:: with SMTP id p7mr15829279vsl.21.1627391270795;
        Tue, 27 Jul 2021 06:07:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2d8c:: with SMTP id t134ls4651509vst.4.gmail; Tue, 27
 Jul 2021 06:07:50 -0700 (PDT)
X-Received: by 2002:a05:6102:34d9:: with SMTP id a25mr762504vst.0.1627391270165;
        Tue, 27 Jul 2021 06:07:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627391270; cv=none;
        d=google.com; s=arc-20160816;
        b=u3X6xv2+k41nq7grWeyV94j9zl1S1DGsUHhpgculNeFVyn0JCR1uxHiLI3a5+0FuJ2
         l4oGRHhZHJmoYECxtlGwLwlMCz6hleMUj9qlaZtxvpXstuP4FyLsSLwMurJlxOMSyZc7
         O3LLMM+Hfee8BZG8f1YeeV+DPFVJws0PdKBCqAyVV3XH3+GFZ056Ptp/56puDKvBqHGA
         yjpt+9NeCoXALCl7UCrMsazwEttyQiwJo4d+cruQy8gv7396WAMwHtZh7dpISBcMa/pT
         gAviur7gaZ5xqs6QP2xaFuIhCYe9/AySm38Go6AclVqovqEm7HdaOQLNB3cVAhaachf0
         CORw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=w27FqEEzIo3p1pqQTsABPQPt0pRYrqGioLXGPQQlu9I=;
        b=OxBzNnF5XzjARnlrvS32E+0AKxnh9alR8PM2m2a0AcJE/tAvsC0uLejgtQ/H+TxjYM
         khwQseXn56UnhE1EEVR41pQcSUS3p5TRAhUYj33fID7/gRwgL9TYLscVO4nnOgOycUwN
         SOYqUXI4F6pmfUaNIcIk5CR5NJsswVLIi9Tx/rRVG7+7190zrhhdPO8OtwcfUmY/Fv5I
         WW+6iSfKknhy8HlYNmp9EsJtdMNx/PwUdI3JHhaBc2ffiLmwOzcNIbFOhWvjqzw59Ox1
         Ij86tr9JrIYiQORK1NmT6CaGVGmGNidlnZeaKAskV7VRkdDPu+OYWXK1SGFtni0CUTwQ
         JfhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="K+in/3od";
       spf=pass (google.com: domain of david@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id n18si195575vsk.2.2021.07.27.06.07.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 06:07:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of david@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-284-x85q8TkkNzClNjA01AEePA-1; Tue, 27 Jul 2021 09:07:46 -0400
X-MC-Unique: x85q8TkkNzClNjA01AEePA-1
Received: by mail-wr1-f72.google.com with SMTP id v18-20020adfe2920000b029013bbfb19640so5960865wri.17
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 06:07:45 -0700 (PDT)
X-Received: by 2002:a1c:f206:: with SMTP id s6mr21529348wmc.102.1627391264939;
        Tue, 27 Jul 2021 06:07:44 -0700 (PDT)
X-Received: by 2002:a1c:f206:: with SMTP id s6mr21529328wmc.102.1627391264724;
        Tue, 27 Jul 2021 06:07:44 -0700 (PDT)
Received: from [192.168.3.132] (p4ff23c36.dip0.t-ipconnect.de. [79.242.60.54])
        by smtp.gmail.com with ESMTPSA id v15sm2936674wmj.39.2021.07.27.06.07.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 06:07:44 -0700 (PDT)
Subject: Re: [linux-next:master 3368/3379] mm/memory_hotplug.c:748:33: error:
 no member named 'cma_pages' in 'struct zone'
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Mark Brown <broonie@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
References: <202107272115.MJoFlUGY-lkp@intel.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
Message-ID: <4544731a-8a0c-ca5d-c54a-f99a3e8fe078@redhat.com>
Date: Tue, 27 Jul 2021 15:07:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202107272115.MJoFlUGY-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="K+in/3od";
       spf=pass (google.com: domain of david@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 27.07.21 15:05, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   2265c5286967c58db9a99ed1b74105977507e690
> commit: 2f10893f9329c568c5090f01d115230471320389 [3368/3379] mm/memory_hotplug: introduce "auto-movable" online policy
> config: x86_64-randconfig-a014-20210726 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c658b472f3e61e1818e1909bf02f3d65470018a5)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=2f10893f9329c568c5090f01d115230471320389
>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>          git fetch --no-tags linux-next master
>          git checkout 2f10893f9329c568c5090f01d115230471320389
>          # save the attached .config to linux build tree
>          mkdir build_dir
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> mm/memory_hotplug.c:748:33: error: no member named 'cma_pages' in 'struct zone'
>                     stats->movable_pages += zone->cma_pages;
>                                             ~~~~  ^
>     mm/memory_hotplug.c:750:38: error: no member named 'cma_pages' in 'struct zone'
>                     stats->kernel_early_pages -= zone->cma_pages;
>                                                  ~~~~  ^
>     2 errors generated.
> 
> 
> vim +748 mm/memory_hotplug.c
> 
>     737	
>     738	static void auto_movable_stats_account_zone(struct auto_movable_stats *stats,
>     739						    struct zone *zone)
>     740	{
>     741		if (zone_idx(zone) == ZONE_MOVABLE) {
>     742			stats->movable_pages += zone->present_pages;
>     743		} else {
>     744			/*
>     745			 * CMA pages (never on hotplugged memory) behave like
>     746			 * ZONE_MOVABLE.
>     747			 */
>   > 748			stats->movable_pages += zone->cma_pages;
>     749			stats->kernel_early_pages += zone->present_early_pages;
>     750			stats->kernel_early_pages -= zone->cma_pages;
>     751		}
>     752	}
>     753	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Already reported on mmtom:

https://lkml.kernel.org/r/5394da5e-29f0-ff7d-e614-e2805400a8bb@redhat.com


diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index bfdaa28eb86f..fa1a0afd32ba 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -741,13 +741,15 @@ static void auto_movable_stats_account_zone(struct auto_movable_stats *stats,
          if (zone_idx(zone) == ZONE_MOVABLE) {
                  stats->movable_pages += zone->present_pages;
          } else {
+               stats->kernel_early_pages += zone->present_early_pages;
+#ifdef CONFIG_CMA
                  /*
                   * CMA pages (never on hotplugged memory) behave like
                   * ZONE_MOVABLE.
                   */
                  stats->movable_pages += zone->cma_pages;
-               stats->kernel_early_pages += zone->present_early_pages;
                  stats->kernel_early_pages -= zone->cma_pages;
+#endif /* CONFIG_CMA */
          }
   }
   struct auto_movable_group_stats {

-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4544731a-8a0c-ca5d-c54a-f99a3e8fe078%40redhat.com.
